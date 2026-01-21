--[[
    系統名稱：領袖統計系統 (Leaderstats Handler)
    功能描述：當玩家加入遊戲時，自動獲取其在指定群組中的職稱並顯示於玩家列表。
]]

local GROUP_ID = 0000000 -- 設定目標群組 ID

local function onPlayerAdded(player)
    -- 建立領袖統計資料夾，必須命名為 leaderstats 才會顯示在列表中
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"

    -- 建立職位顯示數值
    local role = Instance.new("StringValue")
    role.Name = "階級" -- 顯示在列表上的欄位名稱

    -- 調用系統 API 獲取玩家在群組中的職位名稱 (例如：Owner, Member)
    role.Value = player:GetRoleInGroup(GROUP_ID)

    -- 將物件封裝至玩家路徑
    role.Parent = leaderstats
    leaderstats.Parent = player
end

-- 監聽玩家加入事件
game.Players.PlayerAdded:Connect(onPlayerAdded)
