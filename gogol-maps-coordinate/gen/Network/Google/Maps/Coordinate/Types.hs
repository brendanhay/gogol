{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Maps.Coordinate.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Maps.Coordinate.Types
    (
    -- * Service URL
      mapsCoordinateURL

    -- * TeamListResponse
    , TeamListResponse
    , teamListResponse
    , tlrKind
    , tlrItems

    -- * Job
    , Job
    , job
    , jobState
    , jobKind
    , jobJobChange
    , jobId

    -- * CustomFieldDefListResponse
    , CustomFieldDefListResponse
    , customFieldDefListResponse
    , cfdlrKind
    , cfdlrItems

    -- * Alt
    , Alt (..)

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

    -- * EnumItemDef
    , EnumItemDef
    , enumItemDef
    , eidKind
    , eidValue
    , eidActive

    -- * CustomField
    , CustomField
    , customField
    , cfCustomFieldId
    , cfKind
    , cfValue

    -- * LocationListResponse
    , LocationListResponse
    , locationListResponse
    , llrTokenPagination
    , llrNextPageToken
    , llrKind
    , llrItems

    -- * JobsUpdate'Progress
    , JobsUpdate'Progress (..)

    -- * TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpKind
    , tpPreviousPageToken

    -- * WorkerListResponse
    , WorkerListResponse
    , workerListResponse
    , wlrKind
    , wlrItems

    -- * CustomFields
    , CustomFields
    , customFields
    , cKind
    , cCustomField

    -- * Location
    , Location
    , location
    , lAddressLine
    , lKind
    , lLat
    , lLng

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

    -- * JobsPatch'Progress
    , JobsPatch'Progress (..)

    -- * Worker
    , Worker
    , worker
    , wKind
    , wId

    -- * JobChange
    , JobChange
    , jobChange
    , jcState
    , jcKind
    , jcTimestamp
    ) where

import           Network.Google.Maps.Coordinate.Types.Product
import           Network.Google.Maps.Coordinate.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google Maps Coordinate API.
mapsCoordinateURL :: BaseUrl
mapsCoordinateURL
  = BaseUrl Https
      "https://www.googleapis.com/coordinate/v1/"
      443
