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
    -- * REST Resources

    -- ** Google Fonts Developer API
      Fonts
    , fonts
    , fontsURL

    -- ** webfonts.webfonts.list
    , module Network.Google.API.Webfonts.Webfonts.List

    -- * Types

    -- ** Alt
    , Alt (..)

    -- ** WebfontsList'Sort
    , WebfontsList'Sort (..)

    -- ** WebfontFiles
    , WebfontFiles
    , webfontFiles

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
    ) where

import           Network.Google.API.Webfonts.Webfonts.List
import           Network.Google.Fonts.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Fonts = WebfontsListAPI

fonts :: Proxy Fonts
fonts = Proxy
