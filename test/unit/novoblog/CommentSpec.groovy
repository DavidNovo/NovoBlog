package novoblog

import grails.test.mixin.support.GrailsUnitTestMixin
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestMixin(GrailsUnitTestMixin)
class CommentSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "invalid: create a comment without a name"() {
    	setup:
    		mockForConstraintsTests(Comment)

    	when:
    		def comment = new Comment(name:"")
    		comment.validate()

    	then:
    		comment.hasErrors() == true

    }
}
