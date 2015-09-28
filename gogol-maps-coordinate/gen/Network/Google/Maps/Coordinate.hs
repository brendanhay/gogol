{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Maps.Coordinate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you view and manage jobs in a Coordinate team.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference>
module Network.Google.Maps.Coordinate
    (
    -- * REST Resources

    -- ** Google Maps Coordinate API
      MapsCoordinate
    , mapsCoordinate
    , mapsCoordinateURL

    -- ** coordinate.customFieldDef.list
    , module Network.Google.API.Coordinate.CustomFieldDef.List

    -- ** coordinate.jobs.get
    , module Network.Google.API.Coordinate.Jobs.Get

    -- ** coordinate.jobs.insert
    , module Network.Google.API.Coordinate.Jobs.Insert

    -- ** coordinate.jobs.list
    , module Network.Google.API.Coordinate.Jobs.List

    -- ** coordinate.jobs.patch
    , module Network.Google.API.Coordinate.Jobs.Patch

    -- ** coordinate.jobs.update
    , module Network.Google.API.Coordinate.Jobs.Update

    -- ** coordinate.location.list
    , module Network.Google.API.Coordinate.Location.List

    -- ** coordinate.schedule.get
    , module Network.Google.API.Coordinate.Schedule.Get

    -- ** coordinate.schedule.patch
    , module Network.Google.API.Coordinate.Schedule.Patch

    -- ** coordinate.schedule.update
    , module Network.Google.API.Coordinate.Schedule.Update

    -- ** coordinate.team.list
    , module Network.Google.API.Coordinate.Team.List

    -- ** coordinate.worker.list
    , module Network.Google.API.Coordinate.Worker.List

    -- * Types

    -- ** TeamListResponse
    , TeamListResponse
    , teamListResponse
    , tlrKind
    , tlrItems

    -- ** Job
    , Job
    , job
    , jobState
    , jobKind
    , jobJobChange
    , jobId

    -- ** CustomFieldDefListResponse
    , CustomFieldDefListResponse
    , customFieldDefListResponse
    , cfdlrKind
    , cfdlrItems

    -- ** Alt
    , Alt (..)

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

    -- ** EnumItemDef
    , EnumItemDef
    , enumItemDef
    , eidKind
    , eidValue
    , eidActive

    -- ** CustomField
    , CustomField
    , customField
    , cfCustomFieldId
    , cfKind
    , cfValue

    -- ** LocationListResponse
    , LocationListResponse
    , locationListResponse
    , llrTokenPagination
    , llrNextPageToken
    , llrKind
    , llrItems

    -- ** JobsUpdate'Progress
    , JobsUpdate'Progress (..)

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

    -- ** CustomFields
    , CustomFields
    , customFields
    , cKind
    , cCustomField

    -- ** Location
    , Location
    , location
    , lAddressLine
    , lKind
    , lLat
    , lLng

    -- ** Schedule
    , Schedule
    , schedule
    , sAllDay
    , sStartTime
    , sKind
    , sEndTime
    , sDuration

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

    -- ** JobsPatch'Progress
    , JobsPatch'Progress (..)

    -- ** Worker
    , Worker
    , worker
    , wKind
    , wId

    -- ** JobChange
    , JobChange
    , jobChange
    , jcState
    , jcKind
    , jcTimestamp
    ) where

import           Network.Google.API.Coordinate.CustomFieldDef.List
import           Network.Google.API.Coordinate.Jobs.Get
import           Network.Google.API.Coordinate.Jobs.Insert
import           Network.Google.API.Coordinate.Jobs.List
import           Network.Google.API.Coordinate.Jobs.Patch
import           Network.Google.API.Coordinate.Jobs.Update
import           Network.Google.API.Coordinate.Location.List
import           Network.Google.API.Coordinate.Schedule.Get
import           Network.Google.API.Coordinate.Schedule.Patch
import           Network.Google.API.Coordinate.Schedule.Update
import           Network.Google.API.Coordinate.Team.List
import           Network.Google.API.Coordinate.Worker.List
import           Network.Google.Maps.Coordinate.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type MapsCoordinate =
     JobsGetAPI :<|> ScheduleUpdateAPI :<|> JobsInsertAPI
       :<|> TeamListAPI
       :<|> JobsPatchAPI
       :<|> JobsListAPI
       :<|> JobsUpdateAPI
       :<|> SchedulePatchAPI
       :<|> WorkerListAPI
       :<|> CustomFieldDefListAPI
       :<|> ScheduleGetAPI
       :<|> LocationListAPI

mapsCoordinate :: Proxy MapsCoordinate
mapsCoordinate = Proxy
