{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SafeBrowsing.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SafeBrowsing.Types
    (
    -- * Service Configuration
      safeBrowsingService

    -- * ListUpdateRequestThreatType
    , ListUpdateRequestThreatType (..)

    -- * ListUpdateResponsePlatformType
    , ListUpdateResponsePlatformType (..)

    -- * ThreatEntryMetadata
    , ThreatEntryMetadata
    , threatEntryMetadata
    , temEntries

    -- * UserInfo
    , UserInfo
    , userInfo
    , uiRegionCode
    , uiUserId

    -- * ThreatMatchThreatEntryType
    , ThreatMatchThreatEntryType (..)

    -- * ThreatMatchPlatformType
    , ThreatMatchPlatformType (..)

    -- * Checksum
    , Checksum
    , checksum
    , cSha256

    -- * FindThreatMatchesResponse
    , FindThreatMatchesResponse
    , findThreatMatchesResponse
    , ftmrMatches

    -- * ThreatListDescriptorThreatEntryType
    , ThreatListDescriptorThreatEntryType (..)

    -- * Empty
    , Empty
    , empty

    -- * ListUpdateRequestPlatformType
    , ListUpdateRequestPlatformType (..)

    -- * ThreatListDescriptorPlatformType
    , ThreatListDescriptorPlatformType (..)

    -- * ThreatInfo
    , ThreatInfo
    , threatInfo
    , tiThreatEntries
    , tiThreatTypes
    , tiPlatformTypes
    , tiThreatEntryTypes

    -- * ListUpdateResponseResponseType
    , ListUpdateResponseResponseType (..)

    -- * ThreatSourceType
    , ThreatSourceType (..)

    -- * ThreatHit
    , ThreatHit
    , threatHit
    , thUserInfo
    , thThreatType
    , thResources
    , thEntry
    , thClientInfo
    , thPlatformType

    -- * FetchThreatListUpdatesRequest
    , FetchThreatListUpdatesRequest
    , fetchThreatListUpdatesRequest
    , ftlurListUpdateRequests
    , ftlurClient

    -- * FindFullHashesRequest
    , FindFullHashesRequest
    , findFullHashesRequest
    , ffhrThreatInfo
    , ffhrAPIClient
    , ffhrClientStates
    , ffhrClient

    -- * ThreatMatchThreatType
    , ThreatMatchThreatType (..)

    -- * ThreatEntrySetCompressionType
    , ThreatEntrySetCompressionType (..)

    -- * Constraints
    , Constraints
    , constraints
    , cMaxUpdateEntries
    , cDeviceLocation
    , cLanguage
    , cRegion
    , cSupportedCompressions
    , cMaxDatabaseEntries

    -- * RiceDeltaEncoding
    , RiceDeltaEncoding
    , riceDeltaEncoding
    , rdeFirstValue
    , rdeRiceParameter
    , rdeNumEntries
    , rdeEncodedData

    -- * ListThreatListsResponse
    , ListThreatListsResponse
    , listThreatListsResponse
    , ltlrThreatLists

    -- * ThreatListDescriptorThreatType
    , ThreatListDescriptorThreatType (..)

    -- * ThreatHitPlatformType
    , ThreatHitPlatformType (..)

    -- * ThreatListDescriptor
    , ThreatListDescriptor
    , threatListDescriptor
    , tldThreatEntryType
    , tldThreatType
    , tldPlatformType

    -- * ClientInfo
    , ClientInfo
    , clientInfo
    , ciClientId
    , ciClientVersion

    -- * FindThreatMatchesRequest
    , FindThreatMatchesRequest
    , findThreatMatchesRequest
    , ftmrThreatInfo
    , ftmrClient

    -- * Xgafv
    , Xgafv (..)

    -- * ListUpdateRequest
    , ListUpdateRequest
    , listUpdateRequest
    , lurState
    , lurThreatEntryType
    , lurConstraints
    , lurThreatType
    , lurPlatformType

    -- * ListUpdateResponseThreatEntryType
    , ListUpdateResponseThreatEntryType (..)

    -- * ThreatEntry
    , ThreatEntry
    , threatEntry
    , teHash
    , teURL
    , teDigest

    -- * ThreatMatch
    , ThreatMatch
    , threatMatch
    , tmThreatEntryMetadata
    , tmThreatEntryType
    , tmThreatType
    , tmPlatformType
    , tmCacheDuration
    , tmThreat

    -- * ThreatHitThreatType
    , ThreatHitThreatType (..)

    -- * ListUpdateRequestThreatEntryType
    , ListUpdateRequestThreatEntryType (..)

    -- * RawHashes
    , RawHashes
    , rawHashes
    , rhPrefixSize
    , rhRawHashes

    -- * ListUpdateResponse
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

    -- * ThreatEntrySet
    , ThreatEntrySet
    , threatEntrySet
    , tesRiceHashes
    , tesRiceIndices
    , tesRawHashes
    , tesRawIndices
    , tesCompressionType

    -- * RawIndices
    , RawIndices
    , rawIndices
    , riIndices

    -- * ThreatSource
    , ThreatSource
    , threatSource
    , tsRemoteIP
    , tsURL
    , tsReferrer
    , tsType

    -- * ListUpdateResponseThreatType
    , ListUpdateResponseThreatType (..)

    -- * FindFullHashesResponse
    , FindFullHashesResponse
    , findFullHashesResponse
    , ffhrMatches
    , ffhrNegativeCacheDuration
    , ffhrMinimumWaitDuration

    -- * MetadataEntry
    , MetadataEntry
    , metadataEntry
    , meValue
    , meKey

    -- * FetchThreatListUpdatesResponse
    , FetchThreatListUpdatesResponse
    , fetchThreatListUpdatesResponse
    , ftlurListUpdateResponses
    , ftlurMinimumWaitDuration
    ) where

import           Network.Google.Prelude
import           Network.Google.SafeBrowsing.Types.Product
import           Network.Google.SafeBrowsing.Types.Sum

-- | Default request referring to version 'v4' of the Safe Browsing API. This contains the host and root path used as a starting point for constructing service requests.
safeBrowsingService :: ServiceConfig
safeBrowsingService
  = defaultService (ServiceId "safebrowsing:v4")
      "safebrowsing.googleapis.com"
