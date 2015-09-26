{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Cloud.Storage.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Cloud.Storage.Types.Product where

import           Network.Google.Cloud.Storage.Types.Sum
import           Network.Google.Prelude

-- | A bucket.
--
-- /See:/ 'bucket' smart constructor.
data Bucket = Bucket
    { _bucEtag             :: !(Maybe Text)
    , _bucLocation         :: !(Maybe Text)
    , _bucKind             :: !Text
    , _bucWebsite          :: !(Maybe BucketWebsite)
    , _bucLifecycle        :: !(Maybe BucketLifecycle)
    , _bucOwner            :: !(Maybe BucketOwner)
    , _bucSelfLink         :: !(Maybe Text)
    , _bucName             :: !(Maybe Text)
    , _bucStorageClass     :: !(Maybe Text)
    , _bucVersioning       :: !(Maybe BucketVersioning)
    , _bucCors             :: !(Maybe [BucketItemCors])
    , _bucTimeCreated      :: !(Maybe UTCTime)
    , _bucId               :: !(Maybe Text)
    , _bucDefaultObjectAcl :: !(Maybe [Maybe ObjectAccessControl])
    , _bucMetageneration   :: !(Maybe Int64)
    , _bucLogging          :: !(Maybe BucketLogging)
    , _bucAcl              :: !(Maybe [Maybe BucketAccessControl])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Bucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bucEtag'
--
-- * 'bucLocation'
--
-- * 'bucKind'
--
-- * 'bucWebsite'
--
-- * 'bucLifecycle'
--
-- * 'bucOwner'
--
-- * 'bucSelfLink'
--
-- * 'bucName'
--
-- * 'bucStorageClass'
--
-- * 'bucVersioning'
--
-- * 'bucCors'
--
-- * 'bucTimeCreated'
--
-- * 'bucId'
--
-- * 'bucDefaultObjectAcl'
--
-- * 'bucMetageneration'
--
-- * 'bucLogging'
--
-- * 'bucAcl'
bucket
    :: Bucket
bucket =
    Bucket
    { _bucEtag = Nothing
    , _bucLocation = Nothing
    , _bucKind = "storage#bucket"
    , _bucWebsite = Nothing
    , _bucLifecycle = Nothing
    , _bucOwner = Nothing
    , _bucSelfLink = Nothing
    , _bucName = Nothing
    , _bucStorageClass = Nothing
    , _bucVersioning = Nothing
    , _bucCors = Nothing
    , _bucTimeCreated = Nothing
    , _bucId = Nothing
    , _bucDefaultObjectAcl = Nothing
    , _bucMetageneration = Nothing
    , _bucLogging = Nothing
    , _bucAcl = Nothing
    }

-- | HTTP 1.1 Entity tag for the bucket.
bucEtag :: Lens' Bucket (Maybe Text)
bucEtag = lens _bucEtag (\ s a -> s{_bucEtag = a})

-- | The location of the bucket. Object data for objects in the bucket
-- resides in physical storage within this region. Typical values are US
-- and EU. Defaults to US. See the developer\'s guide for the authoritative
-- list.
bucLocation :: Lens' Bucket (Maybe Text)
bucLocation
  = lens _bucLocation (\ s a -> s{_bucLocation = a})

-- | The kind of item this is. For buckets, this is always storage#bucket.
bucKind :: Lens' Bucket Text
bucKind = lens _bucKind (\ s a -> s{_bucKind = a})

-- | The bucket\'s website configuration.
bucWebsite :: Lens' Bucket (Maybe BucketWebsite)
bucWebsite
  = lens _bucWebsite (\ s a -> s{_bucWebsite = a})

-- | The bucket\'s lifecycle configuration. See object lifecycle management
-- for more information.
bucLifecycle :: Lens' Bucket (Maybe BucketLifecycle)
bucLifecycle
  = lens _bucLifecycle (\ s a -> s{_bucLifecycle = a})

-- | The owner of the bucket. This is always the project team\'s owner group.
bucOwner :: Lens' Bucket (Maybe BucketOwner)
bucOwner = lens _bucOwner (\ s a -> s{_bucOwner = a})

-- | The URI of this bucket.
bucSelfLink :: Lens' Bucket (Maybe Text)
bucSelfLink
  = lens _bucSelfLink (\ s a -> s{_bucSelfLink = a})

-- | The name of the bucket.
bucName :: Lens' Bucket (Maybe Text)
bucName = lens _bucName (\ s a -> s{_bucName = a})

-- | The bucket\'s storage class. This defines how objects in the bucket are
-- stored and determines the SLA and the cost of storage. Typical values
-- are STANDARD and DURABLE_REDUCED_AVAILABILITY. Defaults to STANDARD. See
-- the developer\'s guide for the authoritative list.
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
bucCors :: Lens' Bucket [BucketItemCors]
bucCors
  = lens _bucCors (\ s a -> s{_bucCors = a}) . _Default
      . _Coerce

-- | Creation time of the bucket in RFC 3339 format.
bucTimeCreated :: Lens' Bucket (Maybe UTCTime)
bucTimeCreated
  = lens _bucTimeCreated
      (\ s a -> s{_bucTimeCreated = a})

-- | The ID of the bucket.
bucId :: Lens' Bucket (Maybe Text)
bucId = lens _bucId (\ s a -> s{_bucId = a})

-- | Default access controls to apply to new objects when no ACL is provided.
bucDefaultObjectAcl :: Lens' Bucket [Maybe ObjectAccessControl]
bucDefaultObjectAcl
  = lens _bucDefaultObjectAcl
      (\ s a -> s{_bucDefaultObjectAcl = a})
      . _Default
      . _Coerce

-- | The metadata generation of this bucket.
bucMetageneration :: Lens' Bucket (Maybe Int64)
bucMetageneration
  = lens _bucMetageneration
      (\ s a -> s{_bucMetageneration = a})

-- | The bucket\'s logging configuration, which defines the destination
-- bucket and optional name prefix for the current bucket\'s logs.
bucLogging :: Lens' Bucket (Maybe BucketLogging)
bucLogging
  = lens _bucLogging (\ s a -> s{_bucLogging = a})

-- | Access controls on the bucket.
bucAcl :: Lens' Bucket [Maybe BucketAccessControl]
bucAcl
  = lens _bucAcl (\ s a -> s{_bucAcl = a}) . _Default .
      _Coerce

-- | An access-control entry.
--
-- /See:/ 'bucketAccessControl' smart constructor.
data BucketAccessControl = BucketAccessControl
    { _bacEmail    :: !(Maybe Text)
    , _bacEtag     :: !(Maybe Text)
    , _bacKind     :: !Text
    , _bacDomain   :: !(Maybe Text)
    , _bacBucket   :: !(Maybe Text)
    , _bacRole     :: !(Maybe Text)
    , _bacSelfLink :: !(Maybe Text)
    , _bacId       :: !(Maybe Text)
    , _bacEntity   :: !(Maybe Text)
    , _bacEntityId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacEmail'
--
-- * 'bacEtag'
--
-- * 'bacKind'
--
-- * 'bacDomain'
--
-- * 'bacBucket'
--
-- * 'bacRole'
--
-- * 'bacSelfLink'
--
-- * 'bacId'
--
-- * 'bacEntity'
--
-- * 'bacEntityId'
bucketAccessControl
    :: BucketAccessControl
bucketAccessControl =
    BucketAccessControl
    { _bacEmail = Nothing
    , _bacEtag = Nothing
    , _bacKind = "storage#bucketAccessControl"
    , _bacDomain = Nothing
    , _bacBucket = Nothing
    , _bacRole = Nothing
    , _bacSelfLink = Nothing
    , _bacId = Nothing
    , _bacEntity = Nothing
    , _bacEntityId = Nothing
    }

-- | The email address associated with the entity, if any.
bacEmail :: Lens' BucketAccessControl (Maybe Text)
bacEmail = lens _bacEmail (\ s a -> s{_bacEmail = a})

-- | HTTP 1.1 Entity tag for the access-control entry.
bacEtag :: Lens' BucketAccessControl (Maybe Text)
bacEtag = lens _bacEtag (\ s a -> s{_bacEtag = a})

-- | The kind of item this is. For bucket access control entries, this is
-- always storage#bucketAccessControl.
bacKind :: Lens' BucketAccessControl Text
bacKind = lens _bacKind (\ s a -> s{_bacKind = a})

-- | The domain associated with the entity, if any.
bacDomain :: Lens' BucketAccessControl (Maybe Text)
bacDomain
  = lens _bacDomain (\ s a -> s{_bacDomain = a})

-- | The name of the bucket.
bacBucket :: Lens' BucketAccessControl (Maybe Text)
bacBucket
  = lens _bacBucket (\ s a -> s{_bacBucket = a})

-- | The access permission for the entity. Can be READER, WRITER, or OWNER.
bacRole :: Lens' BucketAccessControl (Maybe Text)
bacRole = lens _bacRole (\ s a -> s{_bacRole = a})

-- | The link to this access-control entry.
bacSelfLink :: Lens' BucketAccessControl (Maybe Text)
bacSelfLink
  = lens _bacSelfLink (\ s a -> s{_bacSelfLink = a})

-- | The ID of the access-control entry.
bacId :: Lens' BucketAccessControl (Maybe Text)
bacId = lens _bacId (\ s a -> s{_bacId = a})

-- | The entity holding the permission, in one of the following forms: -
-- user-userId - user-email - group-groupId - group-email - domain-domain -
-- allUsers - allAuthenticatedUsers Examples: - The user liz\'example.com
-- would be user-liz\'example.com. - The group example\'googlegroups.com
-- would be group-example\'googlegroups.com. - To refer to all members of
-- the Google Apps for Business domain example.com, the entity would be
-- domain-example.com.
bacEntity :: Lens' BucketAccessControl (Maybe Text)
bacEntity
  = lens _bacEntity (\ s a -> s{_bacEntity = a})

-- | The ID for the entity, if any.
bacEntityId :: Lens' BucketAccessControl (Maybe Text)
bacEntityId
  = lens _bacEntityId (\ s a -> s{_bacEntityId = a})

-- | An access-control list.
--
-- /See:/ 'bucketAccessControls' smart constructor.
data BucketAccessControls = BucketAccessControls
    { _bKind  :: !Text
    , _bItems :: !(Maybe [Maybe BucketAccessControl])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bKind'
--
-- * 'bItems'
bucketAccessControls
    :: BucketAccessControls
bucketAccessControls =
    BucketAccessControls
    { _bKind = "storage#bucketAccessControls"
    , _bItems = Nothing
    }

-- | The kind of item this is. For lists of bucket access control entries,
-- this is always storage#bucketAccessControls.
bKind :: Lens' BucketAccessControls Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | The list of items.
bItems :: Lens' BucketAccessControls [Maybe BucketAccessControl]
bItems
  = lens _bItems (\ s a -> s{_bItems = a}) . _Default .
      _Coerce

-- | The action to take.
--
-- /See:/ 'bucketActionItemRuleLifecycle' smart constructor.
newtype BucketActionItemRuleLifecycle = BucketActionItemRuleLifecycle
    { _bairlType :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketActionItemRuleLifecycle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bairlType'
bucketActionItemRuleLifecycle
    :: BucketActionItemRuleLifecycle
bucketActionItemRuleLifecycle =
    BucketActionItemRuleLifecycle
    { _bairlType = Nothing
    }

-- | Type of the action. Currently only Delete is supported.
bairlType :: Lens' BucketActionItemRuleLifecycle (Maybe Text)
bairlType
  = lens _bairlType (\ s a -> s{_bairlType = a})

-- | The condition(s) under which the action will be taken.
--
-- /See:/ 'bucketConditionItemRuleLifecycle' smart constructor.
data BucketConditionItemRuleLifecycle = BucketConditionItemRuleLifecycle
    { _bcirlAge              :: !(Maybe Int32)
    , _bcirlIsLive           :: !(Maybe Bool)
    , _bcirlNumNewerVersions :: !(Maybe Int32)
    , _bcirlCreatedBefore    :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketConditionItemRuleLifecycle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcirlAge'
--
-- * 'bcirlIsLive'
--
-- * 'bcirlNumNewerVersions'
--
-- * 'bcirlCreatedBefore'
bucketConditionItemRuleLifecycle
    :: BucketConditionItemRuleLifecycle
bucketConditionItemRuleLifecycle =
    BucketConditionItemRuleLifecycle
    { _bcirlAge = Nothing
    , _bcirlIsLive = Nothing
    , _bcirlNumNewerVersions = Nothing
    , _bcirlCreatedBefore = Nothing
    }

-- | Age of an object (in days). This condition is satisfied when an object
-- reaches the specified age.
bcirlAge :: Lens' BucketConditionItemRuleLifecycle (Maybe Int32)
bcirlAge = lens _bcirlAge (\ s a -> s{_bcirlAge = a})

-- | Relevant only for versioned objects. If the value is true, this
-- condition matches live objects; if the value is false, it matches
-- archived objects.
bcirlIsLive :: Lens' BucketConditionItemRuleLifecycle (Maybe Bool)
bcirlIsLive
  = lens _bcirlIsLive (\ s a -> s{_bcirlIsLive = a})

-- | Relevant only for versioned objects. If the value is N, this condition
-- is satisfied when there are at least N versions (including the live
-- version) newer than this version of the object.
bcirlNumNewerVersions :: Lens' BucketConditionItemRuleLifecycle (Maybe Int32)
bcirlNumNewerVersions
  = lens _bcirlNumNewerVersions
      (\ s a -> s{_bcirlNumNewerVersions = a})

-- | A date in RFC 3339 format with only the date part, e.g. \"2013-01-15\".
-- This condition is satisfied when an object is created before midnight of
-- the specified date in UTC.
bcirlCreatedBefore :: Lens' BucketConditionItemRuleLifecycle (Maybe UTCTime)
bcirlCreatedBefore
  = lens _bcirlCreatedBefore
      (\ s a -> s{_bcirlCreatedBefore = a})

--
-- /See:/ 'bucketItemCors' smart constructor.
data BucketItemCors = BucketItemCors
    { _bicMaxAgeSeconds  :: !(Maybe Int32)
    , _bicOrigin         :: !(Maybe [Text])
    , _bicResponseHeader :: !(Maybe [Text])
    , _bicMethod         :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketItemCors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bicMaxAgeSeconds'
--
-- * 'bicOrigin'
--
-- * 'bicResponseHeader'
--
-- * 'bicMethod'
bucketItemCors
    :: BucketItemCors
bucketItemCors =
    BucketItemCors
    { _bicMaxAgeSeconds = Nothing
    , _bicOrigin = Nothing
    , _bicResponseHeader = Nothing
    , _bicMethod = Nothing
    }

-- | The value, in seconds, to return in the Access-Control-Max-Age header
-- used in preflight responses.
bicMaxAgeSeconds :: Lens' BucketItemCors (Maybe Int32)
bicMaxAgeSeconds
  = lens _bicMaxAgeSeconds
      (\ s a -> s{_bicMaxAgeSeconds = a})

-- | The list of Origins eligible to receive CORS response headers. Note:
-- \"*\" is permitted in the list of origins, and means \"any Origin\".
bicOrigin :: Lens' BucketItemCors [Text]
bicOrigin
  = lens _bicOrigin (\ s a -> s{_bicOrigin = a}) .
      _Default
      . _Coerce

-- | The list of HTTP headers other than the simple response headers to give
-- permission for the user-agent to share across domains.
bicResponseHeader :: Lens' BucketItemCors [Text]
bicResponseHeader
  = lens _bicResponseHeader
      (\ s a -> s{_bicResponseHeader = a})
      . _Default
      . _Coerce

-- | The list of HTTP methods on which to include CORS response headers: GET,
-- OPTIONS, POST, etc. Note, \"*\" is permitted in the list of methods, and
-- means \"any method\".
bicMethod :: Lens' BucketItemCors [Text]
bicMethod
  = lens _bicMethod (\ s a -> s{_bicMethod = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'bucketItemRuleLifecycle' smart constructor.
data BucketItemRuleLifecycle = BucketItemRuleLifecycle
    { _birlAction    :: !(Maybe BucketActionItemRuleLifecycle)
    , _birlCondition :: !(Maybe BucketConditionItemRuleLifecycle)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketItemRuleLifecycle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'birlAction'
--
-- * 'birlCondition'
bucketItemRuleLifecycle
    :: BucketItemRuleLifecycle
bucketItemRuleLifecycle =
    BucketItemRuleLifecycle
    { _birlAction = Nothing
    , _birlCondition = Nothing
    }

-- | The action to take.
birlAction :: Lens' BucketItemRuleLifecycle (Maybe BucketActionItemRuleLifecycle)
birlAction
  = lens _birlAction (\ s a -> s{_birlAction = a})

-- | The condition(s) under which the action will be taken.
birlCondition :: Lens' BucketItemRuleLifecycle (Maybe BucketConditionItemRuleLifecycle)
birlCondition
  = lens _birlCondition
      (\ s a -> s{_birlCondition = a})

-- | The bucket\'s lifecycle configuration. See object lifecycle management
-- for more information.
--
-- /See:/ 'bucketLifecycle' smart constructor.
newtype BucketLifecycle = BucketLifecycle
    { _blRule :: Maybe [BucketItemRuleLifecycle]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketLifecycle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blRule'
bucketLifecycle
    :: BucketLifecycle
bucketLifecycle =
    BucketLifecycle
    { _blRule = Nothing
    }

-- | A lifecycle management rule, which is made of an action to take and the
-- condition(s) under which the action will be taken.
blRule :: Lens' BucketLifecycle [BucketItemRuleLifecycle]
blRule
  = lens _blRule (\ s a -> s{_blRule = a}) . _Default .
      _Coerce

-- | The bucket\'s logging configuration, which defines the destination
-- bucket and optional name prefix for the current bucket\'s logs.
--
-- /See:/ 'bucketLogging' smart constructor.
data BucketLogging = BucketLogging
    { _blLogBucket       :: !(Maybe Text)
    , _blLogObjectPrefix :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    BucketLogging
    { _blLogBucket = Nothing
    , _blLogObjectPrefix = Nothing
    }

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

-- | The owner of the bucket. This is always the project team\'s owner group.
--
-- /See:/ 'bucketOwner' smart constructor.
data BucketOwner = BucketOwner
    { _boEntity   :: !(Maybe Text)
    , _boEntityId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketOwner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boEntity'
--
-- * 'boEntityId'
bucketOwner
    :: BucketOwner
bucketOwner =
    BucketOwner
    { _boEntity = Nothing
    , _boEntityId = Nothing
    }

-- | The entity, in the form group-groupId.
boEntity :: Lens' BucketOwner (Maybe Text)
boEntity = lens _boEntity (\ s a -> s{_boEntity = a})

-- | The ID for the entity.
boEntityId :: Lens' BucketOwner (Maybe Text)
boEntityId
  = lens _boEntityId (\ s a -> s{_boEntityId = a})

-- | The bucket\'s versioning configuration.
--
-- /See:/ 'bucketVersioning' smart constructor.
newtype BucketVersioning = BucketVersioning
    { _bvEnabled :: Maybe Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketVersioning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bvEnabled'
bucketVersioning
    :: BucketVersioning
bucketVersioning =
    BucketVersioning
    { _bvEnabled = Nothing
    }

-- | While set to true, versioning is fully enabled for this bucket.
bvEnabled :: Lens' BucketVersioning (Maybe Bool)
bvEnabled
  = lens _bvEnabled (\ s a -> s{_bvEnabled = a})

-- | The bucket\'s website configuration.
--
-- /See:/ 'bucketWebsite' smart constructor.
data BucketWebsite = BucketWebsite
    { _bwMainPageSuffix :: !(Maybe Text)
    , _bwNotFoundPage   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    BucketWebsite
    { _bwMainPageSuffix = Nothing
    , _bwNotFoundPage = Nothing
    }

-- | Behaves as the bucket\'s directory index where missing objects are
-- treated as potential directories.
bwMainPageSuffix :: Lens' BucketWebsite (Maybe Text)
bwMainPageSuffix
  = lens _bwMainPageSuffix
      (\ s a -> s{_bwMainPageSuffix = a})

-- | The custom object to return when a requested resource is not found.
bwNotFoundPage :: Lens' BucketWebsite (Maybe Text)
bwNotFoundPage
  = lens _bwNotFoundPage
      (\ s a -> s{_bwNotFoundPage = a})

-- | A list of buckets.
--
-- /See:/ 'buckets' smart constructor.
data Buckets = Buckets
    { _bbNextPageToken :: !(Maybe Text)
    , _bbKind          :: !Text
    , _bbItems         :: !(Maybe [Maybe Bucket])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Buckets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbNextPageToken'
--
-- * 'bbKind'
--
-- * 'bbItems'
buckets
    :: Buckets
buckets =
    Buckets
    { _bbNextPageToken = Nothing
    , _bbKind = "storage#buckets"
    , _bbItems = Nothing
    }

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
bbNextPageToken :: Lens' Buckets (Maybe Text)
bbNextPageToken
  = lens _bbNextPageToken
      (\ s a -> s{_bbNextPageToken = a})

-- | The kind of item this is. For lists of buckets, this is always
-- storage#buckets.
bbKind :: Lens' Buckets Text
bbKind = lens _bbKind (\ s a -> s{_bbKind = a})

-- | The list of items.
bbItems :: Lens' Buckets [Maybe Bucket]
bbItems
  = lens _bbItems (\ s a -> s{_bbItems = a}) . _Default
      . _Coerce

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cResourceUri :: !(Maybe Text)
    , _cResourceId  :: !(Maybe Text)
    , _cKind        :: !Text
    , _cExpiration  :: !(Maybe Int64)
    , _cToken       :: !(Maybe Text)
    , _cAddress     :: !(Maybe Text)
    , _cPayload     :: !(Maybe Bool)
    , _cParams      :: !(Maybe ChannelParams)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceUri'
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
    Channel
    { _cResourceUri = Nothing
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
cResourceUri :: Lens' Channel (Maybe Text)
cResourceUri
  = lens _cResourceUri (\ s a -> s{_cResourceUri = a})

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
  = lens _cExpiration (\ s a -> s{_cExpiration = a})

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

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
data ChannelParams =
    ChannelParams
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
channelParams
    :: ChannelParams
channelParams = ChannelParams

-- | A Compose request.
--
-- /See:/ 'composeRequest' smart constructor.
data ComposeRequest = ComposeRequest
    { _crDestination   :: !(Maybe (Maybe Object))
    , _crKind          :: !Text
    , _crSourceObjects :: !(Maybe [ComposeRequestItemSourceObjects])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ComposeRequest
    { _crDestination = Nothing
    , _crKind = "storage#composeRequest"
    , _crSourceObjects = Nothing
    }

-- | Properties of the resulting object
crDestination :: Lens' ComposeRequest (Maybe (Maybe Object))
crDestination
  = lens _crDestination
      (\ s a -> s{_crDestination = a})

-- | The kind of item this is.
crKind :: Lens' ComposeRequest Text
crKind = lens _crKind (\ s a -> s{_crKind = a})

-- | The list of source objects that will be concatenated into a single
-- object.
crSourceObjects :: Lens' ComposeRequest [ComposeRequestItemSourceObjects]
crSourceObjects
  = lens _crSourceObjects
      (\ s a -> s{_crSourceObjects = a})
      . _Default
      . _Coerce

--
-- /See:/ 'composeRequestItemSourceObjects' smart constructor.
data ComposeRequestItemSourceObjects = ComposeRequestItemSourceObjects
    { _crisoName                :: !(Maybe Text)
    , _crisoObjectPreconditions :: !(Maybe ComposeRequestObjectPreconditionsItemSourceObjects)
    , _crisoGeneration          :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ComposeRequestItemSourceObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crisoName'
--
-- * 'crisoObjectPreconditions'
--
-- * 'crisoGeneration'
composeRequestItemSourceObjects
    :: ComposeRequestItemSourceObjects
composeRequestItemSourceObjects =
    ComposeRequestItemSourceObjects
    { _crisoName = Nothing
    , _crisoObjectPreconditions = Nothing
    , _crisoGeneration = Nothing
    }

-- | The source object\'s name. The source object\'s bucket is implicitly the
-- destination bucket.
crisoName :: Lens' ComposeRequestItemSourceObjects (Maybe Text)
crisoName
  = lens _crisoName (\ s a -> s{_crisoName = a})

-- | Conditions that must be met for this operation to execute.
crisoObjectPreconditions :: Lens' ComposeRequestItemSourceObjects (Maybe ComposeRequestObjectPreconditionsItemSourceObjects)
crisoObjectPreconditions
  = lens _crisoObjectPreconditions
      (\ s a -> s{_crisoObjectPreconditions = a})

-- | The generation of this object to use as the source.
crisoGeneration :: Lens' ComposeRequestItemSourceObjects (Maybe Int64)
crisoGeneration
  = lens _crisoGeneration
      (\ s a -> s{_crisoGeneration = a})

-- | Conditions that must be met for this operation to execute.
--
-- /See:/ 'composeRequestObjectPreconditionsItemSourceObjects' smart constructor.
newtype ComposeRequestObjectPreconditionsItemSourceObjects = ComposeRequestObjectPreconditionsItemSourceObjects
    { _cropisoIfGenerationMatch :: Maybe Int64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ComposeRequestObjectPreconditionsItemSourceObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cropisoIfGenerationMatch'
composeRequestObjectPreconditionsItemSourceObjects
    :: ComposeRequestObjectPreconditionsItemSourceObjects
composeRequestObjectPreconditionsItemSourceObjects =
    ComposeRequestObjectPreconditionsItemSourceObjects
    { _cropisoIfGenerationMatch = Nothing
    }

-- | Only perform the composition if the generation of the source object that
-- would be used matches this value. If this value and a generation are
-- both specified, they must be the same value or the call will fail.
cropisoIfGenerationMatch :: Lens' ComposeRequestObjectPreconditionsItemSourceObjects (Maybe Int64)
cropisoIfGenerationMatch
  = lens _cropisoIfGenerationMatch
      (\ s a -> s{_cropisoIfGenerationMatch = a})

-- | An object.
--
-- /See:/ 'object'' smart constructor.
data Object = Object
    { _oEtag               :: !(Maybe Text)
    , _oSize               :: !(Maybe Word64)
    , _oKind               :: !Text
    , _oTimeDeleted        :: !(Maybe UTCTime)
    , _oCrc32c             :: !(Maybe Text)
    , _oBucket             :: !(Maybe Text)
    , _oOwner              :: !(Maybe ObjectOwner)
    , _oSelfLink           :: !(Maybe Text)
    , _oMediaLink          :: !(Maybe Text)
    , _oComponentCount     :: !(Maybe Int32)
    , _oName               :: !(Maybe Text)
    , _oStorageClass       :: !(Maybe Text)
    , _oContentEncoding    :: !(Maybe Text)
    , _oMetadata           :: !(Maybe ObjectMetadata)
    , _oId                 :: !(Maybe Text)
    , _oUpdated            :: !(Maybe UTCTime)
    , _oContentLanguage    :: !(Maybe Text)
    , _oCacheControl       :: !(Maybe Text)
    , _oMetageneration     :: !(Maybe Int64)
    , _oGeneration         :: !(Maybe Int64)
    , _oAcl                :: !(Maybe [Maybe ObjectAccessControl])
    , _oContentDisposition :: !(Maybe Text)
    , _oMd5Hash            :: !(Maybe Text)
    , _oContentType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Object' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oEtag'
--
-- * 'oSize'
--
-- * 'oKind'
--
-- * 'oTimeDeleted'
--
-- * 'oCrc32c'
--
-- * 'oBucket'
--
-- * 'oOwner'
--
-- * 'oSelfLink'
--
-- * 'oMediaLink'
--
-- * 'oComponentCount'
--
-- * 'oName'
--
-- * 'oStorageClass'
--
-- * 'oContentEncoding'
--
-- * 'oMetadata'
--
-- * 'oId'
--
-- * 'oUpdated'
--
-- * 'oContentLanguage'
--
-- * 'oCacheControl'
--
-- * 'oMetageneration'
--
-- * 'oGeneration'
--
-- * 'oAcl'
--
-- * 'oContentDisposition'
--
-- * 'oMd5Hash'
--
-- * 'oContentType'
object'
    :: Object
object' =
    Object
    { _oEtag = Nothing
    , _oSize = Nothing
    , _oKind = "storage#object"
    , _oTimeDeleted = Nothing
    , _oCrc32c = Nothing
    , _oBucket = Nothing
    , _oOwner = Nothing
    , _oSelfLink = Nothing
    , _oMediaLink = Nothing
    , _oComponentCount = Nothing
    , _oName = Nothing
    , _oStorageClass = Nothing
    , _oContentEncoding = Nothing
    , _oMetadata = Nothing
    , _oId = Nothing
    , _oUpdated = Nothing
    , _oContentLanguage = Nothing
    , _oCacheControl = Nothing
    , _oMetageneration = Nothing
    , _oGeneration = Nothing
    , _oAcl = Nothing
    , _oContentDisposition = Nothing
    , _oMd5Hash = Nothing
    , _oContentType = Nothing
    }

-- | HTTP 1.1 Entity tag for the object.
oEtag :: Lens' Object (Maybe Text)
oEtag = lens _oEtag (\ s a -> s{_oEtag = a})

-- | Content-Length of the data in bytes.
oSize :: Lens' Object (Maybe Word64)
oSize = lens _oSize (\ s a -> s{_oSize = a})

-- | The kind of item this is. For objects, this is always storage#object.
oKind :: Lens' Object Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | Deletion time of the object in RFC 3339 format. Will be returned if and
-- only if this version of the object has been deleted.
oTimeDeleted :: Lens' Object (Maybe UTCTime)
oTimeDeleted
  = lens _oTimeDeleted (\ s a -> s{_oTimeDeleted = a})

-- | CRC32c checksum, as described in RFC 4960, Appendix B; encoded using
-- base64.
oCrc32c :: Lens' Object (Maybe Text)
oCrc32c = lens _oCrc32c (\ s a -> s{_oCrc32c = a})

-- | The bucket containing this object.
oBucket :: Lens' Object (Maybe Text)
oBucket = lens _oBucket (\ s a -> s{_oBucket = a})

-- | The owner of the object. This will always be the uploader of the object.
oOwner :: Lens' Object (Maybe ObjectOwner)
oOwner = lens _oOwner (\ s a -> s{_oOwner = a})

-- | The link to this object.
oSelfLink :: Lens' Object (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | Media download link.
oMediaLink :: Lens' Object (Maybe Text)
oMediaLink
  = lens _oMediaLink (\ s a -> s{_oMediaLink = a})

-- | Number of underlying components that make up this object. Components are
-- accumulated by compose operations and are limited to a count of 32.
oComponentCount :: Lens' Object (Maybe Int32)
oComponentCount
  = lens _oComponentCount
      (\ s a -> s{_oComponentCount = a})

-- | The name of this object. Required if not specified by URL parameter.
oName :: Lens' Object (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Storage class of the object.
oStorageClass :: Lens' Object (Maybe Text)
oStorageClass
  = lens _oStorageClass
      (\ s a -> s{_oStorageClass = a})

-- | Content-Encoding of the object data.
oContentEncoding :: Lens' Object (Maybe Text)
oContentEncoding
  = lens _oContentEncoding
      (\ s a -> s{_oContentEncoding = a})

-- | User-provided metadata, in key\/value pairs.
oMetadata :: Lens' Object (Maybe ObjectMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

-- | The ID of the object.
oId :: Lens' Object (Maybe Text)
oId = lens _oId (\ s a -> s{_oId = a})

-- | Modification time of the object metadata in RFC 3339 format.
oUpdated :: Lens' Object (Maybe UTCTime)
oUpdated = lens _oUpdated (\ s a -> s{_oUpdated = a})

-- | Content-Language of the object data.
oContentLanguage :: Lens' Object (Maybe Text)
oContentLanguage
  = lens _oContentLanguage
      (\ s a -> s{_oContentLanguage = a})

-- | Cache-Control directive for the object data.
oCacheControl :: Lens' Object (Maybe Text)
oCacheControl
  = lens _oCacheControl
      (\ s a -> s{_oCacheControl = a})

-- | The generation of the metadata for this object at this generation. Used
-- for metadata versioning. Has no meaning outside of the context of this
-- generation.
oMetageneration :: Lens' Object (Maybe Int64)
oMetageneration
  = lens _oMetageneration
      (\ s a -> s{_oMetageneration = a})

-- | The content generation of this object. Used for object versioning.
oGeneration :: Lens' Object (Maybe Int64)
oGeneration
  = lens _oGeneration (\ s a -> s{_oGeneration = a})

-- | Access controls on the object.
oAcl :: Lens' Object [Maybe ObjectAccessControl]
oAcl
  = lens _oAcl (\ s a -> s{_oAcl = a}) . _Default .
      _Coerce

-- | Content-Disposition of the object data.
oContentDisposition :: Lens' Object (Maybe Text)
oContentDisposition
  = lens _oContentDisposition
      (\ s a -> s{_oContentDisposition = a})

-- | MD5 hash of the data; encoded using base64.
oMd5Hash :: Lens' Object (Maybe Text)
oMd5Hash = lens _oMd5Hash (\ s a -> s{_oMd5Hash = a})

-- | Content-Type of the object data.
oContentType :: Lens' Object (Maybe Text)
oContentType
  = lens _oContentType (\ s a -> s{_oContentType = a})

-- | An access-control entry.
--
-- /See:/ 'objectAccessControl' smart constructor.
data ObjectAccessControl = ObjectAccessControl
    { _oacaEmail      :: !(Maybe Text)
    , _oacaEtag       :: !(Maybe Text)
    , _oacaKind       :: !Text
    , _oacaDomain     :: !(Maybe Text)
    , _oacaBucket     :: !(Maybe Text)
    , _oacaRole       :: !(Maybe Text)
    , _oacaSelfLink   :: !(Maybe Text)
    , _oacaObject     :: !(Maybe Text)
    , _oacaId         :: !(Maybe Text)
    , _oacaEntity     :: !(Maybe Text)
    , _oacaGeneration :: !(Maybe Int64)
    , _oacaEntityId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'oacaEntity'
--
-- * 'oacaGeneration'
--
-- * 'oacaEntityId'
objectAccessControl
    :: ObjectAccessControl
objectAccessControl =
    ObjectAccessControl
    { _oacaEmail = Nothing
    , _oacaEtag = Nothing
    , _oacaKind = "storage#objectAccessControl"
    , _oacaDomain = Nothing
    , _oacaBucket = Nothing
    , _oacaRole = Nothing
    , _oacaSelfLink = Nothing
    , _oacaObject = Nothing
    , _oacaId = Nothing
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

-- | The access permission for the entity. Can be READER or OWNER.
oacaRole :: Lens' ObjectAccessControl (Maybe Text)
oacaRole = lens _oacaRole (\ s a -> s{_oacaRole = a})

-- | The link to this access-control entry.
oacaSelfLink :: Lens' ObjectAccessControl (Maybe Text)
oacaSelfLink
  = lens _oacaSelfLink (\ s a -> s{_oacaSelfLink = a})

-- | The name of the object.
oacaObject :: Lens' ObjectAccessControl (Maybe Text)
oacaObject
  = lens _oacaObject (\ s a -> s{_oacaObject = a})

-- | The ID of the access-control entry.
oacaId :: Lens' ObjectAccessControl (Maybe Text)
oacaId = lens _oacaId (\ s a -> s{_oacaId = a})

-- | The entity holding the permission, in one of the following forms: -
-- user-userId - user-email - group-groupId - group-email - domain-domain -
-- allUsers - allAuthenticatedUsers Examples: - The user liz\'example.com
-- would be user-liz\'example.com. - The group example\'googlegroups.com
-- would be group-example\'googlegroups.com. - To refer to all members of
-- the Google Apps for Business domain example.com, the entity would be
-- domain-example.com.
oacaEntity :: Lens' ObjectAccessControl (Maybe Text)
oacaEntity
  = lens _oacaEntity (\ s a -> s{_oacaEntity = a})

-- | The content generation of the object.
oacaGeneration :: Lens' ObjectAccessControl (Maybe Int64)
oacaGeneration
  = lens _oacaGeneration
      (\ s a -> s{_oacaGeneration = a})

-- | The ID for the entity, if any.
oacaEntityId :: Lens' ObjectAccessControl (Maybe Text)
oacaEntityId
  = lens _oacaEntityId (\ s a -> s{_oacaEntityId = a})

-- | An access-control list.
--
-- /See:/ 'objectAccessControls' smart constructor.
data ObjectAccessControls = ObjectAccessControls
    { _oacKind  :: !Text
    , _oacItems :: !(Maybe [Either Text Int64])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ObjectAccessControls
    { _oacKind = "storage#objectAccessControls"
    , _oacItems = Nothing
    }

-- | The kind of item this is. For lists of object access control entries,
-- this is always storage#objectAccessControls.
oacKind :: Lens' ObjectAccessControls Text
oacKind = lens _oacKind (\ s a -> s{_oacKind = a})

-- | The list of items.
oacItems :: Lens' ObjectAccessControls [Either Text Int64]
oacItems
  = lens _oacItems (\ s a -> s{_oacItems = a}) .
      _Default
      . _Coerce

-- | User-provided metadata, in key\/value pairs.
--
-- /See:/ 'objectMetadata' smart constructor.
data ObjectMetadata =
    ObjectMetadata
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectMetadata' with the minimum fields required to make a request.
--
objectMetadata
    :: ObjectMetadata
objectMetadata = ObjectMetadata

-- | The owner of the object. This will always be the uploader of the object.
--
-- /See:/ 'objectOwner' smart constructor.
data ObjectOwner = ObjectOwner
    { _ooEntity   :: !(Maybe Text)
    , _ooEntityId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectOwner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooEntity'
--
-- * 'ooEntityId'
objectOwner
    :: ObjectOwner
objectOwner =
    ObjectOwner
    { _ooEntity = Nothing
    , _ooEntityId = Nothing
    }

-- | The entity, in the form user-userId.
ooEntity :: Lens' ObjectOwner (Maybe Text)
ooEntity = lens _ooEntity (\ s a -> s{_ooEntity = a})

-- | The ID for the entity.
ooEntityId :: Lens' ObjectOwner (Maybe Text)
ooEntityId
  = lens _ooEntityId (\ s a -> s{_ooEntityId = a})

-- | A list of objects.
--
-- /See:/ 'objects' smart constructor.
data Objects = Objects
    { _objNextPageToken :: !(Maybe Text)
    , _objKind          :: !Text
    , _objItems         :: !(Maybe [Maybe Object])
    , _objPrefixes      :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Objects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'objNextPageToken'
--
-- * 'objKind'
--
-- * 'objItems'
--
-- * 'objPrefixes'
objects
    :: Objects
objects =
    Objects
    { _objNextPageToken = Nothing
    , _objKind = "storage#objects"
    , _objItems = Nothing
    , _objPrefixes = Nothing
    }

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
objNextPageToken :: Lens' Objects (Maybe Text)
objNextPageToken
  = lens _objNextPageToken
      (\ s a -> s{_objNextPageToken = a})

-- | The kind of item this is. For lists of objects, this is always
-- storage#objects.
objKind :: Lens' Objects Text
objKind = lens _objKind (\ s a -> s{_objKind = a})

-- | The list of items.
objItems :: Lens' Objects [Maybe Object]
objItems
  = lens _objItems (\ s a -> s{_objItems = a}) .
      _Default
      . _Coerce

-- | The list of prefixes of objects matching-but-not-listed up to and
-- including the requested delimiter.
objPrefixes :: Lens' Objects [Text]
objPrefixes
  = lens _objPrefixes (\ s a -> s{_objPrefixes = a}) .
      _Default
      . _Coerce
