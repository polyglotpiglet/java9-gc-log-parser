module HomepageCss exposing (css)

import Css exposing (..)
import Css.Elements exposing (..)
import Css.Namespace exposing (namespace)
import SharedStyles exposing (..)


css =
    (stylesheet << namespace homepageNamespace.name)
        [ header
            [ backgroundColor (rgb 90 90 90)
            , boxSizing borderBox
            , padding (px -80)
            , boxShadow5 inset (px 2) (px 3) (px 4) (hex "333")
            ]
        , nav
            [ display inlineBlock
            , paddingBottom (px 12)
            ]
        , class NavLink
            [ margin (px 12)
            , color (rgb 255 255 255)
            ]
        , id SubmitButton
            [ padding (px 3)
            , width (px 70)
            , height (px 20)
            , top (pct 40)
            , left (px 400)
            , marginLeft (px -20)
            , marginTop (px -20)
--            , color (rgb 255 255 255)
--            , backgroundColor (rgb 27 217 130)
            , position absolute
            ]
        , id PathToLogFileInput
            [ padding (px 12)
            , width (pct 10)
            , height (px 30)
            , top (pct 40)
            , left (pct 42.5)
            , marginLeft (px -20)
            , marginTop (px -20)
            , color (rgb 255 255 255)
            , backgroundColor (rgb 27 217 130)
            , position absolute
            ]
        ]
