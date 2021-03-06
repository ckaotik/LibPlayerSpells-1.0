--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

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
lib:__RegisterSpells("HUNTER", "50400", 8, {
	COOLDOWN = {
		   781, -- Disengage
		 53351, -- Kill Shot
		109259, -- Powershot
		120360, -- Barrage
		120679, -- Dire Beast
		120697, -- Lynx Rush
		121818, -- Stampede
		INTERRUPT = {
			[34490] = "HARMFUL AURA", -- Silencing Shot
			 26090, -- Pummel (Gorilla)
			 50318, -- Serenity Dust (Moth)
			 50479, -- Nether Shock (Nether Ray)
			147362, -- Counter Shot
		},
		PERSONAL = {
			[109304] = "SURVIVAL", -- Exhilaration
			AURA = {
				[34477] = "UNIQUE_AURA", -- Misdirection
				[82726] = "POWER_REGEN", -- Fervor
				SURVIVAL = {
					  5384, -- Feign Death
					 19263, -- Deterrence
					 51755, -- Camouflage
					148467, -- Deterrence (glyph)
				},
				BURST = {
					  3045, -- Rapid Fire
					 34471, -- The Beast Within
				},
			},
		},
		["HELPFUL AURA"] = {
			54216, -- Master's Call
		},
		["HARMFUL AURA"] = {
			  3355, -- Freezing Trap
			  3674, -- Black Arrow
			 13813, -- Explosive Trap
			 19386, -- Wyvern Sting
			 19503, -- Scatter Shot
			 19577, -- Intimidation
			 20736, -- Distracting Shot
			109248, -- Binding Shot
			117050, -- Glaive Toss
			131894, -- A Murder of Crows
		},
	},
	AURA = {
		PERSONAL = {
			118922, -- Posthaste
			 53220, -- Steady Focus (buff)
			 56453, -- Lock and Load
			 82925, -- Ready, Set, Aim...
			 82692, -- Focus Fire
			 34720, -- Thrill of the Hunt
			 13165, -- Aspect of the Hawk
			109260, -- Aspect of the Iron Hawk
			  5118, -- Aspect of the Cheetah
			 13159, -- Aspect of the Pack
			 61648, -- Aspect of the Beast
			 83559, -- Glyph of Black Ice
		},
		HARMFUL = {
			[ 1130] = "UNIQUE_AURA", -- Hunter's Mark
			  1978, -- Serpent Sting
			118253, -- Serpent Sting
		},
		PET = {
			   136, -- Mend Pet
			 19615, -- Frenzy
			118455, -- Beast Cleave (buff)
		},
	},
	RAIDBUFF = {
		[ 19506] = "ATK_POWER",          -- Trueshot Aura
		[ 24604] = "CRITICAL",           -- Furious Howl
		[ 90309] = "CRITICAL",           -- Terrifying Roar
		[ 90355] = "BURST_HASTE",        -- Ancient Hysteria
		[ 90363] = "STATS",              -- Embrace of the Shale Spider
		[ 90364] = "STAMINA" ,           -- Qiraji Fortitude
		[ 93435] = "MASTERY",            -- Roar of Courage
		[126309] = "SPL_POWER CRITICAL", -- Still Water
		[126373] = "CRITICAL",           -- Fearless Roar
		[128432] = "ATK_SPEED",          -- Cackling Howl
		[128433] = "ATK_SPEED",          -- Serpent's Swiftness
		[128997] = "MASTERY",            -- Spirit Beast Blessing
		[135678] = "SPL_HASTE",          -- Energizing Spores
	},
	-- Special
	[ 19801] = "HARMFUL DISPEL", -- Tranquilizing Shot
}, {
	-- Map aura to provider
	[ 19615] =  19623, -- Frenzy
	[ 34471] =  34692, -- The Beast Within
	[ 53220] =  53224, -- Steady Focus
	[ 82925] =  34487, -- Ready, Set, Aim... <= Master Marksman
	[ 56453] =  53301, -- Lock and Load => Explosive Shot
	[ 34720] =   3044, -- Thrill of the Hunt => Arcane Shot
	[118455] = 115939, -- Beast Cleave
	[118253] =   1978, -- Serpent Sting
	[ 51755] =  51753, -- Camouflage
	[ 54216] =  53271, -- Master's Call
	[118922] =    781, -- Posthaste
	[ 83559] =  82941, -- Glyph of Black Ice
	[  3355] = {       -- Freezing Trap
		 1499,
		60192,         -- Freezing Trap (Trap Launcher)
	},
}, {
	-- Map aura to modified spell(s)
	[ 53220] = 56641, -- Steady Focus => Steady Shot
	[ 56453] = 53301, -- Lock and Load => Explosive Shot
	[ 82925] = 19434, -- Ready, Set, Aim... => Aimed Shot
	[118455] =  2643, -- Beast Cleave => Multishot
	[ 34471] = 19574, -- The Beast Within => Bestial Wrath
	[ 34720] =  3044, -- Thrill of the Hunt => Arcane Shot
})
