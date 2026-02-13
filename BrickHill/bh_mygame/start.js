const nh = require('node-hill')

nh.startServer({
    hostKey: "F4z6U2tUcbwIaAQU0OISH2KG3Aj6XAXIQCpPv279sSokfy1S1vcZF1ut9XHqeFbW", // Your host key here (can be found under the settings of the set.)

    gameId: 53205, // Your game id here

    port: 42480, // Your port id here (default is 42480)

    local: true, // Whether or not your server is local

    mapDirectory: './maps/', // The path to your maps folder.

    map: 'mymap.brk', // The file name of your .brk

    scripts: './user_scripts', // Your .js files path

    // Add npm / built-in node.js modules here
    modules: [
        //"discord.js"
    ]
})

// For more help: https://brickhill.gitlab.io/open-source/node-hill/interfaces/gamesettings.html
