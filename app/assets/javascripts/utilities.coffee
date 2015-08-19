utilities = window.utilities = 
  init: ->
    @redirectSurvey()

  redirectSurvey: ->
    location = window.location.pathname
    referrer = document.referrer
    referrerMatch = referrer.match(/surveys\/question_groups\/1\/answer_groups\/new/)
    if location == '/surveys/question_groups' && referrerMatch != null
      window.location = '/pages/thank-you'
$(document).ready ->
  utilities.init()