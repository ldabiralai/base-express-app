chai = require("chai")
chai.should()
superagent = require("superagent")

require('../app')

appBaseUrl = "http://localhost:5000/"

describe "Home", ->

  it "should return a 200", (done) ->
    superagent.get("#{appBaseUrl}")
    .end (e, response) ->
      response.status.should.equal 200
      done()

  describe "should see", ->

    it "the heading", (done) ->
      superagent.get("#{appBaseUrl}")
      .end (e, response) ->
        response.text.should.include "Home"
        done()
