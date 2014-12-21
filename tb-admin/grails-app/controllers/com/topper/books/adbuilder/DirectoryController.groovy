package com.topper.books.adbuilder


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * DirectoryController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class DirectoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def details(Directory directoryInstance){
        respond directoryInstance
    }

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Directory.list(params), model:[directoryInstanceCount: Directory.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Directory.list(params), model:[directoryInstanceCount: Directory.count()]
    }

    def show(Directory directoryInstance) {
        respond directoryInstance
    }

    def create() {
        respond new Directory(params)
    }

    @Transactional
    def save(Directory directoryInstance) {
        if (directoryInstance == null) {
            notFound()
            return
        }

        if (directoryInstance.hasErrors()) {
            respond directoryInstance.errors, view:'create'
            return
        }

        directoryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'directoryInstance.label', default: 'Directory'), directoryInstance.id])
                redirect directoryInstance
            }
            '*' { respond directoryInstance, [status: CREATED] }
        }
    }

    def edit(Directory directoryInstance) {
        respond directoryInstance
    }

    @Transactional
    def update(Directory directoryInstance) {
        if (directoryInstance == null) {
            notFound()
            return
        }

        if (directoryInstance.hasErrors()) {
            respond directoryInstance.errors, view:'edit'
            return
        }

        directoryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Directory.label', default: 'Directory'), directoryInstance.id])
                redirect directoryInstance
            }
            '*'{ respond directoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Directory directoryInstance) {

        if (directoryInstance == null) {
            notFound()
            return
        }

        directoryInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Directory.label', default: 'Directory'), directoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'directoryInstance.label', default: 'Directory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
