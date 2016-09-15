class StaticPagesController < ApplicationController
  def index
    @manufacturers = Manufacturer.last(4)
  end
end
