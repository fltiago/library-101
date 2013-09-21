class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])

    if @user.valid?
      # Redireciona para página do usuário
      flash[:success] = "Seu usuário foi criado!"
      redirect_to user_path(@user)
    else
      # Renderiza o new
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
end
