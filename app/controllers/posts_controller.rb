class PostsController < ApplicationController
    before_action :set_post, only: [:destroy]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to root_path, notice:'¡Post creado exitosamente!'
        else
            redirect_to root_path, alert:'¡Error en el registro del post!'
        end
    end

    def destroy
        if @post.destroy
            redirect_to root_path, notice:'¡Post eliminado exitosamente!'
        else
            redirect_to root_path, alert:'¡Error en la eliminación del post!'
        end
    end

    private
    def post_params
        # params.require(:posts).permit(:content, :image_url)
        params.permit(:content, :image_url)
    end

    def set_post
        @post = Post.find(params[:id])
    end

end
