{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      dNSService

    -- * OAuth Scopes
    , ndevClouddnsReadonlyScope
    , cloudPlatformReadOnlyScope
    , ndevClouddnsReadwriteScope
    , cloudPlatformScope

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

    -- * ChangesListSortBy
    , ChangesListSortBy (..)

    -- * Change
    , Change
    , change
    , cStatus
    , cAdditions
    , cStartTime
    , cKind
    , cDeletions
    , cId

    -- * ResourceRecordSetsListResponse
    , ResourceRecordSetsListResponse
    , resourceRecordSetsListResponse
    , rrslrNextPageToken
    , rrslrKind
    , rrslrRrSets

    -- * ChangeStatus
    , ChangeStatus (..)

    -- * ResourceRecordSet
    , ResourceRecordSet
    , resourceRecordSet
    , rrsTtl
    , rrsKind
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
    , mzNameServers

    -- * Quota
    , Quota
    , quota
    , qRrSetDeletionsPerChange
    , qRrSetsPerManagedZone
    , qKind
    , qResourceRecordsPerRrSet
    , qRrSetAdditionsPerChange
    , qManagedZones
    , qTotalRrDataSizePerChange

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

-- | Default request referring to version 'v1' of the Google Cloud DNS API. This contains the host and root path used as a starting point for constructing service requests.
dNSService :: ServiceConfig
dNSService
  = defaultService (ServiceId "dns:v1")
      "www.googleapis.com"

-- | View your DNS records hosted by Google Cloud DNS
ndevClouddnsReadonlyScope :: OAuthScope
ndevClouddnsReadonlyScope = "https://www.googleapis.com/auth/ndev.clouddns.readonly";

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: OAuthScope
cloudPlatformReadOnlyScope = "https://www.googleapis.com/auth/cloud-platform.read-only";

-- | View and manage your DNS records hosted by Google Cloud DNS
ndevClouddnsReadwriteScope :: OAuthScope
ndevClouddnsReadwriteScope = "https://www.googleapis.com/auth/ndev.clouddns.readwrite";

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: OAuthScope
cloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";
