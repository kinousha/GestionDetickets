class TicketsController < ApplicationController
  before_action :authenticate_user!
    def index
      @tickets=Ticket.all
    end
    def show
     @ticket=Ticket.find(params[:id])
    end
    def edit
     @ticket=Ticket.find(params[:id])
    end
    def update
     @ticket=Ticket.find(params[:id])
     @ticket.update(tickets_params)
      redirect_to  tickets_path
    end
  
    def new
     @ticket=Ticket.new
    end
  
  
    def create
      ticket=Ticket.create(tickets_params)
      redirect_to  ticket_path(ticket.id)
  
    end
    def destroy
    @ticket=Ticket.find(params[:id])
    @ticket.destroy
  
     redirect_to  tickets_path
  
    end
    private 
  
    def tickets_params 
      params.require(:ticket).permit(:titre,:description,:statut,:personne_id,personne_attributes: %i[id personne _destroy])
      
    end
  end
  