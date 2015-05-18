package com.topper.books.core

import org.apache.shiro.crypto.hash.Sha256Hash

class User {
    String username
    String passwordHash
    
    static hasMany = [ roles: Role, permissions: String ]

    static constraints = {
        username(nullable: false, blank: false, unique: true)
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    //Standard Methods
    protected void encodePassword() {
        passwordHash = new Sha256Hash(passwordHash).toHex()
    }
}
