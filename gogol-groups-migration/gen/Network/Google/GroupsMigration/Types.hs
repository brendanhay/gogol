{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GroupsMigration.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GroupsMigration.Types
    (
    -- * Service URL
      groupsMigrationURL

    -- * Groups
    , Groups
    , groups
    , gKind
    , gResponseCode
    ) where

import           Network.Google.GroupsMigration.Types.Product
import           Network.Google.GroupsMigration.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Groups Migration API.
groupsMigrationURL :: BaseUrl
groupsMigrationURL
  = BaseUrl Https
      "https://www.googleapis.com/groups/v1/groups/"
      443
