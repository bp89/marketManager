package com.topper.books.core


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ContactSourceController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class ContactSourceController {
    def l =[]
    def count
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        count = session.getAttribute('counter')

        if(count>1)
        {
            l = session.getAttribute('cNames')


            int size = l.size()
            for(int i=2;i<size;i++)
            {
                l.remove(i)
                count--
            }
            session.setAttribute('counter',count)
            session.setAttribute('cNames',l)
        }
        if(count==1) {
            l = session.getAttribute('cNames')


            l.add(1, controllerName)
            session.setAttribute('cNames', l)
            count++
            session.setAttribute('counter',count)
        }
        params.max = Math.min(max ?: 10, 100)
        respond ContactSource.list(params), model:[contactSourceInstanceCount: ContactSource.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ContactSource.list(params), model:[contactSourceInstanceCount: ContactSource.count()]
    }

    def show(ContactSource contactSourceInstance) {
        respond contactSourceInstance
    }

    def create() {
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
}
