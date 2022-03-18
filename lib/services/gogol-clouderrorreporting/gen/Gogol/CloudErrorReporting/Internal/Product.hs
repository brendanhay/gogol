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
-- Module      : Gogol.CloudErrorReporting.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudErrorReporting.Internal.Product
  ( -- * DeleteEventsResponse
    DeleteEventsResponse (..),
    newDeleteEventsResponse,

    -- * ErrorContext
    ErrorContext (..),
    newErrorContext,

    -- * ErrorEvent
    ErrorEvent (..),
    newErrorEvent,

    -- * ErrorGroup
    ErrorGroup (..),
    newErrorGroup,

    -- * ErrorGroupStats
    ErrorGroupStats (..),
    newErrorGroupStats,

    -- * HttpRequestContext
    HttpRequestContext (..),
    newHttpRequestContext,

    -- * ListEventsResponse
    ListEventsResponse (..),
    newListEventsResponse,

    -- * ListGroupStatsResponse
    ListGroupStatsResponse (..),
    newListGroupStatsResponse,

    -- * ReportErrorEventResponse
    ReportErrorEventResponse (..),
    newReportErrorEventResponse,

    -- * ReportedErrorEvent
    ReportedErrorEvent (..),
    newReportedErrorEvent,

    -- * ServiceContext
    ServiceContext (..),
    newServiceContext,

    -- * SourceLocation
    SourceLocation (..),
    newSourceLocation,

    -- * SourceReference
    SourceReference (..),
    newSourceReference,

    -- * TimedCount
    TimedCount (..),
    newTimedCount,

    -- * TrackingIssue
    TrackingIssue (..),
    newTrackingIssue,
  )
where

import Gogol.CloudErrorReporting.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Response message for deleting error events.
--
-- /See:/ 'newDeleteEventsResponse' smart constructor.
data DeleteEventsResponse = DeleteEventsResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteEventsResponse' with the minimum fields required to make a request.
newDeleteEventsResponse ::
  DeleteEventsResponse
newDeleteEventsResponse = DeleteEventsResponse

instance Core.FromJSON DeleteEventsResponse where
  parseJSON =
    Core.withObject
      "DeleteEventsResponse"
      (\o -> Core.pure DeleteEventsResponse)

instance Core.ToJSON DeleteEventsResponse where
  toJSON = Core.const Core.emptyObject

-- | A description of the context in which an error occurred. This data should be provided by the application when reporting an error, unless the error report has been generated automatically from Google App Engine logs.
--
-- /See:/ 'newErrorContext' smart constructor.
data ErrorContext = ErrorContext
  { -- | The HTTP request which was processed when the error was triggered.
    httpRequest :: (Core.Maybe HttpRequestContext),
    -- | The location in the source code where the decision was made to report the error, usually the place where it was logged. For a logged exception this would be the source line where the exception is logged, usually close to the place where it was caught.
    reportLocation :: (Core.Maybe SourceLocation),
    -- | Source code that was used to build the executable which has caused the given error message.
    sourceReferences :: (Core.Maybe [SourceReference]),
    -- | The user who caused or was affected by the crash. This can be a user ID, an email address, or an arbitrary token that uniquely identifies the user. When sending an error report, leave this field empty if the user was not logged in. In this case the Error Reporting system will use other data, such as remote IP address, to distinguish affected users. See @affected_users_count@ in @ErrorGroupStats@.
    user :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorContext' with the minimum fields required to make a request.
newErrorContext ::
  ErrorContext
newErrorContext =
  ErrorContext
    { httpRequest = Core.Nothing,
      reportLocation = Core.Nothing,
      sourceReferences = Core.Nothing,
      user = Core.Nothing
    }

instance Core.FromJSON ErrorContext where
  parseJSON =
    Core.withObject
      "ErrorContext"
      ( \o ->
          ErrorContext
            Core.<$> (o Core..:? "httpRequest")
            Core.<*> (o Core..:? "reportLocation")
            Core.<*> (o Core..:? "sourceReferences" Core..!= Core.mempty)
            Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON ErrorContext where
  toJSON ErrorContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("httpRequest" Core..=) Core.<$> httpRequest,
            ("reportLocation" Core..=) Core.<$> reportLocation,
            ("sourceReferences" Core..=)
              Core.<$> sourceReferences,
            ("user" Core..=) Core.<$> user
          ]
      )

