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
-- Saturn
SMODS.Joker{
    key = 'Sailor Saturn',
    loc_txt = {
        name = 'Sailor Saturn',
        text = {
            'Saturn Desc.',
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
    