package com.topperbooks.core

import com.topper.books.core.User
import groovy.util.logging.Slf4j

/**
 * CoreBootStrapService
 * A service class encapsulates the core business logic of a Grails application
 */
@Slf4j
class CoreBootStrapService {

    def serviceMethod() {

    }


    void createAdminUser(){
        User user = new User()

        user.username = 'admin'
        user.password = 'admin'
        user.permissions = ['*.*']

        user.validate()

        if(user.hasErrors()){
            log.error("Validation Error while creating user"+user.errors)
        }else {
            user.save flush: true
        }

    }
}
