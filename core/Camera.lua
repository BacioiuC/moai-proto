local class = require 'core.vendor.middleclass.middleclass'
local inspect = require 'core.vendor.inspectlua.inspect'
local display = require 'core.Display'

Camera = class('Camera')

function Camera:initialize() 
  self.viewport = MOAIViewport.new()
  self.viewport:setSize(Display.resolutionX, Display.resolutionY)
  self.viewport:setScale(Display.resolutionX, Display.resolutionY)
end

function Camera:getViewport()
  return self.viewport
end