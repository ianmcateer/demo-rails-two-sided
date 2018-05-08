class PagesController < ApplicationController
  def about
  end

  def contact
    @stores = Store.all
  end
end
