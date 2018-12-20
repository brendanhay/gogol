{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * ManagedZoneDNSSecConfigNonExistence
    , ManagedZoneDNSSecConfigNonExistence (..)

    -- * OperationDNSKeyContext
    , OperationDNSKeyContext
    , operationDNSKeyContext
    , odkcOldValue
    , odkcNewValue

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

    -- * ManagedZoneDNSSecConfigState
    , ManagedZoneDNSSecConfigState (..)

    -- * ManagedZonesDeleteResponse
    , ManagedZonesDeleteResponse
    , managedZonesDeleteResponse
    , mzdrHeader

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

    -- * DNSResponseHeader
    , DNSResponseHeader
    , dnsResponseHeader
    , drhOperationId

    -- * DNSKeySpec
    , DNSKeySpec
    , dnsKeySpec
    , dksKeyType
    , dksKind
    , dksAlgorithm
    , dksKeyLength

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

    -- * ChangeStatus
    , ChangeStatus (..)

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

    -- * ManagedZone
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

    -- * Quota
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

    -- * DNSKeyType
    , DNSKeyType (..)

    -- * DNSKeyDigest
    , DNSKeyDigest
    , dnsKeyDigest
    , dkdDigest
    , dkdType

    -- * ManagedZoneOperationsListSortBy
    , ManagedZoneOperationsListSortBy (..)

    -- * ManagedZonesListResponse
    , ManagedZonesListResponse
    , managedZonesListResponse
    , mzlrNextPageToken
    , mzlrKind
    , mzlrHeader
    , mzlrManagedZones
    ) where

import           Network.Google.DNS.Types.Product
import           Network.Google.DNS.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2beta1' of the Google Cloud DNS API. This contains the host and root path used as a starting point for constructing service requests.
dNSService :: ServiceConfig
dNSService
  = defaultService (ServiceId "dns:v2beta1")
      "www.googleapis.com"

-- | View your DNS records hosted by Google Cloud DNS
ndevClouddnsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/ndev.clouddns.readonly"]
ndevClouddnsReadOnlyScope = Proxy;

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy;

-- | View and manage your DNS records hosted by Google Cloud DNS
ndevClouddnsReadwriteScope :: Proxy '["https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
ndevClouddnsReadwriteScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
