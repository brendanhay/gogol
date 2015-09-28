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
-- -- | Lets you store and retrieve potentially-large, immutable data objects.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference>
module Network.Google.Storage
    (
    -- * REST Resources

    -- ** Cloud Storage API
      Storage
    , storage
    , storageURL

    -- ** storage.bucketAccessControls.delete
    , module Network.Google.API.Storage.BucketAccessControls.Delete

    -- ** storage.bucketAccessControls.get
    , module Network.Google.API.Storage.BucketAccessControls.Get

    -- ** storage.bucketAccessControls.insert
    , module Network.Google.API.Storage.BucketAccessControls.Insert

    -- ** storage.bucketAccessControls.list
    , module Network.Google.API.Storage.BucketAccessControls.List

    -- ** storage.bucketAccessControls.patch
    , module Network.Google.API.Storage.BucketAccessControls.Patch

    -- ** storage.bucketAccessControls.update
    , module Network.Google.API.Storage.BucketAccessControls.Update

    -- ** storage.buckets.delete
    , module Network.Google.API.Storage.Buckets.Delete

    -- ** storage.buckets.get
    , module Network.Google.API.Storage.Buckets.Get

    -- ** storage.buckets.insert
    , module Network.Google.API.Storage.Buckets.Insert

    -- ** storage.buckets.list
    , module Network.Google.API.Storage.Buckets.List

    -- ** storage.buckets.patch
    , module Network.Google.API.Storage.Buckets.Patch

    -- ** storage.buckets.update
    , module Network.Google.API.Storage.Buckets.Update

    -- ** storage.channels.stop
    , module Network.Google.API.Storage.Channels.Stop

    -- ** storage.defaultObjectAccessControls.delete
    , module Network.Google.API.Storage.DefaultObjectAccessControls.Delete

    -- ** storage.defaultObjectAccessControls.get
    , module Network.Google.API.Storage.DefaultObjectAccessControls.Get

    -- ** storage.defaultObjectAccessControls.insert
    , module Network.Google.API.Storage.DefaultObjectAccessControls.Insert

    -- ** storage.defaultObjectAccessControls.list
    , module Network.Google.API.Storage.DefaultObjectAccessControls.List

    -- ** storage.defaultObjectAccessControls.patch
    , module Network.Google.API.Storage.DefaultObjectAccessControls.Patch

    -- ** storage.defaultObjectAccessControls.update
    , module Network.Google.API.Storage.DefaultObjectAccessControls.Update

    -- ** storage.objectAccessControls.delete
    , module Network.Google.API.Storage.ObjectAccessControls.Delete

    -- ** storage.objectAccessControls.get
    , module Network.Google.API.Storage.ObjectAccessControls.Get

    -- ** storage.objectAccessControls.insert
    , module Network.Google.API.Storage.ObjectAccessControls.Insert

    -- ** storage.objectAccessControls.list
    , module Network.Google.API.Storage.ObjectAccessControls.List

    -- ** storage.objectAccessControls.patch
    , module Network.Google.API.Storage.ObjectAccessControls.Patch

    -- ** storage.objectAccessControls.update
    , module Network.Google.API.Storage.ObjectAccessControls.Update

    -- ** storage.objects.compose
    , module Network.Google.API.Storage.Objects.Compose

    -- ** storage.objects.copy
    , module Network.Google.API.Storage.Objects.Copy

    -- ** storage.objects.delete
    , module Network.Google.API.Storage.Objects.Delete

    -- ** storage.objects.get
    , module Network.Google.API.Storage.Objects.Get

    -- ** storage.objects.insert
    , module Network.Google.API.Storage.Objects.Insert

    -- ** storage.objects.list
    , module Network.Google.API.Storage.Objects.List

    -- ** storage.objects.patch
    , module Network.Google.API.Storage.Objects.Patch

    -- ** storage.objects.update
    , module Network.Google.API.Storage.Objects.Update

    -- ** storage.objects.watchAll
    , module Network.Google.API.Storage.Objects.WatchAll

    -- * Types

    -- ** ComposeRequestItemSourceObjects
    , ComposeRequestItemSourceObjects
    , composeRequestItemSourceObjects
    , crisoName
    , crisoObjectPreconditions
    , crisoGeneration

    -- ** ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- ** Alt
    , Alt (..)

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

    -- ** BucketItemCors
    , BucketItemCors
    , bucketItemCors
    , bicMaxAgeSeconds
    , bicOrigin
    , bicResponseHeader
    , bicMethod

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

    -- ** ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

    -- ** ObjectsInsert'Projection
    , ObjectsInsert'Projection (..)

    -- ** BucketsInsert'Projection
    , BucketsInsert'Projection (..)

    -- ** BucketConditionItemRuleLifecycle
    , BucketConditionItemRuleLifecycle
    , bucketConditionItemRuleLifecycle
    , bcirlAge
    , bcirlIsLive
    , bcirlNumNewerVersions
    , bcirlCreatedBefore

    -- ** BucketLifecycle
    , BucketLifecycle
    , bucketLifecycle
    , blRule

    -- ** BucketActionItemRuleLifecycle
    , BucketActionItemRuleLifecycle
    , bucketActionItemRuleLifecycle
    , bairlType

    -- ** BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bKind
    , bItems

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

    -- ** Objects
    , Objects
    , objects
    , objNextPageToken
    , objKind
    , objItems
    , objPrefixes

    -- ** BucketLogging
    , BucketLogging
    , bucketLogging
    , blLogBucket
    , blLogObjectPrefix

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** BucketOwner
    , BucketOwner
    , bucketOwner
    , boEntity
    , boEntityId

    -- ** ObjectsWatchAll'Projection
    , ObjectsWatchAll'Projection (..)

    -- ** BucketVersioning
    , BucketVersioning
    , bucketVersioning
    , bvEnabled

    -- ** BucketsGet'Projection
    , BucketsGet'Projection (..)

    -- ** ObjectsCopy'Projection
    , ObjectsCopy'Projection (..)

    -- ** BucketsPatch'Projection
    , BucketsPatch'Projection (..)

    -- ** Buckets
    , Buckets
    , buckets
    , bbNextPageToken
    , bbKind
    , bbItems

    -- ** ObjectsList'Projection
    , ObjectsList'Projection (..)

    -- ** BucketsUpdate'Projection
    , BucketsUpdate'Projection (..)

    -- ** BucketItemRuleLifecycle
    , BucketItemRuleLifecycle
    , bucketItemRuleLifecycle
    , birlAction
    , birlCondition

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

    -- ** ObjectMetadata
    , ObjectMetadata
    , objectMetadata

    -- ** ObjectsUpdate'Projection
    , ObjectsUpdate'Projection (..)

    -- ** BucketsList'Projection
    , BucketsList'Projection (..)

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

    -- ** ComposeRequestObjectPreconditionsItemSourceObjects
    , ComposeRequestObjectPreconditionsItemSourceObjects
    , composeRequestObjectPreconditionsItemSourceObjects
    , cropisoIfGenerationMatch

    -- ** BucketWebsite
    , BucketWebsite
    , bucketWebsite
    , bwMainPageSuffix
    , bwNotFoundPage

    -- ** ObjectsGet'Projection
    , ObjectsGet'Projection (..)

    -- ** ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- ** ObjectsPatch'Projection
    , ObjectsPatch'Projection (..)
    ) where

