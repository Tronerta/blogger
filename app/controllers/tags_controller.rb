class TagsController < ApplicationController
	before_action :require_login, only: [:destroy]

	def show
	  @tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end
	
	def destroy
		@tag = Tag.find(params[:id])
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to tags_path, notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
