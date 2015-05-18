package com.topper.books.core

class ContactSource {

    String name
    String description
    int sequence

    static  hasMany = [contacts:Contact]

    static constraints = {
    }
}