import           Network.Google.API.Storage.BucketAccessControls.Delete
import           Network.Google.API.Storage.BucketAccessControls.Get
import           Network.Google.API.Storage.BucketAccessControls.Insert
import           Network.Google.API.Storage.BucketAccessControls.List
import           Network.Google.API.Storage.BucketAccessControls.Patch
import           Network.Google.API.Storage.BucketAccessControls.Update
import           Network.Google.API.Storage.Buckets.Delete
import           Network.Google.API.Storage.Buckets.Get
import           Network.Google.API.Storage.Buckets.Insert
import           Network.Google.API.Storage.Buckets.List
import           Network.Google.API.Storage.Buckets.Patch
import           Network.Google.API.Storage.Buckets.Update
import           Network.Google.API.Storage.Channels.Stop
import           Network.Google.API.Storage.DefaultObjectAccessControls.Delete
import           Network.Google.API.Storage.DefaultObjectAccessControls.Get
import           Network.Google.API.Storage.DefaultObjectAccessControls.Insert
import           Network.Google.API.Storage.DefaultObjectAccessControls.List
import           Network.Google.API.Storage.DefaultObjectAccessControls.Patch
import           Network.Google.API.Storage.DefaultObjectAccessControls.Update
import           Network.Google.API.Storage.ObjectAccessControls.Delete
import           Network.Google.API.Storage.ObjectAccessControls.Get
import           Network.Google.API.Storage.ObjectAccessControls.Insert
import           Network.Google.API.Storage.ObjectAccessControls.List
import           Network.Google.API.Storage.ObjectAccessControls.Patch
import           Network.Google.API.Storage.ObjectAccessControls.Update
import           Network.Google.API.Storage.Objects.Compose
import           Network.Google.API.Storage.Objects.Copy
import           Network.Google.API.Storage.Objects.Delete
import           Network.Google.API.Storage.Objects.Get
import           Network.Google.API.Storage.Objects.Insert
import           Network.Google.API.Storage.Objects.List
import           Network.Google.API.Storage.Objects.Patch
import           Network.Google.API.Storage.Objects.Update
import           Network.Google.API.Storage.Objects.WatchAll
import           Network.Google.Prelude
import           Network.Google.Storage.Types

{- $resources
TODO
-}

type Storage =
     BucketAccessControlsDeleteAPI :<|> BucketsInsertAPI
       :<|> ObjectAccessControlsInsertAPI
       :<|> DefaultObjectAccessControlsUpdateAPI
       :<|> ObjectsDeleteAPI
       :<|> ObjectsGetAPI
       :<|> ObjectsCopyAPI
       :<|> ObjectAccessControlsGetAPI
       :<|> BucketsGetAPI
       :<|> ObjectsWatchAllAPI
       :<|> DefaultObjectAccessControlsListAPI
       :<|> ObjectsPatchAPI
       :<|> DefaultObjectAccessControlsGetAPI
       :<|> BucketAccessControlsUpdateAPI
       :<|> BucketAccessControlsInsertAPI
       :<|> DefaultObjectAccessControlsPatchAPI
       :<|> BucketsDeleteAPI
       :<|> ObjectAccessControlsDeleteAPI
       :<|> ObjectsListAPI
       :<|> ObjectsUpdateAPI
       :<|> BucketsUpdateAPI
       :<|> BucketAccessControlsListAPI
       :<|> ObjectAccessControlsUpdateAPI
       :<|> BucketAccessControlsGetAPI
       :<|> DefaultObjectAccessControlsInsertAPI
       :<|> BucketsListAPI
       :<|> ObjectAccessControlsListAPI
       :<|> ChannelsStopAPI
       :<|> ObjectsComposeAPI
       :<|> BucketAccessControlsPatchAPI
       :<|> ObjectsInsertAPI
       :<|> DefaultObjectAccessControlsDeleteAPI
       :<|> BucketsPatchAPI
       :<|> ObjectAccessControlsPatchAPI

storage :: Proxy Storage
storage = Proxy
