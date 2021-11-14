{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DNS
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <http://developers.google.com/cloud-dns Cloud DNS API Reference>
module Network.Google.DNS
    (
    -- * Service Configuration
      dNSService

    -- * OAuth Scopes
    , ndevClouddnsReadOnlyScope
    , cloudPlatformReadOnlyScope
    , ndevClouddnsReadwriteScope
    , cloudPlatformScope

    -- * API Declaration
    , DNSAPI

    -- * Resources

    -- ** dns.changes.create
    , module Network.Google.Resource.DNS.Changes.Create

    -- ** dns.changes.get
    , module Network.Google.Resource.DNS.Changes.Get

    -- ** dns.changes.list
    , module Network.Google.Resource.DNS.Changes.List

    -- ** dns.dnsKeys.get
    , module Network.Google.Resource.DNS.DNSKeys.Get

    -- ** dns.dnsKeys.list
    , module Network.Google.Resource.DNS.DNSKeys.List

    -- ** dns.managedZoneOperations.get
    , module Network.Google.Resource.DNS.ManagedZoneOperations.Get

    -- ** dns.managedZoneOperations.list
    , module Network.Google.Resource.DNS.ManagedZoneOperations.List

    -- ** dns.managedZones.create
    , module Network.Google.Resource.DNS.ManagedZones.Create

    -- ** dns.managedZones.delete
    , module Network.Google.Resource.DNS.ManagedZones.Delete

    -- ** dns.managedZones.get
    , module Network.Google.Resource.DNS.ManagedZones.Get

    -- ** dns.managedZones.list
    , module Network.Google.Resource.DNS.ManagedZones.List

    -- ** dns.managedZones.patch
    , module Network.Google.Resource.DNS.ManagedZones.Patch

    -- ** dns.managedZones.update
    , module Network.Google.Resource.DNS.ManagedZones.Update

    -- ** dns.policies.create
    , module Network.Google.Resource.DNS.Policies.Create

    -- ** dns.policies.delete
    , module Network.Google.Resource.DNS.Policies.Delete

    -- ** dns.policies.get
    , module Network.Google.Resource.DNS.Policies.Get

    -- ** dns.policies.list
    , module Network.Google.Resource.DNS.Policies.List

    -- ** dns.policies.patch
    , module Network.Google.Resource.DNS.Policies.Patch

    -- ** dns.policies.update
    , module Network.Google.Resource.DNS.Policies.Update

    -- ** dns.projects.get
    , module Network.Google.Resource.DNS.Projects.Get

    -- ** dns.resourceRecordSets.list
    , module Network.Google.Resource.DNS.ResourceRecordSets.List

    -- * Types

    -- ** DNSKeySpecAlgorithm
    , DNSKeySpecAlgorithm (..)

    -- ** PolicyAlternativeNameServerConfigTargetNameServer
    , PolicyAlternativeNameServerConfigTargetNameServer
    , policyAlternativeNameServerConfigTargetNameServer
    , pansctnsKind
    , pansctnsForwardingPath
    , pansctnsIPv4Address

    -- ** ManagedZoneDNSSecConfigNonExistence
    , ManagedZoneDNSSecConfigNonExistence (..)

    -- ** OperationDNSKeyContext
    , OperationDNSKeyContext
    , operationDNSKeyContext
    , odkcOldValue
    , odkcNewValue

    -- ** ManagedZonePrivateVisibilityConfigNetwork
    , ManagedZonePrivateVisibilityConfigNetwork
    , managedZonePrivateVisibilityConfigNetwork
    , mzpvcnKind
    , mzpvcnNetworkURL

    -- ** ManagedZonePeeringConfigTargetNetwork
    , ManagedZonePeeringConfigTargetNetwork
    , managedZonePeeringConfigTargetNetwork
    , mzpctnDeactivateTime
    , mzpctnKind
    , mzpctnNetworkURL

    -- ** DNSKeysListResponse
    , DNSKeysListResponse
    , dnsKeysListResponse
    , dklrNextPageToken
    , dklrDNSKeys
    , dklrKind
    , dklrHeader

    -- ** ChangesListResponse
    , ChangesListResponse
    , changesListResponse
    , clrNextPageToken
    , clrChanges
    , clrKind
    , clrHeader

    -- ** PoliciesListResponse
    , PoliciesListResponse
    , policiesListResponse
    , plrNextPageToken
    , plrKind
    , plrHeader
    , plrPolicies

    -- ** ManagedZoneForwardingConfigNameServerTargetForwardingPath
    , ManagedZoneForwardingConfigNameServerTargetForwardingPath (..)

    -- ** ManagedZoneDNSSecConfigState
    , ManagedZoneDNSSecConfigState (..)

    -- ** ManagedZoneForwardingConfig
    , ManagedZoneForwardingConfig
    , managedZoneForwardingConfig
    , mzfcKind
    , mzfcTargetNameServers

    -- ** ManagedZoneVisibility
    , ManagedZoneVisibility (..)

    -- ** Project
    , Project
    , project
    , pKind
    , pId
    , pNumber
    , pQuota

    -- ** Operation
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

    -- ** ManagedZonePeeringConfig
    , ManagedZonePeeringConfig
    , managedZonePeeringConfig
    , mzpcKind
    , mzpcTargetNetwork

    -- ** DNSKeySpec
    , DNSKeySpec
    , dnsKeySpec
    , dksKeyType
    , dksKind
    , dksAlgorithm
    , dksKeyLength

    -- ** ManagedZoneReverseLookupConfig
    , ManagedZoneReverseLookupConfig
    , managedZoneReverseLookupConfig
    , mzrlcKind

    -- ** ChangesListSortBy
    , ChangesListSortBy (..)

    -- ** DNSKeyDigestType
    , DNSKeyDigestType (..)

    -- ** Change
    , Change
    , change
    , cStatus
    , cAdditions
    , cStartTime
    , cKind
    , cDeletions
    , cId
    , cIsServing

    -- ** DNSKey
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

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** OperationManagedZoneContext
    , OperationManagedZoneContext
    , operationManagedZoneContext
    , omzcOldValue
    , omzcNewValue

    -- ** DNSKeyAlgorithm
    , DNSKeyAlgorithm (..)

    -- ** ResponseHeader
    , ResponseHeader
    , responseHeader
    , rhOperationId

    -- ** PoliciesUpdateResponse
    , PoliciesUpdateResponse
    , policiesUpdateResponse
    , purHeader
    , purPolicy

    -- ** DNSKeySpecKeyType
    , DNSKeySpecKeyType (..)

    -- ** ManagedZoneOperationsListResponse
    , ManagedZoneOperationsListResponse
    , managedZoneOperationsListResponse
    , mzolrNextPageToken
    , mzolrKind
    , mzolrHeader
    , mzolrOperations

    -- ** ResourceRecordSetsListResponse
    , ResourceRecordSetsListResponse
    , resourceRecordSetsListResponse
    , rrslrNextPageToken
    , rrslrKind
    , rrslrHeader
    , rrslrRrSets

    -- ** PolicyAlternativeNameServerConfig
    , PolicyAlternativeNameServerConfig
    , policyAlternativeNameServerConfig
    , panscKind
    , panscTargetNameServers

    -- ** ChangeStatus
    , ChangeStatus (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** ManagedZonePrivateVisibilityConfig
    , ManagedZonePrivateVisibilityConfig
    , managedZonePrivateVisibilityConfig
    , mzpvcNetworks
    , mzpvcKind

    -- ** PolicyAlternativeNameServerConfigTargetNameServerForwardingPath
    , PolicyAlternativeNameServerConfigTargetNameServerForwardingPath (..)

    -- ** ManagedZoneDNSSecConfig
    , ManagedZoneDNSSecConfig
    , managedZoneDNSSecConfig
    , mzdscState
    , mzdscKind
    , mzdscDefaultKeySpecs
    , mzdscNonExistence

    -- ** ResourceRecordSet
    , ResourceRecordSet
    , resourceRecordSet
    , rrsTtl
    , rrsKind
    , rrsSignatureRrDatas
    , rrsName
    , rrsType
    , rrsRrDatas

    -- ** Policy
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

    -- ** ManagedZone
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

    -- ** PoliciesPatchResponse
    , PoliciesPatchResponse
    , policiesPatchResponse
    , pprHeader
    , pprPolicy

    -- ** ManagedZoneLabels
    , ManagedZoneLabels
    , managedZoneLabels
    , mzlAddtional

    -- ** Quota
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

    -- ** DNSKeyType
    , DNSKeyType (..)

    -- ** DNSKeyDigest
    , DNSKeyDigest
    , dnsKeyDigest
    , dkdDigest
    , dkdType

    -- ** PolicyNetwork
    , PolicyNetwork
    , policyNetwork
    , pnKind
    , pnNetworkURL

    -- ** ManagedZoneOperationsListSortBy
    , ManagedZoneOperationsListSortBy (..)

    -- ** ManagedZoneForwardingConfigNameServerTarget
    , ManagedZoneForwardingConfigNameServerTarget
    , managedZoneForwardingConfigNameServerTarget
    , mzfcnstKind
    , mzfcnstForwardingPath
    , mzfcnstIPv4Address

    -- ** ManagedZonesListResponse
    , ManagedZonesListResponse
    , managedZonesListResponse
    , mzlrNextPageToken
    , mzlrKind
    , mzlrHeader
    , mzlrManagedZones
    ) where

import Network.Google.Prelude
import Network.Google.DNS.Types
import Network.Google.Resource.DNS.Changes.Create
import Network.Google.Resource.DNS.Changes.Get
import Network.Google.Resource.DNS.Changes.List
import Network.Google.Resource.DNS.DNSKeys.Get
import Network.Google.Resource.DNS.DNSKeys.List
import Network.Google.Resource.DNS.ManagedZoneOperations.Get
import Network.Google.Resource.DNS.ManagedZoneOperations.List
import Network.Google.Resource.DNS.ManagedZones.Create
import Network.Google.Resource.DNS.ManagedZones.Delete
import Network.Google.Resource.DNS.ManagedZones.Get
import Network.Google.Resource.DNS.ManagedZones.List
import Network.Google.Resource.DNS.ManagedZones.Patch
import Network.Google.Resource.DNS.ManagedZones.Update
import Network.Google.Resource.DNS.Policies.Create
import Network.Google.Resource.DNS.Policies.Delete
import Network.Google.Resource.DNS.Policies.Get
import Network.Google.Resource.DNS.Policies.List
import Network.Google.Resource.DNS.Policies.Patch
import Network.Google.Resource.DNS.Policies.Update
import Network.Google.Resource.DNS.Projects.Get
import Network.Google.Resource.DNS.ResourceRecordSets.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud DNS API service.
type DNSAPI =
     DNSKeysListResource :<|> DNSKeysGetResource :<|>
       ChangesListResource
       :<|> ChangesGetResource
       :<|> ChangesCreateResource
       :<|> ResourceRecordSetsListResource
       :<|> ManagedZoneOperationsListResource
       :<|> ManagedZoneOperationsGetResource
       :<|> ManagedZonesListResource
       :<|> ManagedZonesPatchResource
       :<|> ManagedZonesGetResource
       :<|> ManagedZonesCreateResource
       :<|> ManagedZonesDeleteResource
       :<|> ManagedZonesUpdateResource
       :<|> ProjectsGetResource
       :<|> PoliciesListResource
       :<|> PoliciesPatchResource
       :<|> PoliciesGetResource
       :<|> PoliciesCreateResource
       :<|> PoliciesDeleteResource
       :<|> PoliciesUpdateResource
