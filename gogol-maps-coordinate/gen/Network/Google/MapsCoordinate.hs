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
    -- * Resources
      MapsCoordinate
    , ScheduleAPI
    , SchedulePatch
    , ScheduleGet
    , ScheduleUpdate
    , LocationAPI
    , LocationList
    , CustomFieldDefAPI
    , CustomFieldDefList
    , JobsAPI
    , JobsInsert
    , JobsList
    , JobsPatch
    , JobsGet
    , JobsUpdate
    , TeamAPI
    , TeamList
    , WorkerAPI
    , WorkerList

    -- * Types

    -- ** CustomField
    , CustomField
    , customField
    , cfCustomFieldId
    , cfKind
    , cfValue

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

    -- ** CustomFieldDefListResponse
    , CustomFieldDefListResponse
    , customFieldDefListResponse
    , cfdlrKind
    , cfdlrItems

    -- ** CustomFields
    , CustomFields
    , customFields
    , cKind
    , cCustomField

    -- ** EnumItemDef
    , EnumItemDef
    , enumItemDef
    , eidKind
    , eidValue
    , eidActive

    -- ** Job
    , Job
    , job
    , jobState
    , jobKind
    , jobJobChange
    , jobId

    -- ** JobChange
    , JobChange
    , jobChange
    , jcState
    , jcKind
    , jcTimestamp

    -- ** JobListResponse
    , JobListResponse
    , jobListResponse
    , jlrNextPageToken
    , jlrKind
    , jlrItems

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

    -- ** Location
    , Location
    , location
    , lAddressLine
    , lKind
    , lLat
    , lLng

    -- ** LocationListResponse
    , LocationListResponse
    , locationListResponse
    , llrTokenPagination
    , llrNextPageToken
    , llrKind
    , llrItems

    -- ** LocationRecord
    , LocationRecord
    , locationRecord
    , lrKind
    , lrLatitude
    , lrConfidenceRadius
    , lrLongitude
    , lrCollectionTime

    -- ** Schedule
    , Schedule
    , schedule
    , sAllDay
    , sStartTime
    , sKind
    , sEndTime
    , sDuration

    -- ** Team
    , Team
    , team
    , tKind
    , tName
    , tId

    -- ** TeamListResponse
    , TeamListResponse
    , teamListResponse
    , tlrKind
    , tlrItems

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpKind
    , tpPreviousPageToken

    -- ** Worker
    , Worker
    , worker
    , wKind
    , wId

    -- ** WorkerListResponse
    , WorkerListResponse
    , workerListResponse
    , wlrKind
    , wlrItems
    ) where

import           Network.Google.MapsCoordinate.Types

{- $resources
TODO
-}

type MapsCoordinate =
     LocationAPI :<|>
       CustomFieldDefAPI :<|>
         JobsAPI :<|> TeamAPI :<|> WorkerAPI :<|> ScheduleAPI

type ScheduleAPI =
     ScheduleGet :<|> ScheduleUpdate :<|> SchedulePatch

-- | Replaces the schedule of a job with the provided schedule. This method
-- supports patch semantics.
type SchedulePatch =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "jobs"
       :> Capture "jobId" Word64
       :> "schedule"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "allDay" Bool
       :> QueryParam "startTime" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "endTime" Word64
       :> QueryParam "oauth_token" Text
       :> QueryParam "duration" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the schedule for a job.
type ScheduleGet =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "jobs"
       :> Capture "jobId" Word64
       :> "schedule"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Replaces the schedule of a job with the provided schedule.
type ScheduleUpdate =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "jobs"
       :> Capture "jobId" Word64
       :> "schedule"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "allDay" Bool
       :> QueryParam "startTime" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "endTime" Word64
       :> QueryParam "oauth_token" Text
       :> QueryParam "duration" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LocationAPI = LocationList

-- | Retrieves a list of locations for a worker.
type LocationList =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "workers"
       :> Capture "workerEmail" Text
       :> "locations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "startTimestampMs" Word64
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CustomFieldDefAPI = CustomFieldDefList

-- | Retrieves a list of custom field definitions for a team.
type CustomFieldDefList =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "custom_fields"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type JobsAPI =
     JobsList :<|>
       JobsPatch :<|>
         JobsGet :<|> JobsUpdate :<|> JobsInsert

-- | Inserts a new job. Only the state field of the job should be set.
type JobsInsert =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "jobs"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "note" Text
       :> QueryParam "userIp" Text
       :> QueryParam "customerPhoneNumber" Text
       :> QueryParam "customerName" Text
       :> QueryParam "address" Text
       :> QueryParam "assignee" Text
       :> QueryParam "lat" Double
       :> QueryParam "key" Text
       :> QueryParam "lng" Double
       :> QueryParam "title" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "customField" Text
       :> QueryParam "alt" Text

-- | Retrieves jobs created or modified since the given timestamp.
type JobsList =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "jobs"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "minModifiedTimestampMs" Word64
       :> QueryParam "key" Text
       :> QueryParam "omitJobChanges" Bool
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a job. Fields that are set in the job state will be updated.
-- This method supports patch semantics.
type JobsPatch =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "jobs"
       :> Capture "jobId" Word64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "progress" Text
       :> QueryParam "note" Text
       :> QueryParam "userIp" Text
       :> QueryParam "customerPhoneNumber" Text
       :> QueryParam "customerName" Text
       :> QueryParam "address" Text
       :> QueryParam "assignee" Text
       :> QueryParam "lat" Double
       :> QueryParam "key" Text
       :> QueryParam "lng" Double
       :> QueryParam "title" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "customField" Text
       :> QueryParam "alt" Text

-- | Retrieves a job, including all the changes made to the job.
type JobsGet =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "jobs"
       :> Capture "jobId" Word64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a job. Fields that are set in the job state will be updated.
type JobsUpdate =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "jobs"
       :> Capture "jobId" Word64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "progress" Text
       :> QueryParam "note" Text
       :> QueryParam "userIp" Text
       :> QueryParam "customerPhoneNumber" Text
       :> QueryParam "customerName" Text
       :> QueryParam "address" Text
       :> QueryParam "assignee" Text
       :> QueryParam "lat" Double
       :> QueryParam "key" Text
       :> QueryParam "lng" Double
       :> QueryParam "title" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "customField" Text
       :> QueryParam "alt" Text

type TeamAPI = TeamList

-- | Retrieves a list of teams for a user.
type TeamList =
     "coordinate" :> "v1" :> "teams" :>
       QueryParam "quotaUser" Text
       :> QueryParam "dispatcher" Bool
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "admin" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "worker" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type WorkerAPI = WorkerList

-- | Retrieves a list of workers in a team.
type WorkerList =
     "coordinate" :> "v1" :> "teams" :>
       Capture "teamId" Text
       :> "workers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
