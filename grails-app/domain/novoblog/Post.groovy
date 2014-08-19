package novoblog

class Post {

    static constraints = {
    }

    static hasMany = [comments: Comment]
    String Title
    String Teaser
    String Content
    Date lastMofified
    Date published

}
