{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      container

    -- * OAuth Scopes
    , cloudPlatformScope

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

    -- * UpdateClusterRequest
    , UpdateClusterRequest
    , updateClusterRequest
    , ucrUpdate

    -- * NodeConfig
    , NodeConfig
    , nodeConfig
    , ncDiskSizeGb
    , ncOAuthScopes
    , ncMachineType

    -- * Operation
    , Operation
    , operation
    , oStatus
    , oZone
    , oSelfLink
    , oName
    , oStatusMessage
    , oOperationType
    , oTargetLink

    -- * MasterAuth
    , MasterAuth
    , masterAuth
    , maClientKey
    , maUsername
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- * ServerConfig
    , ServerConfig
    , serverConfig
    , scValidNodeVersions
    , scDefaultClusterVersion

    -- * ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters

    -- * ClusterUpdate
    , ClusterUpdate
    , clusterUpdate
    , cuDesiredNodeVersion
    ) where

import           Network.Google.Container.Types.Product
import           Network.Google.Container.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Container Engine API. This contains the host and root path used as a starting point for constructing service requests.
container :: Service
container
  = defaultService (ServiceId "container:v1")
      "container.googleapis.com"
      ""

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: OAuthScope
cloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";
