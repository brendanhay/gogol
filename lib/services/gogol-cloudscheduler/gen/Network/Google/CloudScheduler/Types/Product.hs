{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudScheduler.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudScheduler.Types.Product where

import Network.Google.CloudScheduler.Types.Sum
import Network.Google.Prelude

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
-- same project as the job. The caller must have iam.serviceAccounts.actAs
-- permission for the service account.
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

-- | Request message for PauseJob.
--
-- /See:/ 'pauseJobRequest' smart constructor.
data PauseJobRequest =
  PauseJobRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PauseJobRequest' with the minimum fields required to make a request.
--
pauseJobRequest
    :: PauseJobRequest
pauseJobRequest = PauseJobRequest'


instance FromJSON PauseJobRequest where
        parseJSON
          = withObject "PauseJobRequest"
              (\ o -> pure PauseJobRequest')

instance ToJSON PauseJobRequest where
        toJSON = const emptyObject

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

-- | Request message for ResumeJob.
--
-- /See:/ 'resumeJobRequest' smart constructor.
data ResumeJobRequest =
  ResumeJobRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResumeJobRequest' with the minimum fields required to make a request.
--
resumeJobRequest
    :: ResumeJobRequest
resumeJobRequest = ResumeJobRequest'


instance FromJSON ResumeJobRequest where
        parseJSON
          = withObject "ResumeJobRequest"
              (\ o -> pure ResumeJobRequest')

instance ToJSON ResumeJobRequest where
        toJSON = const emptyObject

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
-- same project as the job. The caller must have iam.serviceAccounts.actAs
-- permission for the service account.
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

-- | HTTP request headers. This map contains the header field names and
-- values. Headers can be set when the job is created. Cloud Scheduler sets
-- some headers to default values: * \`User-Agent\`: By default, this
-- header is \`\"AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine)\"\`. This header can be modified,
-- but Cloud Scheduler will append \`\"AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine)\"\` to the modified
-- \`User-Agent\`. * \`X-CloudScheduler\`: This header will be set to true.
-- If the job has an body, Cloud Scheduler sets the following headers: *
-- \`Content-Type\`: By default, the \`Content-Type\` header is set to
-- \`\"application\/octet-stream\"\`. The default can be overridden by
-- explictly setting \`Content-Type\` to a particular media type when the
-- job is created. For example, \`Content-Type\` can be set to
-- \`\"application\/json\"\`. * \`Content-Length\`: This is computed by
-- Cloud Scheduler. This value is output only. It cannot be changed. The
-- headers below are output only. They cannot be set or overridden: *
-- \`X-Google-*\`: For Google internal use only. * \`X-AppEngine-*\`: For
-- Google internal use only. In addition, some App Engine headers, which
-- contain job-specific information, are also be sent to the job handler.
--
-- /See:/ 'appEngineHTTPTargetHeaders' smart constructor.
newtype AppEngineHTTPTargetHeaders =
  AppEngineHTTPTargetHeaders'
    { _aehttpthAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppEngineHTTPTargetHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aehttpthAddtional'
appEngineHTTPTargetHeaders
    :: HashMap Text Text -- ^ 'aehttpthAddtional'
    -> AppEngineHTTPTargetHeaders
appEngineHTTPTargetHeaders pAehttpthAddtional_ =
  AppEngineHTTPTargetHeaders'
    {_aehttpthAddtional = _Coerce # pAehttpthAddtional_}


aehttpthAddtional :: Lens' AppEngineHTTPTargetHeaders (HashMap Text Text)
aehttpthAddtional
  = lens _aehttpthAddtional
      (\ s a -> s{_aehttpthAddtional = a})
      . _Coerce

instance FromJSON AppEngineHTTPTargetHeaders where
        parseJSON
          = withObject "AppEngineHTTPTargetHeaders"
              (\ o ->
                 AppEngineHTTPTargetHeaders' <$> (parseJSONObject o))

instance ToJSON AppEngineHTTPTargetHeaders where
        toJSON = toJSON . _aehttpthAddtional

-- | Settings that determine the retry behavior. By default, if a job does
-- not complete successfully (meaning that an acknowledgement is not
-- received from the handler, then it will be retried with exponential
-- backoff according to the settings in RetryConfig.
--
-- /See:/ 'retryConfig' smart constructor.
data RetryConfig =
  RetryConfig'
    { _rcMaxDoublings :: !(Maybe (Textual Int32))
    , _rcMaxRetryDuration :: !(Maybe GDuration)
    , _rcMinBackoffDuration :: !(Maybe GDuration)
    , _rcRetryCount :: !(Maybe (Textual Int32))
    , _rcMaxBackoffDuration :: !(Maybe GDuration)
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
-- * 'rcMinBackoffDuration'
--
-- * 'rcRetryCount'
--
-- * 'rcMaxBackoffDuration'
retryConfig
    :: RetryConfig
retryConfig =
  RetryConfig'
    { _rcMaxDoublings = Nothing
    , _rcMaxRetryDuration = Nothing
    , _rcMinBackoffDuration = Nothing
    , _rcRetryCount = Nothing
    , _rcMaxBackoffDuration = Nothing
    }


-- | The time between retries will double \`max_doublings\` times. A job\'s
-- retry interval starts at min_backoff_duration, then doubles
-- \`max_doublings\` times, then increases linearly, and finally retries at
-- intervals of max_backoff_duration up to retry_count times. For example,
-- if min_backoff_duration is 10s, max_backoff_duration is 300s, and
-- \`max_doublings\` is 3, then the a job will first be retried in 10s. The
-- retry interval will double three times, and then increase linearly by
-- 2^3 * 10s. Finally, the job will retry at intervals of
-- max_backoff_duration until the job has been attempted retry_count times.
-- Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s,
-- 300s, .... The default value of this field is 5.
rcMaxDoublings :: Lens' RetryConfig (Maybe Int32)
rcMaxDoublings
  = lens _rcMaxDoublings
      (\ s a -> s{_rcMaxDoublings = a})
      . mapping _Coerce

-- | The time limit for retrying a failed job, measured from time when an
-- execution was first attempted. If specified with retry_count, the job
-- will be retried until both limits are reached. The default value for
-- max_retry_duration is zero, which means retry duration is unlimited.
rcMaxRetryDuration :: Lens' RetryConfig (Maybe Scientific)
rcMaxRetryDuration
  = lens _rcMaxRetryDuration
      (\ s a -> s{_rcMaxRetryDuration = a})
      . mapping _GDuration

-- | The minimum amount of time to wait before retrying a job after it fails.
-- The default value of this field is 5 seconds.
rcMinBackoffDuration :: Lens' RetryConfig (Maybe Scientific)
rcMinBackoffDuration
  = lens _rcMinBackoffDuration
      (\ s a -> s{_rcMinBackoffDuration = a})
      . mapping _GDuration

-- | The number of attempts that the system will make to run a job using the
-- exponential backoff procedure described by max_doublings. The default
-- value of retry_count is zero. If retry_count is zero, a job attempt will
-- *not* be retried if it fails. Instead the Cloud Scheduler system will
-- wait for the next scheduled execution time. If retry_count is set to a
-- non-zero number then Cloud Scheduler will retry failed attempts, using
-- exponential backoff, retry_count times, or until the next scheduled
-- execution time, whichever comes first. Values greater than 5 and
-- negative values are not allowed.
rcRetryCount :: Lens' RetryConfig (Maybe Int32)
rcRetryCount
  = lens _rcRetryCount (\ s a -> s{_rcRetryCount = a})
      . mapping _Coerce

-- | The maximum amount of time to wait before retrying a job after it fails.
-- The default value of this field is 1 hour.
rcMaxBackoffDuration :: Lens' RetryConfig (Maybe Scientific)
rcMaxBackoffDuration
  = lens _rcMaxBackoffDuration
      (\ s a -> s{_rcMaxBackoffDuration = a})
      . mapping _GDuration

instance FromJSON RetryConfig where
        parseJSON
          = withObject "RetryConfig"
              (\ o ->
                 RetryConfig' <$>
                   (o .:? "maxDoublings") <*> (o .:? "maxRetryDuration")
                     <*> (o .:? "minBackoffDuration")
                     <*> (o .:? "retryCount")
                     <*> (o .:? "maxBackoffDuration"))

instance ToJSON RetryConfig where
        toJSON RetryConfig'{..}
          = object
              (catMaybes
                 [("maxDoublings" .=) <$> _rcMaxDoublings,
                  ("maxRetryDuration" .=) <$> _rcMaxRetryDuration,
                  ("minBackoffDuration" .=) <$> _rcMinBackoffDuration,
                  ("retryCount" .=) <$> _rcRetryCount,
                  ("maxBackoffDuration" .=) <$> _rcMaxBackoffDuration])

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

-- | Attributes for PubsubMessage. Pubsub message must contain either
-- non-empty data, or at least one attribute.
--
-- /See:/ 'pubsubTargetAttributes' smart constructor.
newtype PubsubTargetAttributes =
  PubsubTargetAttributes'
    { _ptaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubTargetAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptaAddtional'
pubsubTargetAttributes
    :: HashMap Text Text -- ^ 'ptaAddtional'
    -> PubsubTargetAttributes
pubsubTargetAttributes pPtaAddtional_ =
  PubsubTargetAttributes' {_ptaAddtional = _Coerce # pPtaAddtional_}


ptaAddtional :: Lens' PubsubTargetAttributes (HashMap Text Text)
ptaAddtional
  = lens _ptaAddtional (\ s a -> s{_ptaAddtional = a})
      . _Coerce

instance FromJSON PubsubTargetAttributes where
        parseJSON
          = withObject "PubsubTargetAttributes"
              (\ o ->
                 PubsubTargetAttributes' <$> (parseJSONObject o))

instance ToJSON PubsubTargetAttributes where
        toJSON = toJSON . _ptaAddtional

-- | The user can specify HTTP request headers to send with the job\'s HTTP
-- request. This map contains the header field names and values. Repeated
-- headers are not supported, but a header value can contain commas. These
-- headers represent a subset of the headers that will accompany the job\'s
-- HTTP request. Some HTTP request headers will be ignored or replaced. A
-- partial list of headers that will be ignored or replaced is below: -
-- Host: This will be computed by Cloud Scheduler and derived from uri. *
-- \`Content-Length\`: This will be computed by Cloud Scheduler. *
-- \`User-Agent\`: This will be set to \`\"Google-Cloud-Scheduler\"\`. *
-- \`X-Google-*\`: Google internal use only. * \`X-AppEngine-*\`: Google
-- internal use only. The total size of headers must be less than 80KB.
--
-- /See:/ 'hTTPTargetHeaders' smart constructor.
newtype HTTPTargetHeaders =
  HTTPTargetHeaders'
    { _httpthAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPTargetHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httpthAddtional'
hTTPTargetHeaders
    :: HashMap Text Text -- ^ 'httpthAddtional'
    -> HTTPTargetHeaders
hTTPTargetHeaders pHttpthAddtional_ =
  HTTPTargetHeaders' {_httpthAddtional = _Coerce # pHttpthAddtional_}


httpthAddtional :: Lens' HTTPTargetHeaders (HashMap Text Text)
httpthAddtional
  = lens _httpthAddtional
      (\ s a -> s{_httpthAddtional = a})
      . _Coerce

instance FromJSON HTTPTargetHeaders where
        parseJSON
          = withObject "HTTPTargetHeaders"
              (\ o -> HTTPTargetHeaders' <$> (parseJSONObject o))

instance ToJSON HTTPTargetHeaders where
        toJSON = toJSON . _httpthAddtional

-- | A message that is published by publishers and consumed by subscribers.
-- The message must contain either a non-empty data field or at least one
-- attribute. Note that client libraries represent this object differently
-- depending on the language. See the corresponding [client library
-- documentation](https:\/\/cloud.google.com\/pubsub\/docs\/reference\/libraries)
-- for more information. See [quotas and limits]
-- (https:\/\/cloud.google.com\/pubsub\/quotas) for more information about
-- message limits.
--
-- /See:/ 'pubsubMessage' smart constructor.
data PubsubMessage =
  PubsubMessage'
    { _pmData :: !(Maybe Bytes)
    , _pmPublishTime :: !(Maybe DateTime')
    , _pmAttributes :: !(Maybe PubsubMessageAttributes)
    , _pmMessageId :: !(Maybe Text)
    , _pmOrderingKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmData'
--
-- * 'pmPublishTime'
--
-- * 'pmAttributes'
--
-- * 'pmMessageId'
--
-- * 'pmOrderingKey'
pubsubMessage
    :: PubsubMessage
pubsubMessage =
  PubsubMessage'
    { _pmData = Nothing
    , _pmPublishTime = Nothing
    , _pmAttributes = Nothing
    , _pmMessageId = Nothing
    , _pmOrderingKey = Nothing
    }


-- | The message data field. If this field is empty, the message must contain
-- at least one attribute.
pmData :: Lens' PubsubMessage (Maybe ByteString)
pmData
  = lens _pmData (\ s a -> s{_pmData = a}) .
      mapping _Bytes

-- | The time at which the message was published, populated by the server
-- when it receives the \`Publish\` call. It must not be populated by the
-- publisher in a \`Publish\` call.
pmPublishTime :: Lens' PubsubMessage (Maybe UTCTime)
pmPublishTime
  = lens _pmPublishTime
      (\ s a -> s{_pmPublishTime = a})
      . mapping _DateTime

-- | Attributes for this message. If this field is empty, the message must
-- contain non-empty data. This can be used to filter messages on the
-- subscription.
pmAttributes :: Lens' PubsubMessage (Maybe PubsubMessageAttributes)
pmAttributes
  = lens _pmAttributes (\ s a -> s{_pmAttributes = a})

-- | ID of this message, assigned by the server when the message is
-- published. Guaranteed to be unique within the topic. This value may be
-- read by a subscriber that receives a \`PubsubMessage\` via a \`Pull\`
-- call or a push delivery. It must not be populated by the publisher in a
-- \`Publish\` call.
pmMessageId :: Lens' PubsubMessage (Maybe Text)
pmMessageId
  = lens _pmMessageId (\ s a -> s{_pmMessageId = a})

-- | If non-empty, identifies related messages for which publish order should
-- be respected. If a \`Subscription\` has \`enable_message_ordering\` set
-- to \`true\`, messages published with the same non-empty \`ordering_key\`
-- value will be delivered to subscribers in the order in which they are
-- received by the Pub\/Sub system. All \`PubsubMessage\`s published in a
-- given \`PublishRequest\` must specify the same \`ordering_key\` value.
pmOrderingKey :: Lens' PubsubMessage (Maybe Text)
pmOrderingKey
  = lens _pmOrderingKey
      (\ s a -> s{_pmOrderingKey = a})

instance FromJSON PubsubMessage where
        parseJSON
          = withObject "PubsubMessage"
              (\ o ->
                 PubsubMessage' <$>
                   (o .:? "data") <*> (o .:? "publishTime") <*>
                     (o .:? "attributes")
                     <*> (o .:? "messageId")
                     <*> (o .:? "orderingKey"))

instance ToJSON PubsubMessage where
        toJSON PubsubMessage'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _pmData,
                  ("publishTime" .=) <$> _pmPublishTime,
                  ("attributes" .=) <$> _pmAttributes,
                  ("messageId" .=) <$> _pmMessageId,
                  ("orderingKey" .=) <$> _pmOrderingKey])

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

-- | App Engine target. The job will be pushed to a job handler by means of
-- an HTTP request via an http_method such as HTTP POST, HTTP GET, etc. The
-- job is acknowledged by means of an HTTP response code in the range [200
-- - 299]. Error 503 is considered an App Engine system error instead of an
-- application error. Requests returning error 503 will be retried
-- regardless of retry configuration and not counted against retry counts.
-- Any other response code, or a failure to receive a response before the
-- deadline, constitutes a failed attempt.
--
-- /See:/ 'appEngineHTTPTarget' smart constructor.
data AppEngineHTTPTarget =
  AppEngineHTTPTarget'
    { _aehttptHTTPMethod :: !(Maybe AppEngineHTTPTargetHTTPMethod)
    , _aehttptRelativeURI :: !(Maybe Text)
    , _aehttptBody :: !(Maybe Bytes)
    , _aehttptHeaders :: !(Maybe AppEngineHTTPTargetHeaders)
    , _aehttptAppEngineRouting :: !(Maybe AppEngineRouting)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppEngineHTTPTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aehttptHTTPMethod'
--
-- * 'aehttptRelativeURI'
--
-- * 'aehttptBody'
--
-- * 'aehttptHeaders'
--
-- * 'aehttptAppEngineRouting'
appEngineHTTPTarget
    :: AppEngineHTTPTarget
appEngineHTTPTarget =
  AppEngineHTTPTarget'
    { _aehttptHTTPMethod = Nothing
    , _aehttptRelativeURI = Nothing
    , _aehttptBody = Nothing
    , _aehttptHeaders = Nothing
    , _aehttptAppEngineRouting = Nothing
    }


-- | The HTTP method to use for the request. PATCH and OPTIONS are not
-- permitted.
aehttptHTTPMethod :: Lens' AppEngineHTTPTarget (Maybe AppEngineHTTPTargetHTTPMethod)
aehttptHTTPMethod
  = lens _aehttptHTTPMethod
      (\ s a -> s{_aehttptHTTPMethod = a})

-- | The relative URI. The relative URL must begin with \"\/\" and must be a
-- valid HTTP relative URL. It can contain a path, query string arguments,
-- and \`#\` fragments. If the relative URL is empty, then the root path
-- \"\/\" will be used. No spaces are allowed, and the maximum length
-- allowed is 2083 characters.
aehttptRelativeURI :: Lens' AppEngineHTTPTarget (Maybe Text)
aehttptRelativeURI
  = lens _aehttptRelativeURI
      (\ s a -> s{_aehttptRelativeURI = a})

-- | Body. HTTP request body. A request body is allowed only if the HTTP
-- method is POST or PUT. It will result in invalid argument error to set a
-- body on a job with an incompatible HttpMethod.
aehttptBody :: Lens' AppEngineHTTPTarget (Maybe ByteString)
aehttptBody
  = lens _aehttptBody (\ s a -> s{_aehttptBody = a}) .
      mapping _Bytes

-- | HTTP request headers. This map contains the header field names and
-- values. Headers can be set when the job is created. Cloud Scheduler sets
-- some headers to default values: * \`User-Agent\`: By default, this
-- header is \`\"AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine)\"\`. This header can be modified,
-- but Cloud Scheduler will append \`\"AppEngine-Google;
-- (+http:\/\/code.google.com\/appengine)\"\` to the modified
-- \`User-Agent\`. * \`X-CloudScheduler\`: This header will be set to true.
-- If the job has an body, Cloud Scheduler sets the following headers: *
-- \`Content-Type\`: By default, the \`Content-Type\` header is set to
-- \`\"application\/octet-stream\"\`. The default can be overridden by
-- explictly setting \`Content-Type\` to a particular media type when the
-- job is created. For example, \`Content-Type\` can be set to
-- \`\"application\/json\"\`. * \`Content-Length\`: This is computed by
-- Cloud Scheduler. This value is output only. It cannot be changed. The
-- headers below are output only. They cannot be set or overridden: *
-- \`X-Google-*\`: For Google internal use only. * \`X-AppEngine-*\`: For
-- Google internal use only. In addition, some App Engine headers, which
-- contain job-specific information, are also be sent to the job handler.
aehttptHeaders :: Lens' AppEngineHTTPTarget (Maybe AppEngineHTTPTargetHeaders)
aehttptHeaders
  = lens _aehttptHeaders
      (\ s a -> s{_aehttptHeaders = a})

-- | App Engine Routing setting for the job.
aehttptAppEngineRouting :: Lens' AppEngineHTTPTarget (Maybe AppEngineRouting)
aehttptAppEngineRouting
  = lens _aehttptAppEngineRouting
      (\ s a -> s{_aehttptAppEngineRouting = a})

instance FromJSON AppEngineHTTPTarget where
        parseJSON
          = withObject "AppEngineHTTPTarget"
              (\ o ->
                 AppEngineHTTPTarget' <$>
                   (o .:? "httpMethod") <*> (o .:? "relativeUri") <*>
                     (o .:? "body")
                     <*> (o .:? "headers")
                     <*> (o .:? "appEngineRouting"))

instance ToJSON AppEngineHTTPTarget where
        toJSON AppEngineHTTPTarget'{..}
          = object
              (catMaybes
                 [("httpMethod" .=) <$> _aehttptHTTPMethod,
                  ("relativeUri" .=) <$> _aehttptRelativeURI,
                  ("body" .=) <$> _aehttptBody,
                  ("headers" .=) <$> _aehttptHeaders,
                  ("appEngineRouting" .=) <$>
                    _aehttptAppEngineRouting])

-- | Http target. The job will be pushed to the job handler by means of an
-- HTTP request via an http_method such as HTTP POST, HTTP GET, etc. The
-- job is acknowledged by means of an HTTP response code in the range [200
-- - 299]. A failure to receive a response constitutes a failed execution.
-- For a redirected request, the response returned by the redirected
-- request is considered.
--
-- /See:/ 'hTTPTarget' smart constructor.
data HTTPTarget =
  HTTPTarget'
    { _httptOAuthToken :: !(Maybe OAuthToken)
    , _httptHTTPMethod :: !(Maybe HTTPTargetHTTPMethod)
    , _httptOidcToken :: !(Maybe OidcToken)
    , _httptBody :: !(Maybe Bytes)
    , _httptURI :: !(Maybe Text)
    , _httptHeaders :: !(Maybe HTTPTargetHeaders)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httptOAuthToken'
--
-- * 'httptHTTPMethod'
--
-- * 'httptOidcToken'
--
-- * 'httptBody'
--
-- * 'httptURI'
--
-- * 'httptHeaders'
hTTPTarget
    :: HTTPTarget
hTTPTarget =
  HTTPTarget'
    { _httptOAuthToken = Nothing
    , _httptHTTPMethod = Nothing
    , _httptOidcToken = Nothing
    , _httptBody = Nothing
    , _httptURI = Nothing
    , _httptHeaders = Nothing
    }


-- | If specified, an [OAuth
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- will be generated and attached as an \`Authorization\` header in the
-- HTTP request. This type of authorization should generally only be used
-- when calling Google APIs hosted on *.googleapis.com.
httptOAuthToken :: Lens' HTTPTarget (Maybe OAuthToken)
httptOAuthToken
  = lens _httptOAuthToken
      (\ s a -> s{_httptOAuthToken = a})

-- | Which HTTP method to use for the request.
httptHTTPMethod :: Lens' HTTPTarget (Maybe HTTPTargetHTTPMethod)
httptHTTPMethod
  = lens _httptHTTPMethod
      (\ s a -> s{_httptHTTPMethod = a})

-- | If specified, an
-- [OIDC](https:\/\/developers.google.com\/identity\/protocols\/OpenIDConnect)
-- token will be generated and attached as an \`Authorization\` header in
-- the HTTP request. This type of authorization can be used for many
-- scenarios, including calling Cloud Run, or endpoints where you intend to
-- validate the token yourself.
httptOidcToken :: Lens' HTTPTarget (Maybe OidcToken)
httptOidcToken
  = lens _httptOidcToken
      (\ s a -> s{_httptOidcToken = a})

-- | HTTP request body. A request body is allowed only if the HTTP method is
-- POST, PUT, or PATCH. It is an error to set body on a job with an
-- incompatible HttpMethod.
httptBody :: Lens' HTTPTarget (Maybe ByteString)
httptBody
  = lens _httptBody (\ s a -> s{_httptBody = a}) .
      mapping _Bytes

-- | Required. The full URI path that the request will be sent to. This
-- string must begin with either \"http:\/\/\" or \"https:\/\/\". Some
-- examples of valid values for uri are: \`http:\/\/acme.com\` and
-- \`https:\/\/acme.com\/sales:8080\`. Cloud Scheduler will encode some
-- characters for safety and compatibility. The maximum allowed URL length
-- is 2083 characters after encoding.
httptURI :: Lens' HTTPTarget (Maybe Text)
httptURI = lens _httptURI (\ s a -> s{_httptURI = a})

-- | The user can specify HTTP request headers to send with the job\'s HTTP
-- request. This map contains the header field names and values. Repeated
-- headers are not supported, but a header value can contain commas. These
-- headers represent a subset of the headers that will accompany the job\'s
-- HTTP request. Some HTTP request headers will be ignored or replaced. A
-- partial list of headers that will be ignored or replaced is below: -
-- Host: This will be computed by Cloud Scheduler and derived from uri. *
-- \`Content-Length\`: This will be computed by Cloud Scheduler. *
-- \`User-Agent\`: This will be set to \`\"Google-Cloud-Scheduler\"\`. *
-- \`X-Google-*\`: Google internal use only. * \`X-AppEngine-*\`: Google
-- internal use only. The total size of headers must be less than 80KB.
httptHeaders :: Lens' HTTPTarget (Maybe HTTPTargetHeaders)
httptHeaders
  = lens _httptHeaders (\ s a -> s{_httptHeaders = a})

instance FromJSON HTTPTarget where
        parseJSON
          = withObject "HTTPTarget"
              (\ o ->
                 HTTPTarget' <$>
                   (o .:? "oauthToken") <*> (o .:? "httpMethod") <*>
                     (o .:? "oidcToken")
                     <*> (o .:? "body")
                     <*> (o .:? "uri")
                     <*> (o .:? "headers"))

instance ToJSON HTTPTarget where
        toJSON HTTPTarget'{..}
          = object
              (catMaybes
                 [("oauthToken" .=) <$> _httptOAuthToken,
                  ("httpMethod" .=) <$> _httptHTTPMethod,
                  ("oidcToken" .=) <$> _httptOidcToken,
                  ("body" .=) <$> _httptBody, ("uri" .=) <$> _httptURI,
                  ("headers" .=) <$> _httptHeaders])

-- | Request message for forcing a job to run now using RunJob.
--
-- /See:/ 'runJobRequest' smart constructor.
data RunJobRequest =
  RunJobRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunJobRequest' with the minimum fields required to make a request.
--
runJobRequest
    :: RunJobRequest
runJobRequest = RunJobRequest'


instance FromJSON RunJobRequest where
        parseJSON
          = withObject "RunJobRequest"
              (\ o -> pure RunJobRequest')

instance ToJSON RunJobRequest where
        toJSON = const emptyObject

-- | Configuration for a job. The maximum allowed size for a job is 100KB.
--
-- /See:/ 'job' smart constructor.
data Job =
  Job'
    { _jStatus :: !(Maybe Status)
    , _jAttemptDeadline :: !(Maybe GDuration)
    , _jState :: !(Maybe JobState)
    , _jLastAttemptTime :: !(Maybe DateTime')
    , _jRetryConfig :: !(Maybe RetryConfig)
    , _jSchedule :: !(Maybe Text)
    , _jScheduleTime :: !(Maybe DateTime')
    , _jAppEngineHTTPTarget :: !(Maybe AppEngineHTTPTarget)
    , _jHTTPTarget :: !(Maybe HTTPTarget)
    , _jName :: !(Maybe Text)
    , _jPubsubTarget :: !(Maybe PubsubTarget)
    , _jUserUpdateTime :: !(Maybe DateTime')
    , _jTimeZone :: !(Maybe Text)
    , _jDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jStatus'
--
-- * 'jAttemptDeadline'
--
-- * 'jState'
--
-- * 'jLastAttemptTime'
--
-- * 'jRetryConfig'
--
-- * 'jSchedule'
--
-- * 'jScheduleTime'
--
-- * 'jAppEngineHTTPTarget'
--
-- * 'jHTTPTarget'
--
-- * 'jName'
--
-- * 'jPubsubTarget'
--
-- * 'jUserUpdateTime'
--
-- * 'jTimeZone'
--
-- * 'jDescription'
job
    :: Job
job =
  Job'
    { _jStatus = Nothing
    , _jAttemptDeadline = Nothing
    , _jState = Nothing
    , _jLastAttemptTime = Nothing
    , _jRetryConfig = Nothing
    , _jSchedule = Nothing
    , _jScheduleTime = Nothing
    , _jAppEngineHTTPTarget = Nothing
    , _jHTTPTarget = Nothing
    , _jName = Nothing
    , _jPubsubTarget = Nothing
    , _jUserUpdateTime = Nothing
    , _jTimeZone = Nothing
    , _jDescription = Nothing
    }


-- | Output only. The response from the target for the last attempted
-- execution.
jStatus :: Lens' Job (Maybe Status)
jStatus = lens _jStatus (\ s a -> s{_jStatus = a})

-- | The deadline for job attempts. If the request handler does not respond
-- by this deadline then the request is cancelled and the attempt is marked
-- as a \`DEADLINE_EXCEEDED\` failure. The failed attempt can be viewed in
-- execution logs. Cloud Scheduler will retry the job according to the
-- RetryConfig. The allowed duration for this deadline is: * For HTTP
-- targets, between 15 seconds and 30 minutes. * For App Engine HTTP
-- targets, between 15 seconds and 24 hours.
jAttemptDeadline :: Lens' Job (Maybe Scientific)
jAttemptDeadline
  = lens _jAttemptDeadline
      (\ s a -> s{_jAttemptDeadline = a})
      . mapping _GDuration

-- | Output only. State of the job.
jState :: Lens' Job (Maybe JobState)
jState = lens _jState (\ s a -> s{_jState = a})

-- | Output only. The time the last job attempt started.
jLastAttemptTime :: Lens' Job (Maybe UTCTime)
jLastAttemptTime
  = lens _jLastAttemptTime
      (\ s a -> s{_jLastAttemptTime = a})
      . mapping _DateTime

-- | Settings that determine the retry behavior.
jRetryConfig :: Lens' Job (Maybe RetryConfig)
jRetryConfig
  = lens _jRetryConfig (\ s a -> s{_jRetryConfig = a})

-- | Required, except when used with UpdateJob. Describes the schedule on
-- which the job will be executed. The schedule can be either of the
-- following types: *
-- [Crontab](http:\/\/en.wikipedia.org\/wiki\/Cron#Overview) * English-like
-- [schedule](https:\/\/cloud.google.com\/scheduler\/docs\/configuring\/cron-job-schedules)
-- As a general rule, execution \`n + 1\` of a job will not begin until
-- execution \`n\` has finished. Cloud Scheduler will never allow two
-- simultaneously outstanding executions. For example, this implies that if
-- the \`n+1\`th execution is scheduled to run at 16:00 but the \`n\`th
-- execution takes until 16:15, the \`n+1\`th execution will not start
-- until \`16:15\`. A scheduled start time will be delayed if the previous
-- execution has not ended when its scheduled time occurs. If retry_count >
-- 0 and a job attempt fails, the job will be tried a total of retry_count
-- times, with exponential backoff, until the next scheduled start time.
jSchedule :: Lens' Job (Maybe Text)
jSchedule
  = lens _jSchedule (\ s a -> s{_jSchedule = a})

-- | Output only. The next time the job is scheduled. Note that this may be a
-- retry of a previously failed attempt or the next execution time
-- according to the schedule.
jScheduleTime :: Lens' Job (Maybe UTCTime)
jScheduleTime
  = lens _jScheduleTime
      (\ s a -> s{_jScheduleTime = a})
      . mapping _DateTime

-- | App Engine HTTP target.
jAppEngineHTTPTarget :: Lens' Job (Maybe AppEngineHTTPTarget)
jAppEngineHTTPTarget
  = lens _jAppEngineHTTPTarget
      (\ s a -> s{_jAppEngineHTTPTarget = a})

-- | HTTP target.
jHTTPTarget :: Lens' Job (Maybe HTTPTarget)
jHTTPTarget
  = lens _jHTTPTarget (\ s a -> s{_jHTTPTarget = a})

-- | Optionally caller-specified in CreateJob, after which it becomes output
-- only. The job name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID\`. *
-- \`PROJECT_ID\` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens
-- (-), colons (:), or periods (.). For more information, see [Identifying
-- projects](https:\/\/cloud.google.com\/resource-manager\/docs\/creating-managing-projects#identifying_projects)
-- * \`LOCATION_ID\` is the canonical ID for the job\'s location. The list
-- of available locations can be obtained by calling ListLocations. For
-- more information, see https:\/\/cloud.google.com\/about\/locations\/. *
-- \`JOB_ID\` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens
-- (-), or underscores (_). The maximum length is 500 characters.
jName :: Lens' Job (Maybe Text)
jName = lens _jName (\ s a -> s{_jName = a})

-- | Pub\/Sub target.
jPubsubTarget :: Lens' Job (Maybe PubsubTarget)
jPubsubTarget
  = lens _jPubsubTarget
      (\ s a -> s{_jPubsubTarget = a})

-- | Output only. The creation time of the job.
jUserUpdateTime :: Lens' Job (Maybe UTCTime)
jUserUpdateTime
  = lens _jUserUpdateTime
      (\ s a -> s{_jUserUpdateTime = a})
      . mapping _DateTime

-- | Specifies the time zone to be used in interpreting schedule. The value
-- of this field must be a time zone name from the [tz
-- database](http:\/\/en.wikipedia.org\/wiki\/Tz_database). Note that some
-- time zones include a provision for daylight savings time. The rules for
-- daylight saving time are determined by the chosen tz. For UTC use the
-- string \"utc\". If a time zone is not specified, the default will be in
-- UTC (also known as GMT).
jTimeZone :: Lens' Job (Maybe Text)
jTimeZone
  = lens _jTimeZone (\ s a -> s{_jTimeZone = a})

-- | Optionally caller-specified in CreateJob or UpdateJob. A human-readable
-- description for the job. This string must not contain more than 500
-- characters.
jDescription :: Lens' Job (Maybe Text)
jDescription
  = lens _jDescription (\ s a -> s{_jDescription = a})

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job' <$>
                   (o .:? "status") <*> (o .:? "attemptDeadline") <*>
                     (o .:? "state")
                     <*> (o .:? "lastAttemptTime")
                     <*> (o .:? "retryConfig")
                     <*> (o .:? "schedule")
                     <*> (o .:? "scheduleTime")
                     <*> (o .:? "appEngineHttpTarget")
                     <*> (o .:? "httpTarget")
                     <*> (o .:? "name")
                     <*> (o .:? "pubsubTarget")
                     <*> (o .:? "userUpdateTime")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "description"))

instance ToJSON Job where
        toJSON Job'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _jStatus,
                  ("attemptDeadline" .=) <$> _jAttemptDeadline,
                  ("state" .=) <$> _jState,
                  ("lastAttemptTime" .=) <$> _jLastAttemptTime,
                  ("retryConfig" .=) <$> _jRetryConfig,
                  ("schedule" .=) <$> _jSchedule,
                  ("scheduleTime" .=) <$> _jScheduleTime,
                  ("appEngineHttpTarget" .=) <$> _jAppEngineHTTPTarget,
                  ("httpTarget" .=) <$> _jHTTPTarget,
                  ("name" .=) <$> _jName,
                  ("pubsubTarget" .=) <$> _jPubsubTarget,
                  ("userUpdateTime" .=) <$> _jUserUpdateTime,
                  ("timeZone" .=) <$> _jTimeZone,
                  ("description" .=) <$> _jDescription])

-- | Attributes for this message. If this field is empty, the message must
-- contain non-empty data. This can be used to filter messages on the
-- subscription.
--
-- /See:/ 'pubsubMessageAttributes' smart constructor.
newtype PubsubMessageAttributes =
  PubsubMessageAttributes'
    { _pmaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubMessageAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmaAddtional'
pubsubMessageAttributes
    :: HashMap Text Text -- ^ 'pmaAddtional'
    -> PubsubMessageAttributes
pubsubMessageAttributes pPmaAddtional_ =
  PubsubMessageAttributes' {_pmaAddtional = _Coerce # pPmaAddtional_}


pmaAddtional :: Lens' PubsubMessageAttributes (HashMap Text Text)
pmaAddtional
  = lens _pmaAddtional (\ s a -> s{_pmaAddtional = a})
      . _Coerce

instance FromJSON PubsubMessageAttributes where
        parseJSON
          = withObject "PubsubMessageAttributes"
              (\ o ->
                 PubsubMessageAttributes' <$> (parseJSONObject o))

instance ToJSON PubsubMessageAttributes where
        toJSON = toJSON . _pmaAddtional

-- | Pub\/Sub target. The job will be delivered by publishing a message to
-- the given Pub\/Sub topic.
--
-- /See:/ 'pubsubTarget' smart constructor.
data PubsubTarget =
  PubsubTarget'
    { _ptData :: !(Maybe Bytes)
    , _ptTopicName :: !(Maybe Text)
    , _ptAttributes :: !(Maybe PubsubTargetAttributes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptData'
--
-- * 'ptTopicName'
--
-- * 'ptAttributes'
pubsubTarget
    :: PubsubTarget
pubsubTarget =
  PubsubTarget'
    {_ptData = Nothing, _ptTopicName = Nothing, _ptAttributes = Nothing}


-- | The message payload for PubsubMessage. Pubsub message must contain
-- either non-empty data, or at least one attribute.
ptData :: Lens' PubsubTarget (Maybe ByteString)
ptData
  = lens _ptData (\ s a -> s{_ptData = a}) .
      mapping _Bytes

-- | Required. The name of the Cloud Pub\/Sub topic to which messages will be
-- published when a job is delivered. The topic name must be in the same
-- format as required by PubSub\'s
-- [PublishRequest.name](https:\/\/cloud.google.com\/pubsub\/docs\/reference\/rpc\/google.pubsub.v1#publishrequest),
-- for example \`projects\/PROJECT_ID\/topics\/TOPIC_ID\`. The topic must
-- be in the same project as the Cloud Scheduler job.
ptTopicName :: Lens' PubsubTarget (Maybe Text)
ptTopicName
  = lens _ptTopicName (\ s a -> s{_ptTopicName = a})

-- | Attributes for PubsubMessage. Pubsub message must contain either
-- non-empty data, or at least one attribute.
ptAttributes :: Lens' PubsubTarget (Maybe PubsubTargetAttributes)
ptAttributes
  = lens _ptAttributes (\ s a -> s{_ptAttributes = a})

instance FromJSON PubsubTarget where
        parseJSON
          = withObject "PubsubTarget"
              (\ o ->
                 PubsubTarget' <$>
                   (o .:? "data") <*> (o .:? "topicName") <*>
                     (o .:? "attributes"))

instance ToJSON PubsubTarget where
        toJSON PubsubTarget'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _ptData,
                  ("topicName" .=) <$> _ptTopicName,
                  ("attributes" .=) <$> _ptAttributes])

-- | Response message for listing jobs using ListJobs.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse =
  ListJobsResponse'
    { _ljrNextPageToken :: !(Maybe Text)
    , _ljrJobs :: !(Maybe [Job])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrNextPageToken'
--
-- * 'ljrJobs'
listJobsResponse
    :: ListJobsResponse
listJobsResponse =
  ListJobsResponse' {_ljrNextPageToken = Nothing, _ljrJobs = Nothing}


-- | A token to retrieve next page of results. Pass this value in the
-- page_token field in the subsequent call to ListJobs to retrieve the next
-- page of results. If this is empty it indicates that there are no more
-- results through which to paginate. The page token is valid for only 2
-- hours.
ljrNextPageToken :: Lens' ListJobsResponse (Maybe Text)
ljrNextPageToken
  = lens _ljrNextPageToken
      (\ s a -> s{_ljrNextPageToken = a})

-- | The list of jobs.
ljrJobs :: Lens' ListJobsResponse [Job]
ljrJobs
  = lens _ljrJobs (\ s a -> s{_ljrJobs = a}) . _Default
      . _Coerce

instance FromJSON ListJobsResponse where
        parseJSON
          = withObject "ListJobsResponse"
              (\ o ->
                 ListJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobs" .!= mempty))

instance ToJSON ListJobsResponse where
        toJSON ListJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ljrNextPageToken,
                  ("jobs" .=) <$> _ljrJobs])

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

-- | App Engine Routing. For more information about services, versions, and
-- instances see [An Overview of App
-- Engine](https:\/\/cloud.google.com\/appengine\/docs\/python\/an-overview-of-app-engine),
-- [Microservices Architecture on Google App
-- Engine](https:\/\/cloud.google.com\/appengine\/docs\/python\/microservices-on-app-engine),
-- [App Engine Standard request
-- routing](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/how-requests-are-routed),
-- and [App Engine Flex request
-- routing](https:\/\/cloud.google.com\/appengine\/docs\/flexible\/python\/how-requests-are-routed).
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


-- | App service. By default, the job is sent to the service which is the
-- default service when the job is attempted.
aerService :: Lens' AppEngineRouting (Maybe Text)
aerService
  = lens _aerService (\ s a -> s{_aerService = a})

-- | App version. By default, the job is sent to the version which is the
-- default version when the job is attempted.
aerVersion :: Lens' AppEngineRouting (Maybe Text)
aerVersion
  = lens _aerVersion (\ s a -> s{_aerVersion = a})

-- | Output only. The host that the job is sent to. For more information
-- about how App Engine requests are routed, see
-- [here](https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/how-requests-are-routed).
-- The host is constructed as: * \`host = [application_domain_name]\` \`|
-- [service] + \'.\' + [application_domain_name]\` \`| [version] + \'.\' +
-- [application_domain_name]\` \`| [version_dot_service]+ \'.\' +
-- [application_domain_name]\` \`| [instance] + \'.\' +
-- [application_domain_name]\` \`| [instance_dot_service] + \'.\' +
-- [application_domain_name]\` \`| [instance_dot_version] + \'.\' +
-- [application_domain_name]\` \`| [instance_dot_version_dot_service] +
-- \'.\' + [application_domain_name]\` * \`application_domain_name\` = The
-- domain name of the app, for example .appspot.com, which is associated
-- with the job\'s project ID. * \`service =\` service * \`version =\`
-- version * \`version_dot_service =\` version \`+ \'.\' +\` service *
-- \`instance =\` instance * \`instance_dot_service =\` instance \`+ \'.\'
-- +\` service * \`instance_dot_version =\` instance \`+ \'.\' +\` version
-- * \`instance_dot_version_dot_service =\` instance \`+ \'.\' +\` version
-- \`+ \'.\' +\` service If service is empty, then the job will be sent to
-- the service which is the default service when the job is attempted. If
-- version is empty, then the job will be sent to the version which is the
-- default version when the job is attempted. If instance is empty, then
-- the job will be sent to an instance which is available when the job is
-- attempted. If service, version, or instance is invalid, then the job
-- will be sent to the default version of the default service when the job
-- is attempted.
aerHost :: Lens' AppEngineRouting (Maybe Text)
aerHost = lens _aerHost (\ s a -> s{_aerHost = a})

-- | App instance. By default, the job is sent to an instance which is
-- available when the job is attempted. Requests can only be sent to a
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
