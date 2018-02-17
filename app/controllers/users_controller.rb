class UsersController < Clearance::UsersController

  def show
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name)
    end
end
