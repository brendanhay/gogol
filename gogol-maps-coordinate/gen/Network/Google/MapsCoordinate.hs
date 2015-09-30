{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | Lets you view and manage jobs in a Coordinate team.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference>
module Network.Google.MapsCoordinate
    (
    -- * API
      MapsCoordinateAPI
    , mapsCoordinateAPI
    , mapsCoordinateURL

    -- * Service Methods

    -- * REST Resources

    -- ** CoordinateCustomFieldDefList
    , module Coordinate.CustomFieldDef.List

    -- ** CoordinateJobsGet
    , module Coordinate.Jobs.Get

    -- ** CoordinateJobsInsert
    , module Coordinate.Jobs.Insert

    -- ** CoordinateJobsList
    , module Coordinate.Jobs.List

    -- ** CoordinateJobsPatch
    , module Coordinate.Jobs.Patch

    -- ** CoordinateJobsUpdate
    , module Coordinate.Jobs.Update

    -- ** CoordinateLocationList
    , module Coordinate.Location.List

    -- ** CoordinateScheduleGet
    , module Coordinate.Schedule.Get

    -- ** CoordinateSchedulePatch
    , module Coordinate.Schedule.Patch

    -- ** CoordinateScheduleUpdate
    , module Coordinate.Schedule.Update

    -- ** CoordinateTeamList
    , module Coordinate.Team.List

    -- ** CoordinateWorkerList
    , module Coordinate.Worker.List

    -- * Types

    -- ** LocationListResponse
    , LocationListResponse
    , locationListResponse
    , llrTokenPagination
    , llrNextPageToken
    , llrKind
    , llrItems

    -- ** WorkerListResponse
    , WorkerListResponse
    , workerListResponse
    , wlrKind
    , wlrItems

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpKind
    , tpPreviousPageToken

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
    , jobState
    , jobKind
    , jobJobChange
    , jobId

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

type MapsCoordinateAPI =
     Schedule :<|> Location :<|> CustomFieldDef :<|> Jobs
       :<|> Team
       :<|> Worker

mapsCoordinateAPI :: Proxy MapsCoordinateAPI
mapsCoordinateAPI = Proxy
