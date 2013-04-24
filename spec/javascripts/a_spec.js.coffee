describe 'a/an', ->
  beforeEach ->
    @object = {}
    @string = 'foobar'

  describe 'object', ->
    it 'is an object', ->
      expect(@object).to.be.an 'object'

  describe 'string', ->
    it 'is a string', ->
      expect(@string).to.be.a 'string'

    it 'is not an object', ->
      expect(@string).to.not.be.an 'object'
