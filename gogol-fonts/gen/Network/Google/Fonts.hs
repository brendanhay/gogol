{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Fonts
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Web Fonts Developer API lets you retrieve information about
-- web fonts served by Google.
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Web Fonts Developer API Reference>
module Network.Google.Fonts
    (
    -- * Service Configuration
      fontsService

    -- * API Declaration
    , FontsAPI

    -- * Resources

    -- ** webfonts.webfonts.list
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
    , wSubSets
    , wLastModified

    -- ** WebfontList
    , WebfontList
    , webfontList
    , wlKind
    , wlItems

    -- ** Xgafv
    , Xgafv (..)

    -- ** WebfontsListSort
    , WebfontsListSort (..)

    -- ** WebfontFiles
    , WebfontFiles
    , webfontFiles
    , wfAddtional
    ) where

import Network.Google.Prelude
import Network.Google.Fonts.Types
import Network.Google.Resource.Webfonts.Webfonts.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Web Fonts Developer API service.
type FontsAPI = WebfontsListResource
