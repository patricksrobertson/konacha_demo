#= require spec_helper

describe "Calculator", ->
  beforeEach ->
    @calculator = new Calculator()

  describe "add", ->
    it "adds two numbers", ->
      expect(@calculator.add(2,2)).to.eql 4

    context "null numbers", ->
      it "throws an exception", ->
        expect(=>
          @calculator.add(1, null)
        ).to.throw(NullNumberError)

  describe 'subtract', ->
    it 'subtracts two numbers', ->
      #this is the dumb should syntax
      @calculator.subtract(2,2).should.eql(0)
