module SharedStyles exposing (..)

import Html.CssHelpers exposing (withNamespace)

type CssClasses
    = NavLink


type CssIds
    = SubmitButton
    | PathToLogFileInput


homepageNamespace =
    withNamespace "homepage"
