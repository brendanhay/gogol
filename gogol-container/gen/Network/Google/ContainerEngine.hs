{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ContainerEngine
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
module Network.Google.ContainerEngine
    (
    -- * Resources
      ContainerEngine
    , ProjectsAPI
    , ZonesAPI
    , OperationsAPI
    , OperationsList
    , OperationsGet
    , ClustersAPI
    , ClustersList
    , ClustersGet
    , ClustersCreate
    , ClustersDelete
    , OperationsAPI
    , OperationsList
    , ClustersAPI
    , ClustersList

    -- * Types

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

    -- ** ClusterStatus
    , ClusterStatus (..)

    -- ** CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrCluster

    -- ** ListAggregatedClustersResponse
    , ListAggregatedClustersResponse
    , listAggregatedClustersResponse
    , lacrClusters

    -- ** ListAggregatedOperationsResponse
    , ListAggregatedOperationsResponse
    , listAggregatedOperationsResponse
    , laorOperations

    -- ** ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorOperations

    -- ** MasterAuth
    , MasterAuth
    , masterAuth
    , maBearerToken
    , maClientKey
    , maUser
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

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
    ) where

import           Network.Google.ContainerEngine.Types

{- $resources
TODO
-}

type ContainerEngine = ProjectsAPI

type ProjectsAPI =
     OperationsAPI :<|> ClustersAPI :<|> ZonesAPI

type ZonesAPI = ClustersAPI :<|> OperationsAPI

type OperationsAPI =
     OperationsGet :<|> OperationsList

-- | Lists all operations in a project in a specific zone.
type OperationsList =
     "container" :> "v1beta1" :> "projects" :>
       Capture "projectId" Text
       :> "zones"
       :> Capture "zoneId" Text
       :> "operations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets the specified operation.
type OperationsGet =
     "container" :> "v1beta1" :> "projects" :>
       Capture "projectId" Text
       :> "zones"
       :> Capture "zoneId" Text
       :> "operations"
       :> Capture "operationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ClustersAPI =
     ClustersGet :<|>
       ClustersCreate :<|> ClustersDelete :<|> ClustersList

-- | Lists all clusters owned by a project in the specified zone.
type ClustersList =
     "container" :> "v1beta1" :> "projects" :>
       Capture "projectId" Text
       :> "zones"
       :> Capture "zoneId" Text
       :> "clusters"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a specific cluster.
type ClustersGet =
     "container" :> "v1beta1" :> "projects" :>
       Capture "projectId" Text
       :> "zones"
       :> Capture "zoneId" Text
       :> "clusters"
       :> Capture "clusterId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances, plus a Kubernetes master instance. The cluster
-- is created in the project\'s default network. A firewall is added that
-- allows traffic into port 443 on the master, which enables HTTPS. A
-- firewall and a route is added for each node to allow the containers on
-- that node to communicate with all other instances in the cluster.
-- Finally, an entry is added to the project\'s global metadata indicating
-- which CIDR range is being used by the cluster.
type ClustersCreate =
     "container" :> "v1beta1" :> "projects" :>
       Capture "projectId" Text
       :> "zones"
       :> Capture "zoneId" Text
       :> "clusters"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the cluster, including the Kubernetes master and all worker
-- nodes. Firewalls and routes that were configured at cluster creation are
-- also deleted.
type ClustersDelete =
     "container" :> "v1beta1" :> "projects" :>
       Capture "projectId" Text
       :> "zones"
       :> Capture "zoneId" Text
       :> "clusters"
       :> Capture "clusterId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type OperationsAPI = OperationsList

-- | Lists all operations in a project, across all zones.
type OperationsList =
     "container" :> "v1beta1" :> "projects" :>
       Capture "projectId" Text
       :> "operations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ClustersAPI = ClustersList

-- | Lists all clusters owned by a project across all zones.
type ClustersList =
     "container" :> "v1beta1" :> "projects" :>
       Capture "projectId" Text
       :> "clusters"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
