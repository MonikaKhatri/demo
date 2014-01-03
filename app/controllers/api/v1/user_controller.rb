class Api::V1::UserController < API::V1::BaseController
  def show
    @user = User.find(params[:id])
  end
end
