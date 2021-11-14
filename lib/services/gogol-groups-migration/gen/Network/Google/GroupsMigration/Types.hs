{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GroupsMigration.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- * Xgafv
    , Xgafv (..)
    ) where

import Network.Google.GroupsMigration.Types.Product
import Network.Google.GroupsMigration.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Groups Migration API. This contains the host and root path used as a starting point for constructing service requests.
groupsMigrationService :: ServiceConfig
groupsMigrationService
  = defaultService (ServiceId "groupsmigration:v1")
      "groupsmigration.googleapis.com"

-- | Upload messages to any Google group in your domain
appsGroupsMigrationScope :: Proxy '["https://www.googleapis.com/auth/apps.groups.migration"]
appsGroupsMigrationScope = Proxy
