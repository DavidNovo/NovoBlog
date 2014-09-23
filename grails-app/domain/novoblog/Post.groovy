package novoblog

import grails.rest.*

@Resource(uri='/posts' formats=['json', 'xml')  
// with the resource annotation, a view is not returned, an xml document is returned
class Post {


    static hasMany = [comments: Comment]

    String		title
    String 		teaser
    String 		content
    Date 		lastUpdated
    Date 		datePublished
    Boolean		published = false
    SortedSet	comments

    static constraints = {
		title (nullable:false, blank:false, length:1..50, notBlank:true)
		teaser (length:0..100)
		content (nullable:false, blank:false, notBlank:true)
		lastUpdated (nullable:true)
		published(nullable:false)
    }

}