-- | An error event which is returned by the Error Reporting system.
--
-- /See:/ 'newErrorEvent' smart constructor.
data ErrorEvent = ErrorEvent
  { -- | Data about the context in which the error occurred.
    context :: (Core.Maybe ErrorContext),
    -- | Time when the event occurred as provided in the error report. If the report did not contain a timestamp, the time the error was received by the Error Reporting system is used.
    eventTime :: (Core.Maybe Core.DateTime'),
    -- | The stack trace that was reported or logged by the service.
    message :: (Core.Maybe Core.Text),
    -- | The @ServiceContext@ for which this error was reported.
    serviceContext :: (Core.Maybe ServiceContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorEvent' with the minimum fields required to make a request.
newErrorEvent ::
  ErrorEvent
newErrorEvent =
  ErrorEvent
    { context = Core.Nothing,
      eventTime = Core.Nothing,
      message = Core.Nothing,
      serviceContext = Core.Nothing
    }

instance Core.FromJSON ErrorEvent where
  parseJSON =
    Core.withObject
      "ErrorEvent"
      ( \o ->
          ErrorEvent
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "serviceContext")
      )

instance Core.ToJSON ErrorEvent where
  toJSON ErrorEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("eventTime" Core..=) Core.<$> eventTime,
            ("message" Core..=) Core.<$> message,
            ("serviceContext" Core..=) Core.<$> serviceContext
          ]
      )

