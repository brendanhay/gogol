{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SafeBrowsing.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.SafeBrowsing.Internal.Product
  (

    -- * GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- * GoogleSecuritySafebrowsingV4Checksum
    GoogleSecuritySafebrowsingV4Checksum (..),
    newGoogleSecuritySafebrowsingV4Checksum,

    -- * GoogleSecuritySafebrowsingV4ClientInfo
    GoogleSecuritySafebrowsingV4ClientInfo (..),
    newGoogleSecuritySafebrowsingV4ClientInfo,

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest,

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest,

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints,

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse,

    -- * GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse (..),
    newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse,

    -- * GoogleSecuritySafebrowsingV4FindFullHashesRequest
    GoogleSecuritySafebrowsingV4FindFullHashesRequest (..),
    newGoogleSecuritySafebrowsingV4FindFullHashesRequest,

    -- * GoogleSecuritySafebrowsingV4FindFullHashesResponse
    GoogleSecuritySafebrowsingV4FindFullHashesResponse (..),
    newGoogleSecuritySafebrowsingV4FindFullHashesResponse,

    -- * GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    GoogleSecuritySafebrowsingV4FindThreatMatchesRequest (..),
    newGoogleSecuritySafebrowsingV4FindThreatMatchesRequest,

    -- * GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
    GoogleSecuritySafebrowsingV4FindThreatMatchesResponse (..),
    newGoogleSecuritySafebrowsingV4FindThreatMatchesResponse,

    -- * GoogleSecuritySafebrowsingV4ListThreatListsResponse
    GoogleSecuritySafebrowsingV4ListThreatListsResponse (..),
    newGoogleSecuritySafebrowsingV4ListThreatListsResponse,

    -- * GoogleSecuritySafebrowsingV4RawHashes
    GoogleSecuritySafebrowsingV4RawHashes (..),
    newGoogleSecuritySafebrowsingV4RawHashes,

    -- * GoogleSecuritySafebrowsingV4RawIndices
    GoogleSecuritySafebrowsingV4RawIndices (..),
    newGoogleSecuritySafebrowsingV4RawIndices,

    -- * GoogleSecuritySafebrowsingV4RiceDeltaEncoding
    GoogleSecuritySafebrowsingV4RiceDeltaEncoding (..),
    newGoogleSecuritySafebrowsingV4RiceDeltaEncoding,

    -- * GoogleSecuritySafebrowsingV4ThreatEntry
    GoogleSecuritySafebrowsingV4ThreatEntry (..),
    newGoogleSecuritySafebrowsingV4ThreatEntry,

    -- * GoogleSecuritySafebrowsingV4ThreatEntryMetadata
    GoogleSecuritySafebrowsingV4ThreatEntryMetadata (..),
    newGoogleSecuritySafebrowsingV4ThreatEntryMetadata,

    -- * GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry (..),
    newGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry,

    -- * GoogleSecuritySafebrowsingV4ThreatEntrySet
    GoogleSecuritySafebrowsingV4ThreatEntrySet (..),
    newGoogleSecuritySafebrowsingV4ThreatEntrySet,

    -- * GoogleSecuritySafebrowsingV4ThreatHit
    GoogleSecuritySafebrowsingV4ThreatHit (..),
    newGoogleSecuritySafebrowsingV4ThreatHit,

    -- * GoogleSecuritySafebrowsingV4ThreatHitThreatSource
    GoogleSecuritySafebrowsingV4ThreatHitThreatSource (..),
    newGoogleSecuritySafebrowsingV4ThreatHitThreatSource,

    -- * GoogleSecuritySafebrowsingV4ThreatHitUserInfo
    GoogleSecuritySafebrowsingV4ThreatHitUserInfo (..),
    newGoogleSecuritySafebrowsingV4ThreatHitUserInfo,

    -- * GoogleSecuritySafebrowsingV4ThreatInfo
    GoogleSecuritySafebrowsingV4ThreatInfo (..),
    newGoogleSecuritySafebrowsingV4ThreatInfo,

    -- * GoogleSecuritySafebrowsingV4ThreatListDescriptor
    GoogleSecuritySafebrowsingV4ThreatListDescriptor (..),
    newGoogleSecuritySafebrowsingV4ThreatListDescriptor,

    -- * GoogleSecuritySafebrowsingV4ThreatMatch
    GoogleSecuritySafebrowsingV4ThreatMatch (..),
    newGoogleSecuritySafebrowsingV4ThreatMatch,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Internal.Sum

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newGoogleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty = GoogleProtobufEmpty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
newGoogleProtobufEmpty 
    ::  GoogleProtobufEmpty
newGoogleProtobufEmpty = GoogleProtobufEmpty

instance Core.FromJSON GoogleProtobufEmpty where
        parseJSON
          = Core.withObject "GoogleProtobufEmpty"
              (\ o -> Core.pure GoogleProtobufEmpty)

instance Core.ToJSON GoogleProtobufEmpty where
        toJSON = Core.const Core.emptyObject


-- | The expected state of a client\'s local database.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4Checksum' smart constructor.
newtype GoogleSecuritySafebrowsingV4Checksum = GoogleSecuritySafebrowsingV4Checksum
    {
      -- | The SHA256 hash of the client state; that is, of the sorted list of all hashes present in the database.
      sha256 :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4Checksum' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4Checksum 
    ::  GoogleSecuritySafebrowsingV4Checksum
newGoogleSecuritySafebrowsingV4Checksum =
  GoogleSecuritySafebrowsingV4Checksum {sha256 = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4Checksum
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4Checksum"
              (\ o ->
                 GoogleSecuritySafebrowsingV4Checksum Core.<$>
                   (o Core..:? "sha256"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4Checksum
         where
        toJSON GoogleSecuritySafebrowsingV4Checksum{..}
          = Core.object
              (Core.catMaybes [("sha256" Core..=) Core.<$> sha256])


-- | The client metadata associated with Safe Browsing API requests.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ClientInfo' smart constructor.
data GoogleSecuritySafebrowsingV4ClientInfo = GoogleSecuritySafebrowsingV4ClientInfo
    {
      -- | A client ID that (hopefully) uniquely identifies the client implementation of the Safe Browsing API.
      clientId :: (Core.Maybe Core.Text)
      -- | The version of the client implementation.
    , clientVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ClientInfo' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ClientInfo 
    ::  GoogleSecuritySafebrowsingV4ClientInfo
newGoogleSecuritySafebrowsingV4ClientInfo =
  GoogleSecuritySafebrowsingV4ClientInfo
    {clientId = Core.Nothing, clientVersion = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ClientInfo
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ClientInfo"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ClientInfo Core.<$>
                   (o Core..:? "clientId") Core.<*>
                     (o Core..:? "clientVersion"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ClientInfo
         where
        toJSON GoogleSecuritySafebrowsingV4ClientInfo{..}
          = Core.object
              (Core.catMaybes
                 [("clientId" Core..=) Core.<$> clientId,
                  ("clientVersion" Core..=) Core.<$> clientVersion])


-- | Describes a Safe Browsing API update request. Clients can request updates for multiple lists in a single request. The server may not respond to all requests, if the server has no updates for that list. NOTE: Field index 2 is unused. NEXT: 5
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    {
      -- | The client metadata.
      client :: (Core.Maybe GoogleSecuritySafebrowsingV4ClientInfo)
      -- | The requested threat list updates.
    , listUpdateRequests :: (Core.Maybe
   [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest 
    ::  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    {client = Core.Nothing, listUpdateRequests = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
                   Core.<$>
                   (o Core..:? "client") Core.<*>
                     (o Core..:? "listUpdateRequests" Core..!=
                        Core.mempty))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("client" Core..=) Core.<$> client,
                  ("listUpdateRequests" Core..=) Core.<$>
                    listUpdateRequests])


-- | A single list update request.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    {
      -- | The constraints associated with this request.
      constraints :: (Core.Maybe
   GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints)
      -- | The type of platform at risk by entries present in the list.
    , platformType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_PlatformType)
      -- | The current state of the client for the requested list (the encrypted client state that was received from the last successful list update).
    , state :: (Core.Maybe Core.Base64)
      -- | The types of entries present in the list.
    , threatEntryType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatEntryType)
      -- | The type of threat posed by entries present in the list.
    , threatType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest_ThreatType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest 
    ::  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    { constraints = Core.Nothing
    , platformType = Core.Nothing
    , state = Core.Nothing
    , threatEntryType = Core.Nothing
    , threatType = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
                   Core.<$>
                   (o Core..:? "constraints") Core.<*>
                     (o Core..:? "platformType")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "threatEntryType")
                     Core.<*> (o Core..:? "threatType"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest{..}
          = Core.object
              (Core.catMaybes
                 [("constraints" Core..=) Core.<$> constraints,
                  ("platformType" Core..=) Core.<$> platformType,
                  ("state" Core..=) Core.<$> state,
                  ("threatEntryType" Core..=) Core.<$> threatEntryType,
                  ("threatType" Core..=) Core.<$> threatType])


-- | The constraints for this update.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    {
      -- | A client\'s physical location, expressed as a ISO 31166-1 alpha-2 region code.
      deviceLocation :: (Core.Maybe Core.Text)
      -- | Requests the lists for a specific language. Expects ISO 639 alpha-2 format.
    , language :: (Core.Maybe Core.Text)
      -- | Sets the maximum number of entries that the client is willing to have in the local database for the specified list. This should be a power of 2 between 2__10 and 2__20. If zero, no database size limit is set.
    , maxDatabaseEntries :: (Core.Maybe Core.Int32)
      -- | The maximum size in number of entries. The update will not contain more entries than this value. This should be a power of 2 between 2__10 and 2__20. If zero, no update size limit is set.
    , maxUpdateEntries :: (Core.Maybe Core.Int32)
      -- | Requests the list for a specific geographic location. If not set the server may pick that value based on the user\'s IP address. Expects ISO 3166-1 alpha-2 format.
    , region :: (Core.Maybe Core.Text)
      -- | The compression types supported by the client.
    , supportedCompressions :: (Core.Maybe
   [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints_SupportedCompressionsItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints 
    ::  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    { deviceLocation = Core.Nothing
    , language = Core.Nothing
    , maxDatabaseEntries = Core.Nothing
    , maxUpdateEntries = Core.Nothing
    , region = Core.Nothing
    , supportedCompressions = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
                   Core.<$>
                   (o Core..:? "deviceLocation") Core.<*>
                     (o Core..:? "language")
                     Core.<*> (o Core..:? "maxDatabaseEntries")
                     Core.<*> (o Core..:? "maxUpdateEntries")
                     Core.<*> (o Core..:? "region")
                     Core.<*>
                     (o Core..:? "supportedCompressions" Core..!=
                        Core.mempty))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints{..}
          = Core.object
              (Core.catMaybes
                 [("deviceLocation" Core..=) Core.<$> deviceLocation,
                  ("language" Core..=) Core.<$> language,
                  ("maxDatabaseEntries" Core..=) Core.<$>
                    maxDatabaseEntries,
                  ("maxUpdateEntries" Core..=) Core.<$>
                    maxUpdateEntries,
                  ("region" Core..=) Core.<$> region,
                  ("supportedCompressions" Core..=) Core.<$>
                    supportedCompressions])


--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    {
      -- | The list updates requested by the clients. The number of responses here may be less than the number of requests sent by clients. This is the case, for example, if the server has no updates for a particular list.
      listUpdateResponses :: (Core.Maybe
   [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse])
      -- | The minimum duration the client must wait before issuing any update request. If this field is not set clients may update as soon as they want.
    , minimumWaitDuration :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse 
    ::  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    {listUpdateResponses = Core.Nothing, minimumWaitDuration = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
                   Core.<$>
                   (o Core..:? "listUpdateResponses" Core..!=
                      Core.mempty)
                     Core.<*> (o Core..:? "minimumWaitDuration"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("listUpdateResponses" Core..=) Core.<$>
                    listUpdateResponses,
                  ("minimumWaitDuration" Core..=) Core.<$>
                    minimumWaitDuration])


-- | An update to an individual list.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse = GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    {
      -- | A set of entries to add to a local threat type\'s list. Repeated to allow for a combination of compressed and raw data to be sent in a single response.
      additions :: (Core.Maybe [GoogleSecuritySafebrowsingV4ThreatEntrySet])
      -- | The expected SHA256 hash of the client state; that is, of the sorted list of all hashes present in the database after applying the provided update. If the client state doesn\'t match the expected state, the client must disregard this update and retry later.
    , checksum :: (Core.Maybe GoogleSecuritySafebrowsingV4Checksum)
      -- | The new client state, in encrypted format. Opaque to clients.
    , newClientState' :: (Core.Maybe Core.Base64)
      -- | The platform type for which data is returned.
    , platformType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_PlatformType)
      -- | A set of entries to remove from a local threat type\'s list. In practice, this field is empty or contains exactly one ThreatEntrySet.
    , removals :: (Core.Maybe [GoogleSecuritySafebrowsingV4ThreatEntrySet])
      -- | The type of response. This may indicate that an action is required by the client when the response is received.
    , responseType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ResponseType)
      -- | The format of the threats.
    , threatEntryType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatEntryType)
      -- | The threat type for which data is returned.
    , threatType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse_ThreatType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse 
    ::  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
newGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    { additions = Core.Nothing
    , checksum = Core.Nothing
    , newClientState' = Core.Nothing
    , platformType = Core.Nothing
    , removals = Core.Nothing
    , responseType = Core.Nothing
    , threatEntryType = Core.Nothing
    , threatType = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
                   Core.<$>
                   (o Core..:? "additions" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "checksum")
                     Core.<*> (o Core..:? "newClientState")
                     Core.<*> (o Core..:? "platformType")
                     Core.<*> (o Core..:? "removals" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "responseType")
                     Core.<*> (o Core..:? "threatEntryType")
                     Core.<*> (o Core..:? "threatType"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse{..}
          = Core.object
              (Core.catMaybes
                 [("additions" Core..=) Core.<$> additions,
                  ("checksum" Core..=) Core.<$> checksum,
                  ("newClientState" Core..=) Core.<$> newClientState',
                  ("platformType" Core..=) Core.<$> platformType,
                  ("removals" Core..=) Core.<$> removals,
                  ("responseType" Core..=) Core.<$> responseType,
                  ("threatEntryType" Core..=) Core.<$> threatEntryType,
                  ("threatType" Core..=) Core.<$> threatType])


-- | Request to return full hashes matched by the provided hash prefixes.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FindFullHashesRequest' smart constructor.
data GoogleSecuritySafebrowsingV4FindFullHashesRequest = GoogleSecuritySafebrowsingV4FindFullHashesRequest
    {
      -- | Client metadata associated with callers of higher-level APIs built on top of the client\'s implementation.
      apiClient :: (Core.Maybe GoogleSecuritySafebrowsingV4ClientInfo)
      -- | The client metadata.
    , client :: (Core.Maybe GoogleSecuritySafebrowsingV4ClientInfo)
      -- | The current client states for each of the client\'s local threat lists.
    , clientStates :: (Core.Maybe [Core.Base64])
      -- | The lists and hashes to be checked.
    , threatInfo :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FindFullHashesRequest' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FindFullHashesRequest 
    ::  GoogleSecuritySafebrowsingV4FindFullHashesRequest
newGoogleSecuritySafebrowsingV4FindFullHashesRequest =
  GoogleSecuritySafebrowsingV4FindFullHashesRequest
    { apiClient = Core.Nothing
    , client = Core.Nothing
    , clientStates = Core.Nothing
    , threatInfo = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FindFullHashesRequest
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FindFullHashesRequest"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FindFullHashesRequest
                   Core.<$>
                   (o Core..:? "apiClient") Core.<*>
                     (o Core..:? "client")
                     Core.<*>
                     (o Core..:? "clientStates" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "threatInfo"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FindFullHashesRequest
         where
        toJSON
          GoogleSecuritySafebrowsingV4FindFullHashesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("apiClient" Core..=) Core.<$> apiClient,
                  ("client" Core..=) Core.<$> client,
                  ("clientStates" Core..=) Core.<$> clientStates,
                  ("threatInfo" Core..=) Core.<$> threatInfo])


--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FindFullHashesResponse' smart constructor.
data GoogleSecuritySafebrowsingV4FindFullHashesResponse = GoogleSecuritySafebrowsingV4FindFullHashesResponse
    {
      -- | The full hashes that matched the requested prefixes.
      matches :: (Core.Maybe [GoogleSecuritySafebrowsingV4ThreatMatch])
      -- | The minimum duration the client must wait before issuing any find hashes request. If this field is not set, clients can issue a request as soon as they want.
    , minimumWaitDuration :: (Core.Maybe Core.GDuration)
      -- | For requested entities that did not match the threat list, how long to cache the response.
    , negativeCacheDuration :: (Core.Maybe Core.GDuration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FindFullHashesResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FindFullHashesResponse 
    ::  GoogleSecuritySafebrowsingV4FindFullHashesResponse
newGoogleSecuritySafebrowsingV4FindFullHashesResponse =
  GoogleSecuritySafebrowsingV4FindFullHashesResponse
    { matches = Core.Nothing
    , minimumWaitDuration = Core.Nothing
    , negativeCacheDuration = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FindFullHashesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FindFullHashesResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FindFullHashesResponse
                   Core.<$>
                   (o Core..:? "matches" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "minimumWaitDuration")
                     Core.<*> (o Core..:? "negativeCacheDuration"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FindFullHashesResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4FindFullHashesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("matches" Core..=) Core.<$> matches,
                  ("minimumWaitDuration" Core..=) Core.<$>
                    minimumWaitDuration,
                  ("negativeCacheDuration" Core..=) Core.<$>
                    negativeCacheDuration])


-- | Request to check entries against lists.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FindThreatMatchesRequest' smart constructor.
data GoogleSecuritySafebrowsingV4FindThreatMatchesRequest = GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    {
      -- | The client metadata.
      client :: (Core.Maybe GoogleSecuritySafebrowsingV4ClientInfo)
      -- | The lists and entries to be checked for matches.
    , threatInfo :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FindThreatMatchesRequest' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FindThreatMatchesRequest 
    ::  GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
newGoogleSecuritySafebrowsingV4FindThreatMatchesRequest =
  GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    {client = Core.Nothing, threatInfo = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FindThreatMatchesRequest"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
                   Core.<$>
                   (o Core..:? "client") Core.<*>
                     (o Core..:? "threatInfo"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
         where
        toJSON
          GoogleSecuritySafebrowsingV4FindThreatMatchesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("client" Core..=) Core.<$> client,
                  ("threatInfo" Core..=) Core.<$> threatInfo])


--
-- /See:/ 'newGoogleSecuritySafebrowsingV4FindThreatMatchesResponse' smart constructor.
newtype GoogleSecuritySafebrowsingV4FindThreatMatchesResponse = GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
    {
      -- | The threat list matches.
      matches :: (Core.Maybe [GoogleSecuritySafebrowsingV4ThreatMatch])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4FindThreatMatchesResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4FindThreatMatchesResponse 
    ::  GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
newGoogleSecuritySafebrowsingV4FindThreatMatchesResponse =
  GoogleSecuritySafebrowsingV4FindThreatMatchesResponse {matches = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4FindThreatMatchesResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
                   Core.<$> (o Core..:? "matches" Core..!= Core.mempty))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4FindThreatMatchesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("matches" Core..=) Core.<$> matches])


--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ListThreatListsResponse' smart constructor.
newtype GoogleSecuritySafebrowsingV4ListThreatListsResponse = GoogleSecuritySafebrowsingV4ListThreatListsResponse
    {
      -- | The lists available for download by the client.
      threatLists :: (Core.Maybe [GoogleSecuritySafebrowsingV4ThreatListDescriptor])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ListThreatListsResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ListThreatListsResponse 
    ::  GoogleSecuritySafebrowsingV4ListThreatListsResponse
newGoogleSecuritySafebrowsingV4ListThreatListsResponse =
  GoogleSecuritySafebrowsingV4ListThreatListsResponse
    {threatLists = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ListThreatListsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ListThreatListsResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ListThreatListsResponse
                   Core.<$>
                   (o Core..:? "threatLists" Core..!= Core.mempty))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ListThreatListsResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4ListThreatListsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("threatLists" Core..=) Core.<$> threatLists])


-- | The uncompressed threat entries in hash format of a particular prefix length. Hashes can be anywhere from 4 to 32 bytes in size. A large majority are 4 bytes, but some hashes are lengthened if they collide with the hash of a popular URL. Used for sending ThreatEntrySet to clients that do not support compression, or when sending non-4-byte hashes to clients that do support compression.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4RawHashes' smart constructor.
data GoogleSecuritySafebrowsingV4RawHashes = GoogleSecuritySafebrowsingV4RawHashes
    {
      -- | The number of bytes for each prefix encoded below. This field can be anywhere from 4 (shortest prefix) to 32 (full SHA256 hash).
      prefixSize :: (Core.Maybe Core.Int32)
      -- | The hashes, in binary format, concatenated into one long string. Hashes are sorted in lexicographic order. For JSON API users, hashes are base64-encoded.
    , rawHashes :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4RawHashes' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4RawHashes 
    ::  GoogleSecuritySafebrowsingV4RawHashes
newGoogleSecuritySafebrowsingV4RawHashes =
  GoogleSecuritySafebrowsingV4RawHashes
    {prefixSize = Core.Nothing, rawHashes = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4RawHashes
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4RawHashes"
              (\ o ->
                 GoogleSecuritySafebrowsingV4RawHashes Core.<$>
                   (o Core..:? "prefixSize") Core.<*>
                     (o Core..:? "rawHashes"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4RawHashes
         where
        toJSON GoogleSecuritySafebrowsingV4RawHashes{..}
          = Core.object
              (Core.catMaybes
                 [("prefixSize" Core..=) Core.<$> prefixSize,
                  ("rawHashes" Core..=) Core.<$> rawHashes])


-- | A set of raw indices to remove from a local list.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4RawIndices' smart constructor.
newtype GoogleSecuritySafebrowsingV4RawIndices = GoogleSecuritySafebrowsingV4RawIndices
    {
      -- | The indices to remove from a lexicographically-sorted local list.
      indices :: (Core.Maybe [Core.Int32])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4RawIndices' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4RawIndices 
    ::  GoogleSecuritySafebrowsingV4RawIndices
newGoogleSecuritySafebrowsingV4RawIndices =
  GoogleSecuritySafebrowsingV4RawIndices {indices = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4RawIndices
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4RawIndices"
              (\ o ->
                 GoogleSecuritySafebrowsingV4RawIndices Core.<$>
                   (o Core..:? "indices" Core..!= Core.mempty))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4RawIndices
         where
        toJSON GoogleSecuritySafebrowsingV4RawIndices{..}
          = Core.object
              (Core.catMaybes
                 [("indices" Core..=) Core.<$> indices])


-- | The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes or compressed removal indices.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4RiceDeltaEncoding' smart constructor.
data GoogleSecuritySafebrowsingV4RiceDeltaEncoding = GoogleSecuritySafebrowsingV4RiceDeltaEncoding
    {
      -- | The encoded deltas that are encoded using the Golomb-Rice coder.
      encodedData :: (Core.Maybe Core.Base64)
      -- | The offset of the first entry in the encoded data, or, if only a single integer was encoded, that single integer\'s value. If the field is empty or missing, assume zero.
    , firstValue :: (Core.Maybe Core.Int64)
      -- | The number of entries that are delta encoded in the encoded data. If only a single integer was encoded, this will be zero and the single value will be stored in @first_value@.
    , numEntries :: (Core.Maybe Core.Int32)
      -- | The Golomb-Rice parameter, which is a number between 2 and 28. This field is missing (that is, zero) if @num_entries@ is zero.
    , riceParameter :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4RiceDeltaEncoding' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4RiceDeltaEncoding 
    ::  GoogleSecuritySafebrowsingV4RiceDeltaEncoding
newGoogleSecuritySafebrowsingV4RiceDeltaEncoding =
  GoogleSecuritySafebrowsingV4RiceDeltaEncoding
    { encodedData = Core.Nothing
    , firstValue = Core.Nothing
    , numEntries = Core.Nothing
    , riceParameter = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4RiceDeltaEncoding
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4RiceDeltaEncoding"
              (\ o ->
                 GoogleSecuritySafebrowsingV4RiceDeltaEncoding
                   Core.<$>
                   (o Core..:? "encodedData") Core.<*>
                     (o Core..:? "firstValue")
                     Core.<*> (o Core..:? "numEntries")
                     Core.<*> (o Core..:? "riceParameter"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4RiceDeltaEncoding
         where
        toJSON
          GoogleSecuritySafebrowsingV4RiceDeltaEncoding{..}
          = Core.object
              (Core.catMaybes
                 [("encodedData" Core..=) Core.<$> encodedData,
                  ("firstValue" Core..=) Core.. Core.AsText Core.<$>
                    firstValue,
                  ("numEntries" Core..=) Core.<$> numEntries,
                  ("riceParameter" Core..=) Core.<$> riceParameter])


-- | An individual threat; for example, a malicious URL or its hash representation. Only one of these fields should be set.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatEntry' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatEntry = GoogleSecuritySafebrowsingV4ThreatEntry
    {
      -- | The digest of an executable in SHA256 format. The API supports both binary and hex digests. For JSON requests, digests are base64-encoded.
      digest :: (Core.Maybe Core.Base64)
      -- | A hash prefix, consisting of the most significant 4-32 bytes of a SHA256 hash. This field is in binary format. For JSON requests, hashes are base64-encoded.
    , hash :: (Core.Maybe Core.Base64)
      -- | A URL.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatEntry' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatEntry 
    ::  GoogleSecuritySafebrowsingV4ThreatEntry
newGoogleSecuritySafebrowsingV4ThreatEntry =
  GoogleSecuritySafebrowsingV4ThreatEntry
    {digest = Core.Nothing, hash = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatEntry
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatEntry"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatEntry Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "hash")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatEntry
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatEntry{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("hash" Core..=) Core.<$> hash,
                  ("url" Core..=) Core.<$> url])


-- | The metadata associated with a specific threat entry. The client is expected to know the metadata key\/value pairs associated with each threat type.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatEntryMetadata' smart constructor.
newtype GoogleSecuritySafebrowsingV4ThreatEntryMetadata = GoogleSecuritySafebrowsingV4ThreatEntryMetadata
    {
      -- | The metadata entries.
      entries :: (Core.Maybe
   [GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatEntryMetadata' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatEntryMetadata 
    ::  GoogleSecuritySafebrowsingV4ThreatEntryMetadata
newGoogleSecuritySafebrowsingV4ThreatEntryMetadata =
  GoogleSecuritySafebrowsingV4ThreatEntryMetadata {entries = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatEntryMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatEntryMetadata"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatEntryMetadata
                   Core.<$> (o Core..:? "entries" Core..!= Core.mempty))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatEntryMetadata
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatEntryMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("entries" Core..=) Core.<$> entries])


-- | A single metadata entry.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry = GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    {
      -- | The metadata entry key. For JSON requests, the key is base64-encoded.
      key :: (Core.Maybe Core.Base64)
      -- | The metadata entry value. For JSON requests, the value is base64-encoded.
    , value :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry 
    ::  GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
newGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry =
  GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
                   Core.<$>
                   (o Core..:? "key") Core.<*> (o Core..:? "value"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry{..}
          = Core.object
              (Core.catMaybes
                 [("key" Core..=) Core.<$> key,
                  ("value" Core..=) Core.<$> value])


-- | A set of threats that should be added or removed from a client\'s local database.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatEntrySet' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatEntrySet = GoogleSecuritySafebrowsingV4ThreatEntrySet
    {
      -- | The compression type for the entries in this set.
      compressionType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4ThreatEntrySet_CompressionType)
      -- | The raw SHA256-formatted entries.
    , rawHashes :: (Core.Maybe GoogleSecuritySafebrowsingV4RawHashes)
      -- | The raw removal indices for a local list.
    , rawIndices :: (Core.Maybe GoogleSecuritySafebrowsingV4RawIndices)
      -- | The encoded 4-byte prefixes of SHA256-formatted entries, using a Golomb-Rice encoding. The hashes are converted to uint32, sorted in ascending order, then delta encoded and stored as encoded_data.
    , riceHashes :: (Core.Maybe GoogleSecuritySafebrowsingV4RiceDeltaEncoding)
      -- | The encoded local, lexicographically-sorted list indices, using a Golomb-Rice encoding. Used for sending compressed removal indices. The removal indices (uint32) are sorted in ascending order, then delta encoded and stored as encoded_data.
    , riceIndices :: (Core.Maybe GoogleSecuritySafebrowsingV4RiceDeltaEncoding)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatEntrySet' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatEntrySet 
    ::  GoogleSecuritySafebrowsingV4ThreatEntrySet
newGoogleSecuritySafebrowsingV4ThreatEntrySet =
  GoogleSecuritySafebrowsingV4ThreatEntrySet
    { compressionType = Core.Nothing
    , rawHashes = Core.Nothing
    , rawIndices = Core.Nothing
    , riceHashes = Core.Nothing
    , riceIndices = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatEntrySet
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatEntrySet"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatEntrySet Core.<$>
                   (o Core..:? "compressionType") Core.<*>
                     (o Core..:? "rawHashes")
                     Core.<*> (o Core..:? "rawIndices")
                     Core.<*> (o Core..:? "riceHashes")
                     Core.<*> (o Core..:? "riceIndices"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatEntrySet
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatEntrySet{..}
          = Core.object
              (Core.catMaybes
                 [("compressionType" Core..=) Core.<$>
                    compressionType,
                  ("rawHashes" Core..=) Core.<$> rawHashes,
                  ("rawIndices" Core..=) Core.<$> rawIndices,
                  ("riceHashes" Core..=) Core.<$> riceHashes,
                  ("riceIndices" Core..=) Core.<$> riceIndices])


--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatHit' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatHit = GoogleSecuritySafebrowsingV4ThreatHit
    {
      -- | Client-reported identification.
      clientInfo :: (Core.Maybe GoogleSecuritySafebrowsingV4ClientInfo)
      -- | The threat entry responsible for the hit. Full hash should be reported for hash-based hits.
    , entry :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatEntry)
      -- | The platform type reported.
    , platformType :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatHit_PlatformType)
      -- | The resources related to the threat hit.
    , resources :: (Core.Maybe [GoogleSecuritySafebrowsingV4ThreatHitThreatSource])
      -- | The threat type reported.
    , threatType :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatHit_ThreatType)
      -- | Details about the user that encountered the threat.
    , userInfo :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatHitUserInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatHit' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatHit 
    ::  GoogleSecuritySafebrowsingV4ThreatHit
newGoogleSecuritySafebrowsingV4ThreatHit =
  GoogleSecuritySafebrowsingV4ThreatHit
    { clientInfo = Core.Nothing
    , entry = Core.Nothing
    , platformType = Core.Nothing
    , resources = Core.Nothing
    , threatType = Core.Nothing
    , userInfo = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatHit
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatHit"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatHit Core.<$>
                   (o Core..:? "clientInfo") Core.<*>
                     (o Core..:? "entry")
                     Core.<*> (o Core..:? "platformType")
                     Core.<*>
                     (o Core..:? "resources" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "threatType")
                     Core.<*> (o Core..:? "userInfo"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatHit
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatHit{..}
          = Core.object
              (Core.catMaybes
                 [("clientInfo" Core..=) Core.<$> clientInfo,
                  ("entry" Core..=) Core.<$> entry,
                  ("platformType" Core..=) Core.<$> platformType,
                  ("resources" Core..=) Core.<$> resources,
                  ("threatType" Core..=) Core.<$> threatType,
                  ("userInfo" Core..=) Core.<$> userInfo])


-- | A single resource related to a threat hit.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatHitThreatSource' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatHitThreatSource = GoogleSecuritySafebrowsingV4ThreatHitThreatSource
    {
      -- | Referrer of the resource. Only set if the referrer is available.
      referrer :: (Core.Maybe Core.Text)
      -- | The remote IP of the resource in ASCII format. Either IPv4 or IPv6.
    , remoteIp :: (Core.Maybe Core.Text)
      -- | The type of source reported.
    , type' :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatHitThreatSource_Type)
      -- | The URL of the resource.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatHitThreatSource' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatHitThreatSource 
    ::  GoogleSecuritySafebrowsingV4ThreatHitThreatSource
newGoogleSecuritySafebrowsingV4ThreatHitThreatSource =
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource
    { referrer = Core.Nothing
    , remoteIp = Core.Nothing
    , type' = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatHitThreatSource
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatHitThreatSource"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatHitThreatSource
                   Core.<$>
                   (o Core..:? "referrer") Core.<*>
                     (o Core..:? "remoteIp")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatHitThreatSource
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatHitThreatSource{..}
          = Core.object
              (Core.catMaybes
                 [("referrer" Core..=) Core.<$> referrer,
                  ("remoteIp" Core..=) Core.<$> remoteIp,
                  ("type" Core..=) Core.<$> type',
                  ("url" Core..=) Core.<$> url])


-- | Details about the user that encountered the threat.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatHitUserInfo' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatHitUserInfo = GoogleSecuritySafebrowsingV4ThreatHitUserInfo
    {
      -- | The UN M.49 region code associated with the user\'s location.
      regionCode :: (Core.Maybe Core.Text)
      -- | Unique user identifier defined by the client.
    , userId :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatHitUserInfo' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatHitUserInfo 
    ::  GoogleSecuritySafebrowsingV4ThreatHitUserInfo
newGoogleSecuritySafebrowsingV4ThreatHitUserInfo =
  GoogleSecuritySafebrowsingV4ThreatHitUserInfo
    {regionCode = Core.Nothing, userId = Core.Nothing}

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatHitUserInfo
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatHitUserInfo"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatHitUserInfo
                   Core.<$>
                   (o Core..:? "regionCode") Core.<*>
                     (o Core..:? "userId"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatHitUserInfo
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatHitUserInfo{..}
          = Core.object
              (Core.catMaybes
                 [("regionCode" Core..=) Core.<$> regionCode,
                  ("userId" Core..=) Core.<$> userId])


-- | The information regarding one or more threats that a client submits when checking for matches in threat lists.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatInfo' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatInfo = GoogleSecuritySafebrowsingV4ThreatInfo
    {
      -- | The platform types to be checked.
      platformTypes :: (Core.Maybe
   [GoogleSecuritySafebrowsingV4ThreatInfo_PlatformTypesItem])
      -- | The threat entries to be checked.
    , threatEntries :: (Core.Maybe [GoogleSecuritySafebrowsingV4ThreatEntry])
      -- | The entry types to be checked.
    , threatEntryTypes :: (Core.Maybe
   [GoogleSecuritySafebrowsingV4ThreatInfo_ThreatEntryTypesItem])
      -- | The threat types to be checked.
    , threatTypes :: (Core.Maybe
   [GoogleSecuritySafebrowsingV4ThreatInfo_ThreatTypesItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatInfo' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatInfo 
    ::  GoogleSecuritySafebrowsingV4ThreatInfo
newGoogleSecuritySafebrowsingV4ThreatInfo =
  GoogleSecuritySafebrowsingV4ThreatInfo
    { platformTypes = Core.Nothing
    , threatEntries = Core.Nothing
    , threatEntryTypes = Core.Nothing
    , threatTypes = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatInfo
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatInfo"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatInfo Core.<$>
                   (o Core..:? "platformTypes" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "threatEntries" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "threatEntryTypes" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "threatTypes" Core..!= Core.mempty))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatInfo
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatInfo{..}
          = Core.object
              (Core.catMaybes
                 [("platformTypes" Core..=) Core.<$> platformTypes,
                  ("threatEntries" Core..=) Core.<$> threatEntries,
                  ("threatEntryTypes" Core..=) Core.<$>
                    threatEntryTypes,
                  ("threatTypes" Core..=) Core.<$> threatTypes])


-- | Describes an individual threat list. A list is defined by three parameters: the type of threat posed, the type of platform targeted by the threat, and the type of entries in the list.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatListDescriptor' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatListDescriptor = GoogleSecuritySafebrowsingV4ThreatListDescriptor
    {
      -- | The platform type targeted by the list\'s entries.
      platformType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4ThreatListDescriptor_PlatformType)
      -- | The entry types contained in the list.
    , threatEntryType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatEntryType)
      -- | The threat type posed by the list\'s entries.
    , threatType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4ThreatListDescriptor_ThreatType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatListDescriptor' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatListDescriptor 
    ::  GoogleSecuritySafebrowsingV4ThreatListDescriptor
newGoogleSecuritySafebrowsingV4ThreatListDescriptor =
  GoogleSecuritySafebrowsingV4ThreatListDescriptor
    { platformType = Core.Nothing
    , threatEntryType = Core.Nothing
    , threatType = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatListDescriptor
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatListDescriptor"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatListDescriptor
                   Core.<$>
                   (o Core..:? "platformType") Core.<*>
                     (o Core..:? "threatEntryType")
                     Core.<*> (o Core..:? "threatType"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatListDescriptor
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatListDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("platformType" Core..=) Core.<$> platformType,
                  ("threatEntryType" Core..=) Core.<$> threatEntryType,
                  ("threatType" Core..=) Core.<$> threatType])


-- | A match when checking a threat entry in the Safe Browsing threat lists.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV4ThreatMatch' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatMatch = GoogleSecuritySafebrowsingV4ThreatMatch
    {
      -- | The cache lifetime for the returned match. Clients must not cache this response for more than this duration to avoid false positives.
      cacheDuration :: (Core.Maybe Core.GDuration)
      -- | The platform type matching this threat.
    , platformType :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatMatch_PlatformType)
      -- | The threat matching this threat.
    , threat :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatEntry)
      -- | Optional metadata associated with this threat.
    , threatEntryMetadata :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatEntryMetadata)
      -- | The threat entry type matching this threat.
    , threatEntryType :: (Core.Maybe
   GoogleSecuritySafebrowsingV4ThreatMatch_ThreatEntryType)
      -- | The threat type matching this threat.
    , threatType :: (Core.Maybe GoogleSecuritySafebrowsingV4ThreatMatch_ThreatType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatMatch' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV4ThreatMatch 
    ::  GoogleSecuritySafebrowsingV4ThreatMatch
newGoogleSecuritySafebrowsingV4ThreatMatch =
  GoogleSecuritySafebrowsingV4ThreatMatch
    { cacheDuration = Core.Nothing
    , platformType = Core.Nothing
    , threat = Core.Nothing
    , threatEntryMetadata = Core.Nothing
    , threatEntryType = Core.Nothing
    , threatType = Core.Nothing
    }

instance Core.FromJSON
           GoogleSecuritySafebrowsingV4ThreatMatch
         where
        parseJSON
          = Core.withObject
              "GoogleSecuritySafebrowsingV4ThreatMatch"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatMatch Core.<$>
                   (o Core..:? "cacheDuration") Core.<*>
                     (o Core..:? "platformType")
                     Core.<*> (o Core..:? "threat")
                     Core.<*> (o Core..:? "threatEntryMetadata")
                     Core.<*> (o Core..:? "threatEntryType")
                     Core.<*> (o Core..:? "threatType"))

instance Core.ToJSON
           GoogleSecuritySafebrowsingV4ThreatMatch
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatMatch{..}
          = Core.object
              (Core.catMaybes
                 [("cacheDuration" Core..=) Core.<$> cacheDuration,
                  ("platformType" Core..=) Core.<$> platformType,
                  ("threat" Core..=) Core.<$> threat,
                  ("threatEntryMetadata" Core..=) Core.<$>
                    threatEntryMetadata,
                  ("threatEntryType" Core..=) Core.<$> threatEntryType,
                  ("threatType" Core..=) Core.<$> threatType])

