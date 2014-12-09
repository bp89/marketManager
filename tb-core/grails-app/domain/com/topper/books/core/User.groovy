package com.topper.books.core

class User {
    String username
    String password
    
    static hasMany = [ roles: Role, permissions: String ]

    static constraints = {
        username(nullable: false, blank: false, unique: true)
    }
}