-- | Description of a group of similar error events.
--
-- /See:/ 'newErrorGroup' smart constructor.
data ErrorGroup = ErrorGroup
  { -- | Group IDs are unique for a given project. If the same kind of error occurs in different service contexts, it will receive the same group ID.
    groupId :: (Core.Maybe Core.Text),
    -- | The group resource name. Example: projects\/my-project-123\/groups\/CNSgkpnppqKCUw
    name :: (Core.Maybe Core.Text),
    -- | Error group\'s resolution status. An unspecified resolution status will be interpreted as OPEN
    resolutionStatus :: (Core.Maybe ErrorGroup_ResolutionStatus),
    -- | Associated tracking issues.
    trackingIssues :: (Core.Maybe [TrackingIssue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorGroup' with the minimum fields required to make a request.
newErrorGroup ::
  ErrorGroup
newErrorGroup =
  ErrorGroup
    { groupId = Core.Nothing,
      name = Core.Nothing,
      resolutionStatus = Core.Nothing,
      trackingIssues = Core.Nothing
    }

instance Core.FromJSON ErrorGroup where
  parseJSON =
    Core.withObject
      "ErrorGroup"
      ( \o ->
          ErrorGroup
            Core.<$> (o Core..:? "groupId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "resolutionStatus")
            Core.<*> (o Core..:? "trackingIssues" Core..!= Core.mempty)
      )

instance Core.ToJSON ErrorGroup where
  toJSON ErrorGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupId" Core..=) Core.<$> groupId,
            ("name" Core..=) Core.<$> name,
            ("resolutionStatus" Core..=)
              Core.<$> resolutionStatus,
            ("trackingIssues" Core..=) Core.<$> trackingIssues
          ]
      )

-- | Data extracted for a specific group based on certain filter criteria, such as a given time period and\/or service filter.
--
-- /See:/ 'newErrorGroupStats' smart constructor.
data ErrorGroupStats = ErrorGroupStats
  { -- | Service contexts with a non-zero error count for the given filter criteria. This list can be truncated if multiple services are affected. Refer to @num_affected_services@ for the total count.
    affectedServices :: (Core.Maybe [ServiceContext]),
    -- | Approximate number of affected users in the given group that match the filter criteria. Users are distinguished by data in the @ErrorContext@ of the individual error events, such as their login name or their remote IP address in case of HTTP requests. The number of affected users can be zero even if the number of errors is non-zero if no data was provided from which the affected user could be deduced. Users are counted based on data in the request context that was provided in the error report. If more users are implicitly affected, such as due to a crash of the whole service, this is not reflected here.
    affectedUsersCount :: (Core.Maybe Core.Int64),
    -- | Approximate total number of events in the given group that match the filter criteria.
    count :: (Core.Maybe Core.Int64),
    -- | Approximate first occurrence that was ever seen for this group and which matches the given filter criteria, ignoring the time_range that was specified in the request.
    firstSeenTime :: (Core.Maybe Core.DateTime'),
    -- | Group data that is independent of the filter criteria.
    group' :: (Core.Maybe ErrorGroup),
    -- | Approximate last occurrence that was ever seen for this group and which matches the given filter criteria, ignoring the time_range that was specified in the request.
    lastSeenTime :: (Core.Maybe Core.DateTime'),
    -- | The total number of services with a non-zero error count for the given filter criteria.
    numAffectedServices :: (Core.Maybe Core.Int32),
    -- | An arbitrary event that is chosen as representative for the whole group. The representative event is intended to be used as a quick preview for the whole group. Events in the group are usually sufficiently similar to each other such that showing an arbitrary representative provides insight into the characteristics of the group as a whole.
    representative :: (Core.Maybe ErrorEvent),
    -- | Approximate number of occurrences over time. Timed counts returned by ListGroups are guaranteed to be: - Inside the requested time interval - Non-overlapping, and - Ordered by ascending time.
    timedCounts :: (Core.Maybe [TimedCount])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorGroupStats' with the minimum fields required to make a request.
newErrorGroupStats ::
  ErrorGroupStats
newErrorGroupStats =
  ErrorGroupStats
    { affectedServices = Core.Nothing,
      affectedUsersCount = Core.Nothing,
      count = Core.Nothing,
      firstSeenTime = Core.Nothing,
      group' = Core.Nothing,
      lastSeenTime = Core.Nothing,
      numAffectedServices = Core.Nothing,
      representative = Core.Nothing,
      timedCounts = Core.Nothing
    }

instance Core.FromJSON ErrorGroupStats where
  parseJSON =
    Core.withObject
      "ErrorGroupStats"
      ( \o ->
          ErrorGroupStats
            Core.<$> (o Core..:? "affectedServices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "affectedUsersCount")
            Core.<*> (o Core..:? "count")
            Core.<*> (o Core..:? "firstSeenTime")
            Core.<*> (o Core..:? "group")
            Core.<*> (o Core..:? "lastSeenTime")
            Core.<*> (o Core..:? "numAffectedServices")
            Core.<*> (o Core..:? "representative")
            Core.<*> (o Core..:? "timedCounts" Core..!= Core.mempty)
      )

instance Core.ToJSON ErrorGroupStats where
  toJSON ErrorGroupStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("affectedServices" Core..=)
              Core.<$> affectedServices,
            ("affectedUsersCount" Core..=) Core.. Core.AsText
              Core.<$> affectedUsersCount,
            ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("firstSeenTime" Core..=) Core.<$> firstSeenTime,
            ("group" Core..=) Core.<$> group',
            ("lastSeenTime" Core..=) Core.<$> lastSeenTime,
            ("numAffectedServices" Core..=)
              Core.<$> numAffectedServices,
            ("representative" Core..=) Core.<$> representative,
            ("timedCounts" Core..=) Core.<$> timedCounts
          ]
      )

-- | HTTP request data that is related to a reported error. This data should be provided by the application when reporting an error, unless the error report has been generated automatically from Google App Engine logs.
--
-- /See:/ 'newHttpRequestContext' smart constructor.
data HttpRequestContext = HttpRequestContext
  { -- | The type of HTTP request, such as @GET@, @POST@, etc.
    method :: (Core.Maybe Core.Text),
    -- | The referrer information that is provided with the request.
    referrer :: (Core.Maybe Core.Text),
    -- | The IP address from which the request originated. This can be IPv4, IPv6, or a token which is derived from the IP address, depending on the data that has been provided in the error report.
    remoteIp :: (Core.Maybe Core.Text),
    -- | The HTTP response status code for the request.
    responseStatusCode :: (Core.Maybe Core.Int32),
    -- | The URL of the request.
    url :: (Core.Maybe Core.Text),
    -- | The user agent information that is provided with the request.
    userAgent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpRequestContext' with the minimum fields required to make a request.
newHttpRequestContext ::
  HttpRequestContext
newHttpRequestContext =
  HttpRequestContext
    { method = Core.Nothing,
      referrer = Core.Nothing,
      remoteIp = Core.Nothing,
      responseStatusCode = Core.Nothing,
      url = Core.Nothing,
      userAgent = Core.Nothing
    }

instance Core.FromJSON HttpRequestContext where
  parseJSON =
    Core.withObject
      "HttpRequestContext"
      ( \o ->
          HttpRequestContext
            Core.<$> (o Core..:? "method")
            Core.<*> (o Core..:? "referrer")
            Core.<*> (o Core..:? "remoteIp")
            Core.<*> (o Core..:? "responseStatusCode")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "userAgent")
      )

instance Core.ToJSON HttpRequestContext where
  toJSON HttpRequestContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("method" Core..=) Core.<$> method,
            ("referrer" Core..=) Core.<$> referrer,
            ("remoteIp" Core..=) Core.<$> remoteIp,
            ("responseStatusCode" Core..=)
              Core.<$> responseStatusCode,
            ("url" Core..=) Core.<$> url,
            ("userAgent" Core..=) Core.<$> userAgent
          ]
      )

-- | Contains a set of requested error events.
--
-- /See:/ 'newListEventsResponse' smart constructor.
data ListEventsResponse = ListEventsResponse
  { -- | The error events which match the given request.
    errorEvents :: (Core.Maybe [ErrorEvent]),
    -- | If non-empty, more results are available. Pass this token, along with the same query parameters as the first request, to view the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The timestamp specifies the start time to which the request was restricted.
    timeRangeBegin :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListEventsResponse' with the minimum fields required to make a request.
newListEventsResponse ::
  ListEventsResponse
newListEventsResponse =
  ListEventsResponse
    { errorEvents = Core.Nothing,
      nextPageToken = Core.Nothing,
      timeRangeBegin = Core.Nothing
    }

instance Core.FromJSON ListEventsResponse where
  parseJSON =
    Core.withObject
      "ListEventsResponse"
      ( \o ->
          ListEventsResponse
            Core.<$> (o Core..:? "errorEvents" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "timeRangeBegin")
      )

instance Core.ToJSON ListEventsResponse where
  toJSON ListEventsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorEvents" Core..=) Core.<$> errorEvents,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("timeRangeBegin" Core..=) Core.<$> timeRangeBegin
          ]
      )

-- | Contains a set of requested error group stats.
--
-- /See:/ 'newListGroupStatsResponse' smart constructor.
data ListGroupStatsResponse = ListGroupStatsResponse
  { -- | The error group stats which match the given request.
    errorGroupStats :: (Core.Maybe [ErrorGroupStats]),
    -- | If non-empty, more results are available. Pass this token, along with the same query parameters as the first request, to view the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The timestamp specifies the start time to which the request was restricted. The start time is set based on the requested time range. It may be adjusted to a later time if a project has exceeded the storage quota and older data has been deleted.
    timeRangeBegin :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGroupStatsResponse' with the minimum fields required to make a request.
newListGroupStatsResponse ::
  ListGroupStatsResponse
newListGroupStatsResponse =
  ListGroupStatsResponse
    { errorGroupStats = Core.Nothing,
      nextPageToken = Core.Nothing,
      timeRangeBegin = Core.Nothing
    }

instance Core.FromJSON ListGroupStatsResponse where
  parseJSON =
    Core.withObject
      "ListGroupStatsResponse"
      ( \o ->
          ListGroupStatsResponse
            Core.<$> (o Core..:? "errorGroupStats" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "timeRangeBegin")
      )

instance Core.ToJSON ListGroupStatsResponse where
  toJSON ListGroupStatsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorGroupStats" Core..=)
              Core.<$> errorGroupStats,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("timeRangeBegin" Core..=) Core.<$> timeRangeBegin
          ]
      )

