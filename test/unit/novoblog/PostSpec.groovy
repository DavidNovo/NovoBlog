package novoblog

import grails.test.mixin.TestMixin
import grails.test.mixin.support.GrailsUnitTestMixin
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestMixin(GrailsUnitTestMixin)
class PostSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "invalid: creating a post without a title" () {
    	setup:
    		mockForConstraintsTests(Post)
    	
    	when:
    		def post = new Post(title: "")
    		post.validate()

		then:
			post.hasErrors() == true

    }

        void "valid: creating a post" () {
        setup:
            mockForConstraintsTests(Post)
        
        when:
            def post = new Post(title: "Test title one", teaser:"A short teaser", 
                content:"this is the content for the post.  It can be longer than this")
            post.validate()

        then:
            post.hasErrors() == true

    }
}
