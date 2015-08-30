
(( factory ) ->
  if "function" is typeof define and define.amd
    define factory
  else if "undefined" isnt typeof module
    module.exports = do factory
  else
    old_obj = global.define
    new_obj = global.define = do factory

    new_obj.noConflict = ->
      global.define = old_obj
      return new_obj
) ( ) ->

  ( template, definitions, invoke ) ->

    for name, definition of definitions
      if definition instanceof Function
        definition = do definition.toString
        if invoke? and name in invoke
          definition = "(#{definition})()"
      else definition = JSON.stringify definition
      template = template.replace new RegExp("#{name}", "g"), definition
    return template

