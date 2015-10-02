{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdminDataTransfer.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdminDataTransfer.Types
    (
    -- * Service URL
      adminDataTransferURL

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

import           Network.Google.AdminDataTransfer.Types.Product
import           Network.Google.AdminDataTransfer.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'datatransfer_v1' of the Admin Data Transfer API.
adminDataTransferURL :: BaseUrl
adminDataTransferURL
  = BaseUrl Https
      "https://www.googleapis.com/admin/datatransfer/v1/"
      443
