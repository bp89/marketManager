#!/bin/sh


rm -rf grails-app/controllers/* grails-app/views/* test/unit/*
./grailsw generate-all --stacktrace "*"
cp -rf nonGeneratedViews/* grails-app/views
cp -rf nonGeneratedControllers/* grails-app/controllers

#the following clases should not be generated
rm -rf grails-app/views/_DemoPage
rm -rf grails-app/views/auth
