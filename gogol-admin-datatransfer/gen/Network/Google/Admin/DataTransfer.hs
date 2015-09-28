{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Admin.DataTransfer
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
module Network.Google.Admin.DataTransfer
    (
    -- * REST Resources

    -- ** Admin Data Transfer API
      AdminDataTransfer
    , adminDataTransfer
    , adminDataTransferURL

    -- ** datatransfer.applications.get
    , module Network.Google.API.Datatransfer.Applications.Get

    -- ** datatransfer.applications.list
    , module Network.Google.API.Datatransfer.Applications.List

    -- ** datatransfer.transfers.get
    , module Network.Google.API.Datatransfer.Transfers.Get

    -- ** datatransfer.transfers.insert
    , module Network.Google.API.Datatransfer.Transfers.Insert

    -- ** datatransfer.transfers.list
    , module Network.Google.API.Datatransfer.Transfers.List

    -- * Types

    -- ** Application
    , Application
    , application
    , aTransferParams
    , aEtag
    , aKind
    , aName
    , aId

    -- ** Alt
    , Alt (..)

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

    -- ** ApplicationTransferParam
    , ApplicationTransferParam
    , applicationTransferParam
    , atpValue
    , atpKey

    -- ** ApplicationDataTransfer
    , ApplicationDataTransfer
    , applicationDataTransfer
    , adtApplicationTransferParams
    , adtApplicationId
    , adtApplicationTransferStatus

    -- ** DataTransfersListResponse
    , DataTransfersListResponse
    , dataTransfersListResponse
    , dtlrEtag
    , dtlrNextPageToken
    , dtlrKind
    , dtlrDataTransfers
    ) where

import           Network.Google.Admin.DataTransfer.Types
import           Network.Google.API.Datatransfer.Applications.Get
import           Network.Google.API.Datatransfer.Applications.List
import           Network.Google.API.Datatransfer.Transfers.Get
import           Network.Google.API.Datatransfer.Transfers.Insert
import           Network.Google.API.Datatransfer.Transfers.List
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdminDataTransfer =
     TransfersGetAPI :<|> TransfersInsertAPI :<|>
       TransfersListAPI
       :<|> ApplicationsGetAPI
       :<|> ApplicationsListAPI

adminDataTransfer :: Proxy AdminDataTransfer
adminDataTransfer = Proxy
