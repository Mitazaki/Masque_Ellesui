local Masque = LibStub("Masque", true)
if not Masque then
	return
end

local PATH = [[Interface\AddOns\Masque_Ellesui\Textures\]]
local VERSION = "1.3.0"
local MASQUE_VERSION = 120001

local function addSkin()
	local iconSize = 36
	local shadowSize = iconSize
	local frameSize = 38
	local flashSize = frameSize + 2
	local borderTexture = PATH.."Border"

	local skin = {
		Author = "Numbtongue",
		Description = "A square skin that recreates the Ellesui action bar look with a grey bevel, inner shadow, thin black outer border, and 5.5% icon zoom.",
		Version = VERSION,
		Masque_Version = MASQUE_VERSION,
		Shape = "Square",
		Group = "Ellesui",
		Order = 1,
		Backdrop = {
			Width = frameSize,
			Height = frameSize,
			Color = {0.66, 0.66, 0.68, 1},
			Texture = PATH.."Backdrop",
			Item = {
				Width = frameSize,
				Height = frameSize,
				Color = {0.66, 0.66, 0.68, 1},
				Texture = PATH.."Backdrop",
			},
			Pet = {
				Width = frameSize,
				Height = frameSize,
				Color = {0.66, 0.66, 0.68, 1},
				Texture = PATH.."Backdrop",
			},
		},
		Icon = {
			Width = iconSize,
			Height = iconSize,
			TexCoords = {0.055, 0.945, 0.055, 0.945},
		},
		SlotIcon = "Icon",
		Flash = {
			Width = flashSize,
			Height = flashSize,
			Color = {1, 1, 1, 0.5},
			Texture = PATH.."Flash",
		},
		Cooldown = {
			Width = iconSize,
			Height = iconSize,
		},
		Pushed = {
			Width = iconSize,
			Height = iconSize,
			DrawLayer = "BORDER",
			DrawLevel = 1,
			Color = {0, 0, 0, 0.28},
			UseColor = true,
		},
		Normal = {
			Width = frameSize,
			Height = frameSize,
			Static = true,
			Color = {1, 1, 1, 1},
			Texture = PATH.."Normal",
		},
		Disabled = {
			Hide = true,
		},
		Checked = {
			Width = frameSize,
			Height = frameSize,
			BlendMode = "ADD",
			Color = {0.42, 0.77, 1, 0.75},
			Texture = borderTexture,
		},
		Border = {
			Width = frameSize,
			Height = frameSize,
			BlendMode = "ADD",
			Color = {1, 1, 1, 0},
			Texture = borderTexture,
		},
		DebuffBorder = "Border",
		EnchantBorder = "Border",
		IconBorder = "Border",
		Gloss = {
			Hide = true,
		},
		AutoCastable = {
			Width = 62,
			Height = 62,
			Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
		},
		Highlight = {
			Width = frameSize,
			Height = frameSize,
			BlendMode = "ADD",
			Color = {1, 1, 1, 0.2},
			Texture = PATH.."Highlight",
		},
		Name = {
			Width = frameSize,
			Height = 10,
			OffsetY = 2,
		},
		Count = {
			OffsetX = -2,
			OffsetY = 2,
		},
		HotKey = {
			Width = frameSize,
			Height = 10,
			OffsetX = -2,
			OffsetY = -2,
		},
		AutoCast = {
			Width = frameSize,
			Height = frameSize,
			OffsetX = 1,
			OffsetY = -1,
		},
		AutoCastShine = {
			Width = iconSize,
			Height = iconSize,
			OffsetX = 1,
			OffsetY = -1,
		},
		AssistedCombatHighlight = {
			Width = 46,
			Height = 46,
		},
	}

	skin.Shadow = {
		Width = shadowSize,
		Height = shadowSize,
		Color = {0, 0, 0, 0.7},
		Texture = PATH.."Shadow_Base",
	}

	Masque:AddSkin("Ellesui", skin, true)
end

addSkin()