package novoblog

class PostController {

static defaultAction = 'list'

// the closures I am writing over-ride the scaffolding
    def index() { 
    	render("Hello World")
    }

    def goodbye() {
    	render("Goodbye World")
    }

    def edit() {
    	def post = Post.get(params.id)
    	if(!post) {
    		post = new Post()
    	}
    	render (view:'edit', model:[Post:post])
    }

    def list() {
    	render(
    		view:'list',
    		model:[posts:Post.list(
    			sort:'lastUpdated',
    			order:'desc')])
    }
}
