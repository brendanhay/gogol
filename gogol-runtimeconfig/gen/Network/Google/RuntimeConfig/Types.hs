{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.RuntimeConfig.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.RuntimeConfig.Types
    (
    -- * Service Configuration
      runtimeConfigService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudruntimeConfigScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import Network.Google.Prelude
import Network.Google.RuntimeConfig.Types.Product
import Network.Google.RuntimeConfig.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Runtime Configuration API. This contains the host and root path used as a starting point for constructing service requests.
runtimeConfigService :: ServiceConfig
runtimeConfigService
  = defaultService (ServiceId "runtimeconfig:v1")
      "runtimeconfig.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Manage your Google Cloud Platform services\' runtime configuration
cloudruntimeConfigScope :: Proxy '["https://www.googleapis.com/auth/cloudruntimeconfig"]
cloudruntimeConfigScope = Proxy
