
{View} = magneto.Views

###

    <div class="menu">
      <div class="identity">Nice player</div>
      <ul class="navigation">
        <li class="navigation-item"><a href="#"><i class="icon icon-gear"></i> Settings</a></li>
        <li class="navigation-item"><a href="#"><i class="icon icon-theme"></i> Themes</a></li>
        <li class="navigation-item">
          <a href="#"><i class="icon icon-plugin"></i> Plugins</a>
        </li>
      </ul>
      <ul class="navigation sub-navigation">
        <li class="navigation-item"><a href="#"><i class="icon icon-plugin-origin">Su</i> Subtitles</a></li>
        <li class="navigation-item"><a href="#"><i class="icon icon-plugin-origin">Li</i> Library</a></li>
        <li class="navigation-item"><a href="#"><i class="icon icon-plugin-origin">Im</i> Imdb</a></li>
      </ul>
    </div>

###


class MenuView extends View
  @content: ->
    @div class: 'menu', =>
      @div class: 'identity', 'Nice Play'

      @ul class: 'navigation', =>
        @li class: 'navigation-item', =>
          @a href: '#', 'Settings', =>
            @i class: 'icon icon-gear'
        @li class: 'navigation-item', =>
          @a href: '#', 'Themes', =>
            @i class: 'icon icon-theme'
        @li class: 'navigation-item', =>
          @a href: '#', 'Plugins', =>
            @i class: 'icon icon-plugin'

      @ul class: 'navigation sub-navigation', outlet: 'subNavigation'

  initialize: ->

  toggle: ->
    magneto.workspace.toggleClass 'menu-open'
  show: ->
    magneto.workspace.addClass 'menu-open'
  hide: ->
    magneto.workspace.removeClass 'menu-open'

  addNavigation: (title) ->
    @subNavigation.append View.render ->
      @li class: 'navigation-item', =>
        @a href: '#', title, =>
          @i class: 'icon plugin-origin', title.substr(0, 2)

module.exports = MenuView
