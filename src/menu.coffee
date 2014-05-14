
MenuView = require './views/menu'

class Menu
  constructor: ->
    @menuView = new MenuView

    niceplay.on '!menu:toggle', => @menuView.toggle()
    niceplay.on '!menu:show', => @menuView.show()
    niceplay.on '!menu:hide', => @menuView.hide()

    niceplay.on 'package:enable', (pkg) =>
      @menuView.addNavigation(pkg.name)

    niceplay.workspace.append @menuView

module.exports = Menu
