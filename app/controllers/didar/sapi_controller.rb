class APIController < Faalis::APIController
  before_action :fetch_collection, only: [:index, :destroy]
  before_action :find_object, only: [:show, :update]

  after_action :verify_authorized, only: [:index, :show, :update, :create,
                                          :destroy]

  def fetch_collection
    objects = controller_name.classify.constantize.all
    authorize objects
    instance_variable_set("@#{controller_name}", objects)
  end

  def find_object
    object = controller_name.classify.constantize.find(params[:id])
    authorize object
    instance_variable_set("@#{controller_name.singularize}", object)
  end

end
