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

    -- * CustomField
      CustomField
    , customField
    , cfCustomFieldId
    , cfKind
    , cfValue

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

    -- * CustomFieldDefListResponse
    , CustomFieldDefListResponse
    , customFieldDefListResponse
    , cfdlrKind
    , cfdlrItems

    -- * CustomFields
    , CustomFields
    , customFields
    , cKind
    , cCustomField

    -- * EnumItemDef
    , EnumItemDef
    , enumItemDef
    , eidKind
    , eidValue
    , eidActive

    -- * Job
    , Job
    , job
    , jobState
    , jobKind
    , jobJobChange
    , jobId

    -- * JobChange
    , JobChange
    , jobChange
    , jcState
    , jcKind
    , jcTimestamp

    -- * JobListResponse
    , JobListResponse
    , jobListResponse
    , jlrNextPageToken
    , jlrKind
    , jlrItems

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

    -- * Location
    , Location
    , location
    , lAddressLine
    , lKind
    , lLat
    , lLng

    -- * LocationListResponse
    , LocationListResponse
    , locationListResponse
    , llrTokenPagination
    , llrNextPageToken
    , llrKind
    , llrItems

    -- * LocationRecord
    , LocationRecord
    , locationRecord
    , lrKind
    , lrLatitude
    , lrConfidenceRadius
    , lrLongitude
    , lrCollectionTime

    -- * Schedule
    , Schedule
    , schedule
    , sAllDay
    , sStartTime
    , sKind
    , sEndTime
    , sDuration

    -- * Team
    , Team
    , team
    , tKind
    , tName
    , tId

    -- * TeamListResponse
    , TeamListResponse
    , teamListResponse
    , tlrKind
    , tlrItems

    -- * TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpKind
    , tpPreviousPageToken

    -- * Worker
    , Worker
    , worker
    , wKind
    , wId

    -- * WorkerListResponse
    , WorkerListResponse
    , workerListResponse
    , wlrKind
    , wlrItems
    ) where

import           Network.Google.MapsCoordinate.Types.Product
import           Network.Google.MapsCoordinate.Types.Sum
import           Network.Google.Prelude