-- | Response for reporting an individual error event. Data may be added to this message in the future.
--
-- /See:/ 'newReportErrorEventResponse' smart constructor.
data ReportErrorEventResponse = ReportErrorEventResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportErrorEventResponse' with the minimum fields required to make a request.
newReportErrorEventResponse ::
  ReportErrorEventResponse
newReportErrorEventResponse = ReportErrorEventResponse

instance Core.FromJSON ReportErrorEventResponse where
  parseJSON =
    Core.withObject
      "ReportErrorEventResponse"
      (\o -> Core.pure ReportErrorEventResponse)

instance Core.ToJSON ReportErrorEventResponse where
  toJSON = Core.const Core.emptyObject

-- | An error event which is reported to the Error Reporting system.
--
-- /See:/ 'newReportedErrorEvent' smart constructor.
data ReportedErrorEvent = ReportedErrorEvent
  { -- | Optional. A description of the context in which the error occurred.
    context :: (Core.Maybe ErrorContext),
    -- | Optional. Time when the event occurred. If not provided, the time when the event was received by the Error Reporting system is used. If provided, the time must not exceed the <https://cloud.google.com/logging/quotas#logs_retention_periods logs retention period> in the past, or be more than 24 hours in the future. If an invalid time is provided, then an error is returned.
    eventTime :: (Core.Maybe Core.DateTime'),
    -- | Required. The error message. If no @context.reportLocation@ is provided, the message must contain a header (typically consisting of the exception type name and an error message) and an exception stack trace in one of the supported programming languages and formats. Supported languages are Java, Python, JavaScript, Ruby, C#, PHP, and Go. Supported stack trace formats are: * __Java__: Must be the return value of <https://docs.oracle.com/javase/7/docs/api/java/lang/Throwable.html#printStackTrace%28%29 Throwable.printStackTrace()>. * __Python__: Must be the return value of <https://docs.python.org/2/library/traceback.html#traceback.format_exc traceback.format_exc()>. * __JavaScript__: Must be the value of <https://github.com/v8/v8/wiki/Stack-Trace-API error.stack> as returned by V8. * __Ruby__: Must contain frames returned by <https://ruby-doc.org/core-2.2.0/Exception.html#method-i-backtrace Exception.backtrace>. * __C#__: Must be the return value of
    -- <https://msdn.microsoft.com/en-us/library/system.exception.tostring.aspx Exception.ToString()>. * __PHP__: Must start with @PHP (Notice|Parse error|Fatal error|Warning)@ and contain the result of <http://php.net/manual/en/exception.tostring.php (string)$exception>. * __Go__: Must be the return value of <https://golang.org/pkg/runtime/debug/#Stack runtime.Stack()>.
    message :: (Core.Maybe Core.Text),
    -- | Required. The service context in which this error has occurred.
    serviceContext :: (Core.Maybe ServiceContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportedErrorEvent' with the minimum fields required to make a request.
newReportedErrorEvent ::
  ReportedErrorEvent
newReportedErrorEvent =
  ReportedErrorEvent
    { context = Core.Nothing,
      eventTime = Core.Nothing,
      message = Core.Nothing,
      serviceContext = Core.Nothing
    }

instance Core.FromJSON ReportedErrorEvent where
  parseJSON =
    Core.withObject
      "ReportedErrorEvent"
      ( \o ->
          ReportedErrorEvent
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "serviceContext")
      )

instance Core.ToJSON ReportedErrorEvent where
  toJSON ReportedErrorEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("eventTime" Core..=) Core.<$> eventTime,
            ("message" Core..=) Core.<$> message,
            ("serviceContext" Core..=) Core.<$> serviceContext
          ]
      )

