{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.TPU
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- TPU API provides customers with access to Google TPU technology.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference>
module Network.Google.TPU
    (
    -- * Service Configuration
      tPUService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , TPUAPI

    -- * Resources

    -- ** tpu.projects.locations.acceleratorTypes.get
    , module Network.Google.Resource.TPU.Projects.Locations.AcceleratorTypes.Get

    -- ** tpu.projects.locations.acceleratorTypes.list
    , module Network.Google.Resource.TPU.Projects.Locations.AcceleratorTypes.List

    -- ** tpu.projects.locations.get
    , module Network.Google.Resource.TPU.Projects.Locations.Get

    -- ** tpu.projects.locations.list
    , module Network.Google.Resource.TPU.Projects.Locations.List

    -- ** tpu.projects.locations.nodes.create
    , module Network.Google.Resource.TPU.Projects.Locations.Nodes.Create

    -- ** tpu.projects.locations.nodes.delete
    , module Network.Google.Resource.TPU.Projects.Locations.Nodes.Delete

    -- ** tpu.projects.locations.nodes.get
    , module Network.Google.Resource.TPU.Projects.Locations.Nodes.Get

    -- ** tpu.projects.locations.nodes.list
    , module Network.Google.Resource.TPU.Projects.Locations.Nodes.List

    -- ** tpu.projects.locations.nodes.reimage
    , module Network.Google.Resource.TPU.Projects.Locations.Nodes.Reimage

    -- ** tpu.projects.locations.nodes.start
    , module Network.Google.Resource.TPU.Projects.Locations.Nodes.Start

    -- ** tpu.projects.locations.nodes.stop
    , module Network.Google.Resource.TPU.Projects.Locations.Nodes.Stop

    -- ** tpu.projects.locations.operations.cancel
    , module Network.Google.Resource.TPU.Projects.Locations.Operations.Cancel

    -- ** tpu.projects.locations.operations.delete
    , module Network.Google.Resource.TPU.Projects.Locations.Operations.Delete

    -- ** tpu.projects.locations.operations.get
    , module Network.Google.Resource.TPU.Projects.Locations.Operations.Get

    -- ** tpu.projects.locations.operations.list
    , module Network.Google.Resource.TPU.Projects.Locations.Operations.List

    -- ** tpu.projects.locations.tensorflowVersions.get
    , module Network.Google.Resource.TPU.Projects.Locations.TensorflowVersions.Get

    -- ** tpu.projects.locations.tensorflowVersions.list
    , module Network.Google.Resource.TPU.Projects.Locations.TensorflowVersions.List

    -- * Types

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

    -- ** AcceleratorType
    , AcceleratorType
    , acceleratorType
    , atName
    , atType

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** NodeState
    , NodeState (..)

    -- ** NodeAPIVersion
    , NodeAPIVersion (..)

    -- ** ListAcceleratorTypesResponse
    , ListAcceleratorTypesResponse
    , listAcceleratorTypesResponse
    , latrAcceleratorTypes
    , latrNextPageToken
    , latrUnreachable

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

    -- ** NetworkEndpoint
    , NetworkEndpoint
    , networkEndpoint
    , neIPAddress
    , nePort

    -- ** Empty
    , Empty
    , empty

    -- ** Node
    , Node
    , node
    , nAcceleratorType
    , nIPAddress
    , nState
    , nSymptoms
    , nAPIVersion
    , nUseServiceNetworking
    , nNetwork
    , nHealth
    , nServiceAccount
    , nName
    , nSchedulingConfig
    , nHealthDescription
    , nCIdRBlock
    , nLabels
    , nNetworkEndpoints
    , nDescription
    , nCreateTime
    , nTensorflowVersion
    , nPort

    -- ** SymptomSymptomType
    , SymptomSymptomType (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** StopNodeRequest
    , StopNodeRequest
    , stopNodeRequest

    -- ** Symptom
    , Symptom
    , symptom
    , symDetails
    , symWorkerId
    , symCreateTime
    , symSymptomType

    -- ** ReimageNodeRequest
    , ReimageNodeRequest
    , reimageNodeRequest
    , rnrTensorflowVersion

    -- ** NodeHealth
    , NodeHealth (..)

    -- ** ListNodesResponse
    , ListNodesResponse
    , listNodesResponse
    , lnrNextPageToken
    , lnrUnreachable
    , lnrNodes

    -- ** Xgafv
    , Xgafv (..)

    -- ** SchedulingConfig
    , SchedulingConfig
    , schedulingConfig
    , scReserved
    , scPreemptible

    -- ** NodeLabels
    , NodeLabels
    , nodeLabels
    , nlAddtional

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

    -- ** ListTensorFlowVersionsResponse
    , ListTensorFlowVersionsResponse
    , listTensorFlowVersionsResponse
    , ltfvrNextPageToken
    , ltfvrUnreachable
    , ltfvrTensorflowVersions

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** TensorFlowVersion
    , TensorFlowVersion
    , tensorFlowVersion
    , tfvName
    , tfvVersion

    -- ** StartNodeRequest
    , StartNodeRequest
    , startNodeRequest
    ) where

import Network.Google.Prelude
import Network.Google.Resource.TPU.Projects.Locations.AcceleratorTypes.Get
import Network.Google.Resource.TPU.Projects.Locations.AcceleratorTypes.List
import Network.Google.Resource.TPU.Projects.Locations.Get
import Network.Google.Resource.TPU.Projects.Locations.List
import Network.Google.Resource.TPU.Projects.Locations.Nodes.Create
import Network.Google.Resource.TPU.Projects.Locations.Nodes.Delete
import Network.Google.Resource.TPU.Projects.Locations.Nodes.Get
import Network.Google.Resource.TPU.Projects.Locations.Nodes.List
import Network.Google.Resource.TPU.Projects.Locations.Nodes.Reimage
import Network.Google.Resource.TPU.Projects.Locations.Nodes.Start
import Network.Google.Resource.TPU.Projects.Locations.Nodes.Stop
import Network.Google.Resource.TPU.Projects.Locations.Operations.Cancel
import Network.Google.Resource.TPU.Projects.Locations.Operations.Delete
import Network.Google.Resource.TPU.Projects.Locations.Operations.Get
import Network.Google.Resource.TPU.Projects.Locations.Operations.List
import Network.Google.Resource.TPU.Projects.Locations.TensorflowVersions.Get
import Network.Google.Resource.TPU.Projects.Locations.TensorflowVersions.List
import Network.Google.TPU.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud TPU API service.
type TPUAPI =
     ProjectsLocationsAcceleratorTypesListResource :<|>
       ProjectsLocationsAcceleratorTypesGetResource
       :<|> ProjectsLocationsTensorflowVersionsListResource
       :<|> ProjectsLocationsTensorflowVersionsGetResource
       :<|> ProjectsLocationsNodesListResource
       :<|> ProjectsLocationsNodesStartResource
       :<|> ProjectsLocationsNodesGetResource
       :<|> ProjectsLocationsNodesCreateResource
       :<|> ProjectsLocationsNodesReimageResource
       :<|> ProjectsLocationsNodesStopResource
       :<|> ProjectsLocationsNodesDeleteResource
       :<|> ProjectsLocationsOperationsListResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource
       :<|> ProjectsLocationsOperationsDeleteResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
