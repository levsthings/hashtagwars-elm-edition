require('../styles/app.sass')

const Elm = require('../elm/Main.elm')
Elm.Main.embed(document.getElementById('app'))
