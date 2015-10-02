{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Fonts
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google Fonts Developer API.
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Google Fonts Developer API Reference>
module Network.Google.Fonts
    (
    -- * API
      FontsAPI
    , fontsAPI
    , fontsURL

    -- * Service Methods

    -- * REST Resources

    -- ** WebfontsWebfontsList
    , module Network.Google.Resource.Webfonts.Webfonts.List

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

    -- ** WebfontList
    , WebfontList
    , webfontList
    , wlKind
    , wlItems

    -- ** WebfontsWebfontsListSort
    , WebfontsWebfontsListSort (..)

    -- ** WebfontFiles
    , WebfontFiles
    , webfontFiles
    ) where

import           Network.Google.Fonts.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Webfonts.Webfonts.List

{- $resources
TODO
-}

type FontsAPI = WebfontsListResource

fontsAPI :: Proxy FontsAPI
fontsAPI = Proxy
