package com.topper.books.core

import com.topper.books.campaign.Campaign

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * CampaignController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class CampaignController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def home(){
        render view: 'home'
    }

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Campaign.list(params), model:[campaignInstanceCount: Campaign.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Campaign.list(params), model:[campaignInstanceCount: Campaign.count()]
    }

    def show(Campaign campaignInstance) {
        respond campaignInstance
    }

    def create() {
        respond new Campaign(params)
    }

    @Transactional
    def save(Campaign campaignInstance) {
        if (campaignInstance == null) {
            notFound()
            return
        }

        if (campaignInstance.hasErrors()) {
            respond campaignInstance.errors, view:'create'
            return
        }

        campaignInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'campaignInstance.label', default: 'Campaign'), campaignInstance.id])
                redirect campaignInstance
            }
            '*' { respond campaignInstance, [status: CREATED] }
        }
    }

    def edit(Campaign campaignInstance) {
        respond campaignInstance
    }

    @Transactional
    def update(Campaign campaignInstance) {
        if (campaignInstance == null) {
            notFound()
            return
        }

        if (campaignInstance.hasErrors()) {
            respond campaignInstance.errors, view:'edit'
            return
        }

        campaignInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Campaign.label', default: 'Campaign'), campaignInstance.id])
                redirect campaignInstance
            }
            '*'{ respond campaignInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Campaign campaignInstance) {

        if (campaignInstance == null) {
            notFound()
            return
        }

        campaignInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Campaign.label', default: 'Campaign'), campaignInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'campaignInstance.label', default: 'Campaign'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
