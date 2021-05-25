{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * AddPublicKeyResponse
    , AddPublicKeyResponse
    , addPublicKeyResponse
    , apkrKey

    -- * CreateEnvironmentMetadata
    , CreateEnvironmentMetadata
    , createEnvironmentMetadata

    -- * StartEnvironmentRequest
    , StartEnvironmentRequest
    , startEnvironmentRequest
    , serAccessToken
    , serPublicKeys

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

    -- * AuthorizeEnvironmentRequest
    , AuthorizeEnvironmentRequest
    , authorizeEnvironmentRequest
    , aerAccessToken
    , aerExpireTime
    , aerIdToken

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
    , eWebHost
    , eSSHUsername
    , eName
    , eId
    , eSSHHost
    , eDockerImage
    , eSSHPort

    -- * AuthorizeEnvironmentMetadata
    , AuthorizeEnvironmentMetadata
    , authorizeEnvironmentMetadata

    -- * RemovePublicKeyResponse
    , RemovePublicKeyResponse
    , removePublicKeyResponse

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * StartEnvironmentMetadataState
    , StartEnvironmentMetadataState (..)

    -- * EnvironmentState
    , EnvironmentState (..)

    -- * AddPublicKeyMetadata
    , AddPublicKeyMetadata
    , addPublicKeyMetadata

    -- * Xgafv
    , Xgafv (..)

    -- * AuthorizeEnvironmentResponse
    , AuthorizeEnvironmentResponse
    , authorizeEnvironmentResponse

    -- * RemovePublicKeyMetadata
    , RemovePublicKeyMetadata
    , removePublicKeyMetadata

    -- * StartEnvironmentMetadata
    , StartEnvironmentMetadata
    , startEnvironmentMetadata
    , semState

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * AddPublicKeyRequest
    , AddPublicKeyRequest
    , addPublicKeyRequest
    , aKey

    -- * StartEnvironmentResponse
    , StartEnvironmentResponse
    , startEnvironmentResponse
    , serEnvironment

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * RemovePublicKeyRequest
    , RemovePublicKeyRequest
    , removePublicKeyRequest
    , rpkrKey

    -- * DeleteEnvironmentMetadata
    , DeleteEnvironmentMetadata
    , deleteEnvironmentMetadata
    ) where

import Network.Google.CloudShell.Types.Product
import Network.Google.CloudShell.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Shell API. This contains the host and root path used as a starting point for constructing service requests.
cloudShellService :: ServiceConfig
cloudShellService
  = defaultService (ServiceId "cloudshell:v1")
      "cloudshell.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
