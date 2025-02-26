--- STEAMODDED HEADER
--- MOD_NAME: Sailor Moon Mod
--- MOD_ID: SAILORMOON
--- MOD_AUTHOR: [phoebie]
--- MOD_DESCRIPTION: Sailor Moon Mod
--- PREFIX: xmpl
----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas{
    key = 'Jokers',
    path = 'Jokers.png',
    px = 142,
    py = 190
}
-- Moon DONE
SMODS.Joker{
    key = 'Sailor Moon',
    loc_txt = {
        name = 'Sailor Moon',
        text = {
            '1 in 2 chance create a random ',
            '{C:dark_edition}Negative{} {C:planet}Planet{} card ',
            'every played hand.'
        }
    },
    rarity = 2,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.Xmult}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            if math.random(2) == 2 then
                local card = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'c_moon')
                card:set_edition('e_negative', true)
                card:add_to_deck()
                G.consumeables:emplace(card)
                G.GAME.consumeable_buffer = 0
                return true
            end
        end
    end,
}
-- Mercury DONE
SMODS.Joker{
    key = 'Sailor Mercury',
    loc_txt = {
        name = 'Sailor Mercury',
        text = {
            'Gains {C:chips}+25{} Chips every time you use {C:planet}Mercury{}.',
            '{C:inactive}(Currently {C:chips}+#1#{} {C:inactive}Chips){}',
        }
    },
    rarity = 1,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 0,
        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.name == "Mercury" and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + 25
            return {
                message = 'Upgraded!',
                colour = G.C.RED,
            }
        end
        if context.joker_main then
            return {
                card = card,
                chips = card.ability.extra.chips,
                message = '+' .. card.ability.extra.chips,
                colour = G.C.CHIPS
            }
        end
    end,
}
-- Venus DONE
SMODS.Joker{
    key = 'Sailor Venus',
    loc_txt = {
        name = 'Sailor Venus',
        text = {
            'Gains {C:red}+12{} Mult every time you use {C:planet}Venus{}.',
            '{C:inactive}(Currently {C:red}+#1#{} {C:inactive}Mult){}',
        }
    },
    rarity = 2,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 0,  -- Set to 1

        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.name == "Venus" and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + 12
            return {
                message = 'Upgraded!',
                colour = G.C.RED,
            }
        end
        if context.joker_main then
            return {
                card = card,
                mult_mod = card.ability.extra.mult,
                message = '+' .. card.ability.extra.mult,
                colour = G.C.MULT
            }
        end
    end,
}
-- Mars DONE
SMODS.Joker{
    key = 'Sailor Mars',
    loc_txt = {
        name = 'Sailor Mars',
        text = {
            'Gains {X:red,C:white}X0.2{} Mult every time you use {C:planet}Mars{}.',
            '{C:inactive}(Currently {X:red,C:white}X#1#{} Mult)',
        }
    },
    rarity = 3,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 0,
            Xmult = 1,  -- Set to 1

        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.name == "Mars" and not context.blueprint then
            card.ability.extra.Xmult = card.ability.extra.Xmult + 0.2
            return {
                message = 'Upgraded!',
                colour = G.C.RED,
            }
        end
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
        end
    end,
}
-- Jupiter DONE
SMODS.Joker{
    key = 'Sailor Jupiter',
    loc_txt = {
        name = 'Sailor Jupiter',
        text = {
            'Gains {C:red}+12{} Mult every time you use {C:planet}Jupiter{}.',
            '{C:inactive}(Currently {C:red}+#1#{} {C:inactive}Mult){}',
        }
    },
    rarity = 2,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 0,  -- Set to 1

        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.name == "Jupiter" and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + 12
            return {
                message = 'Upgraded!',
                colour = G.C.RED,
            }
        end
        if context.joker_main then
            return {
                card = card,
                mult_mod = card.ability.extra.mult,
                message = '+' .. card.ability.extra.mult,
                colour = G.C.MULT
            }
        end
    end,
}
-- Saturn DONE
SMODS.Joker{ 
    key = 'Sailor Saturn',
    loc_txt = {
        name = 'Sailor Saturn',
        text = {
            'Gains {X:red,C:white}X0.2{} Mult every time you use {C:planet}Saturn{}.',
            '{C:inactive}(Currently {X:red,C:white}X#1#{}{C:inactive} Mult)',
        }
    },
    rarity = 3,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 0,
            Xmult = 1,  -- Set to 1

        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.before and context.poker_hands and context.poker_hands['Straight'] and next(context.poker_hands['Straight']) then
            card.ability.extra.Xmult = card.ability.extra.Xmult + 0.2
            return {
                message = 'Upgraded!',
                colour = G.C.RED
            }
        end
        if context.using_consumeable and context.consumeable.ability.name == "Saturn" and not context.blueprint then
            card.ability.extra.Xmult = card.ability.extra.Xmult + 0.2
            return {
                message = 'Upgraded!',
                colour = G.C.RED,
            }
        end
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
        end
    end,
}
-- Uranus DONE
SMODS.Joker{
    key = 'Sailor Uranus',
    loc_txt = {
        name = 'Sailor Uranus',
        text = {
            'Gains {C:red}+12{} Mult every time you use {C:planet}Uranus{}.',
            '{C:inactive}(Currently {C:red}+#1#{} {C:inactive}Mult){}',
        }
    },
    rarity = 2,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 0,  -- Set to 1
            Xmult = 1,

        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.name == "Uranus" and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + 12
            return {
                message = 'Upgraded!',
                colour = G.C.RED,
            }
        end
        if context.joker_main then
            return {
                card = card,
                mult_mod = card.ability.extra.mult,
                message = '+' .. card.ability.extra.mult,
                colour = G.C.MULT
            }
        end
    end,
}
-- Neptune TODO
SMODS.Joker{
    key = 'Sailor Neptune',
    loc_txt = {
        name = 'Sailor Neptune',
        text = {
            'Neptune Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.Xmult}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
        end
    end
}
-- Pluto DONE
SMODS.Joker{
    key = 'Sailor Pluto',
    loc_txt = {
        name = 'Sailor Pluto',
        text = {
            'Gains {C:chips}+25{} Chips every time you use {C:planet}Pluto{}.',
            '{C:inactive}(Currently {C:chips}+#1#{} {C:inactive}Chips){}',
        }
    },
    rarity = 1,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 0,
        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.name == "Pluto" and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + 25
            return {
                message = 'Upgraded!',
                colour = G.C.RED,
            }
        end
        if context.joker_main then
            return {
                card = card,
                chips = card.ability.extra.chips,
                message = '+' .. card.ability.extra.chips,
                colour = G.C.CHIPS
            }
        end
    end,
}
----------------------------------------------
------------MOD CODE END----------------------
    