-- | Describes a running service that sends errors. Its version changes over time and multiple versions can run in parallel.
--
-- /See:/ 'newServiceContext' smart constructor.
data ServiceContext = ServiceContext
  { -- | Type of the MonitoredResource. List of possible values: https:\/\/cloud.google.com\/monitoring\/api\/resources Value is set automatically for incoming errors and must not be set when reporting errors.
    resourceType :: (Core.Maybe Core.Text),
    -- | An identifier of the service, such as the name of the executable, job, or Google App Engine service name. This field is expected to have a low number of values that are relatively stable over time, as opposed to @version@, which can be changed whenever new code is deployed. Contains the service name for error reports extracted from Google App Engine logs or @default@ if the App Engine default service is used.
    service :: (Core.Maybe Core.Text),
    -- | Represents the source code version that the developer provided, which could represent a version label or a Git SHA-1 hash, for example. For App Engine standard environment, the version is set to the version of the app.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceContext' with the minimum fields required to make a request.
newServiceContext ::
  ServiceContext
newServiceContext =
  ServiceContext
    { resourceType = Core.Nothing,
      service = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON ServiceContext where
  parseJSON =
    Core.withObject
      "ServiceContext"
      ( \o ->
          ServiceContext
            Core.<$> (o Core..:? "resourceType")
            Core.<*> (o Core..:? "service")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON ServiceContext where
  toJSON ServiceContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("resourceType" Core..=) Core.<$> resourceType,
            ("service" Core..=) Core.<$> service,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Indicates a location in the source code of the service for which errors are reported. @functionName@ must be provided by the application when reporting an error, unless the error report contains a @message@ with a supported exception stack trace. All fields are optional for the later case.
--
-- /See:/ 'newSourceLocation' smart constructor.
data SourceLocation = SourceLocation
  { -- | The source code filename, which can include a truncated relative path, or a full path from a production machine.
    filePath :: (Core.Maybe Core.Text),
    -- | Human-readable name of a function or method. The value can include optional context like the class or package name. For example, @my.package.MyClass.method@ in case of Java.
    functionName :: (Core.Maybe Core.Text),
    -- | 1-based. 0 indicates that the line number is unknown.
    lineNumber :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
newSourceLocation ::
  SourceLocation
newSourceLocation =
  SourceLocation
    { filePath = Core.Nothing,
      functionName = Core.Nothing,
      lineNumber = Core.Nothing
    }

instance Core.FromJSON SourceLocation where
  parseJSON =
    Core.withObject
      "SourceLocation"
      ( \o ->
          SourceLocation
            Core.<$> (o Core..:? "filePath")
            Core.<*> (o Core..:? "functionName")
            Core.<*> (o Core..:? "lineNumber")
      )

instance Core.ToJSON SourceLocation where
  toJSON SourceLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("filePath" Core..=) Core.<$> filePath,
            ("functionName" Core..=) Core.<$> functionName,
            ("lineNumber" Core..=) Core.<$> lineNumber
          ]
      )

-- | A reference to a particular snapshot of the source tree used to build and deploy an application.
--
-- /See:/ 'newSourceReference' smart constructor.
data SourceReference = SourceReference
  { -- | Optional. A URI string identifying the repository. Example: \"https:\/\/github.com\/GoogleCloudPlatform\/kubernetes.git\"
    repository :: (Core.Maybe Core.Text),
    -- | The canonical and persistent identifier of the deployed revision. Example (git): \"0035781c50ec7aa23385dc841529ce8a4b70db1b\"
    revisionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceReference' with the minimum fields required to make a request.
newSourceReference ::
  SourceReference
newSourceReference =
  SourceReference {repository = Core.Nothing, revisionId = Core.Nothing}

instance Core.FromJSON SourceReference where
  parseJSON =
    Core.withObject
      "SourceReference"
      ( \o ->
          SourceReference
            Core.<$> (o Core..:? "repository")
            Core.<*> (o Core..:? "revisionId")
      )

instance Core.ToJSON SourceReference where
  toJSON SourceReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("repository" Core..=) Core.<$> repository,
            ("revisionId" Core..=) Core.<$> revisionId
          ]
      )

-- | The number of errors in a given time period. All numbers are approximate since the error events are sampled before counting them.
--
-- /See:/ 'newTimedCount' smart constructor.
data TimedCount = TimedCount
  { -- | Approximate number of occurrences in the given time period.
    count :: (Core.Maybe Core.Int64),
    -- | End of the time period to which @count@ refers (excluded).
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Start of the time period to which @count@ refers (included).
    startTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimedCount' with the minimum fields required to make a request.
newTimedCount ::
  TimedCount
newTimedCount =
  TimedCount
    { count = Core.Nothing,
      endTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON TimedCount where
  parseJSON =
    Core.withObject
      "TimedCount"
      ( \o ->
          TimedCount
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimedCount where
  toJSON TimedCount {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Information related to tracking the progress on resolving the error.
--
-- /See:/ 'newTrackingIssue' smart constructor.
newtype TrackingIssue = TrackingIssue
  { -- | A URL pointing to a related entry in an issue tracking system. Example: @https:\/\/github.com\/user\/project\/issues\/4@
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrackingIssue' with the minimum fields required to make a request.
newTrackingIssue ::
  TrackingIssue
newTrackingIssue = TrackingIssue {url = Core.Nothing}

instance Core.FromJSON TrackingIssue where
  parseJSON =
    Core.withObject
      "TrackingIssue"
      (\o -> TrackingIssue Core.<$> (o Core..:? "url"))

instance Core.ToJSON TrackingIssue where
  toJSON TrackingIssue {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])
