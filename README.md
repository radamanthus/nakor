# Nakor

Nakor is a Ruby gem for generating a template application for Corona SDK. It creates a template app with a splash screen, a menu with four buttons (Play, Settings, Help, About), and one scene for each of the four buttons. It uses Corona SDK's built-in Storyboard to manage scenes.

The generated app also includes [RadLib](https://github.com/radamanthus/radlib), a library of utility Lua functions to support Corona SDK development.

# Installation

    gem install nakor


# Usage

    nakor generate awesome_app

This will create the *awesome_app* directory in the current directory. To run it in Corona simulator:

    cd awesome_app
    /Applications/CoronaSDK/simulator awesome_app

The generated project directory structure looks like this:

    appname
      +-- assets
      +-- appname
      +-- doc
      +-- server

The directory structure follows my personal convention for mobile projects:

- All mobile app code is in appname/appname.
- If this has a server component, the server app source code is in appname/server
- Game assets (e.g. Illustrator .ai files) are in appname/assets, finished PNGs are copied over to appname/appname because that's where Corona SDK expects them to be.
- The game design document (yes you should have one) and all other documentation are in appname/doc


