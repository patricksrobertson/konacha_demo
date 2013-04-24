describe 'ok', ->
  #this is truthyness

  it 'defines ok as truthy', ->
    expect(true).to.be.ok
    expect(1).to.be.ok

  it 'defines not ok as falsy', ->
    expect(undefined).to.not.be.ok
    expect(null).to.not.be.ok
    expect(false).to.not.be.ok

describe 'true', ->
  it 'defines true as true', ->
    expect(true).to.be.true

  it 'does not define truthy values as true', ->
    expect(1).to.not.be.true

  it 'does not allow false as true', ->
    expect(false).to.not.be.true

describe 'false', ->
  it 'defines false as false', ->
    expect(false).to.be.false

  it 'does not allow falsly values as false', ->
    expect(undefined).to.not.be.false
    expect(null).to.not.be.false

describe 'undefined', ->
  it 'only works for undefined', ->
    expect(undefined).to.be.undefined
    expect(null).to.not.be.undefined

describe 'exist', ->
  it 'is neither undefined nor null', ->
    expect({}).to.exist
    expect(true).to.exist
    expect(false).to.exist

  it 'null and undefined are the two non-existant values', ->
    expect(null).to.not.exist
    expect(undefined).to.not.exist
