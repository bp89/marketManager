package com.topper.books.adbuilder


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * TemplateController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class TemplateController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        session.setAttribute('cName',controllerName)
        session.setAttribute('aName',actionName)
        params.max = Math.min(max ?: 10, 100)
        respond Template.list(params), model:[templateInstanceCount: Template.count()]
    }

    def home(){
        render view: 'home'
    }
    def list(Integer max) {
        session.setAttribute('cName',controllerName)
        session.setAttribute('aName',actionName)
        params.max = Math.min(max ?: 10, 100)
        respond Template.list(params), model:[templateInstanceCount: Template.count()]
    }

    def show(Template templateInstance) {
        respond templateInstance
    }

    def preview(Template templateInstance) {
        respond templateInstance
    }


    def create() {
        session.setAttribute('cName',controllerName)
        session.setAttribute('aName',actionName)
        respond new Template(params)
    }

    @Transactional
    def save(Template templateInstance) {
        if (templateInstance == null) {
            notFound()
            return
        }

        if (templateInstance.hasErrors()) {
            respond templateInstance.errors, view:'create'
            return
        }

        templateInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'templateInstance.label', default: 'Template'), templateInstance.id])
                redirect templateInstance
            }
            '*' { respond templateInstance, [status: CREATED] }
        }
    }

    def edit(Template templateInstance) {
        respond templateInstance
    }

    @Transactional
    def update(Template templateInstance) {
        if (templateInstance == null) {
            notFound()
            return
        }

        if (templateInstance.hasErrors()) {
            respond templateInstance.errors, view:'edit'
            return
        }

        templateInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Template.label', default: 'Template'), templateInstance.id])
                redirect templateInstance
            }
            '*'{ respond templateInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Template templateInstance) {

        if (templateInstance == null) {
            notFound()
            return
        }

        templateInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Template.label', default: 'Template'), templateInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'templateInstance.label', default: 'Template'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
