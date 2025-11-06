local UserInputService = game:GetService("UserInputService")
local ispc = false
if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    ispc = false
elseif UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
    ispc = true
elseif UserInputService.GamepadEnabled and not UserInputService.KeyboardEnabled then
    ispc = false
end
local Library
local lib = {}
if ispc  and not getgenv().UseSeaUi then
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/noguchihyuga/LinoriaLib/refs/heads/main/source.lua"))()
else
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/noguchihyuga/LinoriaLib/refs/heads/main/SeaHubUi.lua"))()
end
if not isfolder("noguchi") then
	makefolder("noguchi")
end
if not isfile('noguchi/savesetting.json') then
    writefile("noguchi/savesetting.json", "{}")
end
local hs = game.HttpService
-- Text = 'Auto rejoin when kick',
-- 	Default = true,
-- 	Tooltip = 'auto rejoin when player kicked',
-- 	Callback = function(Value)
function lib:CreateWindow(...)
    local window = Library:CreateWindow(...)
    local libwin = {}
    function libwin:AddTab(...)
        local TabLib = {}
        local tab = window:AddTab(...)
        function TabLib:AddLeftGroupbox(...)
            local groupbox = tab:AddLeftGroupbox(...)
            local grouplib = {}
            function grouplib:AddToggle(Idk, Setting)
                Setting = Setting or {}
                local oldcallback = Setting["Callback"]
                local oldtext = Setting["Text"]
                local olddefault = Setting["Default"]
                local oldtooltip = Setting["Tooltip"]
                local data = hs:JSONDecode(readfile("noguchi/savesetting.json"))
                if data[oldtext] ~= nil then
                    olddefault = data[oldtext]
                    oldcallback(olddefault)
                end
                local Callback = function (v)
                    local data = hs:JSONDecode(readfile("noguchi/savesetting.json"))
                    data[oldtext] = v
                    writefile("noguchi/savesetting.json", hs:JSONEncode(data))
                    oldcallback(v)
                end
                local toggle = groupbox:AddToggle(Idk, {
                    Text = oldtext,
                    Default = olddefault,
                    Tooltip = oldtooltip,
                    Callback = Callback
                })
                return toggle
            end
            function grouplib:AddButton(...)
                return groupbox:AddButton(...)
            end
            return grouplib
        end
        function TabLib:AddRightGroupbox(...)
            local groupbox = tab:AddRightGroupbox(...)
            local grouplib = {}
            function grouplib:AddToggle(Idk, Setting)
                Setting = Setting or {}
                local oldcallback = Setting["Callback"]
                local oldtext = Setting["Text"]
                local olddefault = Setting["Default"]
                local oldtooltip = Setting["Tooltip"]
                local data = hs:JSONDecode(readfile("noguchi/savesetting.json"))
                if data[oldtext] ~= nil then
                    olddefault = data[oldtext]
                    oldcallback(olddefault)
                end
                local Callback = function (v)
                    local data = hs:JSONDecode(readfile("noguchi/savesetting.json"))
                    data[oldtext] = v
                    writefile("noguchi/savesetting.json", hs:JSONEncode(data))
                    oldcallback(v)
                end
                local toggle = groupbox:AddToggle(Idk, {
                    Text = oldtext,
                    Default = olddefault,
                    Tooltip = oldtooltip,
                    Callback = Callback
                })
                return toggle
            end
            function grouplib:AddButton(...)
                return groupbox:AddButton(...)
            end
            return grouplib
        end
        return TabLib
    end
    return libwin
end
return lib
