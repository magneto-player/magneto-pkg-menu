
[Menu] = []

module.exports =
  activate: ->
    Menu = Menu or require './menu'

    new Menu()

  desactivate: ->
