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

generators: resource (includes routes)