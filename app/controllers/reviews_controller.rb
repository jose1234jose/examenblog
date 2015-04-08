class ReviewsController < ApplicationController

def create
	#@review = Review.new(review_params)
	#if @review.save
	#	redirect_to "/posts/"+@review.post_id.to_s, notice: "review created xD"
	#else
	#	render "show"
	#end
	@clave_post = params[:post_id]
		@descripcion_review = params[:descripcion]
		@nuevo = Post.find(@clave_post)
		if @nuevo.reviews.build(descrition: @descripcion_review).save
			redirect_to "/posts/"+@clave_post.to_s, notice: "Revision creada"
		else
			render "show"
		end
end


def like_review
	@post = Review.find(params[:id])
    @post.like = @post.like + 1
    if @post.save
      redirect_to (:back)
    else
      render "show"
    end

end

def dislike_review
	@post = Review.find(params[:id])
    @post.like = @post.like - 1
    if @post.save
      redirect_to (:back)
    else
      render "show"
    end

end


#def review_params
#	params.require(:review).permit(:description, :post_id)
#end

end