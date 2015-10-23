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
    -- * Service Configuration
      groupsMigrationService

    -- * OAuth Scopes
    , appsGroupsMigrationScope

    -- * Groups
    , Groups
    , groups
    , gKind
    , gResponseCode
    ) where

import           Network.Google.GroupsMigration.Types.Product
import           Network.Google.GroupsMigration.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Groups Migration API. This contains the host and root path used as a starting point for constructing service requests.
groupsMigrationService :: Service
groupsMigrationService
  = defaultService (ServiceId "groupsmigration:v1")
      "www.googleapis.com"

-- | Manage messages in groups on your domain
appsGroupsMigrationScope :: OAuthScope
appsGroupsMigrationScope = "https://www.googleapis.com/auth/apps.groups.migration";
