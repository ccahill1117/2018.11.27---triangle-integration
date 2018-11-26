require ('rspec')
require ('pry')
require ('Triangle')


describe('Triangle') do 

  it('tests a method for Triangle') do

    dummy = Triangle.new()

    expect(dummy.method()).to(eq(expected result))

  end

end

