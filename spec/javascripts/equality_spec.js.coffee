#= require spec_helper

describe 'equal', ->
  it 'is === only', ->
    expect(1).to.equal(1)

  context 'objects', ->
    beforeEach ->
      @object1 = {foo: 'bar'}
      @object2 = {foo: 'bar'}
      @object3 = @object1

    it 'does not work for deep euality', ->
      expect(@object1).to.not.equal @object2

    it 'requires a deep property for that crap', ->
      expect(@object1).to.deep.equal @object2

    it 'works when the objects are the same obj', ->
      expect(@object1).to.equal @object3

describe 'eql', ->
  it 'is the equality we probably want to use', ->
    expect({foo: 'bar'}).to.eql {foo: 'bar'}

describe 'the <=> stuff', ->
  describe 'above', ->
    it 'is greater than', ->
      expect(2).to.be.above(1)

    it 'can be used for length', ->
      array = [1,2,3]

      expect(array).to.have.length.above(2)

  describe 'least', ->
    it 'is greater than or equal to', ->
      expect(2).to.be.at.least(2)

    it 'can be used for array lengths too', ->
      array = [1,2,3]

      expect(array).to.have.length.of.at.least(2)

  describe 'below', ->
    it 'is less than', ->
      expect(2).to.be.below(3)

  describe 'most', ->
    it 'is less than or equal to', ->
      expect(2).to.be.at.most(2)

  describe 'within', ->
    it 'is between', ->
      expect(3).to.be.within(1,4)
