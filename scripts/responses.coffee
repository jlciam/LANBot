module.exports = (robot) ->

  robot.hear /\~cal/i, (msg) ->
    msg.send "http://goo.gl/lXHqbv"
    
  robot.hear /\@coachwiggly/i, (msg) ->
    msg.send "@andy"
    
  # matches "mouse" whenever it's not preceded by "@masha"
  # 1. whenever there are only 0-5 characters before "mouse", not enough for "@masha"
  # 2. whenever there are 6 characters before "mouse" but the whole string isn't "@mashamouse"
  robot.hear /(^.{0,5}mouse|((?!@mashamouse).{6}mouse))/i, (msg) ->
    msg.send "@mashamouse"
    
  robot.hear /^\s*friday\s*$/i, (msg) ->
    msg.send "DRINK DAY"
