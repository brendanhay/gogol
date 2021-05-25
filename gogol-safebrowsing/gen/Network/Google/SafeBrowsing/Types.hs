{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * GoogleSecuritySafebrowsingV4ThreatHit
    , GoogleSecuritySafebrowsingV4ThreatHit
    , googleSecuritySafebrowsingV4ThreatHit
    , gssvthUserInfo
    , gssvthThreatType
    , gssvthResources
    , gssvthEntry
    , gssvthClientInfo
    , gssvthPlatformType

    -- * GoogleSecuritySafebrowsingV4ThreatMatchThreatType
    , GoogleSecuritySafebrowsingV4ThreatMatchThreatType (..)

    -- * GoogleSecuritySafebrowsingV4RawIndices
    , GoogleSecuritySafebrowsingV4RawIndices
    , googleSecuritySafebrowsingV4RawIndices
    , gssvriIndices

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    , googleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    , gssvftlurListUpdateRequests
    , gssvftlurClient

    -- * GoogleSecuritySafebrowsingV4FindFullHashesRequest
    , GoogleSecuritySafebrowsingV4FindFullHashesRequest
    , googleSecuritySafebrowsingV4FindFullHashesRequest
    , gssvffhrThreatInfo
    , gssvffhrAPIClient
    , gssvffhrClientStates
    , gssvffhrClient

    -- * GoogleSecuritySafebrowsingV4ThreatEntrySet
    , GoogleSecuritySafebrowsingV4ThreatEntrySet
    , googleSecuritySafebrowsingV4ThreatEntrySet
    , gssvtesRiceHashes
    , gssvtesRiceIndices
    , gssvtesRawHashes
    , gssvtesRawIndices
    , gssvtesCompressionType

    -- * GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType
    , GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType (..)

    -- * GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
    , GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
    , googleSecuritySafebrowsingV4FindThreatMatchesResponse
    , gssvftmrMatches

    -- * GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType
    , GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType (..)

    -- * GoogleSecuritySafebrowsingV4ThreatMatchPlatformType
    , GoogleSecuritySafebrowsingV4ThreatMatchPlatformType (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    , googleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    , gssvftlurlurcMaxUpdateEntries
    , gssvftlurlurcDeviceLocation
    , gssvftlurlurcLanguage
    , gssvftlurlurcRegion
    , gssvftlurlurcSupportedCompressions
    , gssvftlurlurcMaxDatabaseEntries

    -- * GoogleSecuritySafebrowsingV4ThreatEntryMetadata
    , GoogleSecuritySafebrowsingV4ThreatEntryMetadata
    , googleSecuritySafebrowsingV4ThreatEntryMetadata
    , gssvtemEntries

    -- * GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    , GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    , googleSecuritySafebrowsingV4FindThreatMatchesRequest
    , gssvftmrThreatInfo
    , gssvftmrClient

    -- * GoogleSecuritySafebrowsingV4ThreatListDescriptor
    , GoogleSecuritySafebrowsingV4ThreatListDescriptor
    , googleSecuritySafebrowsingV4ThreatListDescriptor
    , gssvtldThreatEntryType
    , gssvtldThreatType
    , gssvtldPlatformType

    -- * GoogleSecuritySafebrowsingV4ClientInfo
    , GoogleSecuritySafebrowsingV4ClientInfo
    , googleSecuritySafebrowsingV4ClientInfo
    , gssvciClientId
    , gssvciClientVersion

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType (..)

    -- * GoogleProtobufEmpty
    , GoogleProtobufEmpty
    , googleProtobufEmpty

    -- * GoogleSecuritySafebrowsingV4ThreatHitUserInfo
    , GoogleSecuritySafebrowsingV4ThreatHitUserInfo
    , googleSecuritySafebrowsingV4ThreatHitUserInfo
    , gssvthuiRegionCode
    , gssvthuiUserId

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    , googleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    , gssvftlurlurAdditions
    , gssvftlurlurThreatEntryType
    , gssvftlurlurChecksum
    , gssvftlurlurThreatType
    , gssvftlurlurPlatformType
    , gssvftlurlurNewClientState
    , gssvftlurlurRemovals
    , gssvftlurlurResponseType

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    , googleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    , gState
    , gThreatEntryType
    , gConstraints
    , gThreatType
    , gPlatformType

    -- * GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType
    , GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType (..)

    -- * GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType
    , GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType (..)

    -- * GoogleSecuritySafebrowsingV4ThreatInfo
    , GoogleSecuritySafebrowsingV4ThreatInfo
    , googleSecuritySafebrowsingV4ThreatInfo
    , gssvtiThreatEntries
    , gssvtiThreatTypes
    , gssvtiPlatformTypes
    , gssvtiThreatEntryTypes

    -- * GoogleSecuritySafebrowsingV4ThreatHitThreatSource
    , GoogleSecuritySafebrowsingV4ThreatHitThreatSource
    , googleSecuritySafebrowsingV4ThreatHitThreatSource
    , gssvthtsRemoteIP
    , gssvthtsURL
    , gssvthtsReferrer
    , gssvthtsType

    -- * GoogleSecuritySafebrowsingV4RawHashes
    , GoogleSecuritySafebrowsingV4RawHashes
    , googleSecuritySafebrowsingV4RawHashes
    , gssvrhPrefixSize
    , gssvrhRawHashes

    -- * GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem
    , GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem (..)

    -- * GoogleSecuritySafebrowsingV4Checksum
    , GoogleSecuritySafebrowsingV4Checksum
    , googleSecuritySafebrowsingV4Checksum
    , gssvcSha256

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleSecuritySafebrowsingV4ThreatMatch
    , GoogleSecuritySafebrowsingV4ThreatMatch
    , googleSecuritySafebrowsingV4ThreatMatch
    , gssvtmThreatEntryMetadata
    , gssvtmThreatEntryType
    , gssvtmThreatType
    , gssvtmPlatformType
    , gssvtmCacheDuration
    , gssvtmThreat

    -- * GoogleSecuritySafebrowsingV4ThreatHitThreatType
    , GoogleSecuritySafebrowsingV4ThreatHitThreatType (..)

    -- * GoogleSecuritySafebrowsingV4ThreatEntry
    , GoogleSecuritySafebrowsingV4ThreatEntry
    , googleSecuritySafebrowsingV4ThreatEntry
    , gssvteHash
    , gssvteURL
    , gssvteDigest

    -- * GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType
    , GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType (..)

    -- * GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem
    , GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem (..)

    -- * GoogleSecuritySafebrowsingV4ThreatHitPlatformType
    , GoogleSecuritySafebrowsingV4ThreatHitPlatformType (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem (..)

    -- * GoogleSecuritySafebrowsingV4FindFullHashesResponse
    , GoogleSecuritySafebrowsingV4FindFullHashesResponse
    , googleSecuritySafebrowsingV4FindFullHashesResponse
    , gssvffhrMatches
    , gssvffhrNegativeCacheDuration
    , gssvffhrMinimumWaitDuration

    -- * GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem
    , GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem (..)

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    , GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    , googleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    , gssvftlurListUpdateResponses
    , gssvftlurMinimumWaitDuration

    -- * GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    , GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    , googleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    , gssvtemmeValue
    , gssvtemmeKey

    -- * GoogleSecuritySafebrowsingV4ListThreatListsResponse
    , GoogleSecuritySafebrowsingV4ListThreatListsResponse
    , googleSecuritySafebrowsingV4ListThreatListsResponse
    , gssvltlrThreatLists

    -- * GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType
    , GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType (..)

    -- * GoogleSecuritySafebrowsingV4RiceDeltaEncoding
    , GoogleSecuritySafebrowsingV4RiceDeltaEncoding
    , googleSecuritySafebrowsingV4RiceDeltaEncoding
    , gssvrdeFirstValue
    , gssvrdeRiceParameter
    , gssvrdeNumEntries
    , gssvrdeEncodedData
    ) where

import Network.Google.Prelude
import Network.Google.SafeBrowsing.Types.Product
import Network.Google.SafeBrowsing.Types.Sum

-- | Default request referring to version 'v4' of the Safe Browsing API. This contains the host and root path used as a starting point for constructing service requests.
safeBrowsingService :: ServiceConfig
safeBrowsingService
  = defaultService (ServiceId "safebrowsing:v4")
      "safebrowsing.googleapis.com"
