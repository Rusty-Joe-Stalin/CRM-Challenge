class FinderController < ApplicationController
  def index
    @customers = Customers.all
  end

  def alphabetized
    @customers = Customers.order(:Full_Name)
  end

  def missing_email
    @customers = Customers.where(Email:'')
  end
end
