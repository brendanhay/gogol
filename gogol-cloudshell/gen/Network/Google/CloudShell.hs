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

    -- * Types

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
    , eSSHUsername
    , eName
    , eId
    , eSSHHost
    , eDockerImage
    , eSSHPort

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** PublicKey
    , PublicKey
    , publicKey
    , pkFormat
    , pkKey
    , pkName

    -- ** StartEnvironmentMetadataState
    , StartEnvironmentMetadataState (..)

    -- ** EnvironmentState
    , EnvironmentState (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** PublicKeyFormat
    , PublicKeyFormat (..)

    -- ** StartEnvironmentMetadata
    , StartEnvironmentMetadata
    , startEnvironmentMetadata
    , semState

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** StartEnvironmentResponse
    , StartEnvironmentResponse
    , startEnvironmentResponse
    , serEnvironment

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import           Network.Google.CloudShell.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudShell.Operations.Cancel
import           Network.Google.Resource.CloudShell.Operations.Delete
import           Network.Google.Resource.CloudShell.Operations.Get
import           Network.Google.Resource.CloudShell.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Shell API service.
type CloudShellAPI =
     OperationsListResource :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
