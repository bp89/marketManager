package com.topper.books.adbuilder

/**
 * Created by prajapati on 8/12/14.
 */
class Template {
    String name
    String subject
    String content

    static hasMany = [attachments:Attachement]

    static mapping = {
        content type: 'text'
    }
}
