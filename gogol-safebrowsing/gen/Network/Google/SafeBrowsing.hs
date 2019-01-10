{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SafeBrowsing
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables client applications to check web resources (most commonly URLs)
-- against Google-generated lists of unsafe web resources.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference>
module Network.Google.SafeBrowsing
    (
    -- * Service Configuration
      safeBrowsingService

    -- * API Declaration
    , SafeBrowsingAPI

    -- * Resources

    -- ** safebrowsing.encodedFullHashes.get
    , module Network.Google.Resource.SafeBrowsing.EncodedFullHashes.Get

    -- ** safebrowsing.encodedUpdates.get
    , module Network.Google.Resource.SafeBrowsing.EncodedUpdates.Get

    -- ** safebrowsing.fullHashes.find
    , module Network.Google.Resource.SafeBrowsing.FullHashes.Find

    -- ** safebrowsing.threatHits.create
    , module Network.Google.Resource.SafeBrowsing.ThreatHits.Create

    -- ** safebrowsing.threatListUpdates.fetch
    , module Network.Google.Resource.SafeBrowsing.ThreatListUpdates.Fetch

    -- ** safebrowsing.threatLists.list
    , module Network.Google.Resource.SafeBrowsing.ThreatLists.List

    -- ** safebrowsing.threatMatches.find
    , module Network.Google.Resource.SafeBrowsing.ThreatMatches.Find

    -- * Types

    -- ** ListUpdateRequestThreatType
    , ListUpdateRequestThreatType (..)

    -- ** ListUpdateResponsePlatformType
    , ListUpdateResponsePlatformType (..)

    -- ** ThreatEntryMetadata
    , ThreatEntryMetadata
    , threatEntryMetadata
    , temEntries

    -- ** UserInfo
    , UserInfo
    , userInfo
    , uiRegionCode
    , uiUserId

    -- ** ThreatMatchThreatEntryType
    , ThreatMatchThreatEntryType (..)

    -- ** ThreatMatchPlatformType
    , ThreatMatchPlatformType (..)

    -- ** Checksum
    , Checksum
    , checksum
    , cSha256

    -- ** FindThreatMatchesResponse
    , FindThreatMatchesResponse
    , findThreatMatchesResponse
    , ftmrMatches

    -- ** ThreatListDescriptorThreatEntryType
    , ThreatListDescriptorThreatEntryType (..)

    -- ** Empty
    , Empty
    , empty

    -- ** ListUpdateRequestPlatformType
    , ListUpdateRequestPlatformType (..)

    -- ** ThreatListDescriptorPlatformType
    , ThreatListDescriptorPlatformType (..)

    -- ** ThreatInfo
    , ThreatInfo
    , threatInfo
    , tiThreatEntries
    , tiThreatTypes
    , tiPlatformTypes
    , tiThreatEntryTypes

    -- ** ListUpdateResponseResponseType
    , ListUpdateResponseResponseType (..)

    -- ** ThreatSourceType
    , ThreatSourceType (..)

    -- ** ThreatHit
    , ThreatHit
    , threatHit
    , thUserInfo
    , thThreatType
    , thResources
    , thEntry
    , thClientInfo
    , thPlatformType

    -- ** FetchThreatListUpdatesRequest
    , FetchThreatListUpdatesRequest
    , fetchThreatListUpdatesRequest
    , ftlurListUpdateRequests
    , ftlurClient

    -- ** FindFullHashesRequest
    , FindFullHashesRequest
    , findFullHashesRequest
    , ffhrThreatInfo
    , ffhrAPIClient
    , ffhrClientStates
    , ffhrClient

    -- ** ThreatMatchThreatType
    , ThreatMatchThreatType (..)

    -- ** ThreatEntrySetCompressionType
    , ThreatEntrySetCompressionType (..)

    -- ** Constraints
    , Constraints
    , constraints
    , cMaxUpdateEntries
    , cDeviceLocation
    , cLanguage
    , cRegion
    , cSupportedCompressions
    , cMaxDatabaseEntries

    -- ** RiceDeltaEncoding
    , RiceDeltaEncoding
    , riceDeltaEncoding
    , rdeFirstValue
    , rdeRiceParameter
    , rdeNumEntries
    , rdeEncodedData

    -- ** ListThreatListsResponse
    , ListThreatListsResponse
    , listThreatListsResponse
    , ltlrThreatLists

    -- ** ThreatListDescriptorThreatType
    , ThreatListDescriptorThreatType (..)

    -- ** ThreatHitPlatformType
    , ThreatHitPlatformType (..)

    -- ** ThreatListDescriptor
    , ThreatListDescriptor
    , threatListDescriptor
    , tldThreatEntryType
    , tldThreatType
    , tldPlatformType

    -- ** ClientInfo
    , ClientInfo
    , clientInfo
    , ciClientId
    , ciClientVersion

    -- ** FindThreatMatchesRequest
    , FindThreatMatchesRequest
    , findThreatMatchesRequest
    , ftmrThreatInfo
    , ftmrClient

    -- ** Xgafv
    , Xgafv (..)

    -- ** ListUpdateRequest
    , ListUpdateRequest
    , listUpdateRequest
    , lurState
    , lurThreatEntryType
    , lurConstraints
    , lurThreatType
    , lurPlatformType

    -- ** ListUpdateResponseThreatEntryType
    , ListUpdateResponseThreatEntryType (..)

    -- ** ThreatEntry
    , ThreatEntry
    , threatEntry
    , teHash
    , teURL
    , teDigest

    -- ** ThreatMatch
    , ThreatMatch
    , threatMatch
    , tmThreatEntryMetadata
    , tmThreatEntryType
    , tmThreatType
    , tmPlatformType
    , tmCacheDuration
    , tmThreat

    -- ** ThreatHitThreatType
    , ThreatHitThreatType (..)

    -- ** ListUpdateRequestThreatEntryType
    , ListUpdateRequestThreatEntryType (..)

    -- ** RawHashes
    , RawHashes
    , rawHashes
    , rhPrefixSize
    , rhRawHashes

    -- ** ListUpdateResponse
    , ListUpdateResponse
    , listUpdateResponse
    , lAdditions
    , lThreatEntryType
    , lChecksum
    , lThreatType
    , lPlatformType
    , lNewClientState
    , lRemovals
    , lResponseType

    -- ** ThreatEntrySet
    , ThreatEntrySet
    , threatEntrySet
    , tesRiceHashes
    , tesRiceIndices
    , tesRawHashes
    , tesRawIndices
    , tesCompressionType

    -- ** RawIndices
    , RawIndices
    , rawIndices
    , riIndices

    -- ** ThreatSource
    , ThreatSource
    , threatSource
    , tsRemoteIP
    , tsURL
    , tsReferrer
    , tsType

    -- ** ListUpdateResponseThreatType
    , ListUpdateResponseThreatType (..)

    -- ** FindFullHashesResponse
    , FindFullHashesResponse
    , findFullHashesResponse
    , ffhrMatches
    , ffhrNegativeCacheDuration
    , ffhrMinimumWaitDuration

    -- ** MetadataEntry
    , MetadataEntry
    , metadataEntry
    , meValue
    , meKey

    -- ** FetchThreatListUpdatesResponse
    , FetchThreatListUpdatesResponse
    , fetchThreatListUpdatesResponse
    , ftlurListUpdateResponses
    , ftlurMinimumWaitDuration
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.SafeBrowsing.EncodedFullHashes.Get
import           Network.Google.Resource.SafeBrowsing.EncodedUpdates.Get
import           Network.Google.Resource.SafeBrowsing.FullHashes.Find
import           Network.Google.Resource.SafeBrowsing.ThreatHits.Create
import           Network.Google.Resource.SafeBrowsing.ThreatLists.List
import           Network.Google.Resource.SafeBrowsing.ThreatListUpdates.Fetch
import           Network.Google.Resource.SafeBrowsing.ThreatMatches.Find
import           Network.Google.SafeBrowsing.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Safe Browsing API service.
type SafeBrowsingAPI =
     FullHashesFindResource :<|> EncodedUpdatesGetResource
       :<|> ThreatHitsCreateResource
       :<|> ThreatMatchesFindResource
       :<|> ThreatListUpdatesFetchResource
       :<|> ThreatListsListResource
       :<|> EncodedFullHashesGetResource
