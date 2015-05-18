package com.topperbooks.core

import com.topper.books.core.Category
import grails.transaction.Transactional

class CategoryService extends BaseService<Category>{
    static transactional = false

    CategoryService(){
        super(Category.class)
    }


}
