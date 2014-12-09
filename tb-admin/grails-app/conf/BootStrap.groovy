import com.topperbooks.core.CoreBootStrapService

class BootStrap {
    CoreBootStrapService coreBootStrapService
    def init = { servletContext ->

        coreBootStrapService.createAdminUser()

    }
    def destroy = {
    }
}
