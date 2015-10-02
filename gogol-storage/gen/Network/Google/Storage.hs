{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Storage
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you store and retrieve potentially-large, immutable data objects.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference>
module Network.Google.Storage
    (
    -- * API
      StorageAPI
    , storageAPI
    , storageURL

    -- * Service Methods

    -- * REST Resources

    -- ** StorageBucketAccessControlsDelete
    , module Network.Google.Resource.Storage.BucketAccessControls.Delete

    -- ** StorageBucketAccessControlsGet
    , module Network.Google.Resource.Storage.BucketAccessControls.Get

    -- ** StorageBucketAccessControlsInsert
    , module Network.Google.Resource.Storage.BucketAccessControls.Insert

    -- ** StorageBucketAccessControlsList
    , module Network.Google.Resource.Storage.BucketAccessControls.List

    -- ** StorageBucketAccessControlsPatch
    , module Network.Google.Resource.Storage.BucketAccessControls.Patch

    -- ** StorageBucketAccessControlsUpdate
    , module Network.Google.Resource.Storage.BucketAccessControls.Update

    -- ** StorageBucketsDelete
    , module Network.Google.Resource.Storage.Buckets.Delete

    -- ** StorageBucketsGet
    , module Network.Google.Resource.Storage.Buckets.Get

    -- ** StorageBucketsInsert
    , module Network.Google.Resource.Storage.Buckets.Insert

    -- ** StorageBucketsList
    , module Network.Google.Resource.Storage.Buckets.List

    -- ** StorageBucketsPatch
    , module Network.Google.Resource.Storage.Buckets.Patch

    -- ** StorageBucketsUpdate
    , module Network.Google.Resource.Storage.Buckets.Update

    -- ** StorageChannelsStop
    , module Network.Google.Resource.Storage.Channels.Stop

    -- ** StorageDefaultObjectAccessControlsDelete
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete

    -- ** StorageDefaultObjectAccessControlsGet
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Get

    -- ** StorageDefaultObjectAccessControlsInsert
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert

    -- ** StorageDefaultObjectAccessControlsList
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.List

    -- ** StorageDefaultObjectAccessControlsPatch
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Patch

    -- ** StorageDefaultObjectAccessControlsUpdate
    , module Network.Google.Resource.Storage.DefaultObjectAccessControls.Update

    -- ** StorageObjectAccessControlsDelete
    , module Network.Google.Resource.Storage.ObjectAccessControls.Delete

    -- ** StorageObjectAccessControlsGet
    , module Network.Google.Resource.Storage.ObjectAccessControls.Get

    -- ** StorageObjectAccessControlsInsert
    , module Network.Google.Resource.Storage.ObjectAccessControls.Insert

    -- ** StorageObjectAccessControlsList
    , module Network.Google.Resource.Storage.ObjectAccessControls.List

    -- ** StorageObjectAccessControlsPatch
    , module Network.Google.Resource.Storage.ObjectAccessControls.Patch

    -- ** StorageObjectAccessControlsUpdate
    , module Network.Google.Resource.Storage.ObjectAccessControls.Update

    -- ** StorageObjectsCompose
    , module Network.Google.Resource.Storage.Objects.Compose

    -- ** StorageObjectsCopy
    , module Network.Google.Resource.Storage.Objects.Copy

    -- ** StorageObjectsDelete
    , module Network.Google.Resource.Storage.Objects.Delete

    -- ** StorageObjectsGet
    , module Network.Google.Resource.Storage.Objects.Get

    -- ** StorageObjectsInsert
    , module Network.Google.Resource.Storage.Objects.Insert

    -- ** StorageObjectsList
    , module Network.Google.Resource.Storage.Objects.List

    -- ** StorageObjectsPatch
    , module Network.Google.Resource.Storage.Objects.Patch

    -- ** StorageObjectsUpdate
    , module Network.Google.Resource.Storage.Objects.Update

    -- ** StorageObjectsWatchAll
    , module Network.Google.Resource.Storage.Objects.WatchAll

    -- * Types

    -- ** BucketVersioning
    , BucketVersioning
    , bucketVersioning
    , bvEnabled

    -- ** ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- ** ComposeRequestSourceObjects
    , ComposeRequestSourceObjects
    , composeRequestSourceObjects
    , crsoName
    , crsoObjectPreconditions
    , crsoGeneration

    -- ** BucketLogging
    , BucketLogging
    , bucketLogging
    , blLogBucket
    , blLogObjectPrefix

    -- ** Buckets
    , Buckets
    , buckets
    , bNextPageToken
    , bKind
    , bItems

    -- ** BucketLifecycleRuleCondition
    , BucketLifecycleRuleCondition
    , bucketLifecycleRuleCondition
    , blrcAge
    , blrcIsLive
    , blrcNumNewerVersions
    , blrcCreatedBefore

    -- ** BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- ** BucketLifecycleRuleAction
    , BucketLifecycleRuleAction
    , bucketLifecycleRuleAction
    , blraType

    -- ** ObjectMetadata
    , ObjectMetadata
    , objectMetadata

    -- ** StorageBucketsListProjection
    , StorageBucketsListProjection (..)

    -- ** BucketCORS
    , BucketCORS
    , bucketCORS
    , bcMaxAgeSeconds
    , bcOrigin
    , bcResponseHeader
    , bcMethod

    -- ** StorageObjectsUpdateProjection
    , StorageObjectsUpdateProjection (..)

    -- ** Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayLoad
    , cParams
    , cId
    , cType

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
    , bucCORS
    , bucTimeCreated
    , bucId
    , bucDefaultObjectACL
    , bucMetageneration
    , bucLogging
    , bucACL

    -- ** BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bacKind
    , bacItems

    -- ** BucketLifecycleRule
    , BucketLifecycleRule
    , bucketLifecycleRule
    , blrAction
    , blrCondition

    -- ** Objects
    , Objects
    , objects
    , oNextPageToken
    , oKind
    , oItems
    , oPrefixes

    -- ** ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- ** StorageObjectsPatchProjection
    , StorageObjectsPatchProjection (..)

    -- ** StorageObjectsGetProjection
    , StorageObjectsGetProjection (..)

    -- ** StorageBucketsGetProjection
    , StorageBucketsGetProjection (..)

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** StorageObjectsCopyProjection
    , StorageObjectsCopyProjection (..)

    -- ** StorageBucketsPatchProjection
    , StorageBucketsPatchProjection (..)

    -- ** BucketOwner
    , BucketOwner
    , bucketOwner
    , boEntity
    , boEntityId

    -- ** StorageObjectsWatchAllProjection
    , StorageObjectsWatchAllProjection (..)

    -- ** BucketWebsite
    , BucketWebsite
    , bucketWebsite
    , bwMainPageSuffix
    , bwNotFoundPage

    -- ** BucketAccessControl
    , BucketAccessControl
    , bucketAccessControl
    , bacaEmail
    , bacaEtag
    , bacaKind
    , bacaDomain
    , bacaBucket
    , bacaRole
    , bacaSelfLink
    , bacaId
    , bacaEntity
    , bacaEntityId

    -- ** ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

    -- ** StorageObjectsInsertProjection
    , StorageObjectsInsertProjection (..)

    -- ** Object
    , Object
    , object'
    , objEtag
    , objSize
    , objKind
    , objTimeDeleted
    , objCrc32c
    , objBucket
    , objOwner
    , objSelfLink
    , objMediaLink
    , objComponentCount
    , objName
    , objStorageClass
    , objContentEncoding
    , objMetadata
    , objId
    , objUpdated
    , objContentLanguage
    , objCacheControl
    , objMetageneration
    , objGeneration
    , objACL
    , objContentDisPosition
    , objMD5Hash
    , objContentType

    -- ** ComposeRequestSourceObjectsObjectPreconditions
    , ComposeRequestSourceObjectsObjectPreconditions
    , composeRequestSourceObjectsObjectPreconditions
    , crsoopIfGenerationMatch

    -- ** StorageBucketsUpdateProjection
    , StorageBucketsUpdateProjection (..)

    -- ** StorageObjectsListProjection
    , StorageObjectsListProjection (..)

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

    -- ** StorageBucketsInsertProjection
    , StorageBucketsInsertProjection (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Storage.BucketAccessControls.Delete
import           Network.Google.Resource.Storage.BucketAccessControls.Get
import           Network.Google.Resource.Storage.BucketAccessControls.Insert
import           Network.Google.Resource.Storage.BucketAccessControls.List
import           Network.Google.Resource.Storage.BucketAccessControls.Patch
import           Network.Google.Resource.Storage.BucketAccessControls.Update
import           Network.Google.Resource.Storage.Buckets.Delete
import           Network.Google.Resource.Storage.Buckets.Get
import           Network.Google.Resource.Storage.Buckets.Insert
import           Network.Google.Resource.Storage.Buckets.List
import           Network.Google.Resource.Storage.Buckets.Patch
import           Network.Google.Resource.Storage.Buckets.Update
import           Network.Google.Resource.Storage.Channels.Stop
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Get
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.List
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Patch
import           Network.Google.Resource.Storage.DefaultObjectAccessControls.Update
import           Network.Google.Resource.Storage.ObjectAccessControls.Delete
import           Network.Google.Resource.Storage.ObjectAccessControls.Get
import           Network.Google.Resource.Storage.ObjectAccessControls.Insert
import           Network.Google.Resource.Storage.ObjectAccessControls.List
import           Network.Google.Resource.Storage.ObjectAccessControls.Patch
import           Network.Google.Resource.Storage.ObjectAccessControls.Update
import           Network.Google.Resource.Storage.Objects.Compose
import           Network.Google.Resource.Storage.Objects.Copy
import           Network.Google.Resource.Storage.Objects.Delete
import           Network.Google.Resource.Storage.Objects.Get
import           Network.Google.Resource.Storage.Objects.Insert
import           Network.Google.Resource.Storage.Objects.List
import           Network.Google.Resource.Storage.Objects.Patch
import           Network.Google.Resource.Storage.Objects.Update
import           Network.Google.Resource.Storage.Objects.WatchAll
import           Network.Google.Storage.Types

{- $resources
TODO
-}

type StorageAPI =
     BucketsInsertResource :<|> BucketsListResource :<|>
       BucketsPatchResource
       :<|> BucketsGetResource
       :<|> BucketsDeleteResource
       :<|> BucketsUpdateResource
       :<|> ChannelsStopResource
       :<|> BucketAccessControlsInsertResource
       :<|> BucketAccessControlsListResource
       :<|> BucketAccessControlsPatchResource
       :<|> BucketAccessControlsGetResource
       :<|> BucketAccessControlsDeleteResource
       :<|> BucketAccessControlsUpdateResource
       :<|> ObjectsInsertResource
       :<|> ObjectsListResource
       :<|> ObjectsCopyResource
       :<|> ObjectsWatchAllResource
       :<|> ObjectsPatchResource
       :<|> ObjectsGetResource
       :<|> ObjectsComposeResource
       :<|> ObjectsDeleteResource
       :<|> ObjectsUpdateResource
       :<|> DefaultObjectAccessControlsInsertResource
       :<|> DefaultObjectAccessControlsListResource
       :<|> DefaultObjectAccessControlsPatchResource
       :<|> DefaultObjectAccessControlsGetResource
       :<|> DefaultObjectAccessControlsDeleteResource
       :<|> DefaultObjectAccessControlsUpdateResource
       :<|> ObjectAccessControlsInsertResource
       :<|> ObjectAccessControlsListResource
       :<|> ObjectAccessControlsPatchResource
       :<|> ObjectAccessControlsGetResource
       :<|> ObjectAccessControlsDeleteResource
       :<|> ObjectAccessControlsUpdateResource

storageAPI :: Proxy StorageAPI
storageAPI = Proxy
