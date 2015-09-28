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
    -- * REST Resources

    -- ** Google Container Engine API
      Container
    , container
    , containerURL

    -- ** container.projects.clusters.list
    , module Network.Google.API.Container.Projects.Clusters.List

    -- ** container.projects.operations.list
    , module Network.Google.API.Container.Projects.Operations.List

    -- ** container.projects.zones.clusters.create
    , module Network.Google.API.Container.Projects.Zones.Clusters.Create

    -- ** container.projects.zones.clusters.delete
    , module Network.Google.API.Container.Projects.Zones.Clusters.Delete

    -- ** container.projects.zones.clusters.get
    , module Network.Google.API.Container.Projects.Zones.Clusters.Get

    -- ** container.projects.zones.clusters.list
    , module Network.Google.API.Container.Projects.Zones.Clusters.List

    -- ** container.projects.zones.operations.get
    , module Network.Google.API.Container.Projects.Zones.Operations.Get

    -- ** container.projects.zones.operations.list
    , module Network.Google.API.Container.Projects.Zones.Operations.List

    -- * Types

    -- ** MasterAuth
    , MasterAuth
    , masterAuth
    , maBearerToken
    , maClientKey
    , maUser
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- ** Cluster
    , Cluster
    , cluster
    , cStatus
    , cNodeConfig
    , cNumNodes
    , cClusterApiVersion
    , cNetwork
    , cZone
    , cServicesIpv4Cidr
    , cMasterAuth
    , cSelfLink
    , cEnableCloudMonitoring
    , cName
    , cStatusMessage
    , cCreationTimestamp
    , cContainerIpv4Cidr
    , cEndpoint
    , cEnableCloudLogging
    , cDescription
    , cInstanceGroupUrls
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

    -- ** Alt
    , Alt (..)

    -- ** ClusterStatus
    , ClusterStatus (..)

    -- ** ListAggregatedClustersResponse
    , ListAggregatedClustersResponse
    , listAggregatedClustersResponse
    , lacrClusters

    -- ** ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorOperations

    -- ** CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrCluster

    -- ** OperationStatus
    , OperationStatus (..)

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
    ) where

import           Network.Google.API.Container.Projects.Clusters.List
import           Network.Google.API.Container.Projects.Operations.List
import           Network.Google.API.Container.Projects.Zones.Clusters.Create
import           Network.Google.API.Container.Projects.Zones.Clusters.Delete
import           Network.Google.API.Container.Projects.Zones.Clusters.Get
import           Network.Google.API.Container.Projects.Zones.Clusters.List
import           Network.Google.API.Container.Projects.Zones.Operations.Get
import           Network.Google.API.Container.Projects.Zones.Operations.List
import           Network.Google.Container.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Container =
     ProjectsZonesClustersGetAPI :<|>
       ProjectsZonesClustersListAPI
       :<|> ProjectsClustersListAPI
       :<|> ProjectsZonesOperationsGetAPI
       :<|> ProjectsOperationsListAPI
       :<|> ProjectsZonesClustersDeleteAPI
       :<|> ProjectsZonesClustersCreateAPI
       :<|> ProjectsZonesOperationsListAPI

container :: Proxy Container
container = Proxy
