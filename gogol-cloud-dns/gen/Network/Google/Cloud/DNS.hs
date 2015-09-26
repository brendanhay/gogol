{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Cloud.DNS
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
module Network.Google.Cloud.DNS
    (
    -- * Resources
      CloudDNS
    , ChangesAPI
    , ChangesList
    , ChangesGet
    , ChangesCreate
    , ResourceRecordSetsAPI
    , ResourceRecordSetsList
    , ManagedZonesAPI
    , ManagedZonesList
    , ManagedZonesGet
    , ManagedZonesCreate
    , ManagedZonesDelete
    , ProjectsAPI
    , ProjectsGet

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

import           Network.Google.Cloud.DNS.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type CloudDNS =
     ChangesAPI :<|> ResourceRecordSetsAPI :<|>
       ManagedZonesAPI
       :<|> ProjectsAPI

type ChangesAPI =
     ChangesList :<|> ChangesGet :<|> ChangesCreate

-- | Enumerate Changes to a ResourceRecordSet collection.
type ChangesList =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "managedZones"
       :> Capture "managedZone" Text
       :> "changes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "sortOrder" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
       :> QueryParam "sortBy" Text

-- | Fetch the representation of an existing Change.
type ChangesGet =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "managedZones"
       :> Capture "managedZone" Text
       :> "changes"
       :> Capture "changeId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Atomically update the ResourceRecordSet collection.
type ChangesCreate =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "managedZones"
       :> Capture "managedZone" Text
       :> "changes"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ResourceRecordSetsAPI = ResourceRecordSetsList

-- | Enumerate ResourceRecordSets that have been created but not yet deleted.
type ResourceRecordSetsList =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "managedZones"
       :> Capture "managedZone" Text
       :> "rrsets"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "type" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ManagedZonesAPI =
     ManagedZonesList :<|> ManagedZonesGet :<|>
       ManagedZonesCreate
       :<|> ManagedZonesDelete

-- | Enumerate ManagedZones that have been created but not yet deleted.
type ManagedZonesList =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "managedZones"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "dnsName" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Fetch the representation of an existing ManagedZone.
type ManagedZonesGet =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "managedZones"
       :> Capture "managedZone" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Create a new ManagedZone.
type ManagedZonesCreate =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "managedZones"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a previously created ManagedZone.
type ManagedZonesDelete =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "managedZones"
       :> Capture "managedZone" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ProjectsAPI = ProjectsGet

-- | Fetch the representation of an existing Project.
type ProjectsGet =
     "dns" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
