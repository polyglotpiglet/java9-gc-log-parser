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
        , class GentleBorder
            [  borderStyle solid
            ,  borderColor (rgb 220 220 220)
            ]
        , id SubmitButton
            [ padding (px 3)
            , fontSize (pct 100)
            , width (pct 7)
            , height (pct 4)
            , top (pct 45)
            , left (pct 60)
            , marginLeft (pct 0)
            , marginTop (pct 0)
            , position absolute
            ]
        , id PathToLogFileInput
            [ padding (px 12)
            , fontSize (pct 150)
            , width (pct 30)
            , height (pct 3)
            , top (pct 40)
            , left (pct 35)
            , marginLeft (pct 0)
            , marginTop (pct 0)
            , color (rgb 255 255 255)
            , backgroundColor (rgb 220 220 220)
            , position absolute
            ]
        ]
