package com.topper.books.core

class Category {

    String name
    String description

    static hasMany = [contacts:Contact,subcategories:SubCategory]

    static constraints = {
    }
}
