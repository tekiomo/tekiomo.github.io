document.addEventListener('DOMContentLoaded', ->
  $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0)

  return unless $navbarBurgers.length

  $navbarBurgers.forEach(($el) ->
    $el.addEventListener('click', ->
      target = $el.dataset.target
      $target = document.getElementById(target)
      $el.classList.toggle('is-active')
      $target.classList.toggle('is-active')
    )
  )
)
