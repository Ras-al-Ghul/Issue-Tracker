class Issue < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  has_many :comments

  	def as_json(options = {})
    	super(options.merge(include: [:user, comments: {include: :user}]))
  	end	
end