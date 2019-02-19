{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudErrorReporting.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudErrorReporting.Types.Product where

import           Network.Google.CloudErrorReporting.Types.Sum
import           Network.Google.Prelude

-- | An error event which is returned by the Error Reporting system.
--
-- /See:/ 'errorEvent' smart constructor.
data ErrorEvent =
  ErrorEvent'
    { _eeContext        :: !(Maybe ErrorContext)
    , _eeEventTime      :: !(Maybe DateTime')
    , _eeServiceContext :: !(Maybe ServiceContext)
    , _eeMessage        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeContext'
--
-- * 'eeEventTime'
--
-- * 'eeServiceContext'
--
-- * 'eeMessage'
errorEvent
    :: ErrorEvent
errorEvent =
  ErrorEvent'
    { _eeContext = Nothing
    , _eeEventTime = Nothing
    , _eeServiceContext = Nothing
    , _eeMessage = Nothing
    }

-- | Data about the context in which the error occurred.
eeContext :: Lens' ErrorEvent (Maybe ErrorContext)
eeContext
  = lens _eeContext (\ s a -> s{_eeContext = a})

-- | Time when the event occurred as provided in the error report. If the
-- report did not contain a timestamp, the time the error was received by
-- the Error Reporting system is used.
eeEventTime :: Lens' ErrorEvent (Maybe UTCTime)
eeEventTime
  = lens _eeEventTime (\ s a -> s{_eeEventTime = a}) .
      mapping _DateTime

-- | The \`ServiceContext\` for which this error was reported.
eeServiceContext :: Lens' ErrorEvent (Maybe ServiceContext)
eeServiceContext
  = lens _eeServiceContext
      (\ s a -> s{_eeServiceContext = a})

-- | The stack trace that was reported or logged by the service.
eeMessage :: Lens' ErrorEvent (Maybe Text)
eeMessage
  = lens _eeMessage (\ s a -> s{_eeMessage = a})

instance FromJSON ErrorEvent where
        parseJSON
          = withObject "ErrorEvent"
              (\ o ->
                 ErrorEvent' <$>
                   (o .:? "context") <*> (o .:? "eventTime") <*>
                     (o .:? "serviceContext")
                     <*> (o .:? "message"))

instance ToJSON ErrorEvent where
        toJSON ErrorEvent'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _eeContext,
                  ("eventTime" .=) <$> _eeEventTime,
                  ("serviceContext" .=) <$> _eeServiceContext,
                  ("message" .=) <$> _eeMessage])

-- | A description of the context in which an error occurred. This data
-- should be provided by the application when reporting an error, unless
-- the error report has been generated automatically from Google App Engine
-- logs.
--
-- /See:/ 'errorContext' smart constructor.
data ErrorContext =
  ErrorContext'
    { _ecHTTPRequest      :: !(Maybe HTTPRequestContext)
    , _ecUser             :: !(Maybe Text)
    , _ecSourceReferences :: !(Maybe [SourceReference])
    , _ecReportLocation   :: !(Maybe SourceLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecHTTPRequest'
--
-- * 'ecUser'
--
-- * 'ecSourceReferences'
--
-- * 'ecReportLocation'
errorContext
    :: ErrorContext
errorContext =
  ErrorContext'
    { _ecHTTPRequest = Nothing
    , _ecUser = Nothing
    , _ecSourceReferences = Nothing
    , _ecReportLocation = Nothing
    }

-- | The HTTP request which was processed when the error was triggered.
ecHTTPRequest :: Lens' ErrorContext (Maybe HTTPRequestContext)
ecHTTPRequest
  = lens _ecHTTPRequest
      (\ s a -> s{_ecHTTPRequest = a})

-- | The user who caused or was affected by the crash. This can be a user ID,
-- an email address, or an arbitrary token that uniquely identifies the
-- user. When sending an error report, leave this field empty if the user
-- was not logged in. In this case the Error Reporting system will use
-- other data, such as remote IP address, to distinguish affected users.
-- See \`affected_users_count\` in \`ErrorGroupStats\`.
ecUser :: Lens' ErrorContext (Maybe Text)
ecUser = lens _ecUser (\ s a -> s{_ecUser = a})

-- | Source code that was used to build the executable which has caused the
-- given error message.
ecSourceReferences :: Lens' ErrorContext [SourceReference]
ecSourceReferences
  = lens _ecSourceReferences
      (\ s a -> s{_ecSourceReferences = a})
      . _Default
      . _Coerce

-- | The location in the source code where the decision was made to report
-- the error, usually the place where it was logged. For a logged exception
-- this would be the source line where the exception is logged, usually
-- close to the place where it was caught.
ecReportLocation :: Lens' ErrorContext (Maybe SourceLocation)
ecReportLocation
  = lens _ecReportLocation
      (\ s a -> s{_ecReportLocation = a})

instance FromJSON ErrorContext where
        parseJSON
          = withObject "ErrorContext"
              (\ o ->
                 ErrorContext' <$>
                   (o .:? "httpRequest") <*> (o .:? "user") <*>
                     (o .:? "sourceReferences" .!= mempty)
                     <*> (o .:? "reportLocation"))

instance ToJSON ErrorContext where
        toJSON ErrorContext'{..}
          = object
              (catMaybes
                 [("httpRequest" .=) <$> _ecHTTPRequest,
                  ("user" .=) <$> _ecUser,
                  ("sourceReferences" .=) <$> _ecSourceReferences,
                  ("reportLocation" .=) <$> _ecReportLocation])

-- | Description of a group of similar error events.
--
-- /See:/ 'errorGroup' smart constructor.
data ErrorGroup =
  ErrorGroup'
    { _egTrackingIssues :: !(Maybe [TrackingIssue])
    , _egName           :: !(Maybe Text)
    , _egGroupId        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egTrackingIssues'
--
-- * 'egName'
--
-- * 'egGroupId'
errorGroup
    :: ErrorGroup
errorGroup =
  ErrorGroup'
    {_egTrackingIssues = Nothing, _egName = Nothing, _egGroupId = Nothing}

-- | Associated tracking issues.
egTrackingIssues :: Lens' ErrorGroup [TrackingIssue]
egTrackingIssues
  = lens _egTrackingIssues
      (\ s a -> s{_egTrackingIssues = a})
      . _Default
      . _Coerce

-- | The group resource name. Example:
-- 'projects\/my-project-123\/groups\/my-groupid'
egName :: Lens' ErrorGroup (Maybe Text)
egName = lens _egName (\ s a -> s{_egName = a})

-- | Group IDs are unique for a given project. If the same kind of error
-- occurs in different service contexts, it will receive the same group ID.
egGroupId :: Lens' ErrorGroup (Maybe Text)
egGroupId
  = lens _egGroupId (\ s a -> s{_egGroupId = a})

instance FromJSON ErrorGroup where
        parseJSON
          = withObject "ErrorGroup"
              (\ o ->
                 ErrorGroup' <$>
                   (o .:? "trackingIssues" .!= mempty) <*>
                     (o .:? "name")
                     <*> (o .:? "groupId"))

instance ToJSON ErrorGroup where
        toJSON ErrorGroup'{..}
          = object
              (catMaybes
                 [("trackingIssues" .=) <$> _egTrackingIssues,
                  ("name" .=) <$> _egName,
                  ("groupId" .=) <$> _egGroupId])

-- | Response message for deleting error events.
--
-- /See:/ 'deleteEventsResponse' smart constructor.
data DeleteEventsResponse =
  DeleteEventsResponse'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteEventsResponse' with the minimum fields required to make a request.
--
deleteEventsResponse
    :: DeleteEventsResponse
deleteEventsResponse = DeleteEventsResponse'

instance FromJSON DeleteEventsResponse where
        parseJSON
          = withObject "DeleteEventsResponse"
              (\ o -> pure DeleteEventsResponse')

instance ToJSON DeleteEventsResponse where
        toJSON = const emptyObject

-- | An error event which is reported to the Error Reporting system.
--
-- /See:/ 'reportedErrorEvent' smart constructor.
data ReportedErrorEvent =
  ReportedErrorEvent'
    { _reeContext        :: !(Maybe ErrorContext)
    , _reeEventTime      :: !(Maybe DateTime')
    , _reeServiceContext :: !(Maybe ServiceContext)
    , _reeMessage        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReportedErrorEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reeContext'
--
-- * 'reeEventTime'
--
-- * 'reeServiceContext'
--
-- * 'reeMessage'
reportedErrorEvent
    :: ReportedErrorEvent
reportedErrorEvent =
  ReportedErrorEvent'
    { _reeContext = Nothing
    , _reeEventTime = Nothing
    , _reeServiceContext = Nothing
    , _reeMessage = Nothing
    }

-- | [Optional] A description of the context in which the error occurred.
reeContext :: Lens' ReportedErrorEvent (Maybe ErrorContext)
reeContext
  = lens _reeContext (\ s a -> s{_reeContext = a})

-- | [Optional] Time when the event occurred. If not provided, the time when
-- the event was received by the Error Reporting system will be used.
reeEventTime :: Lens' ReportedErrorEvent (Maybe UTCTime)
reeEventTime
  = lens _reeEventTime (\ s a -> s{_reeEventTime = a})
      . mapping _DateTime

-- | [Required] The service context in which this error has occurred.
reeServiceContext :: Lens' ReportedErrorEvent (Maybe ServiceContext)
reeServiceContext
  = lens _reeServiceContext
      (\ s a -> s{_reeServiceContext = a})

-- | [Required] The error message. If no \`context.reportLocation\` is
-- provided, the message must contain a header (typically consisting of the
-- exception type name and an error message) and an exception stack trace
-- in one of the supported programming languages and formats. Supported
-- languages are Java, Python, JavaScript, Ruby, C#, PHP, and Go. Supported
-- stack trace formats are: * **Java**: Must be the return value of
-- [\`Throwable.printStackTrace()\`](https:\/\/docs.oracle.com\/javase\/7\/docs\/api\/java\/lang\/Throwable.html#printStackTrace%28%29).
-- * **Python**: Must be the return value of
-- [\`traceback.format_exc()\`](https:\/\/docs.python.org\/2\/library\/traceback.html#traceback.format_exc).
-- * **JavaScript**: Must be the value of
-- [\`error.stack\`](https:\/\/github.com\/v8\/v8\/wiki\/Stack-Trace-API)
-- as returned by V8. * **Ruby**: Must contain frames returned by
-- [\`Exception.backtrace\`](https:\/\/ruby-doc.org\/core-2.2.0\/Exception.html#method-i-backtrace).
-- * **C#**: Must be the return value of
-- [\`Exception.ToString()\`](https:\/\/msdn.microsoft.com\/en-us\/library\/system.exception.tostring.aspx).
-- * **PHP**: Must start with \`PHP (Notice|Parse error|Fatal
-- error|Warning)\` and contain the result of
-- [\`(string)$exception\`](http:\/\/php.net\/manual\/en\/exception.tostring.php).
-- * **Go**: Must be the return value of
-- [\`runtime.Stack()\`](https:\/\/golang.org\/pkg\/runtime\/debug\/#Stack).
reeMessage :: Lens' ReportedErrorEvent (Maybe Text)
reeMessage
  = lens _reeMessage (\ s a -> s{_reeMessage = a})

instance FromJSON ReportedErrorEvent where
        parseJSON
          = withObject "ReportedErrorEvent"
              (\ o ->
                 ReportedErrorEvent' <$>
                   (o .:? "context") <*> (o .:? "eventTime") <*>
                     (o .:? "serviceContext")
                     <*> (o .:? "message"))

instance ToJSON ReportedErrorEvent where
        toJSON ReportedErrorEvent'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _reeContext,
                  ("eventTime" .=) <$> _reeEventTime,
                  ("serviceContext" .=) <$> _reeServiceContext,
                  ("message" .=) <$> _reeMessage])

-- | HTTP request data that is related to a reported error. This data should
-- be provided by the application when reporting an error, unless the error
-- report has been generated automatically from Google App Engine logs.
--
-- /See:/ 'hTTPRequestContext' smart constructor.
data HTTPRequestContext =
  HTTPRequestContext'
    { _httprcRemoteIP           :: !(Maybe Text)
    , _httprcURL                :: !(Maybe Text)
    , _httprcReferrer           :: !(Maybe Text)
    , _httprcMethod             :: !(Maybe Text)
    , _httprcResponseStatusCode :: !(Maybe (Textual Int32))
    , _httprcUserAgent          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HTTPRequestContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httprcRemoteIP'
--
-- * 'httprcURL'
--
-- * 'httprcReferrer'
--
-- * 'httprcMethod'
--
-- * 'httprcResponseStatusCode'
--
-- * 'httprcUserAgent'
hTTPRequestContext
    :: HTTPRequestContext
hTTPRequestContext =
  HTTPRequestContext'
    { _httprcRemoteIP = Nothing
    , _httprcURL = Nothing
    , _httprcReferrer = Nothing
    , _httprcMethod = Nothing
    , _httprcResponseStatusCode = Nothing
    , _httprcUserAgent = Nothing
    }

-- | The IP address from which the request originated. This can be IPv4,
-- IPv6, or a token which is derived from the IP address, depending on the
-- data that has been provided in the error report.
httprcRemoteIP :: Lens' HTTPRequestContext (Maybe Text)
httprcRemoteIP
  = lens _httprcRemoteIP
      (\ s a -> s{_httprcRemoteIP = a})

-- | The URL of the request.
httprcURL :: Lens' HTTPRequestContext (Maybe Text)
httprcURL
  = lens _httprcURL (\ s a -> s{_httprcURL = a})

-- | The referrer information that is provided with the request.
httprcReferrer :: Lens' HTTPRequestContext (Maybe Text)
httprcReferrer
  = lens _httprcReferrer
      (\ s a -> s{_httprcReferrer = a})

-- | The type of HTTP request, such as \`GET\`, \`POST\`, etc.
httprcMethod :: Lens' HTTPRequestContext (Maybe Text)
httprcMethod
  = lens _httprcMethod (\ s a -> s{_httprcMethod = a})

-- | The HTTP response status code for the request.
httprcResponseStatusCode :: Lens' HTTPRequestContext (Maybe Int32)
httprcResponseStatusCode
  = lens _httprcResponseStatusCode
      (\ s a -> s{_httprcResponseStatusCode = a})
      . mapping _Coerce

-- | The user agent information that is provided with the request.
httprcUserAgent :: Lens' HTTPRequestContext (Maybe Text)
httprcUserAgent
  = lens _httprcUserAgent
      (\ s a -> s{_httprcUserAgent = a})

instance FromJSON HTTPRequestContext where
        parseJSON
          = withObject "HTTPRequestContext"
              (\ o ->
                 HTTPRequestContext' <$>
                   (o .:? "remoteIp") <*> (o .:? "url") <*>
                     (o .:? "referrer")
                     <*> (o .:? "method")
                     <*> (o .:? "responseStatusCode")
                     <*> (o .:? "userAgent"))

instance ToJSON HTTPRequestContext where
        toJSON HTTPRequestContext'{..}
          = object
              (catMaybes
                 [("remoteIp" .=) <$> _httprcRemoteIP,
                  ("url" .=) <$> _httprcURL,
                  ("referrer" .=) <$> _httprcReferrer,
                  ("method" .=) <$> _httprcMethod,
                  ("responseStatusCode" .=) <$>
                    _httprcResponseStatusCode,
                  ("userAgent" .=) <$> _httprcUserAgent])

-- | Information related to tracking the progress on resolving the error.
--
-- /See:/ 'trackingIssue' smart constructor.
newtype TrackingIssue =
  TrackingIssue'
    { _tiURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrackingIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiURL'
trackingIssue
    :: TrackingIssue
trackingIssue = TrackingIssue' {_tiURL = Nothing}

-- | A URL pointing to a related entry in an issue tracking system. Example:
-- https:\/\/github.com\/user\/project\/issues\/4
tiURL :: Lens' TrackingIssue (Maybe Text)
tiURL = lens _tiURL (\ s a -> s{_tiURL = a})

instance FromJSON TrackingIssue where
        parseJSON
          = withObject "TrackingIssue"
              (\ o -> TrackingIssue' <$> (o .:? "url"))

instance ToJSON TrackingIssue where
        toJSON TrackingIssue'{..}
          = object (catMaybes [("url" .=) <$> _tiURL])

-- | Contains a set of requested error events.
--
-- /See:/ 'listEventsResponse' smart constructor.
data ListEventsResponse =
  ListEventsResponse'
    { _lerNextPageToken  :: !(Maybe Text)
    , _lerTimeRangeBegin :: !(Maybe DateTime')
    , _lerErrorEvents    :: !(Maybe [ErrorEvent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerNextPageToken'
--
-- * 'lerTimeRangeBegin'
--
-- * 'lerErrorEvents'
listEventsResponse
    :: ListEventsResponse
listEventsResponse =
  ListEventsResponse'
    { _lerNextPageToken = Nothing
    , _lerTimeRangeBegin = Nothing
    , _lerErrorEvents = Nothing
    }

-- | If non-empty, more results are available. Pass this token, along with
-- the same query parameters as the first request, to view the next page of
-- results.
lerNextPageToken :: Lens' ListEventsResponse (Maybe Text)
lerNextPageToken
  = lens _lerNextPageToken
      (\ s a -> s{_lerNextPageToken = a})

-- | The timestamp specifies the start time to which the request was
-- restricted.
lerTimeRangeBegin :: Lens' ListEventsResponse (Maybe UTCTime)
lerTimeRangeBegin
  = lens _lerTimeRangeBegin
      (\ s a -> s{_lerTimeRangeBegin = a})
      . mapping _DateTime

-- | The error events which match the given request.
lerErrorEvents :: Lens' ListEventsResponse [ErrorEvent]
lerErrorEvents
  = lens _lerErrorEvents
      (\ s a -> s{_lerErrorEvents = a})
      . _Default
      . _Coerce

instance FromJSON ListEventsResponse where
        parseJSON
          = withObject "ListEventsResponse"
              (\ o ->
                 ListEventsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "timeRangeBegin")
                     <*> (o .:? "errorEvents" .!= mempty))

instance ToJSON ListEventsResponse where
        toJSON ListEventsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lerNextPageToken,
                  ("timeRangeBegin" .=) <$> _lerTimeRangeBegin,
                  ("errorEvents" .=) <$> _lerErrorEvents])

-- | Data extracted for a specific group based on certain filter criteria,
-- such as a given time period and\/or service filter.
--
-- /See:/ 'errorGroupStats' smart constructor.
data ErrorGroupStats =
  ErrorGroupStats'
    { _egsAffectedServices    :: !(Maybe [ServiceContext])
    , _egsGroup               :: !(Maybe ErrorGroup)
    , _egsFirstSeenTime       :: !(Maybe DateTime')
    , _egsAffectedUsersCount  :: !(Maybe (Textual Int64))
    , _egsCount               :: !(Maybe (Textual Int64))
    , _egsTimedCounts         :: !(Maybe [TimedCount])
    , _egsNumAffectedServices :: !(Maybe (Textual Int32))
    , _egsLastSeenTime        :: !(Maybe DateTime')
    , _egsRepresentative      :: !(Maybe ErrorEvent)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorGroupStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egsAffectedServices'
--
-- * 'egsGroup'
--
-- * 'egsFirstSeenTime'
--
-- * 'egsAffectedUsersCount'
--
-- * 'egsCount'
--
-- * 'egsTimedCounts'
--
-- * 'egsNumAffectedServices'
--
-- * 'egsLastSeenTime'
--
-- * 'egsRepresentative'
errorGroupStats
    :: ErrorGroupStats
errorGroupStats =
  ErrorGroupStats'
    { _egsAffectedServices = Nothing
    , _egsGroup = Nothing
    , _egsFirstSeenTime = Nothing
    , _egsAffectedUsersCount = Nothing
    , _egsCount = Nothing
    , _egsTimedCounts = Nothing
    , _egsNumAffectedServices = Nothing
    , _egsLastSeenTime = Nothing
    , _egsRepresentative = Nothing
    }

-- | Service contexts with a non-zero error count for the given filter
-- criteria. This list can be truncated if multiple services are affected.
-- Refer to \`num_affected_services\` for the total count.
egsAffectedServices :: Lens' ErrorGroupStats [ServiceContext]
egsAffectedServices
  = lens _egsAffectedServices
      (\ s a -> s{_egsAffectedServices = a})
      . _Default
      . _Coerce

-- | Group data that is independent of the filter criteria.
egsGroup :: Lens' ErrorGroupStats (Maybe ErrorGroup)
egsGroup = lens _egsGroup (\ s a -> s{_egsGroup = a})

-- | Approximate first occurrence that was ever seen for this group and which
-- matches the given filter criteria, ignoring the time_range that was
-- specified in the request.
egsFirstSeenTime :: Lens' ErrorGroupStats (Maybe UTCTime)
egsFirstSeenTime
  = lens _egsFirstSeenTime
      (\ s a -> s{_egsFirstSeenTime = a})
      . mapping _DateTime

-- | Approximate number of affected users in the given group that match the
-- filter criteria. Users are distinguished by data in the \`ErrorContext\`
-- of the individual error events, such as their login name or their remote
-- IP address in case of HTTP requests. The number of affected users can be
-- zero even if the number of errors is non-zero if no data was provided
-- from which the affected user could be deduced. Users are counted based
-- on data in the request context that was provided in the error report. If
-- more users are implicitly affected, such as due to a crash of the whole
-- service, this is not reflected here.
egsAffectedUsersCount :: Lens' ErrorGroupStats (Maybe Int64)
egsAffectedUsersCount
  = lens _egsAffectedUsersCount
      (\ s a -> s{_egsAffectedUsersCount = a})
      . mapping _Coerce

-- | Approximate total number of events in the given group that match the
-- filter criteria.
egsCount :: Lens' ErrorGroupStats (Maybe Int64)
egsCount
  = lens _egsCount (\ s a -> s{_egsCount = a}) .
      mapping _Coerce

-- | Approximate number of occurrences over time. Timed counts returned by
-- ListGroups are guaranteed to be: - Inside the requested time interval -
-- Non-overlapping, and - Ordered by ascending time.
egsTimedCounts :: Lens' ErrorGroupStats [TimedCount]
egsTimedCounts
  = lens _egsTimedCounts
      (\ s a -> s{_egsTimedCounts = a})
      . _Default
      . _Coerce

-- | The total number of services with a non-zero error count for the given
-- filter criteria.
egsNumAffectedServices :: Lens' ErrorGroupStats (Maybe Int32)
egsNumAffectedServices
  = lens _egsNumAffectedServices
      (\ s a -> s{_egsNumAffectedServices = a})
      . mapping _Coerce

-- | Approximate last occurrence that was ever seen for this group and which
-- matches the given filter criteria, ignoring the time_range that was
-- specified in the request.
egsLastSeenTime :: Lens' ErrorGroupStats (Maybe UTCTime)
egsLastSeenTime
  = lens _egsLastSeenTime
      (\ s a -> s{_egsLastSeenTime = a})
      . mapping _DateTime

-- | An arbitrary event that is chosen as representative for the whole group.
-- The representative event is intended to be used as a quick preview for
-- the whole group. Events in the group are usually sufficiently similar to
-- each other such that showing an arbitrary representative provides
-- insight into the characteristics of the group as a whole.
egsRepresentative :: Lens' ErrorGroupStats (Maybe ErrorEvent)
egsRepresentative
  = lens _egsRepresentative
      (\ s a -> s{_egsRepresentative = a})

instance FromJSON ErrorGroupStats where
        parseJSON
          = withObject "ErrorGroupStats"
              (\ o ->
                 ErrorGroupStats' <$>
                   (o .:? "affectedServices" .!= mempty) <*>
                     (o .:? "group")
                     <*> (o .:? "firstSeenTime")
                     <*> (o .:? "affectedUsersCount")
                     <*> (o .:? "count")
                     <*> (o .:? "timedCounts" .!= mempty)
                     <*> (o .:? "numAffectedServices")
                     <*> (o .:? "lastSeenTime")
                     <*> (o .:? "representative"))

instance ToJSON ErrorGroupStats where
        toJSON ErrorGroupStats'{..}
          = object
              (catMaybes
                 [("affectedServices" .=) <$> _egsAffectedServices,
                  ("group" .=) <$> _egsGroup,
                  ("firstSeenTime" .=) <$> _egsFirstSeenTime,
                  ("affectedUsersCount" .=) <$> _egsAffectedUsersCount,
                  ("count" .=) <$> _egsCount,
                  ("timedCounts" .=) <$> _egsTimedCounts,
                  ("numAffectedServices" .=) <$>
                    _egsNumAffectedServices,
                  ("lastSeenTime" .=) <$> _egsLastSeenTime,
                  ("representative" .=) <$> _egsRepresentative])

-- | Contains a set of requested error group stats.
--
-- /See:/ 'listGroupStatsResponse' smart constructor.
data ListGroupStatsResponse =
  ListGroupStatsResponse'
    { _lgsrNextPageToken   :: !(Maybe Text)
    , _lgsrTimeRangeBegin  :: !(Maybe DateTime')
    , _lgsrErrorGroupStats :: !(Maybe [ErrorGroupStats])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupStatsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgsrNextPageToken'
--
-- * 'lgsrTimeRangeBegin'
--
-- * 'lgsrErrorGroupStats'
listGroupStatsResponse
    :: ListGroupStatsResponse
listGroupStatsResponse =
  ListGroupStatsResponse'
    { _lgsrNextPageToken = Nothing
    , _lgsrTimeRangeBegin = Nothing
    , _lgsrErrorGroupStats = Nothing
    }

-- | If non-empty, more results are available. Pass this token, along with
-- the same query parameters as the first request, to view the next page of
-- results.
lgsrNextPageToken :: Lens' ListGroupStatsResponse (Maybe Text)
lgsrNextPageToken
  = lens _lgsrNextPageToken
      (\ s a -> s{_lgsrNextPageToken = a})

-- | The timestamp specifies the start time to which the request was
-- restricted. The start time is set based on the requested time range. It
-- may be adjusted to a later time if a project has exceeded the storage
-- quota and older data has been deleted.
lgsrTimeRangeBegin :: Lens' ListGroupStatsResponse (Maybe UTCTime)
lgsrTimeRangeBegin
  = lens _lgsrTimeRangeBegin
      (\ s a -> s{_lgsrTimeRangeBegin = a})
      . mapping _DateTime

-- | The error group stats which match the given request.
lgsrErrorGroupStats :: Lens' ListGroupStatsResponse [ErrorGroupStats]
lgsrErrorGroupStats
  = lens _lgsrErrorGroupStats
      (\ s a -> s{_lgsrErrorGroupStats = a})
      . _Default
      . _Coerce

instance FromJSON ListGroupStatsResponse where
        parseJSON
          = withObject "ListGroupStatsResponse"
              (\ o ->
                 ListGroupStatsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "timeRangeBegin")
                     <*> (o .:? "errorGroupStats" .!= mempty))

instance ToJSON ListGroupStatsResponse where
        toJSON ListGroupStatsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lgsrNextPageToken,
                  ("timeRangeBegin" .=) <$> _lgsrTimeRangeBegin,
                  ("errorGroupStats" .=) <$> _lgsrErrorGroupStats])

-- | Describes a running service that sends errors. Its version changes over
-- time and multiple versions can run in parallel.
--
-- /See:/ 'serviceContext' smart constructor.
data ServiceContext =
  ServiceContext'
    { _scResourceType :: !(Maybe Text)
    , _scService      :: !(Maybe Text)
    , _scVersion      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scResourceType'
--
-- * 'scService'
--
-- * 'scVersion'
serviceContext
    :: ServiceContext
serviceContext =
  ServiceContext'
    {_scResourceType = Nothing, _scService = Nothing, _scVersion = Nothing}

-- | Type of the MonitoredResource. List of possible values:
-- https:\/\/cloud.google.com\/monitoring\/api\/resources Value is set
-- automatically for incoming errors and must not be set when reporting
-- errors.
scResourceType :: Lens' ServiceContext (Maybe Text)
scResourceType
  = lens _scResourceType
      (\ s a -> s{_scResourceType = a})

-- | An identifier of the service, such as the name of the executable, job,
-- or Google App Engine service name. This field is expected to have a low
-- number of values that are relatively stable over time, as opposed to
-- \`version\`, which can be changed whenever new code is deployed.
-- Contains the service name for error reports extracted from Google App
-- Engine logs or \`default\` if the App Engine default service is used.
scService :: Lens' ServiceContext (Maybe Text)
scService
  = lens _scService (\ s a -> s{_scService = a})

-- | Represents the source code version that the developer provided, which
-- could represent a version label or a Git SHA-1 hash, for example. For
-- App Engine standard environment, the version is set to the version of
-- the app.
scVersion :: Lens' ServiceContext (Maybe Text)
scVersion
  = lens _scVersion (\ s a -> s{_scVersion = a})

instance FromJSON ServiceContext where
        parseJSON
          = withObject "ServiceContext"
              (\ o ->
                 ServiceContext' <$>
                   (o .:? "resourceType") <*> (o .:? "service") <*>
                     (o .:? "version"))

instance ToJSON ServiceContext where
        toJSON ServiceContext'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _scResourceType,
                  ("service" .=) <$> _scService,
                  ("version" .=) <$> _scVersion])

-- | The number of errors in a given time period. All numbers are approximate
-- since the error events are sampled before counting them.
--
-- /See:/ 'timedCount' smart constructor.
data TimedCount =
  TimedCount'
    { _tcStartTime :: !(Maybe DateTime')
    , _tcCount     :: !(Maybe (Textual Int64))
    , _tcEndTime   :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TimedCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcStartTime'
--
-- * 'tcCount'
--
-- * 'tcEndTime'
timedCount
    :: TimedCount
timedCount =
  TimedCount' {_tcStartTime = Nothing, _tcCount = Nothing, _tcEndTime = Nothing}

-- | Start of the time period to which \`count\` refers (included).
tcStartTime :: Lens' TimedCount (Maybe UTCTime)
tcStartTime
  = lens _tcStartTime (\ s a -> s{_tcStartTime = a}) .
      mapping _DateTime

-- | Approximate number of occurrences in the given time period.
tcCount :: Lens' TimedCount (Maybe Int64)
tcCount
  = lens _tcCount (\ s a -> s{_tcCount = a}) .
      mapping _Coerce

-- | End of the time period to which \`count\` refers (excluded).
tcEndTime :: Lens' TimedCount (Maybe UTCTime)
tcEndTime
  = lens _tcEndTime (\ s a -> s{_tcEndTime = a}) .
      mapping _DateTime

instance FromJSON TimedCount where
        parseJSON
          = withObject "TimedCount"
              (\ o ->
                 TimedCount' <$>
                   (o .:? "startTime") <*> (o .:? "count") <*>
                     (o .:? "endTime"))

instance ToJSON TimedCount where
        toJSON TimedCount'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _tcStartTime,
                  ("count" .=) <$> _tcCount,
                  ("endTime" .=) <$> _tcEndTime])

-- | Indicates a location in the source code of the service for which errors
-- are reported. \`functionName\` must be provided by the application when
-- reporting an error, unless the error report contains a \`message\` with
-- a supported exception stack trace. All fields are optional for the later
-- case.
--
-- /See:/ 'sourceLocation' smart constructor.
data SourceLocation =
  SourceLocation'
    { _slLineNumber   :: !(Maybe (Textual Int32))
    , _slFilePath     :: !(Maybe Text)
    , _slFunctionName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slLineNumber'
--
-- * 'slFilePath'
--
-- * 'slFunctionName'
sourceLocation
    :: SourceLocation
sourceLocation =
  SourceLocation'
    {_slLineNumber = Nothing, _slFilePath = Nothing, _slFunctionName = Nothing}

-- | 1-based. 0 indicates that the line number is unknown.
slLineNumber :: Lens' SourceLocation (Maybe Int32)
slLineNumber
  = lens _slLineNumber (\ s a -> s{_slLineNumber = a})
      . mapping _Coerce

-- | The source code filename, which can include a truncated relative path,
-- or a full path from a production machine.
slFilePath :: Lens' SourceLocation (Maybe Text)
slFilePath
  = lens _slFilePath (\ s a -> s{_slFilePath = a})

-- | Human-readable name of a function or method. The value can include
-- optional context like the class or package name. For example,
-- \`my.package.MyClass.method\` in case of Java.
slFunctionName :: Lens' SourceLocation (Maybe Text)
slFunctionName
  = lens _slFunctionName
      (\ s a -> s{_slFunctionName = a})

instance FromJSON SourceLocation where
        parseJSON
          = withObject "SourceLocation"
              (\ o ->
                 SourceLocation' <$>
                   (o .:? "lineNumber") <*> (o .:? "filePath") <*>
                     (o .:? "functionName"))

instance ToJSON SourceLocation where
        toJSON SourceLocation'{..}
          = object
              (catMaybes
                 [("lineNumber" .=) <$> _slLineNumber,
                  ("filePath" .=) <$> _slFilePath,
                  ("functionName" .=) <$> _slFunctionName])

-- | A reference to a particular snapshot of the source tree used to build
-- and deploy an application.
--
-- /See:/ 'sourceReference' smart constructor.
data SourceReference =
  SourceReference'
    { _srRepository :: !(Maybe Text)
    , _srRevisionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SourceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srRepository'
--
-- * 'srRevisionId'
sourceReference
    :: SourceReference
sourceReference =
  SourceReference' {_srRepository = Nothing, _srRevisionId = Nothing}

-- | Optional. A URI string identifying the repository. Example:
-- \"https:\/\/github.com\/GoogleCloudPlatform\/kubernetes.git\"
srRepository :: Lens' SourceReference (Maybe Text)
srRepository
  = lens _srRepository (\ s a -> s{_srRepository = a})

-- | The canonical and persistent identifier of the deployed revision.
-- Example (git): \"0035781c50ec7aa23385dc841529ce8a4b70db1b\"
srRevisionId :: Lens' SourceReference (Maybe Text)
srRevisionId
  = lens _srRevisionId (\ s a -> s{_srRevisionId = a})

instance FromJSON SourceReference where
        parseJSON
          = withObject "SourceReference"
              (\ o ->
                 SourceReference' <$>
                   (o .:? "repository") <*> (o .:? "revisionId"))

instance ToJSON SourceReference where
        toJSON SourceReference'{..}
          = object
              (catMaybes
                 [("repository" .=) <$> _srRepository,
                  ("revisionId" .=) <$> _srRevisionId])

-- | Response for reporting an individual error event. Data may be added to
-- this message in the future.
--
-- /See:/ 'reportErrorEventResponse' smart constructor.
data ReportErrorEventResponse =
  ReportErrorEventResponse'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReportErrorEventResponse' with the minimum fields required to make a request.
--
reportErrorEventResponse
    :: ReportErrorEventResponse
reportErrorEventResponse = ReportErrorEventResponse'

instance FromJSON ReportErrorEventResponse where
        parseJSON
          = withObject "ReportErrorEventResponse"
              (\ o -> pure ReportErrorEventResponse')

instance ToJSON ReportErrorEventResponse where
        toJSON = const emptyObject
