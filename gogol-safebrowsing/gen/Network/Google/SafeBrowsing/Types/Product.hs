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

import           Network.Google.Prelude
import           Network.Google.SafeBrowsing.Types.Sum

-- | The metadata associated with a specific threat entry. The client is
-- expected to know the metadata key\/value pairs associated with each
-- threat type.
--
-- /See:/ 'threatEntryMetadata' smart constructor.
newtype ThreatEntryMetadata = ThreatEntryMetadata'
    { _temEntries :: Maybe [MetadataEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThreatEntryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'temEntries'
threatEntryMetadata
    :: ThreatEntryMetadata
threatEntryMetadata =
    ThreatEntryMetadata'
    { _temEntries = Nothing
    }

-- | The metadata entries.
temEntries :: Lens' ThreatEntryMetadata [MetadataEntry]
temEntries
  = lens _temEntries (\ s a -> s{_temEntries = a}) .
      _Default
      . _Coerce

instance FromJSON ThreatEntryMetadata where
        parseJSON
          = withObject "ThreatEntryMetadata"
              (\ o ->
                 ThreatEntryMetadata' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ThreatEntryMetadata where
        toJSON ThreatEntryMetadata'{..}
          = object (catMaybes [("entries" .=) <$> _temEntries])

-- | The expected state of a client\'s local database.
--
-- /See:/ 'checksum' smart constructor.
newtype Checksum = Checksum'
    { _cSha256 :: Maybe Bytes
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Checksum' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cSha256'
checksum
    :: Checksum
checksum =
    Checksum'
    { _cSha256 = Nothing
    }

-- | The SHA256 hash of the client state; that is, of the sorted list of all
-- hashes present in the database.
cSha256 :: Lens' Checksum (Maybe ByteString)
cSha256
  = lens _cSha256 (\ s a -> s{_cSha256 = a}) .
      mapping _Bytes

instance FromJSON Checksum where
        parseJSON
          = withObject "Checksum"
              (\ o -> Checksum' <$> (o .:? "sha256"))

instance ToJSON Checksum where
        toJSON Checksum'{..}
          = object (catMaybes [("sha256" .=) <$> _cSha256])

--
-- /See:/ 'findThreatMatchesResponse' smart constructor.
newtype FindThreatMatchesResponse = FindThreatMatchesResponse'
    { _ftmrMatches :: Maybe [ThreatMatch]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FindThreatMatchesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftmrMatches'
findThreatMatchesResponse
    :: FindThreatMatchesResponse
findThreatMatchesResponse =
    FindThreatMatchesResponse'
    { _ftmrMatches = Nothing
    }

-- | The threat list matches.
ftmrMatches :: Lens' FindThreatMatchesResponse [ThreatMatch]
ftmrMatches
  = lens _ftmrMatches (\ s a -> s{_ftmrMatches = a}) .
      _Default
      . _Coerce

instance FromJSON FindThreatMatchesResponse where
        parseJSON
          = withObject "FindThreatMatchesResponse"
              (\ o ->
                 FindThreatMatchesResponse' <$>
                   (o .:? "matches" .!= mempty))

instance ToJSON FindThreatMatchesResponse where
        toJSON FindThreatMatchesResponse'{..}
          = object
              (catMaybes [("matches" .=) <$> _ftmrMatches])

-- | The information regarding one or more threats that a client submits when
-- checking for matches in threat lists.
--
-- /See:/ 'threatInfo' smart constructor.
data ThreatInfo = ThreatInfo'
    { _tiThreatEntries    :: !(Maybe [ThreatEntry])
    , _tiThreatTypes      :: !(Maybe [Text])
    , _tiPlatformTypes    :: !(Maybe [Text])
    , _tiThreatEntryTypes :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThreatInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiThreatEntries'
--
-- * 'tiThreatTypes'
--
-- * 'tiPlatformTypes'
--
-- * 'tiThreatEntryTypes'
threatInfo
    :: ThreatInfo
threatInfo =
    ThreatInfo'
    { _tiThreatEntries = Nothing
    , _tiThreatTypes = Nothing
    , _tiPlatformTypes = Nothing
    , _tiThreatEntryTypes = Nothing
    }

-- | The threat entries to be checked.
tiThreatEntries :: Lens' ThreatInfo [ThreatEntry]
tiThreatEntries
  = lens _tiThreatEntries
      (\ s a -> s{_tiThreatEntries = a})
      . _Default
      . _Coerce

-- | The threat types to be checked.
tiThreatTypes :: Lens' ThreatInfo [Text]
tiThreatTypes
  = lens _tiThreatTypes
      (\ s a -> s{_tiThreatTypes = a})
      . _Default
      . _Coerce

-- | The platform types to be checked.
tiPlatformTypes :: Lens' ThreatInfo [Text]
tiPlatformTypes
  = lens _tiPlatformTypes
      (\ s a -> s{_tiPlatformTypes = a})
      . _Default
      . _Coerce

-- | The entry types to be checked.
tiThreatEntryTypes :: Lens' ThreatInfo [Text]
tiThreatEntryTypes
  = lens _tiThreatEntryTypes
      (\ s a -> s{_tiThreatEntryTypes = a})
      . _Default
      . _Coerce

instance FromJSON ThreatInfo where
        parseJSON
          = withObject "ThreatInfo"
              (\ o ->
                 ThreatInfo' <$>
                   (o .:? "threatEntries" .!= mempty) <*>
                     (o .:? "threatTypes" .!= mempty)
                     <*> (o .:? "platformTypes" .!= mempty)
                     <*> (o .:? "threatEntryTypes" .!= mempty))

instance ToJSON ThreatInfo where
        toJSON ThreatInfo'{..}
          = object
              (catMaybes
                 [("threatEntries" .=) <$> _tiThreatEntries,
                  ("threatTypes" .=) <$> _tiThreatTypes,
                  ("platformTypes" .=) <$> _tiPlatformTypes,
                  ("threatEntryTypes" .=) <$> _tiThreatEntryTypes])

-- | Describes a Safe Browsing API update request. Clients can request
-- updates for multiple lists in a single request. NOTE: Field index 2 is
-- unused. NEXT: 4
--
-- /See:/ 'fetchThreatListUpdatesRequest' smart constructor.
data FetchThreatListUpdatesRequest = FetchThreatListUpdatesRequest'
    { _ftlurListUpdateRequests :: !(Maybe [ListUpdateRequest])
    , _ftlurClient             :: !(Maybe ClientInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FetchThreatListUpdatesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftlurListUpdateRequests'
--
-- * 'ftlurClient'
fetchThreatListUpdatesRequest
    :: FetchThreatListUpdatesRequest
fetchThreatListUpdatesRequest =
    FetchThreatListUpdatesRequest'
    { _ftlurListUpdateRequests = Nothing
    , _ftlurClient = Nothing
    }

-- | The requested threat list updates.
ftlurListUpdateRequests :: Lens' FetchThreatListUpdatesRequest [ListUpdateRequest]
ftlurListUpdateRequests
  = lens _ftlurListUpdateRequests
      (\ s a -> s{_ftlurListUpdateRequests = a})
      . _Default
      . _Coerce

-- | The client metadata.
ftlurClient :: Lens' FetchThreatListUpdatesRequest (Maybe ClientInfo)
ftlurClient
  = lens _ftlurClient (\ s a -> s{_ftlurClient = a})

instance FromJSON FetchThreatListUpdatesRequest where
        parseJSON
          = withObject "FetchThreatListUpdatesRequest"
              (\ o ->
                 FetchThreatListUpdatesRequest' <$>
                   (o .:? "listUpdateRequests" .!= mempty) <*>
                     (o .:? "client"))

instance ToJSON FetchThreatListUpdatesRequest where
        toJSON FetchThreatListUpdatesRequest'{..}
          = object
              (catMaybes
                 [("listUpdateRequests" .=) <$>
                    _ftlurListUpdateRequests,
                  ("client" .=) <$> _ftlurClient])

-- | Request to return full hashes matched by the provided hash prefixes.
--
-- /See:/ 'findFullHashesRequest' smart constructor.
data FindFullHashesRequest = FindFullHashesRequest'
    { _ffhrThreatInfo   :: !(Maybe ThreatInfo)
    , _ffhrClientStates :: !(Maybe [Bytes])
    , _ffhrClient       :: !(Maybe ClientInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FindFullHashesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffhrThreatInfo'
--
-- * 'ffhrClientStates'
--
-- * 'ffhrClient'
findFullHashesRequest
    :: FindFullHashesRequest
findFullHashesRequest =
    FindFullHashesRequest'
    { _ffhrThreatInfo = Nothing
    , _ffhrClientStates = Nothing
    , _ffhrClient = Nothing
    }

-- | The lists and hashes to be checked.
ffhrThreatInfo :: Lens' FindFullHashesRequest (Maybe ThreatInfo)
ffhrThreatInfo
  = lens _ffhrThreatInfo
      (\ s a -> s{_ffhrThreatInfo = a})

-- | The current client states for each of the client\'s local threat lists.
ffhrClientStates :: Lens' FindFullHashesRequest [ByteString]
ffhrClientStates
  = lens _ffhrClientStates
      (\ s a -> s{_ffhrClientStates = a})
      . _Default
      . _Coerce

-- | The client metadata.
ffhrClient :: Lens' FindFullHashesRequest (Maybe ClientInfo)
ffhrClient
  = lens _ffhrClient (\ s a -> s{_ffhrClient = a})

instance FromJSON FindFullHashesRequest where
        parseJSON
          = withObject "FindFullHashesRequest"
              (\ o ->
                 FindFullHashesRequest' <$>
                   (o .:? "threatInfo") <*>
                     (o .:? "clientStates" .!= mempty)
                     <*> (o .:? "client"))

instance ToJSON FindFullHashesRequest where
        toJSON FindFullHashesRequest'{..}
          = object
              (catMaybes
                 [("threatInfo" .=) <$> _ffhrThreatInfo,
                  ("clientStates" .=) <$> _ffhrClientStates,
                  ("client" .=) <$> _ffhrClient])

-- | The constraints for this update.
--
-- /See:/ 'constraints' smart constructor.
data Constraints = Constraints'
    { _cMaxUpdateEntries      :: !(Maybe (Textual Int32))
    , _cRegion                :: !(Maybe Text)
    , _cSupportedCompressions :: !(Maybe [Text])
    , _cMaxDatabaseEntries    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Constraints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cMaxUpdateEntries'
--
-- * 'cRegion'
--
-- * 'cSupportedCompressions'
--
-- * 'cMaxDatabaseEntries'
constraints
    :: Constraints
constraints =
    Constraints'
    { _cMaxUpdateEntries = Nothing
    , _cRegion = Nothing
    , _cSupportedCompressions = Nothing
    , _cMaxDatabaseEntries = Nothing
    }

-- | The maximum size in number of entries. The update will not contain more
-- entries than this value. This should be a power of 2 between 2**10 and
-- 2**20. If zero, no update size limit is set.
cMaxUpdateEntries :: Lens' Constraints (Maybe Int32)
cMaxUpdateEntries
  = lens _cMaxUpdateEntries
      (\ s a -> s{_cMaxUpdateEntries = a})
      . mapping _Coerce

-- | Requests the list for a specific geographic location. If not set the
-- server may pick that value based on the user\'s IP address. Expects ISO
-- 3166-1 alpha-2 format.
cRegion :: Lens' Constraints (Maybe Text)
cRegion = lens _cRegion (\ s a -> s{_cRegion = a})

-- | The compression types supported by the client.
cSupportedCompressions :: Lens' Constraints [Text]
cSupportedCompressions
  = lens _cSupportedCompressions
      (\ s a -> s{_cSupportedCompressions = a})
      . _Default
      . _Coerce

-- | Sets the maximum number of entries that the client is willing to have in
-- the local database. This should be a power of 2 between 2**10 and 2**20.
-- If zero, no database size limit is set.
cMaxDatabaseEntries :: Lens' Constraints (Maybe Int32)
cMaxDatabaseEntries
  = lens _cMaxDatabaseEntries
      (\ s a -> s{_cMaxDatabaseEntries = a})
      . mapping _Coerce

instance FromJSON Constraints where
        parseJSON
          = withObject "Constraints"
              (\ o ->
                 Constraints' <$>
                   (o .:? "maxUpdateEntries") <*> (o .:? "region") <*>
                     (o .:? "supportedCompressions" .!= mempty)
                     <*> (o .:? "maxDatabaseEntries"))

instance ToJSON Constraints where
        toJSON Constraints'{..}
          = object
              (catMaybes
                 [("maxUpdateEntries" .=) <$> _cMaxUpdateEntries,
                  ("region" .=) <$> _cRegion,
                  ("supportedCompressions" .=) <$>
                    _cSupportedCompressions,
                  ("maxDatabaseEntries" .=) <$> _cMaxDatabaseEntries])

-- | The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes
-- or compressed removal indices.
--
-- /See:/ 'riceDeltaEncoding' smart constructor.
data RiceDeltaEncoding = RiceDeltaEncoding'
    { _rdeFirstValue    :: !(Maybe (Textual Int64))
    , _rdeRiceParameter :: !(Maybe (Textual Int32))
    , _rdeNumEntries    :: !(Maybe (Textual Int32))
    , _rdeEncodedData   :: !(Maybe Bytes)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RiceDeltaEncoding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdeFirstValue'
--
-- * 'rdeRiceParameter'
--
-- * 'rdeNumEntries'
--
-- * 'rdeEncodedData'
riceDeltaEncoding
    :: RiceDeltaEncoding
riceDeltaEncoding =
    RiceDeltaEncoding'
    { _rdeFirstValue = Nothing
    , _rdeRiceParameter = Nothing
    , _rdeNumEntries = Nothing
    , _rdeEncodedData = Nothing
    }

-- | The offset of the first entry in the encoded data, or, if only a single
-- integer was encoded, that single integer\'s value.
rdeFirstValue :: Lens' RiceDeltaEncoding (Maybe Int64)
rdeFirstValue
  = lens _rdeFirstValue
      (\ s a -> s{_rdeFirstValue = a})
      . mapping _Coerce

-- | The Golomb-Rice parameter, which is a number between 2 and 28. This
-- field is missing (that is, zero) if \`num_entries\` is zero.
rdeRiceParameter :: Lens' RiceDeltaEncoding (Maybe Int32)
rdeRiceParameter
  = lens _rdeRiceParameter
      (\ s a -> s{_rdeRiceParameter = a})
      . mapping _Coerce

-- | The number of entries that are delta encoded in the encoded data. If
-- only a single integer was encoded, this will be zero and the single
-- value will be stored in \`first_value\`.
rdeNumEntries :: Lens' RiceDeltaEncoding (Maybe Int32)
rdeNumEntries
  = lens _rdeNumEntries
      (\ s a -> s{_rdeNumEntries = a})
      . mapping _Coerce

-- | The encoded deltas that are encoded using the Golomb-Rice coder.
rdeEncodedData :: Lens' RiceDeltaEncoding (Maybe ByteString)
rdeEncodedData
  = lens _rdeEncodedData
      (\ s a -> s{_rdeEncodedData = a})
      . mapping _Bytes

instance FromJSON RiceDeltaEncoding where
        parseJSON
          = withObject "RiceDeltaEncoding"
              (\ o ->
                 RiceDeltaEncoding' <$>
                   (o .:? "firstValue") <*> (o .:? "riceParameter") <*>
                     (o .:? "numEntries")
                     <*> (o .:? "encodedData"))

instance ToJSON RiceDeltaEncoding where
        toJSON RiceDeltaEncoding'{..}
          = object
              (catMaybes
                 [("firstValue" .=) <$> _rdeFirstValue,
                  ("riceParameter" .=) <$> _rdeRiceParameter,
                  ("numEntries" .=) <$> _rdeNumEntries,
                  ("encodedData" .=) <$> _rdeEncodedData])

--
-- /See:/ 'listThreatListsResponse' smart constructor.
newtype ListThreatListsResponse = ListThreatListsResponse'
    { _ltlrThreatLists :: Maybe [ThreatListDescriptor]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListThreatListsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltlrThreatLists'
listThreatListsResponse
    :: ListThreatListsResponse
listThreatListsResponse =
    ListThreatListsResponse'
    { _ltlrThreatLists = Nothing
    }

-- | The lists available for download by the client.
ltlrThreatLists :: Lens' ListThreatListsResponse [ThreatListDescriptor]
ltlrThreatLists
  = lens _ltlrThreatLists
      (\ s a -> s{_ltlrThreatLists = a})
      . _Default
      . _Coerce

instance FromJSON ListThreatListsResponse where
        parseJSON
          = withObject "ListThreatListsResponse"
              (\ o ->
                 ListThreatListsResponse' <$>
                   (o .:? "threatLists" .!= mempty))

instance ToJSON ListThreatListsResponse where
        toJSON ListThreatListsResponse'{..}
          = object
              (catMaybes [("threatLists" .=) <$> _ltlrThreatLists])

-- | Describes an individual threat list. A list is defined by three
-- parameters: the type of threat posed, the type of platform targeted by
-- the threat, and the type of entries in the list.
--
-- /See:/ 'threatListDescriptor' smart constructor.
data ThreatListDescriptor = ThreatListDescriptor'
    { _tldThreatEntryType :: !(Maybe Text)
    , _tldThreatType      :: !(Maybe Text)
    , _tldPlatformType    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThreatListDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tldThreatEntryType'
--
-- * 'tldThreatType'
--
-- * 'tldPlatformType'
threatListDescriptor
    :: ThreatListDescriptor
threatListDescriptor =
    ThreatListDescriptor'
    { _tldThreatEntryType = Nothing
    , _tldThreatType = Nothing
    , _tldPlatformType = Nothing
    }

-- | The entry types contained in the list.
tldThreatEntryType :: Lens' ThreatListDescriptor (Maybe Text)
tldThreatEntryType
  = lens _tldThreatEntryType
      (\ s a -> s{_tldThreatEntryType = a})

-- | The threat type posed by the list\'s entries.
tldThreatType :: Lens' ThreatListDescriptor (Maybe Text)
tldThreatType
  = lens _tldThreatType
      (\ s a -> s{_tldThreatType = a})

-- | The platform type targeted by the list\'s entries.
tldPlatformType :: Lens' ThreatListDescriptor (Maybe Text)
tldPlatformType
  = lens _tldPlatformType
      (\ s a -> s{_tldPlatformType = a})

instance FromJSON ThreatListDescriptor where
        parseJSON
          = withObject "ThreatListDescriptor"
              (\ o ->
                 ThreatListDescriptor' <$>
                   (o .:? "threatEntryType") <*> (o .:? "threatType")
                     <*> (o .:? "platformType"))

instance ToJSON ThreatListDescriptor where
        toJSON ThreatListDescriptor'{..}
          = object
              (catMaybes
                 [("threatEntryType" .=) <$> _tldThreatEntryType,
                  ("threatType" .=) <$> _tldThreatType,
                  ("platformType" .=) <$> _tldPlatformType])

-- | The client metadata associated with Safe Browsing API requests.
--
-- /See:/ 'clientInfo' smart constructor.
data ClientInfo = ClientInfo'
    { _ciClientId      :: !(Maybe Text)
    , _ciClientVersion :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciClientId'
--
-- * 'ciClientVersion'
clientInfo
    :: ClientInfo
clientInfo =
    ClientInfo'
    { _ciClientId = Nothing
    , _ciClientVersion = Nothing
    }

-- | A client ID that (hopefully) uniquely identifies the client
-- implementation of the Safe Browsing API.
ciClientId :: Lens' ClientInfo (Maybe Text)
ciClientId
  = lens _ciClientId (\ s a -> s{_ciClientId = a})

-- | The version of the client implementation.
ciClientVersion :: Lens' ClientInfo (Maybe Text)
ciClientVersion
  = lens _ciClientVersion
      (\ s a -> s{_ciClientVersion = a})

instance FromJSON ClientInfo where
        parseJSON
          = withObject "ClientInfo"
              (\ o ->
                 ClientInfo' <$>
                   (o .:? "clientId") <*> (o .:? "clientVersion"))

instance ToJSON ClientInfo where
        toJSON ClientInfo'{..}
          = object
              (catMaybes
                 [("clientId" .=) <$> _ciClientId,
                  ("clientVersion" .=) <$> _ciClientVersion])

-- | Request to check entries against lists.
--
-- /See:/ 'findThreatMatchesRequest' smart constructor.
data FindThreatMatchesRequest = FindThreatMatchesRequest'
    { _ftmrThreatInfo :: !(Maybe ThreatInfo)
    , _ftmrClient     :: !(Maybe ClientInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FindThreatMatchesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftmrThreatInfo'
--
-- * 'ftmrClient'
findThreatMatchesRequest
    :: FindThreatMatchesRequest
findThreatMatchesRequest =
    FindThreatMatchesRequest'
    { _ftmrThreatInfo = Nothing
    , _ftmrClient = Nothing
    }

-- | The lists and entries to be checked for matches.
ftmrThreatInfo :: Lens' FindThreatMatchesRequest (Maybe ThreatInfo)
ftmrThreatInfo
  = lens _ftmrThreatInfo
      (\ s a -> s{_ftmrThreatInfo = a})

-- | The client metadata.
ftmrClient :: Lens' FindThreatMatchesRequest (Maybe ClientInfo)
ftmrClient
  = lens _ftmrClient (\ s a -> s{_ftmrClient = a})

instance FromJSON FindThreatMatchesRequest where
        parseJSON
          = withObject "FindThreatMatchesRequest"
              (\ o ->
                 FindThreatMatchesRequest' <$>
                   (o .:? "threatInfo") <*> (o .:? "client"))

instance ToJSON FindThreatMatchesRequest where
        toJSON FindThreatMatchesRequest'{..}
          = object
              (catMaybes
                 [("threatInfo" .=) <$> _ftmrThreatInfo,
                  ("client" .=) <$> _ftmrClient])

-- | A single list update request.
--
-- /See:/ 'listUpdateRequest' smart constructor.
data ListUpdateRequest = ListUpdateRequest'
    { _lurState           :: !(Maybe Bytes)
    , _lurThreatEntryType :: !(Maybe Text)
    , _lurConstraints     :: !(Maybe Constraints)
    , _lurThreatType      :: !(Maybe Text)
    , _lurPlatformType    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListUpdateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lurState'
--
-- * 'lurThreatEntryType'
--
-- * 'lurConstraints'
--
-- * 'lurThreatType'
--
-- * 'lurPlatformType'
listUpdateRequest
    :: ListUpdateRequest
listUpdateRequest =
    ListUpdateRequest'
    { _lurState = Nothing
    , _lurThreatEntryType = Nothing
    , _lurConstraints = Nothing
    , _lurThreatType = Nothing
    , _lurPlatformType = Nothing
    }

-- | The current state of the client for the requested list (the encrypted
-- client state that was received from the last successful list update).
lurState :: Lens' ListUpdateRequest (Maybe ByteString)
lurState
  = lens _lurState (\ s a -> s{_lurState = a}) .
      mapping _Bytes

-- | The types of entries present in the list.
lurThreatEntryType :: Lens' ListUpdateRequest (Maybe Text)
lurThreatEntryType
  = lens _lurThreatEntryType
      (\ s a -> s{_lurThreatEntryType = a})

-- | The constraints associated with this request.
lurConstraints :: Lens' ListUpdateRequest (Maybe Constraints)
lurConstraints
  = lens _lurConstraints
      (\ s a -> s{_lurConstraints = a})

-- | The type of threat posed by entries present in the list.
lurThreatType :: Lens' ListUpdateRequest (Maybe Text)
lurThreatType
  = lens _lurThreatType
      (\ s a -> s{_lurThreatType = a})

-- | The type of platform at risk by entries present in the list.
lurPlatformType :: Lens' ListUpdateRequest (Maybe Text)
lurPlatformType
  = lens _lurPlatformType
      (\ s a -> s{_lurPlatformType = a})

instance FromJSON ListUpdateRequest where
        parseJSON
          = withObject "ListUpdateRequest"
              (\ o ->
                 ListUpdateRequest' <$>
                   (o .:? "state") <*> (o .:? "threatEntryType") <*>
                     (o .:? "constraints")
                     <*> (o .:? "threatType")
                     <*> (o .:? "platformType"))

instance ToJSON ListUpdateRequest where
        toJSON ListUpdateRequest'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _lurState,
                  ("threatEntryType" .=) <$> _lurThreatEntryType,
                  ("constraints" .=) <$> _lurConstraints,
                  ("threatType" .=) <$> _lurThreatType,
                  ("platformType" .=) <$> _lurPlatformType])

-- | An individual threat; for example, a malicious URL or its hash
-- representation. Only one of these fields should be set.
--
-- /See:/ 'threatEntry' smart constructor.
data ThreatEntry = ThreatEntry'
    { _teHash   :: !(Maybe Bytes)
    , _teURL    :: !(Maybe Text)
    , _teDigest :: !(Maybe Bytes)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThreatEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teHash'
--
-- * 'teURL'
--
-- * 'teDigest'
threatEntry
    :: ThreatEntry
threatEntry =
    ThreatEntry'
    { _teHash = Nothing
    , _teURL = Nothing
    , _teDigest = Nothing
    }

-- | A hash prefix, consisting of the most significant 4-32 bytes of a SHA256
-- hash. This field is in binary format.
teHash :: Lens' ThreatEntry (Maybe ByteString)
teHash
  = lens _teHash (\ s a -> s{_teHash = a}) .
      mapping _Bytes

-- | A URL.
teURL :: Lens' ThreatEntry (Maybe Text)
teURL = lens _teURL (\ s a -> s{_teURL = a})

-- | The digest of an executable in SHA256 format. The API supports both
-- binary and hex digests.
teDigest :: Lens' ThreatEntry (Maybe ByteString)
teDigest
  = lens _teDigest (\ s a -> s{_teDigest = a}) .
      mapping _Bytes

instance FromJSON ThreatEntry where
        parseJSON
          = withObject "ThreatEntry"
              (\ o ->
                 ThreatEntry' <$>
                   (o .:? "hash") <*> (o .:? "url") <*>
                     (o .:? "digest"))

instance ToJSON ThreatEntry where
        toJSON ThreatEntry'{..}
          = object
              (catMaybes
                 [("hash" .=) <$> _teHash, ("url" .=) <$> _teURL,
                  ("digest" .=) <$> _teDigest])

-- | A match when checking a threat entry in the Safe Browsing threat lists.
--
-- /See:/ 'threatMatch' smart constructor.
data ThreatMatch = ThreatMatch'
    { _tmThreatEntryMetadata :: !(Maybe ThreatEntryMetadata)
    , _tmThreatEntryType     :: !(Maybe Text)
    , _tmThreatType          :: !(Maybe Text)
    , _tmPlatformType        :: !(Maybe Text)
    , _tmCacheDuration       :: !(Maybe Text)
    , _tmThreat              :: !(Maybe ThreatEntry)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThreatMatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmThreatEntryMetadata'
--
-- * 'tmThreatEntryType'
--
-- * 'tmThreatType'
--
-- * 'tmPlatformType'
--
-- * 'tmCacheDuration'
--
-- * 'tmThreat'
threatMatch
    :: ThreatMatch
threatMatch =
    ThreatMatch'
    { _tmThreatEntryMetadata = Nothing
    , _tmThreatEntryType = Nothing
    , _tmThreatType = Nothing
    , _tmPlatformType = Nothing
    , _tmCacheDuration = Nothing
    , _tmThreat = Nothing
    }

-- | Optional metadata associated with this threat.
tmThreatEntryMetadata :: Lens' ThreatMatch (Maybe ThreatEntryMetadata)
tmThreatEntryMetadata
  = lens _tmThreatEntryMetadata
      (\ s a -> s{_tmThreatEntryMetadata = a})

-- | The threat entry type matching this threat.
tmThreatEntryType :: Lens' ThreatMatch (Maybe Text)
tmThreatEntryType
  = lens _tmThreatEntryType
      (\ s a -> s{_tmThreatEntryType = a})

-- | The threat type matching this threat.
tmThreatType :: Lens' ThreatMatch (Maybe Text)
tmThreatType
  = lens _tmThreatType (\ s a -> s{_tmThreatType = a})

-- | The platform type matching this threat.
tmPlatformType :: Lens' ThreatMatch (Maybe Text)
tmPlatformType
  = lens _tmPlatformType
      (\ s a -> s{_tmPlatformType = a})

-- | The cache lifetime for the returned match. Clients must not cache this
-- response for more than this duration to avoid false positives.
tmCacheDuration :: Lens' ThreatMatch (Maybe Text)
tmCacheDuration
  = lens _tmCacheDuration
      (\ s a -> s{_tmCacheDuration = a})

-- | The threat matching this threat.
tmThreat :: Lens' ThreatMatch (Maybe ThreatEntry)
tmThreat = lens _tmThreat (\ s a -> s{_tmThreat = a})

instance FromJSON ThreatMatch where
        parseJSON
          = withObject "ThreatMatch"
              (\ o ->
                 ThreatMatch' <$>
                   (o .:? "threatEntryMetadata") <*>
                     (o .:? "threatEntryType")
                     <*> (o .:? "threatType")
                     <*> (o .:? "platformType")
                     <*> (o .:? "cacheDuration")
                     <*> (o .:? "threat"))

instance ToJSON ThreatMatch where
        toJSON ThreatMatch'{..}
          = object
              (catMaybes
                 [("threatEntryMetadata" .=) <$>
                    _tmThreatEntryMetadata,
                  ("threatEntryType" .=) <$> _tmThreatEntryType,
                  ("threatType" .=) <$> _tmThreatType,
                  ("platformType" .=) <$> _tmPlatformType,
                  ("cacheDuration" .=) <$> _tmCacheDuration,
                  ("threat" .=) <$> _tmThreat])

-- | The uncompressed threat entries in hash format of a particular prefix
-- length. Hashes can be anywhere from 4 to 32 bytes in size. A large
-- majority are 4 bytes, but some hashes are lengthened if they collide
-- with the hash of a popular URL. Used for sending ThreatEntrySet to
-- clients that do not support compression, or when sending non-4-byte
-- hashes to clients that do support compression.
--
-- /See:/ 'rawHashes' smart constructor.
data RawHashes = RawHashes'
    { _rhPrefixSize :: !(Maybe (Textual Int32))
    , _rhRawHashes  :: !(Maybe Bytes)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RawHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhPrefixSize'
--
-- * 'rhRawHashes'
rawHashes
    :: RawHashes
rawHashes =
    RawHashes'
    { _rhPrefixSize = Nothing
    , _rhRawHashes = Nothing
    }

-- | The number of bytes for each prefix encoded below. This field can be
-- anywhere from 4 (shortest prefix) to 32 (full SHA256 hash).
rhPrefixSize :: Lens' RawHashes (Maybe Int32)
rhPrefixSize
  = lens _rhPrefixSize (\ s a -> s{_rhPrefixSize = a})
      . mapping _Coerce

-- | The hashes, all concatenated into one long string. Each hash has a
-- prefix size of |prefix_size| above. Hashes are sorted in lexicographic
-- order.
rhRawHashes :: Lens' RawHashes (Maybe ByteString)
rhRawHashes
  = lens _rhRawHashes (\ s a -> s{_rhRawHashes = a}) .
      mapping _Bytes

instance FromJSON RawHashes where
        parseJSON
          = withObject "RawHashes"
              (\ o ->
                 RawHashes' <$>
                   (o .:? "prefixSize") <*> (o .:? "rawHashes"))

instance ToJSON RawHashes where
        toJSON RawHashes'{..}
          = object
              (catMaybes
                 [("prefixSize" .=) <$> _rhPrefixSize,
                  ("rawHashes" .=) <$> _rhRawHashes])

-- | An update to an individual list.
--
-- /See:/ 'listUpdateResponse' smart constructor.
data ListUpdateResponse = ListUpdateResponse'
    { _lAdditions       :: !(Maybe [ThreatEntrySet])
    , _lThreatEntryType :: !(Maybe Text)
    , _lChecksum        :: !(Maybe Checksum)
    , _lThreatType      :: !(Maybe Text)
    , _lPlatformType    :: !(Maybe Text)
    , _lNewClientState  :: !(Maybe Bytes)
    , _lRemovals        :: !(Maybe [ThreatEntrySet])
    , _lResponseType    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lAdditions'
--
-- * 'lThreatEntryType'
--
-- * 'lChecksum'
--
-- * 'lThreatType'
--
-- * 'lPlatformType'
--
-- * 'lNewClientState'
--
-- * 'lRemovals'
--
-- * 'lResponseType'
listUpdateResponse
    :: ListUpdateResponse
listUpdateResponse =
    ListUpdateResponse'
    { _lAdditions = Nothing
    , _lThreatEntryType = Nothing
    , _lChecksum = Nothing
    , _lThreatType = Nothing
    , _lPlatformType = Nothing
    , _lNewClientState = Nothing
    , _lRemovals = Nothing
    , _lResponseType = Nothing
    }

-- | A set of entries to add to a local threat type\'s list. Repeated to
-- allow for a combination of compressed and raw data to be sent in a
-- single response.
lAdditions :: Lens' ListUpdateResponse [ThreatEntrySet]
lAdditions
  = lens _lAdditions (\ s a -> s{_lAdditions = a}) .
      _Default
      . _Coerce

-- | The format of the threats.
lThreatEntryType :: Lens' ListUpdateResponse (Maybe Text)
lThreatEntryType
  = lens _lThreatEntryType
      (\ s a -> s{_lThreatEntryType = a})

-- | The expected SHA256 hash of the client state; that is, of the sorted
-- list of all hashes present in the database after applying the provided
-- update. If the client state doesn\'t match the expected state, the
-- client must disregard this update and retry later.
lChecksum :: Lens' ListUpdateResponse (Maybe Checksum)
lChecksum
  = lens _lChecksum (\ s a -> s{_lChecksum = a})

-- | The threat type for which data is returned.
lThreatType :: Lens' ListUpdateResponse (Maybe Text)
lThreatType
  = lens _lThreatType (\ s a -> s{_lThreatType = a})

-- | The platform type for which data is returned.
lPlatformType :: Lens' ListUpdateResponse (Maybe Text)
lPlatformType
  = lens _lPlatformType
      (\ s a -> s{_lPlatformType = a})

-- | The new client state, in encrypted format. Opaque to clients.
lNewClientState :: Lens' ListUpdateResponse (Maybe ByteString)
lNewClientState
  = lens _lNewClientState
      (\ s a -> s{_lNewClientState = a})
      . mapping _Bytes

-- | A set of entries to remove from a local threat type\'s list. Repeated
-- for the same reason as above.
lRemovals :: Lens' ListUpdateResponse [ThreatEntrySet]
lRemovals
  = lens _lRemovals (\ s a -> s{_lRemovals = a}) .
      _Default
      . _Coerce

-- | The type of response. This may indicate that an action is required by
-- the client when the response is received.
lResponseType :: Lens' ListUpdateResponse (Maybe Text)
lResponseType
  = lens _lResponseType
      (\ s a -> s{_lResponseType = a})

instance FromJSON ListUpdateResponse where
        parseJSON
          = withObject "ListUpdateResponse"
              (\ o ->
                 ListUpdateResponse' <$>
                   (o .:? "additions" .!= mempty) <*>
                     (o .:? "threatEntryType")
                     <*> (o .:? "checksum")
                     <*> (o .:? "threatType")
                     <*> (o .:? "platformType")
                     <*> (o .:? "newClientState")
                     <*> (o .:? "removals" .!= mempty)
                     <*> (o .:? "responseType"))

instance ToJSON ListUpdateResponse where
        toJSON ListUpdateResponse'{..}
          = object
              (catMaybes
                 [("additions" .=) <$> _lAdditions,
                  ("threatEntryType" .=) <$> _lThreatEntryType,
                  ("checksum" .=) <$> _lChecksum,
                  ("threatType" .=) <$> _lThreatType,
                  ("platformType" .=) <$> _lPlatformType,
                  ("newClientState" .=) <$> _lNewClientState,
                  ("removals" .=) <$> _lRemovals,
                  ("responseType" .=) <$> _lResponseType])

-- | A set of threats that should be added or removed from a client\'s local
-- database.
--
-- /See:/ 'threatEntrySet' smart constructor.
data ThreatEntrySet = ThreatEntrySet'
    { _tesRiceHashes      :: !(Maybe RiceDeltaEncoding)
    , _tesRiceIndices     :: !(Maybe RiceDeltaEncoding)
    , _tesRawHashes       :: !(Maybe RawHashes)
    , _tesRawIndices      :: !(Maybe RawIndices)
    , _tesCompressionType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThreatEntrySet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tesRiceHashes'
--
-- * 'tesRiceIndices'
--
-- * 'tesRawHashes'
--
-- * 'tesRawIndices'
--
-- * 'tesCompressionType'
threatEntrySet
    :: ThreatEntrySet
threatEntrySet =
    ThreatEntrySet'
    { _tesRiceHashes = Nothing
    , _tesRiceIndices = Nothing
    , _tesRawHashes = Nothing
    , _tesRawIndices = Nothing
    , _tesCompressionType = Nothing
    }

-- | The encoded 4-byte prefixes of SHA256-formatted entries, using a
-- Golomb-Rice encoding.
tesRiceHashes :: Lens' ThreatEntrySet (Maybe RiceDeltaEncoding)
tesRiceHashes
  = lens _tesRiceHashes
      (\ s a -> s{_tesRiceHashes = a})

-- | The encoded local, lexicographically-sorted list indices, using a
-- Golomb-Rice encoding. Used for sending compressed removal indices.
tesRiceIndices :: Lens' ThreatEntrySet (Maybe RiceDeltaEncoding)
tesRiceIndices
  = lens _tesRiceIndices
      (\ s a -> s{_tesRiceIndices = a})

-- | The raw SHA256-formatted entries.
tesRawHashes :: Lens' ThreatEntrySet (Maybe RawHashes)
tesRawHashes
  = lens _tesRawHashes (\ s a -> s{_tesRawHashes = a})

-- | The raw removal indices for a local list.
tesRawIndices :: Lens' ThreatEntrySet (Maybe RawIndices)
tesRawIndices
  = lens _tesRawIndices
      (\ s a -> s{_tesRawIndices = a})

-- | The compression type for the entries in this set.
tesCompressionType :: Lens' ThreatEntrySet (Maybe Text)
tesCompressionType
  = lens _tesCompressionType
      (\ s a -> s{_tesCompressionType = a})

instance FromJSON ThreatEntrySet where
        parseJSON
          = withObject "ThreatEntrySet"
              (\ o ->
                 ThreatEntrySet' <$>
                   (o .:? "riceHashes") <*> (o .:? "riceIndices") <*>
                     (o .:? "rawHashes")
                     <*> (o .:? "rawIndices")
                     <*> (o .:? "compressionType"))

instance ToJSON ThreatEntrySet where
        toJSON ThreatEntrySet'{..}
          = object
              (catMaybes
                 [("riceHashes" .=) <$> _tesRiceHashes,
                  ("riceIndices" .=) <$> _tesRiceIndices,
                  ("rawHashes" .=) <$> _tesRawHashes,
                  ("rawIndices" .=) <$> _tesRawIndices,
                  ("compressionType" .=) <$> _tesCompressionType])

-- | A set of raw indices to remove from a local list.
--
-- /See:/ 'rawIndices' smart constructor.
newtype RawIndices = RawIndices'
    { _riIndices :: Maybe [Textual Int32]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RawIndices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riIndices'
rawIndices
    :: RawIndices
rawIndices =
    RawIndices'
    { _riIndices = Nothing
    }

-- | The indices to remove from a lexicographically-sorted local list.
riIndices :: Lens' RawIndices [Int32]
riIndices
  = lens _riIndices (\ s a -> s{_riIndices = a}) .
      _Default
      . _Coerce

instance FromJSON RawIndices where
        parseJSON
          = withObject "RawIndices"
              (\ o -> RawIndices' <$> (o .:? "indices" .!= mempty))

instance ToJSON RawIndices where
        toJSON RawIndices'{..}
          = object (catMaybes [("indices" .=) <$> _riIndices])

--
-- /See:/ 'findFullHashesResponse' smart constructor.
data FindFullHashesResponse = FindFullHashesResponse'
    { _ffhrMatches               :: !(Maybe [ThreatMatch])
    , _ffhrNegativeCacheDuration :: !(Maybe Text)
    , _ffhrMinimumWaitDuration   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FindFullHashesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffhrMatches'
--
-- * 'ffhrNegativeCacheDuration'
--
-- * 'ffhrMinimumWaitDuration'
findFullHashesResponse
    :: FindFullHashesResponse
findFullHashesResponse =
    FindFullHashesResponse'
    { _ffhrMatches = Nothing
    , _ffhrNegativeCacheDuration = Nothing
    , _ffhrMinimumWaitDuration = Nothing
    }

-- | The full hashes that matched the requested prefixes.
ffhrMatches :: Lens' FindFullHashesResponse [ThreatMatch]
ffhrMatches
  = lens _ffhrMatches (\ s a -> s{_ffhrMatches = a}) .
      _Default
      . _Coerce

-- | For requested entities that did not match the threat list, how long to
-- cache the response.
ffhrNegativeCacheDuration :: Lens' FindFullHashesResponse (Maybe Text)
ffhrNegativeCacheDuration
  = lens _ffhrNegativeCacheDuration
      (\ s a -> s{_ffhrNegativeCacheDuration = a})

-- | The minimum duration the client must wait before issuing any find hashes
-- request. If this field is not set, clients can issue a request as soon
-- as they want.
ffhrMinimumWaitDuration :: Lens' FindFullHashesResponse (Maybe Text)
ffhrMinimumWaitDuration
  = lens _ffhrMinimumWaitDuration
      (\ s a -> s{_ffhrMinimumWaitDuration = a})

instance FromJSON FindFullHashesResponse where
        parseJSON
          = withObject "FindFullHashesResponse"
              (\ o ->
                 FindFullHashesResponse' <$>
                   (o .:? "matches" .!= mempty) <*>
                     (o .:? "negativeCacheDuration")
                     <*> (o .:? "minimumWaitDuration"))

instance ToJSON FindFullHashesResponse where
        toJSON FindFullHashesResponse'{..}
          = object
              (catMaybes
                 [("matches" .=) <$> _ffhrMatches,
                  ("negativeCacheDuration" .=) <$>
                    _ffhrNegativeCacheDuration,
                  ("minimumWaitDuration" .=) <$>
                    _ffhrMinimumWaitDuration])

-- | A single metadata entry.
--
-- /See:/ 'metadataEntry' smart constructor.
data MetadataEntry = MetadataEntry'
    { _meValue :: !(Maybe Bytes)
    , _meKey   :: !(Maybe Bytes)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meValue'
--
-- * 'meKey'
metadataEntry
    :: MetadataEntry
metadataEntry =
    MetadataEntry'
    { _meValue = Nothing
    , _meKey = Nothing
    }

-- | The metadata entry value.
meValue :: Lens' MetadataEntry (Maybe ByteString)
meValue
  = lens _meValue (\ s a -> s{_meValue = a}) .
      mapping _Bytes

-- | The metadata entry key.
meKey :: Lens' MetadataEntry (Maybe ByteString)
meKey
  = lens _meKey (\ s a -> s{_meKey = a}) .
      mapping _Bytes

instance FromJSON MetadataEntry where
        parseJSON
          = withObject "MetadataEntry"
              (\ o ->
                 MetadataEntry' <$> (o .:? "value") <*> (o .:? "key"))

instance ToJSON MetadataEntry where
        toJSON MetadataEntry'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _meValue, ("key" .=) <$> _meKey])

--
-- /See:/ 'fetchThreatListUpdatesResponse' smart constructor.
data FetchThreatListUpdatesResponse = FetchThreatListUpdatesResponse'
    { _ftlurListUpdateResponses :: !(Maybe [ListUpdateResponse])
    , _ftlurMinimumWaitDuration :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FetchThreatListUpdatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftlurListUpdateResponses'
--
-- * 'ftlurMinimumWaitDuration'
fetchThreatListUpdatesResponse
    :: FetchThreatListUpdatesResponse
fetchThreatListUpdatesResponse =
    FetchThreatListUpdatesResponse'
    { _ftlurListUpdateResponses = Nothing
    , _ftlurMinimumWaitDuration = Nothing
    }

-- | The list updates requested by the clients.
ftlurListUpdateResponses :: Lens' FetchThreatListUpdatesResponse [ListUpdateResponse]
ftlurListUpdateResponses
  = lens _ftlurListUpdateResponses
      (\ s a -> s{_ftlurListUpdateResponses = a})
      . _Default
      . _Coerce

-- | The minimum duration the client must wait before issuing any update
-- request. If this field is not set clients may update as soon as they
-- want.
ftlurMinimumWaitDuration :: Lens' FetchThreatListUpdatesResponse (Maybe Text)
ftlurMinimumWaitDuration
  = lens _ftlurMinimumWaitDuration
      (\ s a -> s{_ftlurMinimumWaitDuration = a})

instance FromJSON FetchThreatListUpdatesResponse
         where
        parseJSON
          = withObject "FetchThreatListUpdatesResponse"
              (\ o ->
                 FetchThreatListUpdatesResponse' <$>
                   (o .:? "listUpdateResponses" .!= mempty) <*>
                     (o .:? "minimumWaitDuration"))

instance ToJSON FetchThreatListUpdatesResponse where
        toJSON FetchThreatListUpdatesResponse'{..}
          = object
              (catMaybes
                 [("listUpdateResponses" .=) <$>
                    _ftlurListUpdateResponses,
                  ("minimumWaitDuration" .=) <$>
                    _ftlurMinimumWaitDuration])
