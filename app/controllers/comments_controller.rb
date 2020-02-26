class CommentsController < ApplicationController
    #The before_action code is used to determine the code that should be executed before any other pieces of code within the controller will be executed.
    before_action :find_post
    #The "only:" in this code is used to prevent the before_action from being applied to every action within the controller, only the actions named betweeen the [] have the before_action :find_comment applied to them.
    before_action :find_comment, only: [:destroy, :edit, :update, :comment_owner]
    before_action :comment_owner, only: [:destroy, :edit, :update]

    #This action will contain the code that relates to creating a new comment on a specific post, the create action is able to be called throughout the application, when it is required.
    def create 
        #The @comment instance variable will perform the specific code that is associated with it, this is determined by the code that follows the "=" symbol. The code below will check that the comment created on the post meets the parameters of comment and only permits the content from being added/entered.
        @comment = @post.comments.create(params[:comment].permit(:content))
        #The code below is used to check is the user id of the comment is equal to (matches) the id of the current user that is signed in.
        @comment.user_id = current_user.id
        #The code below will save the comment 
        @comment.save

        #The statement below will check to see if the comment has been saved.
        if @comment.save
            #If the comment has been saved then the application will redirect the user to the post that the comment was added to.
            redirect_to post_path(@post)
        else
            #If the comment hasn't been saved then the application will render the new action.
            render 'new'
        end
    end

    def destroy
        @comment.destroy
        redirect_to post_path(@post)
    end

    def edit
    
    end

    def update
        if @comment.update(params[:comment].permit(:content))
            redirect_to post_path(@post)
        else
            render 'edit'
        end
    end

    #Private actions within controllers are used to only allow the actions stored within to be accessed by the specific controller they are stored in. The private action below contains the find_post action, this results in only the comments controller being able to access this action.
    private 

        #The action below is used to find the specific post that the user has clicked and is viewing, this will prevent the comment from being applied to every post and only being added to the post the user created the comment on.
        def find_post
           @post = Post.friendly.find(params[:post_id]) 
        end

        def find_comment 
            @comment = @post.comments.find(params[:id])
        end

        def comment_owner 
            unless current_user.id == @comment.user_id || current_user.admin
                flash[:notice] = "You are not authorised to edit or delete this comment"
                redirect_to @post
            end
        end
end
