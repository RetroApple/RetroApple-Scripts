-- Made by RetroApple

local RetroAppleLib = {}
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local WinContainer = Instance.new("Frame")
local TabContainer = Instance.new("ScrollingFrame")

local RetroAppleGUI = Instance.new("ScreenGui")
RetroAppleGUI.Name = "RetroAppleGUI"
RetroAppleGUI.Parent = game.CoreGui
RetroAppleGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

pcall(function()
    userinfo = HttpService:JSONDecode(readfile("retroapplelib.txt"))
end)

local function SaveInfo()
    writefile("retroapplelib.txt", HttpService:JSONEncode(userinfo))
end

function Draggable(topUI, object)
 local Dragging = nil
 local DragInput = nil
 local DragStart = nil
 local StartPosition = nil

 local function Update(input)
  local Delta = input.Position - DragStart
  local pos =
   UDim2.new(
    StartPosition.X.Scale,
    StartPosition.X.Offset + Delta.X,
    StartPosition.Y.Scale,
    StartPosition.Y.Offset + Delta.Y
   )
  object.Position = pos
 end

 topUI.InputBegan:Connect(
  function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    Dragging = true
    DragStart = input.Position
    StartPosition = object.Position

    input.Changed:Connect(
     function()
      if input.UserInputState == Enum.UserInputState.End then
       Dragging = false
      end
     end
    )
   end
  end
 )

 topUI.InputChanged:Connect(
  function(input)
   if
    input.UserInputType == Enum.UserInputType.MouseMovement or
     input.UserInputType == Enum.UserInputType.Touch
   then
    DragInput = input
   end
  end
 )

 UIS.InputChanged:Connect(
  function(input)
   if input == DragInput and Dragging then
    Update(input)
   end
  end
 )
end

