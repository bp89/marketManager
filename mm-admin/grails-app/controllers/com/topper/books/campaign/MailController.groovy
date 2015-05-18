package com.topper.books.campaign

/**
 * MailController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class MailController {

    static scaffold = true
//	def index = { }


    def mailSender = {
println(params.contacts)
       /* sendMail {
            to params.to
            subject params.subject
            body params.body
            *//* body(view: "welcomeEmail", model: [ to: params.to ])*//*
        }
        redirect(uri: "/")*/

    }


}
