package com.topper.books.core

/**
 * HomeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class HomeController {

    static scaffold = true
	def index = {
    render  view: 'index'
    }
}
