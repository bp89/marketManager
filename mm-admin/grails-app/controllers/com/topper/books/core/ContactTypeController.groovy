package com.topper.books.core


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ContactTypeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)

class ContactTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        session.setAttribute('cName',controllerName)
        session.setAttribute('aName',actionName)

        params.max = Math.min(max ?: 10, 100)
     //  params.sort = 'sequence'
        respond ContactType.list(params), model:[contactTypeInstanceCount: ContactType.count()]
    }

	def list(Integer max) {
        session.setAttribute('cName',controllerName)
        session.setAttribute('aName',actionName)
        params.max = Math.min(max ?: 10, 100)
        respond ContactType.list(params), model:[contactTypeInstanceCount: ContactType.count()]
    }

    def show(ContactType contactTypeInstance) {
        respond contactTypeInstance
    }

    def create() {
        session.setAttribute('cName',controllerName)
        session.setAttribute('aName',actionName)
        respond new ContactType(params)
    }

    @Transactional
    def save(ContactType contactTypeInstance) {
        if (contactTypeInstance == null) {
            notFound()
            return
        }

        if (contactTypeInstance.hasErrors()) {
            respond contactTypeInstance.errors, view:'create'
            return
        }

        contactTypeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contactTypeInstance.label', default: 'ContactType'), contactTypeInstance.id])
                redirect contactTypeInstance
            }
            '*' { respond contactTypeInstance, [status: CREATED] }
        }
    }

    def edit(ContactType contactTypeInstance) {
        respond contactTypeInstance
    }

    @Transactional
    def update(ContactType contactTypeInstance) {
        if (contactTypeInstance == null) {
            notFound()
            return
        }

        if (contactTypeInstance.hasErrors()) {
            respond contactTypeInstance.errors, view:'edit'
            return
        }

        contactTypeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ContactType.label', default: 'ContactType'), contactTypeInstance.id])
                redirect contactTypeInstance
            }
            '*'{ respond contactTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ContactType contactTypeInstance) {

        if (contactTypeInstance == null) {
            notFound()
            return
        }

        contactTypeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ContactType.label', default: 'ContactType'), contactTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactTypeInstance.label', default: 'ContactType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    /*def doOrder(){
        List<ContactType> contactTypes =  ContactType.findAll()
        contactTypes.each{ContactType contactType ->
            contactType.sequence = Integer.parseInt(params.get('sequence_'+contactType.id))
            contactType.save flush: true
        }
        return true
    }*/
}
