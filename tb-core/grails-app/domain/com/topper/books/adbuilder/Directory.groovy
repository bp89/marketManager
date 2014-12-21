package com.topper.books.adbuilder

class Directory {

    String name
    String description
    Directory parent

    static constraints = {
        parent nullable: true
    }
}
