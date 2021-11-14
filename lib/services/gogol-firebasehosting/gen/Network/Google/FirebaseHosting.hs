{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FirebaseHosting
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Firebase Hosting REST API enables programmatic and customizable
-- management and deployments to your Firebase-hosted sites. Use this REST
-- API to create and manage channels and sites as well as to deploy new or
-- updated hosting configurations and content files.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference>
module Network.Google.FirebaseHosting
    (
    -- * Service Configuration
      firebaseHostingService

    -- * API Declaration
    , FirebaseHostingAPI

    -- * Resources

    -- ** firebasehosting.operations.cancel
    , module Network.Google.Resource.FirebaseHosting.Operations.Cancel

    -- ** firebasehosting.operations.delete
    , module Network.Google.Resource.FirebaseHosting.Operations.Delete

    -- ** firebasehosting.operations.list
    , module Network.Google.Resource.FirebaseHosting.Operations.List

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

import Network.Google.Prelude
import Network.Google.FirebaseHosting.Types
import Network.Google.Resource.FirebaseHosting.Operations.Cancel
import Network.Google.Resource.FirebaseHosting.Operations.Delete
import Network.Google.Resource.FirebaseHosting.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Firebase Hosting API service.
type FirebaseHostingAPI =
     OperationsListResource :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
