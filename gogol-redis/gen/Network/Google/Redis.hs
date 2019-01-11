{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Redis
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages Redis instances on the Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference>
module Network.Google.Redis
    (
    -- * Service Configuration
      redisService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , RedisAPI

    -- * Resources

    -- ** redis.projects.locations.get
    , module Network.Google.Resource.Redis.Projects.Locations.Get

    -- ** redis.projects.locations.instances.create
    , module Network.Google.Resource.Redis.Projects.Locations.Instances.Create

    -- ** redis.projects.locations.instances.delete
    , module Network.Google.Resource.Redis.Projects.Locations.Instances.Delete

    -- ** redis.projects.locations.instances.get
    , module Network.Google.Resource.Redis.Projects.Locations.Instances.Get

    -- ** redis.projects.locations.instances.list
    , module Network.Google.Resource.Redis.Projects.Locations.Instances.List

    -- ** redis.projects.locations.instances.patch
    , module Network.Google.Resource.Redis.Projects.Locations.Instances.Patch

    -- ** redis.projects.locations.list
    , module Network.Google.Resource.Redis.Projects.Locations.List

    -- ** redis.projects.locations.operations.cancel
    , module Network.Google.Resource.Redis.Projects.Locations.Operations.Cancel

    -- ** redis.projects.locations.operations.delete
    , module Network.Google.Resource.Redis.Projects.Locations.Operations.Delete

    -- ** redis.projects.locations.operations.get
    , module Network.Google.Resource.Redis.Projects.Locations.Operations.Get

    -- ** redis.projects.locations.operations.list
    , module Network.Google.Resource.Redis.Projects.Locations.Operations.List

    -- * Types

    -- ** InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** GoogleCloudRedisV1ZoneMetadata
    , GoogleCloudRedisV1ZoneMetadata
    , googleCloudRedisV1ZoneMetadata

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** InstanceTier
    , InstanceTier (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** GoogleCloudRedisV1LocationMetadata
    , GoogleCloudRedisV1LocationMetadata
    , googleCloudRedisV1LocationMetadata
    , gcrvlmAvailableZones

    -- ** GoogleCloudRedisV1OperationMetadata
    , GoogleCloudRedisV1OperationMetadata
    , googleCloudRedisV1OperationMetadata
    , gcrvomAPIVersion
    , gcrvomEndTime
    , gcrvomStatusDetail
    , gcrvomVerb
    , gcrvomCancelRequested
    , gcrvomTarget
    , gcrvomCreateTime

    -- ** InstanceRedisConfigs
    , InstanceRedisConfigs
    , instanceRedisConfigs
    , ircAddtional

    -- ** GoogleCloudRedisV1LocationMetadataAvailableZones
    , GoogleCloudRedisV1LocationMetadataAvailableZones
    , googleCloudRedisV1LocationMetadataAvailableZones
    , gcrvlmazAddtional

    -- ** Xgafv
    , Xgafv (..)

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirUnreachable
    , lirInstances

    -- ** InstanceState
    , InstanceState (..)

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** Instance
    , Instance
    , instance'
    , iState
    , iAuthorizedNetwork
    , iMemorySizeGb
    , iName
    , iStatusMessage
    , iAlternativeLocationId
    , iReservedIPRange
    , iTier
    , iDisplayName
    , iLabels
    , iLocationId
    , iHost
    , iRedisConfigs
    , iRedisVersion
    , iCreateTime
    , iPort
    , iCurrentLocationId
    ) where

import           Network.Google.Prelude
import           Network.Google.Redis.Types
import           Network.Google.Resource.Redis.Projects.Locations.Get
import           Network.Google.Resource.Redis.Projects.Locations.Instances.Create
import           Network.Google.Resource.Redis.Projects.Locations.Instances.Delete
import           Network.Google.Resource.Redis.Projects.Locations.Instances.Get
import           Network.Google.Resource.Redis.Projects.Locations.Instances.List
import           Network.Google.Resource.Redis.Projects.Locations.Instances.Patch
import           Network.Google.Resource.Redis.Projects.Locations.List
import           Network.Google.Resource.Redis.Projects.Locations.Operations.Cancel
import           Network.Google.Resource.Redis.Projects.Locations.Operations.Delete
import           Network.Google.Resource.Redis.Projects.Locations.Operations.Get
import           Network.Google.Resource.Redis.Projects.Locations.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Memorystore for Redis API service.
type RedisAPI =
     ProjectsLocationsInstancesListResource :<|>
       ProjectsLocationsInstancesPatchResource
       :<|> ProjectsLocationsInstancesGetResource
       :<|> ProjectsLocationsInstancesCreateResource
       :<|> ProjectsLocationsInstancesDeleteResource
       :<|> ProjectsLocationsOperationsListResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource
       :<|> ProjectsLocationsOperationsDeleteResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
