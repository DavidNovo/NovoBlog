package novoblog

class Comment {

    static belongsTo = Post

    String name
    String url 
    String email
    String body

    static constraints = {
    	name (notBlank:true, nullable:false, length:1..50)
    	url (url:true, notBlank:false)
    	email (email:true, notBlank:true)
    	body (notBlank:true)
    }



    
}
