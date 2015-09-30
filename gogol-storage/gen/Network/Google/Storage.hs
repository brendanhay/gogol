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
    -- * API
      StorageAPI
    , storageAPI
    , storageURL

    -- * Service Methods

    -- * REST Resources

    -- ** StorageBucketAccessControlsDelete
    , module Storage.BucketAccessControls.Delete

    -- ** StorageBucketAccessControlsGet
    , module Storage.BucketAccessControls.Get

    -- ** StorageBucketAccessControlsInsert
    , module Storage.BucketAccessControls.Insert

    -- ** StorageBucketAccessControlsList
    , module Storage.BucketAccessControls.List

    -- ** StorageBucketAccessControlsPatch
    , module Storage.BucketAccessControls.Patch

    -- ** StorageBucketAccessControlsUpdate
    , module Storage.BucketAccessControls.Update

    -- ** StorageBucketsDelete
    , module Storage.Buckets.Delete

    -- ** StorageBucketsGet
    , module Storage.Buckets.Get

    -- ** StorageBucketsInsert
    , module Storage.Buckets.Insert

    -- ** StorageBucketsList
    , module Storage.Buckets.List

    -- ** StorageBucketsPatch
    , module Storage.Buckets.Patch

    -- ** StorageBucketsUpdate
    , module Storage.Buckets.Update

    -- ** StorageChannelsStop
    , module Storage.Channels.Stop

    -- ** StorageDefaultObjectAccessControlsDelete
    , module Storage.DefaultObjectAccessControls.Delete

    -- ** StorageDefaultObjectAccessControlsGet
    , module Storage.DefaultObjectAccessControls.Get

    -- ** StorageDefaultObjectAccessControlsInsert
    , module Storage.DefaultObjectAccessControls.Insert

    -- ** StorageDefaultObjectAccessControlsList
    , module Storage.DefaultObjectAccessControls.List

    -- ** StorageDefaultObjectAccessControlsPatch
    , module Storage.DefaultObjectAccessControls.Patch

    -- ** StorageDefaultObjectAccessControlsUpdate
    , module Storage.DefaultObjectAccessControls.Update

    -- ** StorageObjectAccessControlsDelete
    , module Storage.ObjectAccessControls.Delete

    -- ** StorageObjectAccessControlsGet
    , module Storage.ObjectAccessControls.Get

    -- ** StorageObjectAccessControlsInsert
    , module Storage.ObjectAccessControls.Insert

    -- ** StorageObjectAccessControlsList
    , module Storage.ObjectAccessControls.List

    -- ** StorageObjectAccessControlsPatch
    , module Storage.ObjectAccessControls.Patch

    -- ** StorageObjectAccessControlsUpdate
    , module Storage.ObjectAccessControls.Update

    -- ** StorageObjectsCompose
    , module Storage.Objects.Compose

    -- ** StorageObjectsCopy
    , module Storage.Objects.Copy

    -- ** StorageObjectsDelete
    , module Storage.Objects.Delete

    -- ** StorageObjectsGet
    , module Storage.Objects.Get

    -- ** StorageObjectsInsert
    , module Storage.Objects.Insert

    -- ** StorageObjectsList
    , module Storage.Objects.List

    -- ** StorageObjectsPatch
    , module Storage.Objects.Patch

    -- ** StorageObjectsUpdate
    , module Storage.Objects.Update

    -- ** StorageObjectsWatchAll
    , module Storage.Objects.WatchAll

    -- * Types

    -- ** Buckets
    , Buckets
    , buckets
    , bNextPageToken
    , bKind
    , bItems

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

    -- ** BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bacKind
    , bacItems

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
    , objAcl
    , objContentDisposition
    , objMd5Hash
    , objContentType

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
     Buckets :<|> Channels :<|> BucketAccessControls :<|>
       Objects
       :<|> DefaultObjectAccessControls
       :<|> ObjectAccessControls

storageAPI :: Proxy StorageAPI
storageAPI = Proxy
