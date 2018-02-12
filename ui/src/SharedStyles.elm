module SharedStyles exposing (..)

import Html.CssHelpers exposing (withNamespace)


type CssClasses
    = GentleBorder


type CssIds
    = SubmitButton
    | PathToLogFileInput


homepageNamespace =
    withNamespace "homepage"