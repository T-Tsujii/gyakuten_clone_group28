class Watched_MoviesController< ApplicationController
    def create
      current_user.watched_movies.create!(movie_id: params[:movie_id])
      redirect_to root_path
    end

    def destroy
      current_user.watched_movies.find_by(movie_id: params[:movie_id]).destroy!
      redirect_to root_path
    end
end
