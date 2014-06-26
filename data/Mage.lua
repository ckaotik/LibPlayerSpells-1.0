--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("MAGE", "50400", 4, {
	COOLDOWN = {
		["PERSONAL AURA"] = {
			[115610] = "SURVIVAL", -- Temporal Shield
			[110960] = "SURVIVAL", -- Greater Invisibility
			[108978] = "IMPORTANT", -- Alter Time
			[ 86949] = "SURVIVAL", -- Cauterize
			[ 45438] = "SURVIVAL", -- Ice Block
			[ 12051] = "MANA_REGEN", -- Evocation
			[ 12043] = "IMPORTANT", -- Presence of Mind
			[ 11958] = "SURVIVAL", -- Cold Snap
			[  1463] = "SURVIVAL MANA_REGEN", -- Incanter's Ward
			[    66] = "SURVIVAL", -- Invisibility
			108843, -- Blazing Speed
			108839, -- Icy Floes
			 55342, -- Mirror Image
			 12042, -- Arcane Power
			 12472, -- Icy Veins
		},
		[102051] = "INTERRUPT", -- Frostjaw
		[  2139] = "INTERRUPT", -- Counterspell
		[   475] = "HELPFUL DISPEL", -- Remove Curse
		84714, -- Frozen Orb
		31687, -- Summon Water Elemental
	},
	RAIDBUFF = {
		[ 1459] = "SPL_POWER CRITICAL", -- Arcane Brillance
		[61316] = "SPL_POWER CRITICAL", -- Dalaran Brillance
		[80353] = "BURST_HASTE",        -- Time Warp
	},
	AURA = {
		HARMFUL = {
			CROWD_CTL = {
				  118, -- Polymorph
				28271, -- Polymorph: Pig
				28271, -- Polymorph: Turtle
				61305, -- Polymorph: Black Cat
				61721, -- Polymorph: Rabbit
				61780, -- Polymorph: Turkey
			},
			114923, -- Nether Tempest
			112948, -- Frost Bomb
			 44457, -- Living Bomb
			 44572, -- Deep Freeze
			 31589, -- Slow
			 12654, -- Ignite (Fire Mastery)
		},
		HELPFUL = {
			PERSONAL = {
				[11426] = "SURVIVAL", -- Ice Barrier
				112965, -- Fingers of Frost
				116257, -- Invoker's Energy
				 48107, -- Heating Up
				 48108, -- Pyroblast!
				 12051, -- Invocation / Rune of Power
				 30482, -- Molten Armor
				  7302, -- Frost Armor
				  6117, -- Mage Armor
			},
			111264, -- Ice Ward
			130, -- Slow Fall
		},
	},
	[30449] = "HARMFUL DISPEL", -- Spellsteal
	[  475] = "HELPFUL DISPEL", -- Remove Curse
}, {
	-- Map aura to provider
	[116257] = 12051, -- Invoker's Energy <= Invocation
}, {
	-- Map aura to modified spell(s)
	[112965] = { -- Fingers of Frost =>
		30455, -- Ice Lance
		44572, -- Deep Freeze
	},
	[48107] = 108853, -- Heating Up => Inferno Blast
	[48108] = 11366, -- Pyroblast! => Pyroblast
	[12654] = 11129, -- Ignite => Combustion
})
