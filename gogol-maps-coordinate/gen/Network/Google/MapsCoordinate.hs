{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.MapsCoordinate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you view and manage jobs in a Coordinate team.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference>
module Network.Google.MapsCoordinate
    (
    -- * API Declaration
      MapsCoordinateAPI

    -- * Resources

    -- ** CoordinateCustomFieldDefList
    , module Network.Google.Resource.Coordinate.CustomFieldDef.List

    -- ** CoordinateJobsGet
    , module Network.Google.Resource.Coordinate.Jobs.Get

    -- ** CoordinateJobsInsert
    , module Network.Google.Resource.Coordinate.Jobs.Insert

    -- ** CoordinateJobsList
    , module Network.Google.Resource.Coordinate.Jobs.List

    -- ** CoordinateJobsPatch
    , module Network.Google.Resource.Coordinate.Jobs.Patch

    -- ** CoordinateJobsUpdate
    , module Network.Google.Resource.Coordinate.Jobs.Update

    -- ** CoordinateLocationList
    , module Network.Google.Resource.Coordinate.Location.List

    -- ** CoordinateScheduleGet
    , module Network.Google.Resource.Coordinate.Schedule.Get

    -- ** CoordinateSchedulePatch
    , module Network.Google.Resource.Coordinate.Schedule.Patch

    -- ** CoordinateScheduleUpdate
    , module Network.Google.Resource.Coordinate.Schedule.Update

    -- ** CoordinateTeamList
    , module Network.Google.Resource.Coordinate.Team.List

    -- ** CoordinateWorkerList
    , module Network.Google.Resource.Coordinate.Worker.List

    -- * Types

    -- ** LocationListResponse
    , LocationListResponse
    , locationListResponse
    , llrTokenPagination
    , llrNextPageToken
    , llrKind
    , llrItems

    -- ** JobsPatchProgress
    , JobsPatchProgress (..)

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpKind
    , tpPreviousPageToken

    -- ** WorkerListResponse
    , WorkerListResponse
    , workerListResponse
    , wlrKind
    , wlrItems

    -- ** Schedule
    , Schedule
    , schedule
    , sAllDay
    , sStartTime
    , sKind
    , sEndTime
    , sDuration

    -- ** Location
    , Location
    , location
    , lAddressLine
    , lKind
    , lLat
    , lLng

    -- ** JobsUpdateProgress
    , JobsUpdateProgress (..)

    -- ** JobState
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

    -- ** CustomFieldDef
    , CustomFieldDef
    , customFieldDef
    , cfdEnabled
    , cfdKind
    , cfdName
    , cfdRequiredForCheckout
    , cfdId
    , cfdEnumitems
    , cfdType

    -- ** JobListResponse
    , JobListResponse
    , jobListResponse
    , jlrNextPageToken
    , jlrKind
    , jlrItems

    -- ** JobChange
    , JobChange
    , jobChange
    , jcState
    , jcKind
    , jcTimestamp

    -- ** TeamListResponse
    , TeamListResponse
    , teamListResponse
    , tlrKind
    , tlrItems

    -- ** CustomFieldDefListResponse
    , CustomFieldDefListResponse
    , customFieldDefListResponse
    , cfdlrKind
    , cfdlrItems

    -- ** Job
    , Job
    , job
    , jState
    , jKind
    , jJobChange
    , jId

    -- ** CustomFields
    , CustomFields
    , customFields
    , cfKind
    , cfCustomField

    -- ** Team
    , Team
    , team
    , tKind
    , tName
    , tId

    -- ** LocationRecord
    , LocationRecord
    , locationRecord
    , lrKind
    , lrLatitude
    , lrConfidenceRadius
    , lrLongitude
    , lrCollectionTime

    -- ** Worker
    , Worker
    , worker
    , wKind
    , wId

    -- ** CustomField
    , CustomField
    , customField
    , cCustomFieldId
    , cKind
    , cValue

    -- ** EnumItemDef
    , EnumItemDef
    , enumItemDef
    , eidKind
    , eidValue
    , eidActive
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Coordinate.CustomFieldDef.List
import           Network.Google.Resource.Coordinate.Jobs.Get
import           Network.Google.Resource.Coordinate.Jobs.Insert
import           Network.Google.Resource.Coordinate.Jobs.List
import           Network.Google.Resource.Coordinate.Jobs.Patch
import           Network.Google.Resource.Coordinate.Jobs.Update
import           Network.Google.Resource.Coordinate.Location.List
import           Network.Google.Resource.Coordinate.Schedule.Get
import           Network.Google.Resource.Coordinate.Schedule.Patch
import           Network.Google.Resource.Coordinate.Schedule.Update
import           Network.Google.Resource.Coordinate.Team.List
import           Network.Google.Resource.Coordinate.Worker.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Maps Coordinate API service.
type MapsCoordinateAPI =
     SchedulePatchResource :<|> ScheduleGetResource :<|>
       ScheduleUpdateResource
       :<|> LocationListResource
       :<|> CustomFieldDefListResource
       :<|> JobsInsertResource
       :<|> JobsListResource
       :<|> JobsPatchResource
       :<|> JobsGetResource
       :<|> JobsUpdateResource
       :<|> TeamListResource
       :<|> WorkerListResource
