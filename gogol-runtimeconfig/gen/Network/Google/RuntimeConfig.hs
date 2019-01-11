{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.RuntimeConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Runtime Configurator allows you to dynamically configure and expose
-- variables through Google Cloud Platform. In addition, you can also set
-- Watchers and Waiters that will watch for changes to your data and return
-- based on certain conditions.
--
-- /See:/ <https://cloud.google.com/deployment-manager/runtime-configurator/ Cloud Runtime Configuration API Reference>
module Network.Google.RuntimeConfig
    (
    -- * Service Configuration
      runtimeConfigService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudruntimeConfigScope

    -- * API Declaration
    , RuntimeConfigAPI

    -- * Resources

    -- ** runtimeconfig.operations.cancel
    , module Network.Google.Resource.RuntimeConfig.Operations.Cancel

    -- ** runtimeconfig.operations.delete
    , module Network.Google.Resource.RuntimeConfig.Operations.Delete

    -- ** runtimeconfig.operations.list
    , module Network.Google.Resource.RuntimeConfig.Operations.List

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

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** Xgafv
    , Xgafv (..)

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.RuntimeConfig.Operations.Cancel
import           Network.Google.Resource.RuntimeConfig.Operations.Delete
import           Network.Google.Resource.RuntimeConfig.Operations.List
import           Network.Google.RuntimeConfig.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Runtime Configuration API service.
type RuntimeConfigAPI =
     OperationsListResource :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
