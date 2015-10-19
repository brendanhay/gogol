{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Logging.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Logging.Types.Product where

import           Network.Google.Logging.Types.Sum
import           Network.Google.Prelude

-- | Complete log information about a single request to an application.
--
-- /See:/ 'requestLog' smart constructor.
data RequestLog = RequestLog
    { _rlTraceId           :: !(Maybe Text)
    , _rlInstanceId        :: !(Maybe Word8)
    , _rlStatus            :: !(Maybe Int32)
    , _rlRequestId         :: !(Maybe Word8)
    , _rlInstanceIndex     :: !(Maybe Int32)
    , _rlModuleId          :: !(Maybe Text)
    , _rlVersionId         :: !(Maybe Text)
    , _rlHTTPVersion       :: !(Maybe Text)
    , _rlTaskName          :: !(Maybe Text)
    , _rlPendingTime       :: !(Maybe Text)
    , _rlWasLoadingRequest :: !(Maybe Bool)
    , _rlStartTime         :: !(Maybe Text)
    , _rlLatency           :: !(Maybe Text)
    , _rlURLMapEntry       :: !(Maybe Text)
    , _rlCost              :: !(Maybe Double)
    , _rlReferrer          :: !(Maybe Text)
    , _rlLine              :: !(Maybe [LogLine])
    , _rlIP                :: !(Maybe Text)
    , _rlAppId             :: !(Maybe Text)
    , _rlMethod            :: !(Maybe Text)
    , _rlResource          :: !(Maybe Text)
    , _rlEndTime           :: !(Maybe Text)
    , _rlFinished          :: !(Maybe Bool)
    , _rlMegaCycles        :: !(Maybe Int64)
    , _rlUserAgent         :: !(Maybe Text)
    , _rlNickname          :: !(Maybe Text)
    , _rlHost              :: !(Maybe Text)
    , _rlTaskQueueName     :: !(Maybe Text)
    , _rlResponseSize      :: !(Maybe Int64)
    , _rlSourceReference   :: !(Maybe [SourceReference])
    , _rlAppEngineRelease  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestLog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlTraceId'
--
-- * 'rlInstanceId'
--
-- * 'rlStatus'
--
-- * 'rlRequestId'
--
-- * 'rlInstanceIndex'
--
-- * 'rlModuleId'
--
-- * 'rlVersionId'
--
-- * 'rlHTTPVersion'
--
-- * 'rlTaskName'
--
-- * 'rlPendingTime'
--
-- * 'rlWasLoadingRequest'
--
-- * 'rlStartTime'
--
-- * 'rlLatency'
--
-- * 'rlURLMapEntry'
--
-- * 'rlCost'
--
-- * 'rlReferrer'
--
-- * 'rlLine'
--
-- * 'rlIP'
--
-- * 'rlAppId'
--
-- * 'rlMethod'
--
-- * 'rlResource'
--
-- * 'rlEndTime'
--
-- * 'rlFinished'
--
-- * 'rlMegaCycles'
--
-- * 'rlUserAgent'
--
-- * 'rlNickname'
--
-- * 'rlHost'
--
-- * 'rlTaskQueueName'
--
-- * 'rlResponseSize'
--
-- * 'rlSourceReference'
--
-- * 'rlAppEngineRelease'
requestLog
    :: RequestLog
requestLog =
    RequestLog
    { _rlTraceId = Nothing
    , _rlInstanceId = Nothing
    , _rlStatus = Nothing
    , _rlRequestId = Nothing
    , _rlInstanceIndex = Nothing
    , _rlModuleId = Nothing
    , _rlVersionId = Nothing
    , _rlHTTPVersion = Nothing
    , _rlTaskName = Nothing
    , _rlPendingTime = Nothing
    , _rlWasLoadingRequest = Nothing
    , _rlStartTime = Nothing
    , _rlLatency = Nothing
    , _rlURLMapEntry = Nothing
    , _rlCost = Nothing
    , _rlReferrer = Nothing
    , _rlLine = Nothing
    , _rlIP = Nothing
    , _rlAppId = Nothing
    , _rlMethod = Nothing
    , _rlResource = Nothing
    , _rlEndTime = Nothing
    , _rlFinished = Nothing
    , _rlMegaCycles = Nothing
    , _rlUserAgent = Nothing
    , _rlNickname = Nothing
    , _rlHost = Nothing
    , _rlTaskQueueName = Nothing
    , _rlResponseSize = Nothing
    , _rlSourceReference = Nothing
    , _rlAppEngineRelease = Nothing
    }

-- | Cloud Trace identifier of the trace for this request.
rlTraceId :: Lens' RequestLog (Maybe Text)
rlTraceId
  = lens _rlTraceId (\ s a -> s{_rlTraceId = a})

-- | An opaque identifier for the instance that handled the request.
rlInstanceId :: Lens' RequestLog (Maybe Word8)
rlInstanceId
  = lens _rlInstanceId (\ s a -> s{_rlInstanceId = a})

-- | Response status of request.
rlStatus :: Lens' RequestLog (Maybe Int32)
rlStatus = lens _rlStatus (\ s a -> s{_rlStatus = a})

-- | Globally unique identifier for a request, based on request start time.
-- Request IDs for requests which started later will compare greater as
-- binary strings than those for requests which started earlier.
rlRequestId :: Lens' RequestLog (Maybe Word8)
rlRequestId
  = lens _rlRequestId (\ s a -> s{_rlRequestId = a})

-- | If the instance that processed this request was individually addressable
-- (i.e. belongs to a manually scaled module), this is the index of the
-- instance.
rlInstanceIndex :: Lens' RequestLog (Maybe Int32)
rlInstanceIndex
  = lens _rlInstanceIndex
      (\ s a -> s{_rlInstanceIndex = a})

-- | Identifies the module of the application that handled this request.
rlModuleId :: Lens' RequestLog (Maybe Text)
rlModuleId
  = lens _rlModuleId (\ s a -> s{_rlModuleId = a})

-- | Version of the application that handled this request.
rlVersionId :: Lens' RequestLog (Maybe Text)
rlVersionId
  = lens _rlVersionId (\ s a -> s{_rlVersionId = a})

-- | HTTP version of request.
rlHTTPVersion :: Lens' RequestLog (Maybe Text)
rlHTTPVersion
  = lens _rlHTTPVersion
      (\ s a -> s{_rlHTTPVersion = a})

-- | Task name of the request (for an offline request).
rlTaskName :: Lens' RequestLog (Maybe Text)
rlTaskName
  = lens _rlTaskName (\ s a -> s{_rlTaskName = a})

-- | Time this request spent in the pending request queue, if it was pending
-- at all.
rlPendingTime :: Lens' RequestLog (Maybe Text)
rlPendingTime
  = lens _rlPendingTime
      (\ s a -> s{_rlPendingTime = a})

-- | Was this request a loading request for this instance?
rlWasLoadingRequest :: Lens' RequestLog (Maybe Bool)
rlWasLoadingRequest
  = lens _rlWasLoadingRequest
      (\ s a -> s{_rlWasLoadingRequest = a})

-- | Time at which request was known to have begun processing.
rlStartTime :: Lens' RequestLog (Maybe Text)
rlStartTime
  = lens _rlStartTime (\ s a -> s{_rlStartTime = a})

-- | Latency of the request.
rlLatency :: Lens' RequestLog (Maybe Text)
rlLatency
  = lens _rlLatency (\ s a -> s{_rlLatency = a})

-- | File or class within URL mapping used for request. Useful for tracking
-- down the source code which was responsible for managing request.
-- Especially for multiply mapped handlers.
rlURLMapEntry :: Lens' RequestLog (Maybe Text)
rlURLMapEntry
  = lens _rlURLMapEntry
      (\ s a -> s{_rlURLMapEntry = a})

-- | An indication of the relative cost of serving this request.
rlCost :: Lens' RequestLog (Maybe Double)
rlCost = lens _rlCost (\ s a -> s{_rlCost = a})

-- | Referrer URL of request.
rlReferrer :: Lens' RequestLog (Maybe Text)
rlReferrer
  = lens _rlReferrer (\ s a -> s{_rlReferrer = a})

-- | List of log lines emitted by the application while serving this request,
-- if requested.
rlLine :: Lens' RequestLog [LogLine]
rlLine
  = lens _rlLine (\ s a -> s{_rlLine = a}) . _Default .
      _Coerce

-- | Origin IP address.
rlIP :: Lens' RequestLog (Maybe Text)
rlIP = lens _rlIP (\ s a -> s{_rlIP = a})

-- | Identifies the application that handled this request.
rlAppId :: Lens' RequestLog (Maybe Text)
rlAppId = lens _rlAppId (\ s a -> s{_rlAppId = a})

-- | Request method, such as \`GET\`, \`HEAD\`, \`PUT\`, \`POST\`, or
-- \`DELETE\`.
rlMethod :: Lens' RequestLog (Maybe Text)
rlMethod = lens _rlMethod (\ s a -> s{_rlMethod = a})

-- | Contains the path and query portion of the URL that was requested. For
-- example, if the URL was \"http:\/\/example.com\/app?name=val\", the
-- resource would be \"\/app?name=val\". Any trailing fragment (separated
-- by a \'#\' character) will not be included.
rlResource :: Lens' RequestLog (Maybe Text)
rlResource
  = lens _rlResource (\ s a -> s{_rlResource = a})

-- | Time at which request was known to end processing.
rlEndTime :: Lens' RequestLog (Maybe Text)
rlEndTime
  = lens _rlEndTime (\ s a -> s{_rlEndTime = a})

-- | If true, represents a finished request. Otherwise, the request is
-- active.
rlFinished :: Lens' RequestLog (Maybe Bool)
rlFinished
  = lens _rlFinished (\ s a -> s{_rlFinished = a})

-- | Number of CPU megacycles used to process request.
rlMegaCycles :: Lens' RequestLog (Maybe Int64)
rlMegaCycles
  = lens _rlMegaCycles (\ s a -> s{_rlMegaCycles = a})

-- | User agent used for making request.
rlUserAgent :: Lens' RequestLog (Maybe Text)
rlUserAgent
  = lens _rlUserAgent (\ s a -> s{_rlUserAgent = a})

-- | A string that identifies a logged-in user who made this request, or
-- empty if the user is not logged in. Most likely, this is the part of the
-- user\'s email before the \'\'\' sign. The field value is the same for
-- different requests from the same user, but different users may have a
-- similar name. This information is also available to the application via
-- Users API. This field will be populated starting with App Engine 1.9.21.
rlNickname :: Lens' RequestLog (Maybe Text)
rlNickname
  = lens _rlNickname (\ s a -> s{_rlNickname = a})

-- | The Internet host and port number of the resource being requested.
rlHost :: Lens' RequestLog (Maybe Text)
rlHost = lens _rlHost (\ s a -> s{_rlHost = a})

-- | Queue name of the request (for an offline request).
rlTaskQueueName :: Lens' RequestLog (Maybe Text)
rlTaskQueueName
  = lens _rlTaskQueueName
      (\ s a -> s{_rlTaskQueueName = a})

-- | Size in bytes sent back to client by request.
rlResponseSize :: Lens' RequestLog (Maybe Int64)
rlResponseSize
  = lens _rlResponseSize
      (\ s a -> s{_rlResponseSize = a})

-- | Source code for the application that handled this request. There can be
-- more than one source reference per deployed application if source code
-- is distributed among multiple repositories.
rlSourceReference :: Lens' RequestLog [SourceReference]
rlSourceReference
  = lens _rlSourceReference
      (\ s a -> s{_rlSourceReference = a})
      . _Default
      . _Coerce

-- | App Engine release version string.
rlAppEngineRelease :: Lens' RequestLog (Maybe Text)
rlAppEngineRelease
  = lens _rlAppEngineRelease
      (\ s a -> s{_rlAppEngineRelease = a})

instance FromJSON RequestLog where
        parseJSON
          = withObject "RequestLog"
              (\ o ->
                 RequestLog <$>
                   (o .:? "traceId") <*> (o .:? "instanceId") <*>
                     (o .:? "status")
                     <*> (o .:? "requestId")
                     <*> (o .:? "instanceIndex")
                     <*> (o .:? "moduleId")
                     <*> (o .:? "versionId")
                     <*> (o .:? "httpVersion")
                     <*> (o .:? "taskName")
                     <*> (o .:? "pendingTime")
                     <*> (o .:? "wasLoadingRequest")
                     <*> (o .:? "startTime")
                     <*> (o .:? "latency")
                     <*> (o .:? "urlMapEntry")
                     <*> (o .:? "cost")
                     <*> (o .:? "referrer")
                     <*> (o .:? "line" .!= mempty)
                     <*> (o .:? "ip")
                     <*> (o .:? "appId")
                     <*> (o .:? "method")
                     <*> (o .:? "resource")
                     <*> (o .:? "endTime")
                     <*> (o .:? "finished")
                     <*> (o .:? "megaCycles")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "nickname")
                     <*> (o .:? "host")
                     <*> (o .:? "taskQueueName")
                     <*> (o .:? "responseSize")
                     <*> (o .:? "sourceReference" .!= mempty)
                     <*> (o .:? "appEngineRelease"))

instance ToJSON RequestLog where
        toJSON RequestLog{..}
          = object
              (catMaybes
                 [("traceId" .=) <$> _rlTraceId,
                  ("instanceId" .=) <$> _rlInstanceId,
                  ("status" .=) <$> _rlStatus,
                  ("requestId" .=) <$> _rlRequestId,
                  ("instanceIndex" .=) <$> _rlInstanceIndex,
                  ("moduleId" .=) <$> _rlModuleId,
                  ("versionId" .=) <$> _rlVersionId,
                  ("httpVersion" .=) <$> _rlHTTPVersion,
                  ("taskName" .=) <$> _rlTaskName,
                  ("pendingTime" .=) <$> _rlPendingTime,
                  ("wasLoadingRequest" .=) <$> _rlWasLoadingRequest,
                  ("startTime" .=) <$> _rlStartTime,
                  ("latency" .=) <$> _rlLatency,
                  ("urlMapEntry" .=) <$> _rlURLMapEntry,
                  ("cost" .=) <$> _rlCost,
                  ("referrer" .=) <$> _rlReferrer,
                  ("line" .=) <$> _rlLine, ("ip" .=) <$> _rlIP,
                  ("appId" .=) <$> _rlAppId,
                  ("method" .=) <$> _rlMethod,
                  ("resource" .=) <$> _rlResource,
                  ("endTime" .=) <$> _rlEndTime,
                  ("finished" .=) <$> _rlFinished,
                  ("megaCycles" .=) <$> _rlMegaCycles,
                  ("userAgent" .=) <$> _rlUserAgent,
                  ("nickname" .=) <$> _rlNickname,
                  ("host" .=) <$> _rlHost,
                  ("taskQueueName" .=) <$> _rlTaskQueueName,
                  ("responseSize" .=) <$> _rlResponseSize,
                  ("sourceReference" .=) <$> _rlSourceReference,
                  ("appEngineRelease" .=) <$> _rlAppEngineRelease])

-- | Application log line emitted while processing a request.
--
-- /See:/ 'logLine' smart constructor.
data LogLine = LogLine
    { _llTime           :: !(Maybe Text)
    , _llSeverity       :: !(Maybe Text)
    , _llLogMessage     :: !(Maybe Text)
    , _llSourceLocation :: !(Maybe SourceLocation)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogLine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llTime'
--
-- * 'llSeverity'
--
-- * 'llLogMessage'
--
-- * 'llSourceLocation'
logLine
    :: LogLine
logLine =
    LogLine
    { _llTime = Nothing
    , _llSeverity = Nothing
    , _llLogMessage = Nothing
    , _llSourceLocation = Nothing
    }

-- | Time when log entry was made. May be inaccurate.
llTime :: Lens' LogLine (Maybe Text)
llTime = lens _llTime (\ s a -> s{_llTime = a})

-- | Severity of log.
llSeverity :: Lens' LogLine (Maybe Text)
llSeverity
  = lens _llSeverity (\ s a -> s{_llSeverity = a})

-- | App provided log message.
llLogMessage :: Lens' LogLine (Maybe Text)
llLogMessage
  = lens _llLogMessage (\ s a -> s{_llLogMessage = a})

-- | Line of code that generated this log message.
llSourceLocation :: Lens' LogLine (Maybe SourceLocation)
llSourceLocation
  = lens _llSourceLocation
      (\ s a -> s{_llSourceLocation = a})

instance FromJSON LogLine where
        parseJSON
          = withObject "LogLine"
              (\ o ->
                 LogLine <$>
                   (o .:? "time") <*> (o .:? "severity") <*>
                     (o .:? "logMessage")
                     <*> (o .:? "sourceLocation"))

instance ToJSON LogLine where
        toJSON LogLine{..}
          = object
              (catMaybes
                 [("time" .=) <$> _llTime,
                  ("severity" .=) <$> _llSeverity,
                  ("logMessage" .=) <$> _llLogMessage,
                  ("sourceLocation" .=) <$> _llSourceLocation])

-- | Specifies a location in a source file.
--
-- /See:/ 'sourceLocation' smart constructor.
data SourceLocation = SourceLocation
    { _slLine         :: !(Maybe Int64)
    , _slFunctionName :: !(Maybe Text)
    , _slFile         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slLine'
--
-- * 'slFunctionName'
--
-- * 'slFile'
sourceLocation
    :: SourceLocation
sourceLocation =
    SourceLocation
    { _slLine = Nothing
    , _slFunctionName = Nothing
    , _slFile = Nothing
    }

-- | Line within the source file.
slLine :: Lens' SourceLocation (Maybe Int64)
slLine = lens _slLine (\ s a -> s{_slLine = a})

-- | Human-readable name of the function or method being invoked, with
-- optional context such as the class or package name, for use in contexts
-- such as the logs viewer where file:line number is less meaningful. This
-- may vary by language, for example: in Java: qual.if.ied.Class.method in
-- Go: dir\/package.func in Python: function ...
slFunctionName :: Lens' SourceLocation (Maybe Text)
slFunctionName
  = lens _slFunctionName
      (\ s a -> s{_slFunctionName = a})

-- | Source file name. May or may not be a fully qualified name, depending on
-- the runtime environment.
slFile :: Lens' SourceLocation (Maybe Text)
slFile = lens _slFile (\ s a -> s{_slFile = a})

instance FromJSON SourceLocation where
        parseJSON
          = withObject "SourceLocation"
              (\ o ->
                 SourceLocation <$>
                   (o .:? "line") <*> (o .:? "functionName") <*>
                     (o .:? "file"))

instance ToJSON SourceLocation where
        toJSON SourceLocation{..}
          = object
              (catMaybes
                 [("line" .=) <$> _slLine,
                  ("functionName" .=) <$> _slFunctionName,
                  ("file" .=) <$> _slFile])

-- | A reference to a particular snapshot of the source tree used to build
-- and deploy an application.
--
-- /See:/ 'sourceReference' smart constructor.
data SourceReference = SourceReference
    { _srRepository :: !(Maybe Text)
    , _srRevisionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SourceReference
    { _srRepository = Nothing
    , _srRevisionId = Nothing
    }

-- | Optional. A URI string identifying the repository. Example:
-- \"https:\/\/github.com\/GoogleCloudPlatform\/kubernetes.git\"
srRepository :: Lens' SourceReference (Maybe Text)
srRepository
  = lens _srRepository (\ s a -> s{_srRepository = a})

-- | The canonical (and persistent) identifier of the deployed revision.
-- Example (git): \"0035781c50ec7aa23385dc841529ce8a4b70db1b\"
srRevisionId :: Lens' SourceReference (Maybe Text)
srRevisionId
  = lens _srRevisionId (\ s a -> s{_srRevisionId = a})

instance FromJSON SourceReference where
        parseJSON
          = withObject "SourceReference"
              (\ o ->
                 SourceReference <$>
                   (o .:? "repository") <*> (o .:? "revisionId"))

instance ToJSON SourceReference where
        toJSON SourceReference{..}
          = object
              (catMaybes
                 [("repository" .=) <$> _srRepository,
                  ("revisionId" .=) <$> _srRevisionId])
