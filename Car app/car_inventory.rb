class Car
  def initialize(condition, make, model, year, mileage,  price)
    @make = make
    @model = model
    @year = year
    @price = price
    @condition =condition
    @mileage=mileage
  end

  def to_s
    "#{@condition.upcase}--#{@make.upcase}|#{@model.upcase}|#{@year}|#{@mileage} miles--$#{@price}"
  end
end

@car1=Car.new("used", "honda", "civic", 2008, 140000, 10000)
@car2=Car.new("used", "honda", "crv", 2001, 176000, 2000)
@car3=Car.new("used", "chevrolet", "s10", 1994, 100000, 1500)

@car_lot=[@car1,@car2,@car3]
