{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Container
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google Container Engine API is used for building and managing
-- container based applications, powered by the open source Kubernetes
-- technology.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference>
module Network.Google.Container
    (
    -- * API Declaration
      ContainerAPI

    -- * Resources

    -- ** ContainerProjectsZonesClustersCreate
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Create

    -- ** ContainerProjectsZonesClustersDelete
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Delete

    -- ** ContainerProjectsZonesClustersGet
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Get

    -- ** ContainerProjectsZonesClustersList
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.List

    -- ** ContainerProjectsZonesClustersUpdate
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Update

    -- ** ContainerProjectsZonesGetServerConfig
    , module Network.Google.Resource.Container.Projects.Zones.GetServerConfig

    -- ** ContainerProjectsZonesOperationsGet
    , module Network.Google.Resource.Container.Projects.Zones.Operations.Get

    -- ** ContainerProjectsZonesOperationsList
    , module Network.Google.Resource.Container.Projects.Zones.Operations.List

    -- * Types

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorOperations

    -- ** CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrCluster

    -- ** Cluster
    , Cluster
    , cluster
    , cStatus
    , cNodeConfig
    , cNodeIPv4CIdRSize
    , cClusterIPv4CIdR
    , cInitialNodeCount
    , cCurrentNodeVersion
    , cNetwork
    , cInitialClusterVersion
    , cZone
    , cServicesIPv4CIdR
    , cMasterAuth
    , cSelfLink
    , cName
    , cCurrentMasterVersion
    , cStatusMessage
    , cEndpoint
    , cLoggingService
    , cDescription
    , cInstanceGroupURLs
    , cMonitoringService
    , cCreateTime

    -- ** UpdateClusterRequest
    , UpdateClusterRequest
    , updateClusterRequest
    , ucrUpdate

    -- ** NodeConfig
    , NodeConfig
    , nodeConfig
    , ncDiskSizeGb
    , ncOAuthScopes
    , ncMachineType

    -- ** Operation
    , Operation
    , operation
    , oStatus
    , oZone
    , oSelfLink
    , oName
    , oStatusMessage
    , oOperationType
    , oTargetLink

    -- ** MasterAuth
    , MasterAuth
    , masterAuth
    , maClientKey
    , maUsername
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- ** ServerConfig
    , ServerConfig
    , serverConfig
    , scValidNodeVersions
    , scDefaultClusterVersion

    -- ** ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters

    -- ** ClusterUpdate
    , ClusterUpdate
    , clusterUpdate
    , cuDesiredNodeVersion
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Create
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Delete
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Get
import           Network.Google.Resource.Container.Projects.Zones.Clusters.List
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Update
import           Network.Google.Resource.Container.Projects.Zones.GetServerConfig
import           Network.Google.Resource.Container.Projects.Zones.Operations.Get
import           Network.Google.Resource.Container.Projects.Zones.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Container Engine API service.
type ContainerAPI =
     ProjectsZonesOperationsListResource :<|>
       ProjectsZonesOperationsGetResource
       :<|> ProjectsZonesClustersListResource
       :<|> ProjectsZonesClustersGetResource
       :<|> ProjectsZonesClustersCreateResource
       :<|> ProjectsZonesClustersDeleteResource
       :<|> ProjectsZonesClustersUpdateResource
       :<|> ProjectsZonesGetServerConfigResource
