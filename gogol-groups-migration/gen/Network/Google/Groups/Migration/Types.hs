{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Groups.Migration.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Groups.Migration.Types
    (
    -- * Service URL
      groupsMigrationURL

    -- * Alt
    , Alt (..)

    -- * Groups
    , Groups
    , groups
    , gKind
    , gResponseCode
    ) where

import           Network.Google.Groups.Migration.Types.Product
import           Network.Google.Groups.Migration.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Groups Migration API.
groupsMigrationURL :: BaseUrl
groupsMigrationURL
  = BaseUrl Https
      "https://www.googleapis.com/groups/v1/groups/"
      443
