require 'pycall/import'
include PyCall::Import

class IsABirdFinder
  attr_accessor :model

  def initialize()
    #PyCall.exec("import sys; sys.path.append('/path/to/your/python/libraries')")
    #PyCall is throwing me an error because of multi threading issues with pycall.
    debugger
    pyimport 'fastai.vision.all', as: :fastai_vision
    @model = fastai_vision.load_learner(model_path)
  end

  def predict(image_path)
    image = fastai_vision.ImageDataLoaders.from_path(image_path)
    @model.predict(image)
  end
end