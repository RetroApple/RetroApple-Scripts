# RetroApple-Scripts

I am currently working on making UI Libs for Roblox so, for each one I make I will post instructions on how to use them here.

## RetroApple UI LIB
```lua
local main = loadstring(game:HttpGet('https://raw.githubusercontent.com/Retroapple/RetroApple-Scripts/UI-Libs/RetroAppleUI.txt'))()

local Window = main:Window()
local Tab = Window:Tab("Tab1")

local bind = Tab:Bind("Fly", "1", function() end)

-- These are only the options so far. I will update this script once I make new functions
