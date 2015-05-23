module Didar
  class API::V1::EventTypesController < APIController

    after_action :verify_authorized, :except => :index

    # GET /api/v1/event_types
    def index
      @event_types = Didar::EventType.all
      authorize @event_types
      respond_with(@event_types)
    end

    def create
      authorize Didar::EventType, :create?
      @event_type = Didar::EventType.new(resource_params)

      if @event_type.save
        respond_with(@event_type)
      else
        respond_to do |format|
          format.json { render :json => {:fields => @event_type.errors}, :status => :unprocessable_entity }
        end
      end
    end

    def show
      @event_type = Didar::EventType.find(params[:id])
      authorize @event_type
      respond_with(@event_type)
    end

    def update
      @event_type = Didar::EventType.find(params[:id])
      authorize @event_type, :update?


      if @event_type.update(resource_params)
        respond_with(@event_type)
      else
        respond_to do |format|
          format.json { render :json => {:fields => @event_type.errors}, :status => :unprocessable_entity }
        end
      end
    end

    def destroy
      ids = params[:id].split(",")
      @event_types = Didar::EventType.where(:id => ids)

      authorize @event_types
      @event_types.destroy_all
    end

    def resource_params
      params.require(:event_type).permit(:id, :name, :description, :color)
    end
  end

end
