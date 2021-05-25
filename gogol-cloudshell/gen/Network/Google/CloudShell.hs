{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudShell
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows users to start, configure, and connect to interactive shell
-- sessions running in the cloud.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference>
module Network.Google.CloudShell
    (
    -- * Service Configuration
      cloudShellService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudShellAPI

    -- * Resources

    -- ** cloudshell.operations.cancel
    , module Network.Google.Resource.CloudShell.Operations.Cancel

    -- ** cloudshell.operations.delete
    , module Network.Google.Resource.CloudShell.Operations.Delete

    -- ** cloudshell.operations.get
    , module Network.Google.Resource.CloudShell.Operations.Get

    -- ** cloudshell.operations.list
    , module Network.Google.Resource.CloudShell.Operations.List

    -- ** cloudshell.users.environments.addPublicKey
    , module Network.Google.Resource.CloudShell.Users.Environments.AddPublicKey

    -- ** cloudshell.users.environments.authorize
    , module Network.Google.Resource.CloudShell.Users.Environments.Authorize

    -- ** cloudshell.users.environments.get
    , module Network.Google.Resource.CloudShell.Users.Environments.Get

    -- ** cloudshell.users.environments.removePublicKey
    , module Network.Google.Resource.CloudShell.Users.Environments.RemovePublicKey

    -- ** cloudshell.users.environments.start
    , module Network.Google.Resource.CloudShell.Users.Environments.Start

    -- * Types

    -- ** AddPublicKeyResponse
    , AddPublicKeyResponse
    , addPublicKeyResponse
    , apkrKey

    -- ** CreateEnvironmentMetadata
    , CreateEnvironmentMetadata
    , createEnvironmentMetadata

    -- ** StartEnvironmentRequest
    , StartEnvironmentRequest
    , startEnvironmentRequest
    , serAccessToken
    , serPublicKeys

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** AuthorizeEnvironmentRequest
    , AuthorizeEnvironmentRequest
    , authorizeEnvironmentRequest
    , aerAccessToken
    , aerExpireTime
    , aerIdToken

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** Environment
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

    -- ** AuthorizeEnvironmentMetadata
    , AuthorizeEnvironmentMetadata
    , authorizeEnvironmentMetadata

    -- ** RemovePublicKeyResponse
    , RemovePublicKeyResponse
    , removePublicKeyResponse

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** StartEnvironmentMetadataState
    , StartEnvironmentMetadataState (..)

    -- ** EnvironmentState
    , EnvironmentState (..)

    -- ** AddPublicKeyMetadata
    , AddPublicKeyMetadata
    , addPublicKeyMetadata

    -- ** Xgafv
    , Xgafv (..)

    -- ** AuthorizeEnvironmentResponse
    , AuthorizeEnvironmentResponse
    , authorizeEnvironmentResponse

    -- ** RemovePublicKeyMetadata
    , RemovePublicKeyMetadata
    , removePublicKeyMetadata

    -- ** StartEnvironmentMetadata
    , StartEnvironmentMetadata
    , startEnvironmentMetadata
    , semState

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** AddPublicKeyRequest
    , AddPublicKeyRequest
    , addPublicKeyRequest
    , aKey

    -- ** StartEnvironmentResponse
    , StartEnvironmentResponse
    , startEnvironmentResponse
    , serEnvironment

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** RemovePublicKeyRequest
    , RemovePublicKeyRequest
    , removePublicKeyRequest
    , rpkrKey

    -- ** DeleteEnvironmentMetadata
    , DeleteEnvironmentMetadata
    , deleteEnvironmentMetadata
    ) where

import Network.Google.Prelude
import Network.Google.CloudShell.Types
import Network.Google.Resource.CloudShell.Operations.Cancel
import Network.Google.Resource.CloudShell.Operations.Delete
import Network.Google.Resource.CloudShell.Operations.Get
import Network.Google.Resource.CloudShell.Operations.List
import Network.Google.Resource.CloudShell.Users.Environments.AddPublicKey
import Network.Google.Resource.CloudShell.Users.Environments.Authorize
import Network.Google.Resource.CloudShell.Users.Environments.Get
import Network.Google.Resource.CloudShell.Users.Environments.RemovePublicKey
import Network.Google.Resource.CloudShell.Users.Environments.Start

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Shell API service.
type CloudShellAPI =
     UsersEnvironmentsAddPublicKeyResource :<|>
       UsersEnvironmentsRemovePublicKeyResource
       :<|> UsersEnvironmentsStartResource
       :<|> UsersEnvironmentsAuthorizeResource
       :<|> UsersEnvironmentsGetResource
       :<|> OperationsListResource
       :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
