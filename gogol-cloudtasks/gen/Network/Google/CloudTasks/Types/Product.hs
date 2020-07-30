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

import Network.Google.CloudTasks.Types.Sum
import Network.Google.Prelude

-- | Rate limits. This message determines the maximum rate that tasks can be
-- dispatched by a queue, regardless of whether the dispatch is a first
-- task attempt or a retry. Note: The debugging command, RunTask, will run
-- a task even if the queue has reached its RateLimits.
--
-- /See:/ 'rateLimits' smart constructor.
data RateLimits =
  RateLimits'
    { _rlMaxConcurrentDispatches :: !(Maybe (Textual Int32))
    , _rlMaxDispatchesPerSecond :: !(Maybe (Textual Double))
    , _rlMaxBurstSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- default. * The maximum allowed value is 500. This field has the same
-- meaning as [rate in
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
-- queues that were created or updated using \`queue.yaml\/xml\`,
-- \`max_burst_size\` is equal to
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

-- | Contains information needed for generating an [OAuth
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2).
-- This type of authorization should generally only be used when calling
-- Google APIs hosted on *.googleapis.com.
--
-- /See:/ 'oAuthToken' smart constructor.
data OAuthToken =
  OAuthToken'
    { _oatScope :: !(Maybe Text)
    , _oatServiceAccountEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OAuthToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oatScope'
--
-- * 'oatServiceAccountEmail'
oAuthToken
    :: OAuthToken
oAuthToken =
  OAuthToken' {_oatScope = Nothing, _oatServiceAccountEmail = Nothing}


-- | OAuth scope to be used for generating OAuth access token. If not
-- specified, \"https:\/\/www.googleapis.com\/auth\/cloud-platform\" will
-- be used.
oatScope :: Lens' OAuthToken (Maybe Text)
oatScope = lens _oatScope (\ s a -> s{_oatScope = a})

-- | [Service account
-- email](https:\/\/cloud.google.com\/iam\/docs\/service-accounts) to be
-- used for generating OAuth token. The service account must be within the
-- same project as the queue. The caller must have
-- iam.serviceAccounts.actAs permission for the service account.
oatServiceAccountEmail :: Lens' OAuthToken (Maybe Text)
oatServiceAccountEmail
  = lens _oatServiceAccountEmail
      (\ s a -> s{_oatServiceAccountEmail = a})

instance FromJSON OAuthToken where
        parseJSON
          = withObject "OAuthToken"
              (\ o ->
                 OAuthToken' <$>
                   (o .:? "scope") <*> (o .:? "serviceAccountEmail"))

instance ToJSON OAuthToken where
        toJSON OAuthToken'{..}
          = object
              (catMaybes
                 [("scope" .=) <$> _oatScope,
                  ("serviceAccountEmail" .=) <$>
                    _oatServiceAccountEmail])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


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

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
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
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}


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
newtype GetIAMPolicyRequest =
  GetIAMPolicyRequest'
    { _giprOptions :: Maybe GetPolicyOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprOptions'
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest' {_giprOptions = Nothing}


-- | OPTIONAL: A \`GetPolicyOptions\` object for specifying options to
-- \`GetIamPolicy\`.
giprOptions :: Lens' GetIAMPolicyRequest (Maybe GetPolicyOptions)
giprOptions
  = lens _giprOptions (\ s a -> s{_giprOptions = a})

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> GetIAMPolicyRequest' <$> (o .:? "options"))

instance ToJSON GetIAMPolicyRequest where
        toJSON GetIAMPolicyRequest'{..}
          = object
              (catMaybes [("options" .=) <$> _giprOptions])

-- | Contains information needed for generating an [OpenID Connect
-- token](https:\/\/developers.google.com\/identity\/protocols\/OpenIDConnect).
-- This type of authorization can be used for many scenarios, including
-- calling Cloud Run, or endpoints where you intend to validate the token
-- yourself.
--
-- /See:/ 'oidcToken' smart constructor.
data OidcToken =
  OidcToken'
    { _otAudience :: !(Maybe Text)
    , _otServiceAccountEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OidcToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otAudience'
--
-- * 'otServiceAccountEmail'
oidcToken
    :: OidcToken
oidcToken = OidcToken' {_otAudience = Nothing, _otServiceAccountEmail = Nothing}


-- | Audience to be used when generating OIDC token. If not specified, the
-- URI specified in target will be used.
otAudience :: Lens' OidcToken (Maybe Text)
otAudience
  = lens _otAudience (\ s a -> s{_otAudience = a})

-- | [Service account
-- email](https:\/\/cloud.google.com\/iam\/docs\/service-accounts) to be
-- used for generating OIDC token. The service account must be within the
-- same project as the queue. The caller must have
-- iam.serviceAccounts.actAs permission for the service account.
otServiceAccountEmail :: Lens' OidcToken (Maybe Text)
otServiceAccountEmail
  = lens _otServiceAccountEmail
      (\ s a -> s{_otServiceAccountEmail = a})

instance FromJSON OidcToken where
        parseJSON
          = withObject "OidcToken"
              (\ o ->
                 OidcToken' <$>
                   (o .:? "audience") <*> (o .:? "serviceAccountEmail"))

instance ToJSON OidcToken where
        toJSON OidcToken'{..}
          = object
              (catMaybes
                 [("audience" .=) <$> _otAudience,
                  ("serviceAccountEmail" .=) <$>
                    _otServiceAccountEmail])

-- | Retry config. These settings determine when a failed task attempt is
-- retried.
--
-- /See:/ 'retryConfig' smart constructor.
data RetryConfig =
  RetryConfig'
    { _rcMaxDoublings :: !(Maybe (Textual Int32))
    , _rcMaxRetryDuration :: !(Maybe GDuration)
    , _rcMaxAttempts :: !(Maybe (Textual Int32))
    , _rcMaxBackoff :: !(Maybe GDuration)
    , _rcMinBackoff :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- times, then increases linearly, and finally retries at intervals of
-- max_backoff up to max_attempts times. For example, if min_backoff is
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
newtype RunTaskRequest =
  RunTaskRequest'
    { _rtrResponseView :: Maybe RunTaskRequestResponseView
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunTaskRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrResponseView'
runTaskRequest
    :: RunTaskRequest
runTaskRequest = RunTaskRequest' {_rtrResponseView = Nothing}


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

-- | HTTP request headers. This map contains the header field names and
-- values. Headers can be set when the task is created. These headers
-- represent a subset of the headers that will accompany the task\'s HTTP
-- request. Some HTTP request headers will be ignored or replaced. A
-- partial list of headers that will be ignored or replaced is: * Host:
-- This will be computed by Cloud Tasks and derived from HttpRequest.url. *
-- Content-Length: This will be computed by Cloud Tasks. * User-Agent: This
-- will be set to \`\"Google-Cloud-Tasks\"\`. * X-Google-*: Google use
-- only. * X-AppEngine-*: Google use only. \`Content-Type\` won\'t be set
-- by Cloud Tasks. You can explicitly set \`Content-Type\` to a media type
-- when the task is created. For example, \`Content-Type\` can be set to
-- \`\"application\/octet-stream\"\` or \`\"application\/json\"\`. Headers
-- which can have multiple values (according to RFC2616) can be specified
-- using comma-separated values. The size of the headers must be less than
-- 80KB.
--
-- /See:/ 'hTTPRequestHeaders' smart constructor.
newtype HTTPRequestHeaders =
  HTTPRequestHeaders'
    { _httprhAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPRequestHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httprhAddtional'
hTTPRequestHeaders
    :: HashMap Text Text -- ^ 'httprhAddtional'
    -> HTTPRequestHeaders
hTTPRequestHeaders pHttprhAddtional_ =
  HTTPRequestHeaders' {_httprhAddtional = _Coerce # pHttprhAddtional_}


httprhAddtional :: Lens' HTTPRequestHeaders (HashMap Text Text)
httprhAddtional
  = lens _httprhAddtional
      (\ s a -> s{_httprhAddtional = a})
      . _Coerce

instance FromJSON HTTPRequestHeaders where
        parseJSON
          = withObject "HTTPRequestHeaders"
              (\ o -> HTTPRequestHeaders' <$> (parseJSONObject o))

instance ToJSON HTTPRequestHeaders where
        toJSON = toJSON . _httprhAddtional

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName :: !(Maybe Text)
    , _lMetadata :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels :: !(Maybe LocationLabels)
    , _lLocationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  deriving (Eq, Show, Data, Typeable, Generic)


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
data CreateTaskRequest =
  CreateTaskRequest'
    { _ctrResponseView :: !(Maybe CreateTaskRequestResponseView)
    , _ctrTask :: !(Maybe Task)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  CreateTaskRequest' {_ctrResponseView = Nothing, _ctrTask = Nothing}


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
data ListQueuesResponse =
  ListQueuesResponse'
    { _lqrNextPageToken :: !(Maybe Text)
    , _lqrQueues :: !(Maybe [Queue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListQueuesResponse' {_lqrNextPageToken = Nothing, _lqrQueues = Nothing}


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
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


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

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'getPolicyOptions' smart constructor.
newtype GetPolicyOptions =
  GetPolicyOptions'
    { _gpoRequestedPolicyVersion :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpoRequestedPolicyVersion'
getPolicyOptions
    :: GetPolicyOptions
getPolicyOptions = GetPolicyOptions' {_gpoRequestedPolicyVersion = Nothing}


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
gpoRequestedPolicyVersion :: Lens' GetPolicyOptions (Maybe Int32)
gpoRequestedPolicyVersion
  = lens _gpoRequestedPolicyVersion
      (\ s a -> s{_gpoRequestedPolicyVersion = a})
      . mapping _Coerce

instance FromJSON GetPolicyOptions where
        parseJSON
          = withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions' <$>
                   (o .:? "requestedPolicyVersion"))

instance ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions'{..}
          = object
              (catMaybes
                 [("requestedPolicyVersion" .=) <$>
                    _gpoRequestedPolicyVersion])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprPolicy :: Maybe Policy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest = SetIAMPolicyRequest' {_siprPolicy = Nothing}


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
data Queue =
  Queue'
    { _qRateLimits :: !(Maybe RateLimits)
    , _qAppEngineRoutingOverride :: !(Maybe AppEngineRouting)
    , _qState :: !(Maybe QueueState)
    , _qRetryConfig :: !(Maybe RetryConfig)
    , _qStackdriverLoggingConfig :: !(Maybe StackdriverLoggingConfig)
    , _qName :: !(Maybe Text)
    , _qPurgeTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Queue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qRateLimits'
--
-- * 'qAppEngineRoutingOverride'
--
-- * 'qState'
--
-- * 'qRetryConfig'
--
-- * 'qStackdriverLoggingConfig'
--
-- * 'qName'
--
-- * 'qPurgeTime'
queue
    :: Queue
queue =
  Queue'
    { _qRateLimits = Nothing
    , _qAppEngineRoutingOverride = Nothing
    , _qState = Nothing
    , _qRetryConfig = Nothing
    , _qStackdriverLoggingConfig = Nothing
    , _qName = Nothing
    , _qPurgeTime = Nothing
    }


-- | Rate limits for task dispatches. rate_limits and retry_config are
-- related because they both control task attempts. However they control
-- task attempts in different ways: * rate_limits controls the total rate
-- of dispatches from a queue (i.e. all traffic dispatched from the queue,
-- regardless of whether the dispatch is from a first attempt or a retry).
-- * retry_config controls what happens to particular a task after its
-- first attempt fails. That is, retry_config controls task retries (the
-- second attempt, third attempt, etc). The queue\'s actual dispatch rate
-- is the result of: * Number of tasks in the queue * User-specified
-- throttling: rate_limits, retry_config, and the queue\'s state. * System
-- throttling due to \`429\` (Too Many Requests) or \`503\` (Service
-- Unavailable) responses from the worker, high error rates, or to smooth
-- sudden large traffic spikes.
qRateLimits :: Lens' Queue (Maybe RateLimits)
qRateLimits
  = lens _qRateLimits (\ s a -> s{_qRateLimits = a})

-- | Overrides for task-level app_engine_routing. These settings apply only
-- to App Engine tasks in this queue. Http tasks are not affected. If set,
-- \`app_engine_routing_override\` is used for all App Engine tasks in the
-- queue, no matter what the setting is for the task-level
-- app_engine_routing.
qAppEngineRoutingOverride :: Lens' Queue (Maybe AppEngineRouting)
qAppEngineRoutingOverride
  = lens _qAppEngineRoutingOverride
      (\ s a -> s{_qAppEngineRoutingOverride = a})

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

-- | Configuration options for writing logs to [Stackdriver
-- Logging](https:\/\/cloud.google.com\/logging\/docs\/). If this field is
-- unset, then no logs are written.
qStackdriverLoggingConfig :: Lens' Queue (Maybe StackdriverLoggingConfig)
qStackdriverLoggingConfig
  = lens _qStackdriverLoggingConfig
      (\ s a -> s{_qStackdriverLoggingConfig = a})

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
                   (o .:? "rateLimits") <*>
                     (o .:? "appEngineRoutingOverride")
                     <*> (o .:? "state")
                     <*> (o .:? "retryConfig")
                     <*> (o .:? "stackdriverLoggingConfig")
                     <*> (o .:? "name")
                     <*> (o .:? "purgeTime"))

instance ToJSON Queue where
        toJSON Queue'{..}
          = object
              (catMaybes
                 [("rateLimits" .=) <$> _qRateLimits,
                  ("appEngineRoutingOverride" .=) <$>
                    _qAppEngineRoutingOverride,
                  ("state" .=) <$> _qState,
                  ("retryConfig" .=) <$> _qRetryConfig,
                  ("stackdriverLoggingConfig" .=) <$>
                    _qStackdriverLoggingConfig,
                  ("name" .=) <$> _qName,
                  ("purgeTime" .=) <$> _qPurgeTime])

-- | HTTP request. The task will be pushed to the worker as an HTTP request.
-- If the worker or the redirected worker acknowledges the task by
-- returning a successful HTTP response code ([\`200\` - \`299\`]), the
-- task will be removed from the queue. If any other HTTP response code is
-- returned or no response is received, the task will be retried according
-- to the following: * User-specified throttling: retry configuration, rate
-- limits, and the queue\'s state. * System throttling: To prevent the
-- worker from overloading, Cloud Tasks may temporarily reduce the queue\'s
-- effective rate. User-specified settings will not be changed. System
-- throttling happens because: * Cloud Tasks backs off on all errors.
-- Normally the backoff specified in rate limits will be used. But if the
-- worker returns \`429\` (Too Many Requests), \`503\` (Service
-- Unavailable), or the rate of errors is high, Cloud Tasks will use a
-- higher backoff rate. The retry specified in the \`Retry-After\` HTTP
-- response header is considered. * To prevent traffic spikes and to smooth
-- sudden increases in traffic, dispatches ramp up slowly when the queue is
-- newly created or idle and if large numbers of tasks suddenly become
-- available to dispatch (due to spikes in create task rates, the queue
-- being unpaused, or many tasks that are scheduled at the same time).
--
-- /See:/ 'hTTPRequest' smart constructor.
data HTTPRequest =
  HTTPRequest'
    { _httprOAuthToken :: !(Maybe OAuthToken)
    , _httprHTTPMethod :: !(Maybe HTTPRequestHTTPMethod)
    , _httprOidcToken :: !(Maybe OidcToken)
    , _httprBody :: !(Maybe Bytes)
    , _httprURL :: !(Maybe Text)
    , _httprHeaders :: !(Maybe HTTPRequestHeaders)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httprOAuthToken'
--
-- * 'httprHTTPMethod'
--
-- * 'httprOidcToken'
--
-- * 'httprBody'
--
-- * 'httprURL'
--
-- * 'httprHeaders'
hTTPRequest
    :: HTTPRequest
hTTPRequest =
  HTTPRequest'
    { _httprOAuthToken = Nothing
    , _httprHTTPMethod = Nothing
    , _httprOidcToken = Nothing
    , _httprBody = Nothing
    , _httprURL = Nothing
    , _httprHeaders = Nothing
    }


-- | If specified, an [OAuth
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- will be generated and attached as an \`Authorization\` header in the
-- HTTP request. This type of authorization should generally only be used
-- when calling Google APIs hosted on *.googleapis.com.
httprOAuthToken :: Lens' HTTPRequest (Maybe OAuthToken)
httprOAuthToken
  = lens _httprOAuthToken
      (\ s a -> s{_httprOAuthToken = a})

-- | The HTTP method to use for the request. The default is POST.
httprHTTPMethod :: Lens' HTTPRequest (Maybe HTTPRequestHTTPMethod)
httprHTTPMethod
  = lens _httprHTTPMethod
      (\ s a -> s{_httprHTTPMethod = a})

-- | If specified, an
-- [OIDC](https:\/\/developers.google.com\/identity\/protocols\/OpenIDConnect)
-- token will be generated and attached as an \`Authorization\` header in
-- the HTTP request. This type of authorization can be used for many
-- scenarios, including calling Cloud Run, or endpoints where you intend to
-- validate the token yourself.
httprOidcToken :: Lens' HTTPRequest (Maybe OidcToken)
httprOidcToken
  = lens _httprOidcToken
      (\ s a -> s{_httprOidcToken = a})

-- | HTTP request body. A request body is allowed only if the HTTP method is
-- POST, PUT, or PATCH. It is an error to set body on a task with an
-- incompatible HttpMethod.
httprBody :: Lens' HTTPRequest (Maybe ByteString)
httprBody
  = lens _httprBody (\ s a -> s{_httprBody = a}) .
      mapping _Bytes

-- | Required. The full url path that the request will be sent to. This
-- string must begin with either \"http:\/\/\" or \"https:\/\/\". Some
-- examples are: \`http:\/\/acme.com\` and
-- \`https:\/\/acme.com\/sales:8080\`. Cloud Tasks will encode some
-- characters for safety and compatibility. The maximum allowed URL length
-- is 2083 characters after encoding. The \`Location\` header response from
-- a redirect response [\`300\` - \`399\`] may be followed. The redirect is
-- not counted as a separate attempt.
httprURL :: Lens' HTTPRequest (Maybe Text)
httprURL = lens _httprURL (\ s a -> s{_httprURL = a})

-- | HTTP request headers. This map contains the header field names and
-- values. Headers can be set when the task is created. These headers
-- represent a subset of the headers that will accompany the task\'s HTTP
-- request. Some HTTP request headers will be ignored or replaced. A
-- partial list of headers that will be ignored or replaced is: * Host:
-- This will be computed by Cloud Tasks and derived from HttpRequest.url. *
-- Content-Length: This will be computed by Cloud Tasks. * User-Agent: This
-- will be set to \`\"Google-Cloud-Tasks\"\`. * X-Google-*: Google use
-- only. * X-AppEngine-*: Google use only. \`Content-Type\` won\'t be set
-- by Cloud Tasks. You can explicitly set \`Content-Type\` to a media type
-- when the task is created. For example, \`Content-Type\` can be set to
-- \`\"application\/octet-stream\"\` or \`\"application\/json\"\`. Headers
-- which can have multiple values (according to RFC2616) can be specified
-- using comma-separated values. The size of the headers must be less than
-- 80KB.
httprHeaders :: Lens' HTTPRequest (Maybe HTTPRequestHeaders)
httprHeaders
  = lens _httprHeaders (\ s a -> s{_httprHeaders = a})

instance FromJSON HTTPRequest where
        parseJSON
          = withObject "HTTPRequest"
              (\ o ->
                 HTTPRequest' <$>
                   (o .:? "oauthToken") <*> (o .:? "httpMethod") <*>
                     (o .:? "oidcToken")
                     <*> (o .:? "body")
                     <*> (o .:? "url")
                     <*> (o .:? "headers"))

instance ToJSON HTTPRequest where
        toJSON HTTPRequest'{..}
          = object
              (catMaybes
                 [("oauthToken" .=) <$> _httprOAuthToken,
                  ("httpMethod" .=) <$> _httprHTTPMethod,
                  ("oidcToken" .=) <$> _httprOidcToken,
                  ("body" .=) <$> _httprBody, ("url" .=) <$> _httprURL,
                  ("headers" .=) <$> _httprHeaders])

-- | Configuration options for writing logs to [Stackdriver
-- Logging](https:\/\/cloud.google.com\/logging\/docs\/).
--
-- /See:/ 'stackdriverLoggingConfig' smart constructor.
newtype StackdriverLoggingConfig =
  StackdriverLoggingConfig'
    { _slcSamplingRatio :: Maybe (Textual Double)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackdriverLoggingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slcSamplingRatio'
stackdriverLoggingConfig
    :: StackdriverLoggingConfig
stackdriverLoggingConfig =
  StackdriverLoggingConfig' {_slcSamplingRatio = Nothing}


-- | Specifies the fraction of operations to write to [Stackdriver
-- Logging](https:\/\/cloud.google.com\/logging\/docs\/). This field may
-- contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and
-- means that no operations are logged.
slcSamplingRatio :: Lens' StackdriverLoggingConfig (Maybe Double)
slcSamplingRatio
  = lens _slcSamplingRatio
      (\ s a -> s{_slcSamplingRatio = a})
      . mapping _Coerce

instance FromJSON StackdriverLoggingConfig where
        parseJSON
          = withObject "StackdriverLoggingConfig"
              (\ o ->
                 StackdriverLoggingConfig' <$>
                   (o .:? "samplingRatio"))

instance ToJSON StackdriverLoggingConfig where
        toJSON StackdriverLoggingConfig'{..}
          = object
              (catMaybes
                 [("samplingRatio" .=) <$> _slcSamplingRatio])

-- | Response message for listing tasks using ListTasks.
--
-- /See:/ 'listTasksResponse' smart constructor.
data ListTasksResponse =
  ListTasksResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTasks :: !(Maybe [Task])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListTasksResponse' {_ltrNextPageToken = Nothing, _ltrTasks = Nothing}


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
-- headers](https:\/\/cloud.google.com\/tasks\/docs\/creating-appengine-handlers#reading_request_headers).
-- These headers are set only when the task is dispatched, so they are not
-- visible when the task is returned in a Cloud Tasks response. Although
-- there is no specific limit for the maximum number of headers or the
-- size, there is a limit on the maximum size of the Task. For more
-- information, see the CreateTask documentation.
--
-- /See:/ 'appEngineHTTPRequestHeaders' smart constructor.
newtype AppEngineHTTPRequestHeaders =
  AppEngineHTTPRequestHeaders'
    { _aehttprhAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_aehttprhAddtional = _Coerce # pAehttprhAddtional_}


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
  deriving (Eq, Show, Data, Typeable, Generic)


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
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


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
data Attempt =
  Attempt'
    { _aResponseStatus :: !(Maybe Status)
    , _aScheduleTime :: !(Maybe DateTime')
    , _aDispatchTime :: !(Maybe DateTime')
    , _aResponseTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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


-- | Output only. The response from the worker for this attempt. If
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
  deriving (Eq, Show, Data, Typeable, Generic)


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
data Task =
  Task'
    { _tLastAttempt :: !(Maybe Attempt)
    , _tDispatchDeadline :: !(Maybe GDuration)
    , _tScheduleTime :: !(Maybe DateTime')
    , _tHTTPRequest :: !(Maybe HTTPRequest)
    , _tName :: !(Maybe Text)
    , _tFirstAttempt :: !(Maybe Attempt)
    , _tView :: !(Maybe TaskView)
    , _tResponseCount :: !(Maybe (Textual Int32))
    , _tDispatchCount :: !(Maybe (Textual Int32))
    , _tAppEngineHTTPRequest :: !(Maybe AppEngineHTTPRequest)
    , _tCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Task' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tLastAttempt'
--
-- * 'tDispatchDeadline'
--
-- * 'tScheduleTime'
--
-- * 'tHTTPRequest'
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
    , _tDispatchDeadline = Nothing
    , _tScheduleTime = Nothing
    , _tHTTPRequest = Nothing
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

-- | The deadline for requests sent to the worker. If the worker does not
-- respond by this deadline then the request is cancelled and the attempt
-- is marked as a \`DEADLINE_EXCEEDED\` failure. Cloud Tasks will retry the
-- task according to the RetryConfig. Note that when the request is
-- cancelled, Cloud Tasks will stop listening for the response, but whether
-- the worker stops processing depends on the worker. For example, if the
-- worker is stuck, it may not react to cancelled requests. The default and
-- maximum values depend on the type of request: * For HTTP tasks, the
-- default is 10 minutes. The deadline must be in the interval [15 seconds,
-- 30 minutes]. * For App Engine tasks, 0 indicates that the request has
-- the default deadline. The default deadline depends on the [scaling
-- type](https:\/\/cloud.google.com\/appengine\/docs\/standard\/go\/how-instances-are-managed#instance_scaling)
-- of the service: 10 minutes for standard apps with automatic scaling, 24
-- hours for standard apps with manual and basic scaling, and 60 minutes
-- for flex apps. If the request deadline is set, it must be in the
-- interval [15 seconds, 24 hours 15 seconds]. Regardless of the task\'s
-- \`dispatch_deadline\`, the app handler will not run for longer than than
-- the service\'s timeout. We recommend setting the \`dispatch_deadline\`
-- to at most a few seconds more than the app handler\'s timeout. For more
-- information see
-- [Timeouts](https:\/\/cloud.google.com\/tasks\/docs\/creating-appengine-handlers#timeouts).
-- \`dispatch_deadline\` will be truncated to the nearest millisecond. The
-- deadline is an approximate deadline.
tDispatchDeadline :: Lens' Task (Maybe Scientific)
tDispatchDeadline
  = lens _tDispatchDeadline
      (\ s a -> s{_tDispatchDeadline = a})
      . mapping _GDuration

-- | The time when the task is scheduled to be attempted or retried.
-- \`schedule_time\` will be truncated to the nearest microsecond.
tScheduleTime :: Lens' Task (Maybe UTCTime)
tScheduleTime
  = lens _tScheduleTime
      (\ s a -> s{_tScheduleTime = a})
      . mapping _DateTime

-- | HTTP request that is sent to the worker. An HTTP task is a task that has
-- HttpRequest set.
tHTTPRequest :: Lens' Task (Maybe HTTPRequest)
tHTTPRequest
  = lens _tHTTPRequest (\ s a -> s{_tHTTPRequest = a})

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
-- attempts which have been dispatched but haven\'t received a response.
tDispatchCount :: Lens' Task (Maybe Int32)
tDispatchCount
  = lens _tDispatchCount
      (\ s a -> s{_tDispatchCount = a})
      . mapping _Coerce

-- | HTTP request that is sent to the App Engine app handler. An App Engine
-- task is a task that has AppEngineHttpRequest set.
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
                   (o .:? "lastAttempt") <*> (o .:? "dispatchDeadline")
                     <*> (o .:? "scheduleTime")
                     <*> (o .:? "httpRequest")
                     <*> (o .:? "name")
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
                  ("dispatchDeadline" .=) <$> _tDispatchDeadline,
                  ("scheduleTime" .=) <$> _tScheduleTime,
                  ("httpRequest" .=) <$> _tHTTPRequest,
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
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


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

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
policy = Policy' {_pEtag = Nothing, _pVersion = Nothing, _pBindings = Nothing}


-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
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
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}


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
newtype LocationMetadata =
  LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
  LocationMetadata' {_lmAddtional = _Coerce # pLmAddtional_}


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
-- Using AppEngineRouting requires
-- [\`appengine.applications.get\`](https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/access-control)
-- Google IAM permission for the project and the following scope:
-- \`https:\/\/www.googleapis.com\/auth\/cloud-platform\`
--
-- /See:/ 'appEngineRouting' smart constructor.
data AppEngineRouting =
  AppEngineRouting'
    { _aerService :: !(Maybe Text)
    , _aerVersion :: !(Maybe Text)
    , _aerHost :: !(Maybe Text)
    , _aerInstance :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- sent to an App Engine app when the task is dispatched. Using
-- AppEngineHttpRequest requires
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
-- queue-level or task-level: * If app_engine_routing_override is set on
-- the queue, this value is used for all tasks in the queue, no matter what
-- the setting is for the task-level app_engine_routing. The \`url\` that
-- the task will be sent to is: * \`url =\` host \`+\` relative_uri Tasks
-- can be dispatched to secure app handlers, unsecure app handlers, and
-- URIs restricted with [\`login:
-- admin\`](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/appref).
-- Because tasks are not run as any user, they cannot be dispatched to URIs
-- restricted with [\`login:
-- required\`](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/appref)
-- Task dispatches also do not follow redirects. The task attempt has
-- succeeded if the app\'s request handler returns an HTTP response code in
-- the range [\`200\` - \`299\`]. The task attempt has failed if the app\'s
-- handler returns a non-2xx response code or Cloud Tasks does not receive
-- response before the deadline. Failed tasks will be retried according to
-- the retry configuration. \`503\` (Service Unavailable) is considered an
-- App Engine system error instead of an application error and will cause
-- Cloud Tasks\' traffic congestion control to temporarily throttle the
-- queue\'s dispatches. Unlike other types of task targets, a \`429\` (Too
-- Many Requests) response from an app handler does not cause traffic
-- congestion control to throttle the queue.
--
-- /See:/ 'appEngineHTTPRequest' smart constructor.
data AppEngineHTTPRequest =
  AppEngineHTTPRequest'
    { _aehttprHTTPMethod :: !(Maybe AppEngineHTTPRequestHTTPMethod)
    , _aehttprRelativeURI :: !(Maybe Text)
    , _aehttprBody :: !(Maybe Bytes)
    , _aehttprHeaders :: !(Maybe AppEngineHTTPRequestHeaders)
    , _aehttprAppEngineRouting :: !(Maybe AppEngineRouting)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- requests with this http_method, otherwise the task attempt fails with
-- error code 405 (Method Not Allowed). See [Writing a push task request
-- handler](https:\/\/cloud.google.com\/appengine\/docs\/java\/taskqueue\/push\/creating-handlers#writing_a_push_task_request_handler)
-- and the App Engine documentation for your runtime on [How Requests are
-- Handled](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python3\/how-requests-are-handled).
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
-- headers](https:\/\/cloud.google.com\/tasks\/docs\/creating-appengine-handlers#reading_request_headers).
-- These headers are set only when the task is dispatched, so they are not
-- visible when the task is returned in a Cloud Tasks response. Although
-- there is no specific limit for the maximum number of headers or the
-- size, there is a limit on the maximum size of the Task. For more
-- information, see the CreateTask documentation.
aehttprHeaders :: Lens' AppEngineHTTPRequest (Maybe AppEngineHTTPRequestHeaders)
aehttprHeaders
  = lens _aehttprHeaders
      (\ s a -> s{_aehttprHeaders = a})

-- | Task-level setting for App Engine routing. * If
-- app_engine_routing_override is set on the queue, this value is used for
-- all tasks in the queue, no matter what the setting is for the task-level
-- app_engine_routing.
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
  deriving (Eq, Show, Data, Typeable, Generic)


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
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
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
