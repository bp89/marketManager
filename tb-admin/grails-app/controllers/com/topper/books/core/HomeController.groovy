package com.topper.books.core

/**
 * HomeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class HomeController {

    static scaffold = true

    int count =0


    def index = {

        if(session.getAttribute('counter')==null)
                {
                    session.setAttribute('counter',count)
                }


       render  (view: 'index')
    }
}
