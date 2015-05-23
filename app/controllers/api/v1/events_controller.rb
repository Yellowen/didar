class API::V1::EventsController < APIController

after_action :verify_authorized, :except => :index

# GET /api/v1/events
  def index
    @events = Event.all
    authorize @events
    respond_with(@events)
  end

  def create
    authorize Event, :create?
    @event = Event.new(resource_params)

    if @event.save
      respond_with(@event)
    else
      respond_to do |format|
        format.json { render :json => {:fields => @event.errors}, :status => :unprocessable_entity }
      end
    end
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
    respond_with(@event)
  end

  def update
    @event = Event.find(params[:id])
    authorize @event, :update?
  

    if @event.update(resource_params)
      respond_with(@event)
    else
      respond_to do |format|
         format.json { render :json => {:fields => @event.errors}, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    ids = params[:id].split(",")
    @events = Event.where(:id => ids)

    authorize @events
    @events.destroy_all
  end

  def resource_params
    params.require(:event).permit(:id, :name, :description, :start, :end, :event_type_id, :url, :all_day)
  end
end
