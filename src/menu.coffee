
MenuView = require './views/menu'

class Menu
  constructor: ->
    @menuView = new MenuView

    magneto.on '!menu:toggle', => @menuView.toggle()
    magneto.on '!menu:show', => @menuView.show()
    magneto.on '!menu:hide', => @menuView.hide()

    magneto.on 'package:enable', (pkg) =>
      @menuView.addNavigation(pkg.name)

    magneto.workspace.append @menuView

module.exports = Menu
