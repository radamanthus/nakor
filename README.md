# Nakor

Nakor is a Ruby gem for generating a template application for Corona SDK. It creates a template app with a splash screen, a menu with four buttons (Play, Settings, Help, About), and one scene for each of the four buttons. It uses Corona SDK's built-in Storyboard to manage scenes.

The generated app also includes [RadLib](https://github.com/radamanthus/radlib), a library of utility Lua functions to support Corona SDK development.

# Installation

    gem install nakor


# Usage

    nakor generate awesome_app

    /Applications/CoronaSDK/simulator awesome_app
    
# Credits

This code is MIT licensed, see http://developer.coronalabs.com/code/license