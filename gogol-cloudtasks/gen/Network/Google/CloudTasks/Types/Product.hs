{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudTasks.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudTasks.Types.Product where

import           Network.Google.CloudTasks.Types.Sum
import           Network.Google.Prelude

-- | Rate limits. This message determines the maximum rate that tasks can be
-- dispatched by a queue, regardless of whether the dispatch is a first
-- task attempt or a retry. Note: The debugging command, RunTask, will run
-- a task even if the queue has reached its RateLimits.
--
-- /See:/ 'rateLimits' smart constructor.
data RateLimits = RateLimits'
    { _rlMaxConcurrentDispatches :: !(Maybe (Textual Int32))
    , _rlMaxDispatchesPerSecond  :: !(Maybe (Textual Double))
    , _rlMaxBurstSize            :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RateLimits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlMaxConcurrentDispatches'
--
-- * 'rlMaxDispatchesPerSecond'
--
-- * 'rlMaxBurstSize'
rateLimits
    :: RateLimits
rateLimits =
    RateLimits'
    { _rlMaxConcurrentDispatches = Nothing
    , _rlMaxDispatchesPerSecond = Nothing
    , _rlMaxBurstSize = Nothing
    }

-- | The maximum number of concurrent tasks that Cloud Tasks allows to be
-- dispatched for this queue. After this threshold has been reached, Cloud
-- Tasks stops dispatching tasks until the number of concurrent requests
-- decreases. If unspecified when the queue is created, Cloud Tasks will
-- pick the default. The maximum allowed value is 5,000. This field has the
-- same meaning as [max_concurrent_requests in
-- queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/queueref#max_concurrent_requests).
rlMaxConcurrentDispatches :: Lens' RateLimits (Maybe Int32)
rlMaxConcurrentDispatches
  = lens _rlMaxConcurrentDispatches
      (\ s a -> s{_rlMaxConcurrentDispatches = a})
      . mapping _Coerce

-- | The maximum rate at which tasks are dispatched from this queue. If
-- unspecified when the queue is created, Cloud Tasks will pick the
-- default. * For App Engine queues, the maximum allowed value is 500. This
-- field has the same meaning as [rate in
-- queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/queueref#rate).
rlMaxDispatchesPerSecond :: Lens' RateLimits (Maybe Double)
rlMaxDispatchesPerSecond
  = lens _rlMaxDispatchesPerSecond
      (\ s a -> s{_rlMaxDispatchesPerSecond = a})
      . mapping _Coerce

-- | Output only. The max burst size. Max burst size limits how fast tasks in
-- queue are processed when many tasks are in the queue and the rate is
-- high. This field allows the queue to have a high rate so processing
-- starts shortly after a task is enqueued, but still limits resource usage
-- when many tasks are enqueued in a short period of time. The [token
-- bucket](https:\/\/wikipedia.org\/wiki\/Token_Bucket) algorithm is used
-- to control the rate of task dispatches. Each queue has a token bucket
-- that holds tokens, up to the maximum specified by \`max_burst_size\`.
-- Each time a task is dispatched, a token is removed from the bucket.
-- Tasks will be dispatched until the queue\'s bucket runs out of tokens.
-- The bucket will be continuously refilled with new tokens based on
-- max_dispatches_per_second. Cloud Tasks will pick the value of
-- \`max_burst_size\` based on the value of max_dispatches_per_second. For
-- App Engine queues that were created or updated using
-- \`queue.yaml\/xml\`, \`max_burst_size\` is equal to
-- [bucket_size](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/queueref#bucket_size).
-- Since \`max_burst_size\` is output only, if UpdateQueue is called on a
-- queue created by \`queue.yaml\/xml\`, \`max_burst_size\` will be reset
-- based on the value of max_dispatches_per_second, regardless of whether
-- max_dispatches_per_second is updated.
rlMaxBurstSize :: Lens' RateLimits (Maybe Int32)
rlMaxBurstSize
  = lens _rlMaxBurstSize
      (\ s a -> s{_rlMaxBurstSize = a})
      . mapping _Coerce

instance FromJSON RateLimits where
        parseJSON
          = withObject "RateLimits"
              (\ o ->
                 RateLimits' <$>
                   (o .:? "maxConcurrentDispatches") <*>
                     (o .:? "maxDispatchesPerSecond")
                     <*> (o .:? "maxBurstSize"))

instance ToJSON RateLimits where
        toJSON RateLimits'{..}
          = object
              (catMaybes
                 [("maxConcurrentDispatches" .=) <$>
                    _rlMaxConcurrentDispatches,
                  ("maxDispatchesPerSecond" .=) <$>
                    _rlMaxDispatchesPerSecond,
                  ("maxBurstSize" .=) <$> _rlMaxBurstSize])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr = Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
    Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }

-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations     :: !(Maybe [Location])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
    ListLocationsResponse'
    { _llrNextPageToken = Nothing
    , _llrLocations = Nothing
    }

-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
data GetIAMPolicyRequest =
    GetIAMPolicyRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest'

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest')

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | Retry config. These settings determine when a failed task attempt is
-- retried.
--
-- /See:/ 'retryConfig' smart constructor.
data RetryConfig = RetryConfig'
    { _rcMaxDoublings     :: !(Maybe (Textual Int32))
    , _rcMaxRetryDuration :: !(Maybe GDuration)
    , _rcMaxAttempts      :: !(Maybe (Textual Int32))
    , _rcMaxBackoff       :: !(Maybe GDuration)
    , _rcMinBackoff       :: !(Maybe GDuration)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RetryConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcMaxDoublings'
--
-- * 'rcMaxRetryDuration'
--
-- * 'rcMaxAttempts'
--
-- * 'rcMaxBackoff'
--
-- * 'rcMinBackoff'
retryConfig
    :: RetryConfig
retryConfig =
    RetryConfig'
    { _rcMaxDoublings = Nothing
    , _rcMaxRetryDuration = Nothing
    , _rcMaxAttempts = Nothing
    , _rcMaxBackoff = Nothing
    , _rcMinBackoff = Nothing
    }

-- | The time between retries will double \`max_doublings\` times. A task\'s
-- retry interval starts at min_backoff, then doubles \`max_doublings\`
-- times, then increases linearly, and finally retries retries at intervals
-- of max_backoff up to max_attempts times. For example, if min_backoff is
-- 10s, max_backoff is 300s, and \`max_doublings\` is 3, then the a task
-- will first be retried in 10s. The retry interval will double three
-- times, and then increase linearly by 2^3 * 10s. Finally, the task will
-- retry at intervals of max_backoff until the task has been attempted
-- max_attempts times. Thus, the requests will retry at 10s, 20s, 40s, 80s,
-- 160s, 240s, 300s, 300s, .... If unspecified when the queue is created,
-- Cloud Tasks will pick the default. This field has the same meaning as
-- [max_doublings in
-- queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/queueref#retry_parameters).
rcMaxDoublings :: Lens' RetryConfig (Maybe Int32)
rcMaxDoublings
  = lens _rcMaxDoublings
      (\ s a -> s{_rcMaxDoublings = a})
      . mapping _Coerce

-- | If positive, \`max_retry_duration\` specifies the time limit for
-- retrying a failed task, measured from when the task was first attempted.
-- Once \`max_retry_duration\` time has passed *and* the task has been
-- attempted max_attempts times, no further attempts will be made and the
-- task will be deleted. If zero, then the task age is unlimited. If
-- unspecified when the queue is created, Cloud Tasks will pick the
-- default. \`max_retry_duration\` will be truncated to the nearest second.
-- This field has the same meaning as [task_age_limit in
-- queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/queueref#retry_parameters).
rcMaxRetryDuration :: Lens' RetryConfig (Maybe Scientific)
rcMaxRetryDuration
  = lens _rcMaxRetryDuration
      (\ s a -> s{_rcMaxRetryDuration = a})
      . mapping _GDuration

-- | Number of attempts per task. Cloud Tasks will attempt the task
-- \`max_attempts\` times (that is, if the first attempt fails, then there
-- will be \`max_attempts - 1\` retries). Must be >= -1. If unspecified
-- when the queue is created, Cloud Tasks will pick the default. -1
-- indicates unlimited attempts. This field has the same meaning as
-- [task_retry_limit in
-- queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/queueref#retry_parameters).
rcMaxAttempts :: Lens' RetryConfig (Maybe Int32)
rcMaxAttempts
  = lens _rcMaxAttempts
      (\ s a -> s{_rcMaxAttempts = a})
      . mapping _Coerce

-- | A task will be scheduled for retry between min_backoff and max_backoff
-- duration after it fails, if the queue\'s RetryConfig specifies that the
-- task should be retried. If unspecified when the queue is created, Cloud
-- Tasks will pick the default. \`max_backoff\` will be truncated to the
-- nearest second. This field has the same meaning as [max_backoff_seconds
-- in
-- queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/queueref#retry_parameters).
rcMaxBackoff :: Lens' RetryConfig (Maybe Scientific)
rcMaxBackoff
  = lens _rcMaxBackoff (\ s a -> s{_rcMaxBackoff = a})
      . mapping _GDuration

-- | A task will be scheduled for retry between min_backoff and max_backoff
-- duration after it fails, if the queue\'s RetryConfig specifies that the
-- task should be retried. If unspecified when the queue is created, Cloud
-- Tasks will pick the default. \`min_backoff\` will be truncated to the
-- nearest second. This field has the same meaning as [min_backoff_seconds
-- in
-- queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/queueref#retry_parameters).
rcMinBackoff :: Lens' RetryConfig (Maybe Scientific)
rcMinBackoff
  = lens _rcMinBackoff (\ s a -> s{_rcMinBackoff = a})
      . mapping _GDuration

instance FromJSON RetryConfig where
        parseJSON
          = withObject "RetryConfig"
              (\ o ->
                 RetryConfig' <$>
                   (o .:? "maxDoublings") <*> (o .:? "maxRetryDuration")
                     <*> (o .:? "maxAttempts")
                     <*> (o .:? "maxBackoff")
                     <*> (o .:? "minBackoff"))

instance ToJSON RetryConfig where
        toJSON RetryConfig'{..}
          = object
              (catMaybes
                 [("maxDoublings" .=) <$> _rcMaxDoublings,
                  ("maxRetryDuration" .=) <$> _rcMaxRetryDuration,
                  ("maxAttempts" .=) <$> _rcMaxAttempts,
                  ("maxBackoff" .=) <$> _rcMaxBackoff,
                  ("minBackoff" .=) <$> _rcMinBackoff])

-- | Request message for forcing a task to run now using RunTask.
--
-- /See:/ 'runTaskRequest' smart constructor.
newtype RunTaskRequest = RunTaskRequest'
    { _rtrResponseView :: Maybe RunTaskRequestResponseView
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RunTaskRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrResponseView'
runTaskRequest
    :: RunTaskRequest
runTaskRequest =
    RunTaskRequest'
    { _rtrResponseView = Nothing
    }

-- | The response_view specifies which subset of the Task will be returned.
-- By default response_view is BASIC; not all information is retrieved by
-- default because some data, such as payloads, might be desirable to
-- return only when needed because of its large size or because of the
-- sensitivity of data that it contains. Authorization for FULL requires
-- \`cloudtasks.tasks.fullView\` [Google
-- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Task resource.
rtrResponseView :: Lens' RunTaskRequest (Maybe RunTaskRequestResponseView)
rtrResponseView
  = lens _rtrResponseView
      (\ s a -> s{_rtrResponseView = a})

instance FromJSON RunTaskRequest where
        parseJSON
          = withObject "RunTaskRequest"
              (\ o -> RunTaskRequest' <$> (o .:? "responseView"))

instance ToJSON RunTaskRequest where
        toJSON RunTaskRequest'{..}
          = object
              (catMaybes
                 [("responseView" .=) <$> _rtrResponseView])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location = Location'
    { _lName        :: !(Maybe Text)
    , _lMetadata    :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels      :: !(Maybe LocationLabels)
    , _lLocationId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
    Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }

-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Request message for CreateTask.
--
-- /See:/ 'createTaskRequest' smart constructor.
data CreateTaskRequest = CreateTaskRequest'
    { _ctrResponseView :: !(Maybe CreateTaskRequestResponseView)
    , _ctrTask         :: !(Maybe Task)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateTaskRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrResponseView'
--
-- * 'ctrTask'
createTaskRequest
    :: CreateTaskRequest
createTaskRequest =
    CreateTaskRequest'
    { _ctrResponseView = Nothing
    , _ctrTask = Nothing
    }

-- | The response_view specifies which subset of the Task will be returned.
-- By default response_view is BASIC; not all information is retrieved by
-- default because some data, such as payloads, might be desirable to
-- return only when needed because of its large size or because of the
-- sensitivity of data that it contains. Authorization for FULL requires
-- \`cloudtasks.tasks.fullView\` [Google
-- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Task resource.
ctrResponseView :: Lens' CreateTaskRequest (Maybe CreateTaskRequestResponseView)
ctrResponseView
  = lens _ctrResponseView
      (\ s a -> s{_ctrResponseView = a})

-- | Required. The task to add. Task names have the following format:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID\`.
-- The user can optionally specify a task name. If a name is not specified
-- then the system will generate a random unique task id, which will be set
-- in the task returned in the response. If schedule_time is not set or is
-- in the past then Cloud Tasks will set it to the current time. Task
-- De-duplication: Explicitly specifying a task ID enables task
-- de-duplication. If a task\'s ID is identical to that of an existing task
-- or a task that was deleted or executed recently then the call will fail
-- with ALREADY_EXISTS. If the task\'s queue was created using Cloud Tasks,
-- then another task with the same name can\'t be created for ~1hour after
-- the original task was deleted or executed. If the task\'s queue was
-- created using queue.yaml or queue.xml, then another task with the same
-- name can\'t be created for ~9days after the original task was deleted or
-- executed. Because there is an extra lookup cost to identify duplicate
-- task names, these CreateTask calls have significantly increased latency.
-- Using hashed strings for the task id or for the prefix of the task id is
-- recommended. Choosing task ids that are sequential or have sequential
-- prefixes, for example using a timestamp, causes an increase in latency
-- and error rates in all task commands. The infrastructure relies on an
-- approximately uniform distribution of task ids to store and serve tasks
-- efficiently.
ctrTask :: Lens' CreateTaskRequest (Maybe Task)
ctrTask = lens _ctrTask (\ s a -> s{_ctrTask = a})

instance FromJSON CreateTaskRequest where
        parseJSON
          = withObject "CreateTaskRequest"
              (\ o ->
                 CreateTaskRequest' <$>
                   (o .:? "responseView") <*> (o .:? "task"))

instance ToJSON CreateTaskRequest where
        toJSON CreateTaskRequest'{..}
          = object
              (catMaybes
                 [("responseView" .=) <$> _ctrResponseView,
                  ("task" .=) <$> _ctrTask])

-- | Response message for ListQueues.
--
-- /See:/ 'listQueuesResponse' smart constructor.
data ListQueuesResponse = ListQueuesResponse'
    { _lqrNextPageToken :: !(Maybe Text)
    , _lqrQueues        :: !(Maybe [Queue])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListQueuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqrNextPageToken'
--
-- * 'lqrQueues'
listQueuesResponse
    :: ListQueuesResponse
listQueuesResponse =
    ListQueuesResponse'
    { _lqrNextPageToken = Nothing
    , _lqrQueues = Nothing
    }

-- | A token to retrieve next page of results. To return the next page of
-- results, call ListQueues with this value as the page_token. If the
-- next_page_token is empty, there are no more results. The page token is
-- valid for only 2 hours.
lqrNextPageToken :: Lens' ListQueuesResponse (Maybe Text)
lqrNextPageToken
  = lens _lqrNextPageToken
      (\ s a -> s{_lqrNextPageToken = a})

-- | The list of queues.
lqrQueues :: Lens' ListQueuesResponse [Queue]
lqrQueues
  = lens _lqrQueues (\ s a -> s{_lqrQueues = a}) .
      _Default
      . _Coerce

instance FromJSON ListQueuesResponse where
        parseJSON
          = withObject "ListQueuesResponse"
              (\ o ->
                 ListQueuesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "queues" .!= mempty))

instance ToJSON ListQueuesResponse where
        toJSON ListQueuesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lqrNextPageToken,
                  ("queues" .=) <$> _lqrQueues])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | App Engine HTTP queue. The task will be delivered to the App Engine
-- application hostname specified by its AppEngineHttpQueue and
-- AppEngineHttpRequest. The documentation for AppEngineHttpRequest
-- explains how the task\'s host URL is constructed. Using
-- AppEngineHttpQueue requires
-- [\`appengine.applications.get\`](https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/access-control)
-- Google IAM permission for the project and the following scope:
-- \`https:\/\/www.googleapis.com\/auth\/cloud-platform\`
--
-- /See:/ 'appEngineHTTPQueue' smart constructor.
newtype AppEngineHTTPQueue = AppEngineHTTPQueue'
    { _aehttpqAppEngineRoutingOverride :: Maybe AppEngineRouting
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppEngineHTTPQueue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aehttpqAppEngineRoutingOverride'
appEngineHTTPQueue
    :: AppEngineHTTPQueue
appEngineHTTPQueue =
    AppEngineHTTPQueue'
    { _aehttpqAppEngineRoutingOverride = Nothing
    }

-- | Overrides for the task-level app_engine_routing. If set,
-- \`app_engine_routing_override\` is used for all tasks in the queue, no
-- matter what the setting is for the task-level app_engine_routing.
aehttpqAppEngineRoutingOverride :: Lens' AppEngineHTTPQueue (Maybe AppEngineRouting)
aehttpqAppEngineRoutingOverride
  = lens _aehttpqAppEngineRoutingOverride
      (\ s a -> s{_aehttpqAppEngineRoutingOverride = a})

instance FromJSON AppEngineHTTPQueue where
        parseJSON
          = withObject "AppEngineHTTPQueue"
              (\ o ->
                 AppEngineHTTPQueue' <$>
                   (o .:? "appEngineRoutingOverride"))

instance ToJSON AppEngineHTTPQueue where
        toJSON AppEngineHTTPQueue'{..}
          = object
              (catMaybes
                 [("appEngineRoutingOverride" .=) <$>
                    _aehttpqAppEngineRoutingOverride])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest = SetIAMPolicyRequest'
    { _siprPolicy :: Maybe Policy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
    SetIAMPolicyRequest'
    { _siprPolicy = Nothing
    }

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o -> SetIAMPolicyRequest' <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | A queue is a container of related tasks. Queues are configured to manage
-- how those tasks are dispatched. Configurable properties include rate
-- limits, retry options, queue types, and others.
--
-- /See:/ 'queue' smart constructor.
data Queue = Queue'
    { _qRateLimits         :: !(Maybe RateLimits)
    , _qState              :: !(Maybe QueueState)
    , _qRetryConfig        :: !(Maybe RetryConfig)
    , _qAppEngineHTTPQueue :: !(Maybe AppEngineHTTPQueue)
    , _qName               :: !(Maybe Text)
    , _qPurgeTime          :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Queue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qRateLimits'
--
-- * 'qState'
--
-- * 'qRetryConfig'
--
-- * 'qAppEngineHTTPQueue'
--
-- * 'qName'
--
-- * 'qPurgeTime'
queue
    :: Queue
queue =
    Queue'
    { _qRateLimits = Nothing
    , _qState = Nothing
    , _qRetryConfig = Nothing
    , _qAppEngineHTTPQueue = Nothing
    , _qName = Nothing
    , _qPurgeTime = Nothing
    }

-- | Rate limits for task dispatches. rate_limits and retry_config are
-- related because they both control task attempts however they control how
-- tasks are attempted in different ways: * rate_limits controls the total
-- rate of dispatches from a queue (i.e. all traffic dispatched from the
-- queue, regardless of whether the dispatch is from a first attempt or a
-- retry). * retry_config controls what happens to particular a task after
-- its first attempt fails. That is, retry_config controls task retries
-- (the second attempt, third attempt, etc).
qRateLimits :: Lens' Queue (Maybe RateLimits)
qRateLimits
  = lens _qRateLimits (\ s a -> s{_qRateLimits = a})

-- | Output only. The state of the queue. \`state\` can only be changed by
-- called PauseQueue, ResumeQueue, or uploading
-- [queue.yaml\/xml](https:\/\/cloud.google.com\/appengine\/docs\/python\/config\/queueref).
-- UpdateQueue cannot be used to change \`state\`.
qState :: Lens' Queue (Maybe QueueState)
qState = lens _qState (\ s a -> s{_qState = a})

-- | Settings that determine the retry behavior. * For tasks created using
-- Cloud Tasks: the queue-level retry settings apply to all tasks in the
-- queue that were created using Cloud Tasks. Retry settings cannot be set
-- on individual tasks. * For tasks created using the App Engine SDK: the
-- queue-level retry settings apply to all tasks in the queue which do not
-- have retry settings explicitly set on the task and were created by the
-- App Engine SDK. See [App Engine
-- documentation](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/taskqueue\/push\/retrying-tasks).
qRetryConfig :: Lens' Queue (Maybe RetryConfig)
qRetryConfig
  = lens _qRetryConfig (\ s a -> s{_qRetryConfig = a})

-- | App Engine HTTP queue. An App Engine queue is a queue that has an
-- AppEngineHttpQueue type.
qAppEngineHTTPQueue :: Lens' Queue (Maybe AppEngineHTTPQueue)
qAppEngineHTTPQueue
  = lens _qAppEngineHTTPQueue
      (\ s a -> s{_qAppEngineHTTPQueue = a})

-- | Caller-specified and required in CreateQueue, after which it becomes
-- output only. The queue name. The queue name must have the following
-- format:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\` *
-- \`PROJECT_ID\` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens
-- (-), colons (:), or periods (.). For more information, see [Identifying
-- projects](https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-projects#identifying_projects)
-- * \`LOCATION_ID\` is the canonical ID for the queue\'s location. The
-- list of available locations can be obtained by calling ListLocations.
-- For more information, see
-- https:\/\/cloud.google.com\/about\/locations\/. * \`QUEUE_ID\` can
-- contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum
-- length is 100 characters.
qName :: Lens' Queue (Maybe Text)
qName = lens _qName (\ s a -> s{_qName = a})

-- | Output only. The last time this queue was purged. All tasks that were
-- created before this time were purged. A queue can be purged using
-- PurgeQueue, the [App Engine Task Queue SDK, or the Cloud
-- Console](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/taskqueue\/push\/deleting-tasks-and-queues#purging_all_tasks_from_a_queue).
-- Purge time will be truncated to the nearest microsecond. Purge time will
-- be unset if the queue has never been purged.
qPurgeTime :: Lens' Queue (Maybe UTCTime)
qPurgeTime
  = lens _qPurgeTime (\ s a -> s{_qPurgeTime = a}) .
      mapping _DateTime

instance FromJSON Queue where
        parseJSON
          = withObject "Queue"
              (\ o ->
                 Queue' <$>
                   (o .:? "rateLimits") <*> (o .:? "state") <*>
                     (o .:? "retryConfig")
                     <*> (o .:? "appEngineHttpQueue")
                     <*> (o .:? "name")
                     <*> (o .:? "purgeTime"))

instance ToJSON Queue where
        toJSON Queue'{..}
          = object
              (catMaybes
                 [("rateLimits" .=) <$> _qRateLimits,
                  ("state" .=) <$> _qState,
                  ("retryConfig" .=) <$> _qRetryConfig,
                  ("appEngineHttpQueue" .=) <$> _qAppEngineHTTPQueue,
                  ("name" .=) <$> _qName,
                  ("purgeTime" .=) <$> _qPurgeTime])

-- | Response message for listing tasks using ListTasks.
--
-- /See:/ 'listTasksResponse' smart constructor.
data ListTasksResponse = ListTasksResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTasks         :: !(Maybe [Task])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrTasks'
listTasksResponse
    :: ListTasksResponse
listTasksResponse =
    ListTasksResponse'
    { _ltrNextPageToken = Nothing
    , _ltrTasks = Nothing
    }

-- | A token to retrieve next page of results. To return the next page of
-- results, call ListTasks with this value as the page_token. If the
-- next_page_token is empty, there are no more results.
ltrNextPageToken :: Lens' ListTasksResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | The list of tasks.
ltrTasks :: Lens' ListTasksResponse [Task]
ltrTasks
  = lens _ltrTasks (\ s a -> s{_ltrTasks = a}) .
      _Default
      . _Coerce

instance FromJSON ListTasksResponse where
        parseJSON
          = withObject "ListTasksResponse"
              (\ o ->
                 ListTasksResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "tasks" .!= mempty))

instance ToJSON ListTasksResponse where
        toJSON ListTasksResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("tasks" .=) <$> _ltrTasks])

-- | HTTP request headers. This map contains the header field names and
-- values. Headers can be set when the task is created. Repeated headers
-- are not supported but a header value can contain commas. Cloud Tasks
-- sets some headers to default values: * \`User-Agent\`: By default, this
-- header is \`\"AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine)\"\`. This header can be modified,
-- but Cloud Tasks will append \`\"AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine)\"\` to the modified
-- \`User-Agent\`. If the task has a body, Cloud Tasks sets the following
-- headers: * \`Content-Type\`: By default, the \`Content-Type\` header is
-- set to \`\"application\/octet-stream\"\`. The default can be overridden
-- by explicitly setting \`Content-Type\` to a particular media type when
-- the task is created. For example, \`Content-Type\` can be set to
-- \`\"application\/json\"\`. * \`Content-Length\`: This is computed by
-- Cloud Tasks. This value is output only. It cannot be changed. The
-- headers below cannot be set or overridden: * \`Host\` * \`X-Google-*\` *
-- \`X-AppEngine-*\` In addition, Cloud Tasks sets some headers when the
-- task is dispatched, such as headers containing information about the
-- task; see [request
-- headers](https:\/\/cloud.google.com\/appengine\/docs\/python\/taskqueue\/push\/creating-handlers#reading_request_headers).
-- These headers are set only when the task is dispatched, so they are not
-- visible when the task is returned in a Cloud Tasks response. Although
-- there is no specific limit for the maximum number of headers or the
-- size, there is a limit on the maximum size of the Task. For more
-- information, see the CreateTask documentation.
--
-- /See:/ 'appEngineHTTPRequestHeaders' smart constructor.
newtype AppEngineHTTPRequestHeaders = AppEngineHTTPRequestHeaders'
    { _aehttprhAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppEngineHTTPRequestHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aehttprhAddtional'
appEngineHTTPRequestHeaders
    :: HashMap Text Text -- ^ 'aehttprhAddtional'
    -> AppEngineHTTPRequestHeaders
appEngineHTTPRequestHeaders pAehttprhAddtional_ =
    AppEngineHTTPRequestHeaders'
    { _aehttprhAddtional = _Coerce # pAehttprhAddtional_
    }

aehttprhAddtional :: Lens' AppEngineHTTPRequestHeaders (HashMap Text Text)
aehttprhAddtional
  = lens _aehttprhAddtional
      (\ s a -> s{_aehttprhAddtional = a})
      . _Coerce

instance FromJSON AppEngineHTTPRequestHeaders where
        parseJSON
          = withObject "AppEngineHTTPRequestHeaders"
              (\ o ->
                 AppEngineHTTPRequestHeaders' <$> (parseJSONObject o))

instance ToJSON AppEngineHTTPRequestHeaders where
        toJSON = toJSON . _aehttprhAddtional

-- | Request message for PauseQueue.
--
-- /See:/ 'pauseQueueRequest' smart constructor.
data PauseQueueRequest =
    PauseQueueRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PauseQueueRequest' with the minimum fields required to make a request.
--
pauseQueueRequest
    :: PauseQueueRequest
pauseQueueRequest = PauseQueueRequest'

instance FromJSON PauseQueueRequest where
        parseJSON
          = withObject "PauseQueueRequest"
              (\ o -> pure PauseQueueRequest')

instance ToJSON PauseQueueRequest where
        toJSON = const emptyObject

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest = TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
    TestIAMPermissionsRequest'
    { _tiprPermissions = Nothing
    }

-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | The status of a task attempt.
--
-- /See:/ 'attempt' smart constructor.
data Attempt = Attempt'
    { _aResponseStatus :: !(Maybe Status)
    , _aScheduleTime   :: !(Maybe DateTime')
    , _aDispatchTime   :: !(Maybe DateTime')
    , _aResponseTime   :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Attempt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aResponseStatus'
--
-- * 'aScheduleTime'
--
-- * 'aDispatchTime'
--
-- * 'aResponseTime'
attempt
    :: Attempt
attempt =
    Attempt'
    { _aResponseStatus = Nothing
    , _aScheduleTime = Nothing
    , _aDispatchTime = Nothing
    , _aResponseTime = Nothing
    }

-- | Output only. The response from the target for this attempt. If
-- \`response_time\` is unset, then the task has not been attempted or is
-- currently running and the \`response_status\` field is meaningless.
aResponseStatus :: Lens' Attempt (Maybe Status)
aResponseStatus
  = lens _aResponseStatus
      (\ s a -> s{_aResponseStatus = a})

-- | Output only. The time that this attempt was scheduled. \`schedule_time\`
-- will be truncated to the nearest microsecond.
aScheduleTime :: Lens' Attempt (Maybe UTCTime)
aScheduleTime
  = lens _aScheduleTime
      (\ s a -> s{_aScheduleTime = a})
      . mapping _DateTime

-- | Output only. The time that this attempt was dispatched.
-- \`dispatch_time\` will be truncated to the nearest microsecond.
aDispatchTime :: Lens' Attempt (Maybe UTCTime)
aDispatchTime
  = lens _aDispatchTime
      (\ s a -> s{_aDispatchTime = a})
      . mapping _DateTime

-- | Output only. The time that this attempt response was received.
-- \`response_time\` will be truncated to the nearest microsecond.
aResponseTime :: Lens' Attempt (Maybe UTCTime)
aResponseTime
  = lens _aResponseTime
      (\ s a -> s{_aResponseTime = a})
      . mapping _DateTime

instance FromJSON Attempt where
        parseJSON
          = withObject "Attempt"
              (\ o ->
                 Attempt' <$>
                   (o .:? "responseStatus") <*> (o .:? "scheduleTime")
                     <*> (o .:? "dispatchTime")
                     <*> (o .:? "responseTime"))

instance ToJSON Attempt where
        toJSON Attempt'{..}
          = object
              (catMaybes
                 [("responseStatus" .=) <$> _aResponseStatus,
                  ("scheduleTime" .=) <$> _aScheduleTime,
                  ("dispatchTime" .=) <$> _aDispatchTime,
                  ("responseTime" .=) <$> _aResponseTime])

-- | Request message for PurgeQueue.
--
-- /See:/ 'purgeQueueRequest' smart constructor.
data PurgeQueueRequest =
    PurgeQueueRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurgeQueueRequest' with the minimum fields required to make a request.
--
purgeQueueRequest
    :: PurgeQueueRequest
purgeQueueRequest = PurgeQueueRequest'

instance FromJSON PurgeQueueRequest where
        parseJSON
          = withObject "PurgeQueueRequest"
              (\ o -> pure PurgeQueueRequest')

instance ToJSON PurgeQueueRequest where
        toJSON = const emptyObject

-- | A unit of scheduled work.
--
-- /See:/ 'task' smart constructor.
data Task = Task'
    { _tLastAttempt          :: !(Maybe Attempt)
    , _tScheduleTime         :: !(Maybe DateTime')
    , _tName                 :: !(Maybe Text)
    , _tFirstAttempt         :: !(Maybe Attempt)
    , _tView                 :: !(Maybe TaskView)
    , _tResponseCount        :: !(Maybe (Textual Int32))
    , _tDispatchCount        :: !(Maybe (Textual Int32))
    , _tAppEngineHTTPRequest :: !(Maybe AppEngineHTTPRequest)
    , _tCreateTime           :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Task' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tLastAttempt'
--
-- * 'tScheduleTime'
--
-- * 'tName'
--
-- * 'tFirstAttempt'
--
-- * 'tView'
--
-- * 'tResponseCount'
--
-- * 'tDispatchCount'
--
-- * 'tAppEngineHTTPRequest'
--
-- * 'tCreateTime'
task
    :: Task
task =
    Task'
    { _tLastAttempt = Nothing
    , _tScheduleTime = Nothing
    , _tName = Nothing
    , _tFirstAttempt = Nothing
    , _tView = Nothing
    , _tResponseCount = Nothing
    , _tDispatchCount = Nothing
    , _tAppEngineHTTPRequest = Nothing
    , _tCreateTime = Nothing
    }

-- | Output only. The status of the task\'s last attempt.
tLastAttempt :: Lens' Task (Maybe Attempt)
tLastAttempt
  = lens _tLastAttempt (\ s a -> s{_tLastAttempt = a})

-- | The time when the task is scheduled to be attempted. For App Engine
-- queues, this is when the task will be attempted or retried.
-- \`schedule_time\` will be truncated to the nearest microsecond.
tScheduleTime :: Lens' Task (Maybe UTCTime)
tScheduleTime
  = lens _tScheduleTime
      (\ s a -> s{_tScheduleTime = a})
      . mapping _DateTime

-- | Optionally caller-specified in CreateTask. The task name. The task name
-- must have the following format:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID\`
-- * \`PROJECT_ID\` can contain letters ([A-Za-z]), numbers ([0-9]),
-- hyphens (-), colons (:), or periods (.). For more information, see
-- [Identifying
-- projects](https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-projects#identifying_projects)
-- * \`LOCATION_ID\` is the canonical ID for the task\'s location. The list
-- of available locations can be obtained by calling ListLocations. For
-- more information, see https:\/\/cloud.google.com\/about\/locations\/. *
-- \`QUEUE_ID\` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens
-- (-). The maximum length is 100 characters. * \`TASK_ID\` can contain
-- only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores
-- (_). The maximum length is 500 characters.
tName :: Lens' Task (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | Output only. The status of the task\'s first attempt. Only dispatch_time
-- will be set. The other Attempt information is not retained by Cloud
-- Tasks.
tFirstAttempt :: Lens' Task (Maybe Attempt)
tFirstAttempt
  = lens _tFirstAttempt
      (\ s a -> s{_tFirstAttempt = a})

-- | Output only. The view specifies which subset of the Task has been
-- returned.
tView :: Lens' Task (Maybe TaskView)
tView = lens _tView (\ s a -> s{_tView = a})

-- | Output only. The number of attempts which have received a response.
tResponseCount :: Lens' Task (Maybe Int32)
tResponseCount
  = lens _tResponseCount
      (\ s a -> s{_tResponseCount = a})
      . mapping _Coerce

-- | Output only. The number of attempts dispatched. This count includes
-- tasks which have been dispatched but haven\'t received a response.
tDispatchCount :: Lens' Task (Maybe Int32)
tDispatchCount
  = lens _tDispatchCount
      (\ s a -> s{_tDispatchCount = a})
      . mapping _Coerce

-- | App Engine HTTP request that is sent to the task\'s target. Can be set
-- only if app_engine_http_queue is set on the queue. An App Engine task is
-- a task that has AppEngineHttpRequest set.
tAppEngineHTTPRequest :: Lens' Task (Maybe AppEngineHTTPRequest)
tAppEngineHTTPRequest
  = lens _tAppEngineHTTPRequest
      (\ s a -> s{_tAppEngineHTTPRequest = a})

-- | Output only. The time that the task was created. \`create_time\` will be
-- truncated to the nearest second.
tCreateTime :: Lens' Task (Maybe UTCTime)
tCreateTime
  = lens _tCreateTime (\ s a -> s{_tCreateTime = a}) .
      mapping _DateTime

instance FromJSON Task where
        parseJSON
          = withObject "Task"
              (\ o ->
                 Task' <$>
                   (o .:? "lastAttempt") <*> (o .:? "scheduleTime") <*>
                     (o .:? "name")
                     <*> (o .:? "firstAttempt")
                     <*> (o .:? "view")
                     <*> (o .:? "responseCount")
                     <*> (o .:? "dispatchCount")
                     <*> (o .:? "appEngineHttpRequest")
                     <*> (o .:? "createTime"))

instance ToJSON Task where
        toJSON Task'{..}
          = object
              (catMaybes
                 [("lastAttempt" .=) <$> _tLastAttempt,
                  ("scheduleTime" .=) <$> _tScheduleTime,
                  ("name" .=) <$> _tName,
                  ("firstAttempt" .=) <$> _tFirstAttempt,
                  ("view" .=) <$> _tView,
                  ("responseCount" .=) <$> _tResponseCount,
                  ("dispatchCount" .=) <$> _tDispatchCount,
                  ("appEngineHttpRequest" .=) <$>
                    _tAppEngineHTTPRequest,
                  ("createTime" .=) <$> _tCreateTime])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse = TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
    TestIAMPermissionsResponse'
    { _tiamprPermissions = Nothing
    }

-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'policy' smart constructor.
data Policy = Policy'
    { _pEtag     :: !(Maybe Bytes)
    , _pVersion  :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
    Policy'
    { _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Deprecated.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels = LocationLabels'
    { _llAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
    LocationLabels'
    { _llAddtional = _Coerce # pLlAddtional_
    }

llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata = LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
    LocationMetadata'
    { _lmAddtional = _Coerce # pLmAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
lmAddtional :: Lens' LocationMetadata (HashMap Text JSONValue)
lmAddtional
  = lens _lmAddtional (\ s a -> s{_lmAddtional = a}) .
      _Coerce

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (parseJSONObject o))

instance ToJSON LocationMetadata where
        toJSON = toJSON . _lmAddtional

-- | App Engine Routing. Defines routing characteristics specific to App
-- Engine - service, version, and instance. For more information about
-- services, versions, and instances see [An Overview of App
-- Engine](https:\/\/cloud.google.com\/appengine\/docs\/python\/an-overview-of-app-engine),
-- [Microservices Architecture on Google App
-- Engine](https:\/\/cloud.google.com\/appengine\/docs\/python\/microservices-on-app-engine),
-- [App Engine Standard request
-- routing](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/how-requests-are-routed),
-- and [App Engine Flex request
-- routing](https:\/\/cloud.google.com\/appengine\/docs\/flexible\/python\/how-requests-are-routed).
--
-- /See:/ 'appEngineRouting' smart constructor.
data AppEngineRouting = AppEngineRouting'
    { _aerService  :: !(Maybe Text)
    , _aerVersion  :: !(Maybe Text)
    , _aerHost     :: !(Maybe Text)
    , _aerInstance :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppEngineRouting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aerService'
--
-- * 'aerVersion'
--
-- * 'aerHost'
--
-- * 'aerInstance'
appEngineRouting
    :: AppEngineRouting
appEngineRouting =
    AppEngineRouting'
    { _aerService = Nothing
    , _aerVersion = Nothing
    , _aerHost = Nothing
    , _aerInstance = Nothing
    }

-- | App service. By default, the task is sent to the service which is the
-- default service when the task is attempted. For some queues or tasks
-- which were created using the App Engine Task Queue API, host is not
-- parsable into service, version, and instance. For example, some tasks
-- which were created using the App Engine SDK use a custom domain name;
-- custom domains are not parsed by Cloud Tasks. If host is not parsable,
-- then service, version, and instance are the empty string.
aerService :: Lens' AppEngineRouting (Maybe Text)
aerService
  = lens _aerService (\ s a -> s{_aerService = a})

-- | App version. By default, the task is sent to the version which is the
-- default version when the task is attempted. For some queues or tasks
-- which were created using the App Engine Task Queue API, host is not
-- parsable into service, version, and instance. For example, some tasks
-- which were created using the App Engine SDK use a custom domain name;
-- custom domains are not parsed by Cloud Tasks. If host is not parsable,
-- then service, version, and instance are the empty string.
aerVersion :: Lens' AppEngineRouting (Maybe Text)
aerVersion
  = lens _aerVersion (\ s a -> s{_aerVersion = a})

-- | Output only. The host that the task is sent to. The host is constructed
-- from the domain name of the app associated with the queue\'s project ID
-- (for example .appspot.com), and the service, version, and instance.
-- Tasks which were created using the App Engine SDK might have a custom
-- domain name. For more information, see [How Requests are
-- Routed](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/how-requests-are-routed).
aerHost :: Lens' AppEngineRouting (Maybe Text)
aerHost = lens _aerHost (\ s a -> s{_aerHost = a})

-- | App instance. By default, the task is sent to an instance which is
-- available when the task is attempted. Requests can only be sent to a
-- specific instance if [manual scaling is used in App Engine
-- Standard](https:\/\/cloud.google.com\/appengine\/docs\/python\/an-overview-of-app-engine?hl=en_US#scaling_types_and_instance_classes).
-- App Engine Flex does not support instances. For more information, see
-- [App Engine Standard request
-- routing](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/how-requests-are-routed)
-- and [App Engine Flex request
-- routing](https:\/\/cloud.google.com\/appengine\/docs\/flexible\/python\/how-requests-are-routed).
aerInstance :: Lens' AppEngineRouting (Maybe Text)
aerInstance
  = lens _aerInstance (\ s a -> s{_aerInstance = a})

instance FromJSON AppEngineRouting where
        parseJSON
          = withObject "AppEngineRouting"
              (\ o ->
                 AppEngineRouting' <$>
                   (o .:? "service") <*> (o .:? "version") <*>
                     (o .:? "host")
                     <*> (o .:? "instance"))

instance ToJSON AppEngineRouting where
        toJSON AppEngineRouting'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _aerService,
                  ("version" .=) <$> _aerVersion,
                  ("host" .=) <$> _aerHost,
                  ("instance" .=) <$> _aerInstance])

-- | App Engine HTTP request. The message defines the HTTP request that is
-- sent to an App Engine app when the task is dispatched. This proto can
-- only be used for tasks in a queue which has app_engine_http_queue set.
-- Using AppEngineHttpRequest requires
-- [\`appengine.applications.get\`](https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/access-control)
-- Google IAM permission for the project and the following scope:
-- \`https:\/\/www.googleapis.com\/auth\/cloud-platform\` The task will be
-- delivered to the App Engine app which belongs to the same project as the
-- queue. For more information, see [How Requests are
-- Routed](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/how-requests-are-routed)
-- and how routing is affected by [dispatch
-- files](https:\/\/cloud.google.com\/appengine\/docs\/python\/config\/dispatchref).
-- Traffic is encrypted during transport and never leaves Google
-- datacenters. Because this traffic is carried over a communication
-- mechanism internal to Google, you cannot explicitly set the protocol
-- (for example, HTTP or HTTPS). The request to the handler, however, will
-- appear to have used the HTTP protocol. The AppEngineRouting used to
-- construct the URL that the task is delivered to can be set at the
-- queue-level or task-level: * If set, app_engine_routing_override is used
-- for all tasks in the queue, no matter what the setting is for the
-- task-level app_engine_routing. The \`url\` that the task will be sent to
-- is: * \`url =\` host \`+\` relative_uri Tasks can be dispatched to
-- secure app handlers, unsecure app handlers, and URIs restricted with
-- [\`login:
-- admin\`](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/appref).
-- Because tasks are not run as any user, they cannot be dispatched to URIs
-- restricted with [\`login:
-- required\`](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/appref)
-- Task dispatches also do not follow redirects. The task attempt has
-- succeeded if the app\'s request handler returns an HTTP response code in
-- the range [\`200\` - \`299\`]. \`503\` is considered an App Engine
-- system error instead of an application error. Requests returning error
-- \`503\` will be retried regardless of retry configuration and not
-- counted against retry counts. Any other response code or a failure to
-- receive a response before the deadline is a failed attempt.
--
-- /See:/ 'appEngineHTTPRequest' smart constructor.
data AppEngineHTTPRequest = AppEngineHTTPRequest'
    { _aehttprHTTPMethod       :: !(Maybe AppEngineHTTPRequestHTTPMethod)
    , _aehttprRelativeURI      :: !(Maybe Text)
    , _aehttprBody             :: !(Maybe Bytes)
    , _aehttprHeaders          :: !(Maybe AppEngineHTTPRequestHeaders)
    , _aehttprAppEngineRouting :: !(Maybe AppEngineRouting)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppEngineHTTPRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aehttprHTTPMethod'
--
-- * 'aehttprRelativeURI'
--
-- * 'aehttprBody'
--
-- * 'aehttprHeaders'
--
-- * 'aehttprAppEngineRouting'
appEngineHTTPRequest
    :: AppEngineHTTPRequest
appEngineHTTPRequest =
    AppEngineHTTPRequest'
    { _aehttprHTTPMethod = Nothing
    , _aehttprRelativeURI = Nothing
    , _aehttprBody = Nothing
    , _aehttprHeaders = Nothing
    , _aehttprAppEngineRouting = Nothing
    }

-- | The HTTP method to use for the request. The default is POST. The app\'s
-- request handler for the task\'s target URL must be able to handle HTTP
-- requests with this http_method, otherwise the task attempt will fail
-- with error code 405 (Method Not Allowed). See [Writing a push task
-- request
-- handler](https:\/\/cloud.google.com\/appengine\/docs\/java\/taskqueue\/push\/creating-handlers#writing_a_push_task_request_handler)
-- and the documentation for the request handlers in the language your app
-- is written in e.g. [Python Request
-- Handler](https:\/\/cloud.google.com\/appengine\/docs\/python\/tools\/webapp\/requesthandlerclass).
aehttprHTTPMethod :: Lens' AppEngineHTTPRequest (Maybe AppEngineHTTPRequestHTTPMethod)
aehttprHTTPMethod
  = lens _aehttprHTTPMethod
      (\ s a -> s{_aehttprHTTPMethod = a})

-- | The relative URI. The relative URI must begin with \"\/\" and must be a
-- valid HTTP relative URI. It can contain a path and query string
-- arguments. If the relative URI is empty, then the root path \"\/\" will
-- be used. No spaces are allowed, and the maximum length allowed is 2083
-- characters.
aehttprRelativeURI :: Lens' AppEngineHTTPRequest (Maybe Text)
aehttprRelativeURI
  = lens _aehttprRelativeURI
      (\ s a -> s{_aehttprRelativeURI = a})

-- | HTTP request body. A request body is allowed only if the HTTP method is
-- POST or PUT. It is an error to set a body on a task with an incompatible
-- HttpMethod.
aehttprBody :: Lens' AppEngineHTTPRequest (Maybe ByteString)
aehttprBody
  = lens _aehttprBody (\ s a -> s{_aehttprBody = a}) .
      mapping _Bytes

-- | HTTP request headers. This map contains the header field names and
-- values. Headers can be set when the task is created. Repeated headers
-- are not supported but a header value can contain commas. Cloud Tasks
-- sets some headers to default values: * \`User-Agent\`: By default, this
-- header is \`\"AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine)\"\`. This header can be modified,
-- but Cloud Tasks will append \`\"AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine)\"\` to the modified
-- \`User-Agent\`. If the task has a body, Cloud Tasks sets the following
-- headers: * \`Content-Type\`: By default, the \`Content-Type\` header is
-- set to \`\"application\/octet-stream\"\`. The default can be overridden
-- by explicitly setting \`Content-Type\` to a particular media type when
-- the task is created. For example, \`Content-Type\` can be set to
-- \`\"application\/json\"\`. * \`Content-Length\`: This is computed by
-- Cloud Tasks. This value is output only. It cannot be changed. The
-- headers below cannot be set or overridden: * \`Host\` * \`X-Google-*\` *
-- \`X-AppEngine-*\` In addition, Cloud Tasks sets some headers when the
-- task is dispatched, such as headers containing information about the
-- task; see [request
-- headers](https:\/\/cloud.google.com\/appengine\/docs\/python\/taskqueue\/push\/creating-handlers#reading_request_headers).
-- These headers are set only when the task is dispatched, so they are not
-- visible when the task is returned in a Cloud Tasks response. Although
-- there is no specific limit for the maximum number of headers or the
-- size, there is a limit on the maximum size of the Task. For more
-- information, see the CreateTask documentation.
aehttprHeaders :: Lens' AppEngineHTTPRequest (Maybe AppEngineHTTPRequestHeaders)
aehttprHeaders
  = lens _aehttprHeaders
      (\ s a -> s{_aehttprHeaders = a})

-- | Task-level setting for App Engine routing. If set,
-- app_engine_routing_override is used for all tasks in the queue, no
-- matter what the setting is for the task-level app_engine_routing.
aehttprAppEngineRouting :: Lens' AppEngineHTTPRequest (Maybe AppEngineRouting)
aehttprAppEngineRouting
  = lens _aehttprAppEngineRouting
      (\ s a -> s{_aehttprAppEngineRouting = a})

instance FromJSON AppEngineHTTPRequest where
        parseJSON
          = withObject "AppEngineHTTPRequest"
              (\ o ->
                 AppEngineHTTPRequest' <$>
                   (o .:? "httpMethod") <*> (o .:? "relativeUri") <*>
                     (o .:? "body")
                     <*> (o .:? "headers")
                     <*> (o .:? "appEngineRouting"))

instance ToJSON AppEngineHTTPRequest where
        toJSON AppEngineHTTPRequest'{..}
          = object
              (catMaybes
                 [("httpMethod" .=) <$> _aehttprHTTPMethod,
                  ("relativeUri" .=) <$> _aehttprRelativeURI,
                  ("body" .=) <$> _aehttprBody,
                  ("headers" .=) <$> _aehttprHeaders,
                  ("appEngineRouting" .=) <$>
                    _aehttprAppEngineRouting])

-- | Request message for ResumeQueue.
--
-- /See:/ 'resumeQueueRequest' smart constructor.
data ResumeQueueRequest =
    ResumeQueueRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResumeQueueRequest' with the minimum fields required to make a request.
--
resumeQueueRequest
    :: ResumeQueueRequest
resumeQueueRequest = ResumeQueueRequest'

instance FromJSON ResumeQueueRequest where
        parseJSON
          = withObject "ResumeQueueRequest"
              (\ o -> pure ResumeQueueRequest')

instance ToJSON ResumeQueueRequest where
        toJSON = const emptyObject

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding = Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
    Binding'
    { _bMembers = Nothing
    , _bRole = Nothing
    , _bCondition = Nothing
    }

-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: A Google Apps domain
-- name that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | Unimplemented. The condition that is associated with this binding. NOTE:
-- an unsatisfied condition will not allow user access via current binding.
-- Different bindings, including their conditions, are examined
-- independently.
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])
