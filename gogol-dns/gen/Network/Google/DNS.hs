{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DNS
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google Cloud DNS API provides services for configuring and serving
-- authoritative DNS records.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference>
module Network.Google.DNS
    (
    -- * API
      DNSAPI
    , dNSAPI
    , dNSRequest

    -- * Service Methods

    -- * REST Resources

    -- ** DNSChangesCreate
    , module Network.Google.Resource.DNS.Changes.Create

    -- ** DNSChangesGet
    , module Network.Google.Resource.DNS.Changes.Get

    -- ** DNSChangesList
    , module Network.Google.Resource.DNS.Changes.List

    -- ** DNSManagedZonesCreate
    , module Network.Google.Resource.DNS.ManagedZones.Create

    -- ** DNSManagedZonesDelete
    , module Network.Google.Resource.DNS.ManagedZones.Delete

    -- ** DNSManagedZonesGet
    , module Network.Google.Resource.DNS.ManagedZones.Get

    -- ** DNSManagedZonesList
    , module Network.Google.Resource.DNS.ManagedZones.List

    -- ** DNSProjectsGet
    , module Network.Google.Resource.DNS.Projects.Get

    -- ** DNSResourceRecordSetsList
    , module Network.Google.Resource.DNS.ResourceRecordSets.List

    -- * Types

    -- ** ChangesListResponse
    , ChangesListResponse
    , changesListResponse
    , clrNextPageToken
    , clrChanges
    , clrKind

    -- ** Project
    , Project
    , project
    , pKind
    , pId
    , pNumber
    , pQuota

    -- ** ChangesListSortBy
    , ChangesListSortBy (..)

    -- ** Change
    , Change
    , change
    , cStatus
    , cAdditions
    , cStartTime
    , cKind
    , cDeletions
    , cId

    -- ** ResourceRecordSetsListResponse
    , ResourceRecordSetsListResponse
    , resourceRecordSetsListResponse
    , rrslrNextPageToken
    , rrslrKind
    , rrslrRrsets

    -- ** ResourceRecordSet
    , ResourceRecordSet
    , resourceRecordSet
    , rrsTtl
    , rrsKind
    , rrsName
    , rrsType
    , rrsRrdatas

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
    , mzNameServers

    -- ** Quota
    , Quota
    , quota
    , qRrsetDeletionsPerChange
    , qRrsetsPerManagedZone
    , qKind
    , qResourceRecordsPerRrset
    , qRrsetAdditionsPerChange
    , qManagedZones
    , qTotalRrdataSizePerChange

    -- ** ManagedZonesListResponse
    , ManagedZonesListResponse
    , managedZonesListResponse
    , mzlrNextPageToken
    , mzlrKind
    , mzlrManagedZones
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DNS.Changes.Create
import           Network.Google.Resource.DNS.Changes.Get
import           Network.Google.Resource.DNS.Changes.List
import           Network.Google.Resource.DNS.ManagedZones.Create
import           Network.Google.Resource.DNS.ManagedZones.Delete
import           Network.Google.Resource.DNS.ManagedZones.Get
import           Network.Google.Resource.DNS.ManagedZones.List
import           Network.Google.Resource.DNS.Projects.Get
import           Network.Google.Resource.DNS.ResourceRecordSets.List

{- $resources
TODO
-}

type DNSAPI =
     ChangesListResource :<|> ChangesGetResource :<|>
       ChangesCreateResource
       :<|> ResourceRecordSetsListResource
       :<|> ManagedZonesListResource
       :<|> ManagedZonesGetResource
       :<|> ManagedZonesCreateResource
       :<|> ManagedZonesDeleteResource
       :<|> ProjectsGetResource

dNSAPI :: Proxy DNSAPI
dNSAPI = Proxy
