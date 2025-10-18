--discord.gg/boronide, code generated using luamin.js™




if not _G.notificationcache then
	_G.notificationcache = {}
end
local screengui = game.CoreGui:FindFirstChild("NoguchiNotification")
local tweenservice = game:GetService("TweenService")
if not screengui then
	screengui = Instance.new("ScreenGui", game.CoreGui);
	screengui["Enabled"] = true;
	screengui["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
	screengui["Name"] = "NoguchiNotification"
	local notification = Instance.new("Frame", screengui);
	notification["BorderSizePixel"] = 0;
	notification["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	notification["AnchorPoint"] = Vector2.new(0.5, 0.5);
	notification["Size"] = UDim2.new(0, 292, 0, 792);
	notification["Position"] = UDim2.new(0.88943, 0, 0.5, 0);
	notification["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	notification["Name"] = [[notification]];
	notification["BackgroundTransparency"] = 1;
	local idk1 = Instance.new("UIListLayout", notification);
	idk1["Padding"] = UDim.new(0, 10);
	idk1["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
	idk1["SortOrder"] = Enum.SortOrder.LayoutOrder;
	local idk2 = Instance.new("UIPadding", notification);
	idk2["PaddingBottom"] = UDim.new(0, 30);
    local function updateSize()
        notification.Size = UDim2.new(0, 292, 0, workspace.CurrentCamera.ViewportSize.Y)
    end
    updateSize()
    workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateSize)
end

function fadeintransparency(ins)
	local properties = {
		["Frame"] = "BackgroundTransparency",
		["CanvasGroup"] = "BackgroundTransparency",
		["ImageLabel"] = "ImageTransparency",
		["TextLabel"] = "TextTransparency"
	}
	if properties[ins.ClassName] then
		local a = tweenservice:Create(ins, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			[properties[ins.ClassName]] = 0
		})
		a:Play()
	end
end
function alert(content_, dur)
    -- print(tick() - _G.notificationcache[content_])
	if not _G.notificationcache[content_] or tick() - _G.notificationcache[content_] > 20 then
        _G.notificationcache[content_] = tick()
		dur = dur or 5
		local canvansgroup = Instance.new("CanvasGroup", screengui.notification);
		canvansgroup["BorderSizePixel"] = 0;
		canvansgroup["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
		canvansgroup["Size"] = UDim2.new(0, 292, 0, 96);
		canvansgroup["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		canvansgroup.GroupTransparency = 1
		wait(0.5)
		local tween = tweenservice:Create(canvansgroup, TweenInfo.new(0.5), {
			GroupTransparency = 0
		})
		tween:Play()
		local idk3 = Instance.new("Frame", canvansgroup);
		idk3["BorderSizePixel"] = 0;
		idk3["BackgroundColor3"] = Color3.fromRGB(171, 171, 255);
		idk3["AnchorPoint"] = Vector2.new(1, 1);
		idk3["Size"] = UDim2.new(0, 0, 0, 3);
		idk3["Position"] = UDim2.new(1, 0, 1, 0);
		idk3["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		idk3["Name"] = [[idk]];
		idk3.ZIndex = 2
		local idk4 = Instance.new("UICorner", canvansgroup);
		local bg = Instance.new("Frame", canvansgroup);
		bg["BorderSizePixel"] = 0;
		bg["BackgroundColor3"] = Color3.fromRGB(57, 57, 57);
		bg["AnchorPoint"] = Vector2.new(0, 1);
		bg["Size"] = UDim2.new(0, 292, 0, 3);
		bg["Position"] = UDim2.new(0, 0, 1, 0);
		bg["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		bg["Name"] = [[bg]];
		local logo = Instance.new("ImageLabel", canvansgroup);
		logo["BorderSizePixel"] = 0;
		logo["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		logo["AnchorPoint"] = Vector2.new(0.5, 0.5);
		logo["Image"] = [[rbxassetid://135300070242371]];
		logo["Size"] = UDim2.new(0, 90, 0, 88);
		logo["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		logo["BackgroundTransparency"] = 1;
		logo["Position"] = UDim2.new(0.15173, 0, 0.53477, 0);
		local maintitle = Instance.new("TextLabel", canvansgroup);
		maintitle["BorderSizePixel"] = 0;
		maintitle["TextSize"] = 25;
		maintitle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		maintitle["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		maintitle["TextColor3"] = Color3.fromRGB(255, 255, 255);
		maintitle["BackgroundTransparency"] = 1;
		maintitle["Size"] = UDim2.new(0, 244, 0, 23);
		maintitle["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		maintitle["Text"] = [[Nawy Hub - Notification]];
		maintitle["Position"] = UDim2.new(0.16096, 0, 0.07292, 0);
		local content = Instance.new("TextLabel", canvansgroup);
		content["TextWrapped"] = true;
		content["TextTruncate"] = Enum.TextTruncate.SplitWord;
		content["BorderSizePixel"] = 0;
		content["TextSize"] = 15;
		content["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		content["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		content["TextColor3"] = Color3.fromRGB(255, 255, 255);
		content["BackgroundTransparency"] = 1;
		content["Size"] = UDim2.new(0, 210, 0, 52);
		content["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		content["Text"] = content_
		content["Name"] = [[content]];
		content["Position"] = UDim2.new(0.2774, 0, 0.38491, 0);
		spawn(function()
			local idk3_ = tweenservice:Create(idk3, TweenInfo.new(dur), {
				Size = UDim2.new(1, 0, 0, 0.3)
			})
			idk3_:Play()
			idk3_.Completed:Wait()
			idk3.Size  = UDim2.new(1, 0, 0, 0.3)
			local tween = tweenservice:Create(canvansgroup, TweenInfo.new(0.5), {
				GroupTransparency = 1
			})
			tween:Play()
			tween.Completed:Wait()
			canvansgroup:Destroy()
		end)
	end
end
return alert
