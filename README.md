# 📊 領袖統計系統 (Leaderstats Handler)

這是一個用於 Roblox 伺服器端的數據顯示系統。它能自動在玩家列表 (Player List) 中建立自定義欄位，並即時抓取玩家在關聯群組中的「軍銜」或「職位」，提供直觀的身分識別。

## ✨ 技術亮點

- **標準化數據架構**：嚴格遵循 Roblox 引擎內建的 `leaderstats` 命名規範，確保數據能自動被系統識別並正確渲染於玩家列表 UI。
- **動態 API 數據抓取**：整合 `GetRoleInGroup` 同步 API，實時獲取玩家在 Roblox 群組中的職稱字串，實現遊戲與社群組織的無縫連結。
- **高效能初始化邏輯**：採用事件驅動架構 (Event-Driven)，僅在玩家加入 (PlayerAdded) 時進行一次性數據封裝，對伺服器性能負擔極低。
- **物件封裝技術**：透過 `Instance.new` 動態建立資料夾與數值物件，展現了對 Roblox 父子階層架構 (Parent-Child Hierarchy) 的精確控制。

## 🛠️ 開發環境與 API

- **開發平台**：Roblox Studio
- **腳本類型**：Server Script (伺服器端腳本)
- **核心技術**：`Instance.new`, `Player:GetRoleInGroup`, `leaderstats`

## 📂 檔案結構
- `Server/LeaderstatsHandler.lua`: 負責玩家加入時的數據初始化與群組職位讀取。

## 📝 備審展示說明
本專案展示了開發者在處理 **遊戲狀態管理 (GameState Management)** 與 **後端數據初始化** 上的基礎實力。透過將群組職位轉化為遊戲內可見的「階級」系統，體現了將社群數據轉化為遊戲內容的邏輯整合能力。

---
*註：展示代碼中 GROUP_ID 已設為佔位符，實際應用時可靈活更換為任何 Roblox 群組編號。*
