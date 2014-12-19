package com.topper.books.core


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ResourceController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class ResourceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Resource.list(params), model:[resourceInstanceCount: Resource.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Resource.list(params), model:[resourceInstanceCount: Resource.count()]
    }

    def show(Resource resourceInstance) {
        respond resourceInstance
    }

    def create() {
        respond new Resource(params)
    }

    @Transactional
    def save(Resource resourceInstance) {
        if (resourceInstance == null) {
            notFound()
            return
        }

        if (resourceInstance.hasErrors()) {
            respond resourceInstance.errors, view:'create'
            return
        }

        resourceInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'resourceInstance.label', default: 'Resource'), resourceInstance.id])
                redirect resourceInstance
            }
            '*' { respond resourceInstance, [status: CREATED] }
        }
    }

    def edit(Resource resourceInstance) {
        respond resourceInstance
    }

    @Transactional
    def update(Resource resourceInstance) {
        if (resourceInstance == null) {
            notFound()
            return
        }

        if (resourceInstance.hasErrors()) {
            respond resourceInstance.errors, view:'edit'
            return
        }

        resourceInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Resource.label', default: 'Resource'), resourceInstance.id])
                redirect resourceInstance
            }
            '*'{ respond resourceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Resource resourceInstance) {

        if (resourceInstance == null) {
            notFound()
            return
        }

        resourceInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Resource.label', default: 'Resource'), resourceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'resourceInstance.label', default: 'Resource'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
