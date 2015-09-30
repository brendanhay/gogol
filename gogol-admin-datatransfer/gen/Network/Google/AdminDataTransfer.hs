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
-- -- | Admin Data Transfer API lets you transfer user data from one user to
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

    -- ** DatatransferApplicationsGet
    , module Datatransfer.Applications.Get

    -- ** DatatransferApplicationsList
    , module Datatransfer.Applications.List

    -- ** DatatransferTransfersGet
    , module Datatransfer.Transfers.Get

    -- ** DatatransferTransfersInsert
    , module Datatransfer.Transfers.Insert

    -- ** DatatransferTransfersList
    , module Datatransfer.Transfers.List

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
import           Network.Google.Resource.Datatransfer.Applications.Get
import           Network.Google.Resource.Datatransfer.Applications.List
import           Network.Google.Resource.Datatransfer.Transfers.Get
import           Network.Google.Resource.Datatransfer.Transfers.Insert
import           Network.Google.Resource.Datatransfer.Transfers.List

{- $resources
TODO
-}

type AdminDataTransferAPI =
     Transfers :<|> Applications

adminDataTransferAPI :: Proxy AdminDataTransferAPI
adminDataTransferAPI = Proxy
