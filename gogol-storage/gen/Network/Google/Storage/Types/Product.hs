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

-- | A list of buckets.
--
-- /See:/ 'buckets' smart constructor.
data Buckets = Buckets
    { _bNextPageToken :: !(Maybe Text)
    , _bKind          :: !Text
    , _bItems         :: !(Maybe [Maybe Bucket])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
bItems :: Lens' Buckets [Maybe Bucket]
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
                 [("resourceUri" .=) <$> _cResourceUri,
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
    , _bucWebsite          :: !(Maybe BucketWebsite)
    , _bucLifecycle        :: !(Maybe BucketLifecycle)
    , _bucOwner            :: !(Maybe BucketOwner)
    , _bucSelfLink         :: !(Maybe Text)
    , _bucName             :: !(Maybe Text)
    , _bucStorageClass     :: !(Maybe Text)
    , _bucVersioning       :: !(Maybe BucketVersioning)
    , _bucCors             :: !(Maybe [BucketCORSItem])
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
bucCors :: Lens' Bucket [BucketCORSItem]
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
                  ("cors" .=) <$> _bucCors,
                  ("timeCreated" .=) <$> _bucTimeCreated,
                  ("id" .=) <$> _bucId,
                  ("defaultObjectAcl" .=) <$> _bucDefaultObjectAcl,
                  ("metageneration" .=) <$> _bucMetageneration,
                  ("logging" .=) <$> _bucLogging,
                  ("acl" .=) <$> _bucAcl])

-- | An access-control list.
--
-- /See:/ 'bucketAccessControls' smart constructor.
data BucketAccessControls = BucketAccessControls
    { _bacKind  :: !Text
    , _bacItems :: !(Maybe [Maybe BucketAccessControl])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
bacItems :: Lens' BucketAccessControls [Maybe BucketAccessControl]
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

-- | A list of objects.
--
-- /See:/ 'objects' smart constructor.
data Objects = Objects
    { _oNextPageToken :: !(Maybe Text)
    , _oKind          :: !Text
    , _oItems         :: !(Maybe [Maybe Object])
    , _oPrefixes      :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
oItems :: Lens' Objects [Maybe Object]
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

-- | A Compose request.
--
-- /See:/ 'composeRequest' smart constructor.
data ComposeRequest = ComposeRequest
    { _crDestination   :: !(Maybe (Maybe Object))
    , _crKind          :: !Text
    , _crSourceObjects :: !(Maybe [ComposeRequestSourceObjectsItem])
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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    , _oacItems :: !(Maybe [JSON])
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
oacItems :: Lens' ObjectAccessControls [JSON]
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
    , _objTimeDeleted        :: !(Maybe UTCTime)
    , _objCrc32c             :: !(Maybe Text)
    , _objBucket             :: !(Maybe Text)
    , _objOwner              :: !(Maybe ObjectOwner)
    , _objSelfLink           :: !(Maybe Text)
    , _objMediaLink          :: !(Maybe Text)
    , _objComponentCount     :: !(Maybe Int32)
    , _objName               :: !(Maybe Text)
    , _objStorageClass       :: !(Maybe Text)
    , _objContentEncoding    :: !(Maybe Text)
    , _objMetadata           :: !(Maybe ObjectMetadata)
    , _objId                 :: !(Maybe Text)
    , _objUpdated            :: !(Maybe UTCTime)
    , _objContentLanguage    :: !(Maybe Text)
    , _objCacheControl       :: !(Maybe Text)
    , _objMetageneration     :: !(Maybe Int64)
    , _objGeneration         :: !(Maybe Int64)
    , _objAcl                :: !(Maybe [Maybe ObjectAccessControl])
    , _objContentDisposition :: !(Maybe Text)
    , _objMd5Hash            :: !(Maybe Text)
    , _objContentType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'objAcl'
--
-- * 'objContentDisposition'
--
-- * 'objMd5Hash'
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
    , _objAcl = Nothing
    , _objContentDisposition = Nothing
    , _objMd5Hash = Nothing
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
objMetadata :: Lens' Object (Maybe ObjectMetadata)
objMetadata
  = lens _objMetadata (\ s a -> s{_objMetadata = a})

-- | The ID of the object.
objId :: Lens' Object (Maybe Text)
objId = lens _objId (\ s a -> s{_objId = a})

-- | Modification time of the object metadata in RFC 3339 format.
objUpdated :: Lens' Object (Maybe UTCTime)
objUpdated
  = lens _objUpdated (\ s a -> s{_objUpdated = a})

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
objAcl :: Lens' Object [Maybe ObjectAccessControl]
objAcl
  = lens _objAcl (\ s a -> s{_objAcl = a}) . _Default .
      _Coerce

-- | Content-Disposition of the object data.
objContentDisposition :: Lens' Object (Maybe Text)
objContentDisposition
  = lens _objContentDisposition
      (\ s a -> s{_objContentDisposition = a})

-- | MD5 hash of the data; encoded using base64.
objMd5Hash :: Lens' Object (Maybe Text)
objMd5Hash
  = lens _objMd5Hash (\ s a -> s{_objMd5Hash = a})

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
                  ("acl" .=) <$> _objAcl,
                  ("contentDisposition" .=) <$> _objContentDisposition,
                  ("md5Hash" .=) <$> _objMd5Hash,
                  ("contentType" .=) <$> _objContentType])

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
