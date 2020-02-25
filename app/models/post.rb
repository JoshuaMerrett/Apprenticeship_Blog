class Post < ApplicationRecord
    has_rich_text :body

    has_one_attached :image
    #This code is used to tell the application to extend (use) FriendlyId.
    extend FriendlyId
    #This code tells the application what object the friendly_id should be used on. The code below shows that friendly_id will be used on the title object.
    friendly_id :title, use: :slugged

    #The code below will display the posts in descending order based on their ID in the database, due to ID's being generated incrementally, the latest post to be created will be displayed first as this will have the highest number.
    scope :most_recent, -> { order(id: :desc) }

    #The code below belongs to the friendly id code 
    #The code below checks to see if the title has been changed and if it has then it will assign a new slug (part of friendly id) to the new title.
    def should_generate_new_friendly_id?
        #This code is part of rails
        title_changed?
    end

    def display_day_published
        #The code below is used to retrieve the created at date of the posts from the database.
        #String interpolation is used within this code as a variable is being used within a string, this is identified by #{}.
        "Published #{created_at.strftime('%b %d, %Y')}"
    end

end
