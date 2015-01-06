package com.topper.books.core


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ContactSourceController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional
class ContactSourceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
       session.setAttribute('cName',controllerName)
        session.setAttribute('aName',actionName)

        params.max = Math.min(max ?: 10, 100)
        params.sort = 'sequence'
        respond ContactSource.list(params), model:[contactSourceInstanceCount: ContactSource.count()]
    }

    def list(Integer max) {
        session.setAttribute('cName',controllerName)
        session.setAttribute('aName',actionName)

        params.max = Math.min(max ?: 10, 100)
        respond ContactSource.list(params), model:[contactSourceInstanceCount: ContactSource.count()]
    }

    def show(ContactSource contactSourceInstance) {
        respond contactSourceInstance
    }

    def create() {
        session.setAttribute('cName',controllerName)
                session.setAttribute('aName',actionName)
        respond new ContactSource(params)
    }

    @Transactional
    def save(ContactSource contactSourceInstance) {
        if (contactSourceInstance == null) {
            notFound()
            return
        }

        if (contactSourceInstance.hasErrors()) {
            respond contactSourceInstance.errors, view:'create'
            return
        }

        contactSourceInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contactSourceInstance.label', default: 'ContactSource'), contactSourceInstance.id])
                redirect contactSourceInstance
            }
            '*' { respond contactSourceInstance, [status: CREATED] }
        }
    }

    def edit(ContactSource contactSourceInstance) {
        respond contactSourceInstance
    }

    @Transactional
    def update(ContactSource contactSourceInstance) {
        if (contactSourceInstance == null) {
            notFound()
            return
        }

        if (contactSourceInstance.hasErrors()) {
            respond contactSourceInstance.errors, view:'edit'
            return
        }

        contactSourceInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ContactSource.label', default: 'ContactSource'), contactSourceInstance.id])
                redirect contactSourceInstance
            }
            '*'{ respond contactSourceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ContactSource contactSourceInstance) {

        if (contactSourceInstance == null) {
            notFound()
            return
        }

        contactSourceInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ContactSource.label', default: 'ContactSource'), contactSourceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactSourceInstance.label', default: 'ContactSource'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }


    def doOrder(){
        List<ContactSource> contactSources =  ContactSource.findAll()
        contactSources.each{ContactSource contactSource ->
            contactSource.sequence = Integer.parseInt(params.get('sequence_'+contactSource.id))
            contactSource.save flush: true
        }
        return true
    }
}
