import com.topperbooks.core.CoreBootStrapService

class BootStrap {
    CoreBootStrapService coreBootStrapService
    def mailService
    def init = { servletContext ->

        coreBootStrapService.createAdminUser()
//        mailService.sendMail {
//            from 'banti.prajapati@intelligrape.com'
//            to 'bantipotter@gmail.com'
//            subject 'dfsfs'
//            body "Hello World!"
//        }


    }
    def destroy = {
    }
}
