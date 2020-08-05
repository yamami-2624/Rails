class UsersController < ApplicationController
	def show
        @book = Book.new
        @user = User.find(params[:id])
        #user一覧ページからshowリンクを押して来たときにそのユーザーに関連付いたbooksを取り出すために
        # まず@userのidを取得する必要があるのかも
        @books = @user.books

	end

	def edit
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
        @book = Book.new
	end

	def update
		 @user = User.find(params[:id])
         @user.update(user_params)
         redirect_to books_path(@user.id)
	end

	private
def user_params
  params.require(:user).permit(:name, :profile_image, :introduction)
end
def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
end

