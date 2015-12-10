class ProjectsController < ApplicationController

      def index
      	  @articles = Article.all
      end

      def new
      	  @article = Article.new
      end	  


      def create
      	  @article = Article.new(article_params)
	  respond_to do |format|
	    if @article.save
	      format.html{redirect_to action:'index', notice:'Article was successfully created'}
	      format.json{render :show, status: :created, location: @article}
	    else
	      format.html{render action: 'new'}
	      format.json{render json: @book.errors, status: unprocessable_entity}   
	    end
	  end  
      end	  

      def update
      	  respond_to do |format|
      	  	     if @article.update(article_params)
        	     format.html { redirect_to @article, notice: 'Article was successfully updated\
.' }
			format.json { render :show, status: :ok, location: @article }
      			else
        		format.html { render :edit }
        		format.json { render json: @article.errors, status: :unprocessable_entity \
}
	   end
    	end
     end






 private
     def article_params
     	 params.require(:article).permit(:article_text)
     end



end
