package com.topper.books.campaign

import com.topper.books.adbuilder.Attachement

class Campaign {

    String name
    String type //e.g. promotional, introductory, offer
    String subject
    String content

    static hasMany = [attachments:Attachement]

    static mapping = {
        content type: 'text'
    }
    static constraints = {

    }
}
