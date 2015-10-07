{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fonts.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fonts.Types
    (
    -- * Service Request
      fontsRequest

    -- * Webfont
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

    -- * WebfontList
    , WebfontList
    , webfontList
    , wlKind
    , wlItems

    -- * WebfontsListSort
    , WebfontsListSort (..)

    -- * WebfontFiles
    , WebfontFiles
    , webfontFiles
    ) where

import           Network.Google.Fonts.Types.Product
import           Network.Google.Fonts.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Fonts Developer API. This contains the host and root path used as a starting point for constructing service requests.
fontsRequest :: RequestBuilder
fontsRequest
  = defaultRequest "https://www.googleapis.com/"
      "webfonts/v1/"
