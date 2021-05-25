{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DataTransfer.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DataTransfer.Types
    (
    -- * Service Configuration
      dataTransferService

    -- * OAuth Scopes
    , adminDataTransferReadOnlyScope
    , adminDataTransferScope

    -- * Application
    , Application
    , application
    , aTransferParams
    , aEtag
    , aKind
    , aName
    , aId

    -- * ApplicationTransferParam
    , ApplicationTransferParam
    , applicationTransferParam
    , atpValue
    , atpKey

    -- * Xgafv
    , Xgafv (..)

    -- * ApplicationsListResponse
    , ApplicationsListResponse
    , applicationsListResponse
    , alrEtag
    , alrNextPageToken
    , alrKind
    , alrApplications

    -- * DataTransfer
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

    -- * DataTransfersListResponse
    , DataTransfersListResponse
    , dataTransfersListResponse
    , dtlrEtag
    , dtlrNextPageToken
    , dtlrKind
    , dtlrDataTransfers

    -- * ApplicationDataTransfer
    , ApplicationDataTransfer
    , applicationDataTransfer
    , adtApplicationTransferParams
    , adtApplicationId
    , adtApplicationTransferStatus
    ) where

import Network.Google.DataTransfer.Types.Product
import Network.Google.DataTransfer.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'datatransfer_v1' of the Admin SDK API. This contains the host and root path used as a starting point for constructing service requests.
dataTransferService :: ServiceConfig
dataTransferService
  = defaultService (ServiceId "admin:datatransfer_v1")
      "admin.googleapis.com"

-- | View data transfers between users in your organization
adminDataTransferReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.datatransfer.readonly"]
adminDataTransferReadOnlyScope = Proxy

-- | View and manage data transfers between users in your organization
adminDataTransferScope :: Proxy '["https://www.googleapis.com/auth/admin.datatransfer"]
adminDataTransferScope = Proxy
