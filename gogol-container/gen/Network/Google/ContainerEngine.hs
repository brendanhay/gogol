-- |
-- Module      : Network.Google.ContainerEngine
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Container Engine API is used for building and managing container based applications, powered by the open source Kubernetes technology.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference>
module Network.Google.ContainerEngine
    (
    -- * API Definition
      ContainerEngine



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

type ContainerEngine = ()

containerEngine :: Proxy ContainerEngine
containerEngine = Proxy




