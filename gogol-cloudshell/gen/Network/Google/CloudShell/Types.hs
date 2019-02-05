{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudShell.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudShell.Types
    (
    -- * Service Configuration
      cloudShellService

    -- * OAuth Scopes
    , cloudPlatformScope

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

    -- * Environment
    , Environment
    , environment
    , eState
    , ePublicKeys
    , eSSHUsername
    , eName
    , eId
    , eSSHHost
    , eDockerImage
    , eSSHPort

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * PublicKey
    , PublicKey
    , publicKey
    , pkFormat
    , pkKey
    , pkName

    -- * StartEnvironmentMetadataState
    , StartEnvironmentMetadataState (..)

    -- * EnvironmentState
    , EnvironmentState (..)

    -- * Xgafv
    , Xgafv (..)

    -- * PublicKeyFormat
    , PublicKeyFormat (..)

    -- * StartEnvironmentMetadata
    , StartEnvironmentMetadata
    , startEnvironmentMetadata
    , semState

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * StartEnvironmentResponse
    , StartEnvironmentResponse
    , startEnvironmentResponse
    , serEnvironment

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import           Network.Google.CloudShell.Types.Product
import           Network.Google.CloudShell.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Shell API. This contains the host and root path used as a starting point for constructing service requests.
cloudShellService :: ServiceConfig
cloudShellService
  = defaultService (ServiceId "cloudshell:v1")
      "cloudshell.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
