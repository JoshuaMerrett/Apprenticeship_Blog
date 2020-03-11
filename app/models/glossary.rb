class Glossary < ApplicationRecord

    has_rich_text :body

    #This code is used to tell the application to extend (use) FriendlyId.
    extend FriendlyId
    #This code tells the application what object the friendly_id should be used on. The code below shows that friendly_id will be used on the title object.
    friendly_id :title, use: :slugged

    #The code below belongs to the friendly id code 
    #The code below checks to see if the title has been changed and if it has then it will assign a new slug (part of friendly id) to the new title.
    def should_generate_new_friendly_id?
        #This code is part of rails
        title_changed?
    end

end
