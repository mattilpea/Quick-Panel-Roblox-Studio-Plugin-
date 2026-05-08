local toolbar = plugin:CreateToolbar("Quick Panel")
local pluginButton = toolbar:CreateButton("Quick Panel", "repetitive and tedious processes are now faster","rbxassetid://83101210337733")

local mainFrame = script.Parent.MainFrame
local copyCframeButton = mainFrame.CopyOff
local copyTextureButton = mainFrame.CopyTextureID
local info = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Right, --From what side gui appears
	false, --Widget will be initially enabled
	false, --Don't overdrive previouse enabled state
	200, --default weight
	300, --default height
	150, --minimum weight (optional)
	150 --minimum height (optional)
)
local widget = plugin:CreateDockWidgetPluginGuiAsync(
	"OpenState", --A unique and consistent identifier used to storing the widget’s dock state and other internal details
	info --dock widget info
)
widget.Title = "QuickPanel" --Giving title to our widget gui
pluginButton.Click:Connect(function()
	widget.Enabled = not widget.Enabled
	mainFrame.Parent = widget
end)


copyCframeButton.Activated:Connect(function()
	
	game:GetService("ChangeHistoryService"):SetWaypoint("Undo Copy of CFrame")
	local selection = game:GetService("Selection"):Get()
	local rootPart = selection[1]
	if rootPart == workspace.CurrentCamera then
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	end
	for i, furtherParts in pairs(selection) do
		if furtherParts ~= rootPart then
			furtherParts.CFrame = rootPart.CFrame
		end
	end
	if rootPart == workspace.CurrentCamera then
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	end
	
end)

copyTextureButton.Activated:Connect(function()
	game:GetService("ChangeHistoryService"):SetWaypoint("Undo Copy of TextureID")
	local selection = game:GetService("Selection"):Get()
	local rootPart = selection[1]

	if not rootPart or not rootPart:IsA("MeshPart") then
		warn("First selected object must be a MeshPart.")
		return
	end

	local rootTextureId = rootPart.TextureID
	game:GetService("ChangeHistoryService"):SetWaypoint("Undo Copy of single TextureId")
	for i = 2, #selection do
		local part = selection[i]
		if part:IsA("MeshPart") then
			
			
			part.TextureID = rootTextureId
			
		end
	end
	game:GetService("ChangeHistoryService"):SetWaypoint("Done copy of singleTextureId")
end)
