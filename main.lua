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
-- Moon
SMODS.Joker{
    key = 'Sailor Moon',
    loc_txt = {
        name = 'Sailor Moon',
        text = {
            'Moon Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 100
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
-- Mercury
SMODS.Joker{
    key = 'Sailor Mercury',
    loc_txt = {
        name = 'Sailor Mercury',
        text = {
            'Mercury Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 100
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
-- Venus
SMODS.Joker{
    key = 'Sailor Venus',
    loc_txt = {
        name = 'Sailor Venus',
        text = {
            'Venus Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 100
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
-- Mars
SMODS.Joker{
    key = 'Sailor Mars',
    loc_txt = {
        name = 'Sailor Mars',
        text = {
            'Mars Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 100
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
-- Jupiter
SMODS.Joker{
    key = 'Sailor Jupiter',
    loc_txt = {
        name = 'Sailor Jupiter',
        text = {
            'Jupiter Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 0,
            mult_gain = 10,
        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        -- Check if we have played a Flush before we do any scoring and increment the chips
        if context.before and next(context.poker_hands['Flush']) then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            return {
                message = 'Upgraded!',
                colour = G.C.RED
            }
        end
        -- Add the chips in main scoring context
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,
}
-- Saturn
SMODS.Joker{
    key = 'Sailor Saturn',
    loc_txt = {
        name = 'Sailor Saturn',
        text = {
            'Saturn Desc.',
        }
    },
    rarity = 3,
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 100
        }
    },
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        -- Check if we have played a Flush before we do any scoring and increment the chips
        if context.before and next(context.poker_hands['Straight']) then
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
            return {
                message = 'Upgraded!',
                colour = G.C.RED
            }
        end
        -- Add the chips in main scoring context
        if context.joker_main then
            return {
                mult = card.ability.extra.Xmult
            }
        end
    end,
}
-- Uranus
SMODS.Joker{
    key = 'Sailor Uranus',
    loc_txt = {
        name = 'Sailor Uranus',
        text = {
            'Uranus Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 100
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
-- Neptune
SMODS.Joker{
    key = 'Sailor Moon',
    loc_txt = {
        name = 'Sailor Moon',
        text = {
            'Moon Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 100
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
-- Pluto
SMODS.Joker{
    key = 'Sailor Moon',
    loc_txt = {
        name = 'Sailor Moon',
        text = {
            'Moon Desc.',
        }
    },
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 100
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
----------------------------------------------
------------MOD CODE END----------------------
    