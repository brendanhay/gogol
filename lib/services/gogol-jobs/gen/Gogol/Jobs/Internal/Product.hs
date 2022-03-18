{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Jobs.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Jobs.Internal.Product
  ( -- * ApplicationInfo
    ApplicationInfo (..),
    newApplicationInfo,

    -- * BatchCreateJobsRequest
    BatchCreateJobsRequest (..),
    newBatchCreateJobsRequest,

    -- * BatchCreateJobsResponse
    BatchCreateJobsResponse (..),
    newBatchCreateJobsResponse,

    -- * BatchDeleteJobsRequest
    BatchDeleteJobsRequest (..),
    newBatchDeleteJobsRequest,

    -- * BatchDeleteJobsResponse
    BatchDeleteJobsResponse (..),
    newBatchDeleteJobsResponse,

    -- * BatchOperationMetadata
    BatchOperationMetadata (..),
    newBatchOperationMetadata,

    -- * BatchUpdateJobsRequest
    BatchUpdateJobsRequest (..),
    newBatchUpdateJobsRequest,

    -- * BatchUpdateJobsResponse
    BatchUpdateJobsResponse (..),
    newBatchUpdateJobsResponse,

    -- * ClientEvent
    ClientEvent (..),
    newClientEvent,

    -- * CommuteFilter
    CommuteFilter (..),
    newCommuteFilter,

    -- * CommuteInfo
    CommuteInfo (..),
    newCommuteInfo,

    -- * Company
    Company (..),
    newCompany,

    -- * CompanyDerivedInfo
    CompanyDerivedInfo (..),
    newCompanyDerivedInfo,

    -- * CompensationEntry
    CompensationEntry (..),
    newCompensationEntry,

    -- * CompensationFilter
    CompensationFilter (..),
    newCompensationFilter,

    -- * CompensationInfo
    CompensationInfo (..),
    newCompensationInfo,

    -- * CompensationRange
    CompensationRange (..),
    newCompensationRange,

    -- * CompleteQueryResponse
    CompleteQueryResponse (..),
    newCompleteQueryResponse,

    -- * CompletionResult
    CompletionResult (..),
    newCompletionResult,

    -- * CustomAttribute
    CustomAttribute (..),
    newCustomAttribute,

    -- * CustomRankingInfo
    CustomRankingInfo (..),
    newCustomRankingInfo,

    -- * DeviceInfo
    DeviceInfo (..),
    newDeviceInfo,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * HistogramQuery
    HistogramQuery (..),
    newHistogramQuery,

    -- * HistogramQueryResult
    HistogramQueryResult (..),
    newHistogramQueryResult,

    -- * HistogramQueryResult_Histogram
    HistogramQueryResult_Histogram (..),
    newHistogramQueryResult_Histogram,

    -- * Job
    Job (..),
    newJob,

    -- * Job_CustomAttributes
    Job_CustomAttributes (..),
    newJob_CustomAttributes,

    -- * JobDerivedInfo
    JobDerivedInfo (..),
    newJobDerivedInfo,

    -- * JobEvent
    JobEvent (..),
    newJobEvent,

    -- * JobQuery
    JobQuery (..),
    newJobQuery,

    -- * JobResult
    JobResult (..),
    newJobResult,

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * ListCompaniesResponse
    ListCompaniesResponse (..),
    newListCompaniesResponse,

    -- * ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- * ListTenantsResponse
    ListTenantsResponse (..),
    newListTenantsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * LocationFilter
    LocationFilter (..),
    newLocationFilter,

    -- * MatchingJob
    MatchingJob (..),
    newMatchingJob,

    -- * MendelDebugInput
    MendelDebugInput (..),
    newMendelDebugInput,

    -- * MendelDebugInput_NamespacedDebugInput
    MendelDebugInput_NamespacedDebugInput (..),
    newMendelDebugInput_NamespacedDebugInput,

    -- * Money
    Money (..),
    newMoney,

    -- * NamespacedDebugInput
    NamespacedDebugInput (..),
    newNamespacedDebugInput,

    -- * NamespacedDebugInput_ForcedFlags
    NamespacedDebugInput_ForcedFlags (..),
    newNamespacedDebugInput_ForcedFlags,

    -- * NamespacedDebugInput_ForcedRollouts
    NamespacedDebugInput_ForcedRollouts (..),
    newNamespacedDebugInput_ForcedRollouts,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * PostalAddress
    PostalAddress (..),
    newPostalAddress,

    -- * ProcessingOptions
    ProcessingOptions (..),
    newProcessingOptions,

    -- * RequestMetadata
    RequestMetadata (..),
    newRequestMetadata,

    -- * ResponseMetadata
    ResponseMetadata (..),
    newResponseMetadata,

    -- * SearchJobsRequest
    SearchJobsRequest (..),
    newSearchJobsRequest,

    -- * SearchJobsResponse
    SearchJobsResponse (..),
    newSearchJobsResponse,

    -- * SpellingCorrection
    SpellingCorrection (..),
    newSpellingCorrection,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Tenant
    Tenant (..),
    newTenant,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * TimestampRange
    TimestampRange (..),
    newTimestampRange,
  )
where

import Gogol.Jobs.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Application related details of a job posting.
--
-- /See:/ 'newApplicationInfo' smart constructor.
data ApplicationInfo = ApplicationInfo
  { -- | Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.
    emails :: (Core.Maybe [Core.Text]),
    -- | Use this field to provide instructions, such as \"Mail your application to ...\", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.
    instruction :: (Core.Maybe Core.Text),
    -- | Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.
    uris :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationInfo' with the minimum fields required to make a request.
newApplicationInfo ::
  ApplicationInfo
newApplicationInfo =
  ApplicationInfo
    { emails = Core.Nothing,
      instruction = Core.Nothing,
      uris = Core.Nothing
    }

instance Core.FromJSON ApplicationInfo where
  parseJSON =
    Core.withObject
      "ApplicationInfo"
      ( \o ->
          ApplicationInfo
            Core.<$> (o Core..:? "emails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "instruction")
            Core.<*> (o Core..:? "uris" Core..!= Core.mempty)
      )

instance Core.ToJSON ApplicationInfo where
  toJSON ApplicationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("emails" Core..=) Core.<$> emails,
            ("instruction" Core..=) Core.<$> instruction,
            ("uris" Core..=) Core.<$> uris
          ]
      )

-- | Request to create a batch of jobs.
--
-- /See:/ 'newBatchCreateJobsRequest' smart constructor.
newtype BatchCreateJobsRequest = BatchCreateJobsRequest
  { -- | Required. The jobs to be created. A maximum of 200 jobs can be created in a batch.
    jobs :: (Core.Maybe [Job])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateJobsRequest' with the minimum fields required to make a request.
newBatchCreateJobsRequest ::
  BatchCreateJobsRequest
newBatchCreateJobsRequest = BatchCreateJobsRequest {jobs = Core.Nothing}

instance Core.FromJSON BatchCreateJobsRequest where
  parseJSON =
    Core.withObject
      "BatchCreateJobsRequest"
      ( \o ->
          BatchCreateJobsRequest
            Core.<$> (o Core..:? "jobs" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchCreateJobsRequest where
  toJSON BatchCreateJobsRequest {..} =
    Core.object
      (Core.catMaybes [("jobs" Core..=) Core.<$> jobs])

-- | The result of JobService.BatchCreateJobs. It\'s used to replace google.longrunning.Operation.response in case of success.
--
-- /See:/ 'newBatchCreateJobsResponse' smart constructor.
newtype BatchCreateJobsResponse = BatchCreateJobsResponse
  { -- | List of job mutation results from a batch create operation. It can change until operation status is FINISHED, FAILED or CANCELLED.
    jobResults :: (Core.Maybe [JobResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateJobsResponse' with the minimum fields required to make a request.
newBatchCreateJobsResponse ::
  BatchCreateJobsResponse
newBatchCreateJobsResponse = BatchCreateJobsResponse {jobResults = Core.Nothing}

instance Core.FromJSON BatchCreateJobsResponse where
  parseJSON =
    Core.withObject
      "BatchCreateJobsResponse"
      ( \o ->
          BatchCreateJobsResponse
            Core.<$> (o Core..:? "jobResults" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchCreateJobsResponse where
  toJSON BatchCreateJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("jobResults" Core..=) Core.<$> jobResults]
      )

-- | Request to delete a batch of jobs.
--
-- /See:/ 'newBatchDeleteJobsRequest' smart constructor.
newtype BatchDeleteJobsRequest = BatchDeleteJobsRequest
  { -- | The names of the jobs to delete. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/jobs\/{job_id}\". For example, \"projects\/foo\/tenants\/bar\/jobs\/baz\". A maximum of 200 jobs can be deleted in a batch.
    names :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeleteJobsRequest' with the minimum fields required to make a request.
newBatchDeleteJobsRequest ::
  BatchDeleteJobsRequest
newBatchDeleteJobsRequest = BatchDeleteJobsRequest {names = Core.Nothing}

instance Core.FromJSON BatchDeleteJobsRequest where
  parseJSON =
    Core.withObject
      "BatchDeleteJobsRequest"
      ( \o ->
          BatchDeleteJobsRequest
            Core.<$> (o Core..:? "names" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchDeleteJobsRequest where
  toJSON BatchDeleteJobsRequest {..} =
    Core.object
      (Core.catMaybes [("names" Core..=) Core.<$> names])

-- | The result of JobService.BatchDeleteJobs. It\'s used to replace google.longrunning.Operation.response in case of success.
--
-- /See:/ 'newBatchDeleteJobsResponse' smart constructor.
newtype BatchDeleteJobsResponse = BatchDeleteJobsResponse
  { -- | List of job mutation results from a batch delete operation. It can change until operation status is FINISHED, FAILED or CANCELLED.
    jobResults :: (Core.Maybe [JobResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeleteJobsResponse' with the minimum fields required to make a request.
newBatchDeleteJobsResponse ::
  BatchDeleteJobsResponse
newBatchDeleteJobsResponse = BatchDeleteJobsResponse {jobResults = Core.Nothing}

instance Core.FromJSON BatchDeleteJobsResponse where
  parseJSON =
    Core.withObject
      "BatchDeleteJobsResponse"
      ( \o ->
          BatchDeleteJobsResponse
            Core.<$> (o Core..:? "jobResults" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchDeleteJobsResponse where
  toJSON BatchDeleteJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("jobResults" Core..=) Core.<$> jobResults]
      )

-- | Metadata used for long running operations returned by CTS batch APIs. It\'s used to replace google.longrunning.Operation.metadata.
--
-- /See:/ 'newBatchOperationMetadata' smart constructor.
data BatchOperationMetadata = BatchOperationMetadata
  { -- | The time when the batch operation is created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The time when the batch operation is finished and google.longrunning.Operation.done is set to @true@.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Count of failed item(s) inside an operation.
    failureCount :: (Core.Maybe Core.Int32),
    -- | The state of a long running operation.
    state :: (Core.Maybe BatchOperationMetadata_State),
    -- | More detailed information about operation state.
    stateDescription :: (Core.Maybe Core.Text),
    -- | Count of successful item(s) inside an operation.
    successCount :: (Core.Maybe Core.Int32),
    -- | Count of total item(s) inside an operation.
    totalCount :: (Core.Maybe Core.Int32),
    -- | The time when the batch operation status is updated. The metadata and the update_time is refreshed every minute otherwise cached data is returned.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchOperationMetadata' with the minimum fields required to make a request.
newBatchOperationMetadata ::
  BatchOperationMetadata
newBatchOperationMetadata =
  BatchOperationMetadata
    { createTime = Core.Nothing,
      endTime = Core.Nothing,
      failureCount = Core.Nothing,
      state = Core.Nothing,
      stateDescription = Core.Nothing,
      successCount = Core.Nothing,
      totalCount = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON BatchOperationMetadata where
  parseJSON =
    Core.withObject
      "BatchOperationMetadata"
      ( \o ->
          BatchOperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "failureCount")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateDescription")
            Core.<*> (o Core..:? "successCount")
            Core.<*> (o Core..:? "totalCount")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON BatchOperationMetadata where
  toJSON BatchOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("failureCount" Core..=) Core.<$> failureCount,
            ("state" Core..=) Core.<$> state,
            ("stateDescription" Core..=)
              Core.<$> stateDescription,
            ("successCount" Core..=) Core.<$> successCount,
            ("totalCount" Core..=) Core.<$> totalCount,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Request to update a batch of jobs.
--
-- /See:/ 'newBatchUpdateJobsRequest' smart constructor.
data BatchUpdateJobsRequest = BatchUpdateJobsRequest
  { -- | Required. The jobs to be updated. A maximum of 200 jobs can be updated in a batch.
    jobs :: (Core.Maybe [Job]),
    -- | Strongly recommended for the best service experience. Be aware that it will also increase latency when checking the status of a batch operation. If update/mask is provided, only the specified fields in Job are updated. Otherwise all the fields are updated. A field mask to restrict the fields that are updated. Only top level fields of Job are supported. If update/mask is provided, The Job inside JobResult will only contains fields that is updated, plus the Id of the Job. Otherwise, Job will include all fields, which can yield a very large response.
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateJobsRequest' with the minimum fields required to make a request.
newBatchUpdateJobsRequest ::
  BatchUpdateJobsRequest
newBatchUpdateJobsRequest =
  BatchUpdateJobsRequest {jobs = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON BatchUpdateJobsRequest where
  parseJSON =
    Core.withObject
      "BatchUpdateJobsRequest"
      ( \o ->
          BatchUpdateJobsRequest
            Core.<$> (o Core..:? "jobs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON BatchUpdateJobsRequest where
  toJSON BatchUpdateJobsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobs" Core..=) Core.<$> jobs,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | The result of JobService.BatchUpdateJobs. It\'s used to replace google.longrunning.Operation.response in case of success.
--
-- /See:/ 'newBatchUpdateJobsResponse' smart constructor.
newtype BatchUpdateJobsResponse = BatchUpdateJobsResponse
  { -- | List of job mutation results from a batch update operation. It can change until operation status is FINISHED, FAILED or CANCELLED.
    jobResults :: (Core.Maybe [JobResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateJobsResponse' with the minimum fields required to make a request.
newBatchUpdateJobsResponse ::
  BatchUpdateJobsResponse
newBatchUpdateJobsResponse = BatchUpdateJobsResponse {jobResults = Core.Nothing}

instance Core.FromJSON BatchUpdateJobsResponse where
  parseJSON =
    Core.withObject
      "BatchUpdateJobsResponse"
      ( \o ->
          BatchUpdateJobsResponse
            Core.<$> (o Core..:? "jobResults" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchUpdateJobsResponse where
  toJSON BatchUpdateJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("jobResults" Core..=) Core.<$> jobResults]
      )

-- | An event issued when an end user interacts with the application that implements Cloud Talent Solution. Providing this information improves the quality of results for the API clients, enabling the service to perform optimally. The number of events sent must be consistent with other calls, such as job searches, issued to the service by the client.
--
-- /See:/ 'newClientEvent' smart constructor.
data ClientEvent = ClientEvent
  { -- | Required. The timestamp of the event.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Required. A unique identifier, generated by the client application.
    eventId :: (Core.Maybe Core.Text),
    -- | Notes about the event provided by recruiters or other users, for example, feedback on why a job was bookmarked.
    eventNotes :: (Core.Maybe Core.Text),
    -- | An event issued when a job seeker interacts with the application that implements Cloud Talent Solution.
    jobEvent :: (Core.Maybe JobEvent),
    -- | Strongly recommended for the best service experience. A unique ID generated in the API responses. It can be found in ResponseMetadata.request_id.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClientEvent' with the minimum fields required to make a request.
newClientEvent ::
  ClientEvent
newClientEvent =
  ClientEvent
    { createTime = Core.Nothing,
      eventId = Core.Nothing,
      eventNotes = Core.Nothing,
      jobEvent = Core.Nothing,
      requestId = Core.Nothing
    }

instance Core.FromJSON ClientEvent where
  parseJSON =
    Core.withObject
      "ClientEvent"
      ( \o ->
          ClientEvent
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "eventId")
            Core.<*> (o Core..:? "eventNotes")
            Core.<*> (o Core..:? "jobEvent")
            Core.<*> (o Core..:? "requestId")
      )

instance Core.ToJSON ClientEvent where
  toJSON ClientEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("eventId" Core..=) Core.<$> eventId,
            ("eventNotes" Core..=) Core.<$> eventNotes,
            ("jobEvent" Core..=) Core.<$> jobEvent,
            ("requestId" Core..=) Core.<$> requestId
          ]
      )

-- | Parameters needed for commute search.
--
-- /See:/ 'newCommuteFilter' smart constructor.
data CommuteFilter = CommuteFilter
  { -- | If @true@, jobs without street level addresses may also be returned. For city level addresses, the city center is used. For state and coarser level addresses, text matching is used. If this field is set to @false@ or isn\'t specified, only jobs that include street level addresses will be returned by commute search.
    allowImpreciseAddresses :: (Core.Maybe Core.Bool),
    -- | Required. The method of transportation to calculate the commute time for.
    commuteMethod :: (Core.Maybe CommuteFilter_CommuteMethod),
    -- | The departure time used to calculate traffic impact, represented as google.type.TimeOfDay in local time zone. Currently traffic model is restricted to hour level resolution.
    departureTime :: (Core.Maybe TimeOfDay'),
    -- | Specifies the traffic density to use when calculating commute time.
    roadTraffic :: (Core.Maybe CommuteFilter_RoadTraffic),
    -- | Required. The latitude and longitude of the location to calculate the commute time from.
    startCoordinates :: (Core.Maybe LatLng),
    -- | Required. The maximum travel time in seconds. The maximum allowed value is @3600s@ (one hour). Format is @123s@.
    travelDuration :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommuteFilter' with the minimum fields required to make a request.
newCommuteFilter ::
  CommuteFilter
newCommuteFilter =
  CommuteFilter
    { allowImpreciseAddresses = Core.Nothing,
      commuteMethod = Core.Nothing,
      departureTime = Core.Nothing,
      roadTraffic = Core.Nothing,
      startCoordinates = Core.Nothing,
      travelDuration = Core.Nothing
    }

instance Core.FromJSON CommuteFilter where
  parseJSON =
    Core.withObject
      "CommuteFilter"
      ( \o ->
          CommuteFilter
            Core.<$> (o Core..:? "allowImpreciseAddresses")
            Core.<*> (o Core..:? "commuteMethod")
            Core.<*> (o Core..:? "departureTime")
            Core.<*> (o Core..:? "roadTraffic")
            Core.<*> (o Core..:? "startCoordinates")
            Core.<*> (o Core..:? "travelDuration")
      )

instance Core.ToJSON CommuteFilter where
  toJSON CommuteFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowImpreciseAddresses" Core..=)
              Core.<$> allowImpreciseAddresses,
            ("commuteMethod" Core..=) Core.<$> commuteMethod,
            ("departureTime" Core..=) Core.<$> departureTime,
            ("roadTraffic" Core..=) Core.<$> roadTraffic,
            ("startCoordinates" Core..=)
              Core.<$> startCoordinates,
            ("travelDuration" Core..=) Core.<$> travelDuration
          ]
      )

-- | Commute details related to this job.
--
-- /See:/ 'newCommuteInfo' smart constructor.
data CommuteInfo = CommuteInfo
  { -- | Location used as the destination in the commute calculation.
    jobLocation :: (Core.Maybe Location),
    -- | The number of seconds required to travel to the job location from the query location. A duration of 0 seconds indicates that the job isn\'t reachable within the requested duration, but was returned as part of an expanded query.
    travelDuration :: (Core.Maybe Core.GDuration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommuteInfo' with the minimum fields required to make a request.
newCommuteInfo ::
  CommuteInfo
newCommuteInfo =
  CommuteInfo {jobLocation = Core.Nothing, travelDuration = Core.Nothing}

instance Core.FromJSON CommuteInfo where
  parseJSON =
    Core.withObject
      "CommuteInfo"
      ( \o ->
          CommuteInfo
            Core.<$> (o Core..:? "jobLocation")
            Core.<*> (o Core..:? "travelDuration")
      )

instance Core.ToJSON CommuteInfo where
  toJSON CommuteInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobLocation" Core..=) Core.<$> jobLocation,
            ("travelDuration" Core..=) Core.<$> travelDuration
          ]
      )

-- | A Company resource represents a company in the service. A company is the entity that owns job postings, that is, the hiring entity responsible for employing applicants for the job position.
--
-- /See:/ 'newCompany' smart constructor.
data Company = Company
  { -- | The URI to employer\'s career site or careers page on the employer\'s web site, for example, \"https:\/\/careers.google.com\".
    careerSiteUri :: (Core.Maybe Core.Text),
    -- | Output only. Derived details about the company.
    derivedInfo :: (Core.Maybe CompanyDerivedInfo),
    -- | Required. The display name of the company, for example, \"Google LLC\".
    displayName :: (Core.Maybe Core.Text),
    -- | Equal Employment Opportunity legal disclaimer text to be associated with all jobs, and typically to be displayed in all roles. The maximum number of allowed characters is 500.
    eeoText :: (Core.Maybe Core.Text),
    -- | Required. Client side company identifier, used to uniquely identify the company. The maximum number of allowed characters is 255.
    externalId :: (Core.Maybe Core.Text),
    -- | The street address of the company\'s main headquarters, which may be different from the job location. The service attempts to geolocate the provided address, and populates a more specific location wherever possible in DerivedInfo.headquarters_location.
    headquartersAddress :: (Core.Maybe Core.Text),
    -- | Set to true if it is the hiring agency that post jobs for other employers. Defaults to false if not provided.
    hiringAgency :: (Core.Maybe Core.Bool),
    -- | A URI that hosts the employer\'s company logo.
    imageUri :: (Core.Maybe Core.Text),
    -- | A list of keys of filterable Job.custom_attributes, whose corresponding @string_values@ are used in keyword searches. Jobs with @string_values@ under these specified field keys are returned if any of the values match the search keyword. Custom field values with parenthesis, brackets and special symbols are not searchable as-is, and those keyword queries must be surrounded by quotes.
    keywordSearchableJobCustomAttributes :: (Core.Maybe [Core.Text]),
    -- | Required during company update. The resource name for a company. This is generated by the service when a company is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\", for example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
    name :: (Core.Maybe Core.Text),
    -- | The employer\'s company size.
    size :: (Core.Maybe Company_Size),
    -- | Output only. Indicates whether a company is flagged to be suspended from public availability by the service when job content appears suspicious, abusive, or spammy.
    suspended :: (Core.Maybe Core.Bool),
    -- | The URI representing the company\'s primary web site or home page, for example, \"https:\/\/www.google.com\". The maximum number of allowed characters is 255.
    websiteUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Company' with the minimum fields required to make a request.
newCompany ::
  Company
newCompany =
  Company
    { careerSiteUri = Core.Nothing,
      derivedInfo = Core.Nothing,
      displayName = Core.Nothing,
      eeoText = Core.Nothing,
      externalId = Core.Nothing,
      headquartersAddress = Core.Nothing,
      hiringAgency = Core.Nothing,
      imageUri = Core.Nothing,
      keywordSearchableJobCustomAttributes = Core.Nothing,
      name = Core.Nothing,
      size = Core.Nothing,
      suspended = Core.Nothing,
      websiteUri = Core.Nothing
    }

instance Core.FromJSON Company where
  parseJSON =
    Core.withObject
      "Company"
      ( \o ->
          Company
            Core.<$> (o Core..:? "careerSiteUri")
            Core.<*> (o Core..:? "derivedInfo")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "eeoText")
            Core.<*> (o Core..:? "externalId")
            Core.<*> (o Core..:? "headquartersAddress")
            Core.<*> (o Core..:? "hiringAgency")
            Core.<*> (o Core..:? "imageUri")
            Core.<*> ( o Core..:? "keywordSearchableJobCustomAttributes"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "suspended")
            Core.<*> (o Core..:? "websiteUri")
      )

instance Core.ToJSON Company where
  toJSON Company {..} =
    Core.object
      ( Core.catMaybes
          [ ("careerSiteUri" Core..=) Core.<$> careerSiteUri,
            ("derivedInfo" Core..=) Core.<$> derivedInfo,
            ("displayName" Core..=) Core.<$> displayName,
            ("eeoText" Core..=) Core.<$> eeoText,
            ("externalId" Core..=) Core.<$> externalId,
            ("headquartersAddress" Core..=)
              Core.<$> headquartersAddress,
            ("hiringAgency" Core..=) Core.<$> hiringAgency,
            ("imageUri" Core..=) Core.<$> imageUri,
            ("keywordSearchableJobCustomAttributes" Core..=)
              Core.<$> keywordSearchableJobCustomAttributes,
            ("name" Core..=) Core.<$> name,
            ("size" Core..=) Core.<$> size,
            ("suspended" Core..=) Core.<$> suspended,
            ("websiteUri" Core..=) Core.<$> websiteUri
          ]
      )

-- | Derived details about the company.
--
-- /See:/ 'newCompanyDerivedInfo' smart constructor.
newtype CompanyDerivedInfo = CompanyDerivedInfo
  { -- | A structured headquarters location of the company, resolved from Company.headquarters_address if provided.
    headquartersLocation :: (Core.Maybe Location)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompanyDerivedInfo' with the minimum fields required to make a request.
newCompanyDerivedInfo ::
  CompanyDerivedInfo
newCompanyDerivedInfo = CompanyDerivedInfo {headquartersLocation = Core.Nothing}

instance Core.FromJSON CompanyDerivedInfo where
  parseJSON =
    Core.withObject
      "CompanyDerivedInfo"
      ( \o ->
          CompanyDerivedInfo
            Core.<$> (o Core..:? "headquartersLocation")
      )

instance Core.ToJSON CompanyDerivedInfo where
  toJSON CompanyDerivedInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("headquartersLocation" Core..=)
              Core.<$> headquartersLocation
          ]
      )

-- | A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected/units/per/year is set or can be derived. Its annualized range is determined as (amount or range) times expected/units/per/year.
--
-- /See:/ 'newCompensationEntry' smart constructor.
data CompensationEntry = CompensationEntry
  { -- | Compensation amount.
    amount :: (Core.Maybe Money),
    -- | Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
    description :: (Core.Maybe Core.Text),
    -- | Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
    expectedUnitsPerYear :: (Core.Maybe Core.Double),
    -- | Compensation range.
    range :: (Core.Maybe CompensationRange),
    -- | Compensation type. Default is CompensationType.COMPENSATION/TYPE/UNSPECIFIED.
    type' :: (Core.Maybe CompensationEntry_Type),
    -- | Frequency of the specified amount. Default is CompensationUnit.COMPENSATION/UNIT/UNSPECIFIED.
    unit :: (Core.Maybe CompensationEntry_Unit)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompensationEntry' with the minimum fields required to make a request.
newCompensationEntry ::
  CompensationEntry
newCompensationEntry =
  CompensationEntry
    { amount = Core.Nothing,
      description = Core.Nothing,
      expectedUnitsPerYear = Core.Nothing,
      range = Core.Nothing,
      type' = Core.Nothing,
      unit = Core.Nothing
    }

instance Core.FromJSON CompensationEntry where
  parseJSON =
    Core.withObject
      "CompensationEntry"
      ( \o ->
          CompensationEntry
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "expectedUnitsPerYear")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "unit")
      )

instance Core.ToJSON CompensationEntry where
  toJSON CompensationEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("description" Core..=) Core.<$> description,
            ("expectedUnitsPerYear" Core..=)
              Core.<$> expectedUnitsPerYear,
            ("range" Core..=) Core.<$> range,
            ("type" Core..=) Core.<$> type',
            ("unit" Core..=) Core.<$> unit
          ]
      )

-- | Filter on job compensation type and amount.
--
-- /See:/ 'newCompensationFilter' smart constructor.
data CompensationFilter = CompensationFilter
  { -- | If set to true, jobs with unspecified compensation range fields are included.
    includeJobsWithUnspecifiedCompensationRange :: (Core.Maybe Core.Bool),
    -- | Compensation range.
    range :: (Core.Maybe CompensationRange),
    -- | Required. Type of filter.
    type' :: (Core.Maybe CompensationFilter_Type),
    -- | Required. Specify desired @base compensation entry\'s@ CompensationInfo.CompensationUnit.
    units :: (Core.Maybe [CompensationFilter_UnitsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompensationFilter' with the minimum fields required to make a request.
newCompensationFilter ::
  CompensationFilter
newCompensationFilter =
  CompensationFilter
    { includeJobsWithUnspecifiedCompensationRange = Core.Nothing,
      range = Core.Nothing,
      type' = Core.Nothing,
      units = Core.Nothing
    }

instance Core.FromJSON CompensationFilter where
  parseJSON =
    Core.withObject
      "CompensationFilter"
      ( \o ->
          CompensationFilter
            Core.<$> ( o
                         Core..:? "includeJobsWithUnspecifiedCompensationRange"
                     )
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "units" Core..!= Core.mempty)
      )

instance Core.ToJSON CompensationFilter where
  toJSON CompensationFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ( "includeJobsWithUnspecifiedCompensationRange"
                Core..=
            )
              Core.<$> includeJobsWithUnspecifiedCompensationRange,
            ("range" Core..=) Core.<$> range,
            ("type" Core..=) Core.<$> type',
            ("units" Core..=) Core.<$> units
          ]
      )

-- | Job compensation details.
--
-- /See:/ 'newCompensationInfo' smart constructor.
data CompensationInfo = CompensationInfo
  { -- | Output only. Annualized base compensation range. Computed as base compensation entry\'s CompensationEntry.amount times CompensationEntry.expected/units/per_year. See CompensationEntry for explanation on compensation annualization.
    annualizedBaseCompensationRange :: (Core.Maybe CompensationRange),
    -- | Output only. Annualized total compensation range. Computed as all compensation entries\' CompensationEntry.amount times CompensationEntry.expected/units/per_year. See CompensationEntry for explanation on compensation annualization.
    annualizedTotalCompensationRange :: (Core.Maybe CompensationRange),
    -- | Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as __base compensation entry__ for the job.
    entries :: (Core.Maybe [CompensationEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompensationInfo' with the minimum fields required to make a request.
newCompensationInfo ::
  CompensationInfo
newCompensationInfo =
  CompensationInfo
    { annualizedBaseCompensationRange = Core.Nothing,
      annualizedTotalCompensationRange = Core.Nothing,
      entries = Core.Nothing
    }

instance Core.FromJSON CompensationInfo where
  parseJSON =
    Core.withObject
      "CompensationInfo"
      ( \o ->
          CompensationInfo
            Core.<$> (o Core..:? "annualizedBaseCompensationRange")
            Core.<*> (o Core..:? "annualizedTotalCompensationRange")
            Core.<*> (o Core..:? "entries" Core..!= Core.mempty)
      )

instance Core.ToJSON CompensationInfo where
  toJSON CompensationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("annualizedBaseCompensationRange" Core..=)
              Core.<$> annualizedBaseCompensationRange,
            ("annualizedTotalCompensationRange" Core..=)
              Core.<$> annualizedTotalCompensationRange,
            ("entries" Core..=) Core.<$> entries
          ]
      )

-- | Compensation range.
--
-- /See:/ 'newCompensationRange' smart constructor.
data CompensationRange = CompensationRange
  { -- | The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
    maxCompensation :: (Core.Maybe Money),
    -- | The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
    minCompensation :: (Core.Maybe Money)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompensationRange' with the minimum fields required to make a request.
newCompensationRange ::
  CompensationRange
newCompensationRange =
  CompensationRange
    { maxCompensation = Core.Nothing,
      minCompensation = Core.Nothing
    }

instance Core.FromJSON CompensationRange where
  parseJSON =
    Core.withObject
      "CompensationRange"
      ( \o ->
          CompensationRange
            Core.<$> (o Core..:? "maxCompensation")
            Core.<*> (o Core..:? "minCompensation")
      )

instance Core.ToJSON CompensationRange where
  toJSON CompensationRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxCompensation" Core..=)
              Core.<$> maxCompensation,
            ("minCompensation" Core..=)
              Core.<$> minCompensation
          ]
      )

-- | Response of auto-complete query.
--
-- /See:/ 'newCompleteQueryResponse' smart constructor.
data CompleteQueryResponse = CompleteQueryResponse
  { -- | Results of the matching job\/company candidates.
    completionResults :: (Core.Maybe [CompletionResult]),
    -- | Additional information for the API invocation, such as the request tracking id.
    metadata :: (Core.Maybe ResponseMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompleteQueryResponse' with the minimum fields required to make a request.
newCompleteQueryResponse ::
  CompleteQueryResponse
newCompleteQueryResponse =
  CompleteQueryResponse
    { completionResults = Core.Nothing,
      metadata = Core.Nothing
    }

instance Core.FromJSON CompleteQueryResponse where
  parseJSON =
    Core.withObject
      "CompleteQueryResponse"
      ( \o ->
          CompleteQueryResponse
            Core.<$> (o Core..:? "completionResults" Core..!= Core.mempty)
            Core.<*> (o Core..:? "metadata")
      )

instance Core.ToJSON CompleteQueryResponse where
  toJSON CompleteQueryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("completionResults" Core..=)
              Core.<$> completionResults,
            ("metadata" Core..=) Core.<$> metadata
          ]
      )

-- | Resource that represents completion results.
--
-- /See:/ 'newCompletionResult' smart constructor.
data CompletionResult = CompletionResult
  { -- | The URI of the company image for COMPANY_NAME.
    imageUri :: (Core.Maybe Core.Text),
    -- | The suggestion for the query.
    suggestion :: (Core.Maybe Core.Text),
    -- | The completion topic.
    type' :: (Core.Maybe CompletionResult_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CompletionResult' with the minimum fields required to make a request.
newCompletionResult ::
  CompletionResult
newCompletionResult =
  CompletionResult
    { imageUri = Core.Nothing,
      suggestion = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON CompletionResult where
  parseJSON =
    Core.withObject
      "CompletionResult"
      ( \o ->
          CompletionResult
            Core.<$> (o Core..:? "imageUri")
            Core.<*> (o Core..:? "suggestion")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON CompletionResult where
  toJSON CompletionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageUri" Core..=) Core.<$> imageUri,
            ("suggestion" Core..=) Core.<$> suggestion,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Custom attribute values that are either filterable or non-filterable.
--
-- /See:/ 'newCustomAttribute' smart constructor.
data CustomAttribute = CustomAttribute
  { -- | If the @filterable@ flag is true, the custom field values may be used for custom attribute filters JobQuery.custom/attribute/filter. If false, these values may not be used for custom attribute filters. Default is false.
    filterable :: (Core.Maybe Core.Bool),
    -- | If the @keyword_searchable@ flag is true, the keywords in custom fields are searchable by keyword match. If false, the values are not searchable by keyword match. Default is false.
    keywordSearchable :: (Core.Maybe Core.Bool),
    -- | Exactly one of string/values or long/values must be specified. This field is used to perform number range search. (@EQ@, @GT@, @GE@, @LE@, @LT@) over filterable @long_value@. Currently at most 1 long_values is supported.
    longValues :: (Core.Maybe [Core.Int64]),
    -- | Exactly one of string/values or long/values must be specified. This field is used to perform a string match (@CASE_SENSITIVE_MATCH@ or @CASE_INSENSITIVE_MATCH@) search. For filterable @string_value@s, a maximum total number of 200 values is allowed, with each @string_value@ has a byte size of no more than 500B. For unfilterable @string_values@, the maximum total byte size of unfilterable @string_values@ is 50KB. Empty string isn\'t allowed.
    stringValues :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomAttribute' with the minimum fields required to make a request.
newCustomAttribute ::
  CustomAttribute
newCustomAttribute =
  CustomAttribute
    { filterable = Core.Nothing,
      keywordSearchable = Core.Nothing,
      longValues = Core.Nothing,
      stringValues = Core.Nothing
    }

instance Core.FromJSON CustomAttribute where
  parseJSON =
    Core.withObject
      "CustomAttribute"
      ( \o ->
          CustomAttribute
            Core.<$> (o Core..:? "filterable")
            Core.<*> (o Core..:? "keywordSearchable")
            Core.<*> (o Core..:? "longValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "stringValues" Core..!= Core.mempty)
      )

instance Core.ToJSON CustomAttribute where
  toJSON CustomAttribute {..} =
    Core.object
      ( Core.catMaybes
          [ ("filterable" Core..=) Core.<$> filterable,
            ("keywordSearchable" Core..=)
              Core.<$> keywordSearchable,
            ("longValues" Core..=) Core.<$> longValues,
            ("stringValues" Core..=) Core.<$> stringValues
          ]
      )

-- | Custom ranking information for SearchJobsRequest.
--
-- /See:/ 'newCustomRankingInfo' smart constructor.
data CustomRankingInfo = CustomRankingInfo
  { -- | Required. Controls over how important the score of CustomRankingInfo.ranking_expression gets applied to job\'s final ranking position. An error is thrown if not specified.
    importanceLevel :: (Core.Maybe CustomRankingInfo_ImportanceLevel),
    -- | Required. Controls over how job documents get ranked on top of existing relevance score (determined by API algorithm). A combination of the ranking expression and relevance score is used to determine job\'s final ranking position. The syntax for this expression is a subset of Google SQL syntax. Supported operators are: +, -, *, \/, where the left and right side of the operator is either a numeric Job.custom_attributes key, integer\/double value or an expression that can be evaluated to a number. Parenthesis are supported to adjust calculation precedence. The expression must be \< 200 characters in length. The expression is considered invalid for a job if the expression references custom attributes that are not populated on the job or if the expression results in a divide by zero. If an expression is invalid for a job, that job is demoted to the end of the results. Sample ranking expression (year + 25) * 0.25 - (freshness \/ 0.5)
    rankingExpression :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomRankingInfo' with the minimum fields required to make a request.
newCustomRankingInfo ::
  CustomRankingInfo
newCustomRankingInfo =
  CustomRankingInfo
    { importanceLevel = Core.Nothing,
      rankingExpression = Core.Nothing
    }

instance Core.FromJSON CustomRankingInfo where
  parseJSON =
    Core.withObject
      "CustomRankingInfo"
      ( \o ->
          CustomRankingInfo
            Core.<$> (o Core..:? "importanceLevel")
            Core.<*> (o Core..:? "rankingExpression")
      )

instance Core.ToJSON CustomRankingInfo where
  toJSON CustomRankingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("importanceLevel" Core..=)
              Core.<$> importanceLevel,
            ("rankingExpression" Core..=)
              Core.<$> rankingExpression
          ]
      )

-- | Device information collected from the job seeker, candidate, or other entity conducting the job search. Providing this information improves the quality of the search results across devices.
--
-- /See:/ 'newDeviceInfo' smart constructor.
data DeviceInfo = DeviceInfo
  { -- | Type of the device.
    deviceType :: (Core.Maybe DeviceInfo_DeviceType),
    -- | A device-specific ID. The ID must be a unique identifier that distinguishes the device from other devices.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceInfo' with the minimum fields required to make a request.
newDeviceInfo ::
  DeviceInfo
newDeviceInfo = DeviceInfo {deviceType = Core.Nothing, id = Core.Nothing}

instance Core.FromJSON DeviceInfo where
  parseJSON =
    Core.withObject
      "DeviceInfo"
      ( \o ->
          DeviceInfo
            Core.<$> (o Core..:? "deviceType") Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON DeviceInfo where
  toJSON DeviceInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceType" Core..=) Core.<$> deviceType,
            ("id" Core..=) Core.<$> id
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | The histogram request.
--
-- /See:/ 'newHistogramQuery' smart constructor.
newtype HistogramQuery = HistogramQuery
  { -- | An expression specifies a histogram request against matching jobs for searches. See SearchJobsRequest.histogram_queries for details about syntax.
    histogramQuery :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistogramQuery' with the minimum fields required to make a request.
newHistogramQuery ::
  HistogramQuery
newHistogramQuery = HistogramQuery {histogramQuery = Core.Nothing}

instance Core.FromJSON HistogramQuery where
  parseJSON =
    Core.withObject
      "HistogramQuery"
      ( \o ->
          HistogramQuery
            Core.<$> (o Core..:? "histogramQuery")
      )

instance Core.ToJSON HistogramQuery where
  toJSON HistogramQuery {..} =
    Core.object
      ( Core.catMaybes
          [("histogramQuery" Core..=) Core.<$> histogramQuery]
      )

-- | Histogram result that matches HistogramQuery specified in searches.
--
-- /See:/ 'newHistogramQueryResult' smart constructor.
data HistogramQueryResult = HistogramQueryResult
  { -- | A map from the values of the facet associated with distinct values to the number of matching entries with corresponding value. The key format is: * (for string histogram) string values stored in the field. * (for named numeric bucket) name specified in @bucket()@ function, like for @bucket(0, MAX, \"non-negative\")@, the key will be @non-negative@. * (for anonymous numeric bucket) range formatted as @-@, for example, @0-1000@, @MIN-0@, and @0-MAX@.
    histogram :: (Core.Maybe HistogramQueryResult_Histogram),
    -- | Requested histogram expression.
    histogramQuery :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistogramQueryResult' with the minimum fields required to make a request.
newHistogramQueryResult ::
  HistogramQueryResult
newHistogramQueryResult =
  HistogramQueryResult {histogram = Core.Nothing, histogramQuery = Core.Nothing}

instance Core.FromJSON HistogramQueryResult where
  parseJSON =
    Core.withObject
      "HistogramQueryResult"
      ( \o ->
          HistogramQueryResult
            Core.<$> (o Core..:? "histogram")
            Core.<*> (o Core..:? "histogramQuery")
      )

instance Core.ToJSON HistogramQueryResult where
  toJSON HistogramQueryResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("histogram" Core..=) Core.<$> histogram,
            ("histogramQuery" Core..=) Core.<$> histogramQuery
          ]
      )

-- | A map from the values of the facet associated with distinct values to the number of matching entries with corresponding value. The key format is: * (for string histogram) string values stored in the field. * (for named numeric bucket) name specified in @bucket()@ function, like for @bucket(0, MAX, \"non-negative\")@, the key will be @non-negative@. * (for anonymous numeric bucket) range formatted as @-@, for example, @0-1000@, @MIN-0@, and @0-MAX@.
--
-- /See:/ 'newHistogramQueryResult_Histogram' smart constructor.
newtype HistogramQueryResult_Histogram = HistogramQueryResult_Histogram
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistogramQueryResult_Histogram' with the minimum fields required to make a request.
newHistogramQueryResult_Histogram ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Int64 ->
  HistogramQueryResult_Histogram
newHistogramQueryResult_Histogram addtional =
  HistogramQueryResult_Histogram {addtional = addtional}

instance Core.FromJSON HistogramQueryResult_Histogram where
  parseJSON =
    Core.withObject
      "HistogramQueryResult_Histogram"
      ( \o ->
          HistogramQueryResult_Histogram
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HistogramQueryResult_Histogram where
  toJSON HistogramQueryResult_Histogram {..} =
    Core.toJSON addtional

-- | A Job resource represents a job posting (also referred to as a \"job listing\" or \"job requisition\"). A job belongs to a Company, which is the hiring entity responsible for the job.
--
-- /See:/ 'newJob' smart constructor.
data Job = Job
  { -- | Strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition/ids (e.g. \'ReqA\' becomes \'ReqA-1\', \'ReqA-2\', and so on.) as multiple jobs with the same company, language/code and requisition/id are not allowed. If the original requisition/id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses \"1600 Amphitheatre Parkway, Mountain View, CA, USA\" and \"London, UK\" may not
    -- have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
    addresses :: (Core.Maybe [Core.Text]),
    -- | Job application information.
    applicationInfo :: (Core.Maybe ApplicationInfo),
    -- | Required. The resource name of the company listing the job. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\". For example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
    company :: (Core.Maybe Core.Text),
    -- | Output only. Display name of the company listing the job.
    companyDisplayName :: (Core.Maybe Core.Text),
    -- | Job compensation information (a.k.a. \"pay rate\") i.e., the compensation that will paid to the employee.
    compensationInfo :: (Core.Maybe CompensationInfo),
    -- | A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: @a-zA-Z*@. For example, key0LikeThis or KEY/1/LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable @string_values@, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable @string_values@, the maximum total size of @string_values@ across all keys is 50KB.
    customAttributes :: (Core.Maybe Job_CustomAttributes),
    -- | The desired education degrees for the job, such as Bachelors, Masters.
    degreeTypes :: (Core.Maybe [Job_DegreeTypesItem]),
    -- | The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
    department :: (Core.Maybe Core.Text),
    -- | Output only. Derived details about the job posting.
    derivedInfo :: (Core.Maybe JobDerivedInfo),
    -- | Required. The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
    description :: (Core.Maybe Core.Text),
    -- | The employment type(s) of a job, for example, full time or part time.
    employmentTypes :: (Core.Maybe [Job_EmploymentTypesItem]),
    -- | A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
    incentives :: (Core.Maybe Core.Text),
    -- | The benefits included with the job.
    jobBenefits :: (Core.Maybe [Job_JobBenefitsItem]),
    -- | The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
    jobEndTime :: (Core.Maybe Core.DateTime'),
    -- | The experience level associated with the job, such as \"Entry Level\".
    jobLevel :: (Core.Maybe Job_JobLevel),
    -- | The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
    jobStartTime :: (Core.Maybe Core.DateTime'),
    -- | The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as \"en-US\" or \"sr-Latn\". For more information, see <https://tools.ietf.org/html/bcp47 Tags for Identifying Languages>{: class=\"external\" target=\"/blank\" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to \'en/US\'.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/jobs\/{job/id}\". For example, \"projects\/foo\/tenants\/bar\/jobs\/baz\". Use of this field in job queries and API calls is preferred over the use of requisition/id since this value is unique.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The timestamp when this job posting was created.
    postingCreateTime :: (Core.Maybe Core.DateTime'),
    -- | Strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can\'t be listed by the ListJobs API, but it can be retrieved with the GetJob API or updated with the UpdateJob API or deleted with the DeleteJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company, language/code and requisition/id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum number of open jobs over previous 7 days. If this threshold is exceeded, expired jobs are cleaned out in order of earliest expire time. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. If the timestamp is before the instant request is made,
    -- the job is treated as expired immediately on creation. This kind of job can not be updated. And when creating a job with past timestamp, the posting/publish/time must be set before posting/expire/time. The purpose of this feature is to allow other objects, such as Application, to refer a job that didn\'t exist in the system prior to becoming expired. If you want to modify a job that was expired on creation, delete it and create a new one. If this value isn\'t provided at the time of job creation or is invalid, the job posting expires after 30 days from the job\'s creation time. For example, if the job was created on 2017\/01\/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017\/01\/31 13:00AM UTC. If this value isn\'t provided on job update, it depends on the field masks set by UpdateJobRequest.update/mask. If the field masks include job/end_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job\'s last update time.
    -- Otherwise the expiration date isn\'t updated.
    postingExpireTime :: (Core.Maybe Core.DateTime'),
    -- | The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
    postingPublishTime :: (Core.Maybe Core.DateTime'),
    -- | The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn\'t specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
    postingRegion :: (Core.Maybe Job_PostingRegion),
    -- | Output only. The timestamp when this job posting was last updated.
    postingUpdateTime :: (Core.Maybe Core.DateTime'),
    -- | Options for job processing.
    processingOptions :: (Core.Maybe ProcessingOptions),
    -- | A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue >0 are returned in a FEATURED/JOB/SEARCH. Default value is 0, and negative values are treated as 0.
    promotionValue :: (Core.Maybe Core.Int32),
    -- | A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
    qualifications :: (Core.Maybe Core.Text),
    -- | Required. The requisition ID, also referred to as the posting ID, is assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job isn\'t allowed to be created if there is another job with the same company, language/code and requisition/id. The maximum number of allowed characters is 255.
    requisitionId :: (Core.Maybe Core.Text),
    -- | A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
    responsibilities :: (Core.Maybe Core.Text),
    -- | Required. The title of the job, such as \"Software Engineer\" The maximum number of allowed characters is 500.
    title :: (Core.Maybe Core.Text),
    -- | Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
    visibility :: (Core.Maybe Job_Visibility)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
newJob ::
  Job
newJob =
  Job
    { addresses = Core.Nothing,
      applicationInfo = Core.Nothing,
      company = Core.Nothing,
      companyDisplayName = Core.Nothing,
      compensationInfo = Core.Nothing,
      customAttributes = Core.Nothing,
      degreeTypes = Core.Nothing,
      department = Core.Nothing,
      derivedInfo = Core.Nothing,
      description = Core.Nothing,
      employmentTypes = Core.Nothing,
      incentives = Core.Nothing,
      jobBenefits = Core.Nothing,
      jobEndTime = Core.Nothing,
      jobLevel = Core.Nothing,
      jobStartTime = Core.Nothing,
      languageCode = Core.Nothing,
      name = Core.Nothing,
      postingCreateTime = Core.Nothing,
      postingExpireTime = Core.Nothing,
      postingPublishTime = Core.Nothing,
      postingRegion = Core.Nothing,
      postingUpdateTime = Core.Nothing,
      processingOptions = Core.Nothing,
      promotionValue = Core.Nothing,
      qualifications = Core.Nothing,
      requisitionId = Core.Nothing,
      responsibilities = Core.Nothing,
      title = Core.Nothing,
      visibility = Core.Nothing
    }

instance Core.FromJSON Job where
  parseJSON =
    Core.withObject
      "Job"
      ( \o ->
          Job
            Core.<$> (o Core..:? "addresses" Core..!= Core.mempty)
            Core.<*> (o Core..:? "applicationInfo")
            Core.<*> (o Core..:? "company")
            Core.<*> (o Core..:? "companyDisplayName")
            Core.<*> (o Core..:? "compensationInfo")
            Core.<*> (o Core..:? "customAttributes")
            Core.<*> (o Core..:? "degreeTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "department")
            Core.<*> (o Core..:? "derivedInfo")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "employmentTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "incentives")
            Core.<*> (o Core..:? "jobBenefits" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jobEndTime")
            Core.<*> (o Core..:? "jobLevel")
            Core.<*> (o Core..:? "jobStartTime")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "postingCreateTime")
            Core.<*> (o Core..:? "postingExpireTime")
            Core.<*> (o Core..:? "postingPublishTime")
            Core.<*> (o Core..:? "postingRegion")
            Core.<*> (o Core..:? "postingUpdateTime")
            Core.<*> (o Core..:? "processingOptions")
            Core.<*> (o Core..:? "promotionValue")
            Core.<*> (o Core..:? "qualifications")
            Core.<*> (o Core..:? "requisitionId")
            Core.<*> (o Core..:? "responsibilities")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "visibility")
      )

instance Core.ToJSON Job where
  toJSON Job {..} =
    Core.object
      ( Core.catMaybes
          [ ("addresses" Core..=) Core.<$> addresses,
            ("applicationInfo" Core..=) Core.<$> applicationInfo,
            ("company" Core..=) Core.<$> company,
            ("companyDisplayName" Core..=)
              Core.<$> companyDisplayName,
            ("compensationInfo" Core..=)
              Core.<$> compensationInfo,
            ("customAttributes" Core..=)
              Core.<$> customAttributes,
            ("degreeTypes" Core..=) Core.<$> degreeTypes,
            ("department" Core..=) Core.<$> department,
            ("derivedInfo" Core..=) Core.<$> derivedInfo,
            ("description" Core..=) Core.<$> description,
            ("employmentTypes" Core..=) Core.<$> employmentTypes,
            ("incentives" Core..=) Core.<$> incentives,
            ("jobBenefits" Core..=) Core.<$> jobBenefits,
            ("jobEndTime" Core..=) Core.<$> jobEndTime,
            ("jobLevel" Core..=) Core.<$> jobLevel,
            ("jobStartTime" Core..=) Core.<$> jobStartTime,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("name" Core..=) Core.<$> name,
            ("postingCreateTime" Core..=)
              Core.<$> postingCreateTime,
            ("postingExpireTime" Core..=)
              Core.<$> postingExpireTime,
            ("postingPublishTime" Core..=)
              Core.<$> postingPublishTime,
            ("postingRegion" Core..=) Core.<$> postingRegion,
            ("postingUpdateTime" Core..=)
              Core.<$> postingUpdateTime,
            ("processingOptions" Core..=)
              Core.<$> processingOptions,
            ("promotionValue" Core..=) Core.<$> promotionValue,
            ("qualifications" Core..=) Core.<$> qualifications,
            ("requisitionId" Core..=) Core.<$> requisitionId,
            ("responsibilities" Core..=)
              Core.<$> responsibilities,
            ("title" Core..=) Core.<$> title,
            ("visibility" Core..=) Core.<$> visibility
          ]
      )

-- | A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: @a-zA-Z*@. For example, key0LikeThis or KEY/1/LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable @string_values@, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable @string_values@, the maximum total size of @string_values@ across all keys is 50KB.
--
-- /See:/ 'newJob_CustomAttributes' smart constructor.
newtype Job_CustomAttributes = Job_CustomAttributes
  { -- |
    addtional :: (Core.HashMap Core.Text CustomAttribute)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job_CustomAttributes' with the minimum fields required to make a request.
newJob_CustomAttributes ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text CustomAttribute ->
  Job_CustomAttributes
newJob_CustomAttributes addtional = Job_CustomAttributes {addtional = addtional}

instance Core.FromJSON Job_CustomAttributes where
  parseJSON =
    Core.withObject
      "Job_CustomAttributes"
      ( \o ->
          Job_CustomAttributes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Job_CustomAttributes where
  toJSON Job_CustomAttributes {..} =
    Core.toJSON addtional

-- | Derived details about the job posting.
--
-- /See:/ 'newJobDerivedInfo' smart constructor.
data JobDerivedInfo = JobDerivedInfo
  { -- | Job categories derived from Job.title and Job.description.
    jobCategories :: (Core.Maybe [JobDerivedInfo_JobCategoriesItem]),
    -- | Structured locations of the job, resolved from Job.addresses. locations are exactly matched to Job.addresses in the same order.
    locations :: (Core.Maybe [Location])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobDerivedInfo' with the minimum fields required to make a request.
newJobDerivedInfo ::
  JobDerivedInfo
newJobDerivedInfo =
  JobDerivedInfo {jobCategories = Core.Nothing, locations = Core.Nothing}

instance Core.FromJSON JobDerivedInfo where
  parseJSON =
    Core.withObject
      "JobDerivedInfo"
      ( \o ->
          JobDerivedInfo
            Core.<$> (o Core..:? "jobCategories" Core..!= Core.mempty)
            Core.<*> (o Core..:? "locations" Core..!= Core.mempty)
      )

instance Core.ToJSON JobDerivedInfo where
  toJSON JobDerivedInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobCategories" Core..=) Core.<$> jobCategories,
            ("locations" Core..=) Core.<$> locations
          ]
      )

-- | An event issued when a job seeker interacts with the application that implements Cloud Talent Solution.
--
-- /See:/ 'newJobEvent' smart constructor.
data JobEvent = JobEvent
  { -- | Required. The job name(s) associated with this event. For example, if this is an impression event, this field contains the identifiers of all jobs shown to the job seeker. If this was a view event, this field contains the identifier of the viewed job. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/jobs\/{job_id}\", for example, \"projects\/foo\/tenants\/bar\/jobs\/baz\".
    jobs :: (Core.Maybe [Core.Text]),
    -- | Required. The type of the event (see JobEventType).
    type' :: (Core.Maybe JobEvent_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobEvent' with the minimum fields required to make a request.
newJobEvent ::
  JobEvent
newJobEvent = JobEvent {jobs = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON JobEvent where
  parseJSON =
    Core.withObject
      "JobEvent"
      ( \o ->
          JobEvent
            Core.<$> (o Core..:? "jobs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON JobEvent where
  toJSON JobEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobs" Core..=) Core.<$> jobs,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The query required to perform a search query.
--
-- /See:/ 'newJobQuery' smart constructor.
data JobQuery = JobQuery
  { -- | Allows filtering jobs by commute time with different travel methods (for example, driving or public transit). Note: This only works when you specify a CommuteMethod. In this case, location_filters is ignored. Currently we don\'t support sorting by commute time.
    commuteFilter :: (Core.Maybe CommuteFilter),
    -- | This filter specifies the company entities to search against. If a value isn\'t specified, jobs are searched for against all companies. If multiple values are specified, jobs are searched against the companies specified. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\". For example, \"projects\/foo\/tenants\/bar\/companies\/baz\". At most 20 company filters are allowed.
    companies :: (Core.Maybe [Core.Text]),
    -- | This filter specifies the company Company.display/name of the jobs to search against. The company name must match the value exactly. Alternatively, if the value being searched for is wrapped in SUBSTRING/MATCH([value]), the company name must contain a case insensitive substring match of the value. Using this function may increase latency. Sample Value: SUBSTRING_MATCH(google) If a value isn\'t specified, jobs within the search results are associated with any company. If multiple values are specified, jobs within the search results may be associated with any of the specified companies. At most 20 company display name filters are allowed.
    companyDisplayNames :: (Core.Maybe [Core.Text]),
    -- | This search filter is applied only to Job.compensation_info. For example, if the filter is specified as \"Hourly job with per-hour compensation > $15\", only jobs meeting these criteria are searched. If a filter isn\'t defined, all open jobs are searched.
    compensationFilter :: (Core.Maybe CompensationFilter),
    -- | This filter specifies a structured syntax to match against the Job.custom_attributes marked as @filterable@. The syntax for this expression is a subset of SQL syntax. Supported operators are: @=@, @!=@, @\<@, @\<=@, @>@, and @>=@ where the left of the operator is a custom field key and the right of the operator is a number or a quoted string. You must escape backslash (\\) and quote (\") characters. Supported functions are @LOWER([field_name])@ to perform a case insensitive match and @EMPTY([field_name])@ to filter on the existence of a key. Boolean expressions (AND\/OR\/NOT) are supported up to 3 levels of nesting (for example, \"((A AND B AND C) OR NOT D) AND E\"), a maximum of 100 comparisons or functions are allowed in the expression. The expression must be \< 10000 bytes in length. Sample Query: @(LOWER(driving_license)=\"class \\\"a\\\"\" OR EMPTY(driving_license)) AND driving_years > 10@
    customAttributeFilter :: (Core.Maybe Core.Text),
    -- | This flag controls the spell-check feature. If false, the service attempts to correct a misspelled query, for example, \"enginee\" is corrected to \"engineer\". Defaults to false: a spell check is performed.
    disableSpellCheck :: (Core.Maybe Core.Bool),
    -- | The employment type filter specifies the employment type of jobs to search against, such as EmploymentType.FULL_TIME. If a value isn\'t specified, jobs in the search results includes any employment type. If multiple values are specified, jobs in the search results include any of the specified employment types.
    employmentTypes :: (Core.Maybe [JobQuery_EmploymentTypesItem]),
    -- | This filter specifies a list of job names to be excluded during search. At most 400 excluded job names are allowed.
    excludedJobs :: (Core.Maybe [Core.Text]),
    -- | The category filter specifies the categories of jobs to search against. See JobCategory for more information. If a value isn\'t specified, jobs from any category are searched against. If multiple values are specified, jobs from any of the specified categories are searched against.
    jobCategories :: (Core.Maybe [JobQuery_JobCategoriesItem]),
    -- | This filter specifies the locale of jobs to search against, for example, \"en-US\". If a value isn\'t specified, the search results can contain jobs in any locale. Language codes should be in BCP-47 format, such as \"en-US\" or \"sr-Latn\". For more information, see <https://tools.ietf.org/html/bcp47 Tags for Identifying Languages>. At most 10 language code filters are allowed.
    languageCodes :: (Core.Maybe [Core.Text]),
    -- | The location filter specifies geo-regions containing the jobs to search against. See LocationFilter for more information. If a location value isn\'t specified, jobs fitting the other search criteria are retrieved regardless of where they\'re located. If multiple values are specified, jobs are retrieved from any of the specified locations. If different values are specified for the LocationFilter.distance/in/miles parameter, the maximum provided distance is used for all locations. At most 5 location filters are allowed.
    locationFilters :: (Core.Maybe [LocationFilter]),
    -- | Jobs published within a range specified by this filter are searched against.
    publishTimeRange :: (Core.Maybe TimestampRange),
    -- | The query string that matches against the job title, description, and location fields. The maximum number of allowed characters is 255.
    query :: (Core.Maybe Core.Text),
    -- | The language code of query. For example, \"en-US\". This field helps to better interpret the query. If a value isn\'t specified, the query language code is automatically detected, which may not be accurate. Language code should be in BCP-47 format, such as \"en-US\" or \"sr-Latn\". For more information, see <https://tools.ietf.org/html/bcp47 Tags for Identifying Languages>.
    queryLanguageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobQuery' with the minimum fields required to make a request.
newJobQuery ::
  JobQuery
newJobQuery =
  JobQuery
    { commuteFilter = Core.Nothing,
      companies = Core.Nothing,
      companyDisplayNames = Core.Nothing,
      compensationFilter = Core.Nothing,
      customAttributeFilter = Core.Nothing,
      disableSpellCheck = Core.Nothing,
      employmentTypes = Core.Nothing,
      excludedJobs = Core.Nothing,
      jobCategories = Core.Nothing,
      languageCodes = Core.Nothing,
      locationFilters = Core.Nothing,
      publishTimeRange = Core.Nothing,
      query = Core.Nothing,
      queryLanguageCode = Core.Nothing
    }

instance Core.FromJSON JobQuery where
  parseJSON =
    Core.withObject
      "JobQuery"
      ( \o ->
          JobQuery
            Core.<$> (o Core..:? "commuteFilter")
            Core.<*> (o Core..:? "companies" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "companyDisplayNames"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "compensationFilter")
            Core.<*> (o Core..:? "customAttributeFilter")
            Core.<*> (o Core..:? "disableSpellCheck")
            Core.<*> (o Core..:? "employmentTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "excludedJobs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jobCategories" Core..!= Core.mempty)
            Core.<*> (o Core..:? "languageCodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "locationFilters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "publishTimeRange")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "queryLanguageCode")
      )

instance Core.ToJSON JobQuery where
  toJSON JobQuery {..} =
    Core.object
      ( Core.catMaybes
          [ ("commuteFilter" Core..=) Core.<$> commuteFilter,
            ("companies" Core..=) Core.<$> companies,
            ("companyDisplayNames" Core..=)
              Core.<$> companyDisplayNames,
            ("compensationFilter" Core..=)
              Core.<$> compensationFilter,
            ("customAttributeFilter" Core..=)
              Core.<$> customAttributeFilter,
            ("disableSpellCheck" Core..=)
              Core.<$> disableSpellCheck,
            ("employmentTypes" Core..=) Core.<$> employmentTypes,
            ("excludedJobs" Core..=) Core.<$> excludedJobs,
            ("jobCategories" Core..=) Core.<$> jobCategories,
            ("languageCodes" Core..=) Core.<$> languageCodes,
            ("locationFilters" Core..=) Core.<$> locationFilters,
            ("publishTimeRange" Core..=)
              Core.<$> publishTimeRange,
            ("query" Core..=) Core.<$> query,
            ("queryLanguageCode" Core..=)
              Core.<$> queryLanguageCode
          ]
      )

-- | Mutation result of a job from a batch operation.
--
-- /See:/ 'newJobResult' smart constructor.
data JobResult = JobResult
  { -- | Here Job only contains basic information including name, company, language/code and requisition/id, use getJob method to retrieve detailed information of the created\/updated job.
    job :: (Core.Maybe Job),
    -- | The status of the job processed. This field is populated if the processing of the job fails.
    status :: (Core.Maybe Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobResult' with the minimum fields required to make a request.
newJobResult ::
  JobResult
newJobResult = JobResult {job = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON JobResult where
  parseJSON =
    Core.withObject
      "JobResult"
      ( \o ->
          JobResult
            Core.<$> (o Core..:? "job") Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON JobResult where
  toJSON JobResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("job" Core..=) Core.<$> job,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | An object that represents a latitude\/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
  { -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng ::
  LatLng
newLatLng = LatLng {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON LatLng where
  parseJSON =
    Core.withObject
      "LatLng"
      ( \o ->
          LatLng
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON LatLng where
  toJSON LatLng {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | The List companies response object.
--
-- /See:/ 'newListCompaniesResponse' smart constructor.
data ListCompaniesResponse = ListCompaniesResponse
  { -- | Companies for the current client.
    companies :: (Core.Maybe [Company]),
    -- | Additional information for the API invocation, such as the request tracking id.
    metadata :: (Core.Maybe ResponseMetadata),
    -- | A token to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCompaniesResponse' with the minimum fields required to make a request.
newListCompaniesResponse ::
  ListCompaniesResponse
newListCompaniesResponse =
  ListCompaniesResponse
    { companies = Core.Nothing,
      metadata = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListCompaniesResponse where
  parseJSON =
    Core.withObject
      "ListCompaniesResponse"
      ( \o ->
          ListCompaniesResponse
            Core.<$> (o Core..:? "companies" Core..!= Core.mempty)
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListCompaniesResponse where
  toJSON ListCompaniesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("companies" Core..=) Core.<$> companies,
            ("metadata" Core..=) Core.<$> metadata,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | List jobs response.
--
-- /See:/ 'newListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse
  { -- | The Jobs for a given company. The maximum number of items returned is based on the limit field provided in the request.
    jobs :: (Core.Maybe [Job]),
    -- | Additional information for the API invocation, such as the request tracking id.
    metadata :: (Core.Maybe ResponseMetadata),
    -- | A token to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
newListJobsResponse ::
  ListJobsResponse
newListJobsResponse =
  ListJobsResponse
    { jobs = Core.Nothing,
      metadata = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListJobsResponse where
  parseJSON =
    Core.withObject
      "ListJobsResponse"
      ( \o ->
          ListJobsResponse
            Core.<$> (o Core..:? "jobs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListJobsResponse where
  toJSON ListJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobs" Core..=) Core.<$> jobs,
            ("metadata" Core..=) Core.<$> metadata,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The List tenants response object.
--
-- /See:/ 'newListTenantsResponse' smart constructor.
data ListTenantsResponse = ListTenantsResponse
  { -- | Additional information for the API invocation, such as the request tracking id.
    metadata :: (Core.Maybe ResponseMetadata),
    -- | A token to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Tenants for the current client.
    tenants :: (Core.Maybe [Tenant])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTenantsResponse' with the minimum fields required to make a request.
newListTenantsResponse ::
  ListTenantsResponse
newListTenantsResponse =
  ListTenantsResponse
    { metadata = Core.Nothing,
      nextPageToken = Core.Nothing,
      tenants = Core.Nothing
    }

instance Core.FromJSON ListTenantsResponse where
  parseJSON =
    Core.withObject
      "ListTenantsResponse"
      ( \o ->
          ListTenantsResponse
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "tenants" Core..!= Core.mempty)
      )

instance Core.ToJSON ListTenantsResponse where
  toJSON ListTenantsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("tenants" Core..=) Core.<$> tenants
          ]
      )

-- | A resource that represents a location with full geographic information.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | An object representing a latitude\/longitude pair.
    latLng :: (Core.Maybe LatLng),
    -- | The type of a location, which corresponds to the address lines field of google.type.PostalAddress. For example, \"Downtown, Atlanta, GA, USA\" has a type of LocationType.NEIGHBORHOOD, and \"Kansas City, KS, USA\" has a type of LocationType.LOCALITY.
    locationType :: (Core.Maybe Location_LocationType),
    -- | Postal address of the location that includes human readable information, such as postal delivery and payments addresses. Given a postal address, a postal service can deliver items to a premises, P.O. Box, or other delivery location.
    postalAddress :: (Core.Maybe PostalAddress),
    -- | Radius in miles of the job location. This value is derived from the location bounding box in which a circle with the specified radius centered from google.type.LatLng covers the area associated with the job location. For example, currently, \"Mountain View, CA, USA\" has a radius of 6.17 miles.
    radiusMiles :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { latLng = Core.Nothing,
      locationType = Core.Nothing,
      postalAddress = Core.Nothing,
      radiusMiles = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "latLng")
            Core.<*> (o Core..:? "locationType")
            Core.<*> (o Core..:? "postalAddress")
            Core.<*> (o Core..:? "radiusMiles")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("latLng" Core..=) Core.<$> latLng,
            ("locationType" Core..=) Core.<$> locationType,
            ("postalAddress" Core..=) Core.<$> postalAddress,
            ("radiusMiles" Core..=) Core.<$> radiusMiles
          ]
      )

-- | Geographic region of the search.
--
-- /See:/ 'newLocationFilter' smart constructor.
data LocationFilter = LocationFilter
  { -- | The address name, such as \"Mountain View\" or \"Bay Area\".
    address :: (Core.Maybe Core.Text),
    -- | The distance/in/miles is applied when the location being searched for is identified as a city or smaller. This field is ignored if the location being searched for is a state or larger.
    distanceInMiles :: (Core.Maybe Core.Double),
    -- | The latitude and longitude of the geographic center to search from. This field is ignored if @address@ is provided.
    latLng :: (Core.Maybe LatLng),
    -- | CLDR region code of the country\/region. This field may be used in two ways: 1) If telecommute preference is not set, this field is used address ambiguity of the user-input address. For example, \"Liverpool\" may refer to \"Liverpool, NY, US\" or \"Liverpool, UK\". This region code biases the address resolution toward a specific country or territory. If this field is not set, address resolution is biased toward the United States by default. 2) If telecommute preference is set to TELECOMMUTE/ALLOWED, the telecommute location filter will be limited to the region specified in this field. If this field is not set, the telecommute job locations will not be See https:\/\/unicode-org.github.io\/cldr-staging\/charts\/latest\/supplemental\/territory/information.html for details. Example: \"CH\" for Switzerland.
    regionCode :: (Core.Maybe Core.Text),
    -- | Allows the client to return jobs without a set location, specifically, telecommuting jobs (telecommuting is considered by the service as a special location. Job.posting/region indicates if a job permits telecommuting. If this field is set to TelecommutePreference.TELECOMMUTE/ALLOWED, telecommuting jobs are searched, and address and lat/lng are ignored. If not set or set to TelecommutePreference.TELECOMMUTE/EXCLUDED, telecommute job are not searched. This filter can be used by itself to search exclusively for telecommuting jobs, or it can be combined with another location filter to search for a combination of job locations, such as \"Mountain View\" or \"telecommuting\" jobs. However, when used in combination with other location filters, telecommuting jobs can be treated as less relevant than other jobs in the search response. This field is only used for job search requests.
    telecommutePreference :: (Core.Maybe LocationFilter_TelecommutePreference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationFilter' with the minimum fields required to make a request.
newLocationFilter ::
  LocationFilter
newLocationFilter =
  LocationFilter
    { address = Core.Nothing,
      distanceInMiles = Core.Nothing,
      latLng = Core.Nothing,
      regionCode = Core.Nothing,
      telecommutePreference = Core.Nothing
    }

instance Core.FromJSON LocationFilter where
  parseJSON =
    Core.withObject
      "LocationFilter"
      ( \o ->
          LocationFilter
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "distanceInMiles")
            Core.<*> (o Core..:? "latLng")
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "telecommutePreference")
      )

instance Core.ToJSON LocationFilter where
  toJSON LocationFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("distanceInMiles" Core..=) Core.<$> distanceInMiles,
            ("latLng" Core..=) Core.<$> latLng,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("telecommutePreference" Core..=)
              Core.<$> telecommutePreference
          ]
      )

-- | Job entry with metadata inside SearchJobsResponse.
--
-- /See:/ 'newMatchingJob' smart constructor.
data MatchingJob = MatchingJob
  { -- | Commute information which is generated based on specified CommuteFilter.
    commuteInfo :: (Core.Maybe CommuteInfo),
    -- | Job resource that matches the specified SearchJobsRequest.
    job :: (Core.Maybe Job),
    -- | A summary of the job with core information that\'s displayed on the search results listing page.
    jobSummary :: (Core.Maybe Core.Text),
    -- | Contains snippets of text from the Job.title field most closely matching a search query\'s keywords, if available. The matching query keywords are enclosed in HTML bold tags.
    jobTitleSnippet :: (Core.Maybe Core.Text),
    -- | Contains snippets of text from the Job.description and similar fields that most closely match a search query\'s keywords, if available. All HTML tags in the original fields are stripped when returned in this field, and matching query keywords are enclosed in HTML bold tags.
    searchTextSnippet :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MatchingJob' with the minimum fields required to make a request.
newMatchingJob ::
  MatchingJob
newMatchingJob =
  MatchingJob
    { commuteInfo = Core.Nothing,
      job = Core.Nothing,
      jobSummary = Core.Nothing,
      jobTitleSnippet = Core.Nothing,
      searchTextSnippet = Core.Nothing
    }

instance Core.FromJSON MatchingJob where
  parseJSON =
    Core.withObject
      "MatchingJob"
      ( \o ->
          MatchingJob
            Core.<$> (o Core..:? "commuteInfo")
            Core.<*> (o Core..:? "job")
            Core.<*> (o Core..:? "jobSummary")
            Core.<*> (o Core..:? "jobTitleSnippet")
            Core.<*> (o Core..:? "searchTextSnippet")
      )

instance Core.ToJSON MatchingJob where
  toJSON MatchingJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("commuteInfo" Core..=) Core.<$> commuteInfo,
            ("job" Core..=) Core.<$> job,
            ("jobSummary" Core..=) Core.<$> jobSummary,
            ("jobTitleSnippet" Core..=) Core.<$> jobTitleSnippet,
            ("searchTextSnippet" Core..=)
              Core.<$> searchTextSnippet
          ]
      )

-- | Message representing input to a Mendel server for debug forcing. See go\/mendel-debug-forcing for more details. Next ID: 2
--
-- /See:/ 'newMendelDebugInput' smart constructor.
newtype MendelDebugInput = MendelDebugInput
  { -- | When a request spans multiple servers, a MendelDebugInput may travel with the request and take effect in all the servers. This field is a map of namespaces to NamespacedMendelDebugInput protos. In a single server, up to two NamespacedMendelDebugInput protos are applied: 1. NamespacedMendelDebugInput with the global namespace (key == \"\"). 2. NamespacedMendelDebugInput with the server\'s namespace. When both NamespacedMendelDebugInput protos are present, they are merged. See go\/mendel-debug-forcing for more details.
    namespacedDebugInput :: (Core.Maybe MendelDebugInput_NamespacedDebugInput)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MendelDebugInput' with the minimum fields required to make a request.
newMendelDebugInput ::
  MendelDebugInput
newMendelDebugInput = MendelDebugInput {namespacedDebugInput = Core.Nothing}

instance Core.FromJSON MendelDebugInput where
  parseJSON =
    Core.withObject
      "MendelDebugInput"
      ( \o ->
          MendelDebugInput
            Core.<$> (o Core..:? "namespacedDebugInput")
      )

instance Core.ToJSON MendelDebugInput where
  toJSON MendelDebugInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("namespacedDebugInput" Core..=)
              Core.<$> namespacedDebugInput
          ]
      )

-- | When a request spans multiple servers, a MendelDebugInput may travel with the request and take effect in all the servers. This field is a map of namespaces to NamespacedMendelDebugInput protos. In a single server, up to two NamespacedMendelDebugInput protos are applied: 1. NamespacedMendelDebugInput with the global namespace (key == \"\"). 2. NamespacedMendelDebugInput with the server\'s namespace. When both NamespacedMendelDebugInput protos are present, they are merged. See go\/mendel-debug-forcing for more details.
--
-- /See:/ 'newMendelDebugInput_NamespacedDebugInput' smart constructor.
newtype MendelDebugInput_NamespacedDebugInput = MendelDebugInput_NamespacedDebugInput
  { -- |
    addtional :: (Core.HashMap Core.Text NamespacedDebugInput)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MendelDebugInput_NamespacedDebugInput' with the minimum fields required to make a request.
newMendelDebugInput_NamespacedDebugInput ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text NamespacedDebugInput ->
  MendelDebugInput_NamespacedDebugInput
newMendelDebugInput_NamespacedDebugInput addtional =
  MendelDebugInput_NamespacedDebugInput {addtional = addtional}

instance
  Core.FromJSON
    MendelDebugInput_NamespacedDebugInput
  where
  parseJSON =
    Core.withObject
      "MendelDebugInput_NamespacedDebugInput"
      ( \o ->
          MendelDebugInput_NamespacedDebugInput
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    MendelDebugInput_NamespacedDebugInput
  where
  toJSON MendelDebugInput_NamespacedDebugInput {..} =
    Core.toJSON addtional

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'newMoney' smart constructor.
data Money = Money
  { -- | The three-letter currency code defined in ISO 4217.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    nanos :: (Core.Maybe Core.Int32),
    -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    units :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
newMoney ::
  Money
newMoney =
  Money
    { currencyCode = Core.Nothing,
      nanos = Core.Nothing,
      units = Core.Nothing
    }

instance Core.FromJSON Money where
  parseJSON =
    Core.withObject
      "Money"
      ( \o ->
          Money
            Core.<$> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "units")
      )

instance Core.ToJSON Money where
  toJSON Money {..} =
    Core.object
      ( Core.catMaybes
          [ ("currencyCode" Core..=) Core.<$> currencyCode,
            ("nanos" Core..=) Core.<$> nanos,
            ("units" Core..=) Core.. Core.AsText Core.<$> units
          ]
      )

-- | Next ID: 15
--
-- /See:/ 'newNamespacedDebugInput' smart constructor.
data NamespacedDebugInput = NamespacedDebugInput
  { -- | Set of experiment names to be absolutely forced. These experiments will be forced without evaluating the conditions.
    absolutelyForcedExpNames :: (Core.Maybe [Core.Text]),
    -- | Set of experiment tags to be absolutely forced. The experiments with these tags will be forced without evaluating the conditions.
    absolutelyForcedExpTags :: (Core.Maybe [Core.Text]),
    -- | Set of experiment ids to be absolutely forced. These ids will be forced without evaluating the conditions.
    absolutelyForcedExps :: (Core.Maybe [Core.Int32]),
    -- | Set of experiment names to be conditionally forced. These experiments will be forced only if their conditions and their parent domain\'s conditions are true.
    conditionallyForcedExpNames :: (Core.Maybe [Core.Text]),
    -- | Set of experiment tags to be conditionally forced. The experiments with these tags will be forced only if their conditions and their parent domain\'s conditions are true.
    conditionallyForcedExpTags :: (Core.Maybe [Core.Text]),
    -- | Set of experiment ids to be conditionally forced. These ids will be forced only if their conditions and their parent domain\'s conditions are true.
    conditionallyForcedExps :: (Core.Maybe [Core.Int32]),
    -- | If true, disable automatic enrollment selection (at all diversion points). Automatic enrollment selection means experiment selection process based on the experiment\'s automatic enrollment condition. This does not disable selection of forced experiments.
    disableAutomaticEnrollmentSelection :: (Core.Maybe Core.Bool),
    -- | Set of experiment names to be disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together. If a name corresponds to a domain, the domain itself and all descendant experiments and domains are disabled together.
    disableExpNames :: (Core.Maybe [Core.Text]),
    -- | Set of experiment tags to be disabled. All experiments that are tagged with one or more of these tags are disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together.
    disableExpTags :: (Core.Maybe [Core.Text]),
    -- | Set of experiment ids to be disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together. If an ID corresponds to a domain, the domain itself and all descendant experiments and domains are disabled together.
    disableExps :: (Core.Maybe [Core.Int32]),
    -- | If true, disable manual enrollment selection (at all diversion points). Manual enrollment selection means experiment selection process based on the request\'s manual enrollment states (a.k.a. opt-in experiments). This does not disable selection of forced experiments.
    disableManualEnrollmentSelection :: (Core.Maybe Core.Bool),
    -- | If true, disable organic experiment selection (at all diversion points). Organic selection means experiment selection process based on traffic allocation and diversion condition evaluation. This does not disable selection of forced experiments. This is useful in cases when it is not known whether experiment selection behavior is responsible for a error or breakage. Disabling organic selection may help to isolate the cause of a given problem.
    disableOrganicSelection :: (Core.Maybe Core.Bool),
    -- | Flags to force in a particular experiment state. Map from flag name to flag value.
    forcedFlags :: (Core.Maybe NamespacedDebugInput_ForcedFlags),
    -- | Rollouts to force in a particular experiment state. Map from rollout name to rollout value.
    forcedRollouts :: (Core.Maybe NamespacedDebugInput_ForcedRollouts)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamespacedDebugInput' with the minimum fields required to make a request.
newNamespacedDebugInput ::
  NamespacedDebugInput
newNamespacedDebugInput =
  NamespacedDebugInput
    { absolutelyForcedExpNames = Core.Nothing,
      absolutelyForcedExpTags = Core.Nothing,
      absolutelyForcedExps = Core.Nothing,
      conditionallyForcedExpNames = Core.Nothing,
      conditionallyForcedExpTags = Core.Nothing,
      conditionallyForcedExps = Core.Nothing,
      disableAutomaticEnrollmentSelection = Core.Nothing,
      disableExpNames = Core.Nothing,
      disableExpTags = Core.Nothing,
      disableExps = Core.Nothing,
      disableManualEnrollmentSelection = Core.Nothing,
      disableOrganicSelection = Core.Nothing,
      forcedFlags = Core.Nothing,
      forcedRollouts = Core.Nothing
    }

instance Core.FromJSON NamespacedDebugInput where
  parseJSON =
    Core.withObject
      "NamespacedDebugInput"
      ( \o ->
          NamespacedDebugInput
            Core.<$> ( o Core..:? "absolutelyForcedExpNames"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "absolutelyForcedExpTags"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "absolutelyForcedExps"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "conditionallyForcedExpNames"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "conditionallyForcedExpTags"
                         Core..!= Core.mempty
                     )
            Core.<*> ( o Core..:? "conditionallyForcedExps"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "disableAutomaticEnrollmentSelection")
            Core.<*> (o Core..:? "disableExpNames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "disableExpTags" Core..!= Core.mempty)
            Core.<*> (o Core..:? "disableExps" Core..!= Core.mempty)
            Core.<*> (o Core..:? "disableManualEnrollmentSelection")
            Core.<*> (o Core..:? "disableOrganicSelection")
            Core.<*> (o Core..:? "forcedFlags")
            Core.<*> (o Core..:? "forcedRollouts")
      )

instance Core.ToJSON NamespacedDebugInput where
  toJSON NamespacedDebugInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("absolutelyForcedExpNames" Core..=)
              Core.<$> absolutelyForcedExpNames,
            ("absolutelyForcedExpTags" Core..=)
              Core.<$> absolutelyForcedExpTags,
            ("absolutelyForcedExps" Core..=)
              Core.<$> absolutelyForcedExps,
            ("conditionallyForcedExpNames" Core..=)
              Core.<$> conditionallyForcedExpNames,
            ("conditionallyForcedExpTags" Core..=)
              Core.<$> conditionallyForcedExpTags,
            ("conditionallyForcedExps" Core..=)
              Core.<$> conditionallyForcedExps,
            ("disableAutomaticEnrollmentSelection" Core..=)
              Core.<$> disableAutomaticEnrollmentSelection,
            ("disableExpNames" Core..=) Core.<$> disableExpNames,
            ("disableExpTags" Core..=) Core.<$> disableExpTags,
            ("disableExps" Core..=) Core.<$> disableExps,
            ("disableManualEnrollmentSelection" Core..=)
              Core.<$> disableManualEnrollmentSelection,
            ("disableOrganicSelection" Core..=)
              Core.<$> disableOrganicSelection,
            ("forcedFlags" Core..=) Core.<$> forcedFlags,
            ("forcedRollouts" Core..=) Core.<$> forcedRollouts
          ]
      )

-- | Flags to force in a particular experiment state. Map from flag name to flag value.
--
-- /See:/ 'newNamespacedDebugInput_ForcedFlags' smart constructor.
newtype NamespacedDebugInput_ForcedFlags = NamespacedDebugInput_ForcedFlags
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamespacedDebugInput_ForcedFlags' with the minimum fields required to make a request.
newNamespacedDebugInput_ForcedFlags ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  NamespacedDebugInput_ForcedFlags
newNamespacedDebugInput_ForcedFlags addtional =
  NamespacedDebugInput_ForcedFlags {addtional = addtional}

instance
  Core.FromJSON
    NamespacedDebugInput_ForcedFlags
  where
  parseJSON =
    Core.withObject
      "NamespacedDebugInput_ForcedFlags"
      ( \o ->
          NamespacedDebugInput_ForcedFlags
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON NamespacedDebugInput_ForcedFlags where
  toJSON NamespacedDebugInput_ForcedFlags {..} =
    Core.toJSON addtional

-- | Rollouts to force in a particular experiment state. Map from rollout name to rollout value.
--
-- /See:/ 'newNamespacedDebugInput_ForcedRollouts' smart constructor.
newtype NamespacedDebugInput_ForcedRollouts = NamespacedDebugInput_ForcedRollouts
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamespacedDebugInput_ForcedRollouts' with the minimum fields required to make a request.
newNamespacedDebugInput_ForcedRollouts ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Bool ->
  NamespacedDebugInput_ForcedRollouts
newNamespacedDebugInput_ForcedRollouts addtional =
  NamespacedDebugInput_ForcedRollouts {addtional = addtional}

instance
  Core.FromJSON
    NamespacedDebugInput_ForcedRollouts
  where
  parseJSON =
    Core.withObject
      "NamespacedDebugInput_ForcedRollouts"
      ( \o ->
          NamespacedDebugInput_ForcedRollouts
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    NamespacedDebugInput_ForcedRollouts
  where
  toJSON NamespacedDebugInput_ForcedRollouts {..} =
    Core.toJSON addtional

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata addtional = Operation_Metadata {addtional = addtional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON addtional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | Represents a postal address, e.g. for postal delivery or payments addresses. Given a postal address, a postal service can deliver items to a premise, P.O. Box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage an address would be created via user input or from importing existing data, depending on the type of process. Advice on address input \/ editing: - Use an i18n-ready address widget such as https:\/\/github.com\/google\/libaddressinput) - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, please see: https:\/\/support.google.com\/business\/answer\/6397478
--
-- /See:/ 'newPostalAddress' smart constructor.
data PostalAddress = PostalAddress
  { -- | Unstructured address lines describing the lower levels of an address. Because values in address/lines do not have type information and may sometimes contain multiple values in a single field (e.g. \"Austin, TX\"), it is important that the line order is clear. The order of address lines should be \"envelope order\" for the country\/region of the address. In places where this can vary (e.g. Japan), address/language is used to make it explicit (e.g. \"ja\" for large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large). This way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a region/code with all remaining information placed in the address/lines. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an address only containing a region/code and
    -- address/lines, and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).
    addressLines :: (Core.Maybe [Core.Text]),
    -- | Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community (e.g. \"Barcelona\" and not \"Catalonia\"). Many countries don\'t use an administrative area in postal addresses. E.g. in Switzerland this should be left unpopulated.
    administrativeArea :: (Core.Maybe Core.Text),
    -- | Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address\' country\/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: \"zh-Hant\", \"ja\", \"ja-Latn\", \"en\".
    languageCode :: (Core.Maybe Core.Text),
    -- | Optional. Generally refers to the city\/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use address_lines.
    locality :: (Core.Maybe Core.Text),
    -- | Optional. The name of the organization at the address.
    organization :: (Core.Maybe Core.Text),
    -- | Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (e.g. state\/zip validation in the U.S.A.).
    postalCode :: (Core.Maybe Core.Text),
    -- | Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain \"care of\" information.
    recipients :: (Core.Maybe [Core.Text]),
    -- | Required. CLDR region code of the country\/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https:\/\/cldr.unicode.org\/ and https:\/\/www.unicode.org\/cldr\/charts\/30\/supplemental\/territory_information.html for details. Example: \"CH\" for Switzerland.
    regionCode :: (Core.Maybe Core.Text),
    -- | The schema revision of the @PostalAddress@. This must be set to 0, which is the latest revision. All new revisions __must__ be backward compatible with old revisions.
    revision :: (Core.Maybe Core.Int32),
    -- | Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like \"CEDEX\", optionally followed by a number (e.g. \"CEDEX 7\"), or just a number alone, representing the \"sector code\" (Jamaica), \"delivery area indicator\" (Malawi) or \"post office indicator\" (e.g. Côte d\'Ivoire).
    sortingCode :: (Core.Maybe Core.Text),
    -- | Optional. Sublocality of the address. For example, this can be neighborhoods, boroughs, districts.
    sublocality :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PostalAddress' with the minimum fields required to make a request.
newPostalAddress ::
  PostalAddress
newPostalAddress =
  PostalAddress
    { addressLines = Core.Nothing,
      administrativeArea = Core.Nothing,
      languageCode = Core.Nothing,
      locality = Core.Nothing,
      organization = Core.Nothing,
      postalCode = Core.Nothing,
      recipients = Core.Nothing,
      regionCode = Core.Nothing,
      revision = Core.Nothing,
      sortingCode = Core.Nothing,
      sublocality = Core.Nothing
    }

instance Core.FromJSON PostalAddress where
  parseJSON =
    Core.withObject
      "PostalAddress"
      ( \o ->
          PostalAddress
            Core.<$> (o Core..:? "addressLines" Core..!= Core.mempty)
            Core.<*> (o Core..:? "administrativeArea")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "organization")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "recipients" Core..!= Core.mempty)
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "revision")
            Core.<*> (o Core..:? "sortingCode")
            Core.<*> (o Core..:? "sublocality")
      )

instance Core.ToJSON PostalAddress where
  toJSON PostalAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("addressLines" Core..=) Core.<$> addressLines,
            ("administrativeArea" Core..=)
              Core.<$> administrativeArea,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("locality" Core..=) Core.<$> locality,
            ("organization" Core..=) Core.<$> organization,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("recipients" Core..=) Core.<$> recipients,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("revision" Core..=) Core.<$> revision,
            ("sortingCode" Core..=) Core.<$> sortingCode,
            ("sublocality" Core..=) Core.<$> sublocality
          ]
      )

-- | Options for job processing.
--
-- /See:/ 'newProcessingOptions' smart constructor.
data ProcessingOptions = ProcessingOptions
  { -- | If set to @true@, the service does not attempt to resolve a more precise address for the job.
    disableStreetAddressResolution :: (Core.Maybe Core.Bool),
    -- | Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn\'t disabled. Defaults to HtmlSanitization.SIMPLE/FORMATTING/ONLY.
    htmlSanitization :: (Core.Maybe ProcessingOptions_HtmlSanitization)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProcessingOptions' with the minimum fields required to make a request.
newProcessingOptions ::
  ProcessingOptions
newProcessingOptions =
  ProcessingOptions
    { disableStreetAddressResolution = Core.Nothing,
      htmlSanitization = Core.Nothing
    }

instance Core.FromJSON ProcessingOptions where
  parseJSON =
    Core.withObject
      "ProcessingOptions"
      ( \o ->
          ProcessingOptions
            Core.<$> (o Core..:? "disableStreetAddressResolution")
            Core.<*> (o Core..:? "htmlSanitization")
      )

instance Core.ToJSON ProcessingOptions where
  toJSON ProcessingOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("disableStreetAddressResolution" Core..=)
              Core.<$> disableStreetAddressResolution,
            ("htmlSanitization" Core..=)
              Core.<$> htmlSanitization
          ]
      )

-- | Meta information related to the job searcher or entity conducting the job search. This information is used to improve the performance of the service.
--
-- /See:/ 'newRequestMetadata' smart constructor.
data RequestMetadata = RequestMetadata
  { -- | Only set when any of domain, session/id and user/id isn\'t available for some reason. It is highly recommended not to set this field and provide accurate domain, session/id and user/id for the best service experience.
    allowMissingIds :: (Core.Maybe Core.Bool),
    -- | The type of device used by the job seeker at the time of the call to the service.
    deviceInfo :: (Core.Maybe DeviceInfo),
    -- | Required if allow/missing/ids is unset or @false@. The client-defined scope or source of the service call, which typically is the domain on which the service has been implemented and is currently being run. For example, if the service is being run by client /Foo, Inc./, on job board www.foo.com and career site www.bar.com, then this field is set to \"foo.com\" for use on the job board, and \"bar.com\" for use on the career site. Note that any improvements to the model for a particular tenant site rely on this field being set correctly to a unique domain. The maximum number of allowed characters is 255.
    domain :: (Core.Maybe Core.Text),
    -- | Required if allow/missing/ids is unset or @false@. A unique session identification string. A session is defined as the duration of an end user\'s interaction with the service over a certain period. Obfuscate this field for privacy concerns before providing it to the service. Note that any improvements to the model for a particular tenant site rely on this field being set correctly to a unique session ID. The maximum number of allowed characters is 255.
    sessionId :: (Core.Maybe Core.Text),
    -- | Required if allow/missing/ids is unset or @false@. A unique user identification string, as determined by the client. To have the strongest positive impact on search quality make sure the client-level is unique. Obfuscate this field for privacy concerns before providing it to the service. Note that any improvements to the model for a particular tenant site rely on this field being set correctly to a unique user ID. The maximum number of allowed characters is 255.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RequestMetadata' with the minimum fields required to make a request.
newRequestMetadata ::
  RequestMetadata
newRequestMetadata =
  RequestMetadata
    { allowMissingIds = Core.Nothing,
      deviceInfo = Core.Nothing,
      domain = Core.Nothing,
      sessionId = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON RequestMetadata where
  parseJSON =
    Core.withObject
      "RequestMetadata"
      ( \o ->
          RequestMetadata
            Core.<$> (o Core..:? "allowMissingIds")
            Core.<*> (o Core..:? "deviceInfo")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "sessionId")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON RequestMetadata where
  toJSON RequestMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowMissingIds" Core..=)
              Core.<$> allowMissingIds,
            ("deviceInfo" Core..=) Core.<$> deviceInfo,
            ("domain" Core..=) Core.<$> domain,
            ("sessionId" Core..=) Core.<$> sessionId,
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | Additional information returned to client, such as debugging information.
--
-- /See:/ 'newResponseMetadata' smart constructor.
newtype ResponseMetadata = ResponseMetadata
  { -- | A unique id associated with this call. This id is logged for tracking purposes.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponseMetadata' with the minimum fields required to make a request.
newResponseMetadata ::
  ResponseMetadata
newResponseMetadata = ResponseMetadata {requestId = Core.Nothing}

instance Core.FromJSON ResponseMetadata where
  parseJSON =
    Core.withObject
      "ResponseMetadata"
      ( \o ->
          ResponseMetadata Core.<$> (o Core..:? "requestId")
      )

instance Core.ToJSON ResponseMetadata where
  toJSON ResponseMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("requestId" Core..=) Core.<$> requestId]
      )

-- | The Request body of the @SearchJobs@ call.
--
-- /See:/ 'newSearchJobsRequest' smart constructor.
data SearchJobsRequest = SearchJobsRequest
  { -- | Controls over how job documents get ranked on top of existing relevance score (determined by API algorithm).
    customRankingInfo :: (Core.Maybe CustomRankingInfo),
    -- | This field is deprecated. Please use SearchJobsRequest.keyword/match/mode going forward. To migrate, disable/keyword/match set to false maps to KeywordMatchMode.KEYWORD/MATCH/ALL, and disable/keyword/match set to true maps to KeywordMatchMode.KEYWORD/MATCH/DISABLED. If SearchJobsRequest.keyword/match/mode is set, this field is ignored. Controls whether to disable exact keyword match on Job.title, Job.description, Job.company/display/name, Job.addresses, Job.qualifications. When disable keyword match is turned off, a keyword match returns jobs that do not match given category filters when there are matching keywords. For example, for the query \"program manager,\" a result is returned even if the job posting has the title \"software developer,\" which doesn\'t fall into \"program manager\" ontology, but does have \"program manager\" appearing in its description. For queries like \"cloud\" that don\'t contain title or location specific ontology, jobs with \"cloud\" keyword matches are returned regardless of
    -- this flag\'s value. Use Company.keyword/searchable/job/custom/attributes if company-specific globally matched custom field\/attribute string values are needed. Enabling keyword match improves recall of subsequent search requests. Defaults to false.
    disableKeywordMatch :: (Core.Maybe Core.Bool),
    -- | Controls whether highly similar jobs are returned next to each other in the search results. Jobs are identified as highly similar based on their titles, job categories, and locations. Highly similar results are clustered so that only one representative job of the cluster is displayed to the job seeker higher up in the results, with the other jobs being displayed lower down in the results. Defaults to DiversificationLevel.SIMPLE if no value is specified.
    diversificationLevel :: (Core.Maybe SearchJobsRequest_DiversificationLevel),
    -- | Controls whether to broaden the search when it produces sparse results. Broadened queries append results to the end of the matching results list. Defaults to false.
    enableBroadening :: (Core.Maybe Core.Bool),
    -- | An expression specifies a histogram request against matching jobs. Expression syntax is an aggregation function call with histogram facets and other options. Available aggregation function calls are: * @count(string_histogram_facet)@: Count the number of matching entities, for each distinct attribute value. * @count(numeric_histogram_facet, list of buckets)@: Count the number of matching entities within each bucket. A maximum of 200 histogram buckets are supported. Data types: * Histogram facet: facet names with format @a-zA-Z+@. * String: string like \"any string with backslash escape for quote(\").\" * Number: whole number and floating point number like 10, -1 and -0.01. * List: list of elements with comma(,) separator surrounded by square brackets, for example, [1, 2, 3] and [\"one\", \"two\", \"three\"]. Built-in constants: * MIN (minimum number similar to java Double.MIN/VALUE) * MAX (maximum number similar to java Double.MAX/VALUE) Built-in functions: * bucket(start, end[, label]): bucket built-in
    -- function creates a bucket with range of start, end). Note that the end is exclusive, for example, bucket(1, MAX, \"positive number\") or bucket(1, 10). Job histogram facets: * company/display/name: histogram by [Job.company/display/name. * employment/type: histogram by Job.employment/types, for example, \"FULL/TIME\", \"PART/TIME\". * company/size: histogram by CompanySize, for example, \"SMALL\", \"MEDIUM\", \"BIG\". * publish/time/in/day: histogram by the Job.posting/publish/time in days. Must specify list of numeric buckets in spec. * publish/time/in/month: histogram by the Job.posting/publish/time in months. Must specify list of numeric buckets in spec. * publish/time/in/year: histogram by the Job.posting/publish/time in years. Must specify list of numeric buckets in spec. * degree/types: histogram by the Job.degree/types, for example, \"Bachelors\", \"Masters\". * job/level: histogram by the Job.job/level, for example, \"Entry Level\". * country: histogram by the country code of jobs, for example,
    -- \"US\", \"FR\". * admin1: histogram by the admin1 code of jobs, which is a global placeholder referring to the state, province, or the particular term a country uses to define the geographic structure below the country level, for example, \"CA\", \"IL\". * city: histogram by a combination of the \"city name, admin1 code\". For example, \"Mountain View, CA\", \"New York, NY\". * admin1/country: histogram by a combination of the \"admin1 code, country\", for example, \"CA, US\", \"IL, US\". * city/coordinate: histogram by the city center\'s GPS coordinates (latitude and longitude), for example, 37.4038522,-122.0987765. Since the coordinates of a city center can change, customers may need to refresh them periodically. * locale: histogram by the Job.language/code, for example, \"en-US\", \"fr-FR\". * language: histogram by the language subtag of the Job.language/code, for example, \"en\", \"fr\". * category: histogram by the JobCategory, for example, \"COMPUTER/AND/IT\", \"HEALTHCARE\". * base/compensation/unit:
    -- histogram by the CompensationInfo.CompensationUnit of base salary, for example, \"WEEKLY\", \"MONTHLY\". * base/compensation: histogram by the base salary. Must specify list of numeric buckets to group results by. * annualized/base/compensation: histogram by the base annualized salary. Must specify list of numeric buckets to group results by. * annualized/total/compensation: histogram by the total annualized salary. Must specify list of numeric buckets to group results by. * string/custom/attribute: histogram by string Job.custom/attributes. Values can be accessed via square bracket notations like string/custom/attribute[\"key1\"]. * numeric/custom/attribute: histogram by numeric Job.custom/attributes. Values can be accessed via square bracket notations like numeric/custom_attribute[\"key1\"]. Must specify list of numeric buckets to group results by. Example expressions: * @count(admin1)@ * @count(base_compensation, [bucket(1000, 10000), bucket(10000, 100000), bucket(100000, MAX)])@ *
    -- @count(string_custom_attribute[\"some-string-custom-attribute\"])@ * @count(numeric_custom_attribute[\"some-numeric-custom-attribute\"], [bucket(MIN, 0, \"negative\"), bucket(0, MAX, \"non-negative\")])@
    histogramQueries :: (Core.Maybe [HistogramQuery]),
    -- | Query used to search against jobs, such as keyword, location filters, etc.
    jobQuery :: (Core.Maybe JobQuery),
    -- | The desired job attributes returned for jobs in the search response. Defaults to JobView.JOB/VIEW/SMALL if no value is specified.
    jobView :: (Core.Maybe SearchJobsRequest_JobView),
    -- | Controls what keyword match options to use. If both keyword/match/mode and disable/keyword/match are set, keyword/match/mode will take precedence. Defaults to KeywordMatchMode.KEYWORD/MATCH/ALL if no value is specified.
    keywordMatchMode :: (Core.Maybe SearchJobsRequest_KeywordMatchMode),
    -- | A limit on the number of jobs returned in the search results. Increasing this value above the default value of 10 can increase search response time. The value can be between 1 and 100.
    maxPageSize :: (Core.Maybe Core.Int32),
    -- | An integer that specifies the current offset (that is, starting result location, amongst the jobs deemed by the API as relevant) in search results. This field is only considered if page_token is unset. The maximum allowed value is 5000. Otherwise an error is thrown. For example, 0 means to return results starting from the first matching job, and 10 means to return from the 11th job. This can be used for pagination, (for example, pageSize = 10 and offset = 10 means to return from the second page).
    offset :: (Core.Maybe Core.Int32),
    -- | The criteria determining how search results are sorted. Default is @\"relevance desc\"@. Supported options are: * @\"relevance desc\"@: By relevance descending, as determined by the API algorithms. Relevance thresholding of query results is only available with this ordering. * @\"posting_publish_time desc\"@: By Job.posting/publish/time descending. * @\"posting_update_time desc\"@: By Job.posting/update/time descending. * @\"title\"@: By Job.title ascending. * @\"title desc\"@: By Job.title descending. * @\"annualized_base_compensation\"@: By job\'s CompensationInfo.annualized/base/compensation/range ascending. Jobs whose annualized base compensation is unspecified are put at the end of search results. * @\"annualized_base_compensation desc\"@: By job\'s CompensationInfo.annualized/base/compensation/range descending. Jobs whose annualized base compensation is unspecified are put at the end of search results. * @\"annualized_total_compensation\"@: By job\'s CompensationInfo.annualized/total/compensation/range
    -- ascending. Jobs whose annualized base compensation is unspecified are put at the end of search results. * @\"annualized_total_compensation desc\"@: By job\'s CompensationInfo.annualized/total/compensation/range descending. Jobs whose annualized base compensation is unspecified are put at the end of search results. * @\"custom_ranking desc\"@: By the relevance score adjusted to the SearchJobsRequest.CustomRankingInfo.ranking/expression with weight factor assigned by SearchJobsRequest.CustomRankingInfo.importance/level in descending order. * Location sorting: Use the special syntax to order jobs by distance: @\"distance_from(\'Hawaii\')\"@: Order by distance from Hawaii. @\"distance_from(19.89, 155.5)\"@: Order by distance from a coordinate. @\"distance_from(\'Hawaii\'), distance_from(\'Puerto Rico\')\"@: Order by multiple locations. See details below. @\"distance_from(\'Hawaii\'), distance_from(19.89, 155.5)\"@: Order by multiple locations. See details below. The string can have a maximum of 256 characters.
    -- When multiple distance centers are provided, a job that is close to any of the distance centers would have a high rank. When a job has multiple locations, the job location closest to one of the distance centers will be used. Jobs that don\'t have locations will be ranked at the bottom. Distance is calculated with a precision of 11.3 meters (37.4 feet). Diversification strategy is still applied unless explicitly disabled in diversification_level.
    orderBy :: (Core.Maybe Core.Text),
    -- | The token specifying the current offset within search results. See SearchJobsResponse.next/page/token for an explanation of how to obtain the next set of query results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The meta information collected about the job searcher, used to improve the search quality of the service. The identifiers (such as @user_id@) are provided by users, and must be unique and consistent.
    requestMetadata :: (Core.Maybe RequestMetadata),
    -- | Mode of a search. Defaults to SearchMode.JOB_SEARCH.
    searchMode :: (Core.Maybe SearchJobsRequest_SearchMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchJobsRequest' with the minimum fields required to make a request.
newSearchJobsRequest ::
  SearchJobsRequest
newSearchJobsRequest =
  SearchJobsRequest
    { customRankingInfo = Core.Nothing,
      disableKeywordMatch = Core.Nothing,
      diversificationLevel = Core.Nothing,
      enableBroadening = Core.Nothing,
      histogramQueries = Core.Nothing,
      jobQuery = Core.Nothing,
      jobView = Core.Nothing,
      keywordMatchMode = Core.Nothing,
      maxPageSize = Core.Nothing,
      offset = Core.Nothing,
      orderBy = Core.Nothing,
      pageToken = Core.Nothing,
      requestMetadata = Core.Nothing,
      searchMode = Core.Nothing
    }

instance Core.FromJSON SearchJobsRequest where
  parseJSON =
    Core.withObject
      "SearchJobsRequest"
      ( \o ->
          SearchJobsRequest
            Core.<$> (o Core..:? "customRankingInfo")
            Core.<*> (o Core..:? "disableKeywordMatch")
            Core.<*> (o Core..:? "diversificationLevel")
            Core.<*> (o Core..:? "enableBroadening")
            Core.<*> (o Core..:? "histogramQueries" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jobQuery")
            Core.<*> (o Core..:? "jobView")
            Core.<*> (o Core..:? "keywordMatchMode")
            Core.<*> (o Core..:? "maxPageSize")
            Core.<*> (o Core..:? "offset")
            Core.<*> (o Core..:? "orderBy")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "requestMetadata")
            Core.<*> (o Core..:? "searchMode")
      )

instance Core.ToJSON SearchJobsRequest where
  toJSON SearchJobsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("customRankingInfo" Core..=)
              Core.<$> customRankingInfo,
            ("disableKeywordMatch" Core..=)
              Core.<$> disableKeywordMatch,
            ("diversificationLevel" Core..=)
              Core.<$> diversificationLevel,
            ("enableBroadening" Core..=)
              Core.<$> enableBroadening,
            ("histogramQueries" Core..=)
              Core.<$> histogramQueries,
            ("jobQuery" Core..=) Core.<$> jobQuery,
            ("jobView" Core..=) Core.<$> jobView,
            ("keywordMatchMode" Core..=)
              Core.<$> keywordMatchMode,
            ("maxPageSize" Core..=) Core.<$> maxPageSize,
            ("offset" Core..=) Core.<$> offset,
            ("orderBy" Core..=) Core.<$> orderBy,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("requestMetadata" Core..=) Core.<$> requestMetadata,
            ("searchMode" Core..=) Core.<$> searchMode
          ]
      )

-- | Response for SearchJob method.
--
-- /See:/ 'newSearchJobsResponse' smart constructor.
data SearchJobsResponse = SearchJobsResponse
  { -- | If query broadening is enabled, we may append additional results from the broadened query. This number indicates how many of the jobs returned in the jobs field are from the broadened query. These results are always at the end of the jobs list. In particular, a value of 0, or if the field isn\'t set, all the jobs in the jobs list are from the original (without broadening) query. If this field is non-zero, subsequent requests with offset after this result set should contain all broadened results.
    broadenedQueryJobsCount :: (Core.Maybe Core.Int32),
    -- | The histogram results that match with specified SearchJobsRequest.histogram_queries.
    histogramQueryResults :: (Core.Maybe [HistogramQueryResult]),
    -- | The location filters that the service applied to the specified query. If any filters are lat-lng based, the Location.location/type is Location.LocationType.LOCATION/TYPE_UNSPECIFIED.
    locationFilters :: (Core.Maybe [Location]),
    -- | The Job entities that match the specified SearchJobsRequest.
    matchingJobs :: (Core.Maybe [MatchingJob]),
    -- | Additional information for the API invocation, such as the request tracking id.
    metadata :: (Core.Maybe ResponseMetadata),
    -- | The token that specifies the starting position of the next page of results. This field is empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The spell checking result, and correction.
    spellCorrection :: (Core.Maybe SpellingCorrection),
    -- | Number of jobs that match the specified query. Note: This size is precise only if the total is less than 100,000.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchJobsResponse' with the minimum fields required to make a request.
newSearchJobsResponse ::
  SearchJobsResponse
newSearchJobsResponse =
  SearchJobsResponse
    { broadenedQueryJobsCount = Core.Nothing,
      histogramQueryResults = Core.Nothing,
      locationFilters = Core.Nothing,
      matchingJobs = Core.Nothing,
      metadata = Core.Nothing,
      nextPageToken = Core.Nothing,
      spellCorrection = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON SearchJobsResponse where
  parseJSON =
    Core.withObject
      "SearchJobsResponse"
      ( \o ->
          SearchJobsResponse
            Core.<$> (o Core..:? "broadenedQueryJobsCount")
            Core.<*> ( o Core..:? "histogramQueryResults"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "locationFilters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "matchingJobs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "spellCorrection")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON SearchJobsResponse where
  toJSON SearchJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("broadenedQueryJobsCount" Core..=)
              Core.<$> broadenedQueryJobsCount,
            ("histogramQueryResults" Core..=)
              Core.<$> histogramQueryResults,
            ("locationFilters" Core..=) Core.<$> locationFilters,
            ("matchingJobs" Core..=) Core.<$> matchingJobs,
            ("metadata" Core..=) Core.<$> metadata,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("spellCorrection" Core..=) Core.<$> spellCorrection,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Spell check result.
--
-- /See:/ 'newSpellingCorrection' smart constructor.
data SpellingCorrection = SpellingCorrection
  { -- | Indicates if the query was corrected by the spell checker.
    corrected :: (Core.Maybe Core.Bool),
    -- | Corrected output with html tags to highlight the corrected words. Corrected words are called out with the \"/.../\" html tags. For example, the user input query is \"software enginear\", where the second word, \"enginear,\" is incorrect. It should be \"engineer\". When spelling correction is enabled, this value is \"software /engineer/\".
    correctedHtml :: (Core.Maybe Core.Text),
    -- | Correction output consisting of the corrected keyword string.
    correctedText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpellingCorrection' with the minimum fields required to make a request.
newSpellingCorrection ::
  SpellingCorrection
newSpellingCorrection =
  SpellingCorrection
    { corrected = Core.Nothing,
      correctedHtml = Core.Nothing,
      correctedText = Core.Nothing
    }

instance Core.FromJSON SpellingCorrection where
  parseJSON =
    Core.withObject
      "SpellingCorrection"
      ( \o ->
          SpellingCorrection
            Core.<$> (o Core..:? "corrected")
            Core.<*> (o Core..:? "correctedHtml")
            Core.<*> (o Core..:? "correctedText")
      )

instance Core.ToJSON SpellingCorrection where
  toJSON SpellingCorrection {..} =
    Core.object
      ( Core.catMaybes
          [ ("corrected" Core..=) Core.<$> corrected,
            ("correctedHtml" Core..=) Core.<$> correctedHtml,
            ("correctedText" Core..=) Core.<$> correctedText
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

-- | A Tenant resource represents a tenant in the service. A tenant is a group or entity that shares common access with specific privileges for resources like jobs. Customer may create multiple tenants to provide data isolation for different groups.
--
-- /See:/ 'newTenant' smart constructor.
data Tenant = Tenant
  { -- | Required. Client side tenant identifier, used to uniquely identify the tenant. The maximum number of allowed characters is 255.
    externalId :: (Core.Maybe Core.Text),
    -- | Required during tenant update. The resource name for a tenant. This is generated by the service when a tenant is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\".
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tenant' with the minimum fields required to make a request.
newTenant ::
  Tenant
newTenant = Tenant {externalId = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Tenant where
  parseJSON =
    Core.withObject
      "Tenant"
      ( \o ->
          Tenant
            Core.<$> (o Core..:? "externalId")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Tenant where
  toJSON Tenant {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalId" Core..=) Core.<$> externalId,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
  { -- | Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of hour of day. Must be from 0 to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay ::
  TimeOfDay'
newTimeOfDay =
  TimeOfDay'
    { hours = Core.Nothing,
      minutes = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing
    }

instance Core.FromJSON TimeOfDay' where
  parseJSON =
    Core.withObject
      "TimeOfDay'"
      ( \o ->
          TimeOfDay'
            Core.<$> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
      )

instance Core.ToJSON TimeOfDay' where
  toJSON TimeOfDay' {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds
          ]
      )

-- | Message representing a period of time between two timestamps.
--
-- /See:/ 'newTimestampRange' smart constructor.
data TimestampRange = TimestampRange
  { -- | End of the period (exclusive).
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Begin of the period (inclusive).
    startTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimestampRange' with the minimum fields required to make a request.
newTimestampRange ::
  TimestampRange
newTimestampRange =
  TimestampRange {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimestampRange where
  parseJSON =
    Core.withObject
      "TimestampRange"
      ( \o ->
          TimestampRange
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimestampRange where
  toJSON TimestampRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )
