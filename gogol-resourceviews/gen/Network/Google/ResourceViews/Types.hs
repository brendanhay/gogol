{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceViews.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceViews.Types
    (
    -- * Service URL
      resourceViewsURL

    -- * ResourceView
    , ResourceView
    , resourceView
    , rvSize
    , rvKind
    , rvFingerprint
    , rvNetwork
    , rvResources
    , rvSelfLink
    , rvName
    , rvCreationTimestamp
    , rvId
    , rvLabels
    , rvEndpoints
    , rvDescription

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- * ZoneViewsList
    , ZoneViewsList
    , zoneViewsList
    , zvlNextPageToken
    , zvlKind
    , zvlItems
    , zvlSelfLink

    -- * ListState
    , ListState (..)

    -- * Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHTTPErrorMessage
    , oZone
    , oWarnings
    , oHTTPErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- * ZoneViewsListResourcesResponse
    , ZoneViewsListResourcesResponse
    , zoneViewsListResourcesResponse
    , zvlrrNextPageToken
    , zvlrrItems
    , zvlrrNetwork

    -- * Error'
    , Error'
    , error'
    , eErrors

    -- * Format
    , Format (..)

    -- * ServiceEndpoint
    , ServiceEndpoint
    , serviceEndpoint
    , seName
    , sePort

    -- * ListResourceResponseItemEndpoints
    , ListResourceResponseItemEndpoints
    , listResourceResponseItemEndpoints

    -- * ZoneViewsRemoveResourcesRequest
    , ZoneViewsRemoveResourcesRequest
    , zoneViewsRemoveResourcesRequest
    , zvrrrResources

    -- * ZoneViewsAddResourcesRequest
    , ZoneViewsAddResourcesRequest
    , zoneViewsAddResourcesRequest
    , zvarrResources

    -- * WarningsItem
    , WarningsItem
    , warningsItem
    , wiData
    , wiCode
    , wiMessage

    -- * DataItem
    , DataItem
    , dataItem
    , diValue
    , diKey

    -- * ZoneViewsGetServiceResponse
    , ZoneViewsGetServiceResponse
    , zoneViewsGetServiceResponse
    , zvgsrFingerprint
    , zvgsrEndpoints

    -- * ErrorsItem
    , ErrorsItem
    , errorsItem
    , eiLocation
    , eiCode
    , eiMessage

    -- * ListResourceResponseItem
    , ListResourceResponseItem
    , listResourceResponseItem
    , lrriResource
    , lrriEndpoints

    -- * Label
    , Label
    , label
    , lValue
    , lKey

    -- * ZoneViewsSetServiceRequest
    , ZoneViewsSetServiceRequest
    , zoneViewsSetServiceRequest
    , zvssrResourceName
    , zvssrFingerprint
    , zvssrEndpoints
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types.Product
import           Network.Google.ResourceViews.Types.Sum

-- | URL referring to version 'v1beta2' of the Google Compute Engine Instance Groups API.
resourceViewsURL :: BaseUrl
resourceViewsURL
  = BaseUrl Https
      "https://www.googleapis.com/resourceviews/v1beta2/projects/"
      443
