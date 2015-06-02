class LinksController < ApplicationController

  def new
  end

  def create
    @user = current_user
    @links = @user.links.new(link_params)

    if @link.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end


    private

      def link_params
        params.require(:link).permit(:title, :url)
      end


end
