package com.topperbooks.core

import com.topper.books.core.ContactSource
import com.topper.books.core.ContactType

class ContactTypeService extends BaseService<ContactType>{
    static transactional = false

    ContactTypeService(){
        super(ContactType.class)
    }
}
