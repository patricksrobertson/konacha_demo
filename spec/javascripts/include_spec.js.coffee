describe 'include/contain', ->
  beforeEach ->
    @array  = [1,2,3]
    @object = { foo: 'bar' }
    @str = 'foobar'
    @deepObject = { foo: 'bar', baz: { blerg: 'blee' } }

  it 'includes 2', ->
    expect(@array).to.include 2

  it 'includes keys', ->
    expect(@object).to.include.keys 'foo'

  it 'can contain', ->
    expect(@str).to.contain 'bar'
    expect(@str).to.not.contain 'monkees'

  it 'string is an alias for contain', ->
    expect(@str).to.have.string 'bar'

  it 'has properties', ->
    expect(@object).to.have.property 'foo'

  it 'has deep properties', ->
    expect(@deepObject).to.have.deep.property 'baz.blerg'

describe 'empty', ->
  it "defines {}, [], and '' as empty", ->
    expect({}).to.be.empty
    expect([]).to.be.empty
    expect([]).to.be.empty

  it 'returns false when there is something', ->
    expect([1]).to.not.be.empty

describe 'match', ->
  beforeEach -> @string = 'foobar'

  it 'matches', ->
    expect(@string).to.match /^foo/
