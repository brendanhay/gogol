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
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing APIs Reference>
module Network.Google.SafeBrowsing
    (
    -- * Service Configuration
      safeBrowsingService

    -- * API Declaration
    , SafeBrowsingAPI

    -- * Resources

    -- ** safebrowsing.fullHashes.find
    , module Network.Google.Resource.SafeBrowsing.FullHashes.Find

    -- ** safebrowsing.threatListUpdates.fetch
    , module Network.Google.Resource.SafeBrowsing.ThreatListUpdates.Fetch

    -- ** safebrowsing.threatLists.list
    , module Network.Google.Resource.SafeBrowsing.ThreatLists.List

    -- ** safebrowsing.threatMatches.find
    , module Network.Google.Resource.SafeBrowsing.ThreatMatches.Find

    -- * Types

    -- ** ThreatEntryMetadata
    , ThreatEntryMetadata
    , threatEntryMetadata
    , temEntries

    -- ** Checksum
    , Checksum
    , checksum
    , cSha256

    -- ** FindThreatMatchesResponse
    , FindThreatMatchesResponse
    , findThreatMatchesResponse
    , ftmrMatches

    -- ** ThreatInfo
    , ThreatInfo
    , threatInfo
    , tiThreatEntries
    , tiThreatTypes
    , tiPlatformTypes
    , tiThreatEntryTypes

    -- ** FetchThreatListUpdatesRequest
    , FetchThreatListUpdatesRequest
    , fetchThreatListUpdatesRequest
    , ftlurListUpdateRequests
    , ftlurClient

    -- ** FindFullHashesRequest
    , FindFullHashesRequest
    , findFullHashesRequest
    , ffhrThreatInfo
    , ffhrClientStates
    , ffhrClient

    -- ** Constraints
    , Constraints
    , constraints
    , cMaxUpdateEntries
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

    -- ** ListUpdateRequest
    , ListUpdateRequest
    , listUpdateRequest
    , lurState
    , lurThreatEntryType
    , lurConstraints
    , lurThreatType
    , lurPlatformType

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
import           Network.Google.Resource.SafeBrowsing.FullHashes.Find
import           Network.Google.Resource.SafeBrowsing.ThreatLists.List
import           Network.Google.Resource.SafeBrowsing.ThreatListUpdates.Fetch
import           Network.Google.Resource.SafeBrowsing.ThreatMatches.Find
import           Network.Google.SafeBrowsing.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Safe Browsing APIs service.
type SafeBrowsingAPI =
     FullHashesFindResource :<|> ThreatMatchesFindResource
       :<|> ThreatListUpdatesFetchResource
       :<|> ThreatListsListResource
