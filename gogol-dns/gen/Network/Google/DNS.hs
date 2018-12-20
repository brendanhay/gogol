{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DNS
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures and serves authoritative DNS records.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference>
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

    -- ** dns.projects.get
    , module Network.Google.Resource.DNS.Projects.Get

    -- ** dns.resourceRecordSets.list
    , module Network.Google.Resource.DNS.ResourceRecordSets.List

    -- * Types

    -- ** DNSKeySpecAlgorithm
    , DNSKeySpecAlgorithm (..)

    -- ** ManagedZoneDNSSecConfigNonExistence
    , ManagedZoneDNSSecConfigNonExistence (..)

    -- ** OperationDNSKeyContext
    , OperationDNSKeyContext
    , operationDNSKeyContext
    , odkcOldValue
    , odkcNewValue

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

    -- ** ManagedZoneDNSSecConfigState
    , ManagedZoneDNSSecConfigState (..)

    -- ** ManagedZonesDeleteResponse
    , ManagedZonesDeleteResponse
    , managedZonesDeleteResponse
    , mzdrHeader

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

    -- ** DNSResponseHeader
    , DNSResponseHeader
    , dnsResponseHeader
    , drhOperationId

    -- ** DNSKeySpec
    , DNSKeySpec
    , dnsKeySpec
    , dksKeyType
    , dksKind
    , dksAlgorithm
    , dksKeyLength

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

    -- ** ChangeStatus
    , ChangeStatus (..)

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

    -- ** ManagedZone
    , ManagedZone
    , managedZone
    , mzCreationTime
    , mzKind
    , mzNameServerSet
    , mzName
    , mzId
    , mzDNSName
    , mzDescription
    , mzDNSsecConfig
    , mzNameServers

    -- ** Quota
    , Quota
    , quota
    , qRrSetDeletionsPerChange
    , qWhiteListedKeySpecs
    , qRrSetsPerManagedZone
    , qKind
    , qResourceRecordsPerRrSet
    , qRrSetAdditionsPerChange
    , qManagedZones
    , qTotalRrDataSizePerChange
    , qDNSKeysPerManagedZone

    -- ** DNSKeyType
    , DNSKeyType (..)

    -- ** DNSKeyDigest
    , DNSKeyDigest
    , dnsKeyDigest
    , dkdDigest
    , dkdType

    -- ** ManagedZoneOperationsListSortBy
    , ManagedZoneOperationsListSortBy (..)

    -- ** ManagedZonesListResponse
    , ManagedZonesListResponse
    , managedZonesListResponse
    , mzlrNextPageToken
    , mzlrKind
    , mzlrHeader
    , mzlrManagedZones
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DNS.Changes.Create
import           Network.Google.Resource.DNS.Changes.Get
import           Network.Google.Resource.DNS.Changes.List
import           Network.Google.Resource.DNS.DNSKeys.Get
import           Network.Google.Resource.DNS.DNSKeys.List
import           Network.Google.Resource.DNS.ManagedZoneOperations.Get
import           Network.Google.Resource.DNS.ManagedZoneOperations.List
import           Network.Google.Resource.DNS.ManagedZones.Create
import           Network.Google.Resource.DNS.ManagedZones.Delete
import           Network.Google.Resource.DNS.ManagedZones.Get
import           Network.Google.Resource.DNS.ManagedZones.List
import           Network.Google.Resource.DNS.ManagedZones.Patch
import           Network.Google.Resource.DNS.ManagedZones.Update
import           Network.Google.Resource.DNS.Projects.Get
import           Network.Google.Resource.DNS.ResourceRecordSets.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud DNS API service.
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
