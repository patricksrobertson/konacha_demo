describe 'satisfy', ->
  it 'is our custom matcher', ->
    expect(1).to.satisfy (number) -> number < 2

describe 'respondTo', ->
  beforeEach ->
    @func = { foo: -> 'wee' }

  it 'checks if a method is defined', ->
    expect(@func).to.respondTo 'foo'
    expect(@func).to.not.respondTo 'bar'

  it 'blergs', ->
