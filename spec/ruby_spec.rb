require ('rspec')
require ('pry')
require ('./lib/Triangle')


describe('Triangle') do

  it('test for equilateral triangle') do
    dummy = Triangle.new(3,3,3)
    expect(dummy.triangle?()).to(eq("equilateral"))
  end

  it('test for isosceles triangle') do
    dummy = Triangle.new(3,3,1)
    expect(dummy.triangle?()).to(eq("isosceles"))
  end

  it('test for scalene triangle') do
    dummy = Triangle.new(3,4,5)
    expect(dummy.triangle?()).to(eq("scalene"))
  end

  it('is a triangle') do
    dummy = Triangle.new(1,3,5)
    expect(dummy.triangle?()).to(eq(false))
  end

end
