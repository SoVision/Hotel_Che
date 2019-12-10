class ClientsController < ApplicationController
  before_action :require_login, except: [:index]
  def index
  end

  def new
    @client=Client.new
  end

  def create
    @client = Client.new(client_params)

    if(@client.save)
      redirect_to Client
    else
      render 'new'
    end
  end

  def destroy
    @client = Client.find(params[:id])

    @client.destroy

    redirect_to Client
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    if(@client.update(client_params))
      redirect_to Client
    else
      render 'edit'
    end
  end

  private def client_params
    params.require(:client).permit(:name, :birthday, :gender, :address, :phone_number)
  end
end
