{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudStorage
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you store and retrieve potentially-large, immutable data objects.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference>
module Network.Google.CloudStorage
    (
    -- * Resources
      CloudStorage
    , BucketsAPI
    , BucketsInsert
    , BucketsList
    , BucketsPatch
    , BucketsGet
    , BucketsDelete
    , BucketsUpdate
    , ChannelsAPI
    , ChannelsStop
    , BucketAccessControlsAPI
    , BucketAccessControlsInsert
    , BucketAccessControlsList
    , BucketAccessControlsPatch
    , BucketAccessControlsGet
    , BucketAccessControlsDelete
    , BucketAccessControlsUpdate
    , ObjectsAPI
    , ObjectsInsert
    , ObjectsList
    , ObjectsCopy
    , ObjectsWatchAll
    , ObjectsPatch
    , ObjectsGet
    , ObjectsCompose
    , ObjectsDelete
    , ObjectsUpdate
    , DefaultObjectAccessControlsAPI
    , DefaultObjectAccessControlsInsert
    , DefaultObjectAccessControlsList
    , DefaultObjectAccessControlsPatch
    , DefaultObjectAccessControlsGet
    , DefaultObjectAccessControlsDelete
    , DefaultObjectAccessControlsUpdate
    , ObjectAccessControlsAPI
    , ObjectAccessControlsInsert
    , ObjectAccessControlsList
    , ObjectAccessControlsPatch
    , ObjectAccessControlsGet
    , ObjectAccessControlsDelete
    , ObjectAccessControlsUpdate

    -- * Types

    -- ** Bucket
    , Bucket
    , bucket
    , bucEtag
    , bucLocation
    , bucKind
    , bucWebsite
    , bucLifecycle
    , bucOwner
    , bucSelfLink
    , bucName
    , bucStorageClass
    , bucVersioning
    , bucCors
    , bucTimeCreated
    , bucId
    , bucDefaultObjectAcl
    , bucMetageneration
    , bucLogging
    , bucAcl

    -- ** BucketAccessControl
    , BucketAccessControl
    , bucketAccessControl
    , bacEmail
    , bacEtag
    , bacKind
    , bacDomain
    , bacBucket
    , bacRole
    , bacSelfLink
    , bacId
    , bacEntity
    , bacEntityId

    -- ** BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bKind
    , bItems

    -- ** BucketActionItemRuleLifecycle
    , BucketActionItemRuleLifecycle
    , bucketActionItemRuleLifecycle
    , bairlType

    -- ** BucketConditionItemRuleLifecycle
    , BucketConditionItemRuleLifecycle
    , bucketConditionItemRuleLifecycle
    , bcirlAge
    , bcirlIsLive
    , bcirlNumNewerVersions
    , bcirlCreatedBefore

    -- ** BucketItemCors
    , BucketItemCors
    , bucketItemCors
    , bicMaxAgeSeconds
    , bicOrigin
    , bicResponseHeader
    , bicMethod

    -- ** BucketItemRuleLifecycle
    , BucketItemRuleLifecycle
    , bucketItemRuleLifecycle
    , birlAction
    , birlCondition

    -- ** BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- ** BucketLogging
    , BucketLogging
    , bucketLogging
    , blLogBucket
    , blLogObjectPrefix

    -- ** BucketOwner
    , BucketOwner
    , bucketOwner
    , boEntity
    , boEntityId

    -- ** BucketVersioning
    , BucketVersioning
    , bucketVersioning
    , bvEnabled

    -- ** BucketWebsite
    , BucketWebsite
    , bucketWebsite
    , bwMainPageSuffix
    , bwNotFoundPage

    -- ** Buckets
    , Buckets
    , buckets
    , bbNextPageToken
    , bbKind
    , bbItems

    -- ** Channel
    , Channel
    , channel
    , cResourceUri
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- ** ComposeRequestItemSourceObjects
    , ComposeRequestItemSourceObjects
    , composeRequestItemSourceObjects
    , crisoName
    , crisoObjectPreconditions
    , crisoGeneration

    -- ** ComposeRequestObjectPreconditionsItemSourceObjects
    , ComposeRequestObjectPreconditionsItemSourceObjects
    , composeRequestObjectPreconditionsItemSourceObjects
    , cropisoIfGenerationMatch

    -- ** Object
    , Object
    , object'
    , oEtag
    , oSize
    , oKind
    , oTimeDeleted
    , oCrc32c
    , oBucket
    , oOwner
    , oSelfLink
    , oMediaLink
    , oComponentCount
    , oName
    , oStorageClass
    , oContentEncoding
    , oMetadata
    , oId
    , oUpdated
    , oContentLanguage
    , oCacheControl
    , oMetageneration
    , oGeneration
    , oAcl
    , oContentDisposition
    , oMd5Hash
    , oContentType

    -- ** ObjectAccessControl
    , ObjectAccessControl
    , objectAccessControl
    , oacaEmail
    , oacaEtag
    , oacaKind
    , oacaDomain
    , oacaBucket
    , oacaRole
    , oacaSelfLink
    , oacaObject
    , oacaId
    , oacaEntity
    , oacaGeneration
    , oacaEntityId

    -- ** ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

    -- ** ObjectMetadata
    , ObjectMetadata
    , objectMetadata

    -- ** ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- ** Objects
    , Objects
    , objects
    , objNextPageToken
    , objKind
    , objItems
    , objPrefixes
    ) where

import           Network.Google.CloudStorage.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type CloudStorage =
     ChannelsAPI :<|>
       BucketAccessControlsAPI :<|>
         ObjectsAPI :<|>
           DefaultObjectAccessControlsAPI :<|>
             ObjectAccessControlsAPI :<|> BucketsAPI

type BucketsAPI =
     BucketsList :<|>
       BucketsPatch :<|>
         BucketsGet :<|>
           BucketsDelete :<|> BucketsUpdate :<|> BucketsInsert

-- | Creates a new bucket.
type BucketsInsert =
     "storage" :> "v1beta2" :> "b" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "project" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of buckets for a given project.
type BucketsList =
     "storage" :> "v1beta2" :> "b" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "project" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "projection" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a bucket. This method supports patch semantics.
type BucketsPatch =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns metadata for the specified bucket.
type BucketsGet =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Permanently deletes an empty bucket.
type BucketsDelete =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a bucket.
type BucketsUpdate =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ChannelsAPI = ChannelsStop

-- | Stop watching resources through this channel
type ChannelsStop =
     "storage" :> "v1beta2" :> "channels" :> "stop" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type BucketAccessControlsAPI =
     BucketAccessControlsList :<|>
       BucketAccessControlsPatch :<|>
         BucketAccessControlsGet :<|>
           BucketAccessControlsDelete :<|>
             BucketAccessControlsUpdate :<|>
               BucketAccessControlsInsert

-- | Creates a new ACL entry on the specified bucket.
type BucketAccessControlsInsert =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "acl"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves ACL entries on the specified bucket.
type BucketAccessControlsList =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "acl"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an ACL entry on the specified bucket. This method supports patch
-- semantics.
type BucketAccessControlsPatch =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "acl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the ACL entry for the specified entity on the specified bucket.
type BucketAccessControlsGet =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "acl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
type BucketAccessControlsDelete =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "acl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an ACL entry on the specified bucket.
type BucketAccessControlsUpdate =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "acl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ObjectsAPI =
     ObjectsList :<|>
       ObjectsCopy :<|>
         ObjectsWatchAll :<|>
           ObjectsPatch :<|>
             ObjectsGet :<|>
               ObjectsCompose :<|>
                 ObjectsDelete :<|> ObjectsUpdate :<|> ObjectsInsert

-- | Stores new data blobs and associated metadata.
type ObjectsInsert =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "ifGenerationNotMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ifGenerationMatch" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of objects matching the criteria.
type ObjectsList =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "prefix" Text
       :> QueryParam "userIp" Text
       :> QueryParam "versions" Bool
       :> QueryParam "key" Text
       :> QueryParam "projection" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "delimiter" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Copies an object to a destination in the same location. Optionally
-- overrides metadata.
type ObjectsCopy =
     "storage" :> "v1beta2" :> "b" :>
       Capture "sourceBucket" Text
       :> "o"
       :> Capture "sourceObject" Text
       :> "copyTo"
       :> "b"
       :> Capture "destinationBucket" Text
       :> "o"
       :> Capture "destinationObject" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifSourceGenerationMatch" Word64
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "ifGenerationNotMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ifSourceMetagenerationNotMatch" Word64
       :> QueryParam "ifSourceMetagenerationMatch" Word64
       :> QueryParam "ifGenerationMatch" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "ifSourceGenerationNotMatch" Word64
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "sourceGeneration" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Watch for changes on all objects in a bucket.
type ObjectsWatchAll =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> "watch"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "prefix" Text
       :> QueryParam "userIp" Text
       :> QueryParam "versions" Bool
       :> QueryParam "key" Text
       :> QueryParam "projection" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "delimiter" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a data blob\'s associated metadata. This method supports patch
-- semantics.
type ObjectsPatch =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "ifGenerationNotMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ifGenerationMatch" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves objects or their associated metadata.
type ObjectsGet =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "ifGenerationNotMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ifGenerationMatch" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Concatenates a list of existing objects into a new object in the same
-- bucket.
type ObjectsCompose =
     "storage" :> "v1beta2" :> "b" :>
       Capture "destinationBucket" Text
       :> "o"
       :> Capture "destinationObject" Text
       :> "compose"
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ifGenerationMatch" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes data blobs and associated metadata. Deletions are permanent if
-- versioning is not enabled for the bucket, or if the generation parameter
-- is used.
type ObjectsDelete =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "ifGenerationNotMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ifGenerationMatch" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a data blob\'s associated metadata.
type ObjectsUpdate =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Word64
       :> QueryParam "ifGenerationNotMatch" Word64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "ifGenerationMatch" Word64
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Word64
       :> QueryParam "projection" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DefaultObjectAccessControlsAPI =
     DefaultObjectAccessControlsList :<|>
       DefaultObjectAccessControlsPatch :<|>
         DefaultObjectAccessControlsGet :<|>
           DefaultObjectAccessControlsDelete :<|>
             DefaultObjectAccessControlsUpdate :<|>
               DefaultObjectAccessControlsInsert

-- | Creates a new default object ACL entry on the specified bucket.
type DefaultObjectAccessControlsInsert =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "defaultObjectAcl"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves default object ACL entries on the specified bucket.
type DefaultObjectAccessControlsList =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "defaultObjectAcl"
       :> QueryParam "quotaUser" Text
       :> QueryParam "ifMetagenerationMatch" Int64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "ifMetagenerationNotMatch" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a default object ACL entry on the specified bucket. This method
-- supports patch semantics.
type DefaultObjectAccessControlsPatch =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "defaultObjectAcl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the default object ACL entry for the specified entity on the
-- specified bucket.
type DefaultObjectAccessControlsGet =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "defaultObjectAcl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Permanently deletes the default object ACL entry for the specified
-- entity on the specified bucket.
type DefaultObjectAccessControlsDelete =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "defaultObjectAcl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a default object ACL entry on the specified bucket.
type DefaultObjectAccessControlsUpdate =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "defaultObjectAcl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ObjectAccessControlsAPI =
     ObjectAccessControlsList :<|>
       ObjectAccessControlsPatch :<|>
         ObjectAccessControlsGet :<|>
           ObjectAccessControlsDelete :<|>
             ObjectAccessControlsUpdate :<|>
               ObjectAccessControlsInsert

-- | Creates a new ACL entry on the specified object.
type ObjectAccessControlsInsert =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> "acl"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves ACL entries on the specified object.
type ObjectAccessControlsList =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> "acl"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an ACL entry on the specified object. This method supports patch
-- semantics.
type ObjectAccessControlsPatch =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> "acl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the ACL entry for the specified entity on the specified object.
type ObjectAccessControlsGet =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> "acl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified object.
type ObjectAccessControlsDelete =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> "acl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an ACL entry on the specified object.
type ObjectAccessControlsUpdate =
     "storage" :> "v1beta2" :> "b" :>
       Capture "bucket" Text
       :> "o"
       :> Capture "object" Text
       :> "acl"
       :> Capture "entity" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "generation" Word64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
