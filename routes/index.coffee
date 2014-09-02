module.exports = (app) ->

  routes = {}

  routes.home = (req, res) ->
    res.render("home", {layout: "views/layout.toffee"})

  routes
