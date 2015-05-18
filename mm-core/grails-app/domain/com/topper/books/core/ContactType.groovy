package com.topper.books.core

class ContactType {

    String name
    String description

    static hasMany = [contacts:Contact]

    static constraints = {
    }
}
