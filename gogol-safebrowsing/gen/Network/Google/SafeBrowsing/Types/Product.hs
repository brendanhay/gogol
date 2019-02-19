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
newtype ThreatEntryMetadata =
  ThreatEntryMetadata'
    { _temEntries :: Maybe [MetadataEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ThreatEntryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'temEntries'
threatEntryMetadata
    :: ThreatEntryMetadata
threatEntryMetadata = ThreatEntryMetadata' {_temEntries = Nothing}

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

-- | Details about the user that encountered the threat.
--
-- /See:/ 'userInfo' smart constructor.
data UserInfo =
  UserInfo'
    { _uiRegionCode :: !(Maybe Text)
    , _uiUserId     :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiRegionCode'
--
-- * 'uiUserId'
userInfo
    :: UserInfo
userInfo = UserInfo' {_uiRegionCode = Nothing, _uiUserId = Nothing}

-- | The UN M.49 region code associated with the user\'s location.
uiRegionCode :: Lens' UserInfo (Maybe Text)
uiRegionCode
  = lens _uiRegionCode (\ s a -> s{_uiRegionCode = a})

-- | Unique user identifier defined by the client.
uiUserId :: Lens' UserInfo (Maybe ByteString)
uiUserId
  = lens _uiUserId (\ s a -> s{_uiUserId = a}) .
      mapping _Bytes

instance FromJSON UserInfo where
        parseJSON
          = withObject "UserInfo"
              (\ o ->
                 UserInfo' <$>
                   (o .:? "regionCode") <*> (o .:? "userId"))

instance ToJSON UserInfo where
        toJSON UserInfo'{..}
          = object
              (catMaybes
                 [("regionCode" .=) <$> _uiRegionCode,
                  ("userId" .=) <$> _uiUserId])

-- | The expected state of a client\'s local database.
--
-- /See:/ 'checksum' smart constructor.
newtype Checksum =
  Checksum'
    { _cSha256 :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Checksum' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cSha256'
checksum
    :: Checksum
checksum = Checksum' {_cSha256 = Nothing}

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
newtype FindThreatMatchesResponse =
  FindThreatMatchesResponse'
    { _ftmrMatches :: Maybe [ThreatMatch]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FindThreatMatchesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftmrMatches'
findThreatMatchesResponse
    :: FindThreatMatchesResponse
findThreatMatchesResponse = FindThreatMatchesResponse' {_ftmrMatches = Nothing}

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

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The information regarding one or more threats that a client submits when
-- checking for matches in threat lists.
--
-- /See:/ 'threatInfo' smart constructor.
data ThreatInfo =
  ThreatInfo'
    { _tiThreatEntries    :: !(Maybe [ThreatEntry])
    , _tiThreatTypes      :: !(Maybe [Text])
    , _tiPlatformTypes    :: !(Maybe [Text])
    , _tiThreatEntryTypes :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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

--
-- /See:/ 'threatHit' smart constructor.
data ThreatHit =
  ThreatHit'
    { _thUserInfo     :: !(Maybe UserInfo)
    , _thThreatType   :: !(Maybe ThreatHitThreatType)
    , _thResources    :: !(Maybe [ThreatSource])
    , _thEntry        :: !(Maybe ThreatEntry)
    , _thClientInfo   :: !(Maybe ClientInfo)
    , _thPlatformType :: !(Maybe ThreatHitPlatformType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ThreatHit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thUserInfo'
--
-- * 'thThreatType'
--
-- * 'thResources'
--
-- * 'thEntry'
--
-- * 'thClientInfo'
--
-- * 'thPlatformType'
threatHit
    :: ThreatHit
threatHit =
  ThreatHit'
    { _thUserInfo = Nothing
    , _thThreatType = Nothing
    , _thResources = Nothing
    , _thEntry = Nothing
    , _thClientInfo = Nothing
    , _thPlatformType = Nothing
    }

-- | Details about the user that encountered the threat.
thUserInfo :: Lens' ThreatHit (Maybe UserInfo)
thUserInfo
  = lens _thUserInfo (\ s a -> s{_thUserInfo = a})

-- | The threat type reported.
thThreatType :: Lens' ThreatHit (Maybe ThreatHitThreatType)
thThreatType
  = lens _thThreatType (\ s a -> s{_thThreatType = a})

-- | The resources related to the threat hit.
thResources :: Lens' ThreatHit [ThreatSource]
thResources
  = lens _thResources (\ s a -> s{_thResources = a}) .
      _Default
      . _Coerce

-- | The threat entry responsible for the hit. Full hash should be reported
-- for hash-based hits.
thEntry :: Lens' ThreatHit (Maybe ThreatEntry)
thEntry = lens _thEntry (\ s a -> s{_thEntry = a})

-- | Client-reported identification.
thClientInfo :: Lens' ThreatHit (Maybe ClientInfo)
thClientInfo
  = lens _thClientInfo (\ s a -> s{_thClientInfo = a})

-- | The platform type reported.
thPlatformType :: Lens' ThreatHit (Maybe ThreatHitPlatformType)
thPlatformType
  = lens _thPlatformType
      (\ s a -> s{_thPlatformType = a})

instance FromJSON ThreatHit where
        parseJSON
          = withObject "ThreatHit"
              (\ o ->
                 ThreatHit' <$>
                   (o .:? "userInfo") <*> (o .:? "threatType") <*>
                     (o .:? "resources" .!= mempty)
                     <*> (o .:? "entry")
                     <*> (o .:? "clientInfo")
                     <*> (o .:? "platformType"))

instance ToJSON ThreatHit where
        toJSON ThreatHit'{..}
          = object
              (catMaybes
                 [("userInfo" .=) <$> _thUserInfo,
                  ("threatType" .=) <$> _thThreatType,
                  ("resources" .=) <$> _thResources,
                  ("entry" .=) <$> _thEntry,
                  ("clientInfo" .=) <$> _thClientInfo,
                  ("platformType" .=) <$> _thPlatformType])

-- | Describes a Safe Browsing API update request. Clients can request
-- updates for multiple lists in a single request. NOTE: Field index 2 is
-- unused. NEXT: 5
--
-- /See:/ 'fetchThreatListUpdatesRequest' smart constructor.
data FetchThreatListUpdatesRequest =
  FetchThreatListUpdatesRequest'
    { _ftlurListUpdateRequests :: !(Maybe [ListUpdateRequest])
    , _ftlurClient             :: !(Maybe ClientInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
    {_ftlurListUpdateRequests = Nothing, _ftlurClient = Nothing}

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
data FindFullHashesRequest =
  FindFullHashesRequest'
    { _ffhrThreatInfo   :: !(Maybe ThreatInfo)
    , _ffhrAPIClient    :: !(Maybe ClientInfo)
    , _ffhrClientStates :: !(Maybe [Bytes])
    , _ffhrClient       :: !(Maybe ClientInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FindFullHashesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffhrThreatInfo'
--
-- * 'ffhrAPIClient'
--
-- * 'ffhrClientStates'
--
-- * 'ffhrClient'
findFullHashesRequest
    :: FindFullHashesRequest
findFullHashesRequest =
  FindFullHashesRequest'
    { _ffhrThreatInfo = Nothing
    , _ffhrAPIClient = Nothing
    , _ffhrClientStates = Nothing
    , _ffhrClient = Nothing
    }

-- | The lists and hashes to be checked.
ffhrThreatInfo :: Lens' FindFullHashesRequest (Maybe ThreatInfo)
ffhrThreatInfo
  = lens _ffhrThreatInfo
      (\ s a -> s{_ffhrThreatInfo = a})

-- | Client metadata associated with callers of higher-level APIs built on
-- top of the client\'s implementation.
ffhrAPIClient :: Lens' FindFullHashesRequest (Maybe ClientInfo)
ffhrAPIClient
  = lens _ffhrAPIClient
      (\ s a -> s{_ffhrAPIClient = a})

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
                   (o .:? "threatInfo") <*> (o .:? "apiClient") <*>
                     (o .:? "clientStates" .!= mempty)
                     <*> (o .:? "client"))

instance ToJSON FindFullHashesRequest where
        toJSON FindFullHashesRequest'{..}
          = object
              (catMaybes
                 [("threatInfo" .=) <$> _ffhrThreatInfo,
                  ("apiClient" .=) <$> _ffhrAPIClient,
                  ("clientStates" .=) <$> _ffhrClientStates,
                  ("client" .=) <$> _ffhrClient])

-- | The constraints for this update.
--
-- /See:/ 'constraints' smart constructor.
data Constraints =
  Constraints'
    { _cMaxUpdateEntries      :: !(Maybe (Textual Int32))
    , _cDeviceLocation        :: !(Maybe Text)
    , _cLanguage              :: !(Maybe Text)
    , _cRegion                :: !(Maybe Text)
    , _cSupportedCompressions :: !(Maybe [Text])
    , _cMaxDatabaseEntries    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Constraints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cMaxUpdateEntries'
--
-- * 'cDeviceLocation'
--
-- * 'cLanguage'
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
    , _cDeviceLocation = Nothing
    , _cLanguage = Nothing
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

-- | A client\'s physical location, expressed as a ISO 31166-1 alpha-2 region
-- code.
cDeviceLocation :: Lens' Constraints (Maybe Text)
cDeviceLocation
  = lens _cDeviceLocation
      (\ s a -> s{_cDeviceLocation = a})

-- | Requests the lists for a specific language. Expects ISO 639 alpha-2
-- format.
cLanguage :: Lens' Constraints (Maybe Text)
cLanguage
  = lens _cLanguage (\ s a -> s{_cLanguage = a})

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
                   (o .:? "maxUpdateEntries") <*>
                     (o .:? "deviceLocation")
                     <*> (o .:? "language")
                     <*> (o .:? "region")
                     <*> (o .:? "supportedCompressions" .!= mempty)
                     <*> (o .:? "maxDatabaseEntries"))

instance ToJSON Constraints where
        toJSON Constraints'{..}
          = object
              (catMaybes
                 [("maxUpdateEntries" .=) <$> _cMaxUpdateEntries,
                  ("deviceLocation" .=) <$> _cDeviceLocation,
                  ("language" .=) <$> _cLanguage,
                  ("region" .=) <$> _cRegion,
                  ("supportedCompressions" .=) <$>
                    _cSupportedCompressions,
                  ("maxDatabaseEntries" .=) <$> _cMaxDatabaseEntries])

-- | The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes
-- or compressed removal indices.
--
-- /See:/ 'riceDeltaEncoding' smart constructor.
data RiceDeltaEncoding =
  RiceDeltaEncoding'
    { _rdeFirstValue    :: !(Maybe (Textual Int64))
    , _rdeRiceParameter :: !(Maybe (Textual Int32))
    , _rdeNumEntries    :: !(Maybe (Textual Int32))
    , _rdeEncodedData   :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
-- integer was encoded, that single integer\'s value. If the field is empty
-- or missing, assume zero.
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
newtype ListThreatListsResponse =
  ListThreatListsResponse'
    { _ltlrThreatLists :: Maybe [ThreatListDescriptor]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListThreatListsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltlrThreatLists'
listThreatListsResponse
    :: ListThreatListsResponse
listThreatListsResponse = ListThreatListsResponse' {_ltlrThreatLists = Nothing}

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
data ThreatListDescriptor =
  ThreatListDescriptor'
    { _tldThreatEntryType :: !(Maybe ThreatListDescriptorThreatEntryType)
    , _tldThreatType      :: !(Maybe ThreatListDescriptorThreatType)
    , _tldPlatformType    :: !(Maybe ThreatListDescriptorPlatformType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
tldThreatEntryType :: Lens' ThreatListDescriptor (Maybe ThreatListDescriptorThreatEntryType)
tldThreatEntryType
  = lens _tldThreatEntryType
      (\ s a -> s{_tldThreatEntryType = a})

-- | The threat type posed by the list\'s entries.
tldThreatType :: Lens' ThreatListDescriptor (Maybe ThreatListDescriptorThreatType)
tldThreatType
  = lens _tldThreatType
      (\ s a -> s{_tldThreatType = a})

-- | The platform type targeted by the list\'s entries.
tldPlatformType :: Lens' ThreatListDescriptor (Maybe ThreatListDescriptorPlatformType)
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
data ClientInfo =
  ClientInfo'
    { _ciClientId      :: !(Maybe Text)
    , _ciClientVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClientInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciClientId'
--
-- * 'ciClientVersion'
clientInfo
    :: ClientInfo
clientInfo = ClientInfo' {_ciClientId = Nothing, _ciClientVersion = Nothing}

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
data FindThreatMatchesRequest =
  FindThreatMatchesRequest'
    { _ftmrThreatInfo :: !(Maybe ThreatInfo)
    , _ftmrClient     :: !(Maybe ClientInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
  FindThreatMatchesRequest' {_ftmrThreatInfo = Nothing, _ftmrClient = Nothing}

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
data ListUpdateRequest =
  ListUpdateRequest'
    { _lurState           :: !(Maybe Bytes)
    , _lurThreatEntryType :: !(Maybe ListUpdateRequestThreatEntryType)
    , _lurConstraints     :: !(Maybe Constraints)
    , _lurThreatType      :: !(Maybe ListUpdateRequestThreatType)
    , _lurPlatformType    :: !(Maybe ListUpdateRequestPlatformType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
lurThreatEntryType :: Lens' ListUpdateRequest (Maybe ListUpdateRequestThreatEntryType)
lurThreatEntryType
  = lens _lurThreatEntryType
      (\ s a -> s{_lurThreatEntryType = a})

-- | The constraints associated with this request.
lurConstraints :: Lens' ListUpdateRequest (Maybe Constraints)
lurConstraints
  = lens _lurConstraints
      (\ s a -> s{_lurConstraints = a})

-- | The type of threat posed by entries present in the list.
lurThreatType :: Lens' ListUpdateRequest (Maybe ListUpdateRequestThreatType)
lurThreatType
  = lens _lurThreatType
      (\ s a -> s{_lurThreatType = a})

-- | The type of platform at risk by entries present in the list.
lurPlatformType :: Lens' ListUpdateRequest (Maybe ListUpdateRequestPlatformType)
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
data ThreatEntry =
  ThreatEntry'
    { _teHash   :: !(Maybe Bytes)
    , _teURL    :: !(Maybe Text)
    , _teDigest :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
  ThreatEntry' {_teHash = Nothing, _teURL = Nothing, _teDigest = Nothing}

-- | A hash prefix, consisting of the most significant 4-32 bytes of a SHA256
-- hash. This field is in binary format. For JSON requests, hashes are
-- base64-encoded.
teHash :: Lens' ThreatEntry (Maybe ByteString)
teHash
  = lens _teHash (\ s a -> s{_teHash = a}) .
      mapping _Bytes

-- | A URL.
teURL :: Lens' ThreatEntry (Maybe Text)
teURL = lens _teURL (\ s a -> s{_teURL = a})

-- | The digest of an executable in SHA256 format. The API supports both
-- binary and hex digests. For JSON requests, digests are base64-encoded.
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
data ThreatMatch =
  ThreatMatch'
    { _tmThreatEntryMetadata :: !(Maybe ThreatEntryMetadata)
    , _tmThreatEntryType     :: !(Maybe ThreatMatchThreatEntryType)
    , _tmThreatType          :: !(Maybe ThreatMatchThreatType)
    , _tmPlatformType        :: !(Maybe ThreatMatchPlatformType)
    , _tmCacheDuration       :: !(Maybe GDuration)
    , _tmThreat              :: !(Maybe ThreatEntry)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
tmThreatEntryType :: Lens' ThreatMatch (Maybe ThreatMatchThreatEntryType)
tmThreatEntryType
  = lens _tmThreatEntryType
      (\ s a -> s{_tmThreatEntryType = a})

-- | The threat type matching this threat.
tmThreatType :: Lens' ThreatMatch (Maybe ThreatMatchThreatType)
tmThreatType
  = lens _tmThreatType (\ s a -> s{_tmThreatType = a})

-- | The platform type matching this threat.
tmPlatformType :: Lens' ThreatMatch (Maybe ThreatMatchPlatformType)
tmPlatformType
  = lens _tmPlatformType
      (\ s a -> s{_tmPlatformType = a})

-- | The cache lifetime for the returned match. Clients must not cache this
-- response for more than this duration to avoid false positives.
tmCacheDuration :: Lens' ThreatMatch (Maybe Scientific)
tmCacheDuration
  = lens _tmCacheDuration
      (\ s a -> s{_tmCacheDuration = a})
      . mapping _GDuration

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
data RawHashes =
  RawHashes'
    { _rhPrefixSize :: !(Maybe (Textual Int32))
    , _rhRawHashes  :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RawHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhPrefixSize'
--
-- * 'rhRawHashes'
rawHashes
    :: RawHashes
rawHashes = RawHashes' {_rhPrefixSize = Nothing, _rhRawHashes = Nothing}

-- | The number of bytes for each prefix encoded below. This field can be
-- anywhere from 4 (shortest prefix) to 32 (full SHA256 hash).
rhPrefixSize :: Lens' RawHashes (Maybe Int32)
rhPrefixSize
  = lens _rhPrefixSize (\ s a -> s{_rhPrefixSize = a})
      . mapping _Coerce

-- | The hashes, in binary format, concatenated into one long string. Hashes
-- are sorted in lexicographic order. For JSON API users, hashes are
-- base64-encoded.
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
data ListUpdateResponse =
  ListUpdateResponse'
    { _lAdditions       :: !(Maybe [ThreatEntrySet])
    , _lThreatEntryType :: !(Maybe ListUpdateResponseThreatEntryType)
    , _lChecksum        :: !(Maybe Checksum)
    , _lThreatType      :: !(Maybe ListUpdateResponseThreatType)
    , _lPlatformType    :: !(Maybe ListUpdateResponsePlatformType)
    , _lNewClientState  :: !(Maybe Bytes)
    , _lRemovals        :: !(Maybe [ThreatEntrySet])
    , _lResponseType    :: !(Maybe ListUpdateResponseResponseType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
lThreatEntryType :: Lens' ListUpdateResponse (Maybe ListUpdateResponseThreatEntryType)
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
lThreatType :: Lens' ListUpdateResponse (Maybe ListUpdateResponseThreatType)
lThreatType
  = lens _lThreatType (\ s a -> s{_lThreatType = a})

-- | The platform type for which data is returned.
lPlatformType :: Lens' ListUpdateResponse (Maybe ListUpdateResponsePlatformType)
lPlatformType
  = lens _lPlatformType
      (\ s a -> s{_lPlatformType = a})

-- | The new client state, in encrypted format. Opaque to clients.
lNewClientState :: Lens' ListUpdateResponse (Maybe ByteString)
lNewClientState
  = lens _lNewClientState
      (\ s a -> s{_lNewClientState = a})
      . mapping _Bytes

-- | A set of entries to remove from a local threat type\'s list. In
-- practice, this field is empty or contains exactly one ThreatEntrySet.
lRemovals :: Lens' ListUpdateResponse [ThreatEntrySet]
lRemovals
  = lens _lRemovals (\ s a -> s{_lRemovals = a}) .
      _Default
      . _Coerce

-- | The type of response. This may indicate that an action is required by
-- the client when the response is received.
lResponseType :: Lens' ListUpdateResponse (Maybe ListUpdateResponseResponseType)
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
data ThreatEntrySet =
  ThreatEntrySet'
    { _tesRiceHashes      :: !(Maybe RiceDeltaEncoding)
    , _tesRiceIndices     :: !(Maybe RiceDeltaEncoding)
    , _tesRawHashes       :: !(Maybe RawHashes)
    , _tesRawIndices      :: !(Maybe RawIndices)
    , _tesCompressionType :: !(Maybe ThreatEntrySetCompressionType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
-- Golomb-Rice encoding. The hashes are converted to uint32, sorted in
-- ascending order, then delta encoded and stored as encoded_data.
tesRiceHashes :: Lens' ThreatEntrySet (Maybe RiceDeltaEncoding)
tesRiceHashes
  = lens _tesRiceHashes
      (\ s a -> s{_tesRiceHashes = a})

-- | The encoded local, lexicographically-sorted list indices, using a
-- Golomb-Rice encoding. Used for sending compressed removal indices. The
-- removal indices (uint32) are sorted in ascending order, then delta
-- encoded and stored as encoded_data.
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
tesCompressionType :: Lens' ThreatEntrySet (Maybe ThreatEntrySetCompressionType)
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
newtype RawIndices =
  RawIndices'
    { _riIndices :: Maybe [Textual Int32]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RawIndices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riIndices'
rawIndices
    :: RawIndices
rawIndices = RawIndices' {_riIndices = Nothing}

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

-- | A single resource related to a threat hit.
--
-- /See:/ 'threatSource' smart constructor.
data ThreatSource =
  ThreatSource'
    { _tsRemoteIP :: !(Maybe Text)
    , _tsURL      :: !(Maybe Text)
    , _tsReferrer :: !(Maybe Text)
    , _tsType     :: !(Maybe ThreatSourceType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ThreatSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsRemoteIP'
--
-- * 'tsURL'
--
-- * 'tsReferrer'
--
-- * 'tsType'
threatSource
    :: ThreatSource
threatSource =
  ThreatSource'
    { _tsRemoteIP = Nothing
    , _tsURL = Nothing
    , _tsReferrer = Nothing
    , _tsType = Nothing
    }

-- | The remote IP of the resource in ASCII format. Either IPv4 or IPv6.
tsRemoteIP :: Lens' ThreatSource (Maybe Text)
tsRemoteIP
  = lens _tsRemoteIP (\ s a -> s{_tsRemoteIP = a})

-- | The URL of the resource.
tsURL :: Lens' ThreatSource (Maybe Text)
tsURL = lens _tsURL (\ s a -> s{_tsURL = a})

-- | Referrer of the resource. Only set if the referrer is available.
tsReferrer :: Lens' ThreatSource (Maybe Text)
tsReferrer
  = lens _tsReferrer (\ s a -> s{_tsReferrer = a})

-- | The type of source reported.
tsType :: Lens' ThreatSource (Maybe ThreatSourceType)
tsType = lens _tsType (\ s a -> s{_tsType = a})

instance FromJSON ThreatSource where
        parseJSON
          = withObject "ThreatSource"
              (\ o ->
                 ThreatSource' <$>
                   (o .:? "remoteIp") <*> (o .:? "url") <*>
                     (o .:? "referrer")
                     <*> (o .:? "type"))

instance ToJSON ThreatSource where
        toJSON ThreatSource'{..}
          = object
              (catMaybes
                 [("remoteIp" .=) <$> _tsRemoteIP,
                  ("url" .=) <$> _tsURL,
                  ("referrer" .=) <$> _tsReferrer,
                  ("type" .=) <$> _tsType])

--
-- /See:/ 'findFullHashesResponse' smart constructor.
data FindFullHashesResponse =
  FindFullHashesResponse'
    { _ffhrMatches               :: !(Maybe [ThreatMatch])
    , _ffhrNegativeCacheDuration :: !(Maybe GDuration)
    , _ffhrMinimumWaitDuration   :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
ffhrNegativeCacheDuration :: Lens' FindFullHashesResponse (Maybe Scientific)
ffhrNegativeCacheDuration
  = lens _ffhrNegativeCacheDuration
      (\ s a -> s{_ffhrNegativeCacheDuration = a})
      . mapping _GDuration

-- | The minimum duration the client must wait before issuing any find hashes
-- request. If this field is not set, clients can issue a request as soon
-- as they want.
ffhrMinimumWaitDuration :: Lens' FindFullHashesResponse (Maybe Scientific)
ffhrMinimumWaitDuration
  = lens _ffhrMinimumWaitDuration
      (\ s a -> s{_ffhrMinimumWaitDuration = a})
      . mapping _GDuration

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
data MetadataEntry =
  MetadataEntry'
    { _meValue :: !(Maybe Bytes)
    , _meKey   :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MetadataEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meValue'
--
-- * 'meKey'
metadataEntry
    :: MetadataEntry
metadataEntry = MetadataEntry' {_meValue = Nothing, _meKey = Nothing}

-- | The metadata entry value. For JSON requests, the value is
-- base64-encoded.
meValue :: Lens' MetadataEntry (Maybe ByteString)
meValue
  = lens _meValue (\ s a -> s{_meValue = a}) .
      mapping _Bytes

-- | The metadata entry key. For JSON requests, the key is base64-encoded.
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
data FetchThreatListUpdatesResponse =
  FetchThreatListUpdatesResponse'
    { _ftlurListUpdateResponses :: !(Maybe [ListUpdateResponse])
    , _ftlurMinimumWaitDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
    {_ftlurListUpdateResponses = Nothing, _ftlurMinimumWaitDuration = Nothing}

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
ftlurMinimumWaitDuration :: Lens' FetchThreatListUpdatesResponse (Maybe Scientific)
ftlurMinimumWaitDuration
  = lens _ftlurMinimumWaitDuration
      (\ s a -> s{_ftlurMinimumWaitDuration = a})
      . mapping _GDuration

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
