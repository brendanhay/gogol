-- |
-- Module      : Network.Google.CloudDNS
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud DNS API provides services for configuring and serving authoritative DNS records.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference>
module Network.Google.CloudDNS
    (
    -- * API Definition
      CloudDNS



    -- * Types

    -- ** Change
    , Change
    , change
    , cStatus
    , cAdditions
    , cStartTime
    , cKind
    , cDeletions
    , cId

    -- ** ChangesListResponse
    , ChangesListResponse
    , changesListResponse
    , clrNextPageToken
    , clrChanges
    , clrKind

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

    -- ** ManagedZonesListResponse
    , ManagedZonesListResponse
    , managedZonesListResponse
    , mzlrNextPageToken
    , mzlrKind
    , mzlrManagedZones

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

    -- ** ResourceRecordSet
    , ResourceRecordSet
    , resourceRecordSet
    , rrsTtl
    , rrsKind
    , rrsName
    , rrsType
    , rrsRrdatas

    -- ** ResourceRecordSetsListResponse
    , ResourceRecordSetsListResponse
    , resourceRecordSetsListResponse
    , rrslrNextPageToken
    , rrslrKind
    , rrslrRrsets
    ) where

import           Network.Google.CloudDNS.Types

{- $resources
TODO
-}

type CloudDNS = ()

cloudDNS :: Proxy CloudDNS
cloudDNS = Proxy




