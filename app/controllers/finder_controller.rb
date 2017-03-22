class FinderController < ApplicationController
  def index
    @customers = Customers.all
    if Customers.where(province_id:'')
      @not_has_province = true
    end

  end

  def alphabetized
    @customers = Customers.order(:Full_Name)
    if Customers.where(province_id:'')
      @not_has_province = true
    end
  end

  def missing_email
    @customers = Customers.where(Email:'')
    if Customers.where(province_id:'')
      @not_has_province =true
    end

  end
end
