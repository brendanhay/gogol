{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
      groupsMigrationRequest

    -- * Groups
    , Groups
    , groups
    , gKind
    , gResponseCode
    ) where

import           Network.Google.GroupsMigration.Types.Product
import           Network.Google.GroupsMigration.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Groups Migration API.
groupsMigrationRequest :: RequestBuilder
groupsMigrationRequest
  = defaultRequest "https://www.googleapis.com/"
      "groups/v1/groups/"
