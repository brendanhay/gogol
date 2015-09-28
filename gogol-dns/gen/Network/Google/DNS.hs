{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | The Google Cloud DNS API provides services for configuring and serving
-- authoritative DNS records.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference>
module Network.Google.DNS
    (
    -- * REST Resources

    -- ** Google Cloud DNS API
      DNS
    , dNS
    , dNSURL

    -- ** dns.changes.create
    , module Network.Google.API.DNS.Changes.Create

    -- ** dns.changes.get
    , module Network.Google.API.DNS.Changes.Get

    -- ** dns.changes.list
    , module Network.Google.API.DNS.Changes.List

    -- ** dns.managedZones.create
    , module Network.Google.API.DNS.ManagedZones.Create

    -- ** dns.managedZones.delete
    , module Network.Google.API.DNS.ManagedZones.Delete

    -- ** dns.managedZones.get
    , module Network.Google.API.DNS.ManagedZones.Get

    -- ** dns.managedZones.list
    , module Network.Google.API.DNS.ManagedZones.List

    -- ** dns.projects.get
    , module Network.Google.API.DNS.Projects.Get

    -- ** dns.resourceRecordSets.list
    , module Network.Google.API.DNS.ResourceRecordSets.List

    -- * Types

    -- ** ResourceRecordSetsListResponse
    , ResourceRecordSetsListResponse
    , resourceRecordSetsListResponse
    , rrslrNextPageToken
    , rrslrKind
    , rrslrRrsets

    -- ** ChangesList'SortBy
    , ChangesList'SortBy (..)

    -- ** Alt
    , Alt (..)

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
    , mzDnsName
    , mzDescription
    , mzNameServers

    -- ** Change
    , Change
    , change
    , cStatus
    , cAdditions
    , cStartTime
    , cKind
    , cDeletions
    , cId

    -- ** ManagedZonesListResponse
    , ManagedZonesListResponse
    , managedZonesListResponse
    , mzlrNextPageToken
    , mzlrKind
    , mzlrManagedZones

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
    ) where

import           Network.Google.API.DNS.Changes.Create
import           Network.Google.API.DNS.Changes.Get
import           Network.Google.API.DNS.Changes.List
import           Network.Google.API.DNS.ManagedZones.Create
import           Network.Google.API.DNS.ManagedZones.Delete
import           Network.Google.API.DNS.ManagedZones.Get
import           Network.Google.API.DNS.ManagedZones.List
import           Network.Google.API.DNS.Projects.Get
import           Network.Google.API.DNS.ResourceRecordSets.List
import           Network.Google.DNS.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DNS =
     ManagedZonesGetAPI :<|> ProjectsGetAPI :<|>
       ManagedZonesListAPI
       :<|> ChangesCreateAPI
       :<|> ChangesGetAPI
       :<|> ResourceRecordSetsListAPI
       :<|> ManagedZonesCreateAPI
       :<|> ChangesListAPI
       :<|> ManagedZonesDeleteAPI

dNS :: Proxy DNS
dNS = Proxy
