Blog app 

Post * join table joining categories and users
	belongs_to :user
	has_many :comments
	has_many :users, through :comments
	belongs_to :category
	title
	content

User 
	has_many :posts
	has_many :comments
	has_many :posts, through :comments
	has_many :categories, through :posts
	username
	email
	password_digest

Comment * join table joining users and posts 
	join table  -- look for a model that has two belongs to 
	belongs_to :user
	belongs_to :post
	content

Category
	name
	has_many :posts
	has_many :users, through: :posts

How do we want them to interact 
What's the join table? 
How can relationships interact? 
when there's a many to many relationship between things? 
What do you want to prioritize? 


Join table should be a many-to-many relationship, otherwise it will feel contrived, like having a UserPosts model. 


-user has many posts
-site has many users
-note belongs to user 
-note belongs to site 
	If it has two belongs_to -- that's your join table. 
	Comment works as a nice join table for almost anything. In my case, comment is the note, connects the site and the user 

	JOIN TABLE HAS TWO BELONGS_TO 

To figure it out, think about what's in the middle, like, a post is in the middle of a category and a user, ec. 

	or PostCaetgoires: 
	  belongs_to :post
	  belongs_to :category 
	  	this method would allow a post to have many categories, it's a many_to_many AR 
	  	There are always many ways to do these . 

Can a join model join more than two models? It can, but usually there's not a need for it, but sometimes there is. 

generators: resource (includes routes)

==> when you have to name the association something different from the model itself: read this: https://www.theodinproject.com/courses/ruby-on-rails/lessons/active-record-associations



polymorphic -- a model can belong to more than one other model, on a single association 

ARs have many methods that abstract out lots of common code. They really shine in complex situations, like join models, conditions, validations 
