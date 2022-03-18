{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudScheduler.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CloudScheduler.Internal.Product
  (

    -- * AppEngineHttpTarget
    AppEngineHttpTarget (..),
    newAppEngineHttpTarget,

    -- * AppEngineHttpTarget_Headers
    AppEngineHttpTarget_Headers (..),
    newAppEngineHttpTarget_Headers,

    -- * AppEngineRouting
    AppEngineRouting (..),
    newAppEngineRouting,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * HttpTarget
    HttpTarget (..),
    newHttpTarget,

    -- * HttpTarget_Headers
    HttpTarget_Headers (..),
    newHttpTarget_Headers,

    -- * Job
    Job (..),
    newJob,

    -- * ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * OAuthToken
    OAuthToken (..),
    newOAuthToken,

    -- * OidcToken
    OidcToken (..),
    newOidcToken,

    -- * PauseJobRequest
    PauseJobRequest (..),
    newPauseJobRequest,

    -- * PubsubMessage
    PubsubMessage (..),
    newPubsubMessage,

    -- * PubsubMessage_Attributes
    PubsubMessage_Attributes (..),
    newPubsubMessage_Attributes,

    -- * PubsubTarget
    PubsubTarget (..),
    newPubsubTarget,

    -- * PubsubTarget_Attributes
    PubsubTarget_Attributes (..),
    newPubsubTarget_Attributes,

    -- * ResumeJobRequest
    ResumeJobRequest (..),
    newResumeJobRequest,

    -- * RetryConfig
    RetryConfig (..),
    newRetryConfig,

    -- * RunJobRequest
    RunJobRequest (..),
    newRunJobRequest,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudScheduler.Internal.Sum

-- | App Engine target. The job will be pushed to a job handler by means of an HTTP request via an http_method such as HTTP POST, HTTP GET, etc. The job is acknowledged by means of an HTTP response code in the range [200 - 299]. Error 503 is considered an App Engine system error instead of an application error. Requests returning error 503 will be retried regardless of retry configuration and not counted against retry counts. Any other response code, or a failure to receive a response before the deadline, constitutes a failed attempt.
--
-- /See:/ 'newAppEngineHttpTarget' smart constructor.
data AppEngineHttpTarget = AppEngineHttpTarget
    {
      -- | App Engine Routing setting for the job.
      appEngineRouting :: (Core.Maybe AppEngineRouting)
      -- | Body. HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.
    , body :: (Core.Maybe Core.Base64)
      -- | HTTP request headers. This map contains the header field names and values. Headers can be set when the job is created. Cloud Scheduler sets some headers to default values: * @User-Agent@: By default, this header is @\"AppEngine-Google; (+http:\/\/code.google.com\/appengine)\"@. This header can be modified, but Cloud Scheduler will append @\"AppEngine-Google; (+http:\/\/code.google.com\/appengine)\"@ to the modified @User-Agent@. * @X-CloudScheduler@: This header will be set to true. * @X-CloudScheduler-JobName@: This header will contain the job name. * @X-CloudScheduler-ScheduleTime@: For Cloud Scheduler jobs specified in the unix-cron format, this header will contain the job schedule time in RFC3339 UTC \"Zulu\" format. If the job has an body, Cloud Scheduler sets the following headers: * @Content-Type@: By default, the @Content-Type@ header is set to @\"application\/octet-stream\"@. The default can be overridden by explictly setting @Content-Type@ to a particular media type when the job is created. For
      -- example, @Content-Type@ can be set to @\"application\/json\"@. * @Content-Length@: This is computed by Cloud Scheduler. This value is output only. It cannot be changed. The headers below are output only. They cannot be set or overridden: * @X-Google-*@: For Google internal use only. * @X-AppEngine-*@: For Google internal use only. In addition, some App Engine headers, which contain job-specific information, are also be sent to the job handler.
    , headers :: (Core.Maybe AppEngineHttpTarget_Headers)
      -- | The HTTP method to use for the request. PATCH and OPTIONS are not permitted.
    , httpMethod :: (Core.Maybe AppEngineHttpTarget_HttpMethod)
      -- | The relative URI. The relative URL must begin with \"\/\" and must be a valid HTTP relative URL. It can contain a path, query string arguments, and @#@ fragments. If the relative URL is empty, then the root path \"\/\" will be used. No spaces are allowed, and the maximum length allowed is 2083 characters.
    , relativeUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineHttpTarget' with the minimum fields required to make a request.
newAppEngineHttpTarget 
    ::  AppEngineHttpTarget
newAppEngineHttpTarget =
  AppEngineHttpTarget
    { appEngineRouting = Core.Nothing
    , body = Core.Nothing
    , headers = Core.Nothing
    , httpMethod = Core.Nothing
    , relativeUri = Core.Nothing
    }

instance Core.FromJSON AppEngineHttpTarget where
        parseJSON
          = Core.withObject "AppEngineHttpTarget"
              (\ o ->
                 AppEngineHttpTarget Core.<$>
                   (o Core..:? "appEngineRouting") Core.<*>
                     (o Core..:? "body")
                     Core.<*> (o Core..:? "headers")
                     Core.<*> (o Core..:? "httpMethod")
                     Core.<*> (o Core..:? "relativeUri"))

instance Core.ToJSON AppEngineHttpTarget where
        toJSON AppEngineHttpTarget{..}
          = Core.object
              (Core.catMaybes
                 [("appEngineRouting" Core..=) Core.<$>
                    appEngineRouting,
                  ("body" Core..=) Core.<$> body,
                  ("headers" Core..=) Core.<$> headers,
                  ("httpMethod" Core..=) Core.<$> httpMethod,
                  ("relativeUri" Core..=) Core.<$> relativeUri])


-- | HTTP request headers. This map contains the header field names and values. Headers can be set when the job is created. Cloud Scheduler sets some headers to default values: * @User-Agent@: By default, this header is @\"AppEngine-Google; (+http:\/\/code.google.com\/appengine)\"@. This header can be modified, but Cloud Scheduler will append @\"AppEngine-Google; (+http:\/\/code.google.com\/appengine)\"@ to the modified @User-Agent@. * @X-CloudScheduler@: This header will be set to true. * @X-CloudScheduler-JobName@: This header will contain the job name. * @X-CloudScheduler-ScheduleTime@: For Cloud Scheduler jobs specified in the unix-cron format, this header will contain the job schedule time in RFC3339 UTC \"Zulu\" format. If the job has an body, Cloud Scheduler sets the following headers: * @Content-Type@: By default, the @Content-Type@ header is set to @\"application\/octet-stream\"@. The default can be overridden by explictly setting @Content-Type@ to a particular media type when the job is created. For
-- example, @Content-Type@ can be set to @\"application\/json\"@. * @Content-Length@: This is computed by Cloud Scheduler. This value is output only. It cannot be changed. The headers below are output only. They cannot be set or overridden: * @X-Google-*@: For Google internal use only. * @X-AppEngine-*@: For Google internal use only. In addition, some App Engine headers, which contain job-specific information, are also be sent to the job handler.
--
-- /See:/ 'newAppEngineHttpTarget_Headers' smart constructor.
newtype AppEngineHttpTarget_Headers = AppEngineHttpTarget_Headers
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineHttpTarget_Headers' with the minimum fields required to make a request.
newAppEngineHttpTarget_Headers 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> AppEngineHttpTarget_Headers
newAppEngineHttpTarget_Headers addtional =
  AppEngineHttpTarget_Headers {addtional = addtional}

instance Core.FromJSON AppEngineHttpTarget_Headers
         where
        parseJSON
          = Core.withObject "AppEngineHttpTarget_Headers"
              (\ o ->
                 AppEngineHttpTarget_Headers Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON AppEngineHttpTarget_Headers
         where
        toJSON AppEngineHttpTarget_Headers{..}
          = Core.toJSON addtional


-- | App Engine Routing. For more information about services, versions, and instances see <https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine An Overview of App Engine>, <https://cloud.google.com/appengine/docs/python/microservices-on-app-engine Microservices Architecture on Google App Engine>, <https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed App Engine Standard request routing>, and <https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed App Engine Flex request routing>.
--
-- /See:/ 'newAppEngineRouting' smart constructor.
data AppEngineRouting = AppEngineRouting
    {
      -- | Output only. The host that the job is sent to. For more information about how App Engine requests are routed, see <https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed here>. The host is constructed as: * @host = [application_domain_name]@ @| [service] + \'.\' + [application_domain_name]@ @| [version] + \'.\' + [application_domain_name]@ @| [version_dot_service]+ \'.\' + [application_domain_name]@ @| [instance] + \'.\' + [application_domain_name]@ @| [instance_dot_service] + \'.\' + [application_domain_name]@ @| [instance_dot_version] + \'.\' + [application_domain_name]@ @| [instance_dot_version_dot_service] + \'.\' + [application_domain_name]@ * @application_domain_name@ = The domain name of the app, for example .appspot.com, which is associated with the job\'s project ID. * @service =@ service * @version =@ version * @version_dot_service =@ version @+ \'.\' +@ service * @instance =@ instance * @instance_dot_service =@ instance @+ \'.\' +@ service * @instance_dot_version =@
      -- instance @+ \'.\' +@ version * @instance_dot_version_dot_service =@ instance @+ \'.\' +@ version @+ \'.\' +@ service If service is empty, then the job will be sent to the service which is the default service when the job is attempted. If version is empty, then the job will be sent to the version which is the default version when the job is attempted. If instance is empty, then the job will be sent to an instance which is available when the job is attempted. If service, version, or instance is invalid, then the job will be sent to the default version of the default service when the job is attempted.
      host :: (Core.Maybe Core.Text)
      -- | App instance. By default, the job is sent to an instance which is available when the job is attempted. Requests can only be sent to a specific instance if <https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?#scaling_types_and_instance_classes manual scaling is used in App Engine Standard>. App Engine Flex does not support instances. For more information, see <https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed App Engine Standard request routing> and <https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed App Engine Flex request routing>.
    , instance' :: (Core.Maybe Core.Text)
      -- | App service. By default, the job is sent to the service which is the default service when the job is attempted.
    , service :: (Core.Maybe Core.Text)
      -- | App version. By default, the job is sent to the version which is the default version when the job is attempted.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineRouting' with the minimum fields required to make a request.
newAppEngineRouting 
    ::  AppEngineRouting
newAppEngineRouting =
  AppEngineRouting
    { host = Core.Nothing
    , instance' = Core.Nothing
    , service = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON AppEngineRouting where
        parseJSON
          = Core.withObject "AppEngineRouting"
              (\ o ->
                 AppEngineRouting Core.<$>
                   (o Core..:? "host") Core.<*> (o Core..:? "instance")
                     Core.<*> (o Core..:? "service")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON AppEngineRouting where
        toJSON AppEngineRouting{..}
          = Core.object
              (Core.catMaybes
                 [("host" Core..=) Core.<$> host,
                  ("instance" Core..=) Core.<$> instance',
                  ("service" Core..=) Core.<$> service,
                  ("version" Core..=) Core.<$> version])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Http target. The job will be pushed to the job handler by means of an HTTP request via an http_method such as HTTP POST, HTTP GET, etc. The job is acknowledged by means of an HTTP response code in the range [200 - 299]. A failure to receive a response constitutes a failed execution. For a redirected request, the response returned by the redirected request is considered.
--
-- /See:/ 'newHttpTarget' smart constructor.
data HttpTarget = HttpTarget
    {
      -- | HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It is an error to set body on a job with an incompatible HttpMethod.
      body :: (Core.Maybe Core.Base64)
      -- | The user can specify HTTP request headers to send with the job\'s HTTP request. This map contains the header field names and values. Repeated headers are not supported, but a header value can contain commas. These headers represent a subset of the headers that will accompany the job\'s HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is below: - Host: This will be computed by Cloud Scheduler and derived from uri. * @Content-Length@: This will be computed by Cloud Scheduler. * @User-Agent@: This will be set to @\"Google-Cloud-Scheduler\"@. * @X-Google-*@: Google internal use only. * @X-AppEngine-*@: Google internal use only. * @X-CloudScheduler@: This header will be set to true. * @X-CloudScheduler-JobName@: This header will contain the job name. * @X-CloudScheduler-ScheduleTime@: For Cloud Scheduler jobs specified in the unix-cron format, this header will contain the job schedule time in RFC3339 UTC \"Zulu\" format. The total size
      -- of headers must be less than 80KB.
    , headers :: (Core.Maybe HttpTarget_Headers)
      -- | Which HTTP method to use for the request.
    , httpMethod :: (Core.Maybe HttpTarget_HttpMethod)
      -- | If specified, an <https://developers.google.com/identity/protocols/OAuth2 OAuth token> will be generated and attached as an @Authorization@ header in the HTTP request. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
    , oauthToken :: (Core.Maybe OAuthToken)
      -- | If specified, an <https://developers.google.com/identity/protocols/OpenIDConnect OIDC> token will be generated and attached as an @Authorization@ header in the HTTP request. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
    , oidcToken :: (Core.Maybe OidcToken)
      -- | Required. The full URI path that the request will be sent to. This string must begin with either \"http:\/\/\" or \"https:\/\/\". Some examples of valid values for uri are: @http:\/\/acme.com@ and @https:\/\/acme.com\/sales:8080@. Cloud Scheduler will encode some characters for safety and compatibility. The maximum allowed URL length is 2083 characters after encoding.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpTarget' with the minimum fields required to make a request.
newHttpTarget 
    ::  HttpTarget
newHttpTarget =
  HttpTarget
    { body = Core.Nothing
    , headers = Core.Nothing
    , httpMethod = Core.Nothing
    , oauthToken = Core.Nothing
    , oidcToken = Core.Nothing
    , uri = Core.Nothing
    }

instance Core.FromJSON HttpTarget where
        parseJSON
          = Core.withObject "HttpTarget"
              (\ o ->
                 HttpTarget Core.<$>
                   (o Core..:? "body") Core.<*> (o Core..:? "headers")
                     Core.<*> (o Core..:? "httpMethod")
                     Core.<*> (o Core..:? "oauthToken")
                     Core.<*> (o Core..:? "oidcToken")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON HttpTarget where
        toJSON HttpTarget{..}
          = Core.object
              (Core.catMaybes
                 [("body" Core..=) Core.<$> body,
                  ("headers" Core..=) Core.<$> headers,
                  ("httpMethod" Core..=) Core.<$> httpMethod,
                  ("oauthToken" Core..=) Core.<$> oauthToken,
                  ("oidcToken" Core..=) Core.<$> oidcToken,
                  ("uri" Core..=) Core.<$> uri])


-- | The user can specify HTTP request headers to send with the job\'s HTTP request. This map contains the header field names and values. Repeated headers are not supported, but a header value can contain commas. These headers represent a subset of the headers that will accompany the job\'s HTTP request. Some HTTP request headers will be ignored or replaced. A partial list of headers that will be ignored or replaced is below: - Host: This will be computed by Cloud Scheduler and derived from uri. * @Content-Length@: This will be computed by Cloud Scheduler. * @User-Agent@: This will be set to @\"Google-Cloud-Scheduler\"@. * @X-Google-*@: Google internal use only. * @X-AppEngine-*@: Google internal use only. * @X-CloudScheduler@: This header will be set to true. * @X-CloudScheduler-JobName@: This header will contain the job name. * @X-CloudScheduler-ScheduleTime@: For Cloud Scheduler jobs specified in the unix-cron format, this header will contain the job schedule time in RFC3339 UTC \"Zulu\" format. The total size
-- of headers must be less than 80KB.
--
-- /See:/ 'newHttpTarget_Headers' smart constructor.
newtype HttpTarget_Headers = HttpTarget_Headers
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpTarget_Headers' with the minimum fields required to make a request.
newHttpTarget_Headers 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> HttpTarget_Headers
newHttpTarget_Headers addtional = HttpTarget_Headers {addtional = addtional}

instance Core.FromJSON HttpTarget_Headers where
        parseJSON
          = Core.withObject "HttpTarget_Headers"
              (\ o ->
                 HttpTarget_Headers Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON HttpTarget_Headers where
        toJSON HttpTarget_Headers{..} = Core.toJSON addtional


-- | Configuration for a job. The maximum allowed size for a job is 1MB.
--
-- /See:/ 'newJob' smart constructor.
data Job = Job
    {
      -- | App Engine HTTP target.
      appEngineHttpTarget :: (Core.Maybe AppEngineHttpTarget)
      -- | The deadline for job attempts. If the request handler does not respond by this deadline then the request is cancelled and the attempt is marked as a @DEADLINE_EXCEEDED@ failure. The failed attempt can be viewed in execution logs. Cloud Scheduler will retry the job according to the RetryConfig. The allowed duration for this deadline is: * For HTTP targets, between 15 seconds and 30 minutes. * For App Engine HTTP targets, between 15 seconds and 24 hours 15 seconds.
    , attemptDeadline :: (Core.Maybe Core.GDuration)
      -- | Optionally caller-specified in CreateJob or UpdateJob. A human-readable description for the job. This string must not contain more than 500 characters.
    , description :: (Core.Maybe Core.Text)
      -- | HTTP target.
    , httpTarget :: (Core.Maybe HttpTarget)
      -- | Output only. The time the last job attempt started.
    , lastAttemptTime :: (Core.Maybe Core.DateTime')
      -- | Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@. * @PROJECT_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see <https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects Identifying projects> * @LOCATION_ID@ is the canonical ID for the job\'s location. The list of available locations can be obtained by calling ListLocations. For more information, see https:\/\/cloud.google.com\/about\/locations\/. * @JOB_ID@ can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
    , name :: (Core.Maybe Core.Text)
      -- | Pub\/Sub target.
    , pubsubTarget :: (Core.Maybe PubsubTarget)
      -- | Settings that determine the retry behavior.
    , retryConfig :: (Core.Maybe RetryConfig)
      -- | Required, except when used with UpdateJob. Describes the schedule on which the job will be executed. The schedule can be either of the following types: * <https://en.wikipedia.org/wiki/Cron#Overview Crontab> * English-like <https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules schedule> As a general rule, execution @n + 1@ of a job will not begin until execution @n@ has finished. Cloud Scheduler will never allow two simultaneously outstanding executions. For example, this implies that if the @n+1@th execution is scheduled to run at 16:00 but the @n@th execution takes until 16:15, the @n+1@th execution will not start until @16:15@. A scheduled start time will be delayed if the previous execution has not ended when its scheduled time occurs. If retry/count > 0 and a job attempt fails, the job will be tried a total of retry/count times, with exponential backoff, until the next scheduled start time.
    , schedule :: (Core.Maybe Core.Text)
      -- | Output only. The next time the job is scheduled. Note that this may be a retry of a previously failed attempt or the next execution time according to the schedule.
    , scheduleTime :: (Core.Maybe Core.DateTime')
      -- | Output only. State of the job.
    , state :: (Core.Maybe Job_State)
      -- | Output only. The response from the target for the last attempted execution.
    , status :: (Core.Maybe Status)
      -- | Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the <http://en.wikipedia.org/wiki/Tz_database tz database>. Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string \"utc\". If a time zone is not specified, the default will be in UTC (also known as GMT).
    , timeZone :: (Core.Maybe Core.Text)
      -- | Output only. The creation time of the job.
    , userUpdateTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
newJob 
    ::  Job
newJob =
  Job
    { appEngineHttpTarget = Core.Nothing
    , attemptDeadline = Core.Nothing
    , description = Core.Nothing
    , httpTarget = Core.Nothing
    , lastAttemptTime = Core.Nothing
    , name = Core.Nothing
    , pubsubTarget = Core.Nothing
    , retryConfig = Core.Nothing
    , schedule = Core.Nothing
    , scheduleTime = Core.Nothing
    , state = Core.Nothing
    , status = Core.Nothing
    , timeZone = Core.Nothing
    , userUpdateTime = Core.Nothing
    }

instance Core.FromJSON Job where
        parseJSON
          = Core.withObject "Job"
              (\ o ->
                 Job Core.<$>
                   (o Core..:? "appEngineHttpTarget") Core.<*>
                     (o Core..:? "attemptDeadline")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "httpTarget")
                     Core.<*> (o Core..:? "lastAttemptTime")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "pubsubTarget")
                     Core.<*> (o Core..:? "retryConfig")
                     Core.<*> (o Core..:? "schedule")
                     Core.<*> (o Core..:? "scheduleTime")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "timeZone")
                     Core.<*> (o Core..:? "userUpdateTime"))

instance Core.ToJSON Job where
        toJSON Job{..}
          = Core.object
              (Core.catMaybes
                 [("appEngineHttpTarget" Core..=) Core.<$>
                    appEngineHttpTarget,
                  ("attemptDeadline" Core..=) Core.<$> attemptDeadline,
                  ("description" Core..=) Core.<$> description,
                  ("httpTarget" Core..=) Core.<$> httpTarget,
                  ("lastAttemptTime" Core..=) Core.<$> lastAttemptTime,
                  ("name" Core..=) Core.<$> name,
                  ("pubsubTarget" Core..=) Core.<$> pubsubTarget,
                  ("retryConfig" Core..=) Core.<$> retryConfig,
                  ("schedule" Core..=) Core.<$> schedule,
                  ("scheduleTime" Core..=) Core.<$> scheduleTime,
                  ("state" Core..=) Core.<$> state,
                  ("status" Core..=) Core.<$> status,
                  ("timeZone" Core..=) Core.<$> timeZone,
                  ("userUpdateTime" Core..=) Core.<$> userUpdateTime])


-- | Response message for listing jobs using ListJobs.
--
-- /See:/ 'newListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse
    {
      -- | The list of jobs.
      jobs :: (Core.Maybe [Job])
      -- | A token to retrieve next page of results. Pass this value in the page_token field in the subsequent call to ListJobs to retrieve the next page of results. If this is empty it indicates that there are no more results through which to paginate. The page token is valid for only 2 hours.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
newListJobsResponse 
    ::  ListJobsResponse
newListJobsResponse =
  ListJobsResponse {jobs = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListJobsResponse where
        parseJSON
          = Core.withObject "ListJobsResponse"
              (\ o ->
                 ListJobsResponse Core.<$>
                   (o Core..:? "jobs" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListJobsResponse where
        toJSON ListJobsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("jobs" Core..=) Core.<$> jobs,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
    {
      -- | A list of locations that matches the specified filter in the request.
      locations :: (Core.Maybe [Location])
      -- | The standard List next-page token.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse 
    ::  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
        parseJSON
          = Core.withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse Core.<$>
                   (o Core..:? "locations" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("locations" Core..=) Core.<$> locations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
    {
      -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
      displayName :: (Core.Maybe Core.Text)
      -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    , labels :: (Core.Maybe Location_Labels)
      -- | The canonical id for this location. For example: @\"us-east1\"@.
    , locationId :: (Core.Maybe Core.Text)
      -- | Service-specific metadata. For example the available capacity at the given location.
    , metadata :: (Core.Maybe Location_Metadata)
      -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation 
    ::  Location
newLocation =
  Location
    { displayName = Core.Nothing
    , labels = Core.Nothing
    , locationId = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Location where
        parseJSON
          = Core.withObject "Location"
              (\ o ->
                 Location Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "labels")
                     Core.<*> (o Core..:? "locationId")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Location where
        toJSON Location{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("locationId" Core..=) Core.<$> locationId,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name])


-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> Location_Labels
newLocation_Labels addtional = Location_Labels {addtional = addtional}

instance Core.FromJSON Location_Labels where
        parseJSON
          = Core.withObject "Location_Labels"
              (\ o ->
                 Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
        toJSON Location_Labels{..} = Core.toJSON addtional


-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Location_Metadata
newLocation_Metadata addtional = Location_Metadata {addtional = addtional}

instance Core.FromJSON Location_Metadata where
        parseJSON
          = Core.withObject "Location_Metadata"
              (\ o ->
                 Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
        toJSON Location_Metadata{..} = Core.toJSON addtional


-- | Contains information needed for generating an <https://developers.google.com/identity/protocols/OAuth2 OAuth token>. This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
--
-- /See:/ 'newOAuthToken' smart constructor.
data OAuthToken = OAuthToken
    {
      -- | OAuth scope to be used for generating OAuth access token. If not specified, \"https:\/\/www.googleapis.com\/auth\/cloud-platform\" will be used.
      scope :: (Core.Maybe Core.Text)
      -- | <https://cloud.google.com/iam/docs/service-accounts Service account email> to be used for generating OAuth token. The service account must be within the same project as the job. The caller must have iam.serviceAccounts.actAs permission for the service account.
    , serviceAccountEmail :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuthToken' with the minimum fields required to make a request.
newOAuthToken 
    ::  OAuthToken
newOAuthToken =
  OAuthToken {scope = Core.Nothing, serviceAccountEmail = Core.Nothing}

instance Core.FromJSON OAuthToken where
        parseJSON
          = Core.withObject "OAuthToken"
              (\ o ->
                 OAuthToken Core.<$>
                   (o Core..:? "scope") Core.<*>
                     (o Core..:? "serviceAccountEmail"))

instance Core.ToJSON OAuthToken where
        toJSON OAuthToken{..}
          = Core.object
              (Core.catMaybes
                 [("scope" Core..=) Core.<$> scope,
                  ("serviceAccountEmail" Core..=) Core.<$>
                    serviceAccountEmail])


-- | Contains information needed for generating an <https://developers.google.com/identity/protocols/OpenIDConnect OpenID Connect token>. This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
--
-- /See:/ 'newOidcToken' smart constructor.
data OidcToken = OidcToken
    {
      -- | Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
      audience :: (Core.Maybe Core.Text)
      -- | <https://cloud.google.com/iam/docs/service-accounts Service account email> to be used for generating OIDC token. The service account must be within the same project as the job. The caller must have iam.serviceAccounts.actAs permission for the service account.
    , serviceAccountEmail :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OidcToken' with the minimum fields required to make a request.
newOidcToken 
    ::  OidcToken
newOidcToken =
  OidcToken {audience = Core.Nothing, serviceAccountEmail = Core.Nothing}

instance Core.FromJSON OidcToken where
        parseJSON
          = Core.withObject "OidcToken"
              (\ o ->
                 OidcToken Core.<$>
                   (o Core..:? "audience") Core.<*>
                     (o Core..:? "serviceAccountEmail"))

instance Core.ToJSON OidcToken where
        toJSON OidcToken{..}
          = Core.object
              (Core.catMaybes
                 [("audience" Core..=) Core.<$> audience,
                  ("serviceAccountEmail" Core..=) Core.<$>
                    serviceAccountEmail])


-- | Request message for PauseJob.
--
-- /See:/ 'newPauseJobRequest' smart constructor.
data PauseJobRequest = PauseJobRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PauseJobRequest' with the minimum fields required to make a request.
newPauseJobRequest 
    ::  PauseJobRequest
newPauseJobRequest = PauseJobRequest

instance Core.FromJSON PauseJobRequest where
        parseJSON
          = Core.withObject "PauseJobRequest"
              (\ o -> Core.pure PauseJobRequest)

instance Core.ToJSON PauseJobRequest where
        toJSON = Core.const Core.emptyObject


-- | A message that is published by publishers and consumed by subscribers. The message must contain either a non-empty data field or at least one attribute. Note that client libraries represent this object differently depending on the language. See the corresponding <https://cloud.google.com/pubsub/docs/reference/libraries client library documentation> for more information. See [quotas and limits] (https:\/\/cloud.google.com\/pubsub\/quotas) for more information about message limits.
--
-- /See:/ 'newPubsubMessage' smart constructor.
data PubsubMessage = PubsubMessage
    {
      -- | Attributes for this message. If this field is empty, the message must contain non-empty data. This can be used to filter messages on the subscription.
      attributes :: (Core.Maybe PubsubMessage_Attributes)
      -- | The message data field. If this field is empty, the message must contain at least one attribute.
    , data' :: (Core.Maybe Core.Base64)
      -- | ID of this message, assigned by the server when the message is published. Guaranteed to be unique within the topic. This value may be read by a subscriber that receives a @PubsubMessage@ via a @Pull@ call or a push delivery. It must not be populated by the publisher in a @Publish@ call.
    , messageId :: (Core.Maybe Core.Text)
      -- | If non-empty, identifies related messages for which publish order should be respected. If a @Subscription@ has @enable_message_ordering@ set to @true@, messages published with the same non-empty @ordering_key@ value will be delivered to subscribers in the order in which they are received by the Pub\/Sub system. All @PubsubMessage@s published in a given @PublishRequest@ must specify the same @ordering_key@ value.
    , orderingKey :: (Core.Maybe Core.Text)
      -- | The time at which the message was published, populated by the server when it receives the @Publish@ call. It must not be populated by the publisher in a @Publish@ call.
    , publishTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubMessage' with the minimum fields required to make a request.
newPubsubMessage 
    ::  PubsubMessage
newPubsubMessage =
  PubsubMessage
    { attributes = Core.Nothing
    , data' = Core.Nothing
    , messageId = Core.Nothing
    , orderingKey = Core.Nothing
    , publishTime = Core.Nothing
    }

instance Core.FromJSON PubsubMessage where
        parseJSON
          = Core.withObject "PubsubMessage"
              (\ o ->
                 PubsubMessage Core.<$>
                   (o Core..:? "attributes") Core.<*>
                     (o Core..:? "data")
                     Core.<*> (o Core..:? "messageId")
                     Core.<*> (o Core..:? "orderingKey")
                     Core.<*> (o Core..:? "publishTime"))

instance Core.ToJSON PubsubMessage where
        toJSON PubsubMessage{..}
          = Core.object
              (Core.catMaybes
                 [("attributes" Core..=) Core.<$> attributes,
                  ("data" Core..=) Core.<$> data',
                  ("messageId" Core..=) Core.<$> messageId,
                  ("orderingKey" Core..=) Core.<$> orderingKey,
                  ("publishTime" Core..=) Core.<$> publishTime])


-- | Attributes for this message. If this field is empty, the message must contain non-empty data. This can be used to filter messages on the subscription.
--
-- /See:/ 'newPubsubMessage_Attributes' smart constructor.
newtype PubsubMessage_Attributes = PubsubMessage_Attributes
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubMessage_Attributes' with the minimum fields required to make a request.
newPubsubMessage_Attributes 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> PubsubMessage_Attributes
newPubsubMessage_Attributes addtional =
  PubsubMessage_Attributes {addtional = addtional}

instance Core.FromJSON PubsubMessage_Attributes where
        parseJSON
          = Core.withObject "PubsubMessage_Attributes"
              (\ o ->
                 PubsubMessage_Attributes Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON PubsubMessage_Attributes where
        toJSON PubsubMessage_Attributes{..}
          = Core.toJSON addtional


-- | Pub\/Sub target. The job will be delivered by publishing a message to the given Pub\/Sub topic.
--
-- /See:/ 'newPubsubTarget' smart constructor.
data PubsubTarget = PubsubTarget
    {
      -- | Attributes for PubsubMessage. Pubsub message must contain either non-empty data, or at least one attribute.
      attributes :: (Core.Maybe PubsubTarget_Attributes)
      -- | The message payload for PubsubMessage. Pubsub message must contain either non-empty data, or at least one attribute.
    , data' :: (Core.Maybe Core.Base64)
      -- | Required. The name of the Cloud Pub\/Sub topic to which messages will be published when a job is delivered. The topic name must be in the same format as required by Pub\/Sub\'s <https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#publishrequest PublishRequest.name>, for example @projects\/PROJECT_ID\/topics\/TOPIC_ID@. The topic must be in the same project as the Cloud Scheduler job.
    , topicName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubTarget' with the minimum fields required to make a request.
newPubsubTarget 
    ::  PubsubTarget
newPubsubTarget =
  PubsubTarget
    {attributes = Core.Nothing, data' = Core.Nothing, topicName = Core.Nothing}

instance Core.FromJSON PubsubTarget where
        parseJSON
          = Core.withObject "PubsubTarget"
              (\ o ->
                 PubsubTarget Core.<$>
                   (o Core..:? "attributes") Core.<*>
                     (o Core..:? "data")
                     Core.<*> (o Core..:? "topicName"))

instance Core.ToJSON PubsubTarget where
        toJSON PubsubTarget{..}
          = Core.object
              (Core.catMaybes
                 [("attributes" Core..=) Core.<$> attributes,
                  ("data" Core..=) Core.<$> data',
                  ("topicName" Core..=) Core.<$> topicName])


-- | Attributes for PubsubMessage. Pubsub message must contain either non-empty data, or at least one attribute.
--
-- /See:/ 'newPubsubTarget_Attributes' smart constructor.
newtype PubsubTarget_Attributes = PubsubTarget_Attributes
    {
      -- | 
      addtional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubTarget_Attributes' with the minimum fields required to make a request.
newPubsubTarget_Attributes 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'addtional'.
    -> PubsubTarget_Attributes
newPubsubTarget_Attributes addtional =
  PubsubTarget_Attributes {addtional = addtional}

instance Core.FromJSON PubsubTarget_Attributes where
        parseJSON
          = Core.withObject "PubsubTarget_Attributes"
              (\ o ->
                 PubsubTarget_Attributes Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON PubsubTarget_Attributes where
        toJSON PubsubTarget_Attributes{..}
          = Core.toJSON addtional


-- | Request message for ResumeJob.
--
-- /See:/ 'newResumeJobRequest' smart constructor.
data ResumeJobRequest = ResumeJobRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResumeJobRequest' with the minimum fields required to make a request.
newResumeJobRequest 
    ::  ResumeJobRequest
newResumeJobRequest = ResumeJobRequest

instance Core.FromJSON ResumeJobRequest where
        parseJSON
          = Core.withObject "ResumeJobRequest"
              (\ o -> Core.pure ResumeJobRequest)

instance Core.ToJSON ResumeJobRequest where
        toJSON = Core.const Core.emptyObject


-- | Settings that determine the retry behavior. By default, if a job does not complete successfully (meaning that an acknowledgement is not received from the handler, then it will be retried with exponential backoff according to the settings in RetryConfig.
--
-- /See:/ 'newRetryConfig' smart constructor.
data RetryConfig = RetryConfig
    {
      -- | The maximum amount of time to wait before retrying a job after it fails. The default value of this field is 1 hour.
      maxBackoffDuration :: (Core.Maybe Core.GDuration)
      -- | The time between retries will double @max_doublings@ times. A job\'s retry interval starts at min/backoff/duration, then doubles @max_doublings@ times, then increases linearly, and finally retries at intervals of max/backoff/duration up to retry/count times. For example, if min/backoff/duration is 10s, max/backoff/duration is 300s, and @max_doublings@ is 3, then the a job will first be retried in 10s. The retry interval will double three times, and then increase linearly by 2^3 * 10s. Finally, the job will retry at intervals of max/backoff/duration until the job has been attempted retry/count times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s, 300s, .... The default value of this field is 5.
    , maxDoublings :: (Core.Maybe Core.Int32)
      -- | The time limit for retrying a failed job, measured from time when an execution was first attempted. If specified with retry/count, the job will be retried until both limits are reached. The default value for max/retry_duration is zero, which means retry duration is unlimited.
    , maxRetryDuration :: (Core.Maybe Core.GDuration)
      -- | The minimum amount of time to wait before retrying a job after it fails. The default value of this field is 5 seconds.
    , minBackoffDuration :: (Core.Maybe Core.GDuration)
      -- | The number of attempts that the system will make to run a job using the exponential backoff procedure described by max/doublings. The default value of retry/count is zero. If retry/count is zero, a job attempt will /not/ be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. If retry/count is set to a non-zero number then Cloud Scheduler will retry failed attempts, using exponential backoff, retry_count times, or until the next scheduled execution time, whichever comes first. Values greater than 5 and negative values are not allowed.
    , retryCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RetryConfig' with the minimum fields required to make a request.
newRetryConfig 
    ::  RetryConfig
newRetryConfig =
  RetryConfig
    { maxBackoffDuration = Core.Nothing
    , maxDoublings = Core.Nothing
    , maxRetryDuration = Core.Nothing
    , minBackoffDuration = Core.Nothing
    , retryCount = Core.Nothing
    }

instance Core.FromJSON RetryConfig where
        parseJSON
          = Core.withObject "RetryConfig"
              (\ o ->
                 RetryConfig Core.<$>
                   (o Core..:? "maxBackoffDuration") Core.<*>
                     (o Core..:? "maxDoublings")
                     Core.<*> (o Core..:? "maxRetryDuration")
                     Core.<*> (o Core..:? "minBackoffDuration")
                     Core.<*> (o Core..:? "retryCount"))

instance Core.ToJSON RetryConfig where
        toJSON RetryConfig{..}
          = Core.object
              (Core.catMaybes
                 [("maxBackoffDuration" Core..=) Core.<$>
                    maxBackoffDuration,
                  ("maxDoublings" Core..=) Core.<$> maxDoublings,
                  ("maxRetryDuration" Core..=) Core.<$>
                    maxRetryDuration,
                  ("minBackoffDuration" Core..=) Core.<$>
                    minBackoffDuration,
                  ("retryCount" Core..=) Core.<$> retryCount])


-- | Request message for forcing a job to run now using RunJob.
--
-- /See:/ 'newRunJobRequest' smart constructor.
data RunJobRequest = RunJobRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunJobRequest' with the minimum fields required to make a request.
newRunJobRequest 
    ::  RunJobRequest
newRunJobRequest = RunJobRequest

instance Core.FromJSON RunJobRequest where
        parseJSON
          = Core.withObject "RunJobRequest"
              (\ o -> Core.pure RunJobRequest)

instance Core.ToJSON RunJobRequest where
        toJSON = Core.const Core.emptyObject


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*>
                     (o Core..:? "details" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      addtional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'addtional'.
    -> Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..} = Core.toJSON addtional