function RetroAppleLib:Window(title)
    local MainFrame = Instance.new("Frame")
    local TopBar = Instance.new("TextLabel")
    local CloseButton = Instance.new("TextButton")
    local MinimizeButton = Instance.new("TextButton")
    local SettingsButton = Instance.new("ImageButton")
    local UserWindow = Instance.new("Frame")
    local PlayerName = Instance.new("TextLabel")
    local GameName = Instance.new("TextLabel")
    local PlayerImage = Instance.new("ImageLabel")
    local UICorner_PlayerImage = Instance.new("UICorner")
    local UICorner_CloseButton = Instance.new("UICorner")
    local UICorner_MinimizeButton = Instance.new("UICorner")
    local UICorner_SettingsButton = Instance.new("UICorner")
    local textBoxShadow = Instance.new("TextLabel")
    local PlayerImageBorder = Instance.new("TextLabel")
    local PlayerImageBorder2 = Instance.new("TextLabel")
    local TabFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding_TopBar = Instance.new("UIPadding")
    local UICorner_PlayerImageBorder = Instance.new("UICorner")
    local UICorner_PlayerImageBorder2 = Instance.new("UICorner")
    local UIListLayout_TabContainer = Instance.new("UIListLayout")
    local UIPadding_TabContainer = Instance.new("UIPadding")
    local UIPaddingName = Instance.new("UIPadding")

    WinContainer.Parent = MainFrame
    TabContainer.Parent = MainFrame
    WinContainer.Name = "WinContainer"
    TabContainer.Name = "TabContainer"

    TabContainer.Parent = MainFrame
    TabContainer.Active = true
    TabContainer.BackgroundColor3 = Color3.fromRGB(36, 37, 47)
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(-0.00225313287, 0, 0.0500000007, 0)
    TabContainer.Size = UDim2.new(0, 177, 0, 307)
    TabContainer.CanvasSize = UDim2.new(1, 5, 2, 0)
    TabContainer.ScrollBarThickness = 0

    UIListLayout_TabContainer.Parent = TabContainer
    UIListLayout_TabContainer.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_TabContainer.Padding = UDim.new(0, 10)

    UIPadding_TabContainer.Parent = TabContainer
    UIPadding_TabContainer.PaddingLeft = UDim.new(0, 14)
    UIPadding_TabContainer.PaddingTop = UDim.new(0, 10)

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = RetroAppleGUI
    MainFrame.BackgroundColor3 = Color3.fromRGB(45, 46, 59)
    MainFrame.Position = UDim2.new(0.275814891, 0, 0.374562413, 0)
    MainFrame.Size = UDim2.new(0, 798, 0, 398)

    Draggable(TopBar, MainFrame)

    TopBar.Name = "TopBar"
    TopBar.Parent = MainFrame
    TopBar.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(-0.002, 0, 0, 0)
    TopBar.Size = UDim2.new(0, 800, 0, 20)
    TopBar.Font = Enum.Font.SourceSansBold
    TopBar.TextXAlignment = Enum.TextXAlignment.Left
    TopBar.Text = tostring(title)
    TopBar.TextColor3 = Color3.fromRGB(88, 88, 88)
    TopBar.TextSize = 14.000

    TopBar.TextWrapped =false

    UIPadding_TopBar.Parent = TopBar
    UIPadding_TopBar.PaddingLeft = UDim.new(0, 8)

    UserWindow.Name = "UserWindow"
    UserWindow.Parent = MainFrame
    UserWindow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UserWindow.BackgroundTransparency = 1.000
    UserWindow.BorderSizePixel = 0
    UserWindow.Position = UDim2.new(-0.00144931721, 0, -0.0577889457, 350)
    UserWindow.Size = UDim2.new(0, 179, 0, 73)

    PlayerName.Name = "PlayerName"
    PlayerName.Parent = UserWindow
    PlayerName.BackgroundColor3 = Color3.fromRGB(206, 64, 64)
    PlayerName.BackgroundTransparency = 1
    PlayerName.BorderSizePixel = 0
    PlayerName.Position = UDim2.new(0, 80, 0, 18)
    PlayerName.Size = UDim2.new(0, 95, 0, 12)
    PlayerName.ZIndex = 3
    PlayerName.Font = Enum.Font.GothamBold
    PlayerName.TextColor3 = Color3.fromRGB(240, 240, 240)
    PlayerName.TextXAlignment = Enum.TextXAlignment.Left
    PlayerName.TextSize = 13

    GameName.Name = "GameName"
    GameName.Parent = UserWindow
    GameName.BackgroundColor3 = Color3.fromRGB(0, 25, 246)
    GameName.BackgroundTransparency = 1
    GameName.BorderSizePixel = 0
    GameName.Text = ""
    GameName.Position = UDim2.new(0, 80, 0, 30)
    GameName.Size = UDim2.new(0, 95, 0, 11)
    GameName.TextXAlignment = Enum.TextXAlignment.Left
    GameName.ZIndex = 3
    GameName.Font = Enum.Font.SourceSans
    GameName.TextColor3 = Color3.fromRGB(167, 167, 167)
    GameName.TextSize = 14

    PlayerImage.Name = "PlayerImage"
    PlayerImage.Parent = UserWindow
    PlayerImage.BackgroundColor3 = Color3.fromRGB(52, 54, 70)
    PlayerImage.Size = UDim2.new(0, 55, 0, 55)
    PlayerImage.Position = UDim2.new(0, 16, 0,9)
    PlayerImage.ZIndex = 5
    PlayerImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

    PlayerImageBorder.Name = "PlayerImageBorder"
    PlayerImageBorder.Parent = UserWindow
    PlayerImageBorder.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
    PlayerImageBorder.Size = UDim2.new(0, 63, 0, 63)
    PlayerImageBorder.Position = UDim2.new(0, 12, 0,5)
    PlayerImageBorder.Text = ""
    PlayerImageBorder.BackgroundTransparency = 0
    PlayerImageBorder.ZIndex = 3

    PlayerImageBorder2.Name = "PlayerImageBorder2"
    PlayerImageBorder2.Parent = UserWindow
    PlayerImageBorder2.BackgroundColor3 = Color3.fromRGB(30, 31, 40)
    PlayerImageBorder2.Size = UDim2.new(0, 59, 0, 59)
    PlayerImageBorder2.Position = UDim2.new(0, 14, 0,7.5)
    PlayerImageBorder2.Text = ""
    PlayerImageBorder2.BackgroundTransparency = 0
    PlayerImageBorder2.ZIndex = 4

    UICorner_PlayerImage.CornerRadius = UDim.new(1, 8)
    UICorner_PlayerImage.Parent = PlayerImage

    UICorner_PlayerImageBorder.CornerRadius = UDim.new(1, 8)
    UICorner_PlayerImageBorder.Parent = PlayerImageBorder

    UICorner_PlayerImageBorder2.CornerRadius = UDim.new(1, 8)
    UICorner_PlayerImageBorder2.Parent = PlayerImageBorder2

    textBoxShadow.Parent = UserWindow
    textBoxShadow.BackgroundColor3 = Color3.fromRGB(30, 31, 40)
    textBoxShadow.BorderSizePixel = 0
    textBoxShadow.Size = UDim2.new(0, 177, 0, 71)
    textBoxShadow.Font = Enum.Font.SourceSans
    textBoxShadow.TextColor3 = Color3.fromRGB(0, 0, 0)
    textBoxShadow.TextSize = 14.000
    textBoxShadow.TextTransparency = 1.000

    CloseButton.Name = "CloseButton"
    CloseButton.Parent = MainFrame
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 48, 21)
    CloseButton.BorderSizePixel = 0
    CloseButton.Position = UDim2.new(0.973913014, 0, 0, 0)
    CloseButton.Size = UDim2.new(0, 18, 0, 18)
    CloseButton.Font = Enum.Font.SourceSansBold
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(245, 245, 245)
    CloseButton.TextScaled = true
    CloseButton.TextSize = 20.000
    CloseButton.TextStrokeColor3 = Color3.fromRGB(245, 245, 245)
    CloseButton.TextWrapped = true

    UICorner_CloseButton.CornerRadius = UDim.new(0.300000012, 2)
    UICorner_CloseButton.Parent = CloseButton

    MinimizeButton.Name = "MinimizeButton"
    MinimizeButton.Parent = MainFrame
    MinimizeButton.BackgroundColor3 = Color3.fromRGB(68, 67, 86)
    MinimizeButton.BorderSizePixel = 0
    MinimizeButton.Position = UDim2.new(0.939130366, 0, 0, 0)
    MinimizeButton.Size = UDim2.new(0, 18, 0, 18)
    MinimizeButton.Font = Enum.Font.SourceSansBold
    MinimizeButton.Text = "-"
    MinimizeButton.TextColor3 = Color3.fromRGB(245, 245, 245)
    MinimizeButton.TextScaled = true
    MinimizeButton.TextSize = 20.000
    MinimizeButton.TextStrokeColor3 = Color3.fromRGB(245, 245, 245)
    MinimizeButton.TextWrapped = true

    UICorner_MinimizeButton.CornerRadius = UDim.new(0.300000012, 2)
    UICorner_MinimizeButton.Parent = MinimizeButton

    SettingsButton.Name = "SettingsButton"
    SettingsButton.Parent = MainFrame
    SettingsButton.BackgroundColor3 = Color3.fromRGB(68, 67, 86)
    SettingsButton.BackgroundTransparency = 1
    SettingsButton.BorderSizePixel = 0
    SettingsButton.Position = UDim2.new(0, 75, 0,372.59)
    SettingsButton.Size = UDim2.new(0, 23, 0, 23)
    SettingsButton.Image = "rbxassetid://2484556379"

    UICorner_SettingsButton.CornerRadius = UDim.new(1, 8)
    UICorner_SettingsButton.Parent = SettingsButton

    local open = false
    local debounce = true

    local rotationSpeed = 360
    local tweenInfo = TweenInfo.new(
        5,
        Enum.EasingStyle.Linear,
        Enum.EasingDirection.InOut,
        -1,
        false,
        0
    )

    local goal = {Rotation = rotationSpeed}
    local rotateSettings = TweenService:Create(SettingsButton, tweenInfo, goal)

    SettingsButton.MouseEnter:Connect(function()
        rotateSettings:Play()
    end)

    SettingsButton.MouseLeave:Connect(function()
        rotateSettings:Pause()
    end)

    MinimizeButton.MouseButton1Click:Connect(function()
        if MainFrame.Visible == false then
        MainFrame.Visible = true
        else
        MainFrame.Visible = false
        end
    end)

    CloseButton.MouseButton1Click:Connect(function()
        RetroAppleGUI:Destroy()
    end)

    UIS.InputBegan:Connect(function(key)
        if key.KeyCode == Enum.KeyCode.RightAlt then
        if MainFrame.Visible == false then
            MainFrame.Visible = true
        else
            MainFrame.Visible = false
        end
        end
    end)

    local player = game.Players.LocalPlayer
    local userId = player.UserId
    local thumType = Enum.ThumbnailType.HeadShot
    local thumSize = Enum.ThumbnailSize.Size180x180
    local content = game.Players:GetUserThumbnailAsync(userId, thumType, thumSize)

    PlayerImage.Image = content
    if player.DisplayName ~= nil then
        PlayerName.Text = player.DisplayName
        GameName.Text = player.Name
    else
        PlayerName.Text = player.Name
        GameName.Text = "RetroApple UI"
    end

    local tabHolder = {}

    function tabHolder:Tab(text)
        local UICorner_tab = Instance.new("UICorner")
        local UICorner_tab2 = Instance.new("UICorner")
        local tabBtns = Instance.new("TextButton")
        local tabLine = Instance.new("TextLabel")


        tabBtns.Name = tostring(text)
        tabBtns.Parent = TabContainer
        tabBtns.BackgroundColor3 = Color3.fromRGB(62, 64, 82)
        tabBtns.TextColor3 = Color3.fromRGB(229, 229, 229)
        tabBtns.Size = UDim2.new(0, 149, 0, 42)
        tabBtns.Font = Enum.Font.SourceSansSemibold
        tabBtns.Text = text

        -- Default Background Color | tabBtns.BackgroundColor3 = Color3.fromRGB(45, 46, 60)
        -- Default Color | tabBtns.TextColor3 = Color3.fromRGB(107, 106, 106)
        tabBtns.TextSize = 15.000
        tabBtns.TextWrapped = true
        tabBtns.ZIndex = 2
        tabBtns.AutoButtonColor = false
        tabBtns.BackgroundColor3 = Color3.fromRGB(45, 46, 60)
        tabBtns.TextColor3 = Color3.fromRGB(107, 106, 106)

        tabLine.Name = "tabLine"
        tabLine.Parent = tabBtns
        tabLine.BackgroundColor3 = Color3.fromRGB(29, 29, 40)
        tabLine.BackgroundTransparency = 0.5
        tabLine.Text = ""
        tabLine.Size = UDim2.new(0, 0, 0, 4)
        tabLine.Position = UDim2.new(0, 74.5, 0, 32)
        tabLine.BorderSizePixel = 0
        tabLine.ZIndex = 2
        tabLine.AnchorPoint = Vector2.new(0.5,0)

        UICorner_tab.CornerRadius = UDim.new(0.0199999996, 8)
        UICorner_tab.Parent = tabBtns
        UICorner_tab2.Parent = tabLine
        UICorner_tab2.CornerRadius = UDim.new(1, 8)

        tabBtns.MouseEnter:Connect(function(Player)
            tabLine:TweenSize(UDim2.new(0, 130, 0, 4), "InOut", "Quart", 0.5, true)
        end)

        tabBtns.MouseLeave:Connect(function(Player)
            tabLine:TweenSize(UDim2.new(0, 0, 0, 4), "InOut", "Quart", 0.5, true)
        end)

        -- Tabs ------------------------------------------------------------

        local tab = Instance.new("Frame")

        tab.Name = tostring(text)
        tab.Parent = WinContainer
        tab.ClipsDescendants = true
        tab.BackgroundTransparency = 1
        tab.BorderSizePixel = 0
        tab.Size = UDim2.new(0,  798.5, 0, 398.5)

        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")
        local TextKeyContainer = Instance.new("ScrollingFrame")
        
        TextKeyContainer.Name = "TextKeyContainer"
        TextKeyContainer.Parent =  tab
        TextKeyContainer.Active = true
        TextKeyContainer.BackgroundColor3 = Color3.fromRGB(45, 46, 59)
        TextKeyContainer.BorderSizePixel = 0
        TextKeyContainer.ClipsDescendants = true
        TextKeyContainer.Position = UDim2.new(0,175,0,20)
        TextKeyContainer.ScrollBarThickness = 0
        TextKeyContainer.Size = UDim2.new(0,  185, 0, 378)
        TextKeyContainer.ZIndex = 2

        UIListLayout.Parent =  TextKeyContainer
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 15)

        UIPadding.Parent =  TextKeyContainer
        UIPadding.PaddingLeft = UDim.new(0, 10)
        UIPadding.PaddingTop = UDim.new(0, 10)

        -- TextBoxContainer ------------------------------------------------

        local UIListLayout2 = Instance.new("UIListLayout")
        local UIPadding2 = Instance.new("UIPadding")
        local TextBoxContainer = Instance.new("ScrollingFrame") 

        TextBoxContainer.Parent =  tab
        TextBoxContainer.Name = "TextBoxContainer"
        TextBoxContainer.BackgroundColor3 = Color3.fromRGB(45, 46, 59)
        TextBoxContainer.BorderSizePixel = 0
        TextBoxContainer.ClipsDescendants = true
        TextBoxContainer.Position = UDim2.new(0,549.5,0,20)
        TextBoxContainer.Size = UDim2.new(0, 250, 0, 378)
        TextBoxContainer.ScrollBarThickness = 0
        TextBoxContainer.ZIndex = 1

        UIListLayout2.Parent =  TextBoxContainer
        UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout2.Padding = UDim.new(0, 50)

        UIPadding2.Parent =  TextBoxContainer
        UIPadding2.PaddingLeft = UDim.new(0, 10)
        UIPadding2.PaddingTop = UDim.new(0, 10)

        local UIListLayout3 = Instance.new("UIListLayout")
        local UIPadding3 = Instance.new("UIPadding")
        local ToggleContainer = Instance.new("ScrollingFrame") 
        ToggleContainer.Name = "ToggleContainer"
        ToggleContainer.Parent = tab
        ToggleContainer.Active = true
        ToggleContainer.BackgroundColor3 = Color3.fromRGB(45, 46, 59)
        ToggleContainer.BorderSizePixel = 0
        ToggleContainer.ClipsDescendants = true
        ToggleContainer.Position = UDim2.new(0,362,0,20)
        -- ToggleContainer.Position = UDim2.new(0,900,0,20)
        ToggleContainer.Size = UDim2.new(0, 185, 0, 378)
        ToggleContainer.CanvasSize = UDim2.new(1, 5, 2, 0)
        ToggleContainer.ScrollBarThickness = 0

        -- ToggleContainer.Parent =  tab
        -- ToggleContainer.Name = "ToggleContainer"
        -- ToggleContainer.BackgroundColor3 = Color3.fromRGB(36, 188, 114)
        -- ToggleContainer.BorderSizePixel = 0
        -- ToggleContainer.ClipsDescendants = true
        -- ToggleContainer.Position = UDim2.new(0,362,0,20)
        -- ToggleContainer.Size = UDim2.new(0, 185, 0, 378)
        -- ToggleContainer.ZIndex = 1

        UIListLayout3.Parent =  ToggleContainer
        UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout3.Padding = UDim.new(0, 50)

        UIPadding3.Parent =  ToggleContainer
        UIPadding3.PaddingLeft = UDim.new(0, 10)
        UIPadding3.PaddingTop = UDim.new(0, 10)

        for i, v in pairs(WinContainer:GetChildren()) do
        if i == 1 then
            v.Visible = true
        elseif i > 1 then
            v.Visible = false
        end
        end

        local originColors = {}
        originColors = tabBtns.BackgroundColor3

        for i, v in pairs(TabContainer:GetChildren()) do
            if v.ClassName == "TextButton" then
                if i == 3 then
                    v.BackgroundColor3 = Color3.fromRGB(62, 64, 82)
                    v.TextColor3 = Color3.fromRGB(229, 229, 229)
                elseif i > 3 then
                    v.BackgroundColor3 = Color3.fromRGB(45, 46, 60)
                    v.TextColor3 = Color3.fromRGB(107, 106, 106)
                end
                v.MouseButton1Click:Connect(function()
                    for i, v2 in pairs(WinContainer:GetChildren()) do
                        if v2.Name ~= v.Name then
                        v2.Visible = false
                        else
                        v2.Visible = true
                        end
                    end

                    if v.BackgroundColor3 == originColors then
                        for i, v3 in pairs(TabContainer:GetChildren()) do
                            if v3.ClassName == "TextButton" then
                                v3.BackgroundColor3 = Color3.fromRGB(45, 46, 60)
                                v3.TextColor3 = Color3.fromRGB(107, 106, 106)
                            end
                        end
                        v.BackgroundColor3 = Color3.fromRGB(62, 64, 82)
                        v.TextColor3 = Color3.fromRGB(229, 229, 229)
                    end
                end)
            end
        end

        local tabFunctions = {}

        function tabFunctions:Bind(text, presetbind, location, callback)

        local UIPadding = Instance.new("UIPadding")
        local UICorner = Instance.new("UICorner")
        local UICorner2 = Instance.new("UICorner")
        local KeyBindText = Instance.new("TextLabel")
        local KeyBindShadow = Instance.new("TextLabel")
        local KeyBind = Instance.new("TextButton")
        local Key = presetbind.Name

        KeyBindText.Name = "KeyBindText"
        KeyBindText.Text = ""
        KeyBindText.Parent = KeyBindShadow
        KeyBindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        KeyBindText.BackgroundTransparency = 1.000
        KeyBindText.BorderSizePixel = 0
        KeyBindText.Position = UDim2.new(0.616875172, 0, 0, 0)
        KeyBindText.Size = UDim2.new(0, 78, 0, 50)
        KeyBindText.Font = Enum.Font.ArialBold
        KeyBindText.TextColor3 = Color3.fromRGB(111, 140, 220)
        KeyBindText.TextSize = 16.000
        KeyBindText.TextWrapped = false
        KeyBindText.ZIndex = 3

        KeyBindShadow.Name = "KeyBindShadow"
        KeyBindShadow.BackgroundColor3 = Color3.fromRGB(30, 31, 40)
        KeyBindShadow.Position = UDim2.new(0, 0, 0, 10)
        KeyBindShadow.Size = UDim2.new(0, 164, 0, 57)
        KeyBindShadow.Font = Enum.Font.SourceSans
        KeyBindShadow.TextColor3 = Color3.fromRGB(0, 0, 0)
        KeyBindShadow.TextSize = 14.000
        KeyBindShadow.ZIndex = 2

        UICorner.CornerRadius = UDim.new(0.0199999996, 8)
        UICorner.Parent =  KeyBindShadow

        KeyBind.Name = "KeyBind"
        KeyBind.Parent = KeyBindShadow
        KeyBind.BackgroundColor3 = Color3.fromRGB(62, 64, 82)
        KeyBind.Size = UDim2.new(0, 157, 0, 50)
        KeyBind.Font = Enum.Font.SourceSansBold
        KeyBind.Text = text
        KeyBind.TextColor3 = Color3.fromRGB(243, 243, 243)
        KeyBind.TextSize = 24.000
        KeyBind.TextXAlignment = Enum.TextXAlignment.Left
        KeyBind.ZIndex = 2
        
        UICorner2.CornerRadius = UDim.new(0.0199999996, 8)
        UICorner2.Parent = KeyBind
        
        UIPadding.Parent = KeyBind
        UIPadding.PaddingLeft = UDim.new(0.100000001, 0)
        UIPadding.PaddingTop = UDim.new(0, -1)

        KeyBind.MouseButton1Click:Connect(function()
            KeyBindText.Text = "..."
            local inputWait = game:GetService("UserInputService").InputBegan:Wait()
            if inputWait.KeyCode.Name ~= "Unknown" then
                KeyBindText.Text = inputWait.KeyCode.Name
                Key = inputWait.KeyCode.Name
            end
        end)

        game:GetService("UserInputService").InputBegan:Connect(
        function(current, pressed)
            if not pressed then
            if current.KeyCode.Name == Key then
                pcall(callback)
            end
            end
        end)

        for i, v in pairs(WinContainer:GetChildren()) do
            if i == tonumber(location) then
            KeyBindShadow.Parent = v.TextKeyContainer
            end
        end
        end

        function tabFunctions:TextBox(text, placetext, location, disapper, callback)
        local TextBoxBorder = Instance.new("TextLabel")
        local TextBoxTitle = Instance.new("TextLabel")
        local TextBoxInput = Instance.new("TextBox")
        local UICorner_1 = Instance.new("UICorner")
        local UICorner_2 = Instance.new("UICorner")
        local UICorner_3 = Instance.new("UICorner")

        TextBoxBorder.Name = "TextBoxBorder"
        TextBoxBorder.BackgroundColor3 = Color3.fromRGB(30, 31, 40)
        TextBoxBorder.Position = UDim2.new(0, 0, 0, 0)
        TextBoxBorder.Size = UDim2.new(0, 230, 0, 57)
        TextBoxBorder.Font = Enum.Font.SourceSans
        TextBoxBorder.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextBoxBorder.TextSize = 14.000
        TextBoxBorder.ZIndex = 2

        UICorner_1.CornerRadius = UDim.new(0.0199999996, 8)
        UICorner_1.Parent = TextBoxBorder

        TextBoxTitle.Name = "TextBoxTitle"
        TextBoxTitle.Parent = TextBoxBorder
        TextBoxTitle.BackgroundColor3 = Color3.fromRGB(62, 64, 82)
        TextBoxTitle.Size = UDim2.new(0, 230, 0, 50)
        TextBoxTitle.Font = Enum.Font.SourceSansBold
        TextBoxTitle.Text = text
        TextBoxTitle.TextColor3 = Color3.fromRGB(243, 243, 243)
        TextBoxTitle.TextSize = 24.000
        TextBoxTitle.ZIndex = 2

        UICorner_2.CornerRadius = UDim.new(0.0199999996, 8)
        UICorner_2.Parent = TextBoxTitle

        TextBoxInput.Name = "TextBoxInput"
        TextBoxInput.Parent = TextBoxBorder
        TextBoxInput.BackgroundColor3 = Color3.fromRGB(77, 79, 102)
        TextBoxInput.BorderSizePixel = 0
        TextBoxInput.Position = UDim2.new(0, 0, 0, 65)
        TextBoxInput.Size = UDim2.new(0, 230, 0, 26)
        TextBoxInput.Font = Enum.Font.SourceSansBold
        TextBoxInput.PlaceholderColor3 = Color3.fromRGB(97, 97, 97)
        TextBoxInput.PlaceholderText = placetext
        TextBoxInput.Text = ""
        TextBoxInput.TextColor3 = Color3.fromRGB(111, 140, 220)
        TextBoxInput.TextSize = 24.000
        TextBoxInput.ZIndex = 2

        UICorner_3.Parent = TextBoxInput

        TextBoxInput.FocusLost:Connect(function(enter)
            if enter then
            if #tostring(TextBoxInput) > 0 then
                pcall(callback, TextBoxInput.Text)
                if disapper then
                    TextBoxInput.Text = ""
                end
            end
            end
        end)

        for i, v in pairs(WinContainer:GetChildren()) do
            if i == tonumber(location) then
            TextBoxBorder.Parent = v.TextBoxContainer
            end
        end
        end

        function tabFunctions:Toggle(text, off, location, callback)
        local ToggleBorder = Instance.new("TextLabel")
        local ToggleText = Instance.new("TextLabel")
        local ToggleButton = Instance.new("TextButton")
        local UICorner_1 = Instance.new("UICorner")
        local UICorner_2 = Instance.new("UICorner")
        local UIPadding_3 = Instance.new("UIPadding")
        local UIPadding_4 = Instance.new("UIPadding")
        local toggled = false


        ToggleBorder.Name = "ToggleBorder"
        ToggleBorder.BackgroundColor3 = Color3.fromRGB(30, 31, 40)
        ToggleBorder.Position = UDim2.new(0.0299999993, 0, 0, 10)
        ToggleBorder.Size = UDim2.new(0, 168, 0, 57)
        ToggleBorder.Font = Enum.Font.SourceSans
        ToggleBorder.TextColor3 = Color3.fromRGB(0, 0, 0)
        ToggleBorder.TextSize = 14.000

        UICorner_1.CornerRadius = UDim.new(0.0199999996, 8)
        UICorner_1.Parent = ToggleBorder

        ToggleText.Name = "ToggleText"
        ToggleText.Parent = ToggleBorder
        ToggleText.BackgroundColor3 = Color3.fromRGB(62, 64, 82)
        ToggleText.Size = UDim2.new(0, 161, 0, 50)
        ToggleText.Font = Enum.Font.SourceSansBold
        ToggleText.Text = text
        ToggleText.TextColor3 = Color3.fromRGB(243, 243, 243)
        ToggleText.TextSize = 24.000
        ToggleText.TextXAlignment = Enum.TextXAlignment.Left

        UICorner_2.CornerRadius = UDim.new(0.0199999996, 8)
        UICorner_2.Parent = ToggleText

        UIPadding_3.Parent = ToggleText
        UIPadding_3.PaddingLeft = UDim.new(0.100000001, 0)
        UIPadding_3.PaddingTop = UDim.new(0, -1)

        ToggleButton.Name = "ToggleButton"
        ToggleButton.Parent = ToggleBorder
        ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleButton.BackgroundTransparency = 1.000
        ToggleButton.BorderSizePixel = 0
        ToggleButton.Position = UDim2.new(0.5625, 0, 0, 0)
        ToggleButton.Size = UDim2.new(0, 103, 0, 50)
        ToggleButton.Font = Enum.Font.SourceSansBold
        ToggleButton.Text = "OFF"
        ToggleButton.TextColor3 = Color3.fromRGB(206, 41, 8)
        ToggleButton.TextSize = 24.000

        UIPadding_4.Parent = ToggleButton
        UIPadding_4.PaddingLeft = UDim.new(0, -10)

        ToggleButton.MouseButton1Click:Connect(function()
            if toggled == false then
                ToggleButton.Text = "ON"
                ToggleButton.TextColor3 = Color3.fromHex("47ce0c")
            else
            ToggleButton.Text = "OFF"
            ToggleButton.TextColor3 = Color3.fromHex("ce2908")
            end
            toggled = not toggled
            pcall(callback, toggled)
        end)

        
        for i, v in pairs(WinContainer:GetChildren()) do
            if i == tonumber(location) then
            ToggleBorder.Parent = v.ToggleContainer
            end
        end

        end
        return tabFunctions
    end
    return tabHolder
end
return RetroAppleLib
