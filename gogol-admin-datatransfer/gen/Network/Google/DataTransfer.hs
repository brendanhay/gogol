{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DataTransfer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transfers user data from one user to another.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference>
module Network.Google.DataTransfer
    (
    -- * Service Configuration
      dataTransferService

    -- * OAuth Scopes
    , adminDataTransferReadOnlyScope
    , adminDataTransferScope

    -- * API Declaration
    , DataTransferAPI

    -- * Resources

    -- ** datatransfer.applications.get
    , module Network.Google.Resource.DataTransfer.Applications.Get

    -- ** datatransfer.applications.list
    , module Network.Google.Resource.DataTransfer.Applications.List

    -- ** datatransfer.transfers.get
    , module Network.Google.Resource.DataTransfer.Transfers.Get

    -- ** datatransfer.transfers.insert
    , module Network.Google.Resource.DataTransfer.Transfers.Insert

    -- ** datatransfer.transfers.list
    , module Network.Google.Resource.DataTransfer.Transfers.List

    -- * Types

    -- ** Application
    , Application
    , application
    , aTransferParams
    , aEtag
    , aKind
    , aName
    , aId

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

    -- ** ApplicationDataTransfer
    , ApplicationDataTransfer
    , applicationDataTransfer
    , adtApplicationTransferParams
    , adtApplicationId
    , adtApplicationTransferStatus
    ) where

import           Network.Google.DataTransfer.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DataTransfer.Applications.Get
import           Network.Google.Resource.DataTransfer.Applications.List
import           Network.Google.Resource.DataTransfer.Transfers.Get
import           Network.Google.Resource.DataTransfer.Transfers.Insert
import           Network.Google.Resource.DataTransfer.Transfers.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Admin Data Transfer API service.
type DataTransferAPI =
     TransfersInsertResource :<|> TransfersListResource
       :<|> TransfersGetResource
       :<|> ApplicationsListResource
       :<|> ApplicationsGetResource
