{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdminDataTransfer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Admin Data Transfer API lets you transfer user data from one user to
-- another.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference>
module Network.Google.AdminDataTransfer
    (
    -- * API
      AdminDataTransferAPI
    , adminDataTransferAPI
    , adminDataTransferURL

    -- * Service Methods

    -- * REST Resources

    -- ** DataTransferApplicationsGet
    , module Network.Google.Resource.DataTransfer.Applications.Get

    -- ** DataTransferApplicationsList
    , module Network.Google.Resource.DataTransfer.Applications.List

    -- ** DataTransferTransfersGet
    , module Network.Google.Resource.DataTransfer.Transfers.Get

    -- ** DataTransferTransfersInsert
    , module Network.Google.Resource.DataTransfer.Transfers.Insert

    -- ** DataTransferTransfersList
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

import           Network.Google.AdminDataTransfer.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DataTransfer.Applications.Get
import           Network.Google.Resource.DataTransfer.Applications.List
import           Network.Google.Resource.DataTransfer.Transfers.Get
import           Network.Google.Resource.DataTransfer.Transfers.Insert
import           Network.Google.Resource.DataTransfer.Transfers.List

{- $resources
TODO
-}

type AdminDataTransferAPI =
     TransfersInsertResource :<|> TransfersListResource
       :<|> TransfersGetResource
       :<|> ApplicationsListResource
       :<|> ApplicationsGetResource

adminDataTransferAPI :: Proxy AdminDataTransferAPI
adminDataTransferAPI = Proxy
