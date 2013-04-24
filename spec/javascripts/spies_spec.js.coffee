#= require spec_helper

describe 'sinon', ->
  beforeEach -> 
    @calculator = new Calculator()
    @stub = sinon.collection.stub @calculator, 'add'

  it 'lets us stub like we are used to', ->
    @calculator.add(2,2)

    expect(@stub).to.have.been.calledWith(2,2)

  it 'does the after hook yall', ->
    @calculator.add(5,3)

    expect(@stub).to.have.been.calledWith(5,3)
