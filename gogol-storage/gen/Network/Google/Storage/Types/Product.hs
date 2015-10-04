{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
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
data ObjectOwner = ObjectOwner
    { _ooEntity   :: !(Maybe Text)
    , _ooEntityId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON ObjectOwner where
        parseJSON
          = withObject "ObjectOwner"
              (\ o ->
                 ObjectOwner <$>
                   (o .:? "entity") <*> (o .:? "entityId"))

instance ToJSON ObjectOwner where
        toJSON ObjectOwner{..}
          = object
              (catMaybes
                 [("entity" .=) <$> _ooEntity,
                  ("entityId" .=) <$> _ooEntityId])

-- | A list of buckets.
--
-- /See:/ 'buckets' smart constructor.
data Buckets = Buckets
    { _bNextPageToken :: !(Maybe Text)
    , _bKind          :: !Text
    , _bItems         :: !(Maybe [Bucket])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Buckets
    { _bNextPageToken = Nothing
    , _bKind = "storage#buckets"
    , _bItems = Nothing
    }

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
                 Buckets <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "storage#buckets")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Buckets where
        toJSON Buckets{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _bNextPageToken,
                  Just ("kind" .= _bKind), ("items" .=) <$> _bItems])

--
-- /See:/ 'corsItem' smart constructor.
data CORSItem = CORSItem
    { _ciMaxAgeSeconds  :: !(Maybe Int32)
    , _ciOrigin         :: !(Maybe [Text])
    , _ciResponseHeader :: !(Maybe [Text])
    , _ciMethod         :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CORSItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciMaxAgeSeconds'
--
-- * 'ciOrigin'
--
-- * 'ciResponseHeader'
--
-- * 'ciMethod'
corsItem
    :: CORSItem
corsItem =
    CORSItem
    { _ciMaxAgeSeconds = Nothing
    , _ciOrigin = Nothing
    , _ciResponseHeader = Nothing
    , _ciMethod = Nothing
    }

-- | The value, in seconds, to return in the Access-Control-Max-Age header
-- used in preflight responses.
ciMaxAgeSeconds :: Lens' CORSItem (Maybe Int32)
ciMaxAgeSeconds
  = lens _ciMaxAgeSeconds
      (\ s a -> s{_ciMaxAgeSeconds = a})

-- | The list of Origins eligible to receive CORS response headers. Note:
-- \"*\" is permitted in the list of origins, and means \"any Origin\".
ciOrigin :: Lens' CORSItem [Text]
ciOrigin
  = lens _ciOrigin (\ s a -> s{_ciOrigin = a}) .
      _Default
      . _Coerce

-- | The list of HTTP headers other than the simple response headers to give
-- permission for the user-agent to share across domains.
ciResponseHeader :: Lens' CORSItem [Text]
ciResponseHeader
  = lens _ciResponseHeader
      (\ s a -> s{_ciResponseHeader = a})
      . _Default
      . _Coerce

-- | The list of HTTP methods on which to include CORS response headers: GET,
-- OPTIONS, POST, etc. Note, \"*\" is permitted in the list of methods, and
-- means \"any method\".
ciMethod :: Lens' CORSItem [Text]
ciMethod
  = lens _ciMethod (\ s a -> s{_ciMethod = a}) .
      _Default
      . _Coerce

instance FromJSON CORSItem where
        parseJSON
          = withObject "CORSItem"
              (\ o ->
                 CORSItem <$>
                   (o .:? "maxAgeSeconds") <*>
                     (o .:? "origin" .!= mempty)
                     <*> (o .:? "responseHeader" .!= mempty)
                     <*> (o .:? "method" .!= mempty))

instance ToJSON CORSItem where
        toJSON CORSItem{..}
          = object
              (catMaybes
                 [("maxAgeSeconds" .=) <$> _ciMaxAgeSeconds,
                  ("origin" .=) <$> _ciOrigin,
                  ("responseHeader" .=) <$> _ciResponseHeader,
                  ("method" .=) <$> _ciMethod])

-- | The bucket\'s website configuration.
--
-- /See:/ 'website' smart constructor.
data Website = Website
    { _wMainPageSuffix :: !(Maybe Text)
    , _wNotFoundPage   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Website' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wMainPageSuffix'
--
-- * 'wNotFoundPage'
website
    :: Website
website =
    Website
    { _wMainPageSuffix = Nothing
    , _wNotFoundPage = Nothing
    }

-- | Behaves as the bucket\'s directory index where missing objects are
-- treated as potential directories.
wMainPageSuffix :: Lens' Website (Maybe Text)
wMainPageSuffix
  = lens _wMainPageSuffix
      (\ s a -> s{_wMainPageSuffix = a})

-- | The custom object to return when a requested resource is not found.
wNotFoundPage :: Lens' Website (Maybe Text)
wNotFoundPage
  = lens _wNotFoundPage
      (\ s a -> s{_wNotFoundPage = a})

instance FromJSON Website where
        parseJSON
          = withObject "Website"
              (\ o ->
                 Website <$>
                   (o .:? "mainPageSuffix") <*> (o .:? "notFoundPage"))

instance ToJSON Website where
        toJSON Website{..}
          = object
              (catMaybes
                 [("mainPageSuffix" .=) <$> _wMainPageSuffix,
                  ("notFoundPage" .=) <$> _wNotFoundPage])

--
-- /See:/ 'ruleItem' smart constructor.
data RuleItem = RuleItem
    { _riAction    :: !(Maybe Action)
    , _riCondition :: !(Maybe Condition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RuleItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riAction'
--
-- * 'riCondition'
ruleItem
    :: RuleItem
ruleItem =
    RuleItem
    { _riAction = Nothing
    , _riCondition = Nothing
    }

-- | The action to take.
riAction :: Lens' RuleItem (Maybe Action)
riAction = lens _riAction (\ s a -> s{_riAction = a})

-- | The condition(s) under which the action will be taken.
riCondition :: Lens' RuleItem (Maybe Condition)
riCondition
  = lens _riCondition (\ s a -> s{_riCondition = a})

instance FromJSON RuleItem where
        parseJSON
          = withObject "RuleItem"
              (\ o ->
                 RuleItem <$>
                   (o .:? "action") <*> (o .:? "condition"))

instance ToJSON RuleItem where
        toJSON RuleItem{..}
          = object
              (catMaybes
                 [("action" .=) <$> _riAction,
                  ("condition" .=) <$> _riCondition])

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cResourceURI :: !(Maybe Text)
    , _cResourceId  :: !(Maybe Text)
    , _cKind        :: !Text
    , _cExpiration  :: !(Maybe Int64)
    , _cToken       :: !(Maybe Text)
    , _cAddress     :: !(Maybe Text)
    , _cPayload     :: !(Maybe Bool)
    , _cParams      :: !(Maybe Params)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Channel
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
cParams :: Lens' Channel (Maybe Params)
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
                 Channel <$>
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
        toJSON Channel{..}
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

-- | A bucket.
--
-- /See:/ 'bucket' smart constructor.
data Bucket = Bucket
    { _bucEtag             :: !(Maybe Text)
    , _bucLocation         :: !(Maybe Text)
    , _bucKind             :: !Text
    , _bucWebsite          :: !(Maybe Website)
    , _bucLifecycle        :: !(Maybe Lifecycle)
    , _bucOwner            :: !(Maybe Owner)
    , _bucSelfLink         :: !(Maybe Text)
    , _bucName             :: !(Maybe Text)
    , _bucStorageClass     :: !(Maybe Text)
    , _bucVersioning       :: !(Maybe Versioning)
    , _bucCORS             :: !(Maybe [CORSItem])
    , _bucTimeCreated      :: !(Maybe DateTime')
    , _bucId               :: !(Maybe Text)
    , _bucDefaultObjectACL :: !(Maybe [ObjectAccessControl])
    , _bucMetageneration   :: !(Maybe Int64)
    , _bucLogging          :: !(Maybe Logging)
    , _bucACL              :: !(Maybe [BucketAccessControl])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'bucCORS'
--
-- * 'bucTimeCreated'
--
-- * 'bucId'
--
-- * 'bucDefaultObjectACL'
--
-- * 'bucMetageneration'
--
-- * 'bucLogging'
--
-- * 'bucACL'
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
    , _bucCORS = Nothing
    , _bucTimeCreated = Nothing
    , _bucId = Nothing
    , _bucDefaultObjectACL = Nothing
    , _bucMetageneration = Nothing
    , _bucLogging = Nothing
    , _bucACL = Nothing
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
bucWebsite :: Lens' Bucket (Maybe Website)
bucWebsite
  = lens _bucWebsite (\ s a -> s{_bucWebsite = a})

-- | The bucket\'s lifecycle configuration. See object lifecycle management
-- for more information.
bucLifecycle :: Lens' Bucket (Maybe Lifecycle)
bucLifecycle
  = lens _bucLifecycle (\ s a -> s{_bucLifecycle = a})

-- | The owner of the bucket. This is always the project team\'s owner group.
bucOwner :: Lens' Bucket (Maybe Owner)
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
bucVersioning :: Lens' Bucket (Maybe Versioning)
bucVersioning
  = lens _bucVersioning
      (\ s a -> s{_bucVersioning = a})

-- | The bucket\'s Cross-Origin Resource Sharing (CORS) configuration.
bucCORS :: Lens' Bucket [CORSItem]
bucCORS
  = lens _bucCORS (\ s a -> s{_bucCORS = a}) . _Default
      . _Coerce

-- | Creation time of the bucket in RFC 3339 format.
bucTimeCreated :: Lens' Bucket (Maybe UTCTime)
bucTimeCreated
  = lens _bucTimeCreated
      (\ s a -> s{_bucTimeCreated = a})
      . mapping _DateTime

-- | The ID of the bucket.
bucId :: Lens' Bucket (Maybe Text)
bucId = lens _bucId (\ s a -> s{_bucId = a})

-- | Default access controls to apply to new objects when no ACL is provided.
bucDefaultObjectACL :: Lens' Bucket [ObjectAccessControl]
bucDefaultObjectACL
  = lens _bucDefaultObjectACL
      (\ s a -> s{_bucDefaultObjectACL = a})
      . _Default
      . _Coerce

-- | The metadata generation of this bucket.
bucMetageneration :: Lens' Bucket (Maybe Int64)
bucMetageneration
  = lens _bucMetageneration
      (\ s a -> s{_bucMetageneration = a})

-- | The bucket\'s logging configuration, which defines the destination
-- bucket and optional name prefix for the current bucket\'s logs.
bucLogging :: Lens' Bucket (Maybe Logging)
bucLogging
  = lens _bucLogging (\ s a -> s{_bucLogging = a})

-- | Access controls on the bucket.
bucACL :: Lens' Bucket [BucketAccessControl]
bucACL
  = lens _bucACL (\ s a -> s{_bucACL = a}) . _Default .
      _Coerce

instance FromJSON Bucket where
        parseJSON
          = withObject "Bucket"
              (\ o ->
                 Bucket <$>
                   (o .:? "etag") <*> (o .:? "location") <*>
                     (o .:? "kind" .!= "storage#bucket")
                     <*> (o .:? "website")
                     <*> (o .:? "lifecycle")
                     <*> (o .:? "owner")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "storageClass")
                     <*> (o .:? "versioning")
                     <*> (o .:? "cors" .!= mempty)
                     <*> (o .:? "timeCreated")
                     <*> (o .:? "id")
                     <*> (o .:? "defaultObjectAcl" .!= mempty)
                     <*> (o .:? "metageneration")
                     <*> (o .:? "logging")
                     <*> (o .:? "acl" .!= mempty))

instance ToJSON Bucket where
        toJSON Bucket{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _bucEtag,
                  ("location" .=) <$> _bucLocation,
                  Just ("kind" .= _bucKind),
                  ("website" .=) <$> _bucWebsite,
                  ("lifecycle" .=) <$> _bucLifecycle,
                  ("owner" .=) <$> _bucOwner,
                  ("selfLink" .=) <$> _bucSelfLink,
                  ("name" .=) <$> _bucName,
                  ("storageClass" .=) <$> _bucStorageClass,
                  ("versioning" .=) <$> _bucVersioning,
                  ("cors" .=) <$> _bucCORS,
                  ("timeCreated" .=) <$> _bucTimeCreated,
                  ("id" .=) <$> _bucId,
                  ("defaultObjectAcl" .=) <$> _bucDefaultObjectACL,
                  ("metageneration" .=) <$> _bucMetageneration,
                  ("logging" .=) <$> _bucLogging,
                  ("acl" .=) <$> _bucACL])

-- | An access-control list.
--
-- /See:/ 'bucketAccessControls' smart constructor.
data BucketAccessControls = BucketAccessControls
    { _bacKind  :: !Text
    , _bacItems :: !(Maybe [BucketAccessControl])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BucketAccessControls
    { _bacKind = "storage#bucketAccessControls"
    , _bacItems = Nothing
    }

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
                 BucketAccessControls <$>
                   (o .:? "kind" .!= "storage#bucketAccessControls") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON BucketAccessControls where
        toJSON BucketAccessControls{..}
          = object
              (catMaybes
                 [Just ("kind" .= _bacKind),
                  ("items" .=) <$> _bacItems])

-- | The action to take.
--
-- /See:/ 'action' smart constructor.
newtype Action = Action
    { _aType :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aType'
action
    :: Action
action =
    Action
    { _aType = Nothing
    }

-- | Type of the action. Currently only Delete is supported.
aType :: Lens' Action (Maybe Text)
aType = lens _aType (\ s a -> s{_aType = a})

instance FromJSON Action where
        parseJSON
          = withObject "Action"
              (\ o -> Action <$> (o .:? "type"))

instance ToJSON Action where
        toJSON Action{..}
          = object (catMaybes [("type" .=) <$> _aType])

-- | A list of objects.
--
-- /See:/ 'objects' smart constructor.
data Objects = Objects
    { _oNextPageToken :: !(Maybe Text)
    , _oKind          :: !Text
    , _oItems         :: !(Maybe [Object])
    , _oPrefixes      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Objects
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
                 Objects <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "storage#objects")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "prefixes" .!= mempty))

instance ToJSON Objects where
        toJSON Objects{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oNextPageToken,
                  Just ("kind" .= _oKind), ("items" .=) <$> _oItems,
                  ("prefixes" .=) <$> _oPrefixes])

-- | The bucket\'s lifecycle configuration. See object lifecycle management
-- for more information.
--
-- /See:/ 'lifecycle' smart constructor.
newtype Lifecycle = Lifecycle
    { _lRule :: Maybe [RuleItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Lifecycle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lRule'
lifecycle
    :: Lifecycle
lifecycle =
    Lifecycle
    { _lRule = Nothing
    }

-- | A lifecycle management rule, which is made of an action to take and the
-- condition(s) under which the action will be taken.
lRule :: Lens' Lifecycle [RuleItem]
lRule
  = lens _lRule (\ s a -> s{_lRule = a}) . _Default .
      _Coerce

instance FromJSON Lifecycle where
        parseJSON
          = withObject "Lifecycle"
              (\ o -> Lifecycle <$> (o .:? "rule" .!= mempty))

instance ToJSON Lifecycle where
        toJSON Lifecycle{..}
          = object (catMaybes [("rule" .=) <$> _lRule])

-- | The owner of the bucket. This is always the project team\'s owner group.
--
-- /See:/ 'owner' smart constructor.
data Owner = Owner
    { _oEntity   :: !(Maybe Text)
    , _oEntityId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Owner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oEntity'
--
-- * 'oEntityId'
owner
    :: Owner
owner =
    Owner
    { _oEntity = Nothing
    , _oEntityId = Nothing
    }

-- | The entity, in the form group-groupId.
oEntity :: Lens' Owner (Maybe Text)
oEntity = lens _oEntity (\ s a -> s{_oEntity = a})

-- | The ID for the entity.
oEntityId :: Lens' Owner (Maybe Text)
oEntityId
  = lens _oEntityId (\ s a -> s{_oEntityId = a})

instance FromJSON Owner where
        parseJSON
          = withObject "Owner"
              (\ o ->
                 Owner <$> (o .:? "entity") <*> (o .:? "entityId"))

instance ToJSON Owner where
        toJSON Owner{..}
          = object
              (catMaybes
                 [("entity" .=) <$> _oEntity,
                  ("entityId" .=) <$> _oEntityId])

-- | A Compose request.
--
-- /See:/ 'composeRequest' smart constructor.
data ComposeRequest = ComposeRequest
    { _crDestination   :: !(Maybe Object)
    , _crKind          :: !Text
    , _crSourceObjects :: !(Maybe [SourceObjectsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
crDestination :: Lens' ComposeRequest (Maybe Object)
crDestination
  = lens _crDestination
      (\ s a -> s{_crDestination = a})

-- | The kind of item this is.
crKind :: Lens' ComposeRequest Text
crKind = lens _crKind (\ s a -> s{_crKind = a})

-- | The list of source objects that will be concatenated into a single
-- object.
crSourceObjects :: Lens' ComposeRequest [SourceObjectsItem]
crSourceObjects
  = lens _crSourceObjects
      (\ s a -> s{_crSourceObjects = a})
      . _Default
      . _Coerce

instance FromJSON ComposeRequest where
        parseJSON
          = withObject "ComposeRequest"
              (\ o ->
                 ComposeRequest <$>
                   (o .:? "destination") <*>
                     (o .:? "kind" .!= "storage#composeRequest")
                     <*> (o .:? "sourceObjects" .!= mempty))

instance ToJSON ComposeRequest where
        toJSON ComposeRequest{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _crDestination,
                  Just ("kind" .= _crKind),
                  ("sourceObjects" .=) <$> _crSourceObjects])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'params' smart constructor.
data Params =
    Params
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Params' with the minimum fields required to make a request.
--
params
    :: Params
params = Params

instance FromJSON Params where
        parseJSON = withObject "Params" (\ o -> pure Params)

instance ToJSON Params where
        toJSON = const (Object mempty)

-- | The bucket\'s versioning configuration.
--
-- /See:/ 'versioning' smart constructor.
newtype Versioning = Versioning
    { _vEnabled :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Versioning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vEnabled'
versioning
    :: Versioning
versioning =
    Versioning
    { _vEnabled = Nothing
    }

-- | While set to true, versioning is fully enabled for this bucket.
vEnabled :: Lens' Versioning (Maybe Bool)
vEnabled = lens _vEnabled (\ s a -> s{_vEnabled = a})

instance FromJSON Versioning where
        parseJSON
          = withObject "Versioning"
              (\ o -> Versioning <$> (o .:? "enabled"))

instance ToJSON Versioning where
        toJSON Versioning{..}
          = object (catMaybes [("enabled" .=) <$> _vEnabled])

-- | Conditions that must be met for this operation to execute.
--
-- /See:/ 'objectPreconditions' smart constructor.
newtype ObjectPreconditions = ObjectPreconditions
    { _opsIfGenerationMatch :: Maybe Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectPreconditions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opsIfGenerationMatch'
objectPreconditions
    :: ObjectPreconditions
objectPreconditions =
    ObjectPreconditions
    { _opsIfGenerationMatch = Nothing
    }

-- | Only perform the composition if the generation of the source object that
-- would be used matches this value. If this value and a generation are
-- both specified, they must be the same value or the call will fail.
opsIfGenerationMatch :: Lens' ObjectPreconditions (Maybe Int64)
opsIfGenerationMatch
  = lens _opsIfGenerationMatch
      (\ s a -> s{_opsIfGenerationMatch = a})

instance FromJSON ObjectPreconditions where
        parseJSON
          = withObject "ObjectPreconditions"
              (\ o ->
                 ObjectPreconditions <$> (o .:? "ifGenerationMatch"))

instance ToJSON ObjectPreconditions where
        toJSON ObjectPreconditions{..}
          = object
              (catMaybes
                 [("ifGenerationMatch" .=) <$> _opsIfGenerationMatch])

-- | User-provided metadata, in key\/value pairs.
--
-- /See:/ 'metadata' smart constructor.
data Metadata =
    Metadata
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
metadata
    :: Metadata
metadata = Metadata

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata" (\ o -> pure Metadata)

instance ToJSON Metadata where
        toJSON = const (Object mempty)

-- | An access-control entry.
--
-- /See:/ 'bucketAccessControl' smart constructor.
data BucketAccessControl = BucketAccessControl
    { _bacaEmail    :: !(Maybe Text)
    , _bacaEtag     :: !(Maybe Text)
    , _bacaKind     :: !Text
    , _bacaDomain   :: !(Maybe Text)
    , _bacaBucket   :: !(Maybe Text)
    , _bacaRole     :: !(Maybe Text)
    , _bacaSelfLink :: !(Maybe Text)
    , _bacaId       :: !(Maybe Text)
    , _bacaEntity   :: !(Maybe Text)
    , _bacaEntityId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'bacaEntity'
--
-- * 'bacaEntityId'
bucketAccessControl
    :: BucketAccessControl
bucketAccessControl =
    BucketAccessControl
    { _bacaEmail = Nothing
    , _bacaEtag = Nothing
    , _bacaKind = "storage#bucketAccessControl"
    , _bacaDomain = Nothing
    , _bacaBucket = Nothing
    , _bacaRole = Nothing
    , _bacaSelfLink = Nothing
    , _bacaId = Nothing
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

-- | The access permission for the entity. Can be READER, WRITER, or OWNER.
bacaRole :: Lens' BucketAccessControl (Maybe Text)
bacaRole = lens _bacaRole (\ s a -> s{_bacaRole = a})

-- | The link to this access-control entry.
bacaSelfLink :: Lens' BucketAccessControl (Maybe Text)
bacaSelfLink
  = lens _bacaSelfLink (\ s a -> s{_bacaSelfLink = a})

-- | The ID of the access-control entry.
bacaId :: Lens' BucketAccessControl (Maybe Text)
bacaId = lens _bacaId (\ s a -> s{_bacaId = a})

-- | The entity holding the permission, in one of the following forms: -
-- user-userId - user-email - group-groupId - group-email - domain-domain -
-- allUsers - allAuthenticatedUsers Examples: - The user liz\'example.com
-- would be user-liz\'example.com. - The group example\'googlegroups.com
-- would be group-example\'googlegroups.com. - To refer to all members of
-- the Google Apps for Business domain example.com, the entity would be
-- domain-example.com.
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
                 BucketAccessControl <$>
                   (o .:? "email") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "storage#bucketAccessControl")
                     <*> (o .:? "domain")
                     <*> (o .:? "bucket")
                     <*> (o .:? "role")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "entity")
                     <*> (o .:? "entityId"))

instance ToJSON BucketAccessControl where
        toJSON BucketAccessControl{..}
          = object
              (catMaybes
                 [("email" .=) <$> _bacaEmail,
                  ("etag" .=) <$> _bacaEtag,
                  Just ("kind" .= _bacaKind),
                  ("domain" .=) <$> _bacaDomain,
                  ("bucket" .=) <$> _bacaBucket,
                  ("role" .=) <$> _bacaRole,
                  ("selfLink" .=) <$> _bacaSelfLink,
                  ("id" .=) <$> _bacaId, ("entity" .=) <$> _bacaEntity,
                  ("entityId" .=) <$> _bacaEntityId])

-- | An access-control list.
--
-- /See:/ 'objectAccessControls' smart constructor.
data ObjectAccessControls = ObjectAccessControls
    { _oacKind  :: !Text
    , _oacItems :: !(Maybe [JSONValue])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
oacItems :: Lens' ObjectAccessControls [JSONValue]
oacItems
  = lens _oacItems (\ s a -> s{_oacItems = a}) .
      _Default
      . _Coerce

instance FromJSON ObjectAccessControls where
        parseJSON
          = withObject "ObjectAccessControls"
              (\ o ->
                 ObjectAccessControls <$>
                   (o .:? "kind" .!= "storage#objectAccessControls") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON ObjectAccessControls where
        toJSON ObjectAccessControls{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oacKind),
                  ("items" .=) <$> _oacItems])

-- | An object.
--
-- /See:/ 'object'' smart constructor.
data Object = Object
    { _objEtag               :: !(Maybe Text)
    , _objSize               :: !(Maybe Word64)
    , _objKind               :: !Text
    , _objTimeDeleted        :: !(Maybe DateTime')
    , _objCrc32c             :: !(Maybe Text)
    , _objBucket             :: !(Maybe Text)
    , _objOwner              :: !(Maybe ObjectOwner)
    , _objSelfLink           :: !(Maybe Text)
    , _objMediaLink          :: !(Maybe Text)
    , _objComponentCount     :: !(Maybe Int32)
    , _objName               :: !(Maybe Text)
    , _objStorageClass       :: !(Maybe Text)
    , _objContentEncoding    :: !(Maybe Text)
    , _objMetadata           :: !(Maybe Metadata)
    , _objId                 :: !(Maybe Text)
    , _objUpdated            :: !(Maybe DateTime')
    , _objContentLanguage    :: !(Maybe Text)
    , _objCacheControl       :: !(Maybe Text)
    , _objMetageneration     :: !(Maybe Int64)
    , _objGeneration         :: !(Maybe Int64)
    , _objACL                :: !(Maybe [ObjectAccessControl])
    , _objContentDisPosition :: !(Maybe Text)
    , _objMD5Hash            :: !(Maybe Text)
    , _objContentType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Object' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'objEtag'
--
-- * 'objSize'
--
-- * 'objKind'
--
-- * 'objTimeDeleted'
--
-- * 'objCrc32c'
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
-- * 'objMetadata'
--
-- * 'objId'
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
    Object
    { _objEtag = Nothing
    , _objSize = Nothing
    , _objKind = "storage#object"
    , _objTimeDeleted = Nothing
    , _objCrc32c = Nothing
    , _objBucket = Nothing
    , _objOwner = Nothing
    , _objSelfLink = Nothing
    , _objMediaLink = Nothing
    , _objComponentCount = Nothing
    , _objName = Nothing
    , _objStorageClass = Nothing
    , _objContentEncoding = Nothing
    , _objMetadata = Nothing
    , _objId = Nothing
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

-- | HTTP 1.1 Entity tag for the object.
objEtag :: Lens' Object (Maybe Text)
objEtag = lens _objEtag (\ s a -> s{_objEtag = a})

-- | Content-Length of the data in bytes.
objSize :: Lens' Object (Maybe Word64)
objSize = lens _objSize (\ s a -> s{_objSize = a})

-- | The kind of item this is. For objects, this is always storage#object.
objKind :: Lens' Object Text
objKind = lens _objKind (\ s a -> s{_objKind = a})

-- | Deletion time of the object in RFC 3339 format. Will be returned if and
-- only if this version of the object has been deleted.
objTimeDeleted :: Lens' Object (Maybe UTCTime)
objTimeDeleted
  = lens _objTimeDeleted
      (\ s a -> s{_objTimeDeleted = a})
      . mapping _DateTime

-- | CRC32c checksum, as described in RFC 4960, Appendix B; encoded using
-- base64.
objCrc32c :: Lens' Object (Maybe Text)
objCrc32c
  = lens _objCrc32c (\ s a -> s{_objCrc32c = a})

-- | The bucket containing this object.
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
-- accumulated by compose operations and are limited to a count of 32.
objComponentCount :: Lens' Object (Maybe Int32)
objComponentCount
  = lens _objComponentCount
      (\ s a -> s{_objComponentCount = a})

-- | The name of this object. Required if not specified by URL parameter.
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

-- | User-provided metadata, in key\/value pairs.
objMetadata :: Lens' Object (Maybe Metadata)
objMetadata
  = lens _objMetadata (\ s a -> s{_objMetadata = a})

-- | The ID of the object.
objId :: Lens' Object (Maybe Text)
objId = lens _objId (\ s a -> s{_objId = a})

-- | Modification time of the object metadata in RFC 3339 format.
objUpdated :: Lens' Object (Maybe UTCTime)
objUpdated
  = lens _objUpdated (\ s a -> s{_objUpdated = a}) .
      mapping _DateTime

-- | Content-Language of the object data.
objContentLanguage :: Lens' Object (Maybe Text)
objContentLanguage
  = lens _objContentLanguage
      (\ s a -> s{_objContentLanguage = a})

-- | Cache-Control directive for the object data.
objCacheControl :: Lens' Object (Maybe Text)
objCacheControl
  = lens _objCacheControl
      (\ s a -> s{_objCacheControl = a})

-- | The generation of the metadata for this object at this generation. Used
-- for metadata versioning. Has no meaning outside of the context of this
-- generation.
objMetageneration :: Lens' Object (Maybe Int64)
objMetageneration
  = lens _objMetageneration
      (\ s a -> s{_objMetageneration = a})

-- | The content generation of this object. Used for object versioning.
objGeneration :: Lens' Object (Maybe Int64)
objGeneration
  = lens _objGeneration
      (\ s a -> s{_objGeneration = a})

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

-- | MD5 hash of the data; encoded using base64.
objMD5Hash :: Lens' Object (Maybe Text)
objMD5Hash
  = lens _objMD5Hash (\ s a -> s{_objMD5Hash = a})

-- | Content-Type of the object data.
objContentType :: Lens' Object (Maybe Text)
objContentType
  = lens _objContentType
      (\ s a -> s{_objContentType = a})

instance FromJSON Object where
        parseJSON
          = withObject "Object"
              (\ o ->
                 Object <$>
                   (o .:? "etag") <*> (o .:? "size") <*>
                     (o .:? "kind" .!= "storage#object")
                     <*> (o .:? "timeDeleted")
                     <*> (o .:? "crc32c")
                     <*> (o .:? "bucket")
                     <*> (o .:? "owner")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "mediaLink")
                     <*> (o .:? "componentCount")
                     <*> (o .:? "name")
                     <*> (o .:? "storageClass")
                     <*> (o .:? "contentEncoding")
                     <*> (o .:? "metadata")
                     <*> (o .:? "id")
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
        toJSON Object{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _objEtag, ("size" .=) <$> _objSize,
                  Just ("kind" .= _objKind),
                  ("timeDeleted" .=) <$> _objTimeDeleted,
                  ("crc32c" .=) <$> _objCrc32c,
                  ("bucket" .=) <$> _objBucket,
                  ("owner" .=) <$> _objOwner,
                  ("selfLink" .=) <$> _objSelfLink,
                  ("mediaLink" .=) <$> _objMediaLink,
                  ("componentCount" .=) <$> _objComponentCount,
                  ("name" .=) <$> _objName,
                  ("storageClass" .=) <$> _objStorageClass,
                  ("contentEncoding" .=) <$> _objContentEncoding,
                  ("metadata" .=) <$> _objMetadata,
                  ("id" .=) <$> _objId, ("updated" .=) <$> _objUpdated,
                  ("contentLanguage" .=) <$> _objContentLanguage,
                  ("cacheControl" .=) <$> _objCacheControl,
                  ("metageneration" .=) <$> _objMetageneration,
                  ("generation" .=) <$> _objGeneration,
                  ("acl" .=) <$> _objACL,
                  ("contentDisposition" .=) <$> _objContentDisPosition,
                  ("md5Hash" .=) <$> _objMD5Hash,
                  ("contentType" .=) <$> _objContentType])

-- | The condition(s) under which the action will be taken.
--
-- /See:/ 'condition' smart constructor.
data Condition = Condition
    { _cAge              :: !(Maybe Int32)
    , _cIsLive           :: !(Maybe Bool)
    , _cNumNewerVersions :: !(Maybe Int32)
    , _cCreatedBefore    :: !(Maybe Date')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cAge'
--
-- * 'cIsLive'
--
-- * 'cNumNewerVersions'
--
-- * 'cCreatedBefore'
condition
    :: Condition
condition =
    Condition
    { _cAge = Nothing
    , _cIsLive = Nothing
    , _cNumNewerVersions = Nothing
    , _cCreatedBefore = Nothing
    }

-- | Age of an object (in days). This condition is satisfied when an object
-- reaches the specified age.
cAge :: Lens' Condition (Maybe Int32)
cAge = lens _cAge (\ s a -> s{_cAge = a})

-- | Relevant only for versioned objects. If the value is true, this
-- condition matches live objects; if the value is false, it matches
-- archived objects.
cIsLive :: Lens' Condition (Maybe Bool)
cIsLive = lens _cIsLive (\ s a -> s{_cIsLive = a})

-- | Relevant only for versioned objects. If the value is N, this condition
-- is satisfied when there are at least N versions (including the live
-- version) newer than this version of the object.
cNumNewerVersions :: Lens' Condition (Maybe Int32)
cNumNewerVersions
  = lens _cNumNewerVersions
      (\ s a -> s{_cNumNewerVersions = a})

-- | A date in RFC 3339 format with only the date part, e.g. \"2013-01-15\".
-- This condition is satisfied when an object is created before midnight of
-- the specified date in UTC.
cCreatedBefore :: Lens' Condition (Maybe LocalTime)
cCreatedBefore
  = lens _cCreatedBefore
      (\ s a -> s{_cCreatedBefore = a})
      . mapping _Date

instance FromJSON Condition where
        parseJSON
          = withObject "Condition"
              (\ o ->
                 Condition <$>
                   (o .:? "age") <*> (o .:? "isLive") <*>
                     (o .:? "numNewerVersions")
                     <*> (o .:? "createdBefore"))

instance ToJSON Condition where
        toJSON Condition{..}
          = object
              (catMaybes
                 [("age" .=) <$> _cAge, ("isLive" .=) <$> _cIsLive,
                  ("numNewerVersions" .=) <$> _cNumNewerVersions,
                  ("createdBefore" .=) <$> _cCreatedBefore])

-- | The bucket\'s logging configuration, which defines the destination
-- bucket and optional name prefix for the current bucket\'s logs.
--
-- /See:/ 'logging' smart constructor.
data Logging = Logging
    { _lLogBucket       :: !(Maybe Text)
    , _lLogObjectPrefix :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Logging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLogBucket'
--
-- * 'lLogObjectPrefix'
logging
    :: Logging
logging =
    Logging
    { _lLogBucket = Nothing
    , _lLogObjectPrefix = Nothing
    }

-- | The destination bucket where the current bucket\'s logs should be
-- placed.
lLogBucket :: Lens' Logging (Maybe Text)
lLogBucket
  = lens _lLogBucket (\ s a -> s{_lLogBucket = a})

-- | A prefix for log object names.
lLogObjectPrefix :: Lens' Logging (Maybe Text)
lLogObjectPrefix
  = lens _lLogObjectPrefix
      (\ s a -> s{_lLogObjectPrefix = a})

instance FromJSON Logging where
        parseJSON
          = withObject "Logging"
              (\ o ->
                 Logging <$>
                   (o .:? "logBucket") <*> (o .:? "logObjectPrefix"))

instance ToJSON Logging where
        toJSON Logging{..}
          = object
              (catMaybes
                 [("logBucket" .=) <$> _lLogBucket,
                  ("logObjectPrefix" .=) <$> _lLogObjectPrefix])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON ObjectAccessControl where
        parseJSON
          = withObject "ObjectAccessControl"
              (\ o ->
                 ObjectAccessControl <$>
                   (o .:? "email") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "storage#objectAccessControl")
                     <*> (o .:? "domain")
                     <*> (o .:? "bucket")
                     <*> (o .:? "role")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "object")
                     <*> (o .:? "id")
                     <*> (o .:? "entity")
                     <*> (o .:? "generation")
                     <*> (o .:? "entityId"))

instance ToJSON ObjectAccessControl where
        toJSON ObjectAccessControl{..}
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
                  ("entity" .=) <$> _oacaEntity,
                  ("generation" .=) <$> _oacaGeneration,
                  ("entityId" .=) <$> _oacaEntityId])

--
-- /See:/ 'sourceObjectsItem' smart constructor.
data SourceObjectsItem = SourceObjectsItem
    { _soiName                :: !(Maybe Text)
    , _soiObjectPreconditions :: !(Maybe ObjectPreconditions)
    , _soiGeneration          :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceObjectsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'soiName'
--
-- * 'soiObjectPreconditions'
--
-- * 'soiGeneration'
sourceObjectsItem
    :: SourceObjectsItem
sourceObjectsItem =
    SourceObjectsItem
    { _soiName = Nothing
    , _soiObjectPreconditions = Nothing
    , _soiGeneration = Nothing
    }

-- | The source object\'s name. The source object\'s bucket is implicitly the
-- destination bucket.
soiName :: Lens' SourceObjectsItem (Maybe Text)
soiName = lens _soiName (\ s a -> s{_soiName = a})

-- | Conditions that must be met for this operation to execute.
soiObjectPreconditions :: Lens' SourceObjectsItem (Maybe ObjectPreconditions)
soiObjectPreconditions
  = lens _soiObjectPreconditions
      (\ s a -> s{_soiObjectPreconditions = a})

-- | The generation of this object to use as the source.
soiGeneration :: Lens' SourceObjectsItem (Maybe Int64)
soiGeneration
  = lens _soiGeneration
      (\ s a -> s{_soiGeneration = a})

instance FromJSON SourceObjectsItem where
        parseJSON
          = withObject "SourceObjectsItem"
              (\ o ->
                 SourceObjectsItem <$>
                   (o .:? "name") <*> (o .:? "objectPreconditions") <*>
                     (o .:? "generation"))

instance ToJSON SourceObjectsItem where
        toJSON SourceObjectsItem{..}
          = object
              (catMaybes
                 [("name" .=) <$> _soiName,
                  ("objectPreconditions" .=) <$>
                    _soiObjectPreconditions,
                  ("generation" .=) <$> _soiGeneration])
