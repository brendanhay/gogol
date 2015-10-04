{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Storage.Types
    (
    -- * Service URL
      storageURL

    -- * ObjectOwner
    , ObjectOwner
    , objectOwner
    , ooEntity
    , ooEntityId

    -- * Buckets
    , Buckets
    , buckets
    , bNextPageToken
    , bKind
    , bItems

    -- * CORSItem
    , CORSItem
    , corsItem
    , ciMaxAgeSeconds
    , ciOrigin
    , ciResponseHeader
    , ciMethod

    -- * StorageBucketsListProjection
    , StorageBucketsListProjection (..)

    -- * StorageObjectsUpdateProjection
    , StorageObjectsUpdateProjection (..)

    -- * Website
    , Website
    , website
    , wMainPageSuffix
    , wNotFoundPage

    -- * RuleItem
    , RuleItem
    , ruleItem
    , riAction
    , riCondition

    -- * Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- * Bucket
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

    -- * BucketAccessControls
    , BucketAccessControls
    , bucketAccessControls
    , bacKind
    , bacItems

    -- * Action
    , Action
    , action
    , aType

    -- * Objects
    , Objects
    , objects
    , oNextPageToken
    , oKind
    , oItems
    , oPrefixes

    -- * Lifecycle
    , Lifecycle
    , lifecycle
    , lRule

    -- * Owner
    , Owner
    , owner
    , oEntity
    , oEntityId

    -- * ComposeRequest
    , ComposeRequest
    , composeRequest
    , crDestination
    , crKind
    , crSourceObjects

    -- * Params
    , Params
    , params

    -- * StorageObjectsPatchProjection
    , StorageObjectsPatchProjection (..)

    -- * StorageObjectsGetProjection
    , StorageObjectsGetProjection (..)

    -- * StorageBucketsGetProjection
    , StorageBucketsGetProjection (..)

    -- * StorageObjectsCopyProjection
    , StorageObjectsCopyProjection (..)

    -- * StorageBucketsPatchProjection
    , StorageBucketsPatchProjection (..)

    -- * Versioning
    , Versioning
    , versioning
    , vEnabled

    -- * StorageObjectsWatchAllProjection
    , StorageObjectsWatchAllProjection (..)

    -- * ObjectPreconditions
    , ObjectPreconditions
    , objectPreconditions
    , opsIfGenerationMatch

    -- * Metadata
    , Metadata
    , metadata

    -- * BucketAccessControl
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

    -- * ObjectAccessControls
    , ObjectAccessControls
    , objectAccessControls
    , oacKind
    , oacItems

    -- * StorageObjectsInsertProjection
    , StorageObjectsInsertProjection (..)

    -- * Object
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

    -- * Projection
    , Projection (..)

    -- * StorageBucketsUpdateProjection
    , StorageBucketsUpdateProjection (..)

    -- * StorageObjectsListProjection
    , StorageObjectsListProjection (..)

    -- * Condition
    , Condition
    , condition
    , cAge
    , cIsLive
    , cNumNewerVersions
    , cCreatedBefore

    -- * Logging
    , Logging
    , logging
    , lLogBucket
    , lLogObjectPrefix

    -- * ObjectAccessControl
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

    -- * SourceObjectsItem
    , SourceObjectsItem
    , sourceObjectsItem
    , soiName
    , soiObjectPreconditions
    , soiGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types.Product
import           Network.Google.Storage.Types.Sum

-- | URL referring to version 'v1beta2' of the Cloud Storage API.
storageURL :: BaseUrl
storageURL
  = BaseUrl Https
      "https://www.googleapis.com/storage/v1beta2/"
      443
