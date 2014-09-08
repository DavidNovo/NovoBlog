package novoblog



import spock.lang.*

/**
 *
 */
class PostControllerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "testing REST service" () {
    	when:
		    def controller = new PostController()

		    controller.request.contentType = "application/json"
		    controller.request.content =
		            '{"id":1,"class":"Book","title":"The Stand"}'.getBytes()
		 then:
		 	controller.response != null

	}

	    void "testing REST service and checking the rssponse" () {
    	when:
		    def controller = new PostController()

		    controller.request.contentType = "application/json"
		    controller.request.content =
		            '{"id":1,"class":"Book","name":"The Stand"}'.getBytes()
		 then:
		 	System.out.println(controller.response)
		 	controller.response.name == "The Stand"
		
	}
  
}

