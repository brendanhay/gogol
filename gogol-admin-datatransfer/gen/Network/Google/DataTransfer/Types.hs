{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DataTransfer.Types
-- Copyright   : (c) 2015 Brendan Hay
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
    , adminDatatransferReadonlyScope
    , adminDatatransferScope

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

import           Network.Google.DataTransfer.Types.Product
import           Network.Google.DataTransfer.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'datatransfer_v1' of the Admin Data Transfer API. This contains the host and root path used as a starting point for constructing service requests.
dataTransferService :: Service
dataTransferService
  = defaultService (ServiceId "admin:datatransfer_v1")
      "www.googleapis.com"
      "admin/datatransfer/v1/"

-- | View data transfers between users in your organization
adminDatatransferReadonlyScope :: OAuthScope
adminDatatransferReadonlyScope = OAuthScope "https://www.googleapis.com/auth/admin.datatransfer.readonly";

-- | View and manage data transfers between users in your organization
adminDatatransferScope :: OAuthScope
adminDatatransferScope = OAuthScope "https://www.googleapis.com/auth/admin.datatransfer";
