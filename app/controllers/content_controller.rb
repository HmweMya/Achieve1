class ContentController < ApplicationController
    before_action :set_blog, only: [:show, :edit, :update, :destroy]
    #before_filter :authenticate_user!
    def new 
        @content =  Content.new
        if params[:back]
        @content = Content.new(confirm_params)
        end
    end
    def confirm
        @content = Content.new(confirm_params)
        if @content.valid? # if true
            render action: 'confirm'
       elsif params[:back] # back page data remain
        render action: 'new'
        else 
           @content.save
            render action: 'new'
        end
    end
    def thanks
        @content = Content.new(confirm_params)
        @content.save
        #NoticeMailer.sendmail_confirm(@entry).deliver
    end
    def detail
        @content = Content.all
    end
    private  #protect hacking
    def confirm_params
       params.require(:content).permit(:name, :email, :content, :title) 
      
    end
end
