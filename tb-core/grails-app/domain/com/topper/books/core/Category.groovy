package com.topper.books.core

class Category {

    String name
    String description

    static hasMany = [contacts:Contact,subcategories:SubCategory]

    static constraints = {
    }

    public Category create(Category category){

        category.validate()
        if(category.hasErrors()){
            println 'Error creating category----->'+category.errors
        }else {
            category.save flush: true
        }
    }
}
