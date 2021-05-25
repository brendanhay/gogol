{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SafeBrowsing.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SafeBrowsing.Types.Product where

import Network.Google.Prelude
import Network.Google.SafeBrowsing.Types.Sum

--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatHit' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatHit =
  GoogleSecuritySafebrowsingV4ThreatHit'
    { _gssvthUserInfo :: !(Maybe GoogleSecuritySafebrowsingV4ThreatHitUserInfo)
    , _gssvthThreatType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatHitThreatType)
    , _gssvthResources :: !(Maybe [GoogleSecuritySafebrowsingV4ThreatHitThreatSource])
    , _gssvthEntry :: !(Maybe GoogleSecuritySafebrowsingV4ThreatEntry)
    , _gssvthClientInfo :: !(Maybe GoogleSecuritySafebrowsingV4ClientInfo)
    , _gssvthPlatformType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatHitPlatformType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatHit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvthUserInfo'
--
-- * 'gssvthThreatType'
--
-- * 'gssvthResources'
--
-- * 'gssvthEntry'
--
-- * 'gssvthClientInfo'
--
-- * 'gssvthPlatformType'
googleSecuritySafebrowsingV4ThreatHit
    :: GoogleSecuritySafebrowsingV4ThreatHit
googleSecuritySafebrowsingV4ThreatHit =
  GoogleSecuritySafebrowsingV4ThreatHit'
    { _gssvthUserInfo = Nothing
    , _gssvthThreatType = Nothing
    , _gssvthResources = Nothing
    , _gssvthEntry = Nothing
    , _gssvthClientInfo = Nothing
    , _gssvthPlatformType = Nothing
    }


-- | Details about the user that encountered the threat.
gssvthUserInfo :: Lens' GoogleSecuritySafebrowsingV4ThreatHit (Maybe GoogleSecuritySafebrowsingV4ThreatHitUserInfo)
gssvthUserInfo
  = lens _gssvthUserInfo
      (\ s a -> s{_gssvthUserInfo = a})

-- | The threat type reported.
gssvthThreatType :: Lens' GoogleSecuritySafebrowsingV4ThreatHit (Maybe GoogleSecuritySafebrowsingV4ThreatHitThreatType)
gssvthThreatType
  = lens _gssvthThreatType
      (\ s a -> s{_gssvthThreatType = a})

-- | The resources related to the threat hit.
gssvthResources :: Lens' GoogleSecuritySafebrowsingV4ThreatHit [GoogleSecuritySafebrowsingV4ThreatHitThreatSource]
gssvthResources
  = lens _gssvthResources
      (\ s a -> s{_gssvthResources = a})
      . _Default
      . _Coerce

-- | The threat entry responsible for the hit. Full hash should be reported
-- for hash-based hits.
gssvthEntry :: Lens' GoogleSecuritySafebrowsingV4ThreatHit (Maybe GoogleSecuritySafebrowsingV4ThreatEntry)
gssvthEntry
  = lens _gssvthEntry (\ s a -> s{_gssvthEntry = a})

-- | Client-reported identification.
gssvthClientInfo :: Lens' GoogleSecuritySafebrowsingV4ThreatHit (Maybe GoogleSecuritySafebrowsingV4ClientInfo)
gssvthClientInfo
  = lens _gssvthClientInfo
      (\ s a -> s{_gssvthClientInfo = a})

-- | The platform type reported.
gssvthPlatformType :: Lens' GoogleSecuritySafebrowsingV4ThreatHit (Maybe GoogleSecuritySafebrowsingV4ThreatHitPlatformType)
gssvthPlatformType
  = lens _gssvthPlatformType
      (\ s a -> s{_gssvthPlatformType = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatHit
         where
        parseJSON
          = withObject "GoogleSecuritySafebrowsingV4ThreatHit"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatHit' <$>
                   (o .:? "userInfo") <*> (o .:? "threatType") <*>
                     (o .:? "resources" .!= mempty)
                     <*> (o .:? "entry")
                     <*> (o .:? "clientInfo")
                     <*> (o .:? "platformType"))

instance ToJSON GoogleSecuritySafebrowsingV4ThreatHit
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatHit'{..}
          = object
              (catMaybes
                 [("userInfo" .=) <$> _gssvthUserInfo,
                  ("threatType" .=) <$> _gssvthThreatType,
                  ("resources" .=) <$> _gssvthResources,
                  ("entry" .=) <$> _gssvthEntry,
                  ("clientInfo" .=) <$> _gssvthClientInfo,
                  ("platformType" .=) <$> _gssvthPlatformType])

-- | A set of raw indices to remove from a local list.
--
-- /See:/ 'googleSecuritySafebrowsingV4RawIndices' smart constructor.
newtype GoogleSecuritySafebrowsingV4RawIndices =
  GoogleSecuritySafebrowsingV4RawIndices'
    { _gssvriIndices :: Maybe [Textual Int32]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4RawIndices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvriIndices'
googleSecuritySafebrowsingV4RawIndices
    :: GoogleSecuritySafebrowsingV4RawIndices
googleSecuritySafebrowsingV4RawIndices =
  GoogleSecuritySafebrowsingV4RawIndices' {_gssvriIndices = Nothing}


-- | The indices to remove from a lexicographically-sorted local list.
gssvriIndices :: Lens' GoogleSecuritySafebrowsingV4RawIndices [Int32]
gssvriIndices
  = lens _gssvriIndices
      (\ s a -> s{_gssvriIndices = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleSecuritySafebrowsingV4RawIndices
         where
        parseJSON
          = withObject "GoogleSecuritySafebrowsingV4RawIndices"
              (\ o ->
                 GoogleSecuritySafebrowsingV4RawIndices' <$>
                   (o .:? "indices" .!= mempty))

instance ToJSON
           GoogleSecuritySafebrowsingV4RawIndices
         where
        toJSON GoogleSecuritySafebrowsingV4RawIndices'{..}
          = object
              (catMaybes [("indices" .=) <$> _gssvriIndices])

-- | Describes a Safe Browsing API update request. Clients can request
-- updates for multiple lists in a single request. The server may not
-- respond to all requests, if the server has no updates for that list.
-- NOTE: Field index 2 is unused. NEXT: 5
--
-- /See:/ 'googleSecuritySafebrowsingV4FetchThreatListUpdatesRequest' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest'
    { _gssvftlurListUpdateRequests :: !(Maybe [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest])
    , _gssvftlurClient :: !(Maybe GoogleSecuritySafebrowsingV4ClientInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvftlurListUpdateRequests'
--
-- * 'gssvftlurClient'
googleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
googleSecuritySafebrowsingV4FetchThreatListUpdatesRequest =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest'
    {_gssvftlurListUpdateRequests = Nothing, _gssvftlurClient = Nothing}


-- | The requested threat list updates.
gssvftlurListUpdateRequests :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest]
gssvftlurListUpdateRequests
  = lens _gssvftlurListUpdateRequests
      (\ s a -> s{_gssvftlurListUpdateRequests = a})
      . _Default
      . _Coerce

-- | The client metadata.
gssvftlurClient :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest (Maybe GoogleSecuritySafebrowsingV4ClientInfo)
gssvftlurClient
  = lens _gssvftlurClient
      (\ s a -> s{_gssvftlurClient = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest'
                   <$>
                   (o .:? "listUpdateRequests" .!= mempty) <*>
                     (o .:? "client"))

instance ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest'{..}
          = object
              (catMaybes
                 [("listUpdateRequests" .=) <$>
                    _gssvftlurListUpdateRequests,
                  ("client" .=) <$> _gssvftlurClient])

-- | Request to return full hashes matched by the provided hash prefixes.
--
-- /See:/ 'googleSecuritySafebrowsingV4FindFullHashesRequest' smart constructor.
data GoogleSecuritySafebrowsingV4FindFullHashesRequest =
  GoogleSecuritySafebrowsingV4FindFullHashesRequest'
    { _gssvffhrThreatInfo :: !(Maybe GoogleSecuritySafebrowsingV4ThreatInfo)
    , _gssvffhrAPIClient :: !(Maybe GoogleSecuritySafebrowsingV4ClientInfo)
    , _gssvffhrClientStates :: !(Maybe [Bytes])
    , _gssvffhrClient :: !(Maybe GoogleSecuritySafebrowsingV4ClientInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FindFullHashesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvffhrThreatInfo'
--
-- * 'gssvffhrAPIClient'
--
-- * 'gssvffhrClientStates'
--
-- * 'gssvffhrClient'
googleSecuritySafebrowsingV4FindFullHashesRequest
    :: GoogleSecuritySafebrowsingV4FindFullHashesRequest
googleSecuritySafebrowsingV4FindFullHashesRequest =
  GoogleSecuritySafebrowsingV4FindFullHashesRequest'
    { _gssvffhrThreatInfo = Nothing
    , _gssvffhrAPIClient = Nothing
    , _gssvffhrClientStates = Nothing
    , _gssvffhrClient = Nothing
    }


-- | The lists and hashes to be checked.
gssvffhrThreatInfo :: Lens' GoogleSecuritySafebrowsingV4FindFullHashesRequest (Maybe GoogleSecuritySafebrowsingV4ThreatInfo)
gssvffhrThreatInfo
  = lens _gssvffhrThreatInfo
      (\ s a -> s{_gssvffhrThreatInfo = a})

-- | Client metadata associated with callers of higher-level APIs built on
-- top of the client\'s implementation.
gssvffhrAPIClient :: Lens' GoogleSecuritySafebrowsingV4FindFullHashesRequest (Maybe GoogleSecuritySafebrowsingV4ClientInfo)
gssvffhrAPIClient
  = lens _gssvffhrAPIClient
      (\ s a -> s{_gssvffhrAPIClient = a})

-- | The current client states for each of the client\'s local threat lists.
gssvffhrClientStates :: Lens' GoogleSecuritySafebrowsingV4FindFullHashesRequest [ByteString]
gssvffhrClientStates
  = lens _gssvffhrClientStates
      (\ s a -> s{_gssvffhrClientStates = a})
      . _Default
      . _Coerce

-- | The client metadata.
gssvffhrClient :: Lens' GoogleSecuritySafebrowsingV4FindFullHashesRequest (Maybe GoogleSecuritySafebrowsingV4ClientInfo)
gssvffhrClient
  = lens _gssvffhrClient
      (\ s a -> s{_gssvffhrClient = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4FindFullHashesRequest
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FindFullHashesRequest"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FindFullHashesRequest'
                   <$>
                   (o .:? "threatInfo") <*> (o .:? "apiClient") <*>
                     (o .:? "clientStates" .!= mempty)
                     <*> (o .:? "client"))

instance ToJSON
           GoogleSecuritySafebrowsingV4FindFullHashesRequest
         where
        toJSON
          GoogleSecuritySafebrowsingV4FindFullHashesRequest'{..}
          = object
              (catMaybes
                 [("threatInfo" .=) <$> _gssvffhrThreatInfo,
                  ("apiClient" .=) <$> _gssvffhrAPIClient,
                  ("clientStates" .=) <$> _gssvffhrClientStates,
                  ("client" .=) <$> _gssvffhrClient])

-- | A set of threats that should be added or removed from a client\'s local
-- database.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatEntrySet' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatEntrySet =
  GoogleSecuritySafebrowsingV4ThreatEntrySet'
    { _gssvtesRiceHashes :: !(Maybe GoogleSecuritySafebrowsingV4RiceDeltaEncoding)
    , _gssvtesRiceIndices :: !(Maybe GoogleSecuritySafebrowsingV4RiceDeltaEncoding)
    , _gssvtesRawHashes :: !(Maybe GoogleSecuritySafebrowsingV4RawHashes)
    , _gssvtesRawIndices :: !(Maybe GoogleSecuritySafebrowsingV4RawIndices)
    , _gssvtesCompressionType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatEntrySet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvtesRiceHashes'
--
-- * 'gssvtesRiceIndices'
--
-- * 'gssvtesRawHashes'
--
-- * 'gssvtesRawIndices'
--
-- * 'gssvtesCompressionType'
googleSecuritySafebrowsingV4ThreatEntrySet
    :: GoogleSecuritySafebrowsingV4ThreatEntrySet
googleSecuritySafebrowsingV4ThreatEntrySet =
  GoogleSecuritySafebrowsingV4ThreatEntrySet'
    { _gssvtesRiceHashes = Nothing
    , _gssvtesRiceIndices = Nothing
    , _gssvtesRawHashes = Nothing
    , _gssvtesRawIndices = Nothing
    , _gssvtesCompressionType = Nothing
    }


-- | The encoded 4-byte prefixes of SHA256-formatted entries, using a
-- Golomb-Rice encoding. The hashes are converted to uint32, sorted in
-- ascending order, then delta encoded and stored as encoded_data.
gssvtesRiceHashes :: Lens' GoogleSecuritySafebrowsingV4ThreatEntrySet (Maybe GoogleSecuritySafebrowsingV4RiceDeltaEncoding)
gssvtesRiceHashes
  = lens _gssvtesRiceHashes
      (\ s a -> s{_gssvtesRiceHashes = a})

-- | The encoded local, lexicographically-sorted list indices, using a
-- Golomb-Rice encoding. Used for sending compressed removal indices. The
-- removal indices (uint32) are sorted in ascending order, then delta
-- encoded and stored as encoded_data.
gssvtesRiceIndices :: Lens' GoogleSecuritySafebrowsingV4ThreatEntrySet (Maybe GoogleSecuritySafebrowsingV4RiceDeltaEncoding)
gssvtesRiceIndices
  = lens _gssvtesRiceIndices
      (\ s a -> s{_gssvtesRiceIndices = a})

-- | The raw SHA256-formatted entries.
gssvtesRawHashes :: Lens' GoogleSecuritySafebrowsingV4ThreatEntrySet (Maybe GoogleSecuritySafebrowsingV4RawHashes)
gssvtesRawHashes
  = lens _gssvtesRawHashes
      (\ s a -> s{_gssvtesRawHashes = a})

-- | The raw removal indices for a local list.
gssvtesRawIndices :: Lens' GoogleSecuritySafebrowsingV4ThreatEntrySet (Maybe GoogleSecuritySafebrowsingV4RawIndices)
gssvtesRawIndices
  = lens _gssvtesRawIndices
      (\ s a -> s{_gssvtesRawIndices = a})

-- | The compression type for the entries in this set.
gssvtesCompressionType :: Lens' GoogleSecuritySafebrowsingV4ThreatEntrySet (Maybe GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType)
gssvtesCompressionType
  = lens _gssvtesCompressionType
      (\ s a -> s{_gssvtesCompressionType = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatEntrySet
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ThreatEntrySet"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatEntrySet' <$>
                   (o .:? "riceHashes") <*> (o .:? "riceIndices") <*>
                     (o .:? "rawHashes")
                     <*> (o .:? "rawIndices")
                     <*> (o .:? "compressionType"))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatEntrySet
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatEntrySet'{..}
          = object
              (catMaybes
                 [("riceHashes" .=) <$> _gssvtesRiceHashes,
                  ("riceIndices" .=) <$> _gssvtesRiceIndices,
                  ("rawHashes" .=) <$> _gssvtesRawHashes,
                  ("rawIndices" .=) <$> _gssvtesRawIndices,
                  ("compressionType" .=) <$> _gssvtesCompressionType])

--
-- /See:/ 'googleSecuritySafebrowsingV4FindThreatMatchesResponse' smart constructor.
newtype GoogleSecuritySafebrowsingV4FindThreatMatchesResponse =
  GoogleSecuritySafebrowsingV4FindThreatMatchesResponse'
    { _gssvftmrMatches :: Maybe [GoogleSecuritySafebrowsingV4ThreatMatch]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FindThreatMatchesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvftmrMatches'
googleSecuritySafebrowsingV4FindThreatMatchesResponse
    :: GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
googleSecuritySafebrowsingV4FindThreatMatchesResponse =
  GoogleSecuritySafebrowsingV4FindThreatMatchesResponse'
    {_gssvftmrMatches = Nothing}


-- | The threat list matches.
gssvftmrMatches :: Lens' GoogleSecuritySafebrowsingV4FindThreatMatchesResponse [GoogleSecuritySafebrowsingV4ThreatMatch]
gssvftmrMatches
  = lens _gssvftmrMatches
      (\ s a -> s{_gssvftmrMatches = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FindThreatMatchesResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FindThreatMatchesResponse'
                   <$> (o .:? "matches" .!= mempty))

instance ToJSON
           GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4FindThreatMatchesResponse'{..}
          = object
              (catMaybes [("matches" .=) <$> _gssvftmrMatches])

-- | The constraints for this update.
--
-- /See:/ 'googleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints'
    { _gssvftlurlurcMaxUpdateEntries :: !(Maybe (Textual Int32))
    , _gssvftlurlurcDeviceLocation :: !(Maybe Text)
    , _gssvftlurlurcLanguage :: !(Maybe Text)
    , _gssvftlurlurcRegion :: !(Maybe Text)
    , _gssvftlurlurcSupportedCompressions :: !(Maybe [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem])
    , _gssvftlurlurcMaxDatabaseEntries :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvftlurlurcMaxUpdateEntries'
--
-- * 'gssvftlurlurcDeviceLocation'
--
-- * 'gssvftlurlurcLanguage'
--
-- * 'gssvftlurlurcRegion'
--
-- * 'gssvftlurlurcSupportedCompressions'
--
-- * 'gssvftlurlurcMaxDatabaseEntries'
googleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
googleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints'
    { _gssvftlurlurcMaxUpdateEntries = Nothing
    , _gssvftlurlurcDeviceLocation = Nothing
    , _gssvftlurlurcLanguage = Nothing
    , _gssvftlurlurcRegion = Nothing
    , _gssvftlurlurcSupportedCompressions = Nothing
    , _gssvftlurlurcMaxDatabaseEntries = Nothing
    }


-- | The maximum size in number of entries. The update will not contain more
-- entries than this value. This should be a power of 2 between 2**10 and
-- 2**20. If zero, no update size limit is set.
gssvftlurlurcMaxUpdateEntries :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints (Maybe Int32)
gssvftlurlurcMaxUpdateEntries
  = lens _gssvftlurlurcMaxUpdateEntries
      (\ s a -> s{_gssvftlurlurcMaxUpdateEntries = a})
      . mapping _Coerce

-- | A client\'s physical location, expressed as a ISO 31166-1 alpha-2 region
-- code.
gssvftlurlurcDeviceLocation :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints (Maybe Text)
gssvftlurlurcDeviceLocation
  = lens _gssvftlurlurcDeviceLocation
      (\ s a -> s{_gssvftlurlurcDeviceLocation = a})

-- | Requests the lists for a specific language. Expects ISO 639 alpha-2
-- format.
gssvftlurlurcLanguage :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints (Maybe Text)
gssvftlurlurcLanguage
  = lens _gssvftlurlurcLanguage
      (\ s a -> s{_gssvftlurlurcLanguage = a})

-- | Requests the list for a specific geographic location. If not set the
-- server may pick that value based on the user\'s IP address. Expects ISO
-- 3166-1 alpha-2 format.
gssvftlurlurcRegion :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints (Maybe Text)
gssvftlurlurcRegion
  = lens _gssvftlurlurcRegion
      (\ s a -> s{_gssvftlurlurcRegion = a})

-- | The compression types supported by the client.
gssvftlurlurcSupportedCompressions :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem]
gssvftlurlurcSupportedCompressions
  = lens _gssvftlurlurcSupportedCompressions
      (\ s a -> s{_gssvftlurlurcSupportedCompressions = a})
      . _Default
      . _Coerce

-- | Sets the maximum number of entries that the client is willing to have in
-- the local database for the specified list. This should be a power of 2
-- between 2**10 and 2**20. If zero, no database size limit is set.
gssvftlurlurcMaxDatabaseEntries :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints (Maybe Int32)
gssvftlurlurcMaxDatabaseEntries
  = lens _gssvftlurlurcMaxDatabaseEntries
      (\ s a -> s{_gssvftlurlurcMaxDatabaseEntries = a})
      . mapping _Coerce

instance FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints'
                   <$>
                   (o .:? "maxUpdateEntries") <*>
                     (o .:? "deviceLocation")
                     <*> (o .:? "language")
                     <*> (o .:? "region")
                     <*> (o .:? "supportedCompressions" .!= mempty)
                     <*> (o .:? "maxDatabaseEntries"))

instance ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints'{..}
          = object
              (catMaybes
                 [("maxUpdateEntries" .=) <$>
                    _gssvftlurlurcMaxUpdateEntries,
                  ("deviceLocation" .=) <$>
                    _gssvftlurlurcDeviceLocation,
                  ("language" .=) <$> _gssvftlurlurcLanguage,
                  ("region" .=) <$> _gssvftlurlurcRegion,
                  ("supportedCompressions" .=) <$>
                    _gssvftlurlurcSupportedCompressions,
                  ("maxDatabaseEntries" .=) <$>
                    _gssvftlurlurcMaxDatabaseEntries])

-- | The metadata associated with a specific threat entry. The client is
-- expected to know the metadata key\/value pairs associated with each
-- threat type.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatEntryMetadata' smart constructor.
newtype GoogleSecuritySafebrowsingV4ThreatEntryMetadata =
  GoogleSecuritySafebrowsingV4ThreatEntryMetadata'
    { _gssvtemEntries :: Maybe [GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatEntryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvtemEntries'
googleSecuritySafebrowsingV4ThreatEntryMetadata
    :: GoogleSecuritySafebrowsingV4ThreatEntryMetadata
googleSecuritySafebrowsingV4ThreatEntryMetadata =
  GoogleSecuritySafebrowsingV4ThreatEntryMetadata' {_gssvtemEntries = Nothing}


-- | The metadata entries.
gssvtemEntries :: Lens' GoogleSecuritySafebrowsingV4ThreatEntryMetadata [GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry]
gssvtemEntries
  = lens _gssvtemEntries
      (\ s a -> s{_gssvtemEntries = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatEntryMetadata
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ThreatEntryMetadata"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatEntryMetadata' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatEntryMetadata
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatEntryMetadata'{..}
          = object
              (catMaybes [("entries" .=) <$> _gssvtemEntries])

-- | Request to check entries against lists.
--
-- /See:/ 'googleSecuritySafebrowsingV4FindThreatMatchesRequest' smart constructor.
data GoogleSecuritySafebrowsingV4FindThreatMatchesRequest =
  GoogleSecuritySafebrowsingV4FindThreatMatchesRequest'
    { _gssvftmrThreatInfo :: !(Maybe GoogleSecuritySafebrowsingV4ThreatInfo)
    , _gssvftmrClient :: !(Maybe GoogleSecuritySafebrowsingV4ClientInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FindThreatMatchesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvftmrThreatInfo'
--
-- * 'gssvftmrClient'
googleSecuritySafebrowsingV4FindThreatMatchesRequest
    :: GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
googleSecuritySafebrowsingV4FindThreatMatchesRequest =
  GoogleSecuritySafebrowsingV4FindThreatMatchesRequest'
    {_gssvftmrThreatInfo = Nothing, _gssvftmrClient = Nothing}


-- | The lists and entries to be checked for matches.
gssvftmrThreatInfo :: Lens' GoogleSecuritySafebrowsingV4FindThreatMatchesRequest (Maybe GoogleSecuritySafebrowsingV4ThreatInfo)
gssvftmrThreatInfo
  = lens _gssvftmrThreatInfo
      (\ s a -> s{_gssvftmrThreatInfo = a})

-- | The client metadata.
gssvftmrClient :: Lens' GoogleSecuritySafebrowsingV4FindThreatMatchesRequest (Maybe GoogleSecuritySafebrowsingV4ClientInfo)
gssvftmrClient
  = lens _gssvftmrClient
      (\ s a -> s{_gssvftmrClient = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FindThreatMatchesRequest"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FindThreatMatchesRequest'
                   <$> (o .:? "threatInfo") <*> (o .:? "client"))

instance ToJSON
           GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
         where
        toJSON
          GoogleSecuritySafebrowsingV4FindThreatMatchesRequest'{..}
          = object
              (catMaybes
                 [("threatInfo" .=) <$> _gssvftmrThreatInfo,
                  ("client" .=) <$> _gssvftmrClient])

-- | Describes an individual threat list. A list is defined by three
-- parameters: the type of threat posed, the type of platform targeted by
-- the threat, and the type of entries in the list.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatListDescriptor' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatListDescriptor =
  GoogleSecuritySafebrowsingV4ThreatListDescriptor'
    { _gssvtldThreatEntryType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType)
    , _gssvtldThreatType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType)
    , _gssvtldPlatformType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatListDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvtldThreatEntryType'
--
-- * 'gssvtldThreatType'
--
-- * 'gssvtldPlatformType'
googleSecuritySafebrowsingV4ThreatListDescriptor
    :: GoogleSecuritySafebrowsingV4ThreatListDescriptor
googleSecuritySafebrowsingV4ThreatListDescriptor =
  GoogleSecuritySafebrowsingV4ThreatListDescriptor'
    { _gssvtldThreatEntryType = Nothing
    , _gssvtldThreatType = Nothing
    , _gssvtldPlatformType = Nothing
    }


-- | The entry types contained in the list.
gssvtldThreatEntryType :: Lens' GoogleSecuritySafebrowsingV4ThreatListDescriptor (Maybe GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType)
gssvtldThreatEntryType
  = lens _gssvtldThreatEntryType
      (\ s a -> s{_gssvtldThreatEntryType = a})

-- | The threat type posed by the list\'s entries.
gssvtldThreatType :: Lens' GoogleSecuritySafebrowsingV4ThreatListDescriptor (Maybe GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType)
gssvtldThreatType
  = lens _gssvtldThreatType
      (\ s a -> s{_gssvtldThreatType = a})

-- | The platform type targeted by the list\'s entries.
gssvtldPlatformType :: Lens' GoogleSecuritySafebrowsingV4ThreatListDescriptor (Maybe GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType)
gssvtldPlatformType
  = lens _gssvtldPlatformType
      (\ s a -> s{_gssvtldPlatformType = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatListDescriptor
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ThreatListDescriptor"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatListDescriptor' <$>
                   (o .:? "threatEntryType") <*> (o .:? "threatType")
                     <*> (o .:? "platformType"))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatListDescriptor
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatListDescriptor'{..}
          = object
              (catMaybes
                 [("threatEntryType" .=) <$> _gssvtldThreatEntryType,
                  ("threatType" .=) <$> _gssvtldThreatType,
                  ("platformType" .=) <$> _gssvtldPlatformType])

-- | The client metadata associated with Safe Browsing API requests.
--
-- /See:/ 'googleSecuritySafebrowsingV4ClientInfo' smart constructor.
data GoogleSecuritySafebrowsingV4ClientInfo =
  GoogleSecuritySafebrowsingV4ClientInfo'
    { _gssvciClientId :: !(Maybe Text)
    , _gssvciClientVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ClientInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvciClientId'
--
-- * 'gssvciClientVersion'
googleSecuritySafebrowsingV4ClientInfo
    :: GoogleSecuritySafebrowsingV4ClientInfo
googleSecuritySafebrowsingV4ClientInfo =
  GoogleSecuritySafebrowsingV4ClientInfo'
    {_gssvciClientId = Nothing, _gssvciClientVersion = Nothing}


-- | A client ID that (hopefully) uniquely identifies the client
-- implementation of the Safe Browsing API.
gssvciClientId :: Lens' GoogleSecuritySafebrowsingV4ClientInfo (Maybe Text)
gssvciClientId
  = lens _gssvciClientId
      (\ s a -> s{_gssvciClientId = a})

-- | The version of the client implementation.
gssvciClientVersion :: Lens' GoogleSecuritySafebrowsingV4ClientInfo (Maybe Text)
gssvciClientVersion
  = lens _gssvciClientVersion
      (\ s a -> s{_gssvciClientVersion = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4ClientInfo
         where
        parseJSON
          = withObject "GoogleSecuritySafebrowsingV4ClientInfo"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ClientInfo' <$>
                   (o .:? "clientId") <*> (o .:? "clientVersion"))

instance ToJSON
           GoogleSecuritySafebrowsingV4ClientInfo
         where
        toJSON GoogleSecuritySafebrowsingV4ClientInfo'{..}
          = object
              (catMaybes
                 [("clientId" .=) <$> _gssvciClientId,
                  ("clientVersion" .=) <$> _gssvciClientVersion])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'googleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty =
  GoogleProtobufEmpty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
--
googleProtobufEmpty
    :: GoogleProtobufEmpty
googleProtobufEmpty = GoogleProtobufEmpty'


instance FromJSON GoogleProtobufEmpty where
        parseJSON
          = withObject "GoogleProtobufEmpty"
              (\ o -> pure GoogleProtobufEmpty')

instance ToJSON GoogleProtobufEmpty where
        toJSON = const emptyObject

-- | Details about the user that encountered the threat.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatHitUserInfo' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatHitUserInfo =
  GoogleSecuritySafebrowsingV4ThreatHitUserInfo'
    { _gssvthuiRegionCode :: !(Maybe Text)
    , _gssvthuiUserId :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatHitUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvthuiRegionCode'
--
-- * 'gssvthuiUserId'
googleSecuritySafebrowsingV4ThreatHitUserInfo
    :: GoogleSecuritySafebrowsingV4ThreatHitUserInfo
googleSecuritySafebrowsingV4ThreatHitUserInfo =
  GoogleSecuritySafebrowsingV4ThreatHitUserInfo'
    {_gssvthuiRegionCode = Nothing, _gssvthuiUserId = Nothing}


-- | The UN M.49 region code associated with the user\'s location.
gssvthuiRegionCode :: Lens' GoogleSecuritySafebrowsingV4ThreatHitUserInfo (Maybe Text)
gssvthuiRegionCode
  = lens _gssvthuiRegionCode
      (\ s a -> s{_gssvthuiRegionCode = a})

-- | Unique user identifier defined by the client.
gssvthuiUserId :: Lens' GoogleSecuritySafebrowsingV4ThreatHitUserInfo (Maybe ByteString)
gssvthuiUserId
  = lens _gssvthuiUserId
      (\ s a -> s{_gssvthuiUserId = a})
      . mapping _Bytes

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatHitUserInfo
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ThreatHitUserInfo"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatHitUserInfo' <$>
                   (o .:? "regionCode") <*> (o .:? "userId"))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatHitUserInfo
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatHitUserInfo'{..}
          = object
              (catMaybes
                 [("regionCode" .=) <$> _gssvthuiRegionCode,
                  ("userId" .=) <$> _gssvthuiUserId])

-- | An update to an individual list.
--
-- /See:/ 'googleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse'
    { _gssvftlurlurAdditions :: !(Maybe [GoogleSecuritySafebrowsingV4ThreatEntrySet])
    , _gssvftlurlurThreatEntryType :: !(Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType)
    , _gssvftlurlurChecksum :: !(Maybe GoogleSecuritySafebrowsingV4Checksum)
    , _gssvftlurlurThreatType :: !(Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType)
    , _gssvftlurlurPlatformType :: !(Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType)
    , _gssvftlurlurNewClientState :: !(Maybe Bytes)
    , _gssvftlurlurRemovals :: !(Maybe [GoogleSecuritySafebrowsingV4ThreatEntrySet])
    , _gssvftlurlurResponseType :: !(Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvftlurlurAdditions'
--
-- * 'gssvftlurlurThreatEntryType'
--
-- * 'gssvftlurlurChecksum'
--
-- * 'gssvftlurlurThreatType'
--
-- * 'gssvftlurlurPlatformType'
--
-- * 'gssvftlurlurNewClientState'
--
-- * 'gssvftlurlurRemovals'
--
-- * 'gssvftlurlurResponseType'
googleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
googleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse'
    { _gssvftlurlurAdditions = Nothing
    , _gssvftlurlurThreatEntryType = Nothing
    , _gssvftlurlurChecksum = Nothing
    , _gssvftlurlurThreatType = Nothing
    , _gssvftlurlurPlatformType = Nothing
    , _gssvftlurlurNewClientState = Nothing
    , _gssvftlurlurRemovals = Nothing
    , _gssvftlurlurResponseType = Nothing
    }


-- | A set of entries to add to a local threat type\'s list. Repeated to
-- allow for a combination of compressed and raw data to be sent in a
-- single response.
gssvftlurlurAdditions :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse [GoogleSecuritySafebrowsingV4ThreatEntrySet]
gssvftlurlurAdditions
  = lens _gssvftlurlurAdditions
      (\ s a -> s{_gssvftlurlurAdditions = a})
      . _Default
      . _Coerce

-- | The format of the threats.
gssvftlurlurThreatEntryType :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse (Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType)
gssvftlurlurThreatEntryType
  = lens _gssvftlurlurThreatEntryType
      (\ s a -> s{_gssvftlurlurThreatEntryType = a})

-- | The expected SHA256 hash of the client state; that is, of the sorted
-- list of all hashes present in the database after applying the provided
-- update. If the client state doesn\'t match the expected state, the
-- client must disregard this update and retry later.
gssvftlurlurChecksum :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse (Maybe GoogleSecuritySafebrowsingV4Checksum)
gssvftlurlurChecksum
  = lens _gssvftlurlurChecksum
      (\ s a -> s{_gssvftlurlurChecksum = a})

-- | The threat type for which data is returned.
gssvftlurlurThreatType :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse (Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType)
gssvftlurlurThreatType
  = lens _gssvftlurlurThreatType
      (\ s a -> s{_gssvftlurlurThreatType = a})

-- | The platform type for which data is returned.
gssvftlurlurPlatformType :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse (Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType)
gssvftlurlurPlatformType
  = lens _gssvftlurlurPlatformType
      (\ s a -> s{_gssvftlurlurPlatformType = a})

-- | The new client state, in encrypted format. Opaque to clients.
gssvftlurlurNewClientState :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse (Maybe ByteString)
gssvftlurlurNewClientState
  = lens _gssvftlurlurNewClientState
      (\ s a -> s{_gssvftlurlurNewClientState = a})
      . mapping _Bytes

-- | A set of entries to remove from a local threat type\'s list. In
-- practice, this field is empty or contains exactly one ThreatEntrySet.
gssvftlurlurRemovals :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse [GoogleSecuritySafebrowsingV4ThreatEntrySet]
gssvftlurlurRemovals
  = lens _gssvftlurlurRemovals
      (\ s a -> s{_gssvftlurlurRemovals = a})
      . _Default
      . _Coerce

-- | The type of response. This may indicate that an action is required by
-- the client when the response is received.
gssvftlurlurResponseType :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse (Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType)
gssvftlurlurResponseType
  = lens _gssvftlurlurResponseType
      (\ s a -> s{_gssvftlurlurResponseType = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse'
                   <$>
                   (o .:? "additions" .!= mempty) <*>
                     (o .:? "threatEntryType")
                     <*> (o .:? "checksum")
                     <*> (o .:? "threatType")
                     <*> (o .:? "platformType")
                     <*> (o .:? "newClientState")
                     <*> (o .:? "removals" .!= mempty)
                     <*> (o .:? "responseType"))

instance ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse'{..}
          = object
              (catMaybes
                 [("additions" .=) <$> _gssvftlurlurAdditions,
                  ("threatEntryType" .=) <$>
                    _gssvftlurlurThreatEntryType,
                  ("checksum" .=) <$> _gssvftlurlurChecksum,
                  ("threatType" .=) <$> _gssvftlurlurThreatType,
                  ("platformType" .=) <$> _gssvftlurlurPlatformType,
                  ("newClientState" .=) <$>
                    _gssvftlurlurNewClientState,
                  ("removals" .=) <$> _gssvftlurlurRemovals,
                  ("responseType" .=) <$> _gssvftlurlurResponseType])

-- | A single list update request.
--
-- /See:/ 'googleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest'
    { _gState :: !(Maybe Bytes)
    , _gThreatEntryType :: !(Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType)
    , _gConstraints :: !(Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints)
    , _gThreatType :: !(Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType)
    , _gPlatformType :: !(Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gState'
--
-- * 'gThreatEntryType'
--
-- * 'gConstraints'
--
-- * 'gThreatType'
--
-- * 'gPlatformType'
googleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
googleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest'
    { _gState = Nothing
    , _gThreatEntryType = Nothing
    , _gConstraints = Nothing
    , _gThreatType = Nothing
    , _gPlatformType = Nothing
    }


-- | The current state of the client for the requested list (the encrypted
-- client state that was received from the last successful list update).
gState :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest (Maybe ByteString)
gState
  = lens _gState (\ s a -> s{_gState = a}) .
      mapping _Bytes

-- | The types of entries present in the list.
gThreatEntryType :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest (Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType)
gThreatEntryType
  = lens _gThreatEntryType
      (\ s a -> s{_gThreatEntryType = a})

-- | The constraints associated with this request.
gConstraints :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest (Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints)
gConstraints
  = lens _gConstraints (\ s a -> s{_gConstraints = a})

-- | The type of threat posed by entries present in the list.
gThreatType :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest (Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType)
gThreatType
  = lens _gThreatType (\ s a -> s{_gThreatType = a})

-- | The type of platform at risk by entries present in the list.
gPlatformType :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest (Maybe GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType)
gPlatformType
  = lens _gPlatformType
      (\ s a -> s{_gPlatformType = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest'
                   <$>
                   (o .:? "state") <*> (o .:? "threatEntryType") <*>
                     (o .:? "constraints")
                     <*> (o .:? "threatType")
                     <*> (o .:? "platformType"))

instance ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gState,
                  ("threatEntryType" .=) <$> _gThreatEntryType,
                  ("constraints" .=) <$> _gConstraints,
                  ("threatType" .=) <$> _gThreatType,
                  ("platformType" .=) <$> _gPlatformType])

-- | The information regarding one or more threats that a client submits when
-- checking for matches in threat lists.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatInfo' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatInfo =
  GoogleSecuritySafebrowsingV4ThreatInfo'
    { _gssvtiThreatEntries :: !(Maybe [GoogleSecuritySafebrowsingV4ThreatEntry])
    , _gssvtiThreatTypes :: !(Maybe [GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem])
    , _gssvtiPlatformTypes :: !(Maybe [GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem])
    , _gssvtiThreatEntryTypes :: !(Maybe [GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvtiThreatEntries'
--
-- * 'gssvtiThreatTypes'
--
-- * 'gssvtiPlatformTypes'
--
-- * 'gssvtiThreatEntryTypes'
googleSecuritySafebrowsingV4ThreatInfo
    :: GoogleSecuritySafebrowsingV4ThreatInfo
googleSecuritySafebrowsingV4ThreatInfo =
  GoogleSecuritySafebrowsingV4ThreatInfo'
    { _gssvtiThreatEntries = Nothing
    , _gssvtiThreatTypes = Nothing
    , _gssvtiPlatformTypes = Nothing
    , _gssvtiThreatEntryTypes = Nothing
    }


-- | The threat entries to be checked.
gssvtiThreatEntries :: Lens' GoogleSecuritySafebrowsingV4ThreatInfo [GoogleSecuritySafebrowsingV4ThreatEntry]
gssvtiThreatEntries
  = lens _gssvtiThreatEntries
      (\ s a -> s{_gssvtiThreatEntries = a})
      . _Default
      . _Coerce

-- | The threat types to be checked.
gssvtiThreatTypes :: Lens' GoogleSecuritySafebrowsingV4ThreatInfo [GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem]
gssvtiThreatTypes
  = lens _gssvtiThreatTypes
      (\ s a -> s{_gssvtiThreatTypes = a})
      . _Default
      . _Coerce

-- | The platform types to be checked.
gssvtiPlatformTypes :: Lens' GoogleSecuritySafebrowsingV4ThreatInfo [GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem]
gssvtiPlatformTypes
  = lens _gssvtiPlatformTypes
      (\ s a -> s{_gssvtiPlatformTypes = a})
      . _Default
      . _Coerce

-- | The entry types to be checked.
gssvtiThreatEntryTypes :: Lens' GoogleSecuritySafebrowsingV4ThreatInfo [GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem]
gssvtiThreatEntryTypes
  = lens _gssvtiThreatEntryTypes
      (\ s a -> s{_gssvtiThreatEntryTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatInfo
         where
        parseJSON
          = withObject "GoogleSecuritySafebrowsingV4ThreatInfo"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatInfo' <$>
                   (o .:? "threatEntries" .!= mempty) <*>
                     (o .:? "threatTypes" .!= mempty)
                     <*> (o .:? "platformTypes" .!= mempty)
                     <*> (o .:? "threatEntryTypes" .!= mempty))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatInfo
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatInfo'{..}
          = object
              (catMaybes
                 [("threatEntries" .=) <$> _gssvtiThreatEntries,
                  ("threatTypes" .=) <$> _gssvtiThreatTypes,
                  ("platformTypes" .=) <$> _gssvtiPlatformTypes,
                  ("threatEntryTypes" .=) <$> _gssvtiThreatEntryTypes])

-- | A single resource related to a threat hit.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatHitThreatSource' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatHitThreatSource =
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource'
    { _gssvthtsRemoteIP :: !(Maybe Text)
    , _gssvthtsURL :: !(Maybe Text)
    , _gssvthtsReferrer :: !(Maybe Text)
    , _gssvthtsType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatHitThreatSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvthtsRemoteIP'
--
-- * 'gssvthtsURL'
--
-- * 'gssvthtsReferrer'
--
-- * 'gssvthtsType'
googleSecuritySafebrowsingV4ThreatHitThreatSource
    :: GoogleSecuritySafebrowsingV4ThreatHitThreatSource
googleSecuritySafebrowsingV4ThreatHitThreatSource =
  GoogleSecuritySafebrowsingV4ThreatHitThreatSource'
    { _gssvthtsRemoteIP = Nothing
    , _gssvthtsURL = Nothing
    , _gssvthtsReferrer = Nothing
    , _gssvthtsType = Nothing
    }


-- | The remote IP of the resource in ASCII format. Either IPv4 or IPv6.
gssvthtsRemoteIP :: Lens' GoogleSecuritySafebrowsingV4ThreatHitThreatSource (Maybe Text)
gssvthtsRemoteIP
  = lens _gssvthtsRemoteIP
      (\ s a -> s{_gssvthtsRemoteIP = a})

-- | The URL of the resource.
gssvthtsURL :: Lens' GoogleSecuritySafebrowsingV4ThreatHitThreatSource (Maybe Text)
gssvthtsURL
  = lens _gssvthtsURL (\ s a -> s{_gssvthtsURL = a})

-- | Referrer of the resource. Only set if the referrer is available.
gssvthtsReferrer :: Lens' GoogleSecuritySafebrowsingV4ThreatHitThreatSource (Maybe Text)
gssvthtsReferrer
  = lens _gssvthtsReferrer
      (\ s a -> s{_gssvthtsReferrer = a})

-- | The type of source reported.
gssvthtsType :: Lens' GoogleSecuritySafebrowsingV4ThreatHitThreatSource (Maybe GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType)
gssvthtsType
  = lens _gssvthtsType (\ s a -> s{_gssvthtsType = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatHitThreatSource
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ThreatHitThreatSource"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatHitThreatSource'
                   <$>
                   (o .:? "remoteIp") <*> (o .:? "url") <*>
                     (o .:? "referrer")
                     <*> (o .:? "type"))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatHitThreatSource
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatHitThreatSource'{..}
          = object
              (catMaybes
                 [("remoteIp" .=) <$> _gssvthtsRemoteIP,
                  ("url" .=) <$> _gssvthtsURL,
                  ("referrer" .=) <$> _gssvthtsReferrer,
                  ("type" .=) <$> _gssvthtsType])

-- | The uncompressed threat entries in hash format of a particular prefix
-- length. Hashes can be anywhere from 4 to 32 bytes in size. A large
-- majority are 4 bytes, but some hashes are lengthened if they collide
-- with the hash of a popular URL. Used for sending ThreatEntrySet to
-- clients that do not support compression, or when sending non-4-byte
-- hashes to clients that do support compression.
--
-- /See:/ 'googleSecuritySafebrowsingV4RawHashes' smart constructor.
data GoogleSecuritySafebrowsingV4RawHashes =
  GoogleSecuritySafebrowsingV4RawHashes'
    { _gssvrhPrefixSize :: !(Maybe (Textual Int32))
    , _gssvrhRawHashes :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4RawHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvrhPrefixSize'
--
-- * 'gssvrhRawHashes'
googleSecuritySafebrowsingV4RawHashes
    :: GoogleSecuritySafebrowsingV4RawHashes
googleSecuritySafebrowsingV4RawHashes =
  GoogleSecuritySafebrowsingV4RawHashes'
    {_gssvrhPrefixSize = Nothing, _gssvrhRawHashes = Nothing}


-- | The number of bytes for each prefix encoded below. This field can be
-- anywhere from 4 (shortest prefix) to 32 (full SHA256 hash).
gssvrhPrefixSize :: Lens' GoogleSecuritySafebrowsingV4RawHashes (Maybe Int32)
gssvrhPrefixSize
  = lens _gssvrhPrefixSize
      (\ s a -> s{_gssvrhPrefixSize = a})
      . mapping _Coerce

-- | The hashes, in binary format, concatenated into one long string. Hashes
-- are sorted in lexicographic order. For JSON API users, hashes are
-- base64-encoded.
gssvrhRawHashes :: Lens' GoogleSecuritySafebrowsingV4RawHashes (Maybe ByteString)
gssvrhRawHashes
  = lens _gssvrhRawHashes
      (\ s a -> s{_gssvrhRawHashes = a})
      . mapping _Bytes

instance FromJSON
           GoogleSecuritySafebrowsingV4RawHashes
         where
        parseJSON
          = withObject "GoogleSecuritySafebrowsingV4RawHashes"
              (\ o ->
                 GoogleSecuritySafebrowsingV4RawHashes' <$>
                   (o .:? "prefixSize") <*> (o .:? "rawHashes"))

instance ToJSON GoogleSecuritySafebrowsingV4RawHashes
         where
        toJSON GoogleSecuritySafebrowsingV4RawHashes'{..}
          = object
              (catMaybes
                 [("prefixSize" .=) <$> _gssvrhPrefixSize,
                  ("rawHashes" .=) <$> _gssvrhRawHashes])

-- | The expected state of a client\'s local database.
--
-- /See:/ 'googleSecuritySafebrowsingV4Checksum' smart constructor.
newtype GoogleSecuritySafebrowsingV4Checksum =
  GoogleSecuritySafebrowsingV4Checksum'
    { _gssvcSha256 :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4Checksum' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvcSha256'
googleSecuritySafebrowsingV4Checksum
    :: GoogleSecuritySafebrowsingV4Checksum
googleSecuritySafebrowsingV4Checksum =
  GoogleSecuritySafebrowsingV4Checksum' {_gssvcSha256 = Nothing}


-- | The SHA256 hash of the client state; that is, of the sorted list of all
-- hashes present in the database.
gssvcSha256 :: Lens' GoogleSecuritySafebrowsingV4Checksum (Maybe ByteString)
gssvcSha256
  = lens _gssvcSha256 (\ s a -> s{_gssvcSha256 = a}) .
      mapping _Bytes

instance FromJSON
           GoogleSecuritySafebrowsingV4Checksum
         where
        parseJSON
          = withObject "GoogleSecuritySafebrowsingV4Checksum"
              (\ o ->
                 GoogleSecuritySafebrowsingV4Checksum' <$>
                   (o .:? "sha256"))

instance ToJSON GoogleSecuritySafebrowsingV4Checksum
         where
        toJSON GoogleSecuritySafebrowsingV4Checksum'{..}
          = object (catMaybes [("sha256" .=) <$> _gssvcSha256])

-- | A match when checking a threat entry in the Safe Browsing threat lists.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatMatch' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatMatch =
  GoogleSecuritySafebrowsingV4ThreatMatch'
    { _gssvtmThreatEntryMetadata :: !(Maybe GoogleSecuritySafebrowsingV4ThreatEntryMetadata)
    , _gssvtmThreatEntryType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType)
    , _gssvtmThreatType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatMatchThreatType)
    , _gssvtmPlatformType :: !(Maybe GoogleSecuritySafebrowsingV4ThreatMatchPlatformType)
    , _gssvtmCacheDuration :: !(Maybe GDuration)
    , _gssvtmThreat :: !(Maybe GoogleSecuritySafebrowsingV4ThreatEntry)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatMatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvtmThreatEntryMetadata'
--
-- * 'gssvtmThreatEntryType'
--
-- * 'gssvtmThreatType'
--
-- * 'gssvtmPlatformType'
--
-- * 'gssvtmCacheDuration'
--
-- * 'gssvtmThreat'
googleSecuritySafebrowsingV4ThreatMatch
    :: GoogleSecuritySafebrowsingV4ThreatMatch
googleSecuritySafebrowsingV4ThreatMatch =
  GoogleSecuritySafebrowsingV4ThreatMatch'
    { _gssvtmThreatEntryMetadata = Nothing
    , _gssvtmThreatEntryType = Nothing
    , _gssvtmThreatType = Nothing
    , _gssvtmPlatformType = Nothing
    , _gssvtmCacheDuration = Nothing
    , _gssvtmThreat = Nothing
    }


-- | Optional metadata associated with this threat.
gssvtmThreatEntryMetadata :: Lens' GoogleSecuritySafebrowsingV4ThreatMatch (Maybe GoogleSecuritySafebrowsingV4ThreatEntryMetadata)
gssvtmThreatEntryMetadata
  = lens _gssvtmThreatEntryMetadata
      (\ s a -> s{_gssvtmThreatEntryMetadata = a})

-- | The threat entry type matching this threat.
gssvtmThreatEntryType :: Lens' GoogleSecuritySafebrowsingV4ThreatMatch (Maybe GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType)
gssvtmThreatEntryType
  = lens _gssvtmThreatEntryType
      (\ s a -> s{_gssvtmThreatEntryType = a})

-- | The threat type matching this threat.
gssvtmThreatType :: Lens' GoogleSecuritySafebrowsingV4ThreatMatch (Maybe GoogleSecuritySafebrowsingV4ThreatMatchThreatType)
gssvtmThreatType
  = lens _gssvtmThreatType
      (\ s a -> s{_gssvtmThreatType = a})

-- | The platform type matching this threat.
gssvtmPlatformType :: Lens' GoogleSecuritySafebrowsingV4ThreatMatch (Maybe GoogleSecuritySafebrowsingV4ThreatMatchPlatformType)
gssvtmPlatformType
  = lens _gssvtmPlatformType
      (\ s a -> s{_gssvtmPlatformType = a})

-- | The cache lifetime for the returned match. Clients must not cache this
-- response for more than this duration to avoid false positives.
gssvtmCacheDuration :: Lens' GoogleSecuritySafebrowsingV4ThreatMatch (Maybe Scientific)
gssvtmCacheDuration
  = lens _gssvtmCacheDuration
      (\ s a -> s{_gssvtmCacheDuration = a})
      . mapping _GDuration

-- | The threat matching this threat.
gssvtmThreat :: Lens' GoogleSecuritySafebrowsingV4ThreatMatch (Maybe GoogleSecuritySafebrowsingV4ThreatEntry)
gssvtmThreat
  = lens _gssvtmThreat (\ s a -> s{_gssvtmThreat = a})

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatMatch
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ThreatMatch"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatMatch' <$>
                   (o .:? "threatEntryMetadata") <*>
                     (o .:? "threatEntryType")
                     <*> (o .:? "threatType")
                     <*> (o .:? "platformType")
                     <*> (o .:? "cacheDuration")
                     <*> (o .:? "threat"))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatMatch
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatMatch'{..}
          = object
              (catMaybes
                 [("threatEntryMetadata" .=) <$>
                    _gssvtmThreatEntryMetadata,
                  ("threatEntryType" .=) <$> _gssvtmThreatEntryType,
                  ("threatType" .=) <$> _gssvtmThreatType,
                  ("platformType" .=) <$> _gssvtmPlatformType,
                  ("cacheDuration" .=) <$> _gssvtmCacheDuration,
                  ("threat" .=) <$> _gssvtmThreat])

-- | An individual threat; for example, a malicious URL or its hash
-- representation. Only one of these fields should be set.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatEntry' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatEntry =
  GoogleSecuritySafebrowsingV4ThreatEntry'
    { _gssvteHash :: !(Maybe Bytes)
    , _gssvteURL :: !(Maybe Text)
    , _gssvteDigest :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvteHash'
--
-- * 'gssvteURL'
--
-- * 'gssvteDigest'
googleSecuritySafebrowsingV4ThreatEntry
    :: GoogleSecuritySafebrowsingV4ThreatEntry
googleSecuritySafebrowsingV4ThreatEntry =
  GoogleSecuritySafebrowsingV4ThreatEntry'
    {_gssvteHash = Nothing, _gssvteURL = Nothing, _gssvteDigest = Nothing}


-- | A hash prefix, consisting of the most significant 4-32 bytes of a SHA256
-- hash. This field is in binary format. For JSON requests, hashes are
-- base64-encoded.
gssvteHash :: Lens' GoogleSecuritySafebrowsingV4ThreatEntry (Maybe ByteString)
gssvteHash
  = lens _gssvteHash (\ s a -> s{_gssvteHash = a}) .
      mapping _Bytes

-- | A URL.
gssvteURL :: Lens' GoogleSecuritySafebrowsingV4ThreatEntry (Maybe Text)
gssvteURL
  = lens _gssvteURL (\ s a -> s{_gssvteURL = a})

-- | The digest of an executable in SHA256 format. The API supports both
-- binary and hex digests. For JSON requests, digests are base64-encoded.
gssvteDigest :: Lens' GoogleSecuritySafebrowsingV4ThreatEntry (Maybe ByteString)
gssvteDigest
  = lens _gssvteDigest (\ s a -> s{_gssvteDigest = a})
      . mapping _Bytes

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatEntry
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ThreatEntry"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatEntry' <$>
                   (o .:? "hash") <*> (o .:? "url") <*>
                     (o .:? "digest"))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatEntry
         where
        toJSON GoogleSecuritySafebrowsingV4ThreatEntry'{..}
          = object
              (catMaybes
                 [("hash" .=) <$> _gssvteHash,
                  ("url" .=) <$> _gssvteURL,
                  ("digest" .=) <$> _gssvteDigest])

--
-- /See:/ 'googleSecuritySafebrowsingV4FindFullHashesResponse' smart constructor.
data GoogleSecuritySafebrowsingV4FindFullHashesResponse =
  GoogleSecuritySafebrowsingV4FindFullHashesResponse'
    { _gssvffhrMatches :: !(Maybe [GoogleSecuritySafebrowsingV4ThreatMatch])
    , _gssvffhrNegativeCacheDuration :: !(Maybe GDuration)
    , _gssvffhrMinimumWaitDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FindFullHashesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvffhrMatches'
--
-- * 'gssvffhrNegativeCacheDuration'
--
-- * 'gssvffhrMinimumWaitDuration'
googleSecuritySafebrowsingV4FindFullHashesResponse
    :: GoogleSecuritySafebrowsingV4FindFullHashesResponse
googleSecuritySafebrowsingV4FindFullHashesResponse =
  GoogleSecuritySafebrowsingV4FindFullHashesResponse'
    { _gssvffhrMatches = Nothing
    , _gssvffhrNegativeCacheDuration = Nothing
    , _gssvffhrMinimumWaitDuration = Nothing
    }


-- | The full hashes that matched the requested prefixes.
gssvffhrMatches :: Lens' GoogleSecuritySafebrowsingV4FindFullHashesResponse [GoogleSecuritySafebrowsingV4ThreatMatch]
gssvffhrMatches
  = lens _gssvffhrMatches
      (\ s a -> s{_gssvffhrMatches = a})
      . _Default
      . _Coerce

-- | For requested entities that did not match the threat list, how long to
-- cache the response.
gssvffhrNegativeCacheDuration :: Lens' GoogleSecuritySafebrowsingV4FindFullHashesResponse (Maybe Scientific)
gssvffhrNegativeCacheDuration
  = lens _gssvffhrNegativeCacheDuration
      (\ s a -> s{_gssvffhrNegativeCacheDuration = a})
      . mapping _GDuration

-- | The minimum duration the client must wait before issuing any find hashes
-- request. If this field is not set, clients can issue a request as soon
-- as they want.
gssvffhrMinimumWaitDuration :: Lens' GoogleSecuritySafebrowsingV4FindFullHashesResponse (Maybe Scientific)
gssvffhrMinimumWaitDuration
  = lens _gssvffhrMinimumWaitDuration
      (\ s a -> s{_gssvffhrMinimumWaitDuration = a})
      . mapping _GDuration

instance FromJSON
           GoogleSecuritySafebrowsingV4FindFullHashesResponse
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FindFullHashesResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FindFullHashesResponse'
                   <$>
                   (o .:? "matches" .!= mempty) <*>
                     (o .:? "negativeCacheDuration")
                     <*> (o .:? "minimumWaitDuration"))

instance ToJSON
           GoogleSecuritySafebrowsingV4FindFullHashesResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4FindFullHashesResponse'{..}
          = object
              (catMaybes
                 [("matches" .=) <$> _gssvffhrMatches,
                  ("negativeCacheDuration" .=) <$>
                    _gssvffhrNegativeCacheDuration,
                  ("minimumWaitDuration" .=) <$>
                    _gssvffhrMinimumWaitDuration])

--
-- /See:/ 'googleSecuritySafebrowsingV4FetchThreatListUpdatesResponse' smart constructor.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse'
    { _gssvftlurListUpdateResponses :: !(Maybe [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse])
    , _gssvftlurMinimumWaitDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvftlurListUpdateResponses'
--
-- * 'gssvftlurMinimumWaitDuration'
googleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
googleSecuritySafebrowsingV4FetchThreatListUpdatesResponse =
  GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse'
    { _gssvftlurListUpdateResponses = Nothing
    , _gssvftlurMinimumWaitDuration = Nothing
    }


-- | The list updates requested by the clients. The number of responses here
-- may be less than the number of requests sent by clients. This is the
-- case, for example, if the server has no updates for a particular list.
gssvftlurListUpdateResponses :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse [GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse]
gssvftlurListUpdateResponses
  = lens _gssvftlurListUpdateResponses
      (\ s a -> s{_gssvftlurListUpdateResponses = a})
      . _Default
      . _Coerce

-- | The minimum duration the client must wait before issuing any update
-- request. If this field is not set clients may update as soon as they
-- want.
gssvftlurMinimumWaitDuration :: Lens' GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse (Maybe Scientific)
gssvftlurMinimumWaitDuration
  = lens _gssvftlurMinimumWaitDuration
      (\ s a -> s{_gssvftlurMinimumWaitDuration = a})
      . mapping _GDuration

instance FromJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse'
                   <$>
                   (o .:? "listUpdateResponses" .!= mempty) <*>
                     (o .:? "minimumWaitDuration"))

instance ToJSON
           GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse'{..}
          = object
              (catMaybes
                 [("listUpdateResponses" .=) <$>
                    _gssvftlurListUpdateResponses,
                  ("minimumWaitDuration" .=) <$>
                    _gssvftlurMinimumWaitDuration])

-- | A single metadata entry.
--
-- /See:/ 'googleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry' smart constructor.
data GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry =
  GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry'
    { _gssvtemmeValue :: !(Maybe Bytes)
    , _gssvtemmeKey :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvtemmeValue'
--
-- * 'gssvtemmeKey'
googleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    :: GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
googleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry =
  GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry'
    {_gssvtemmeValue = Nothing, _gssvtemmeKey = Nothing}


-- | The metadata entry value. For JSON requests, the value is
-- base64-encoded.
gssvtemmeValue :: Lens' GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry (Maybe ByteString)
gssvtemmeValue
  = lens _gssvtemmeValue
      (\ s a -> s{_gssvtemmeValue = a})
      . mapping _Bytes

-- | The metadata entry key. For JSON requests, the key is base64-encoded.
gssvtemmeKey :: Lens' GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry (Maybe ByteString)
gssvtemmeKey
  = lens _gssvtemmeKey (\ s a -> s{_gssvtemmeKey = a})
      . mapping _Bytes

instance FromJSON
           GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry'
                   <$> (o .:? "value") <*> (o .:? "key"))

instance ToJSON
           GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
         where
        toJSON
          GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gssvtemmeValue,
                  ("key" .=) <$> _gssvtemmeKey])

--
-- /See:/ 'googleSecuritySafebrowsingV4ListThreatListsResponse' smart constructor.
newtype GoogleSecuritySafebrowsingV4ListThreatListsResponse =
  GoogleSecuritySafebrowsingV4ListThreatListsResponse'
    { _gssvltlrThreatLists :: Maybe [GoogleSecuritySafebrowsingV4ThreatListDescriptor]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4ListThreatListsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvltlrThreatLists'
googleSecuritySafebrowsingV4ListThreatListsResponse
    :: GoogleSecuritySafebrowsingV4ListThreatListsResponse
googleSecuritySafebrowsingV4ListThreatListsResponse =
  GoogleSecuritySafebrowsingV4ListThreatListsResponse'
    {_gssvltlrThreatLists = Nothing}


-- | The lists available for download by the client.
gssvltlrThreatLists :: Lens' GoogleSecuritySafebrowsingV4ListThreatListsResponse [GoogleSecuritySafebrowsingV4ThreatListDescriptor]
gssvltlrThreatLists
  = lens _gssvltlrThreatLists
      (\ s a -> s{_gssvltlrThreatLists = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleSecuritySafebrowsingV4ListThreatListsResponse
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4ListThreatListsResponse"
              (\ o ->
                 GoogleSecuritySafebrowsingV4ListThreatListsResponse'
                   <$> (o .:? "threatLists" .!= mempty))

instance ToJSON
           GoogleSecuritySafebrowsingV4ListThreatListsResponse
         where
        toJSON
          GoogleSecuritySafebrowsingV4ListThreatListsResponse'{..}
          = object
              (catMaybes
                 [("threatLists" .=) <$> _gssvltlrThreatLists])

-- | The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes
-- or compressed removal indices.
--
-- /See:/ 'googleSecuritySafebrowsingV4RiceDeltaEncoding' smart constructor.
data GoogleSecuritySafebrowsingV4RiceDeltaEncoding =
  GoogleSecuritySafebrowsingV4RiceDeltaEncoding'
    { _gssvrdeFirstValue :: !(Maybe (Textual Int64))
    , _gssvrdeRiceParameter :: !(Maybe (Textual Int32))
    , _gssvrdeNumEntries :: !(Maybe (Textual Int32))
    , _gssvrdeEncodedData :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSecuritySafebrowsingV4RiceDeltaEncoding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssvrdeFirstValue'
--
-- * 'gssvrdeRiceParameter'
--
-- * 'gssvrdeNumEntries'
--
-- * 'gssvrdeEncodedData'
googleSecuritySafebrowsingV4RiceDeltaEncoding
    :: GoogleSecuritySafebrowsingV4RiceDeltaEncoding
googleSecuritySafebrowsingV4RiceDeltaEncoding =
  GoogleSecuritySafebrowsingV4RiceDeltaEncoding'
    { _gssvrdeFirstValue = Nothing
    , _gssvrdeRiceParameter = Nothing
    , _gssvrdeNumEntries = Nothing
    , _gssvrdeEncodedData = Nothing
    }


-- | The offset of the first entry in the encoded data, or, if only a single
-- integer was encoded, that single integer\'s value. If the field is empty
-- or missing, assume zero.
gssvrdeFirstValue :: Lens' GoogleSecuritySafebrowsingV4RiceDeltaEncoding (Maybe Int64)
gssvrdeFirstValue
  = lens _gssvrdeFirstValue
      (\ s a -> s{_gssvrdeFirstValue = a})
      . mapping _Coerce

-- | The Golomb-Rice parameter, which is a number between 2 and 28. This
-- field is missing (that is, zero) if \`num_entries\` is zero.
gssvrdeRiceParameter :: Lens' GoogleSecuritySafebrowsingV4RiceDeltaEncoding (Maybe Int32)
gssvrdeRiceParameter
  = lens _gssvrdeRiceParameter
      (\ s a -> s{_gssvrdeRiceParameter = a})
      . mapping _Coerce

-- | The number of entries that are delta encoded in the encoded data. If
-- only a single integer was encoded, this will be zero and the single
-- value will be stored in \`first_value\`.
gssvrdeNumEntries :: Lens' GoogleSecuritySafebrowsingV4RiceDeltaEncoding (Maybe Int32)
gssvrdeNumEntries
  = lens _gssvrdeNumEntries
      (\ s a -> s{_gssvrdeNumEntries = a})
      . mapping _Coerce

-- | The encoded deltas that are encoded using the Golomb-Rice coder.
gssvrdeEncodedData :: Lens' GoogleSecuritySafebrowsingV4RiceDeltaEncoding (Maybe ByteString)
gssvrdeEncodedData
  = lens _gssvrdeEncodedData
      (\ s a -> s{_gssvrdeEncodedData = a})
      . mapping _Bytes

instance FromJSON
           GoogleSecuritySafebrowsingV4RiceDeltaEncoding
         where
        parseJSON
          = withObject
              "GoogleSecuritySafebrowsingV4RiceDeltaEncoding"
              (\ o ->
                 GoogleSecuritySafebrowsingV4RiceDeltaEncoding' <$>
                   (o .:? "firstValue") <*> (o .:? "riceParameter") <*>
                     (o .:? "numEntries")
                     <*> (o .:? "encodedData"))

instance ToJSON
           GoogleSecuritySafebrowsingV4RiceDeltaEncoding
         where
        toJSON
          GoogleSecuritySafebrowsingV4RiceDeltaEncoding'{..}
          = object
              (catMaybes
                 [("firstValue" .=) <$> _gssvrdeFirstValue,
                  ("riceParameter" .=) <$> _gssvrdeRiceParameter,
                  ("numEntries" .=) <$> _gssvrdeNumEntries,
                  ("encodedData" .=) <$> _gssvrdeEncodedData])
