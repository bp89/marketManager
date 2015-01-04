package com.topperbooks.core

import grails.transaction.Transactional
import groovy.util.logging.Log4j

@Log4j
@Transactional
class BaseService<T> implements IDAOMaintainable<T> {
    private final Class<T> type;

    public BaseService(Class<T> type) {
        this.type = type;
    }

    public Class<T> getMyType() {
        return this.type;
    }

    @Transactional
    T create(def object) {
        def domainClazz = getMyType()
        println '-------domainClazz------'+domainClazz
        T domainObjectInstance = null;
        if (object) {
            if (object.class == domainClazz) {
                //CREATE OR UPDATE DOMAIN CLASS
                if(object.hasErrors()){
                    println '---Error inside ${domainClazz}--->'+object.errors
                }else{
                    domainObjectInstance =  object.save flush:true
                }
//                domainObjectInstance = domainClazz.save(object)
            } else {
                //CREATE USING CO/DTO
                if (!object.hasErrors()) {
                    domainObjectInstance = domainClazz.create(object)
                } else {
                    println "??????????????"+domainObjectInstance.errors
                    log.info "Validation failed creating ${object.class.simpleName}: ${domainObjectInstance.errors}"
                }
            }
        }
        return domainObjectInstance
    }

    @Transactional
    T merge(def object){
        def domainClazz = getMyType()
        T domainObjectInstance = null;
        if (object) {
            if (object.class == domainClazz) {
                //CREATE OR UPDATE SUB REFERENCE OF DOMAIN CLASS
                object = domainClazz.merge(object)
            }
        }
        return domainObjectInstance
    }
}
