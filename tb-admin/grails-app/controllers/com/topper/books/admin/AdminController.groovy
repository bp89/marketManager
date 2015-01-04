package com.topper.books.admin

/**
 * AdminController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class AdminController {

    static scaffold = true
    int count

    def l = []
    def modules(){

       count = session.getAttribute('counter')?:0

       if(count>1)
        {
            l = session.getAttribute('cNames')

            int size = l.size()
            for(int i=1;i<size;i++)
            {
                l.remove(i)
                count--
            }
            session.setAttribute('counter',count)
            session.setAttribute('cNames',l)
        }
        if(count==0) {


            l.add(0, controllerName)
            session.setAttribute('cNames', l)
            count++
            session.setAttribute('counter',count)

        }



        render (view: 'modules')
    }

}
