package com.topperbooks.core

import com.topper.books.core.Category
import com.topper.books.core.ContactSource

class ContactSourceService extends BaseService<ContactSource>{
    static transactional = false

    ContactSourceService(){
        super(ContactSource.class)
    }
}
