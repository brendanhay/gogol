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
-- Lets you view and manage jobs in a Coordinate team.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference>
module Network.Google.MapsCoordinate
    (
    -- * Service Configuration
      mapsCoordinateService

    -- * OAuth Scopes
    , authCoordinateScope
    , authCoordinateReadonlyScope

    -- * API Declaration
    , MapsCoordinateAPI

    -- * Resources

    -- ** coordinate.customFieldDef.list
    , module Network.Google.Resource.Coordinate.CustomFieldDef.List

    -- ** coordinate.jobs.get
    , module Network.Google.Resource.Coordinate.Jobs.Get

    -- ** coordinate.jobs.insert
    , module Network.Google.Resource.Coordinate.Jobs.Insert

    -- ** coordinate.jobs.list
    , module Network.Google.Resource.Coordinate.Jobs.List

    -- ** coordinate.jobs.patch
    , module Network.Google.Resource.Coordinate.Jobs.Patch

    -- ** coordinate.jobs.update
    , module Network.Google.Resource.Coordinate.Jobs.Update

    -- ** coordinate.location.list
    , module Network.Google.Resource.Coordinate.Location.List

    -- ** coordinate.schedule.get
    , module Network.Google.Resource.Coordinate.Schedule.Get

    -- ** coordinate.schedule.patch
    , module Network.Google.Resource.Coordinate.Schedule.Patch

    -- ** coordinate.schedule.update
    , module Network.Google.Resource.Coordinate.Schedule.Update

    -- ** coordinate.team.list
    , module Network.Google.Resource.Coordinate.Team.List

    -- ** coordinate.worker.list
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
