{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DNS.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DNS.Types
    (
    -- * Service Configuration
      dNSService

    -- * OAuth Scopes
    , ndevClouddnsReadOnlyScope
    , cloudPlatformReadOnlyScope
    , ndevClouddnsReadwriteScope
    , cloudPlatformScope

    -- * DNSKeySpecAlgorithm
    , DNSKeySpecAlgorithm (..)

    -- * PolicyAlternativeNameServerConfigTargetNameServer
    , PolicyAlternativeNameServerConfigTargetNameServer
    , policyAlternativeNameServerConfigTargetNameServer
    , pansctnsKind
    , pansctnsForwardingPath
    , pansctnsIPv4Address

    -- * ManagedZoneDNSSecConfigNonExistence
    , ManagedZoneDNSSecConfigNonExistence (..)

    -- * OperationDNSKeyContext
    , OperationDNSKeyContext
    , operationDNSKeyContext
    , odkcOldValue
    , odkcNewValue

    -- * ManagedZonePrivateVisibilityConfigNetwork
    , ManagedZonePrivateVisibilityConfigNetwork
    , managedZonePrivateVisibilityConfigNetwork
    , mzpvcnKind
    , mzpvcnNetworkURL

    -- * ManagedZonePeeringConfigTargetNetwork
    , ManagedZonePeeringConfigTargetNetwork
    , managedZonePeeringConfigTargetNetwork
    , mzpctnDeactivateTime
    , mzpctnKind
    , mzpctnNetworkURL

    -- * DNSKeysListResponse
    , DNSKeysListResponse
    , dnsKeysListResponse
    , dklrNextPageToken
    , dklrDNSKeys
    , dklrKind
    , dklrHeader

    -- * ChangesListResponse
    , ChangesListResponse
    , changesListResponse
    , clrNextPageToken
    , clrChanges
    , clrKind
    , clrHeader

    -- * PoliciesListResponse
    , PoliciesListResponse
    , policiesListResponse
    , plrNextPageToken
    , plrKind
    , plrHeader
    , plrPolicies

    -- * ManagedZoneForwardingConfigNameServerTargetForwardingPath
    , ManagedZoneForwardingConfigNameServerTargetForwardingPath (..)

    -- * ManagedZoneDNSSecConfigState
    , ManagedZoneDNSSecConfigState (..)

    -- * ManagedZoneForwardingConfig
    , ManagedZoneForwardingConfig
    , managedZoneForwardingConfig
    , mzfcKind
    , mzfcTargetNameServers

    -- * ManagedZoneVisibility
    , ManagedZoneVisibility (..)

    -- * Project
    , Project
    , project
    , pKind
    , pId
    , pNumber
    , pQuota

    -- * Operation
    , Operation
    , operation
    , oStatus
    , oStartTime
    , oKind
    , oUser
    , oId
    , oType
    , oZoneContext
    , oDNSKeyContext

    -- * ManagedZonePeeringConfig
    , ManagedZonePeeringConfig
    , managedZonePeeringConfig
    , mzpcKind
    , mzpcTargetNetwork

    -- * DNSKeySpec
    , DNSKeySpec
    , dnsKeySpec
    , dksKeyType
    , dksKind
    , dksAlgorithm
    , dksKeyLength

    -- * ManagedZoneReverseLookupConfig
    , ManagedZoneReverseLookupConfig
    , managedZoneReverseLookupConfig
    , mzrlcKind

    -- * ChangesListSortBy
    , ChangesListSortBy (..)

    -- * DNSKeyDigestType
    , DNSKeyDigestType (..)

    -- * Change
    , Change
    , change
    , cStatus
    , cAdditions
    , cStartTime
    , cKind
    , cDeletions
    , cId
    , cIsServing

    -- * DNSKey
    , DNSKey
    , dnsKey
    , dkCreationTime
    , dkKeyTag
    , dkKind
    , dkDigests
    , dkPublicKey
    , dkAlgorithm
    , dkId
    , dkType
    , dkKeyLength
    , dkIsActive
    , dkDescription

    -- * OperationStatus
    , OperationStatus (..)

    -- * OperationManagedZoneContext
    , OperationManagedZoneContext
    , operationManagedZoneContext
    , omzcOldValue
    , omzcNewValue

    -- * DNSKeyAlgorithm
    , DNSKeyAlgorithm (..)

    -- * ResponseHeader
    , ResponseHeader
    , responseHeader
    , rhOperationId

    -- * PoliciesUpdateResponse
    , PoliciesUpdateResponse
    , policiesUpdateResponse
    , purHeader
    , purPolicy

    -- * DNSKeySpecKeyType
    , DNSKeySpecKeyType (..)

    -- * ManagedZoneOperationsListResponse
    , ManagedZoneOperationsListResponse
    , managedZoneOperationsListResponse
    , mzolrNextPageToken
    , mzolrKind
    , mzolrHeader
    , mzolrOperations

    -- * ResourceRecordSetsListResponse
    , ResourceRecordSetsListResponse
    , resourceRecordSetsListResponse
    , rrslrNextPageToken
    , rrslrKind
    , rrslrHeader
    , rrslrRrSets

    -- * PolicyAlternativeNameServerConfig
    , PolicyAlternativeNameServerConfig
    , policyAlternativeNameServerConfig
    , panscKind
    , panscTargetNameServers

    -- * ChangeStatus
    , ChangeStatus (..)

    -- * Xgafv
    , Xgafv (..)

    -- * ManagedZonePrivateVisibilityConfig
    , ManagedZonePrivateVisibilityConfig
    , managedZonePrivateVisibilityConfig
    , mzpvcNetworks
    , mzpvcKind

    -- * PolicyAlternativeNameServerConfigTargetNameServerForwardingPath
    , PolicyAlternativeNameServerConfigTargetNameServerForwardingPath (..)

    -- * ManagedZoneDNSSecConfig
    , ManagedZoneDNSSecConfig
    , managedZoneDNSSecConfig
    , mzdscState
    , mzdscKind
    , mzdscDefaultKeySpecs
    , mzdscNonExistence

    -- * ResourceRecordSet
    , ResourceRecordSet
    , resourceRecordSet
    , rrsTtl
    , rrsKind
    , rrsSignatureRrDatas
    , rrsName
    , rrsType
    , rrsRrDatas

    -- * Policy
    , Policy
    , policy
    , polAlternativeNameServerConfig
    , polEnableInboundForwarding
    , polEnableLogging
    , polNetworks
    , polKind
    , polName
    , polId
    , polDescription

    -- * ManagedZone
    , ManagedZone
    , managedZone
    , mzCreationTime
    , mzKind
    , mzPeeringConfig
    , mzReverseLookupConfig
    , mzNameServerSet
    , mzVisibility
    , mzName
    , mzId
    , mzLabels
    , mzDNSName
    , mzDescription
    , mzDNSsecConfig
    , mzNameServers
    , mzPrivateVisibilityConfig
    , mzForwardingConfig

    -- * PoliciesPatchResponse
    , PoliciesPatchResponse
    , policiesPatchResponse
    , pprHeader
    , pprPolicy

    -- * ManagedZoneLabels
    , ManagedZoneLabels
    , managedZoneLabels
    , mzlAddtional

    -- * Quota
    , Quota
    , quota
    , qRrSetDeletionsPerChange
    , qTargetNameServersPerManagedZone
    , qWhiteListedKeySpecs
    , qRrSetsPerManagedZone
    , qKind
    , qResourceRecordsPerRrSet
    , qManagedZonesPerNetwork
    , qRrSetAdditionsPerChange
    , qTargetNameServersPerPolicy
    , qNetworksPerPolicy
    , qManagedZones
    , qTotalRrDataSizePerChange
    , qPolicies
    , qDNSKeysPerManagedZone
    , qNetworksPerManagedZone

    -- * DNSKeyType
    , DNSKeyType (..)

    -- * DNSKeyDigest
    , DNSKeyDigest
    , dnsKeyDigest
    , dkdDigest
    , dkdType

    -- * PolicyNetwork
    , PolicyNetwork
    , policyNetwork
    , pnKind
    , pnNetworkURL

    -- * ManagedZoneOperationsListSortBy
    , ManagedZoneOperationsListSortBy (..)

    -- * ManagedZoneForwardingConfigNameServerTarget
    , ManagedZoneForwardingConfigNameServerTarget
    , managedZoneForwardingConfigNameServerTarget
    , mzfcnstKind
    , mzfcnstForwardingPath
    , mzfcnstIPv4Address

    -- * ManagedZonesListResponse
    , ManagedZonesListResponse
    , managedZonesListResponse
    , mzlrNextPageToken
    , mzlrKind
    , mzlrHeader
    , mzlrManagedZones
    ) where

import Network.Google.DNS.Types.Product
import Network.Google.DNS.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2beta1' of the Cloud DNS API. This contains the host and root path used as a starting point for constructing service requests.
dNSService :: ServiceConfig
dNSService
  = defaultService (ServiceId "dns:v2beta1")
      "dns.googleapis.com"

-- | View your DNS records hosted by Google Cloud DNS
ndevClouddnsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/ndev.clouddns.readonly"]
ndevClouddnsReadOnlyScope = Proxy

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | View and manage your DNS records hosted by Google Cloud DNS
ndevClouddnsReadwriteScope :: Proxy '["https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
ndevClouddnsReadwriteScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
