{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | The Google Container Engine API is used for building and managing
-- container based applications, powered by the open source Kubernetes
-- technology.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference>
module Network.Google.Container
    (
    -- * API
      ContainerAPI
    , containerAPI
    , containerURL

    -- * Service Methods

    -- * REST Resources

    -- ** ContainerProjectsClustersList
    , module Network.Google.Resource.Container.Projects.Clusters.List

    -- ** ContainerProjectsOperationsList
    , module Network.Google.Resource.Container.Projects.Operations.List

    -- ** ContainerProjectsZonesClustersCreate
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Create

    -- ** ContainerProjectsZonesClustersDelete
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Delete

    -- ** ContainerProjectsZonesClustersGet
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Get

    -- ** ContainerProjectsZonesClustersList
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.List

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
    , cNumNodes
    , cClusterAPIVersion
    , cNetwork
    , cZone
    , cServicesIPv4CIdR
    , cMasterAuth
    , cSelfLink
    , cEnableCloudMonitoring
    , cName
    , cStatusMessage
    , cCreationTimestamp
    , cContainerIPv4CIdR
    , cEndpoint
    , cEnableCloudLogging
    , cDescription
    , cInstanceGroupURLs
    , cNodeRoutingPrefixSize

    -- ** ListAggregatedOperationsResponse
    , ListAggregatedOperationsResponse
    , listAggregatedOperationsResponse
    , laorOperations

    -- ** NodeConfig
    , NodeConfig
    , nodeConfig
    , ncServiceAccounts
    , ncSourceImage
    , ncMachineType

    -- ** Operation
    , Operation
    , operation
    , oStatus
    , oZone
    , oSelfLink
    , oName
    , oOperationType
    , oErrorMessage
    , oTargetLink
    , oTarget

    -- ** OperationOperationType
    , OperationOperationType (..)

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- ** MasterAuth
    , MasterAuth
    , masterAuth
    , maBearerToken
    , maClientKey
    , maUser
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- ** ListAggregatedClustersResponse
    , ListAggregatedClustersResponse
    , listAggregatedClustersResponse
    , lacrClusters

    -- ** ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters

    -- ** ClusterStatus
    , ClusterStatus (..)
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Container.Projects.Clusters.List
import           Network.Google.Resource.Container.Projects.Operations.List
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Create
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Delete
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Get
import           Network.Google.Resource.Container.Projects.Zones.Clusters.List
import           Network.Google.Resource.Container.Projects.Zones.Operations.Get
import           Network.Google.Resource.Container.Projects.Zones.Operations.List

{- $resources
TODO
-}

type ContainerAPI =
     ProjectsZonesOperationsListResource :<|>
       ProjectsZonesOperationsGetResource
       :<|> ProjectsZonesClustersListResource
       :<|> ProjectsZonesClustersGetResource
       :<|> ProjectsZonesClustersCreateResource
       :<|> ProjectsZonesClustersDeleteResource
       :<|> ProjectsOperationsListResource
       :<|> ProjectsClustersListResource

containerAPI :: Proxy ContainerAPI
containerAPI = Proxy
