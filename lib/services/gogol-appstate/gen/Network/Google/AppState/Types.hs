{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppState.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppState.Types
    (
    -- * Service Configuration
      appStateService

    -- * OAuth Scopes
    , appStateScope

    -- * WriteResult
    , WriteResult
    , writeResult
    , wrCurrentStateVersion
    , wrKind
    , wrStateKey

    -- * ListResponse
    , ListResponse
    , listResponse
    , lrMaximumKeyCount
    , lrKind
    , lrItems

    -- * GetResponse
    , GetResponse
    , getResponse
    , grCurrentStateVersion
    , grKind
    , grData
    , grStateKey

    -- * UpdateRequest
    , UpdateRequest
    , updateRequest
    , urKind
    , urData
    ) where

import Network.Google.AppState.Types.Product
import Network.Google.AppState.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google App State API. This contains the host and root path used as a starting point for constructing service requests.
appStateService :: ServiceConfig
appStateService
  = defaultService (ServiceId "appstate:v1")
      "www.googleapis.com"

-- | View and manage your data for this application
appStateScope :: Proxy '["https://www.googleapis.com/auth/appstate"]
appStateScope = Proxy
