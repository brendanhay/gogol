{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.File
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Cloud Filestore API is used for creating and managing cloud file
-- servers.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference>
module Network.Google.File
    (
    -- * Service Configuration
      fileService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , FileAPI

    -- * Resources

    -- ** file.projects.locations.get
    , module Network.Google.Resource.File.Projects.Locations.Get

    -- ** file.projects.locations.instances.create
    , module Network.Google.Resource.File.Projects.Locations.Instances.Create

    -- ** file.projects.locations.instances.delete
    , module Network.Google.Resource.File.Projects.Locations.Instances.Delete

    -- ** file.projects.locations.instances.get
    , module Network.Google.Resource.File.Projects.Locations.Instances.Get

    -- ** file.projects.locations.instances.list
    , module Network.Google.Resource.File.Projects.Locations.Instances.List

    -- ** file.projects.locations.instances.patch
    , module Network.Google.Resource.File.Projects.Locations.Instances.Patch

    -- ** file.projects.locations.list
    , module Network.Google.Resource.File.Projects.Locations.List

    -- ** file.projects.locations.operations.cancel
    , module Network.Google.Resource.File.Projects.Locations.Operations.Cancel

    -- ** file.projects.locations.operations.delete
    , module Network.Google.Resource.File.Projects.Locations.Operations.Delete

    -- ** file.projects.locations.operations.get
    , module Network.Google.Resource.File.Projects.Locations.Operations.Get

    -- ** file.projects.locations.operations.list
    , module Network.Google.Resource.File.Projects.Locations.Operations.List

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

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

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

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

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

    -- ** FileShareConfig
    , FileShareConfig
    , fileShareConfig
    , fscName
    , fscCapacityGb

    -- ** NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncModes
    , ncNetwork
    , ncReservedIPRange
    , ncIPAddresses

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
    , omAPIVersion
    , omEndTime
    , omStatusDetail
    , omVerb
    , omCancelRequested
    , omTarget
    , omCreateTime

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
    , iEtag
    , iState
    , iNetworks
    , iFileShares
    , iName
    , iStatusMessage
    , iTier
    , iLabels
    , iDescription
    , iCreateTime
    ) where

import           Network.Google.File.Types
import           Network.Google.Prelude
import           Network.Google.Resource.File.Projects.Locations.Get
import           Network.Google.Resource.File.Projects.Locations.Instances.Create
import           Network.Google.Resource.File.Projects.Locations.Instances.Delete
import           Network.Google.Resource.File.Projects.Locations.Instances.Get
import           Network.Google.Resource.File.Projects.Locations.Instances.List
import           Network.Google.Resource.File.Projects.Locations.Instances.Patch
import           Network.Google.Resource.File.Projects.Locations.List
import           Network.Google.Resource.File.Projects.Locations.Operations.Cancel
import           Network.Google.Resource.File.Projects.Locations.Operations.Delete
import           Network.Google.Resource.File.Projects.Locations.Operations.Get
import           Network.Google.Resource.File.Projects.Locations.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Filestore API service.
type FileAPI =
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
