{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Container.Types
    (
    -- * Service URL
      containerURL

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorOperations

    -- * CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrCluster

    -- * Cluster
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

    -- * ListAggregatedOperationsResponse
    , ListAggregatedOperationsResponse
    , listAggregatedOperationsResponse
    , laorOperations

    -- * NodeConfig
    , NodeConfig
    , nodeConfig
    , ncServiceAccounts
    , ncSourceImage
    , ncMachineType

    -- * Operation
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

    -- * OperationOperationType
    , OperationOperationType (..)

    -- * OperationStatus
    , OperationStatus (..)

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- * MasterAuth
    , MasterAuth
    , masterAuth
    , maBearerToken
    , maClientKey
    , maUser
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- * ListAggregatedClustersResponse
    , ListAggregatedClustersResponse
    , listAggregatedClustersResponse
    , lacrClusters

    -- * ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters

    -- * ClusterStatus
    , ClusterStatus (..)

    -- * Alt
    , Alt (..)
    ) where

import           Network.Google.Container.Types.Product
import           Network.Google.Container.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta1' of the Google Container Engine API.
containerURL :: BaseUrl
containerURL
  = BaseUrl Https
      "https://www.googleapis.com/container/v1beta1/projects/"
      443
