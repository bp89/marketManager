// configuration for plugin testing - will not be included in the plugin zip

log4j = {
    // Example of changing the log pattern for the default console
    // appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    grails.config.locations = ["classpath:${appName}-config.properties",
                               "classpath:${appName}-config.groovy",
                               //"file:${userHome}/.grails/${appName}-config.properties",
                               "file:${appName}-config.groovy"
    ]

    error  'org.codehaus.groovy.grails.web.servlet',  //  controllers
           'org.codehaus.groovy.grails.web.pages', //  GSP
           'org.codehaus.groovy.grails.web.sitemesh', //  layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping', // URL mapping
           'org.codehaus.groovy.grails.commons', // core / classloading
           'org.codehaus.groovy.grails.plugins', // plugins
           'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'

    debug   "grails.app.filters",
            "grails.app.controllers",
            "grails.app.services",
            "grails.app.domains",
            "com.topper.books",
            "org.apache.shiro",
            "grails.app.realms"
}

grails {

    mail {
        host = "smtp.gmail.com"
        port = 465
        username = "softiventure@gmail.com"
        password = "P0t3nt14l"
        props = ["mail.smtp.auth":"true",
                 "mail.smtp.socketFactory.port":"465",
                 "mail.smtp.socketFactory.class":"javax.net.ssl.SSLSocketFactory",
                 "mail.smtp.socketFactory.fallback":"false"]
    }
}
grails.mail.default.from="softiventure@gmail.com"
//grails.mail.disabled=true
grails.mail.poolSize=10

