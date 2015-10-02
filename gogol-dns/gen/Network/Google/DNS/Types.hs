{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DNS.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DNS.Types
    (
    -- * Service URL
      dNSURL

    -- * ChangesListResponse
    , ChangesListResponse
    , changesListResponse
    , clrNextPageToken
    , clrChanges
    , clrKind

    -- * Project
    , Project
    , project
    , pKind
    , pId
    , pNumber
    , pQuota

    -- * Change
    , Change
    , change
    , cStatus
    , cAdditions
    , cStartTime
    , cKind
    , cDeletions
    , cId

    -- * DNSChangesListSortBy
    , DNSChangesListSortBy (..)

    -- * ResourceRecordSetsListResponse
    , ResourceRecordSetsListResponse
    , resourceRecordSetsListResponse
    , rrslrNextPageToken
    , rrslrKind
    , rrslrRrsets

    -- * ResourceRecordSet
    , ResourceRecordSet
    , resourceRecordSet
    , rrsTtl
    , rrsKind
    , rrsName
    , rrsType
    , rrsRrdatas

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
    , mzNameServers

    -- * Quota
    , Quota
    , quota
    , qRrsetDeletionsPerChange
    , qRrsetsPerManagedZone
    , qKind
    , qResourceRecordsPerRrset
    , qRrsetAdditionsPerChange
    , qManagedZones
    , qTotalRrdataSizePerChange

    -- * ManagedZonesListResponse
    , ManagedZonesListResponse
    , managedZonesListResponse
    , mzlrNextPageToken
    , mzlrKind
    , mzlrManagedZones
    ) where

import           Network.Google.DNS.Types.Product
import           Network.Google.DNS.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta1' of the Google Cloud DNS API.
dNSURL :: BaseUrl
dNSURL
  = BaseUrl Https
      "https://www.googleapis.com/dns/v1beta1/projects/"
      443
