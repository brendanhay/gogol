{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.File.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.File.Types
    (
    -- * Service Configuration
      fileService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * InstanceTier
    , InstanceTier (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * FileShareConfig
    , FileShareConfig
    , fileShareConfig
    , fscName
    , fscCapacityGb

    -- * NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncModes
    , ncNetwork
    , ncReservedIPRange
    , ncIPAddresses

    -- * Xgafv
    , Xgafv (..)

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAPIVersion
    , omEndTime
    , omStatusDetail
    , omVerb
    , omCancelRequested
    , omTarget
    , omCreateTime

    -- * ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirUnreachable
    , lirInstances

    -- * InstanceState
    , InstanceState (..)

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * Instance
    , Instance
    , instance'
    , iEtag
    , iState
    , iNetworks
    , iFileShares
    , iName
    , iStatusMessage
    , iTier
    , iLabels
    , iDescription
    , iCreateTime
    ) where

import           Network.Google.File.Types.Product
import           Network.Google.File.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Cloud Filestore API. This contains the host and root path used as a starting point for constructing service requests.
fileService :: ServiceConfig
fileService
  = defaultService (ServiceId "file:v1beta1")
      "file.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
