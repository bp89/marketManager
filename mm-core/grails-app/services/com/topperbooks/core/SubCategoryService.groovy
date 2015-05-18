package com.topperbooks.core

import com.topper.books.core.SubCategory
import grails.transaction.Transactional

class SubCategoryService extends BaseService<SubCategory>{
    static transactional = false

    SubCategoryService(){
        super(SubCategory.class)
    }


}
