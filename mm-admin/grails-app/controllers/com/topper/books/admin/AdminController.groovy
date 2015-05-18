package com.topper.books.admin

/**
 * AdminController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class AdminController {

    static scaffold = true
    int count


    def modules(){

    render (view: 'modules')
    }

}
