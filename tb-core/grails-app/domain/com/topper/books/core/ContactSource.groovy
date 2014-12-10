package com.topper.books.core

class ContactSource {

    String name
    String description

    static  hasMany = [contacts:Contact]

    static constraints = {
    }
}
