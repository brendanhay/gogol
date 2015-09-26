{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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

    -- * Webfont
      Webfont
    , webfont
    , wVariants
    , wKind
    , wCategory
    , wFamily
    , wVersion
    , wFiles
    , wSubsets
    , wLastModified

    -- * WebfontFiles
    , WebfontFiles
    , webfontFiles

    -- * WebfontList
    , WebfontList
    , webfontList
    , wlKind
    , wlItems
    ) where

import           Network.Google.Fonts.Types.Product
import           Network.Google.Fonts.Types.Sum
import           Network.Google.Prelude
