{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SafeBrowsing
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables client applications to check web resources (most commonly URLs) against Google-generated lists of unsafe web resources. The Safe Browsing APIs are for non-commercial use only. If you need to use APIs to detect malicious URLs for commercial purposes – meaning “for sale or revenue-generating purposes” – please refer to the Web Risk API.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference>
module Gogol.SafeBrowsing
  ( -- * Configuration
    safeBrowsingService,

    -- * Resources

    -- ** safebrowsing.encodedFullHashes.get
    SafeBrowsingEncodedFullHashesGetResource,
    SafeBrowsingEncodedFullHashesGet (..),
    newSafeBrowsingEncodedFullHashesGet,

    -- ** safebrowsing.encodedUpdates.get
    SafeBrowsingEncodedUpdatesGetResource,
    SafeBrowsingEncodedUpdatesGet (..),
    newSafeBrowsingEncodedUpdatesGet,

    -- ** safebrowsing.fullHashes.find
    SafeBrowsingFullHashesFindResource,
    SafeBrowsingFullHashesFind (..),
    newSafeBrowsingFullHashesFind,

    -- ** safebrowsing.threatHits.create
    SafeBrowsingThreatHitsCreateResource,
    SafeBrowsingThreatHitsCreate (..),
    newSafeBrowsingThreatHitsCreate,

    -- ** safebrowsing.threatListUpdates.fetch
    SafeBrowsingThreatListUpdatesFetchResource,
    SafeBrowsingThreatListUpdatesFetch (..),
    newSafeBrowsingThreatListUpdatesFetch,

    -- ** safebrowsing.threatLists.list
    SafeBrowsingThreatListsListResource,
    SafeBrowsingThreatListsList (..),
    newSafeBrowsingThreatListsList,

    -- ** safebrowsing.threatMatches.find
    SafeBrowsingThreatMatchesFindResource,
    SafeBrowsingThreatMatchesFind (..),
    newSafeBrowsingThreatMatchesFind,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- ** GoogleSecuritySafebrowsingV4Checksum
    GoogleSecuritySafebrowsingV4Checksum (..),
    newGoogleSecuritySafebrowsingV4Checksum,

    -- ** GoogleSecuritySafebrowsingV4ClientInfo
    GoogleSecuritySafebrowsingV4ClientInfo (..),
    newGoogleSecuritySafebrowsingV4ClientInfo,

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest,

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest,

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType (..),

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType (..),

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType (..),

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints,

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem (..),

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse,

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse,

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType (..),

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType (..),

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType (..),

    -- ** GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType (..),

    -- ** GoogleSecuritySafebrowsingV4FindFullHashesRequest
    GoogleSecuritySafebrowsingV4FindFullHashesRequest (..),
    newGoogleSecuritySafebrowsingV4FindFullHashesRequest,

    -- ** GoogleSecuritySafebrowsingV4FindFullHashesResponse
    GoogleSecuritySafebrowsingV4FindFullHashesResponse (..),
    newGoogleSecuritySafebrowsingV4FindFullHashesResponse,

    -- ** GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    GoogleSecuritySafebrowsingV4FindThreatMatchesRequest (..),
    newGoogleSecuritySafebrowsingV4FindThreatMatchesRequest,

    -- ** GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
    GoogleSecuritySafebrowsingV4FindThreatMatchesResponse (..),
    newGoogleSecuritySafebrowsingV4FindThreatMatchesResponse,

    -- ** GoogleSecuritySafebrowsingV4ListThreatListsResponse
    GoogleSecuritySafebrowsingV4ListThreatListsResponse (..),
    newGoogleSecuritySafebrowsingV4ListThreatListsResponse,

    -- ** GoogleSecuritySafebrowsingV4RawHashes
    GoogleSecuritySafebrowsingV4RawHashes (..),
    newGoogleSecuritySafebrowsingV4RawHashes,

    -- ** GoogleSecuritySafebrowsingV4RawIndices
    GoogleSecuritySafebrowsingV4RawIndices (..),
    newGoogleSecuritySafebrowsingV4RawIndices,

    -- ** GoogleSecuritySafebrowsingV4RiceDeltaEncoding
    GoogleSecuritySafebrowsingV4RiceDeltaEncoding (..),
    newGoogleSecuritySafebrowsingV4RiceDeltaEncoding,

    -- ** GoogleSecuritySafebrowsingV4ThreatEntry
    GoogleSecuritySafebrowsingV4ThreatEntry (..),
    newGoogleSecuritySafebrowsingV4ThreatEntry,

    -- ** GoogleSecuritySafebrowsingV4ThreatEntryMetadata
    GoogleSecuritySafebrowsingV4ThreatEntryMetadata (..),
    newGoogleSecuritySafebrowsingV4ThreatEntryMetadata,

    -- ** GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry (..),
    newGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry,

    -- ** GoogleSecuritySafebrowsingV4ThreatEntrySet
    GoogleSecuritySafebrowsingV4ThreatEntrySet (..),
    newGoogleSecuritySafebrowsingV4ThreatEntrySet,

    -- ** GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType
    GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatHit
    GoogleSecuritySafebrowsingV4ThreatHit (..),
    newGoogleSecuritySafebrowsingV4ThreatHit,

    -- ** GoogleSecuritySafebrowsingV4ThreatHit_PlatformType
    GoogleSecuritySafebrowsingV4ThreatHit_PlatformType (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatHit_ThreatType
    GoogleSecuritySafebrowsingV4ThreatHit_ThreatType (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatHitThreatSource
    GoogleSecuritySafebrowsingV4ThreatHitThreatSource (..),
    newGoogleSecuritySafebrowsingV4ThreatHitThreatSource,

    -- ** GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type
    GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatHitUserInfo
    GoogleSecuritySafebrowsingV4ThreatHitUserInfo (..),
    newGoogleSecuritySafebrowsingV4ThreatHitUserInfo,

    -- ** GoogleSecuritySafebrowsingV4ThreatInfo
    GoogleSecuritySafebrowsingV4ThreatInfo (..),
    newGoogleSecuritySafebrowsingV4ThreatInfo,

    -- ** GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem
    GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem
    GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem
    GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatListDescriptor
    GoogleSecuritySafebrowsingV4ThreatListDescriptor (..),
    newGoogleSecuritySafebrowsingV4ThreatListDescriptor,

    -- ** GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType
    GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType
    GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType
    GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatMatch
    GoogleSecuritySafebrowsingV4ThreatMatch (..),
    newGoogleSecuritySafebrowsingV4ThreatMatch,

    -- ** GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType
    GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType
    GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType (..),

    -- ** GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType
    GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType (..),
  )
where

import Gogol.SafeBrowsing.EncodedFullHashes.Get
import Gogol.SafeBrowsing.EncodedUpdates.Get
import Gogol.SafeBrowsing.FullHashes.Find
import Gogol.SafeBrowsing.ThreatHits.Create
import Gogol.SafeBrowsing.ThreatListUpdates.Fetch
import Gogol.SafeBrowsing.ThreatLists.List
import Gogol.SafeBrowsing.ThreatMatches.Find
import Gogol.SafeBrowsing.Types
