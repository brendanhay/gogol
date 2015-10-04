{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapsCoordinate.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapsCoordinate.Types
    (
    -- * Service URL
      mapsCoordinateURL

    -- * LocationListResponse
    , LocationListResponse
    , locationListResponse
    , llrTokenPagination
    , llrNextPageToken
    , llrKind
    , llrItems

    -- * WorkerListResponse
    , WorkerListResponse
    , workerListResponse
    , wlrKind
    , wlrItems

    -- * TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpKind
    , tpPreviousPageToken

    -- * Location
    , Location
    , location
    , lAddressLine
    , lKind
    , lLat
    , lLng

    -- * Progress
    , Progress (..)

    -- * Schedule
    , Schedule
    , schedule
    , sAllDay
    , sStartTime
    , sKind
    , sEndTime
    , sDuration

    -- * JobState
    , JobState
    , jobState
    , jsLocation
    , jsProgress
    , jsNote
    , jsKind
    , jsCustomerPhoneNumber
    , jsCustomerName
    , jsAssignee
    , jsCustomFields
    , jsTitle

    -- * CustomFieldDef
    , CustomFieldDef
    , customFieldDef
    , cfdEnabled
    , cfdKind
    , cfdName
    , cfdRequiredForCheckout
    , cfdId
    , cfdEnumitems
    , cfdType

    -- * JobListResponse
    , JobListResponse
    , jobListResponse
    , jlrNextPageToken
    , jlrKind
    , jlrItems

    -- * JobChange
    , JobChange
    , jobChange
    , jcState
    , jcKind
    , jcTimestamp

    -- * TeamListResponse
    , TeamListResponse
    , teamListResponse
    , tlrKind
    , tlrItems

    -- * CustomFieldDefListResponse
    , CustomFieldDefListResponse
    , customFieldDefListResponse
    , cfdlrKind
    , cfdlrItems

    -- * Job
    , Job
    , job
    , jState
    , jKind
    , jJobChange
    , jId

    -- * CoordinateJobsUpdateProgress
    , CoordinateJobsUpdateProgress (..)

    -- * CustomFields
    , CustomFields
    , customFields
    , cfKind
    , cfCustomField

    -- * Team
    , Team
    , team
    , tKind
    , tName
    , tId

    -- * LocationRecord
    , LocationRecord
    , locationRecord
    , lrKind
    , lrLatitude
    , lrConfidenceRadius
    , lrLongitude
    , lrCollectionTime

    -- * Worker
    , Worker
    , worker
    , wKind
    , wId

    -- * CustomField
    , CustomField
    , customField
    , cCustomFieldId
    , cKind
    , cValue

    -- * EnumItemDef
    , EnumItemDef
    , enumItemDef
    , eidKind
    , eidValue
    , eidActive
    ) where

import           Network.Google.MapsCoordinate.Types.Product
import           Network.Google.MapsCoordinate.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google Maps Coordinate API.
mapsCoordinateURL :: BaseUrl
mapsCoordinateURL
  = BaseUrl Https
      "https://www.googleapis.com/coordinate/v1/"
      443
