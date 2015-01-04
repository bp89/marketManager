package com.topper.books.core

class SubCategory {
    String name
    String description

    static constraints = {

    }

    SubCategory create(SubCategory subcategory){
        subcategory.validate()
        if(subcategory.hasErrors()){
            println 'Error creating subcategory----->'+subcategory.errors
        }else {
            subcategory.save flush: true
        }
    }
}
