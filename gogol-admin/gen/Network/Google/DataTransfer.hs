{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DataTransfer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Admin Data Transfer API lets you transfer user data from one user to
-- another.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference>
module Network.Google.DataTransfer
    (
    -- * Resources
      DataTransfer
    , TransfersAPI
    , TransfersInsert
    , TransfersList
    , TransfersGet
    , ApplicationsAPI
    , ApplicationsList
    , ApplicationsGet

    -- * Types

    -- ** Application
    , Application
    , application
    , aTransferParams
    , aEtag
    , aKind
    , aName
    , aId

    -- ** ApplicationDataTransfer
    , ApplicationDataTransfer
    , applicationDataTransfer
    , adtApplicationTransferParams
    , adtApplicationId
    , adtApplicationTransferStatus

    -- ** ApplicationTransferParam
    , ApplicationTransferParam
    , applicationTransferParam
    , atpValue
    , atpKey

    -- ** ApplicationsListResponse
    , ApplicationsListResponse
    , applicationsListResponse
    , alrEtag
    , alrNextPageToken
    , alrKind
    , alrApplications

    -- ** DataTransfer
    , DataTransfer
    , dataTransfer
    , dtEtag
    , dtOldOwnerUserId
    , dtKind
    , dtNewOwnerUserId
    , dtRequestTime
    , dtApplicationDataTransfers
    , dtId
    , dtOverallTransferStatusCode

    -- ** DataTransfersListResponse
    , DataTransfersListResponse
    , dataTransfersListResponse
    , dtlrEtag
    , dtlrNextPageToken
    , dtlrKind
    , dtlrDataTransfers
    ) where

import           Network.Google.DataTransfer.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DataTransfer = ApplicationsAPI :<|> TransfersAPI

type TransfersAPI =
     TransfersList :<|> TransfersGet :<|> TransfersInsert

-- | Inserts a data transfer request.
type TransfersInsert =
     "admin" :> "datatransfer" :> "v1" :> "transfers" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists the transfers for a customer by source user, destination user, or
-- status.
type TransfersList =
     "admin" :> "datatransfer" :> "v1" :> "transfers" :>
       QueryParam "status" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "oldOwnerUserId" Text
       :> QueryParam "userIp" Text
       :> QueryParam "newOwnerUserId" Text
       :> QueryParam "customerId" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a data transfer request by its resource ID.
type TransfersGet =
     "admin" :> "datatransfer" :> "v1" :> "transfers" :>
       Capture "dataTransferId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ApplicationsAPI =
     ApplicationsGet :<|> ApplicationsList

-- | Lists the applications available for data transfer for a customer.
type ApplicationsList =
     "admin" :> "datatransfer" :> "v1" :> "applications"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "customerId" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves information about an application for the given application ID.
type ApplicationsGet =
     "admin" :> "datatransfer" :> "v1" :> "applications"
       :> Capture "applicationId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
