package com.topperbooks.core

import com.topper.books.core.User
import groovy.util.logging.Slf4j
import org.apache.shiro.crypto.hash.Sha256Hash

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
        user.passwordHash = 'admin'
        user.permissions = ['*:*']

        user.validate()

        if(user.hasErrors()){
            log.error("Validation Error while creating user"+user.errors)
        }else {
            user.save flush: true
        }

        user = new User(username: "user123", passwordHash: "password")
        user.addToPermissions("*:*")
        user.save flush: true

    }
}
