{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.WebFonts
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google Fonts Developer API.
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Google Fonts Developer API Reference>
module Network.Google.WebFonts
    (
    -- * Resources
      WebFonts
    , WebfontsAPI
    , WebfontsList

    -- * Types

    -- ** Webfont
    , Webfont
    , webfont
    , wVariants
    , wKind
    , wCategory
    , wFamily
    , wVersion
    , wFiles
    , wSubsets
    , wLastModified

    -- ** WebfontFiles
    , WebfontFiles
    , webfontFiles

    -- ** WebfontList
    , WebfontList
    , webfontList
    , wlKind
    , wlItems
    ) where

import           Network.Google.WebFonts.Types

{- $resources
TODO
-}

type WebFonts = WebfontsAPI

type WebfontsAPI = WebfontsList

-- | Retrieves the list of fonts currently served by the Google Fonts
-- Developer API
type WebfontsList =
     "webfonts" :> "v1" :> "webfonts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "sort" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
