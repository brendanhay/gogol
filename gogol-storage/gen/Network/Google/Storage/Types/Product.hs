{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Storage.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Storage.Types.Sum

-- | The owner of the object. This will always be the uploader of the object.
--
-- /See:/ 'objectOwner' smart constructor.
data ObjectOwner =
  ObjectOwner'
    { _ooEntity   :: !(Maybe Text)
    , _ooEntityId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectOwner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooEntity'
--
-- * 'ooEntityId'
objectOwner
    :: ObjectOwner
objectOwner = ObjectOwner' {_ooEntity = Nothing, _ooEntityId = Nothing}

-- | The entity, in the form user-userId.
ooEntity :: Lens' ObjectOwner (Maybe Text)
ooEntity = lens _ooEntity (\ s a -> s{_ooEntity = a})

-- | The ID for the entity.
ooEntityId :: Lens' ObjectOwner (Maybe Text)
ooEntityId
  = lens _ooEntityId (\ s a -> s{_ooEntityId = a})

instance FromJSON ObjectOwner where
        parseJSON
          = withObject "ObjectOwner"
              (\ o ->
                 ObjectOwner' <$>
                   (o .:? "entity") <*> (o .:? "entityId"))

instance ToJSON ObjectOwner where
        toJSON ObjectOwner'{..}
          = object
              (catMaybes
                 [("entity" .=) <$> _ooEntity,
                  ("entityId" .=) <$> _ooEntityId])

-- | The bucket\'s versioning configuration.
--
-- /See:/ 'bucketVersioning' smart constructor.
newtype BucketVersioning =
  BucketVersioning'
    { _bvEnabled :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketVersioning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bvEnabled'
bucketVersioning
    :: BucketVersioning
bucketVersioning = BucketVersioning' {_bvEnabled = Nothing}

-- | While set to true, versioning is fully enabled for this bucket.
bvEnabled :: Lens' BucketVersioning (Maybe Bool)
bvEnabled
  = lens _bvEnabled (\ s a -> s{_bvEnabled = a})

instance FromJSON BucketVersioning where
        parseJSON
          = withObject "BucketVersioning"
              (\ o -> BucketVersioning' <$> (o .:? "enabled"))

instance ToJSON BucketVersioning where
        toJSON BucketVersioning'{..}
          = object (catMaybes [("enabled" .=) <$> _bvEnabled])

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eKind        :: !Text
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eKind'
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
    , _eKind = "storage#expr"
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }

-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | The kind of item this is. For storage, this is always storage#expr. This
-- field is ignored on input.
eKind :: Lens' Expr Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

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
                   (o .:? "location") <*>
                     (o .:? "kind" .!= "storage#expr")
                     <*> (o .:? "expression")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  Just ("kind" .= _eKind),
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | The bucket\'s retention policy. The retention policy enforces a minimum
-- retention time for all objects contained in the bucket, based on their
-- creation time. Any attempt to overwrite or delete objects younger than
-- the retention period will result in a PERMISSION_DENIED error. An
-- unlocked retention policy can be modified or removed from the bucket via
-- a storage.buckets.update operation. A locked retention policy cannot be
-- removed or shortened in duration for the lifetime of the bucket.
-- Attempting to remove or decrease period of a locked retention policy
-- will result in a PERMISSION_DENIED error.
--
-- /See:/ 'bucketRetentionPolicy' smart constructor.
data BucketRetentionPolicy =
  BucketRetentionPolicy'
    { _brpRetentionPeriod :: !(Maybe (Textual Int64))
    , _brpEffectiveTime   :: !(Maybe DateTime')
    , _brpIsLocked        :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketRetentionPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brpRetentionPeriod'
--
-- * 'brpEffectiveTime'
--
-- * 'brpIsLocked'
bucketRetentionPolicy
    :: BucketRetentionPolicy
bucketRetentionPolicy =
  BucketRetentionPolicy'
    { _brpRetentionPeriod = Nothing
    , _brpEffectiveTime = Nothing
    , _brpIsLocked = Nothing
    }

-- | The duration in seconds that objects need to be retained. Retention
-- duration must be greater than zero and less than 100 years. Note that
-- enforcement of retention periods less than a day is not guaranteed. Such
-- periods should only be used for testing purposes.
brpRetentionPeriod :: Lens' BucketRetentionPolicy (Maybe Int64)
brpRetentionPeriod
  = lens _brpRetentionPeriod
      (\ s a -> s{_brpRetentionPeriod = a})
      . mapping _Coerce

-- | Server-determined value that indicates the time from which policy was
-- enforced and effective. This value is in RFC 3339 format.
brpEffectiveTime :: Lens' BucketRetentionPolicy (Maybe UTCTime)
brpEffectiveTime
  = lens _brpEffectiveTime
      (\ s a -> s{_brpEffectiveTime = a})
      . mapping _DateTime

-- | Once locked, an object retention policy cannot be modified.
brpIsLocked :: Lens' BucketRetentionPolicy (Maybe Bool)
brpIsLocked
  = lens _brpIsLocked (\ s a -> s{_brpIsLocked = a})

instance FromJSON BucketRetentionPolicy where
        parseJSON
          = withObject "BucketRetentionPolicy"
              (\ o ->
                 BucketRetentionPolicy' <$>
                   (o .:? "retentionPeriod") <*> (o .:? "effectiveTime")
                     <*> (o .:? "isLocked"))

instance ToJSON BucketRetentionPolicy where
        toJSON BucketRetentionPolicy'{..}
          = object
              (catMaybes
                 [("retentionPeriod" .=) <$> _brpRetentionPeriod,
                  ("effectiveTime" .=) <$> _brpEffectiveTime,
                  ("isLocked" .=) <$> _brpIsLocked])

-- | A list of buckets.
--
-- /See:/ 'buckets' smart constructor.
data Buckets =
  Buckets'
    { _bNextPageToken :: !(Maybe Text)
    , _bKind          :: !Text
    , _bItems         :: !(Maybe [Bucket])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Buckets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bNextPageToken'
--
-- * 'bKind'
--
-- * 'bItems'
buckets
    :: Buckets
buckets =
  Buckets'
    {_bNextPageToken = Nothing, _bKind = "storage#buckets", _bItems = Nothing}

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
bNextPageToken :: Lens' Buckets (Maybe Text)
bNextPageToken
  = lens _bNextPageToken
      (\ s a -> s{_bNextPageToken = a})

-- | The kind of item this is. For lists of buckets, this is always
-- storage#buckets.
bKind :: Lens' Buckets Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | The list of items.
bItems :: Lens' Buckets [Bucket]
bItems
  = lens _bItems (\ s a -> s{_bItems = a}) . _Default .
      _Coerce

instance FromJSON Buckets where
        parseJSON
          = withObject "Buckets"
              (\ o ->
                 Buckets' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "storage#buckets")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Buckets where
        toJSON Buckets'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _bNextPageToken,
                  Just ("kind" .= _bKind), ("items" .=) <$> _bItems])

-- | The bucket\'s billing configuration.
--
-- /See:/ 'bucketBilling' smart constructor.
newtype BucketBilling =
  BucketBilling'
    { _bbRequesterPays :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketBilling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbRequesterPays'
bucketBilling
    :: BucketBilling
bucketBilling = BucketBilling' {_bbRequesterPays = Nothing}

-- | When set to true, Requester Pays is enabled for this bucket.
bbRequesterPays :: Lens' BucketBilling (Maybe Bool)
bbRequesterPays
  = lens _bbRequesterPays
      (\ s a -> s{_bbRequesterPays = a})

instance FromJSON BucketBilling where
        parseJSON
          = withObject "BucketBilling"
              (\ o -> BucketBilling' <$> (o .:? "requesterPays"))

instance ToJSON BucketBilling where
        toJSON BucketBilling'{..}
          = object
              (catMaybes
                 [("requesterPays" .=) <$> _bbRequesterPays])

-- | A subscription to receive Google PubSub notifications.
--
-- /See:/ 'notification' smart constructor.
data Notification =
  Notification'
    { _nEtag             :: !(Maybe Text)
    , _nObjectNamePrefix :: !(Maybe Text)
    , _nPayloadFormat    :: !Text
    , _nEventTypes       :: !(Maybe [Text])
    , _nKind             :: !Text
    , _nTopic            :: !(Maybe Text)
    , _nSelfLink         :: !(Maybe Text)
    , _nId               :: !(Maybe Text)
    , _nCustomAttributes :: !(Maybe NotificationCustom_attributes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nEtag'
--
-- * 'nObjectNamePrefix'
--
-- * 'nPayloadFormat'
--
-- * 'nEventTypes'
--
-- * 'nKind'
--
-- * 'nTopic'
--
-- * 'nSelfLink'
--
-- * 'nId'
--
-- * 'nCustomAttributes'
notification
    :: Notification
notification =
  Notification'
    { _nEtag = Nothing
    , _nObjectNamePrefix = Nothing
    , _nPayloadFormat = "JSON_API_V1"
    , _nEventTypes = Nothing
    , _nKind = "storage#notification"
    , _nTopic = Nothing
    , _nSelfLink = Nothing
    , _nId = Nothing
    , _nCustomAttributes = Nothing
    }

-- | HTTP 1.1 Entity tag for this subscription notification.
nEtag :: Lens' Notification (Maybe Text)
nEtag = lens _nEtag (\ s a -> s{_nEtag = a})

-- | If present, only apply this notification configuration to object names
-- that begin with this prefix.
nObjectNamePrefix :: Lens' Notification (Maybe Text)
nObjectNamePrefix
  = lens _nObjectNamePrefix
      (\ s a -> s{_nObjectNamePrefix = a})

-- | The desired content of the Payload.
nPayloadFormat :: Lens' Notification Text
nPayloadFormat
  = lens _nPayloadFormat
      (\ s a -> s{_nPayloadFormat = a})

-- | If present, only send notifications about listed event types. If empty,
-- sent notifications for all event types.
nEventTypes :: Lens' Notification [Text]
nEventTypes
  = lens _nEventTypes (\ s a -> s{_nEventTypes = a}) .
      _Default
      . _Coerce

-- | The kind of item this is. For notifications, this is always
-- storage#notification.
nKind :: Lens' Notification Text
nKind = lens _nKind (\ s a -> s{_nKind = a})

-- | The Cloud PubSub topic to which this subscription publishes. Formatted
-- as:
-- \'\/\/pubsub.googleapis.com\/projects\/{project-identifier}\/topics\/{my-topic}\'
nTopic :: Lens' Notification (Maybe Text)
nTopic = lens _nTopic (\ s a -> s{_nTopic = a})

-- | The canonical URL of this notification.
nSelfLink :: Lens' Notification (Maybe Text)
nSelfLink
  = lens _nSelfLink (\ s a -> s{_nSelfLink = a})

-- | The ID of the notification.
nId :: Lens' Notification (Maybe Text)
nId = lens _nId (\ s a -> s{_nId = a})

-- | An optional list of additional attributes to attach to each Cloud PubSub
-- message published for this notification subscription.
nCustomAttributes :: Lens' Notification (Maybe NotificationCustom_attributes)
nCustomAttributes
  = lens _nCustomAttributes
      (\ s a -> s{_nCustomAttributes = a})

instance FromJSON Notification where
        parseJSON
          = withObject "Notification"
              (\ o ->
                 Notification' <$>
                   (o .:? "etag") <*> (o .:? "object_name_prefix") <*>
                     (o .:? "payload_format" .!= "JSON_API_V1")
                     <*> (o .:? "event_types" .!= mempty)
                     <*> (o .:? "kind" .!= "storage#notification")
                     <*> (o .:? "topic")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "custom_attributes"))

instance ToJSON Notification where
        toJSON Notification'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _nEtag,
                  ("object_name_prefix" .=) <$> _nObjectNamePrefix,
                  Just ("payload_format" .= _nPayloadFormat),
                  ("event_types" .=) <$> _nEventTypes,
                  Just ("kind" .= _nKind), ("topic" .=) <$> _nTopic,
                  ("selfLink" .=) <$> _nSelfLink, ("id" .=) <$> _nId,
                  ("custom_attributes" .=) <$> _nCustomAttributes])

-- | The bucket\'s logging configuration, which defines the destination
-- bucket and optional name prefix for the current bucket\'s logs.
--
-- /See:/ 'bucketLogging' smart constructor.
data BucketLogging =
  BucketLogging'
    { _blLogBucket       :: !(Maybe Text)
    , _blLogObjectPrefix :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketLogging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blLogBucket'
--
-- * 'blLogObjectPrefix'
bucketLogging
    :: BucketLogging
bucketLogging =
  BucketLogging' {_blLogBucket = Nothing, _blLogObjectPrefix = Nothing}

-- | The destination bucket where the current bucket\'s logs should be
-- placed.
blLogBucket :: Lens' BucketLogging (Maybe Text)
blLogBucket
  = lens _blLogBucket (\ s a -> s{_blLogBucket = a})

-- | A prefix for log object names.
blLogObjectPrefix :: Lens' BucketLogging (Maybe Text)
blLogObjectPrefix
  = lens _blLogObjectPrefix
      (\ s a -> s{_blLogObjectPrefix = a})

instance FromJSON BucketLogging where
        parseJSON
          = withObject "BucketLogging"
              (\ o ->
                 BucketLogging' <$>
                   (o .:? "logBucket") <*> (o .:? "logObjectPrefix"))

instance ToJSON BucketLogging where
        toJSON BucketLogging'{..}
          = object
              (catMaybes
                 [("logBucket" .=) <$> _blLogBucket,
                  ("logObjectPrefix" .=) <$> _blLogObjectPrefix])

-- | User-provided metadata, in key\/value pairs.
--
-- /See:/ 'objectMetadata' smart constructor.
newtype ObjectMetadata =
  ObjectMetadata'
    { _omAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
objectMetadata
    :: HashMap Text Text -- ^ 'omAddtional'
    -> ObjectMetadata
objectMetadata pOmAddtional_ =
  ObjectMetadata' {_omAddtional = _Coerce # pOmAddtional_}

-- | An individual metadata entry.
omAddtional :: Lens' ObjectMetadata (HashMap Text Text)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON ObjectMetadata where
        parseJSON
          = withObject "ObjectMetadata"
              (\ o -> ObjectMetadata' <$> (parseJSONObject o))

instance ToJSON ObjectMetadata where
        toJSON = toJSON . _omAddtional

-- | The condition(s) under which the action will be taken.
--
-- /See:/ 'bucketLifecycleRuleItemCondition' smart constructor.
data BucketLifecycleRuleItemCondition =
  BucketLifecycleRuleItemCondition'
    { _blricAge                 :: !(Maybe (Textual Int32))
    , _blricIsLive              :: !(Maybe Bool)
    , _blricNumNewerVersions    :: !(Maybe (Textual Int32))
    , _blricMatchesStorageClass :: !(Maybe [Text])
    , _blricMatchesPattern      :: !(Maybe Text)
    , _blricCreatedBefore       :: !(Maybe Date')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketLifecycleRuleItemCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blricAge'
--
-- * 'blricIsLive'
--
-- * 'blricNumNewerVersions'
--
-- * 'blricMatchesStorageClass'
--
-- * 'blricMatchesPattern'
--
-- * 'blricCreatedBefore'
bucketLifecycleRuleItemCondition
    :: BucketLifecycleRuleItemCondition
bucketLifecycleRuleItemCondition =
  BucketLifecycleRuleItemCondition'
    { _blricAge = Nothing
    , _blricIsLive = Nothing
    , _blricNumNewerVersions = Nothing
    , _blricMatchesStorageClass = Nothing
    , _blricMatchesPattern = Nothing
    , _blricCreatedBefore = Nothing
    }

-- | Age of an object (in days). This condition is satisfied when an object
-- reaches the specified age.
blricAge :: Lens' BucketLifecycleRuleItemCondition (Maybe Int32)
blricAge
  = lens _blricAge (\ s a -> s{_blricAge = a}) .
      mapping _Coerce

-- | Relevant only for versioned objects. If the value is true, this
-- condition matches live objects; if the value is false, it matches
-- archived objects.
blricIsLive :: Lens' BucketLifecycleRuleItemCondition (Maybe Bool)
blricIsLive
  = lens _blricIsLive (\ s a -> s{_blricIsLive = a})

-- | Relevant only for versioned objects. If the value is N, this condition
-- is satisfied when there are at least N versions (including the live
-- version) newer than this version of the object.
blricNumNewerVersions :: Lens' BucketLifecycleRuleItemCondition (Maybe Int32)
blricNumNewerVersions
  = lens _blricNumNewerVersions
      (\ s a -> s{_blricNumNewerVersions = a})
      . mapping _Coerce

-- | Objects having any of the storage classes specified by this condition
-- will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE,
-- COLDLINE, STANDARD, and DURABLE_REDUCED_AVAILABILITY.
blricMatchesStorageClass :: Lens' BucketLifecycleRuleItemCondition [Text]
blricMatchesStorageClass
  = lens _blricMatchesStorageClass
      (\ s a -> s{_blricMatchesStorageClass = a})
      . _Default
      . _Coerce

-- | A regular expression that satisfies the RE2 syntax. This condition is
-- satisfied when the name of the object matches the RE2 pattern. Note:
-- This feature is currently in the \"Early Access\" launch stage and is
-- only available to a whitelisted set of users; that means that this
-- feature may be changed in backward-incompatible ways and that it is not
-- guaranteed to be released.
blricMatchesPattern :: Lens' BucketLifecycleRuleItemCondition (Maybe Text)
blricMatchesPattern
  = lens _blricMatchesPattern
      (\ s a -> s{_blricMatchesPattern = a})

-- | A date in RFC 3339 format with only the date part (for instance,
-- \"2013-01-15\"). This condition is satisfied when an object is created
-- before midnight of the specified date in UTC.
blricCreatedBefore :: Lens' BucketLifecycleRuleItemCondition (Maybe Day)
blricCreatedBefore
  = lens _blricCreatedBefore
      (\ s a -> s{_blricCreatedBefore = a})
      . mapping _Date

instance FromJSON BucketLifecycleRuleItemCondition
         where
        parseJSON
          = withObject "BucketLifecycleRuleItemCondition"
              (\ o ->
                 BucketLifecycleRuleItemCondition' <$>
                   (o .:? "age") <*> (o .:? "isLive") <*>
                     (o .:? "numNewerVersions")
                     <*> (o .:? "matchesStorageClass" .!= mempty)
                     <*> (o .:? "matchesPattern")
                     <*> (o .:? "createdBefore"))

instance ToJSON BucketLifecycleRuleItemCondition
         where
        toJSON BucketLifecycleRuleItemCondition'{..}
          = object
              (catMaybes
                 [("age" .=) <$> _blricAge,
                  ("isLive" .=) <$> _blricIsLive,
                  ("numNewerVersions" .=) <$> _blricNumNewerVersions,
                  ("matchesStorageClass" .=) <$>
                    _blricMatchesStorageClass,
                  ("matchesPattern" .=) <$> _blricMatchesPattern,
                  ("createdBefore" .=) <$> _blricCreatedBefore])

-- | The bucket\'s lifecycle configuration. See lifecycle management for more
-- information.
--
-- /See:/ 'bucketLifecycle' smart constructor.
newtype BucketLifecycle =
  BucketLifecycle'
    { _blRule :: Maybe [BucketLifecycleRuleItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketLifecycle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blRule'
bucketLifecycle
    :: BucketLifecycle
bucketLifecycle = BucketLifecycle' {_blRule = Nothing}

-- | A lifecycle management rule, which is made of an action to take and the
-- condition(s) under which the action will be taken.
blRule :: Lens' BucketLifecycle [BucketLifecycleRuleItem]
blRule
  = lens _blRule (\ s a -> s{_blRule = a}) . _Default .
      _Coerce

instance FromJSON BucketLifecycle where
        parseJSON
          = withObject "BucketLifecycle"
              (\ o ->
                 BucketLifecycle' <$> (o .:? "rule" .!= mempty))

instance ToJSON BucketLifecycle where
        toJSON BucketLifecycle'{..}
          = object (catMaybes [("rule" .=) <$> _blRule])

-- | User-provided labels, in key\/value pairs.
--
-- /See:/ 'bucketLabels' smart constructor.
newtype BucketLabels =
  BucketLabels'
    { _blAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blAddtional'
bucketLabels
    :: HashMap Text Text -- ^ 'blAddtional'
    -> BucketLabels
bucketLabels pBlAddtional_ =
  BucketLabels' {_blAddtional = _Coerce # pBlAddtional_}

-- | An individual label entry.
blAddtional :: Lens' BucketLabels (HashMap Text Text)
blAddtional
  = lens _blAddtional (\ s a -> s{_blAddtional = a}) .
      _Coerce

instance FromJSON BucketLabels where
        parseJSON
          = withObject "BucketLabels"
              (\ o -> BucketLabels' <$> (parseJSONObject o))

instance ToJSON BucketLabels where
        toJSON = toJSON . _blAddtional

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel =
  Channel'
    { _cResourceURI :: !(Maybe Text)
    , _cResourceId  :: !(Maybe Text)
    , _cKind        :: !Text
    , _cExpiration  :: !(Maybe (Textual Int64))
    , _cToken       :: !(Maybe Text)
    , _cAddress     :: !(Maybe Text)
    , _cPayload     :: !(Maybe Bool)
    , _cParams      :: !(Maybe ChannelParams)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceURI'
--
-- * 'cResourceId'
--
-- * 'cKind'
--
-- * 'cExpiration'
--
-- * 'cToken'
--
-- * 'cAddress'
--
-- * 'cPayload'
--
-- * 'cParams'
--
-- * 'cId'
--
-- * 'cType'
channel
    :: Channel
channel =
  Channel'
    { _cResourceURI = Nothing
    , _cResourceId = Nothing
    , _cKind = "api#channel"
    , _cExpiration = Nothing
    , _cToken = Nothing
    , _cAddress = Nothing
    , _cPayload = Nothing
    , _cParams = Nothing
    , _cId = Nothing
    , _cType = Nothing
    }

-- | A version-specific identifier for the watched resource.
cResourceURI :: Lens' Channel (Maybe Text)
cResourceURI
  = lens _cResourceURI (\ s a -> s{_cResourceURI = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
cResourceId :: Lens' Channel (Maybe Text)
cResourceId
  = lens _cResourceId (\ s a -> s{_cResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
cKind :: Lens' Channel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
cExpiration :: Lens' Channel (Maybe Int64)
cExpiration
  = lens _cExpiration (\ s a -> s{_cExpiration = a}) .
      mapping _Coerce

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
cToken :: Lens' Channel (Maybe Text)
cToken = lens _cToken (\ s a -> s{_cToken = a})

-- | The address where notifications are delivered for this channel.
cAddress :: Lens' Channel (Maybe Text)
cAddress = lens _cAddress (\ s a -> s{_cAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
cPayload :: Lens' Channel (Maybe Bool)
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
cParams :: Lens' Channel (Maybe ChannelParams)
cParams = lens _cParams (\ s a -> s{_cParams = a})

-- | A UUID or similar unique string that identifies this channel.
cId :: Lens' Channel (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The type of delivery mechanism used for this channel.
cType :: Lens' Channel (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o ->
                 Channel' <$>
                   (o .:? "resourceUri") <*> (o .:? "resourceId") <*>
                     (o .:? "kind" .!= "api#channel")
                     <*> (o .:? "expiration")
                     <*> (o .:? "token")
                     <*> (o .:? "address")
                     <*> (o .:? "payload")
                     <*> (o .:? "params")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Channel where
        toJSON Channel'{..}
          = object
              (catMaybes
                 [("resourceUri" .=) <$> _cResourceURI,
                  ("resourceId" .=) <$> _cResourceId,
                  Just ("kind" .= _cKind),
                  ("expiration" .=) <$> _cExpiration,
                  ("token" .=) <$> _cToken,
                  ("address" .=) <$> _cAddress,
                  ("payload" .=) <$> _cPayload,
                  ("params" .=) <$> _cParams, ("id" .=) <$> _cId,
                  ("type" .=) <$> _cType])

--
-- /See:/ 'bucketLifecycleRuleItem' smart constructor.
data BucketLifecycleRuleItem =
  BucketLifecycleRuleItem'
    { _blriAction    :: !(Maybe BucketLifecycleRuleItemAction)
    , _blriCondition :: !(Maybe BucketLifecycleRuleItemCondition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketLifecycleRuleItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blriAction'
--
-- * 'blriCondition'
bucketLifecycleRuleItem
    :: BucketLifecycleRuleItem
bucketLifecycleRuleItem =
  BucketLifecycleRuleItem' {_blriAction = Nothing, _blriCondition = Nothing}

-- | The action to take.
blriAction :: Lens' BucketLifecycleRuleItem (Maybe BucketLifecycleRuleItemAction)
blriAction
  = lens _blriAction (\ s a -> s{_blriAction = a})

-- | The condition(s) under which the action will be taken.
blriCondition :: Lens' BucketLifecycleRuleItem (Maybe BucketLifecycleRuleItemCondition)
blriCondition
  = lens _blriCondition
      (\ s a -> s{_blriCondition = a})

instance FromJSON BucketLifecycleRuleItem where
        parseJSON
          = withObject "BucketLifecycleRuleItem"
              (\ o ->
                 BucketLifecycleRuleItem' <$>
                   (o .:? "action") <*> (o .:? "condition"))

instance ToJSON BucketLifecycleRuleItem where
        toJSON BucketLifecycleRuleItem'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _blriAction,
                  ("condition" .=) <$> _blriCondition])

--
-- /See:/ 'bucketCORSItem' smart constructor.
data BucketCORSItem =
  BucketCORSItem'
    { _bciMaxAgeSeconds  :: !(Maybe (Textual Int32))
    , _bciOrigin         :: !(Maybe [Text])
    , _bciResponseHeader :: !(Maybe [Text])
    , _bciMethod         :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketCORSItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bciMaxAgeSeconds'
--
-- * 'bciOrigin'
--
-- * 'bciResponseHeader'
--
-- * 'bciMethod'
bucketCORSItem
    :: BucketCORSItem
bucketCORSItem =
  BucketCORSItem'
    { _bciMaxAgeSeconds = Nothing
    , _bciOrigin = Nothing
    , _bciResponseHeader = Nothing
    , _bciMethod = Nothing
    }

-- | The value, in seconds, to return in the Access-Control-Max-Age header
-- used in preflight responses.
bciMaxAgeSeconds :: Lens' BucketCORSItem (Maybe Int32)
bciMaxAgeSeconds
  = lens _bciMaxAgeSeconds
      (\ s a -> s{_bciMaxAgeSeconds = a})
      . mapping _Coerce

-- | The list of Origins eligible to receive CORS response headers. Note:
-- \"*\" is permitted in the list of origins, and means \"any Origin\".
bciOrigin :: Lens' BucketCORSItem [Text]
bciOrigin
  = lens _bciOrigin (\ s a -> s{_bciOrigin = a}) .
      _Default
      . _Coerce

-- | The list of HTTP headers other than the simple response headers to give
-- permission for the user-agent to share across domains.
bciResponseHeader :: Lens' BucketCORSItem [Text]
bciResponseHeader
  = lens _bciResponseHeader
      (\ s a -> s{_bciResponseHeader = a})
      . _Default
      . _Coerce

-- | The list of HTTP methods on which to include CORS response headers,
-- (GET, OPTIONS, POST, etc) Note: \"*\" is permitted in the list of
-- methods, and means \"any method\".
bciMethod :: Lens' BucketCORSItem [Text]
bciMethod
  = lens _bciMethod (\ s a -> s{_bciMethod = a}) .
      _Default
      . _Coerce

instance FromJSON BucketCORSItem where
        parseJSON
          = withObject "BucketCORSItem"
              (\ o ->
                 BucketCORSItem' <$>
                   (o .:? "maxAgeSeconds") <*>
                     (o .:? "origin" .!= mempty)
                     <*> (o .:? "responseHeader" .!= mempty)
                     <*> (o .:? "method" .!= mempty))

instance ToJSON BucketCORSItem where
        toJSON BucketCORSItem'{..}
          = object
              (catMaybes
                 [("maxAgeSeconds" .=) <$> _bciMaxAgeSeconds,
                  ("origin" .=) <$> _bciOrigin,
                  ("responseHeader" .=) <$> _bciResponseHeader,
                  ("method" .=) <$> _bciMethod])

-- | The project team associated with the entity, if any.
--
-- /See:/ 'objectAccessControlProjectTeam' smart constructor.
data ObjectAccessControlProjectTeam =
  ObjectAccessControlProjectTeam'
    { _oacptProjectNumber :: !(Maybe Text)
    , _oacptTeam          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectAccessControlProjectTeam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacptProjectNumber'
--
-- * 'oacptTeam'
objectAccessControlProjectTeam
    :: ObjectAccessControlProjectTeam
objectAccessControlProjectTeam =
  ObjectAccessControlProjectTeam'
    {_oacptProjectNumber = Nothing, _oacptTeam = Nothing}

-- | The project number.
oacptProjectNumber :: Lens' ObjectAccessControlProjectTeam (Maybe Text)
oacptProjectNumber
  = lens _oacptProjectNumber
      (\ s a -> s{_oacptProjectNumber = a})

-- | The team.
oacptTeam :: Lens' ObjectAccessControlProjectTeam (Maybe Text)
oacptTeam
  = lens _oacptTeam (\ s a -> s{_oacptTeam = a})

instance FromJSON ObjectAccessControlProjectTeam
         where
        parseJSON
          = withObject "ObjectAccessControlProjectTeam"
              (\ o ->
                 ObjectAccessControlProjectTeam' <$>
                   (o .:? "projectNumber") <*> (o .:? "team"))

instance ToJSON ObjectAccessControlProjectTeam where
        toJSON ObjectAccessControlProjectTeam'{..}
          = object
              (catMaybes
                 [("projectNumber" .=) <$> _oacptProjectNumber,
                  ("team" .=) <$> _oacptTeam])

-- | Metadata of customer-supplied encryption key, if the object is encrypted
-- by such a key.
--
-- /See:/ 'objectCustomerEncryption' smart constructor.
data ObjectCustomerEncryption =
  ObjectCustomerEncryption'
    { _oceKeySha256           :: !(Maybe Text)
    , _oceEncryptionAlgorithm :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectCustomerEncryption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oceKeySha256'
--
-- * 'oceEncryptionAlgorithm'
objectCustomerEncryption
    :: ObjectCustomerEncryption
objectCustomerEncryption =
  ObjectCustomerEncryption'
    {_oceKeySha256 = Nothing, _oceEncryptionAlgorithm = Nothing}

-- | SHA256 hash value of the encryption key.
oceKeySha256 :: Lens' ObjectCustomerEncryption (Maybe Text)
oceKeySha256
  = lens _oceKeySha256 (\ s a -> s{_oceKeySha256 = a})

-- | The encryption algorithm.
oceEncryptionAlgorithm :: Lens' ObjectCustomerEncryption (Maybe Text)
oceEncryptionAlgorithm
  = lens _oceEncryptionAlgorithm
      (\ s a -> s{_oceEncryptionAlgorithm = a})

instance FromJSON ObjectCustomerEncryption where
        parseJSON
          = withObject "ObjectCustomerEncryption"
              (\ o ->
                 ObjectCustomerEncryption' <$>
                   (o .:? "keySha256") <*>
                     (o .:? "encryptionAlgorithm"))

instance ToJSON ObjectCustomerEncryption where
        toJSON ObjectCustomerEncryption'{..}
          = object
              (catMaybes
                 [("keySha256" .=) <$> _oceKeySha256,
                  ("encryptionAlgorithm" .=) <$>
                    _oceEncryptionAlgorithm])

-- | A bucket.
--
-- /See:/ 'bucket' smart constructor.
data Bucket =
  Bucket'
    { _bucEtag                  :: !(Maybe Text)
    , _bucLocation              :: !(Maybe Text)
    , _bucIAMConfiguration      :: !(Maybe BucketIAMConfiguration)
    , _bucKind                  :: !Text
    , _bucWebsite               :: !(Maybe BucketWebsite)
    , _bucProjectNumber         :: !(Maybe (Textual Word64))
    , _bucLifecycle             :: !(Maybe BucketLifecycle)
    , _bucOwner                 :: !(Maybe BucketOwner)
    , _bucRetentionPolicy       :: !(Maybe BucketRetentionPolicy)
    , _bucSelfLink              :: !(Maybe Text)
    , _bucName                  :: !(Maybe Text)
    , _bucEncryption            :: !(Maybe BucketEncryption)
    , _bucStorageClass          :: !(Maybe Text)
    , _bucVersioning            :: !(Maybe BucketVersioning)
    , _bucCORS                  :: !(Maybe [BucketCORSItem])
    , _bucTimeCreated           :: !(Maybe DateTime')
    , _bucId                    :: !(Maybe Text)
    , _bucLabels                :: !(Maybe BucketLabels)
    , _bucUpdated               :: !(Maybe DateTime')
    , _bucDefaultObjectACL      :: !(Maybe [ObjectAccessControl])
    , _bucBilling               :: !(Maybe BucketBilling)
    , _bucMetageneration        :: !(Maybe (Textual Int64))
    , _bucLogging               :: !(Maybe BucketLogging)
    , _bucACL                   :: !(Maybe [BucketAccessControl])
    , _bucDefaultEventBasedHold :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Bucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bucEtag'
--
-- * 'bucLocation'
--
-- * 'bucIAMConfiguration'
--
-- * 'bucKind'
--
-- * 'bucWebsite'
--
-- * 'bucProjectNumber'
--
-- * 'bucLifecycle'
--
-- * 'bucOwner'
--
-- * 'bucRetentionPolicy'
--
-- * 'bucSelfLink'
--
-- * 'bucName'
--
-- * 'bucEncryption'
--
-- * 'bucStorageClass'
--
-- * 'bucVersioning'
--
-- * 'bucCORS'
--
-- * 'bucTimeCreated'
--
-- * 'bucId'
--
-- * 'bucLabels'
--
-- * 'bucUpdated'
--
-- * 'bucDefaultObjectACL'
--
-- * 'bucBilling'
--
-- * 'bucMetageneration'
--
-- * 'bucLogging'
--
-- * 'bucACL'
--
-- * 'bucDefaultEventBasedHold'
bucket
    :: Bucket
bucket =
  Bucket'
    { _bucEtag = Nothing
    , _bucLocation = Nothing
    , _bucIAMConfiguration = Nothing
    , _bucKind = "storage#bucket"
    , _bucWebsite = Nothing
    , _bucProjectNumber = Nothing
    , _bucLifecycle = Nothing
    , _bucOwner = Nothing
    , _bucRetentionPolicy = Nothing
    , _bucSelfLink = Nothing
    , _bucName = Nothing
    , _bucEncryption = Nothing
    , _bucStorageClass = Nothing
    , _bucVersioning = Nothing
    , _bucCORS = Nothing
    , _bucTimeCreated = Nothing
    , _bucId = Nothing
    , _bucLabels = Nothing
    , _bucUpdated = Nothing
    , _bucDefaultObjectACL = Nothing
    , _bucBilling = Nothing
    , _bucMetageneration = Nothing
    , _bucLogging = Nothing
    , _bucACL = Nothing
    , _bucDefaultEventBasedHold = Nothing
    }

-- | HTTP 1.1 Entity tag for the bucket.
bucEtag :: Lens' Bucket (Maybe Text)
bucEtag = lens _bucEtag (\ s a -> s{_bucEtag = a})

-- | The location of the bucket. Object data for objects in the bucket
-- resides in physical storage within this region. Defaults to US. See the
-- developer\'s guide for the authoritative list.
bucLocation :: Lens' Bucket (Maybe Text)
bucLocation
  = lens _bucLocation (\ s a -> s{_bucLocation = a})

-- | The bucket\'s IAM configuration.
bucIAMConfiguration :: Lens' Bucket (Maybe BucketIAMConfiguration)
bucIAMConfiguration
  = lens _bucIAMConfiguration
      (\ s a -> s{_bucIAMConfiguration = a})

-- | The kind of item this is. For buckets, this is always storage#bucket.
bucKind :: Lens' Bucket Text
bucKind = lens _bucKind (\ s a -> s{_bucKind = a})

-- | The bucket\'s website configuration, controlling how the service behaves
-- when accessing bucket contents as a web site. See the Static Website
-- Examples for more information.
bucWebsite :: Lens' Bucket (Maybe BucketWebsite)
bucWebsite
  = lens _bucWebsite (\ s a -> s{_bucWebsite = a})

-- | The project number of the project the bucket belongs to.
bucProjectNumber :: Lens' Bucket (Maybe Word64)
bucProjectNumber
  = lens _bucProjectNumber
      (\ s a -> s{_bucProjectNumber = a})
      . mapping _Coerce

-- | The bucket\'s lifecycle configuration. See lifecycle management for more
-- information.
bucLifecycle :: Lens' Bucket (Maybe BucketLifecycle)
bucLifecycle
  = lens _bucLifecycle (\ s a -> s{_bucLifecycle = a})

-- | The owner of the bucket. This is always the project team\'s owner group.
bucOwner :: Lens' Bucket (Maybe BucketOwner)
bucOwner = lens _bucOwner (\ s a -> s{_bucOwner = a})

-- | The bucket\'s retention policy. The retention policy enforces a minimum
-- retention time for all objects contained in the bucket, based on their
-- creation time. Any attempt to overwrite or delete objects younger than
-- the retention period will result in a PERMISSION_DENIED error. An
-- unlocked retention policy can be modified or removed from the bucket via
-- a storage.buckets.update operation. A locked retention policy cannot be
-- removed or shortened in duration for the lifetime of the bucket.
-- Attempting to remove or decrease period of a locked retention policy
-- will result in a PERMISSION_DENIED error.
bucRetentionPolicy :: Lens' Bucket (Maybe BucketRetentionPolicy)
bucRetentionPolicy
  = lens _bucRetentionPolicy
      (\ s a -> s{_bucRetentionPolicy = a})

-- | The URI of this bucket.
bucSelfLink :: Lens' Bucket (Maybe Text)
bucSelfLink
  = lens _bucSelfLink (\ s a -> s{_bucSelfLink = a})

-- | The name of the bucket.
bucName :: Lens' Bucket (Maybe Text)
bucName = lens _bucName (\ s a -> s{_bucName = a})

-- | Encryption configuration for a bucket.
bucEncryption :: Lens' Bucket (Maybe BucketEncryption)
bucEncryption
  = lens _bucEncryption
      (\ s a -> s{_bucEncryption = a})

-- | The bucket\'s default storage class, used whenever no storageClass is
-- specified for a newly-created object. This defines how objects in the
-- bucket are stored and determines the SLA and the cost of storage. Values
-- include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, and
-- DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the
-- bucket is created, it will default to STANDARD. For more information,
-- see storage classes.
bucStorageClass :: Lens' Bucket (Maybe Text)
bucStorageClass
  = lens _bucStorageClass
      (\ s a -> s{_bucStorageClass = a})

-- | The bucket\'s versioning configuration.
bucVersioning :: Lens' Bucket (Maybe BucketVersioning)
bucVersioning
  = lens _bucVersioning
      (\ s a -> s{_bucVersioning = a})

-- | The bucket\'s Cross-Origin Resource Sharing (CORS) configuration.
bucCORS :: Lens' Bucket [BucketCORSItem]
bucCORS
  = lens _bucCORS (\ s a -> s{_bucCORS = a}) . _Default
      . _Coerce

-- | The creation time of the bucket in RFC 3339 format.
bucTimeCreated :: Lens' Bucket (Maybe UTCTime)
bucTimeCreated
  = lens _bucTimeCreated
      (\ s a -> s{_bucTimeCreated = a})
      . mapping _DateTime

-- | The ID of the bucket. For buckets, the id and name properties are the
-- same.
bucId :: Lens' Bucket (Maybe Text)
bucId = lens _bucId (\ s a -> s{_bucId = a})

-- | User-provided labels, in key\/value pairs.
bucLabels :: Lens' Bucket (Maybe BucketLabels)
bucLabels
  = lens _bucLabels (\ s a -> s{_bucLabels = a})

-- | The modification time of the bucket in RFC 3339 format.
bucUpdated :: Lens' Bucket (Maybe UTCTime)
bucUpdated
  = lens _bucUpdated (\ s a -> s{_bucUpdated = a}) .
      mapping _DateTime

-- | Default access controls to apply to new objects when no ACL is provided.
bucDefaultObjectACL :: Lens' Bucket [ObjectAccessControl]
bucDefaultObjectACL
  = lens _bucDefaultObjectACL
      (\ s a -> s{_bucDefaultObjectACL = a})
      . _Default
      . _Coerce

-- | The bucket\'s billing configuration.
bucBilling :: Lens' Bucket (Maybe BucketBilling)
bucBilling
  = lens _bucBilling (\ s a -> s{_bucBilling = a})

-- | The metadata generation of this bucket.
bucMetageneration :: Lens' Bucket (Maybe Int64)
bucMetageneration
  = lens _bucMetageneration
      (\ s a -> s{_bucMetageneration = a})
      . mapping _Coerce

-- | The bucket\'s logging configuration, which defines the destination
-- bucket and optional name prefix for the current bucket\'s logs.
bucLogging :: Lens' Bucket (Maybe BucketLogging)
bucLogging
  = lens _bucLogging (\ s a -> s{_bucLogging = a})

-- | Access controls on the bucket.
bucACL :: Lens' Bucket [BucketAccessControl]
bucACL
  = lens _bucACL (\ s a -> s{_bucACL = a}) . _Default .
      _Coerce

-- | The default value for event-based hold on newly created objects in this
-- bucket. Event-based hold is a way to retain objects indefinitely until
-- an event occurs, signified by the hold\'s release. After being released,
-- such objects will be subject to bucket-level retention (if any). One
-- sample use case of this flag is for banks to hold loan documents for at
-- least 3 years after loan is paid in full. Here, bucket-level retention
-- is 3 years and the event is loan being paid in full. In this example,
-- these objects will be held intact for any number of years until the
-- event has occurred (event-based hold on the object is released) and then
-- 3 more years after that. That means retention duration of the objects
-- begins from the moment event-based hold transitioned from true to false.
-- Objects under event-based hold cannot be deleted, overwritten or
-- archived until the hold is removed.
bucDefaultEventBasedHold :: Lens' Bucket (Maybe Bool)
bucDefaultEventBasedHold
  = lens _bucDefaultEventBasedHold
      (\ s a -> s{_bucDefaultEventBasedHold = a})

instance FromJSON Bucket where
        parseJSON
          = withObject "Bucket"
              (\ o ->
                 Bucket' <$>
                   (o .:? "etag") <*> (o .:? "location") <*>
                     (o .:? "iamConfiguration")
                     <*> (o .:? "kind" .!= "storage#bucket")
                     <*> (o .:? "website")
                     <*> (o .:? "projectNumber")
                     <*> (o .:? "lifecycle")
                     <*> (o .:? "owner")
                     <*> (o .:? "retentionPolicy")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "encryption")
                     <*> (o .:? "storageClass")
                     <*> (o .:? "versioning")
                     <*> (o .:? "cors" .!= mempty)
                     <*> (o .:? "timeCreated")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "updated")
                     <*> (o .:? "defaultObjectAcl" .!= mempty)
                     <*> (o .:? "billing")
                     <*> (o .:? "metageneration")
                     <*> (o .:? "logging")
                     <*> (o .:? "acl" .!= mempty)
                     <*> (o .:? "defaultEventBasedHold"))

instance ToJSON Bucket where
        toJSON Bucket'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _bucEtag,
                  ("location" .=) <$> _bucLocation,
                  ("iamConfiguration" .=) <$> _bucIAMConfiguration,
                  Just ("kind" .= _bucKind),
                  ("website" .=) <$> _bucWebsite,
                  ("projectNumber" .=) <$> _bucProjectNumber,
                  ("lifecycle" .=) <$> _bucLifecycle,
                  ("owner" .=) <$> _bucOwner,
                  ("retentionPolicy" .=) <$> _bucRetentionPolicy,
                  ("selfLink" .=) <$> _bucSelfLink,
                  ("name" .=) <$> _bucName,
                  ("encryption" .=) <$> _bucEncryption,
                  ("storageClass" .=) <$> _bucStorageClass,
                  ("versioning" .=) <$> _bucVersioning,
                  ("cors" .=) <$> _bucCORS,
                  ("timeCreated" .=) <$> _bucTimeCreated,
                  ("id" .=) <$> _bucId, ("labels" .=) <$> _bucLabels,
                  ("updated" .=) <$> _bucUpdated,
                  ("defaultObjectAcl" .=) <$> _bucDefaultObjectACL,
                  ("billing" .=) <$> _bucBilling,
                  ("metageneration" .=) <$> _bucMetageneration,
                  ("logging" .=) <$> _bucLogging,
                  ("acl" .=) <$> _bucACL,
                  ("defaultEventBasedHold" .=) <$>
                    _bucDefaultEventBasedHold])

-- | A list of objects.
--
-- /See:/ 'objects' smart constructor.
data Objects =
  Objects'
    { _oNextPageToken :: !(Maybe Text)
    , _oKind          :: !Text
    , _oItems         :: !(Maybe [Object])
    , _oPrefixes      :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Objects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oNextPageToken'
--
-- * 'oKind'
--
-- * 'oItems'
--
-- * 'oPrefixes'
objects
    :: Objects
objects =
  Objects'
    { _oNextPageToken = Nothing
    , _oKind = "storage#objects"
    , _oItems = Nothing
    , _oPrefixes = Nothing
    }

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
oNextPageToken :: Lens' Objects (Maybe Text)
oNextPageToken
  = lens _oNextPageToken
      (\ s a -> s{_oNextPageToken = a})

-- | The kind of item this is. For lists of objects, this is always
-- storage#objects.
oKind :: Lens' Objects Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | The list of items.
oItems :: Lens' Objects [Object]
oItems
  = lens _oItems (\ s a -> s{_oItems = a}) . _Default .
      _Coerce

-- | The list of prefixes of objects matching-but-not-listed up to and
-- including the requested delimiter.
oPrefixes :: Lens' Objects [Text]
oPrefixes
  = lens _oPrefixes (\ s a -> s{_oPrefixes = a}) .
      _Default
      . _Coerce

instance FromJSON Objects where
        parseJSON
          = withObject "Objects"
              (\ o ->
                 Objects' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "storage#objects")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "prefixes" .!= mempty))

instance ToJSON Objects where
        toJSON Objects'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oNextPageToken,
                  Just ("kind" .= _oKind), ("items" .=) <$> _oItems,
                  ("prefixes" .=) <$> _oPrefixes])

-- | An access-control list.
--
-- /See:/ 'bucketAccessControls' smart constructor.
data BucketAccessControls =
  BucketAccessControls'
    { _bacKind  :: !Text
    , _bacItems :: !(Maybe [BucketAccessControl])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketAccessControls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacKind'
--
-- * 'bacItems'
bucketAccessControls
    :: BucketAccessControls
bucketAccessControls =
  BucketAccessControls'
    {_bacKind = "storage#bucketAccessControls", _bacItems = Nothing}

-- | The kind of item this is. For lists of bucket access control entries,
-- this is always storage#bucketAccessControls.
bacKind :: Lens' BucketAccessControls Text
bacKind = lens _bacKind (\ s a -> s{_bacKind = a})

-- | The list of items.
bacItems :: Lens' BucketAccessControls [BucketAccessControl]
bacItems
  = lens _bacItems (\ s a -> s{_bacItems = a}) .
      _Default
      . _Coerce

instance FromJSON BucketAccessControls where
        parseJSON
          = withObject "BucketAccessControls"
              (\ o ->
                 BucketAccessControls' <$>
                   (o .:? "kind" .!= "storage#bucketAccessControls") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON BucketAccessControls where
        toJSON BucketAccessControls'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _bacKind),
                  ("items" .=) <$> _bacItems])

-- | Encryption configuration for a bucket.
--
-- /See:/ 'bucketEncryption' smart constructor.
newtype BucketEncryption =
  BucketEncryption'
    { _beDefaultKmsKeyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketEncryption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'beDefaultKmsKeyName'
bucketEncryption
    :: BucketEncryption
bucketEncryption = BucketEncryption' {_beDefaultKmsKeyName = Nothing}

-- | A Cloud KMS key that will be used to encrypt objects inserted into this
-- bucket, if no encryption method is specified.
beDefaultKmsKeyName :: Lens' BucketEncryption (Maybe Text)
beDefaultKmsKeyName
  = lens _beDefaultKmsKeyName
      (\ s a -> s{_beDefaultKmsKeyName = a})

instance FromJSON BucketEncryption where
        parseJSON
          = withObject "BucketEncryption"
              (\ o ->
                 BucketEncryption' <$> (o .:? "defaultKmsKeyName"))

instance ToJSON BucketEncryption where
        toJSON BucketEncryption'{..}
          = object
              (catMaybes
                 [("defaultKmsKeyName" .=) <$> _beDefaultKmsKeyName])

-- | A Compose request.
--
-- /See:/ 'composeRequest' smart constructor.
data ComposeRequest =
  ComposeRequest'
    { _crDestination   :: !(Maybe Object)
    , _crKind          :: !Text
    , _crSourceObjects :: !(Maybe [ComposeRequestSourceObjectsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ComposeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crDestination'
--
-- * 'crKind'
--
-- * 'crSourceObjects'
composeRequest
    :: ComposeRequest
composeRequest =
  ComposeRequest'
    { _crDestination = Nothing
    , _crKind = "storage#composeRequest"
    , _crSourceObjects = Nothing
    }

-- | Properties of the resulting object.
crDestination :: Lens' ComposeRequest (Maybe Object)
crDestination
  = lens _crDestination
      (\ s a -> s{_crDestination = a})

-- | The kind of item this is.
crKind :: Lens' ComposeRequest Text
crKind = lens _crKind (\ s a -> s{_crKind = a})

-- | The list of source objects that will be concatenated into a single
-- object.
crSourceObjects :: Lens' ComposeRequest [ComposeRequestSourceObjectsItem]
crSourceObjects
  = lens _crSourceObjects
      (\ s a -> s{_crSourceObjects = a})
      . _Default
      . _Coerce

instance FromJSON ComposeRequest where
        parseJSON
          = withObject "ComposeRequest"
              (\ o ->
                 ComposeRequest' <$>
                   (o .:? "destination") <*>
                     (o .:? "kind" .!= "storage#composeRequest")
                     <*> (o .:? "sourceObjects" .!= mempty))

instance ToJSON ComposeRequest where
        toJSON ComposeRequest'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _crDestination,
                  Just ("kind" .= _crKind),
                  ("sourceObjects" .=) <$> _crSourceObjects])

-- | A subscription to receive Google PubSub notifications.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount =
  ServiceAccount'
    { _saKind         :: !Text
    , _saEmailAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saKind'
--
-- * 'saEmailAddress'
serviceAccount
    :: ServiceAccount
serviceAccount =
  ServiceAccount'
    {_saKind = "storage#serviceAccount", _saEmailAddress = Nothing}

-- | The kind of item this is. For notifications, this is always
-- storage#notification.
saKind :: Lens' ServiceAccount Text
saKind = lens _saKind (\ s a -> s{_saKind = a})

-- | The ID of the notification.
saEmailAddress :: Lens' ServiceAccount (Maybe Text)
saEmailAddress
  = lens _saEmailAddress
      (\ s a -> s{_saEmailAddress = a})

instance FromJSON ServiceAccount where
        parseJSON
          = withObject "ServiceAccount"
              (\ o ->
                 ServiceAccount' <$>
                   (o .:? "kind" .!= "storage#serviceAccount") <*>
                     (o .:? "email_address"))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _saKind),
                  ("email_address" .=) <$> _saEmailAddress])

-- | The owner of the bucket. This is always the project team\'s owner group.
--
-- /See:/ 'bucketOwner' smart constructor.
data BucketOwner =
  BucketOwner'
    { _boEntity   :: !(Maybe Text)
    , _boEntityId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketOwner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boEntity'
--
-- * 'boEntityId'
bucketOwner
    :: BucketOwner
bucketOwner = BucketOwner' {_boEntity = Nothing, _boEntityId = Nothing}

-- | The entity, in the form project-owner-projectId.
boEntity :: Lens' BucketOwner (Maybe Text)
boEntity = lens _boEntity (\ s a -> s{_boEntity = a})

-- | The ID for the entity.
boEntityId :: Lens' BucketOwner (Maybe Text)
boEntityId
  = lens _boEntityId (\ s a -> s{_boEntityId = a})

instance FromJSON BucketOwner where
        parseJSON
          = withObject "BucketOwner"
              (\ o ->
                 BucketOwner' <$>
                   (o .:? "entity") <*> (o .:? "entityId"))

instance ToJSON BucketOwner where
        toJSON BucketOwner'{..}
          = object
              (catMaybes
                 [("entity" .=) <$> _boEntity,
                  ("entityId" .=) <$> _boEntityId])

--
-- /See:/ 'composeRequestSourceObjectsItem' smart constructor.
data ComposeRequestSourceObjectsItem =
  ComposeRequestSourceObjectsItem'
    { _crsoiName                :: !(Maybe Text)
    , _crsoiObjectPreconditions :: !(Maybe ComposeRequestSourceObjectsItemObjectPreconditions)
    , _crsoiGeneration          :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ComposeRequestSourceObjectsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsoiName'
--
-- * 'crsoiObjectPreconditions'
--
-- * 'crsoiGeneration'
composeRequestSourceObjectsItem
    :: ComposeRequestSourceObjectsItem
composeRequestSourceObjectsItem =
  ComposeRequestSourceObjectsItem'
    { _crsoiName = Nothing
    , _crsoiObjectPreconditions = Nothing
    , _crsoiGeneration = Nothing
    }

-- | The source object\'s name. All source objects must reside in the same
-- bucket.
crsoiName :: Lens' ComposeRequestSourceObjectsItem (Maybe Text)
crsoiName
  = lens _crsoiName (\ s a -> s{_crsoiName = a})

-- | Conditions that must be met for this operation to execute.
crsoiObjectPreconditions :: Lens' ComposeRequestSourceObjectsItem (Maybe ComposeRequestSourceObjectsItemObjectPreconditions)
crsoiObjectPreconditions
  = lens _crsoiObjectPreconditions
      (\ s a -> s{_crsoiObjectPreconditions = a})

-- | The generation of this object to use as the source.
crsoiGeneration :: Lens' ComposeRequestSourceObjectsItem (Maybe Int64)
crsoiGeneration
  = lens _crsoiGeneration
      (\ s a -> s{_crsoiGeneration = a})
      . mapping _Coerce

instance FromJSON ComposeRequestSourceObjectsItem
         where
        parseJSON
          = withObject "ComposeRequestSourceObjectsItem"
              (\ o ->
                 ComposeRequestSourceObjectsItem' <$>
                   (o .:? "name") <*> (o .:? "objectPreconditions") <*>
                     (o .:? "generation"))

instance ToJSON ComposeRequestSourceObjectsItem where
        toJSON ComposeRequestSourceObjectsItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _crsoiName,
                  ("objectPreconditions" .=) <$>
                    _crsoiObjectPreconditions,
                  ("generation" .=) <$> _crsoiGeneration])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
newtype ChannelParams =
  ChannelParams'
    { _cpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpAddtional'
channelParams
    :: HashMap Text Text -- ^ 'cpAddtional'
    -> ChannelParams
channelParams pCpAddtional_ =
  ChannelParams' {_cpAddtional = _Coerce # pCpAddtional_}

-- | Declares a new parameter by name.
cpAddtional :: Lens' ChannelParams (HashMap Text Text)
cpAddtional
  = lens _cpAddtional (\ s a -> s{_cpAddtional = a}) .
      _Coerce

instance FromJSON ChannelParams where
        parseJSON
          = withObject "ChannelParams"
              (\ o -> ChannelParams' <$> (parseJSONObject o))

instance ToJSON ChannelParams where
        toJSON = toJSON . _cpAddtional

--
-- /See:/ 'policyBindingsItem' smart constructor.
data PolicyBindingsItem =
  PolicyBindingsItem'
    { _pbiMembers   :: !(Maybe [Text])
    , _pbiRole      :: !(Maybe Text)
    , _pbiCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyBindingsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiMembers'
--
-- * 'pbiRole'
--
-- * 'pbiCondition'
policyBindingsItem
    :: PolicyBindingsItem
policyBindingsItem =
  PolicyBindingsItem'
    {_pbiMembers = Nothing, _pbiRole = Nothing, _pbiCondition = Nothing}

-- | A collection of identifiers for members who may assume the provided
-- role. Recognized identifiers are as follows: - allUsers — A special
-- identifier that represents anyone on the internet; with or without a
-- Google account. - allAuthenticatedUsers — A special identifier that
-- represents anyone who is authenticated with a Google account or a
-- service account. - user:emailid — An email address that represents a
-- specific account. For example, user:alice\'gmail.com or
-- user:joe\'example.com. - serviceAccount:emailid — An email address that
-- represents a service account. For example,
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com . -
-- group:emailid — An email address that represents a Google group. For
-- example, group:admins\'example.com. - domain:domain — A Google Apps
-- domain name that represents all the users of that domain. For example,
-- domain:google.com or domain:example.com. - projectOwner:projectid —
-- Owners of the given project. For example,
-- projectOwner:my-example-project - projectEditor:projectid — Editors of
-- the given project. For example, projectEditor:my-example-project -
-- projectViewer:projectid — Viewers of the given project. For example,
-- projectViewer:my-example-project
pbiMembers :: Lens' PolicyBindingsItem [Text]
pbiMembers
  = lens _pbiMembers (\ s a -> s{_pbiMembers = a}) .
      _Default
      . _Coerce

-- | The role to which members belong. Two types of roles are supported: new
-- IAM roles, which grant permissions that do not map directly to those
-- provided by ACLs, and legacy IAM roles, which do map directly to ACL
-- permissions. All roles are of the format roles\/storage.specificRole.
-- The new IAM roles are: - roles\/storage.admin — Full control of Google
-- Cloud Storage resources. - roles\/storage.objectViewer — Read-Only
-- access to Google Cloud Storage objects. - roles\/storage.objectCreator —
-- Access to create objects in Google Cloud Storage. -
-- roles\/storage.objectAdmin — Full control of Google Cloud Storage
-- objects. The legacy IAM roles are: - roles\/storage.legacyObjectReader —
-- Read-only access to objects without listing. Equivalent to an ACL entry
-- on an object with the READER role. - roles\/storage.legacyObjectOwner —
-- Read\/write access to existing objects without listing. Equivalent to an
-- ACL entry on an object with the OWNER role. -
-- roles\/storage.legacyBucketReader — Read access to buckets with object
-- listing. Equivalent to an ACL entry on a bucket with the READER role. -
-- roles\/storage.legacyBucketWriter — Read access to buckets with object
-- listing\/creation\/deletion. Equivalent to an ACL entry on a bucket with
-- the WRITER role. - roles\/storage.legacyBucketOwner — Read and write
-- access to existing buckets with object listing\/creation\/deletion.
-- Equivalent to an ACL entry on a bucket with the OWNER role.
pbiRole :: Lens' PolicyBindingsItem (Maybe Text)
pbiRole = lens _pbiRole (\ s a -> s{_pbiRole = a})

-- | The condition that is associated with this binding. NOTE: an unsatisfied
-- condition will not allow user access via current binding. Different
-- bindings, including their conditions, are examined independently.
pbiCondition :: Lens' PolicyBindingsItem (Maybe Expr)
pbiCondition
  = lens _pbiCondition (\ s a -> s{_pbiCondition = a})

instance FromJSON PolicyBindingsItem where
        parseJSON
          = withObject "PolicyBindingsItem"
              (\ o ->
                 PolicyBindingsItem' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON PolicyBindingsItem where
        toJSON PolicyBindingsItem'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _pbiMembers,
                  ("role" .=) <$> _pbiRole,
                  ("condition" .=) <$> _pbiCondition])

-- | An object.
--
-- /See:/ 'object'' smart constructor.
data Object =
  Object'
    { _objTemporaryHold           :: !(Maybe Bool)
    , _objEtag                    :: !(Maybe Text)
    , _objTimeStorageClassUpdated :: !(Maybe DateTime')
    , _objRetentionExpirationTime :: !(Maybe DateTime')
    , _objSize                    :: !(Maybe (Textual Word64))
    , _objKind                    :: !Text
    , _objTimeDeleted             :: !(Maybe DateTime')
    , _objCrc32c                  :: !(Maybe Text)
    , _objCustomerEncryption      :: !(Maybe ObjectCustomerEncryption)
    , _objBucket                  :: !(Maybe Text)
    , _objOwner                   :: !(Maybe ObjectOwner)
    , _objSelfLink                :: !(Maybe Text)
    , _objMediaLink               :: !(Maybe Text)
    , _objComponentCount          :: !(Maybe (Textual Int32))
    , _objName                    :: !(Maybe Text)
    , _objStorageClass            :: !(Maybe Text)
    , _objContentEncoding         :: !(Maybe Text)
    , _objEventBasedHold          :: !(Maybe Bool)
    , _objMetadata                :: !(Maybe ObjectMetadata)
    , _objTimeCreated             :: !(Maybe DateTime')
    , _objId                      :: !(Maybe Text)
    , _objKmsKeyName              :: !(Maybe Text)
    , _objUpdated                 :: !(Maybe DateTime')
    , _objContentLanguage         :: !(Maybe Text)
    , _objCacheControl            :: !(Maybe Text)
    , _objMetageneration          :: !(Maybe (Textual Int64))
    , _objGeneration              :: !(Maybe (Textual Int64))
    , _objACL                     :: !(Maybe [ObjectAccessControl])
    , _objContentDisPosition      :: !(Maybe Text)
    , _objMD5Hash                 :: !(Maybe Text)
    , _objContentType             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Object' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'objTemporaryHold'
--
-- * 'objEtag'
--
-- * 'objTimeStorageClassUpdated'
--
-- * 'objRetentionExpirationTime'
--
-- * 'objSize'
--
-- * 'objKind'
--
-- * 'objTimeDeleted'
--
-- * 'objCrc32c'
--
-- * 'objCustomerEncryption'
--
-- * 'objBucket'
--
-- * 'objOwner'
--
-- * 'objSelfLink'
--
-- * 'objMediaLink'
--
-- * 'objComponentCount'
--
-- * 'objName'
--
-- * 'objStorageClass'
--
-- * 'objContentEncoding'
--
-- * 'objEventBasedHold'
--
-- * 'objMetadata'
--
-- * 'objTimeCreated'
--
-- * 'objId'
--
-- * 'objKmsKeyName'
--
-- * 'objUpdated'
--
-- * 'objContentLanguage'
--
-- * 'objCacheControl'
--
-- * 'objMetageneration'
--
-- * 'objGeneration'
--
-- * 'objACL'
--
-- * 'objContentDisPosition'
--
-- * 'objMD5Hash'
--
-- * 'objContentType'
object'
    :: Object
object' =
  Object'
    { _objTemporaryHold = Nothing
    , _objEtag = Nothing
    , _objTimeStorageClassUpdated = Nothing
    , _objRetentionExpirationTime = Nothing
    , _objSize = Nothing
    , _objKind = "storage#object"
    , _objTimeDeleted = Nothing
    , _objCrc32c = Nothing
    , _objCustomerEncryption = Nothing
    , _objBucket = Nothing
    , _objOwner = Nothing
    , _objSelfLink = Nothing
    , _objMediaLink = Nothing
    , _objComponentCount = Nothing
    , _objName = Nothing
    , _objStorageClass = Nothing
    , _objContentEncoding = Nothing
    , _objEventBasedHold = Nothing
    , _objMetadata = Nothing
    , _objTimeCreated = Nothing
    , _objId = Nothing
    , _objKmsKeyName = Nothing
    , _objUpdated = Nothing
    , _objContentLanguage = Nothing
    , _objCacheControl = Nothing
    , _objMetageneration = Nothing
    , _objGeneration = Nothing
    , _objACL = Nothing
    , _objContentDisPosition = Nothing
    , _objMD5Hash = Nothing
    , _objContentType = Nothing
    }

-- | Whether an object is under temporary hold. While this flag is set to
-- true, the object is protected against deletion and overwrites. A common
-- use case of this flag is regulatory investigations where objects need to
-- be retained while the investigation is ongoing. Note that unlike
-- event-based hold, temporary hold does not impact retention expiration
-- time of an object.
objTemporaryHold :: Lens' Object (Maybe Bool)
objTemporaryHold
  = lens _objTemporaryHold
      (\ s a -> s{_objTemporaryHold = a})

-- | HTTP 1.1 Entity tag for the object.
objEtag :: Lens' Object (Maybe Text)
objEtag = lens _objEtag (\ s a -> s{_objEtag = a})

-- | The time at which the object\'s storage class was last changed. When the
-- object is initially created, it will be set to timeCreated.
objTimeStorageClassUpdated :: Lens' Object (Maybe UTCTime)
objTimeStorageClassUpdated
  = lens _objTimeStorageClassUpdated
      (\ s a -> s{_objTimeStorageClassUpdated = a})
      . mapping _DateTime

-- | A server-determined value that specifies the earliest time that the
-- object\'s retention period expires. This value is in RFC 3339 format.
-- Note 1: This field is not provided for objects with an active
-- event-based hold, since retention expiration is unknown until the hold
-- is removed. Note 2: This value can be provided even when temporary hold
-- is set (so that the user can reason about policy without having to first
-- unset the temporary hold).
objRetentionExpirationTime :: Lens' Object (Maybe UTCTime)
objRetentionExpirationTime
  = lens _objRetentionExpirationTime
      (\ s a -> s{_objRetentionExpirationTime = a})
      . mapping _DateTime

-- | Content-Length of the data in bytes.
objSize :: Lens' Object (Maybe Word64)
objSize
  = lens _objSize (\ s a -> s{_objSize = a}) .
      mapping _Coerce

-- | The kind of item this is. For objects, this is always storage#object.
objKind :: Lens' Object Text
objKind = lens _objKind (\ s a -> s{_objKind = a})

-- | The deletion time of the object in RFC 3339 format. Will be returned if
-- and only if this version of the object has been deleted.
objTimeDeleted :: Lens' Object (Maybe UTCTime)
objTimeDeleted
  = lens _objTimeDeleted
      (\ s a -> s{_objTimeDeleted = a})
      . mapping _DateTime

-- | CRC32c checksum, as described in RFC 4960, Appendix B; encoded using
-- base64 in big-endian byte order. For more information about using the
-- CRC32c checksum, see Hashes and ETags: Best Practices.
objCrc32c :: Lens' Object (Maybe Text)
objCrc32c
  = lens _objCrc32c (\ s a -> s{_objCrc32c = a})

-- | Metadata of customer-supplied encryption key, if the object is encrypted
-- by such a key.
objCustomerEncryption :: Lens' Object (Maybe ObjectCustomerEncryption)
objCustomerEncryption
  = lens _objCustomerEncryption
      (\ s a -> s{_objCustomerEncryption = a})

-- | The name of the bucket containing this object.
objBucket :: Lens' Object (Maybe Text)
objBucket
  = lens _objBucket (\ s a -> s{_objBucket = a})

-- | The owner of the object. This will always be the uploader of the object.
objOwner :: Lens' Object (Maybe ObjectOwner)
objOwner = lens _objOwner (\ s a -> s{_objOwner = a})

-- | The link to this object.
objSelfLink :: Lens' Object (Maybe Text)
objSelfLink
  = lens _objSelfLink (\ s a -> s{_objSelfLink = a})

-- | Media download link.
objMediaLink :: Lens' Object (Maybe Text)
objMediaLink
  = lens _objMediaLink (\ s a -> s{_objMediaLink = a})

-- | Number of underlying components that make up this object. Components are
-- accumulated by compose operations.
objComponentCount :: Lens' Object (Maybe Int32)
objComponentCount
  = lens _objComponentCount
      (\ s a -> s{_objComponentCount = a})
      . mapping _Coerce

-- | The name of the object. Required if not specified by URL parameter.
objName :: Lens' Object (Maybe Text)
objName = lens _objName (\ s a -> s{_objName = a})

-- | Storage class of the object.
objStorageClass :: Lens' Object (Maybe Text)
objStorageClass
  = lens _objStorageClass
      (\ s a -> s{_objStorageClass = a})

-- | Content-Encoding of the object data.
objContentEncoding :: Lens' Object (Maybe Text)
objContentEncoding
  = lens _objContentEncoding
      (\ s a -> s{_objContentEncoding = a})

-- | Whether an object is under event-based hold. Event-based hold is a way
-- to retain objects until an event occurs, which is signified by the
-- hold\'s release (i.e. this value is set to false). After being released
-- (set to false), such objects will be subject to bucket-level retention
-- (if any). One sample use case of this flag is for banks to hold loan
-- documents for at least 3 years after loan is paid in full. Here,
-- bucket-level retention is 3 years and the event is the loan being paid
-- in full. In this example, these objects will be held intact for any
-- number of years until the event has occurred (event-based hold on the
-- object is released) and then 3 more years after that. That means
-- retention duration of the objects begins from the moment event-based
-- hold transitioned from true to false.
objEventBasedHold :: Lens' Object (Maybe Bool)
objEventBasedHold
  = lens _objEventBasedHold
      (\ s a -> s{_objEventBasedHold = a})

-- | User-provided metadata, in key\/value pairs.
objMetadata :: Lens' Object (Maybe ObjectMetadata)
objMetadata
  = lens _objMetadata (\ s a -> s{_objMetadata = a})

-- | The creation time of the object in RFC 3339 format.
objTimeCreated :: Lens' Object (Maybe UTCTime)
objTimeCreated
  = lens _objTimeCreated
      (\ s a -> s{_objTimeCreated = a})
      . mapping _DateTime

-- | The ID of the object, including the bucket name, object name, and
-- generation number.
objId :: Lens' Object (Maybe Text)
objId = lens _objId (\ s a -> s{_objId = a})

-- | Cloud KMS Key used to encrypt this object, if the object is encrypted by
-- such a key.
objKmsKeyName :: Lens' Object (Maybe Text)
objKmsKeyName
  = lens _objKmsKeyName
      (\ s a -> s{_objKmsKeyName = a})

-- | The modification time of the object metadata in RFC 3339 format.
objUpdated :: Lens' Object (Maybe UTCTime)
objUpdated
  = lens _objUpdated (\ s a -> s{_objUpdated = a}) .
      mapping _DateTime

-- | Content-Language of the object data.
objContentLanguage :: Lens' Object (Maybe Text)
objContentLanguage
  = lens _objContentLanguage
      (\ s a -> s{_objContentLanguage = a})

-- | Cache-Control directive for the object data. If omitted, and the object
-- is accessible to all anonymous users, the default will be public,
-- max-age=3600.
objCacheControl :: Lens' Object (Maybe Text)
objCacheControl
  = lens _objCacheControl
      (\ s a -> s{_objCacheControl = a})

-- | The version of the metadata for this object at this generation. Used for
-- preconditions and for detecting changes in metadata. A metageneration
-- number is only meaningful in the context of a particular generation of a
-- particular object.
objMetageneration :: Lens' Object (Maybe Int64)
objMetageneration
  = lens _objMetageneration
      (\ s a -> s{_objMetageneration = a})
      . mapping _Coerce

-- | The content generation of this object. Used for object versioning.
objGeneration :: Lens' Object (Maybe Int64)
objGeneration
  = lens _objGeneration
      (\ s a -> s{_objGeneration = a})
      . mapping _Coerce

-- | Access controls on the object.
objACL :: Lens' Object [ObjectAccessControl]
objACL
  = lens _objACL (\ s a -> s{_objACL = a}) . _Default .
      _Coerce

-- | Content-Disposition of the object data.
objContentDisPosition :: Lens' Object (Maybe Text)
objContentDisPosition
  = lens _objContentDisPosition
      (\ s a -> s{_objContentDisPosition = a})

-- | MD5 hash of the data; encoded using base64. For more information about
-- using the MD5 hash, see Hashes and ETags: Best Practices.
objMD5Hash :: Lens' Object (Maybe Text)
objMD5Hash
  = lens _objMD5Hash (\ s a -> s{_objMD5Hash = a})

-- | Content-Type of the object data. If an object is stored without a
-- Content-Type, it is served as application\/octet-stream.
objContentType :: Lens' Object (Maybe Text)
objContentType
  = lens _objContentType
      (\ s a -> s{_objContentType = a})

instance FromJSON Object where
        parseJSON
          = withObject "Object"
              (\ o ->
                 Object' <$>
                   (o .:? "temporaryHold") <*> (o .:? "etag") <*>
                     (o .:? "timeStorageClassUpdated")
                     <*> (o .:? "retentionExpirationTime")
                     <*> (o .:? "size")
                     <*> (o .:? "kind" .!= "storage#object")
                     <*> (o .:? "timeDeleted")
                     <*> (o .:? "crc32c")
                     <*> (o .:? "customerEncryption")
                     <*> (o .:? "bucket")
                     <*> (o .:? "owner")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "mediaLink")
                     <*> (o .:? "componentCount")
                     <*> (o .:? "name")
                     <*> (o .:? "storageClass")
                     <*> (o .:? "contentEncoding")
                     <*> (o .:? "eventBasedHold")
                     <*> (o .:? "metadata")
                     <*> (o .:? "timeCreated")
                     <*> (o .:? "id")
                     <*> (o .:? "kmsKeyName")
                     <*> (o .:? "updated")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "cacheControl")
                     <*> (o .:? "metageneration")
                     <*> (o .:? "generation")
                     <*> (o .:? "acl" .!= mempty)
                     <*> (o .:? "contentDisposition")
                     <*> (o .:? "md5Hash")
                     <*> (o .:? "contentType"))

instance ToJSON Object where
        toJSON Object'{..}
          = object
              (catMaybes
                 [("temporaryHold" .=) <$> _objTemporaryHold,
                  ("etag" .=) <$> _objEtag,
                  ("timeStorageClassUpdated" .=) <$>
                    _objTimeStorageClassUpdated,
                  ("retentionExpirationTime" .=) <$>
                    _objRetentionExpirationTime,
                  ("size" .=) <$> _objSize, Just ("kind" .= _objKind),
                  ("timeDeleted" .=) <$> _objTimeDeleted,
                  ("crc32c" .=) <$> _objCrc32c,
                  ("customerEncryption" .=) <$> _objCustomerEncryption,
                  ("bucket" .=) <$> _objBucket,
                  ("owner" .=) <$> _objOwner,
                  ("selfLink" .=) <$> _objSelfLink,
                  ("mediaLink" .=) <$> _objMediaLink,
                  ("componentCount" .=) <$> _objComponentCount,
                  ("name" .=) <$> _objName,
                  ("storageClass" .=) <$> _objStorageClass,
                  ("contentEncoding" .=) <$> _objContentEncoding,
                  ("eventBasedHold" .=) <$> _objEventBasedHold,
                  ("metadata" .=) <$> _objMetadata,
                  ("timeCreated" .=) <$> _objTimeCreated,
                  ("id" .=) <$> _objId,
                  ("kmsKeyName" .=) <$> _objKmsKeyName,
                  ("updated" .=) <$> _objUpdated,
                  ("contentLanguage" .=) <$> _objContentLanguage,
                  ("cacheControl" .=) <$> _objCacheControl,
                  ("metageneration" .=) <$> _objMetageneration,
                  ("generation" .=) <$> _objGeneration,
                  ("acl" .=) <$> _objACL,
                  ("contentDisposition" .=) <$> _objContentDisPosition,
                  ("md5Hash" .=) <$> _objMD5Hash,
                  ("contentType" .=) <$> _objContentType])

-- | Conditions that must be met for this operation to execute.
--
-- /See:/ 'composeRequestSourceObjectsItemObjectPreconditions' smart constructor.
newtype ComposeRequestSourceObjectsItemObjectPreconditions =
  ComposeRequestSourceObjectsItemObjectPreconditions'
    { _crsoiopIfGenerationMatch :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ComposeRequestSourceObjectsItemObjectPreconditions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsoiopIfGenerationMatch'
composeRequestSourceObjectsItemObjectPreconditions
    :: ComposeRequestSourceObjectsItemObjectPreconditions
composeRequestSourceObjectsItemObjectPreconditions =
  ComposeRequestSourceObjectsItemObjectPreconditions'
    {_crsoiopIfGenerationMatch = Nothing}

-- | Only perform the composition if the generation of the source object that
-- would be used matches this value. If this value and a generation are
-- both specified, they must be the same value or the call will fail.
crsoiopIfGenerationMatch :: Lens' ComposeRequestSourceObjectsItemObjectPreconditions (Maybe Int64)
crsoiopIfGenerationMatch
  = lens _crsoiopIfGenerationMatch
      (\ s a -> s{_crsoiopIfGenerationMatch = a})
      . mapping _Coerce

instance FromJSON
           ComposeRequestSourceObjectsItemObjectPreconditions
         where
        parseJSON
          = withObject
              "ComposeRequestSourceObjectsItemObjectPreconditions"
              (\ o ->
                 ComposeRequestSourceObjectsItemObjectPreconditions'
                   <$> (o .:? "ifGenerationMatch"))

instance ToJSON
           ComposeRequestSourceObjectsItemObjectPreconditions
         where
        toJSON
          ComposeRequestSourceObjectsItemObjectPreconditions'{..}
          = object
              (catMaybes
                 [("ifGenerationMatch" .=) <$>
                    _crsoiopIfGenerationMatch])

-- | The project team associated with the entity, if any.
--
-- /See:/ 'bucketAccessControlProjectTeam' smart constructor.
data BucketAccessControlProjectTeam =
  BucketAccessControlProjectTeam'
    { _bacptProjectNumber :: !(Maybe Text)
    , _bacptTeam          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketAccessControlProjectTeam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacptProjectNumber'
--
-- * 'bacptTeam'
bucketAccessControlProjectTeam
    :: BucketAccessControlProjectTeam
bucketAccessControlProjectTeam =
  BucketAccessControlProjectTeam'
    {_bacptProjectNumber = Nothing, _bacptTeam = Nothing}

-- | The project number.
bacptProjectNumber :: Lens' BucketAccessControlProjectTeam (Maybe Text)
bacptProjectNumber
  = lens _bacptProjectNumber
      (\ s a -> s{_bacptProjectNumber = a})

-- | The team.
bacptTeam :: Lens' BucketAccessControlProjectTeam (Maybe Text)
bacptTeam
  = lens _bacptTeam (\ s a -> s{_bacptTeam = a})

instance FromJSON BucketAccessControlProjectTeam
         where
        parseJSON
          = withObject "BucketAccessControlProjectTeam"
              (\ o ->
                 BucketAccessControlProjectTeam' <$>
                   (o .:? "projectNumber") <*> (o .:? "team"))

instance ToJSON BucketAccessControlProjectTeam where
        toJSON BucketAccessControlProjectTeam'{..}
          = object
              (catMaybes
                 [("projectNumber" .=) <$> _bacptProjectNumber,
                  ("team" .=) <$> _bacptTeam])

-- | An access-control list.
--
-- /See:/ 'objectAccessControls' smart constructor.
data ObjectAccessControls =
  ObjectAccessControls'
    { _oacKind  :: !Text
    , _oacItems :: !(Maybe [ObjectAccessControl])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectAccessControls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacKind'
--
-- * 'oacItems'
objectAccessControls
    :: ObjectAccessControls
objectAccessControls =
  ObjectAccessControls'
    {_oacKind = "storage#objectAccessControls", _oacItems = Nothing}

-- | The kind of item this is. For lists of object access control entries,
-- this is always storage#objectAccessControls.
oacKind :: Lens' ObjectAccessControls Text
oacKind = lens _oacKind (\ s a -> s{_oacKind = a})

-- | The list of items.
oacItems :: Lens' ObjectAccessControls [ObjectAccessControl]
oacItems
  = lens _oacItems (\ s a -> s{_oacItems = a}) .
      _Default
      . _Coerce

instance FromJSON ObjectAccessControls where
        parseJSON
          = withObject "ObjectAccessControls"
              (\ o ->
                 ObjectAccessControls' <$>
                   (o .:? "kind" .!= "storage#objectAccessControls") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON ObjectAccessControls where
        toJSON ObjectAccessControls'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oacKind),
                  ("items" .=) <$> _oacItems])

-- | The bucket\'s website configuration, controlling how the service behaves
-- when accessing bucket contents as a web site. See the Static Website
-- Examples for more information.
--
-- /See:/ 'bucketWebsite' smart constructor.
data BucketWebsite =
  BucketWebsite'
    { _bwMainPageSuffix :: !(Maybe Text)
    , _bwNotFoundPage   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketWebsite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bwMainPageSuffix'
--
-- * 'bwNotFoundPage'
bucketWebsite
    :: BucketWebsite
bucketWebsite =
  BucketWebsite' {_bwMainPageSuffix = Nothing, _bwNotFoundPage = Nothing}

-- | If the requested object path is missing, the service will ensure the
-- path has a trailing \'\/\', append this suffix, and attempt to retrieve
-- the resulting object. This allows the creation of index.html objects to
-- represent directory pages.
bwMainPageSuffix :: Lens' BucketWebsite (Maybe Text)
bwMainPageSuffix
  = lens _bwMainPageSuffix
      (\ s a -> s{_bwMainPageSuffix = a})

-- | If the requested object path is missing, and any mainPageSuffix object
-- is missing, if applicable, the service will return the named object from
-- this bucket as the content for a 404 Not Found result.
bwNotFoundPage :: Lens' BucketWebsite (Maybe Text)
bwNotFoundPage
  = lens _bwNotFoundPage
      (\ s a -> s{_bwNotFoundPage = a})

instance FromJSON BucketWebsite where
        parseJSON
          = withObject "BucketWebsite"
              (\ o ->
                 BucketWebsite' <$>
                   (o .:? "mainPageSuffix") <*> (o .:? "notFoundPage"))

instance ToJSON BucketWebsite where
        toJSON BucketWebsite'{..}
          = object
              (catMaybes
                 [("mainPageSuffix" .=) <$> _bwMainPageSuffix,
                  ("notFoundPage" .=) <$> _bwNotFoundPage])

-- | An access-control entry.
--
-- /See:/ 'bucketAccessControl' smart constructor.
data BucketAccessControl =
  BucketAccessControl'
    { _bacaEmail       :: !(Maybe Text)
    , _bacaEtag        :: !(Maybe Text)
    , _bacaKind        :: !Text
    , _bacaDomain      :: !(Maybe Text)
    , _bacaBucket      :: !(Maybe Text)
    , _bacaRole        :: !(Maybe Text)
    , _bacaSelfLink    :: !(Maybe Text)
    , _bacaId          :: !(Maybe Text)
    , _bacaProjectTeam :: !(Maybe BucketAccessControlProjectTeam)
    , _bacaEntity      :: !(Maybe Text)
    , _bacaEntityId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketAccessControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacaEmail'
--
-- * 'bacaEtag'
--
-- * 'bacaKind'
--
-- * 'bacaDomain'
--
-- * 'bacaBucket'
--
-- * 'bacaRole'
--
-- * 'bacaSelfLink'
--
-- * 'bacaId'
--
-- * 'bacaProjectTeam'
--
-- * 'bacaEntity'
--
-- * 'bacaEntityId'
bucketAccessControl
    :: BucketAccessControl
bucketAccessControl =
  BucketAccessControl'
    { _bacaEmail = Nothing
    , _bacaEtag = Nothing
    , _bacaKind = "storage#bucketAccessControl"
    , _bacaDomain = Nothing
    , _bacaBucket = Nothing
    , _bacaRole = Nothing
    , _bacaSelfLink = Nothing
    , _bacaId = Nothing
    , _bacaProjectTeam = Nothing
    , _bacaEntity = Nothing
    , _bacaEntityId = Nothing
    }

-- | The email address associated with the entity, if any.
bacaEmail :: Lens' BucketAccessControl (Maybe Text)
bacaEmail
  = lens _bacaEmail (\ s a -> s{_bacaEmail = a})

-- | HTTP 1.1 Entity tag for the access-control entry.
bacaEtag :: Lens' BucketAccessControl (Maybe Text)
bacaEtag = lens _bacaEtag (\ s a -> s{_bacaEtag = a})

-- | The kind of item this is. For bucket access control entries, this is
-- always storage#bucketAccessControl.
bacaKind :: Lens' BucketAccessControl Text
bacaKind = lens _bacaKind (\ s a -> s{_bacaKind = a})

-- | The domain associated with the entity, if any.
bacaDomain :: Lens' BucketAccessControl (Maybe Text)
bacaDomain
  = lens _bacaDomain (\ s a -> s{_bacaDomain = a})

-- | The name of the bucket.
bacaBucket :: Lens' BucketAccessControl (Maybe Text)
bacaBucket
  = lens _bacaBucket (\ s a -> s{_bacaBucket = a})

-- | The access permission for the entity.
bacaRole :: Lens' BucketAccessControl (Maybe Text)
bacaRole = lens _bacaRole (\ s a -> s{_bacaRole = a})

-- | The link to this access-control entry.
bacaSelfLink :: Lens' BucketAccessControl (Maybe Text)
bacaSelfLink
  = lens _bacaSelfLink (\ s a -> s{_bacaSelfLink = a})

-- | The ID of the access-control entry.
bacaId :: Lens' BucketAccessControl (Maybe Text)
bacaId = lens _bacaId (\ s a -> s{_bacaId = a})

-- | The project team associated with the entity, if any.
bacaProjectTeam :: Lens' BucketAccessControl (Maybe BucketAccessControlProjectTeam)
bacaProjectTeam
  = lens _bacaProjectTeam
      (\ s a -> s{_bacaProjectTeam = a})

-- | The entity holding the permission, in one of the following forms: -
-- user-userId - user-email - group-groupId - group-email - domain-domain -
-- project-team-projectId - allUsers - allAuthenticatedUsers Examples: -
-- The user liz\'example.com would be user-liz\'example.com. - The group
-- example\'googlegroups.com would be group-example\'googlegroups.com. - To
-- refer to all members of the Google Apps for Business domain example.com,
-- the entity would be domain-example.com.
bacaEntity :: Lens' BucketAccessControl (Maybe Text)
bacaEntity
  = lens _bacaEntity (\ s a -> s{_bacaEntity = a})

-- | The ID for the entity, if any.
bacaEntityId :: Lens' BucketAccessControl (Maybe Text)
bacaEntityId
  = lens _bacaEntityId (\ s a -> s{_bacaEntityId = a})

instance FromJSON BucketAccessControl where
        parseJSON
          = withObject "BucketAccessControl"
              (\ o ->
                 BucketAccessControl' <$>
                   (o .:? "email") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "storage#bucketAccessControl")
                     <*> (o .:? "domain")
                     <*> (o .:? "bucket")
                     <*> (o .:? "role")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "projectTeam")
                     <*> (o .:? "entity")
                     <*> (o .:? "entityId"))

instance ToJSON BucketAccessControl where
        toJSON BucketAccessControl'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _bacaEmail,
                  ("etag" .=) <$> _bacaEtag,
                  Just ("kind" .= _bacaKind),
                  ("domain" .=) <$> _bacaDomain,
                  ("bucket" .=) <$> _bacaBucket,
                  ("role" .=) <$> _bacaRole,
                  ("selfLink" .=) <$> _bacaSelfLink,
                  ("id" .=) <$> _bacaId,
                  ("projectTeam" .=) <$> _bacaProjectTeam,
                  ("entity" .=) <$> _bacaEntity,
                  ("entityId" .=) <$> _bacaEntityId])

-- | The action to take.
--
-- /See:/ 'bucketLifecycleRuleItemAction' smart constructor.
data BucketLifecycleRuleItemAction =
  BucketLifecycleRuleItemAction'
    { _blriaStorageClass :: !(Maybe Text)
    , _blriaType         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketLifecycleRuleItemAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blriaStorageClass'
--
-- * 'blriaType'
bucketLifecycleRuleItemAction
    :: BucketLifecycleRuleItemAction
bucketLifecycleRuleItemAction =
  BucketLifecycleRuleItemAction'
    {_blriaStorageClass = Nothing, _blriaType = Nothing}

-- | Target storage class. Required iff the type of the action is
-- SetStorageClass.
blriaStorageClass :: Lens' BucketLifecycleRuleItemAction (Maybe Text)
blriaStorageClass
  = lens _blriaStorageClass
      (\ s a -> s{_blriaStorageClass = a})

-- | Type of the action. Currently, only Delete and SetStorageClass are
-- supported.
blriaType :: Lens' BucketLifecycleRuleItemAction (Maybe Text)
blriaType
  = lens _blriaType (\ s a -> s{_blriaType = a})

instance FromJSON BucketLifecycleRuleItemAction where
        parseJSON
          = withObject "BucketLifecycleRuleItemAction"
              (\ o ->
                 BucketLifecycleRuleItemAction' <$>
                   (o .:? "storageClass") <*> (o .:? "type"))

instance ToJSON BucketLifecycleRuleItemAction where
        toJSON BucketLifecycleRuleItemAction'{..}
          = object
              (catMaybes
                 [("storageClass" .=) <$> _blriaStorageClass,
                  ("type" .=) <$> _blriaType])

-- | A storage.(buckets|objects).testIamPermissions response.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
data TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiprKind        :: !Text
    , _tiprPermissions :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprKind'
--
-- * 'tiprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiprKind = "storage#testIamPermissionsResponse"
    , _tiprPermissions = Nothing
    }

-- | The kind of item this is.
tiprKind :: Lens' TestIAMPermissionsResponse Text
tiprKind = lens _tiprKind (\ s a -> s{_tiprKind = a})

-- | The permissions held by the caller. Permissions are always of the format
-- storage.resource.capability, where resource is one of buckets or
-- objects. The supported permissions are as follows: -
-- storage.buckets.delete — Delete bucket. - storage.buckets.get — Read
-- bucket metadata. - storage.buckets.getIamPolicy — Read bucket IAM
-- policy. - storage.buckets.create — Create bucket. - storage.buckets.list
-- — List buckets. - storage.buckets.setIamPolicy — Update bucket IAM
-- policy. - storage.buckets.update — Update bucket metadata. -
-- storage.objects.delete — Delete object. - storage.objects.get — Read
-- object data and metadata. - storage.objects.getIamPolicy — Read object
-- IAM policy. - storage.objects.create — Create object. -
-- storage.objects.list — List objects. - storage.objects.setIamPolicy —
-- Update object IAM policy. - storage.objects.update — Update object
-- metadata.
tiprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "kind" .!=
                      "storage#testIamPermissionsResponse")
                     <*> (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tiprKind),
                  ("permissions" .=) <$> _tiprPermissions])

-- | A bucket\/object IAM policy.
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pEtag       :: !(Maybe Bytes)
    , _pResourceId :: !(Maybe Text)
    , _pKind       :: !Text
    , _pBindings   :: !(Maybe [PolicyBindingsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pResourceId'
--
-- * 'pKind'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pEtag = Nothing
    , _pResourceId = Nothing
    , _pKind = "storage#policy"
    , _pBindings = Nothing
    }

-- | HTTP 1.1 Entity tag for the policy.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | The ID of the resource to which this policy belongs. Will be of the form
-- projects\/_\/buckets\/bucket for buckets, and
-- projects\/_\/buckets\/bucket\/objects\/object for objects. A specific
-- generation may be specified by appending #generationNumber to the end of
-- the object name, e.g.
-- projects\/_\/buckets\/my-bucket\/objects\/data.txt#17. The current
-- generation can be denoted with #0. This field is ignored on input.
pResourceId :: Lens' Policy (Maybe Text)
pResourceId
  = lens _pResourceId (\ s a -> s{_pResourceId = a})

-- | The kind of item this is. For policies, this is always storage#policy.
-- This field is ignored on input.
pKind :: Lens' Policy Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | An association between a role, which comes with a set of permissions,
-- and members who may assume that role.
pBindings :: Lens' Policy [PolicyBindingsItem]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "etag") <*> (o .:? "resourceId") <*>
                     (o .:? "kind" .!= "storage#policy")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag,
                  ("resourceId" .=) <$> _pResourceId,
                  Just ("kind" .= _pKind),
                  ("bindings" .=) <$> _pBindings])

-- | The bucket\'s IAM configuration.
--
-- /See:/ 'bucketIAMConfiguration' smart constructor.
newtype BucketIAMConfiguration =
  BucketIAMConfiguration'
    { _bicBucketPolicyOnly :: Maybe BucketIAMConfigurationBucketPolicyOnly
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketIAMConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bicBucketPolicyOnly'
bucketIAMConfiguration
    :: BucketIAMConfiguration
bucketIAMConfiguration =
  BucketIAMConfiguration' {_bicBucketPolicyOnly = Nothing}

-- | The bucket\'s Bucket Policy Only configuration.
bicBucketPolicyOnly :: Lens' BucketIAMConfiguration (Maybe BucketIAMConfigurationBucketPolicyOnly)
bicBucketPolicyOnly
  = lens _bicBucketPolicyOnly
      (\ s a -> s{_bicBucketPolicyOnly = a})

instance FromJSON BucketIAMConfiguration where
        parseJSON
          = withObject "BucketIAMConfiguration"
              (\ o ->
                 BucketIAMConfiguration' <$>
                   (o .:? "bucketPolicyOnly"))

instance ToJSON BucketIAMConfiguration where
        toJSON BucketIAMConfiguration'{..}
          = object
              (catMaybes
                 [("bucketPolicyOnly" .=) <$> _bicBucketPolicyOnly])

-- | An access-control entry.
--
-- /See:/ 'objectAccessControl' smart constructor.
data ObjectAccessControl =
  ObjectAccessControl'
    { _oacaEmail       :: !(Maybe Text)
    , _oacaEtag        :: !(Maybe Text)
    , _oacaKind        :: !Text
    , _oacaDomain      :: !(Maybe Text)
    , _oacaBucket      :: !(Maybe Text)
    , _oacaRole        :: !(Maybe Text)
    , _oacaSelfLink    :: !(Maybe Text)
    , _oacaObject      :: !(Maybe Text)
    , _oacaId          :: !(Maybe Text)
    , _oacaProjectTeam :: !(Maybe ObjectAccessControlProjectTeam)
    , _oacaEntity      :: !(Maybe Text)
    , _oacaGeneration  :: !(Maybe (Textual Int64))
    , _oacaEntityId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ObjectAccessControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oacaEmail'
--
-- * 'oacaEtag'
--
-- * 'oacaKind'
--
-- * 'oacaDomain'
--
-- * 'oacaBucket'
--
-- * 'oacaRole'
--
-- * 'oacaSelfLink'
--
-- * 'oacaObject'
--
-- * 'oacaId'
--
-- * 'oacaProjectTeam'
--
-- * 'oacaEntity'
--
-- * 'oacaGeneration'
--
-- * 'oacaEntityId'
objectAccessControl
    :: ObjectAccessControl
objectAccessControl =
  ObjectAccessControl'
    { _oacaEmail = Nothing
    , _oacaEtag = Nothing
    , _oacaKind = "storage#objectAccessControl"
    , _oacaDomain = Nothing
    , _oacaBucket = Nothing
    , _oacaRole = Nothing
    , _oacaSelfLink = Nothing
    , _oacaObject = Nothing
    , _oacaId = Nothing
    , _oacaProjectTeam = Nothing
    , _oacaEntity = Nothing
    , _oacaGeneration = Nothing
    , _oacaEntityId = Nothing
    }

-- | The email address associated with the entity, if any.
oacaEmail :: Lens' ObjectAccessControl (Maybe Text)
oacaEmail
  = lens _oacaEmail (\ s a -> s{_oacaEmail = a})

-- | HTTP 1.1 Entity tag for the access-control entry.
oacaEtag :: Lens' ObjectAccessControl (Maybe Text)
oacaEtag = lens _oacaEtag (\ s a -> s{_oacaEtag = a})

-- | The kind of item this is. For object access control entries, this is
-- always storage#objectAccessControl.
oacaKind :: Lens' ObjectAccessControl Text
oacaKind = lens _oacaKind (\ s a -> s{_oacaKind = a})

-- | The domain associated with the entity, if any.
oacaDomain :: Lens' ObjectAccessControl (Maybe Text)
oacaDomain
  = lens _oacaDomain (\ s a -> s{_oacaDomain = a})

-- | The name of the bucket.
oacaBucket :: Lens' ObjectAccessControl (Maybe Text)
oacaBucket
  = lens _oacaBucket (\ s a -> s{_oacaBucket = a})

-- | The access permission for the entity.
oacaRole :: Lens' ObjectAccessControl (Maybe Text)
oacaRole = lens _oacaRole (\ s a -> s{_oacaRole = a})

-- | The link to this access-control entry.
oacaSelfLink :: Lens' ObjectAccessControl (Maybe Text)
oacaSelfLink
  = lens _oacaSelfLink (\ s a -> s{_oacaSelfLink = a})

-- | The name of the object, if applied to an object.
oacaObject :: Lens' ObjectAccessControl (Maybe Text)
oacaObject
  = lens _oacaObject (\ s a -> s{_oacaObject = a})

-- | The ID of the access-control entry.
oacaId :: Lens' ObjectAccessControl (Maybe Text)
oacaId = lens _oacaId (\ s a -> s{_oacaId = a})

-- | The project team associated with the entity, if any.
oacaProjectTeam :: Lens' ObjectAccessControl (Maybe ObjectAccessControlProjectTeam)
oacaProjectTeam
  = lens _oacaProjectTeam
      (\ s a -> s{_oacaProjectTeam = a})

-- | The entity holding the permission, in one of the following forms: -
-- user-userId - user-email - group-groupId - group-email - domain-domain -
-- project-team-projectId - allUsers - allAuthenticatedUsers Examples: -
-- The user liz\'example.com would be user-liz\'example.com. - The group
-- example\'googlegroups.com would be group-example\'googlegroups.com. - To
-- refer to all members of the Google Apps for Business domain example.com,
-- the entity would be domain-example.com.
oacaEntity :: Lens' ObjectAccessControl (Maybe Text)
oacaEntity
  = lens _oacaEntity (\ s a -> s{_oacaEntity = a})

-- | The content generation of the object, if applied to an object.
oacaGeneration :: Lens' ObjectAccessControl (Maybe Int64)
oacaGeneration
  = lens _oacaGeneration
      (\ s a -> s{_oacaGeneration = a})
      . mapping _Coerce

-- | The ID for the entity, if any.
oacaEntityId :: Lens' ObjectAccessControl (Maybe Text)
oacaEntityId
  = lens _oacaEntityId (\ s a -> s{_oacaEntityId = a})

instance FromJSON ObjectAccessControl where
        parseJSON
          = withObject "ObjectAccessControl"
              (\ o ->
                 ObjectAccessControl' <$>
                   (o .:? "email") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "storage#objectAccessControl")
                     <*> (o .:? "domain")
                     <*> (o .:? "bucket")
                     <*> (o .:? "role")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "object")
                     <*> (o .:? "id")
                     <*> (o .:? "projectTeam")
                     <*> (o .:? "entity")
                     <*> (o .:? "generation")
                     <*> (o .:? "entityId"))

instance ToJSON ObjectAccessControl where
        toJSON ObjectAccessControl'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _oacaEmail,
                  ("etag" .=) <$> _oacaEtag,
                  Just ("kind" .= _oacaKind),
                  ("domain" .=) <$> _oacaDomain,
                  ("bucket" .=) <$> _oacaBucket,
                  ("role" .=) <$> _oacaRole,
                  ("selfLink" .=) <$> _oacaSelfLink,
                  ("object" .=) <$> _oacaObject, ("id" .=) <$> _oacaId,
                  ("projectTeam" .=) <$> _oacaProjectTeam,
                  ("entity" .=) <$> _oacaEntity,
                  ("generation" .=) <$> _oacaGeneration,
                  ("entityId" .=) <$> _oacaEntityId])

-- | A list of notification subscriptions.
--
-- /See:/ 'notifications' smart constructor.
data Notifications =
  Notifications'
    { _notKind  :: !Text
    , _notItems :: !(Maybe [Notification])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Notifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'notKind'
--
-- * 'notItems'
notifications
    :: Notifications
notifications =
  Notifications' {_notKind = "storage#notifications", _notItems = Nothing}

-- | The kind of item this is. For lists of notifications, this is always
-- storage#notifications.
notKind :: Lens' Notifications Text
notKind = lens _notKind (\ s a -> s{_notKind = a})

-- | The list of items.
notItems :: Lens' Notifications [Notification]
notItems
  = lens _notItems (\ s a -> s{_notItems = a}) .
      _Default
      . _Coerce

instance FromJSON Notifications where
        parseJSON
          = withObject "Notifications"
              (\ o ->
                 Notifications' <$>
                   (o .:? "kind" .!= "storage#notifications") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Notifications where
        toJSON Notifications'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _notKind),
                  ("items" .=) <$> _notItems])

-- | An optional list of additional attributes to attach to each Cloud PubSub
-- message published for this notification subscription.
--
-- /See:/ 'notificationCustom_attributes' smart constructor.
newtype NotificationCustom_attributes =
  NotificationCustom_attributes'
    { _ncAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NotificationCustom_attributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncAddtional'
notificationCustom_attributes
    :: HashMap Text Text -- ^ 'ncAddtional'
    -> NotificationCustom_attributes
notificationCustom_attributes pNcAddtional_ =
  NotificationCustom_attributes' {_ncAddtional = _Coerce # pNcAddtional_}

ncAddtional :: Lens' NotificationCustom_attributes (HashMap Text Text)
ncAddtional
  = lens _ncAddtional (\ s a -> s{_ncAddtional = a}) .
      _Coerce

instance FromJSON NotificationCustom_attributes where
        parseJSON
          = withObject "NotificationCustomAttributes"
              (\ o ->
                 NotificationCustom_attributes' <$>
                   (parseJSONObject o))

instance ToJSON NotificationCustom_attributes where
        toJSON = toJSON . _ncAddtional

-- | The bucket\'s Bucket Policy Only configuration.
--
-- /See:/ 'bucketIAMConfigurationBucketPolicyOnly' smart constructor.
data BucketIAMConfigurationBucketPolicyOnly =
  BucketIAMConfigurationBucketPolicyOnly'
    { _bicbpoLockedTime :: !(Maybe DateTime')
    , _bicbpoEnabled    :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketIAMConfigurationBucketPolicyOnly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bicbpoLockedTime'
--
-- * 'bicbpoEnabled'
bucketIAMConfigurationBucketPolicyOnly
    :: BucketIAMConfigurationBucketPolicyOnly
bucketIAMConfigurationBucketPolicyOnly =
  BucketIAMConfigurationBucketPolicyOnly'
    {_bicbpoLockedTime = Nothing, _bicbpoEnabled = Nothing}

-- | The deadline time for changing iamConfiguration.bucketPolicyOnly.enabled
-- from true to false in RFC 3339 format.
-- iamConfiguration.bucketPolicyOnly.enabled may be changed from true to
-- false until the locked time, after which the field is immutable.
bicbpoLockedTime :: Lens' BucketIAMConfigurationBucketPolicyOnly (Maybe UTCTime)
bicbpoLockedTime
  = lens _bicbpoLockedTime
      (\ s a -> s{_bicbpoLockedTime = a})
      . mapping _DateTime

-- | If set, access checks only use bucket-level IAM policies or above.
bicbpoEnabled :: Lens' BucketIAMConfigurationBucketPolicyOnly (Maybe Bool)
bicbpoEnabled
  = lens _bicbpoEnabled
      (\ s a -> s{_bicbpoEnabled = a})

instance FromJSON
           BucketIAMConfigurationBucketPolicyOnly
         where
        parseJSON
          = withObject "BucketIAMConfigurationBucketPolicyOnly"
              (\ o ->
                 BucketIAMConfigurationBucketPolicyOnly' <$>
                   (o .:? "lockedTime") <*> (o .:? "enabled"))

instance ToJSON
           BucketIAMConfigurationBucketPolicyOnly
         where
        toJSON BucketIAMConfigurationBucketPolicyOnly'{..}
          = object
              (catMaybes
                 [("lockedTime" .=) <$> _bicbpoLockedTime,
                  ("enabled" .=) <$> _bicbpoEnabled])

-- | A rewrite response.
--
-- /See:/ 'rewriteResponse' smart constructor.
data RewriteResponse =
  RewriteResponse'
    { _rrKind                :: !Text
    , _rrDone                :: !(Maybe Bool)
    , _rrResource            :: !(Maybe Object)
    , _rrObjectSize          :: !(Maybe (Textual Int64))
    , _rrTotalBytesRewritten :: !(Maybe (Textual Int64))
    , _rrRewriteToken        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RewriteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrKind'
--
-- * 'rrDone'
--
-- * 'rrResource'
--
-- * 'rrObjectSize'
--
-- * 'rrTotalBytesRewritten'
--
-- * 'rrRewriteToken'
rewriteResponse
    :: RewriteResponse
rewriteResponse =
  RewriteResponse'
    { _rrKind = "storage#rewriteResponse"
    , _rrDone = Nothing
    , _rrResource = Nothing
    , _rrObjectSize = Nothing
    , _rrTotalBytesRewritten = Nothing
    , _rrRewriteToken = Nothing
    }

-- | The kind of item this is.
rrKind :: Lens' RewriteResponse Text
rrKind = lens _rrKind (\ s a -> s{_rrKind = a})

-- | true if the copy is finished; otherwise, false if the copy is in
-- progress. This property is always present in the response.
rrDone :: Lens' RewriteResponse (Maybe Bool)
rrDone = lens _rrDone (\ s a -> s{_rrDone = a})

-- | A resource containing the metadata for the copied-to object. This
-- property is present in the response only when copying completes.
rrResource :: Lens' RewriteResponse (Maybe Object)
rrResource
  = lens _rrResource (\ s a -> s{_rrResource = a})

-- | The total size of the object being copied in bytes. This property is
-- always present in the response.
rrObjectSize :: Lens' RewriteResponse (Maybe Int64)
rrObjectSize
  = lens _rrObjectSize (\ s a -> s{_rrObjectSize = a})
      . mapping _Coerce

-- | The total bytes written so far, which can be used to provide a waiting
-- user with a progress indicator. This property is always present in the
-- response.
rrTotalBytesRewritten :: Lens' RewriteResponse (Maybe Int64)
rrTotalBytesRewritten
  = lens _rrTotalBytesRewritten
      (\ s a -> s{_rrTotalBytesRewritten = a})
      . mapping _Coerce

-- | A token to use in subsequent requests to continue copying data. This
-- token is present in the response only when there is more data to copy.
rrRewriteToken :: Lens' RewriteResponse (Maybe Text)
rrRewriteToken
  = lens _rrRewriteToken
      (\ s a -> s{_rrRewriteToken = a})

instance FromJSON RewriteResponse where
        parseJSON
          = withObject "RewriteResponse"
              (\ o ->
                 RewriteResponse' <$>
                   (o .:? "kind" .!= "storage#rewriteResponse") <*>
                     (o .:? "done")
                     <*> (o .:? "resource")
                     <*> (o .:? "objectSize")
                     <*> (o .:? "totalBytesRewritten")
                     <*> (o .:? "rewriteToken"))

instance ToJSON RewriteResponse where
        toJSON RewriteResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rrKind), ("done" .=) <$> _rrDone,
                  ("resource" .=) <$> _rrResource,
                  ("objectSize" .=) <$> _rrObjectSize,
                  ("totalBytesRewritten" .=) <$>
                    _rrTotalBytesRewritten,
                  ("rewriteToken" .=) <$> _rrRewriteToken])
