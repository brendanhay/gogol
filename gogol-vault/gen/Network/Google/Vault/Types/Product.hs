{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vault.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Vault.Types.Product where

import Network.Google.Prelude
import Network.Google.Vault.Types.Sum

-- | An account covered by a hold. This structure is immutable. It can be an
-- individual account or a Google Group, depending on the service. To work
-- with Vault resources, the account must have the [required Vault
-- privileges] (https:\/\/support.google.com\/vault\/answer\/2799699) and
-- access to the matter. To access a matter, the account must have created
-- the matter, have the matter shared with them, or have the **View All
-- Matters** privilege.
--
-- /See:/ 'heldAccount' smart constructor.
data HeldAccount =
  HeldAccount'
    { _haEmail :: !(Maybe Text)
    , _haLastName :: !(Maybe Text)
    , _haAccountId :: !(Maybe Text)
    , _haHoldTime :: !(Maybe DateTime')
    , _haFirstName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HeldAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'haEmail'
--
-- * 'haLastName'
--
-- * 'haAccountId'
--
-- * 'haHoldTime'
--
-- * 'haFirstName'
heldAccount
    :: HeldAccount
heldAccount =
  HeldAccount'
    { _haEmail = Nothing
    , _haLastName = Nothing
    , _haAccountId = Nothing
    , _haHoldTime = Nothing
    , _haFirstName = Nothing
    }


-- | The primary email address of the account. If used as an input, this
-- takes precedence over **accountId**.
haEmail :: Lens' HeldAccount (Maybe Text)
haEmail = lens _haEmail (\ s a -> s{_haEmail = a})

-- | Output only. The last name of the account holder.
haLastName :: Lens' HeldAccount (Maybe Text)
haLastName
  = lens _haLastName (\ s a -> s{_haLastName = a})

-- | The account ID, as provided by the [Admin
-- SDK](https:\/\/developers.google.com\/admin-sdk\/).
haAccountId :: Lens' HeldAccount (Maybe Text)
haAccountId
  = lens _haAccountId (\ s a -> s{_haAccountId = a})

-- | Output only. When the account was put on hold.
haHoldTime :: Lens' HeldAccount (Maybe UTCTime)
haHoldTime
  = lens _haHoldTime (\ s a -> s{_haHoldTime = a}) .
      mapping _DateTime

-- | Output only. The first name of the account holder.
haFirstName :: Lens' HeldAccount (Maybe Text)
haFirstName
  = lens _haFirstName (\ s a -> s{_haFirstName = a})

instance FromJSON HeldAccount where
        parseJSON
          = withObject "HeldAccount"
              (\ o ->
                 HeldAccount' <$>
                   (o .:? "email") <*> (o .:? "lastName") <*>
                     (o .:? "accountId")
                     <*> (o .:? "holdTime")
                     <*> (o .:? "firstName"))

instance ToJSON HeldAccount where
        toJSON HeldAccount'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _haEmail,
                  ("lastName" .=) <$> _haLastName,
                  ("accountId" .=) <$> _haAccountId,
                  ("holdTime" .=) <$> _haHoldTime,
                  ("firstName" .=) <$> _haFirstName])

-- | Options for Chat holds.
--
-- /See:/ 'heldHangoutsChatQuery' smart constructor.
newtype HeldHangoutsChatQuery =
  HeldHangoutsChatQuery'
    { _hhcqIncludeRooms :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HeldHangoutsChatQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhcqIncludeRooms'
heldHangoutsChatQuery
    :: HeldHangoutsChatQuery
heldHangoutsChatQuery = HeldHangoutsChatQuery' {_hhcqIncludeRooms = Nothing}


-- | To include messages in Chat spaces the user was a member of, set to
-- **true**.
hhcqIncludeRooms :: Lens' HeldHangoutsChatQuery (Maybe Bool)
hhcqIncludeRooms
  = lens _hhcqIncludeRooms
      (\ s a -> s{_hhcqIncludeRooms = a})

instance FromJSON HeldHangoutsChatQuery where
        parseJSON
          = withObject "HeldHangoutsChatQuery"
              (\ o ->
                 HeldHangoutsChatQuery' <$> (o .:? "includeRooms"))

instance ToJSON HeldHangoutsChatQuery where
        toJSON HeldHangoutsChatQuery'{..}
          = object
              (catMaybes
                 [("includeRooms" .=) <$> _hhcqIncludeRooms])

-- | An export. To work with Vault resources, the account must have the
-- [required Vault
-- privileges](https:\/\/support.google.com\/vault\/answer\/2799699) and
-- access to the matter. To access a matter, the account must have created
-- the matter, have the matter shared with them, or have the **View All
-- Matters** privilege.
--
-- /See:/ 'export'' smart constructor.
data Export =
  Export'
    { _eStatus :: !(Maybe ExportStatus)
    , _eCloudStorageSink :: !(Maybe CloudStorageSink)
    , _eMatterId :: !(Maybe Text)
    , _eStats :: !(Maybe ExportStats)
    , _eExportOptions :: !(Maybe ExportOptions)
    , _eName :: !(Maybe Text)
    , _eQuery :: !(Maybe Query)
    , _eId :: !(Maybe Text)
    , _eRequester :: !(Maybe UserInfo)
    , _eCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Export' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eStatus'
--
-- * 'eCloudStorageSink'
--
-- * 'eMatterId'
--
-- * 'eStats'
--
-- * 'eExportOptions'
--
-- * 'eName'
--
-- * 'eQuery'
--
-- * 'eId'
--
-- * 'eRequester'
--
-- * 'eCreateTime'
export'
    :: Export
export' =
  Export'
    { _eStatus = Nothing
    , _eCloudStorageSink = Nothing
    , _eMatterId = Nothing
    , _eStats = Nothing
    , _eExportOptions = Nothing
    , _eName = Nothing
    , _eQuery = Nothing
    , _eId = Nothing
    , _eRequester = Nothing
    , _eCreateTime = Nothing
    }


-- | Output only. The status of the export.
eStatus :: Lens' Export (Maybe ExportStatus)
eStatus = lens _eStatus (\ s a -> s{_eStatus = a})

-- | Output only. The sink for export files in Cloud Storage.
eCloudStorageSink :: Lens' Export (Maybe CloudStorageSink)
eCloudStorageSink
  = lens _eCloudStorageSink
      (\ s a -> s{_eCloudStorageSink = a})

-- | Output only. The matter ID.
eMatterId :: Lens' Export (Maybe Text)
eMatterId
  = lens _eMatterId (\ s a -> s{_eMatterId = a})

-- | Output only. Details about the export progress and size.
eStats :: Lens' Export (Maybe ExportStats)
eStats = lens _eStats (\ s a -> s{_eStats = a})

-- | Additional export options.
eExportOptions :: Lens' Export (Maybe ExportOptions)
eExportOptions
  = lens _eExportOptions
      (\ s a -> s{_eExportOptions = a})

-- | The export name.
eName :: Lens' Export (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | The query parameters used to create the export.
eQuery :: Lens' Export (Maybe Query)
eQuery = lens _eQuery (\ s a -> s{_eQuery = a})

-- | Output only. The generated export ID.
eId :: Lens' Export (Maybe Text)
eId = lens _eId (\ s a -> s{_eId = a})

-- | Output only. The requester of the export.
eRequester :: Lens' Export (Maybe UserInfo)
eRequester
  = lens _eRequester (\ s a -> s{_eRequester = a})

-- | Output only. The time when the export was created.
eCreateTime :: Lens' Export (Maybe UTCTime)
eCreateTime
  = lens _eCreateTime (\ s a -> s{_eCreateTime = a}) .
      mapping _DateTime

instance FromJSON Export where
        parseJSON
          = withObject "Export"
              (\ o ->
                 Export' <$>
                   (o .:? "status") <*> (o .:? "cloudStorageSink") <*>
                     (o .:? "matterId")
                     <*> (o .:? "stats")
                     <*> (o .:? "exportOptions")
                     <*> (o .:? "name")
                     <*> (o .:? "query")
                     <*> (o .:? "id")
                     <*> (o .:? "requester")
                     <*> (o .:? "createTime"))

instance ToJSON Export where
        toJSON Export'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _eStatus,
                  ("cloudStorageSink" .=) <$> _eCloudStorageSink,
                  ("matterId" .=) <$> _eMatterId,
                  ("stats" .=) <$> _eStats,
                  ("exportOptions" .=) <$> _eExportOptions,
                  ("name" .=) <$> _eName, ("query" .=) <$> _eQuery,
                  ("id" .=) <$> _eId, ("requester" .=) <$> _eRequester,
                  ("createTime" .=) <$> _eCreateTime])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | The accounts to search
--
-- /See:/ 'accountInfo' smart constructor.
newtype AccountInfo =
  AccountInfo'
    { _aiEmails :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiEmails'
accountInfo
    :: AccountInfo
accountInfo = AccountInfo' {_aiEmails = Nothing}


-- | A set of accounts to search.
aiEmails :: Lens' AccountInfo [Text]
aiEmails
  = lens _aiEmails (\ s a -> s{_aiEmails = a}) .
      _Default
      . _Coerce

instance FromJSON AccountInfo where
        parseJSON
          = withObject "AccountInfo"
              (\ o -> AccountInfo' <$> (o .:? "emails" .!= mempty))

instance ToJSON AccountInfo where
        toJSON AccountInfo'{..}
          = object (catMaybes [("emails" .=) <$> _aiEmails])

-- | Export sink for Cloud Storage files.
--
-- /See:/ 'cloudStorageSink' smart constructor.
newtype CloudStorageSink =
  CloudStorageSink'
    { _cssFiles :: Maybe [CloudStorageFile]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudStorageSink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssFiles'
cloudStorageSink
    :: CloudStorageSink
cloudStorageSink = CloudStorageSink' {_cssFiles = Nothing}


-- | Output only. The exported files in Cloud Storage.
cssFiles :: Lens' CloudStorageSink [CloudStorageFile]
cssFiles
  = lens _cssFiles (\ s a -> s{_cssFiles = a}) .
      _Default
      . _Coerce

instance FromJSON CloudStorageSink where
        parseJSON
          = withObject "CloudStorageSink"
              (\ o ->
                 CloudStorageSink' <$> (o .:? "files" .!= mempty))

instance ToJSON CloudStorageSink where
        toJSON CloudStorageSink'{..}
          = object (catMaybes [("files" .=) <$> _cssFiles])

-- | Options for Chat exports.
--
-- /See:/ 'hangoutsChatExportOptions' smart constructor.
newtype HangoutsChatExportOptions =
  HangoutsChatExportOptions'
    { _hceoExportFormat :: Maybe HangoutsChatExportOptionsExportFormat
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HangoutsChatExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hceoExportFormat'
hangoutsChatExportOptions
    :: HangoutsChatExportOptions
hangoutsChatExportOptions =
  HangoutsChatExportOptions' {_hceoExportFormat = Nothing}


-- | The file format for exported messages.
hceoExportFormat :: Lens' HangoutsChatExportOptions (Maybe HangoutsChatExportOptionsExportFormat)
hceoExportFormat
  = lens _hceoExportFormat
      (\ s a -> s{_hceoExportFormat = a})

instance FromJSON HangoutsChatExportOptions where
        parseJSON
          = withObject "HangoutsChatExportOptions"
              (\ o ->
                 HangoutsChatExportOptions' <$>
                   (o .:? "exportFormat"))

instance ToJSON HangoutsChatExportOptions where
        toJSON HangoutsChatExportOptions'{..}
          = object
              (catMaybes
                 [("exportFormat" .=) <$> _hceoExportFormat])

-- | Count artifacts request.
--
-- /See:/ 'countArtifactsRequest' smart constructor.
data CountArtifactsRequest =
  CountArtifactsRequest'
    { _carQuery :: !(Maybe Query)
    , _carView :: !(Maybe CountArtifactsRequestView)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CountArtifactsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carQuery'
--
-- * 'carView'
countArtifactsRequest
    :: CountArtifactsRequest
countArtifactsRequest =
  CountArtifactsRequest' {_carQuery = Nothing, _carView = Nothing}


-- | The search query.
carQuery :: Lens' CountArtifactsRequest (Maybe Query)
carQuery = lens _carQuery (\ s a -> s{_carQuery = a})

-- | Sets the granularity of the count results.
carView :: Lens' CountArtifactsRequest (Maybe CountArtifactsRequestView)
carView = lens _carView (\ s a -> s{_carView = a})

instance FromJSON CountArtifactsRequest where
        parseJSON
          = withObject "CountArtifactsRequest"
              (\ o ->
                 CountArtifactsRequest' <$>
                   (o .:? "query") <*> (o .:? "view"))

instance ToJSON CountArtifactsRequest where
        toJSON CountArtifactsRequest'{..}
          = object
              (catMaybes
                 [("query" .=) <$> _carQuery,
                  ("view" .=) <$> _carView])

-- | User\'s information.
--
-- /See:/ 'userInfo' smart constructor.
data UserInfo =
  UserInfo'
    { _uiEmail :: !(Maybe Text)
    , _uiDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiEmail'
--
-- * 'uiDisplayName'
userInfo
    :: UserInfo
userInfo = UserInfo' {_uiEmail = Nothing, _uiDisplayName = Nothing}


-- | The email address of the user.
uiEmail :: Lens' UserInfo (Maybe Text)
uiEmail = lens _uiEmail (\ s a -> s{_uiEmail = a})

-- | The displayed name of the user.
uiDisplayName :: Lens' UserInfo (Maybe Text)
uiDisplayName
  = lens _uiDisplayName
      (\ s a -> s{_uiDisplayName = a})

instance FromJSON UserInfo where
        parseJSON
          = withObject "UserInfo"
              (\ o ->
                 UserInfo' <$>
                   (o .:? "email") <*> (o .:? "displayName"))

instance ToJSON UserInfo where
        toJSON UserInfo'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _uiEmail,
                  ("displayName" .=) <$> _uiDisplayName])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | Team Drives to search
--
-- /See:/ 'teamDriveInfo' smart constructor.
newtype TeamDriveInfo =
  TeamDriveInfo'
    { _tdiTeamDriveIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TeamDriveInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiTeamDriveIds'
teamDriveInfo
    :: TeamDriveInfo
teamDriveInfo = TeamDriveInfo' {_tdiTeamDriveIds = Nothing}


-- | List of Team Drive IDs, as provided by the [Drive
-- API](https:\/\/developers.google.com\/drive).
tdiTeamDriveIds :: Lens' TeamDriveInfo [Text]
tdiTeamDriveIds
  = lens _tdiTeamDriveIds
      (\ s a -> s{_tdiTeamDriveIds = a})
      . _Default
      . _Coerce

instance FromJSON TeamDriveInfo where
        parseJSON
          = withObject "TeamDriveInfo"
              (\ o ->
                 TeamDriveInfo' <$> (o .:? "teamDriveIds" .!= mempty))

instance ToJSON TeamDriveInfo where
        toJSON TeamDriveInfo'{..}
          = object
              (catMaybes
                 [("teamDriveIds" .=) <$> _tdiTeamDriveIds])

-- | Add a list of accounts to a hold.
--
-- /See:/ 'addHeldAccountsRequest' smart constructor.
data AddHeldAccountsRequest =
  AddHeldAccountsRequest'
    { _aharAccountIds :: !(Maybe [Text])
    , _aharEmails :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddHeldAccountsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aharAccountIds'
--
-- * 'aharEmails'
addHeldAccountsRequest
    :: AddHeldAccountsRequest
addHeldAccountsRequest =
  AddHeldAccountsRequest' {_aharAccountIds = Nothing, _aharEmails = Nothing}


-- | A comma-separated list of the account IDs of the accounts to add to the
-- hold. Specify either **emails** or **account_ids**, but not both.
aharAccountIds :: Lens' AddHeldAccountsRequest [Text]
aharAccountIds
  = lens _aharAccountIds
      (\ s a -> s{_aharAccountIds = a})
      . _Default
      . _Coerce

-- | A comma-separated list of the emails of the accounts to add to the hold.
-- Specify either **emails** or **account_ids**, but not both.
aharEmails :: Lens' AddHeldAccountsRequest [Text]
aharEmails
  = lens _aharEmails (\ s a -> s{_aharEmails = a}) .
      _Default
      . _Coerce

instance FromJSON AddHeldAccountsRequest where
        parseJSON
          = withObject "AddHeldAccountsRequest"
              (\ o ->
                 AddHeldAccountsRequest' <$>
                   (o .:? "accountIds" .!= mempty) <*>
                     (o .:? "emails" .!= mempty))

instance ToJSON AddHeldAccountsRequest where
        toJSON AddHeldAccountsRequest'{..}
          = object
              (catMaybes
                 [("accountIds" .=) <$> _aharAccountIds,
                  ("emails" .=) <$> _aharEmails])

-- | Service-specific options for holds.
--
-- /See:/ 'corpusQuery' smart constructor.
data CorpusQuery =
  CorpusQuery'
    { _cqGroupsQuery :: !(Maybe HeldGroupsQuery)
    , _cqDriveQuery :: !(Maybe HeldDriveQuery)
    , _cqHangoutsChatQuery :: !(Maybe HeldHangoutsChatQuery)
    , _cqVoiceQuery :: !(Maybe HeldVoiceQuery)
    , _cqMailQuery :: !(Maybe HeldMailQuery)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CorpusQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqGroupsQuery'
--
-- * 'cqDriveQuery'
--
-- * 'cqHangoutsChatQuery'
--
-- * 'cqVoiceQuery'
--
-- * 'cqMailQuery'
corpusQuery
    :: CorpusQuery
corpusQuery =
  CorpusQuery'
    { _cqGroupsQuery = Nothing
    , _cqDriveQuery = Nothing
    , _cqHangoutsChatQuery = Nothing
    , _cqVoiceQuery = Nothing
    , _cqMailQuery = Nothing
    }


-- | Service-specific options for Groups holds. If set, **CorpusType** must
-- be **GROUPS**.
cqGroupsQuery :: Lens' CorpusQuery (Maybe HeldGroupsQuery)
cqGroupsQuery
  = lens _cqGroupsQuery
      (\ s a -> s{_cqGroupsQuery = a})

-- | Service-specific options for Drive holds. If set, **CorpusType** must be
-- **DRIVE**.
cqDriveQuery :: Lens' CorpusQuery (Maybe HeldDriveQuery)
cqDriveQuery
  = lens _cqDriveQuery (\ s a -> s{_cqDriveQuery = a})

-- | Service-specific options for Chat holds. If set, **CorpusType** must be
-- **HANGOUTS_CHAT**.
cqHangoutsChatQuery :: Lens' CorpusQuery (Maybe HeldHangoutsChatQuery)
cqHangoutsChatQuery
  = lens _cqHangoutsChatQuery
      (\ s a -> s{_cqHangoutsChatQuery = a})

-- | Service-specific options for Voice holds. If set, **CorpusType** must be
-- **VOICE**.
cqVoiceQuery :: Lens' CorpusQuery (Maybe HeldVoiceQuery)
cqVoiceQuery
  = lens _cqVoiceQuery (\ s a -> s{_cqVoiceQuery = a})

-- | Service-specific options for Gmail holds. If set, **CorpusType** must be
-- **MAIL**.
cqMailQuery :: Lens' CorpusQuery (Maybe HeldMailQuery)
cqMailQuery
  = lens _cqMailQuery (\ s a -> s{_cqMailQuery = a})

instance FromJSON CorpusQuery where
        parseJSON
          = withObject "CorpusQuery"
              (\ o ->
                 CorpusQuery' <$>
                   (o .:? "groupsQuery") <*> (o .:? "driveQuery") <*>
                     (o .:? "hangoutsChatQuery")
                     <*> (o .:? "voiceQuery")
                     <*> (o .:? "mailQuery"))

instance ToJSON CorpusQuery where
        toJSON CorpusQuery'{..}
          = object
              (catMaybes
                 [("groupsQuery" .=) <$> _cqGroupsQuery,
                  ("driveQuery" .=) <$> _cqDriveQuery,
                  ("hangoutsChatQuery" .=) <$> _cqHangoutsChatQuery,
                  ("voiceQuery" .=) <$> _cqVoiceQuery,
                  ("mailQuery" .=) <$> _cqMailQuery])

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest'


instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest')

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | The organizational unit to search
--
-- /See:/ 'orgUnitInfo' smart constructor.
newtype OrgUnitInfo =
  OrgUnitInfo'
    { _ouiOrgUnitId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrgUnitInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouiOrgUnitId'
orgUnitInfo
    :: OrgUnitInfo
orgUnitInfo = OrgUnitInfo' {_ouiOrgUnitId = Nothing}


-- | The name of the organizational unit to search, as provided by the [Admin
-- SDK Directory
-- API](https:\/\/developers.google.com\/admin-sdk\/directory\/).
ouiOrgUnitId :: Lens' OrgUnitInfo (Maybe Text)
ouiOrgUnitId
  = lens _ouiOrgUnitId (\ s a -> s{_ouiOrgUnitId = a})

instance FromJSON OrgUnitInfo where
        parseJSON
          = withObject "OrgUnitInfo"
              (\ o -> OrgUnitInfo' <$> (o .:? "orgUnitId"))

instance ToJSON OrgUnitInfo where
        toJSON OrgUnitInfo'{..}
          = object
              (catMaybes [("orgUnitId" .=) <$> _ouiOrgUnitId])

-- | Response for batch delete held accounts.
--
-- /See:/ 'removeHeldAccountsResponse' smart constructor.
newtype RemoveHeldAccountsResponse =
  RemoveHeldAccountsResponse'
    { _rharStatuses :: Maybe [Status]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveHeldAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rharStatuses'
removeHeldAccountsResponse
    :: RemoveHeldAccountsResponse
removeHeldAccountsResponse =
  RemoveHeldAccountsResponse' {_rharStatuses = Nothing}


-- | A list of statuses for the deleted accounts. Results have the same order
-- as the request.
rharStatuses :: Lens' RemoveHeldAccountsResponse [Status]
rharStatuses
  = lens _rharStatuses (\ s a -> s{_rharStatuses = a})
      . _Default
      . _Coerce

instance FromJSON RemoveHeldAccountsResponse where
        parseJSON
          = withObject "RemoveHeldAccountsResponse"
              (\ o ->
                 RemoveHeldAccountsResponse' <$>
                   (o .:? "statuses" .!= mempty))

instance ToJSON RemoveHeldAccountsResponse where
        toJSON RemoveHeldAccountsResponse'{..}
          = object
              (catMaybes [("statuses" .=) <$> _rharStatuses])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

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

-- | Progress information for an export.
--
-- /See:/ 'exportStats' smart constructor.
data ExportStats =
  ExportStats'
    { _esTotalArtifactCount :: !(Maybe (Textual Int64))
    , _esSizeInBytes :: !(Maybe (Textual Int64))
    , _esExportedArtifactCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esTotalArtifactCount'
--
-- * 'esSizeInBytes'
--
-- * 'esExportedArtifactCount'
exportStats
    :: ExportStats
exportStats =
  ExportStats'
    { _esTotalArtifactCount = Nothing
    , _esSizeInBytes = Nothing
    , _esExportedArtifactCount = Nothing
    }


-- | The number of messages or files to be exported.
esTotalArtifactCount :: Lens' ExportStats (Maybe Int64)
esTotalArtifactCount
  = lens _esTotalArtifactCount
      (\ s a -> s{_esTotalArtifactCount = a})
      . mapping _Coerce

-- | The size of export in bytes.
esSizeInBytes :: Lens' ExportStats (Maybe Int64)
esSizeInBytes
  = lens _esSizeInBytes
      (\ s a -> s{_esSizeInBytes = a})
      . mapping _Coerce

-- | The number of messages or files already processed for export.
esExportedArtifactCount :: Lens' ExportStats (Maybe Int64)
esExportedArtifactCount
  = lens _esExportedArtifactCount
      (\ s a -> s{_esExportedArtifactCount = a})
      . mapping _Coerce

instance FromJSON ExportStats where
        parseJSON
          = withObject "ExportStats"
              (\ o ->
                 ExportStats' <$>
                   (o .:? "totalArtifactCount") <*>
                     (o .:? "sizeInBytes")
                     <*> (o .:? "exportedArtifactCount"))

instance ToJSON ExportStats where
        toJSON ExportStats'{..}
          = object
              (catMaybes
                 [("totalArtifactCount" .=) <$> _esTotalArtifactCount,
                  ("sizeInBytes" .=) <$> _esSizeInBytes,
                  ("exportedArtifactCount" .=) <$>
                    _esExportedArtifactCount])

-- | The Chat spaces to search
--
-- /See:/ 'hangoutsChatInfo' smart constructor.
newtype HangoutsChatInfo =
  HangoutsChatInfo'
    { _hciRoomId :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HangoutsChatInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hciRoomId'
hangoutsChatInfo
    :: HangoutsChatInfo
hangoutsChatInfo = HangoutsChatInfo' {_hciRoomId = Nothing}


-- | A list of Chat spaces IDs, as provided by the [Chat
-- API](https:\/\/developers.google.com\/hangouts\/chat).
hciRoomId :: Lens' HangoutsChatInfo [Text]
hciRoomId
  = lens _hciRoomId (\ s a -> s{_hciRoomId = a}) .
      _Default
      . _Coerce

instance FromJSON HangoutsChatInfo where
        parseJSON
          = withObject "HangoutsChatInfo"
              (\ o ->
                 HangoutsChatInfo' <$> (o .:? "roomId" .!= mempty))

instance ToJSON HangoutsChatInfo where
        toJSON HangoutsChatInfo'{..}
          = object (catMaybes [("roomId" .=) <$> _hciRoomId])

-- | Remove a list of accounts from a hold.
--
-- /See:/ 'removeHeldAccountsRequest' smart constructor.
newtype RemoveHeldAccountsRequest =
  RemoveHeldAccountsRequest'
    { _rharAccountIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveHeldAccountsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rharAccountIds'
removeHeldAccountsRequest
    :: RemoveHeldAccountsRequest
removeHeldAccountsRequest =
  RemoveHeldAccountsRequest' {_rharAccountIds = Nothing}


-- | The account IDs of the accounts to remove from the hold.
rharAccountIds :: Lens' RemoveHeldAccountsRequest [Text]
rharAccountIds
  = lens _rharAccountIds
      (\ s a -> s{_rharAccountIds = a})
      . _Default
      . _Coerce

instance FromJSON RemoveHeldAccountsRequest where
        parseJSON
          = withObject "RemoveHeldAccountsRequest"
              (\ o ->
                 RemoveHeldAccountsRequest' <$>
                   (o .:? "accountIds" .!= mempty))

instance ToJSON RemoveHeldAccountsRequest where
        toJSON RemoveHeldAccountsRequest'{..}
          = object
              (catMaybes [("accountIds" .=) <$> _rharAccountIds])

-- | Definition of the response for method ListSaveQuery.
--
-- /See:/ 'listSavedQueriesResponse' smart constructor.
data ListSavedQueriesResponse =
  ListSavedQueriesResponse'
    { _lsqrNextPageToken :: !(Maybe Text)
    , _lsqrSavedQueries :: !(Maybe [SavedQuery])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSavedQueriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsqrNextPageToken'
--
-- * 'lsqrSavedQueries'
listSavedQueriesResponse
    :: ListSavedQueriesResponse
listSavedQueriesResponse =
  ListSavedQueriesResponse'
    {_lsqrNextPageToken = Nothing, _lsqrSavedQueries = Nothing}


-- | Page token to retrieve the next page of results in the list. If this is
-- empty, then there are no more saved queries to list.
lsqrNextPageToken :: Lens' ListSavedQueriesResponse (Maybe Text)
lsqrNextPageToken
  = lens _lsqrNextPageToken
      (\ s a -> s{_lsqrNextPageToken = a})

-- | List of saved queries.
lsqrSavedQueries :: Lens' ListSavedQueriesResponse [SavedQuery]
lsqrSavedQueries
  = lens _lsqrSavedQueries
      (\ s a -> s{_lsqrSavedQueries = a})
      . _Default
      . _Coerce

instance FromJSON ListSavedQueriesResponse where
        parseJSON
          = withObject "ListSavedQueriesResponse"
              (\ o ->
                 ListSavedQueriesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "savedQueries" .!= mempty))

instance ToJSON ListSavedQueriesResponse where
        toJSON ListSavedQueriesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsqrNextPageToken,
                  ("savedQueries" .=) <$> _lsqrSavedQueries])

-- | Undelete a matter by ID.
--
-- /See:/ 'undeleteMatterRequest' smart constructor.
data UndeleteMatterRequest =
  UndeleteMatterRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteMatterRequest' with the minimum fields required to make a request.
--
undeleteMatterRequest
    :: UndeleteMatterRequest
undeleteMatterRequest = UndeleteMatterRequest'


instance FromJSON UndeleteMatterRequest where
        parseJSON
          = withObject "UndeleteMatterRequest"
              (\ o -> pure UndeleteMatterRequest')

instance ToJSON UndeleteMatterRequest where
        toJSON = const emptyObject

-- | Options for Drive holds.
--
-- /See:/ 'heldDriveQuery' smart constructor.
data HeldDriveQuery =
  HeldDriveQuery'
    { _hdqIncludeTeamDriveFiles :: !(Maybe Bool)
    , _hdqIncludeSharedDriveFiles :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HeldDriveQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hdqIncludeTeamDriveFiles'
--
-- * 'hdqIncludeSharedDriveFiles'
heldDriveQuery
    :: HeldDriveQuery
heldDriveQuery =
  HeldDriveQuery'
    {_hdqIncludeTeamDriveFiles = Nothing, _hdqIncludeSharedDriveFiles = Nothing}


-- | To include files in Team Drives in the hold, set to **true**.
hdqIncludeTeamDriveFiles :: Lens' HeldDriveQuery (Maybe Bool)
hdqIncludeTeamDriveFiles
  = lens _hdqIncludeTeamDriveFiles
      (\ s a -> s{_hdqIncludeTeamDriveFiles = a})

-- | To include files in shared drives in the hold, set to **true**.
hdqIncludeSharedDriveFiles :: Lens' HeldDriveQuery (Maybe Bool)
hdqIncludeSharedDriveFiles
  = lens _hdqIncludeSharedDriveFiles
      (\ s a -> s{_hdqIncludeSharedDriveFiles = a})

instance FromJSON HeldDriveQuery where
        parseJSON
          = withObject "HeldDriveQuery"
              (\ o ->
                 HeldDriveQuery' <$>
                   (o .:? "includeTeamDriveFiles") <*>
                     (o .:? "includeSharedDriveFiles"))

instance ToJSON HeldDriveQuery where
        toJSON HeldDriveQuery'{..}
          = object
              (catMaybes
                 [("includeTeamDriveFiles" .=) <$>
                    _hdqIncludeTeamDriveFiles,
                  ("includeSharedDriveFiles" .=) <$>
                    _hdqIncludeSharedDriveFiles])

-- | Additional options for Google Chat search
--
-- /See:/ 'hangoutsChatOptions' smart constructor.
newtype HangoutsChatOptions =
  HangoutsChatOptions'
    { _hcoIncludeRooms :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HangoutsChatOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcoIncludeRooms'
hangoutsChatOptions
    :: HangoutsChatOptions
hangoutsChatOptions = HangoutsChatOptions' {_hcoIncludeRooms = Nothing}


-- | For searches by account or organizational unit, set to **true** to
-- include rooms.
hcoIncludeRooms :: Lens' HangoutsChatOptions (Maybe Bool)
hcoIncludeRooms
  = lens _hcoIncludeRooms
      (\ s a -> s{_hcoIncludeRooms = a})

instance FromJSON HangoutsChatOptions where
        parseJSON
          = withObject "HangoutsChatOptions"
              (\ o ->
                 HangoutsChatOptions' <$> (o .:? "includeRooms"))

instance ToJSON HangoutsChatOptions where
        toJSON HangoutsChatOptions'{..}
          = object
              (catMaybes
                 [("includeRooms" .=) <$> _hcoIncludeRooms])

-- | Gmail and classic Hangouts-specific count metrics.
--
-- /See:/ 'mailCountResult' smart constructor.
data MailCountResult =
  MailCountResult'
    { _mcrAccountCounts :: !(Maybe [AccountCount])
    , _mcrAccountCountErrors :: !(Maybe [AccountCountError])
    , _mcrMatchingAccountsCount :: !(Maybe (Textual Int64))
    , _mcrQueriedAccountsCount :: !(Maybe (Textual Int64))
    , _mcrNonQueryableAccounts :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MailCountResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrAccountCounts'
--
-- * 'mcrAccountCountErrors'
--
-- * 'mcrMatchingAccountsCount'
--
-- * 'mcrQueriedAccountsCount'
--
-- * 'mcrNonQueryableAccounts'
mailCountResult
    :: MailCountResult
mailCountResult =
  MailCountResult'
    { _mcrAccountCounts = Nothing
    , _mcrAccountCountErrors = Nothing
    , _mcrMatchingAccountsCount = Nothing
    , _mcrQueriedAccountsCount = Nothing
    , _mcrNonQueryableAccounts = Nothing
    }


-- | Subtotal count per matching account that have more than zero messages.
mcrAccountCounts :: Lens' MailCountResult [AccountCount]
mcrAccountCounts
  = lens _mcrAccountCounts
      (\ s a -> s{_mcrAccountCounts = a})
      . _Default
      . _Coerce

-- | Errors occurred when querying these accounts.
mcrAccountCountErrors :: Lens' MailCountResult [AccountCountError]
mcrAccountCountErrors
  = lens _mcrAccountCountErrors
      (\ s a -> s{_mcrAccountCountErrors = a})
      . _Default
      . _Coerce

-- | Total number of accounts that can be queried and have more than zero
-- messages.
mcrMatchingAccountsCount :: Lens' MailCountResult (Maybe Int64)
mcrMatchingAccountsCount
  = lens _mcrMatchingAccountsCount
      (\ s a -> s{_mcrMatchingAccountsCount = a})
      . mapping _Coerce

-- | Total number of accounts involved in this count operation.
mcrQueriedAccountsCount :: Lens' MailCountResult (Maybe Int64)
mcrQueriedAccountsCount
  = lens _mcrQueriedAccountsCount
      (\ s a -> s{_mcrQueriedAccountsCount = a})
      . mapping _Coerce

-- | When **DataScope** is **HELD_DATA**, the number of accounts in the
-- request that are not queried because they are not on hold. For other
-- data scopes, this field is not set.
mcrNonQueryableAccounts :: Lens' MailCountResult [Text]
mcrNonQueryableAccounts
  = lens _mcrNonQueryableAccounts
      (\ s a -> s{_mcrNonQueryableAccounts = a})
      . _Default
      . _Coerce

instance FromJSON MailCountResult where
        parseJSON
          = withObject "MailCountResult"
              (\ o ->
                 MailCountResult' <$>
                   (o .:? "accountCounts" .!= mempty) <*>
                     (o .:? "accountCountErrors" .!= mempty)
                     <*> (o .:? "matchingAccountsCount")
                     <*> (o .:? "queriedAccountsCount")
                     <*> (o .:? "nonQueryableAccounts" .!= mempty))

instance ToJSON MailCountResult where
        toJSON MailCountResult'{..}
          = object
              (catMaybes
                 [("accountCounts" .=) <$> _mcrAccountCounts,
                  ("accountCountErrors" .=) <$> _mcrAccountCountErrors,
                  ("matchingAccountsCount" .=) <$>
                    _mcrMatchingAccountsCount,
                  ("queriedAccountsCount" .=) <$>
                    _mcrQueriedAccountsCount,
                  ("nonQueryableAccounts" .=) <$>
                    _mcrNonQueryableAccounts])

-- | Long running operation metadata for CountArtifacts.
--
-- /See:/ 'countArtifactsMetadata' smart constructor.
data CountArtifactsMetadata =
  CountArtifactsMetadata'
    { _camStartTime :: !(Maybe DateTime')
    , _camMatterId :: !(Maybe Text)
    , _camEndTime :: !(Maybe DateTime')
    , _camQuery :: !(Maybe Query)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CountArtifactsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camStartTime'
--
-- * 'camMatterId'
--
-- * 'camEndTime'
--
-- * 'camQuery'
countArtifactsMetadata
    :: CountArtifactsMetadata
countArtifactsMetadata =
  CountArtifactsMetadata'
    { _camStartTime = Nothing
    , _camMatterId = Nothing
    , _camEndTime = Nothing
    , _camQuery = Nothing
    }


-- | Creation time of count operation.
camStartTime :: Lens' CountArtifactsMetadata (Maybe UTCTime)
camStartTime
  = lens _camStartTime (\ s a -> s{_camStartTime = a})
      . mapping _DateTime

-- | The matter ID of the associated matter.
camMatterId :: Lens' CountArtifactsMetadata (Maybe Text)
camMatterId
  = lens _camMatterId (\ s a -> s{_camMatterId = a})

-- | End time of count operation. Available when operation is done.
camEndTime :: Lens' CountArtifactsMetadata (Maybe UTCTime)
camEndTime
  = lens _camEndTime (\ s a -> s{_camEndTime = a}) .
      mapping _DateTime

-- | The search query from the request.
camQuery :: Lens' CountArtifactsMetadata (Maybe Query)
camQuery = lens _camQuery (\ s a -> s{_camQuery = a})

instance FromJSON CountArtifactsMetadata where
        parseJSON
          = withObject "CountArtifactsMetadata"
              (\ o ->
                 CountArtifactsMetadata' <$>
                   (o .:? "startTime") <*> (o .:? "matterId") <*>
                     (o .:? "endTime")
                     <*> (o .:? "query"))

instance ToJSON CountArtifactsMetadata where
        toJSON CountArtifactsMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _camStartTime,
                  ("matterId" .=) <$> _camMatterId,
                  ("endTime" .=) <$> _camEndTime,
                  ("query" .=) <$> _camQuery])

-- | Add an account with the permission specified. The role cannot be owner.
-- If an account already has a role in the matter, the existing role is
-- overwritten.
--
-- /See:/ 'addMatterPermissionsRequest' smart constructor.
data AddMatterPermissionsRequest =
  AddMatterPermissionsRequest'
    { _amprSendEmails :: !(Maybe Bool)
    , _amprCcMe :: !(Maybe Bool)
    , _amprMatterPermission :: !(Maybe MatterPermission)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddMatterPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amprSendEmails'
--
-- * 'amprCcMe'
--
-- * 'amprMatterPermission'
addMatterPermissionsRequest
    :: AddMatterPermissionsRequest
addMatterPermissionsRequest =
  AddMatterPermissionsRequest'
    { _amprSendEmails = Nothing
    , _amprCcMe = Nothing
    , _amprMatterPermission = Nothing
    }


-- | To send a notification email to the added account, set to **true**. To
-- not send a notification email, set to **false**.
amprSendEmails :: Lens' AddMatterPermissionsRequest (Maybe Bool)
amprSendEmails
  = lens _amprSendEmails
      (\ s a -> s{_amprSendEmails = a})

-- | Only relevant if **sendEmails** is **true**. To CC the requestor in the
-- email message, set to **true**. To not CC requestor, set to **false**.
amprCcMe :: Lens' AddMatterPermissionsRequest (Maybe Bool)
amprCcMe = lens _amprCcMe (\ s a -> s{_amprCcMe = a})

-- | The account and its role to add.
amprMatterPermission :: Lens' AddMatterPermissionsRequest (Maybe MatterPermission)
amprMatterPermission
  = lens _amprMatterPermission
      (\ s a -> s{_amprMatterPermission = a})

instance FromJSON AddMatterPermissionsRequest where
        parseJSON
          = withObject "AddMatterPermissionsRequest"
              (\ o ->
                 AddMatterPermissionsRequest' <$>
                   (o .:? "sendEmails") <*> (o .:? "ccMe") <*>
                     (o .:? "matterPermission"))

instance ToJSON AddMatterPermissionsRequest where
        toJSON AddMatterPermissionsRequest'{..}
          = object
              (catMaybes
                 [("sendEmails" .=) <$> _amprSendEmails,
                  ("ccMe" .=) <$> _amprCcMe,
                  ("matterPermission" .=) <$> _amprMatterPermission])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Represents a matter. To work with Vault resources, the account must have
-- the [required Vault privileges]
-- (https:\/\/support.google.com\/vault\/answer\/2799699) and access to the
-- matter. To access a matter, the account must have created the matter,
-- have the matter shared with them, or have the **View All Matters**
-- privilege.
--
-- /See:/ 'matter' smart constructor.
data Matter =
  Matter'
    { _mState :: !(Maybe MatterState)
    , _mMatterPermissions :: !(Maybe [MatterPermission])
    , _mMatterId :: !(Maybe Text)
    , _mName :: !(Maybe Text)
    , _mDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Matter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mState'
--
-- * 'mMatterPermissions'
--
-- * 'mMatterId'
--
-- * 'mName'
--
-- * 'mDescription'
matter
    :: Matter
matter =
  Matter'
    { _mState = Nothing
    , _mMatterPermissions = Nothing
    , _mMatterId = Nothing
    , _mName = Nothing
    , _mDescription = Nothing
    }


-- | The state of the matter.
mState :: Lens' Matter (Maybe MatterState)
mState = lens _mState (\ s a -> s{_mState = a})

-- | Lists the users and their permission for the matter. Currently there is
-- no programmer defined limit on the number of permissions a matter can
-- have.
mMatterPermissions :: Lens' Matter [MatterPermission]
mMatterPermissions
  = lens _mMatterPermissions
      (\ s a -> s{_mMatterPermissions = a})
      . _Default
      . _Coerce

-- | The matter ID, which is generated by the server. Leave blank when
-- creating a matter.
mMatterId :: Lens' Matter (Maybe Text)
mMatterId
  = lens _mMatterId (\ s a -> s{_mMatterId = a})

-- | The name of the matter.
mName :: Lens' Matter (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | An optional description for the matter.
mDescription :: Lens' Matter (Maybe Text)
mDescription
  = lens _mDescription (\ s a -> s{_mDescription = a})

instance FromJSON Matter where
        parseJSON
          = withObject "Matter"
              (\ o ->
                 Matter' <$>
                   (o .:? "state") <*>
                     (o .:? "matterPermissions" .!= mempty)
                     <*> (o .:? "matterId")
                     <*> (o .:? "name")
                     <*> (o .:? "description"))

instance ToJSON Matter where
        toJSON Matter'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _mState,
                  ("matterPermissions" .=) <$> _mMatterPermissions,
                  ("matterId" .=) <$> _mMatterId,
                  ("name" .=) <$> _mName,
                  ("description" .=) <$> _mDescription])

-- | Response to a CloseMatterRequest.
--
-- /See:/ 'closeMatterResponse' smart constructor.
newtype CloseMatterResponse =
  CloseMatterResponse'
    { _cmrMatter :: Maybe Matter
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloseMatterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmrMatter'
closeMatterResponse
    :: CloseMatterResponse
closeMatterResponse = CloseMatterResponse' {_cmrMatter = Nothing}


-- | The updated matter, with state **CLOSED**.
cmrMatter :: Lens' CloseMatterResponse (Maybe Matter)
cmrMatter
  = lens _cmrMatter (\ s a -> s{_cmrMatter = a})

instance FromJSON CloseMatterResponse where
        parseJSON
          = withObject "CloseMatterResponse"
              (\ o -> CloseMatterResponse' <$> (o .:? "matter"))

instance ToJSON CloseMatterResponse where
        toJSON CloseMatterResponse'{..}
          = object (catMaybes [("matter" .=) <$> _cmrMatter])

-- | Query options for Gmail holds.
--
-- /See:/ 'heldMailQuery' smart constructor.
data HeldMailQuery =
  HeldMailQuery'
    { _hmqStartTime :: !(Maybe DateTime')
    , _hmqTerms :: !(Maybe Text)
    , _hmqEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HeldMailQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmqStartTime'
--
-- * 'hmqTerms'
--
-- * 'hmqEndTime'
heldMailQuery
    :: HeldMailQuery
heldMailQuery =
  HeldMailQuery'
    {_hmqStartTime = Nothing, _hmqTerms = Nothing, _hmqEndTime = Nothing}


-- | The start time for the query. Specify in GMT. The value is rounded to 12
-- AM on the specified date.
hmqStartTime :: Lens' HeldMailQuery (Maybe UTCTime)
hmqStartTime
  = lens _hmqStartTime (\ s a -> s{_hmqStartTime = a})
      . mapping _DateTime

-- | The [search
-- operators](https:\/\/support.google.com\/vault\/answer\/2474474) used to
-- refine the messages covered by the hold.
hmqTerms :: Lens' HeldMailQuery (Maybe Text)
hmqTerms = lens _hmqTerms (\ s a -> s{_hmqTerms = a})

-- | The end time for the query. Specify in GMT. The value is rounded to 12
-- AM on the specified date.
hmqEndTime :: Lens' HeldMailQuery (Maybe UTCTime)
hmqEndTime
  = lens _hmqEndTime (\ s a -> s{_hmqEndTime = a}) .
      mapping _DateTime

instance FromJSON HeldMailQuery where
        parseJSON
          = withObject "HeldMailQuery"
              (\ o ->
                 HeldMailQuery' <$>
                   (o .:? "startTime") <*> (o .:? "terms") <*>
                     (o .:? "endTime"))

instance ToJSON HeldMailQuery where
        toJSON HeldMailQuery'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _hmqStartTime,
                  ("terms" .=) <$> _hmqTerms,
                  ("endTime" .=) <$> _hmqEndTime])

-- | Returns a list of the accounts covered by a hold.
--
-- /See:/ 'listHeldAccountsResponse' smart constructor.
newtype ListHeldAccountsResponse =
  ListHeldAccountsResponse'
    { _lharAccounts :: Maybe [HeldAccount]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListHeldAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lharAccounts'
listHeldAccountsResponse
    :: ListHeldAccountsResponse
listHeldAccountsResponse = ListHeldAccountsResponse' {_lharAccounts = Nothing}


-- | The held accounts on a hold.
lharAccounts :: Lens' ListHeldAccountsResponse [HeldAccount]
lharAccounts
  = lens _lharAccounts (\ s a -> s{_lharAccounts = a})
      . _Default
      . _Coerce

instance FromJSON ListHeldAccountsResponse where
        parseJSON
          = withObject "ListHeldAccountsResponse"
              (\ o ->
                 ListHeldAccountsResponse' <$>
                   (o .:? "accounts" .!= mempty))

instance ToJSON ListHeldAccountsResponse where
        toJSON ListHeldAccountsResponse'{..}
          = object
              (catMaybes [("accounts" .=) <$> _lharAccounts])

-- | The exports for a matter.
--
-- /See:/ 'listExportsResponse' smart constructor.
data ListExportsResponse =
  ListExportsResponse'
    { _lerNextPageToken :: !(Maybe Text)
    , _lerExports :: !(Maybe [Export])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListExportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerNextPageToken'
--
-- * 'lerExports'
listExportsResponse
    :: ListExportsResponse
listExportsResponse =
  ListExportsResponse' {_lerNextPageToken = Nothing, _lerExports = Nothing}


-- | Page token to retrieve the next page of results in the list.
lerNextPageToken :: Lens' ListExportsResponse (Maybe Text)
lerNextPageToken
  = lens _lerNextPageToken
      (\ s a -> s{_lerNextPageToken = a})

-- | The list of exports.
lerExports :: Lens' ListExportsResponse [Export]
lerExports
  = lens _lerExports (\ s a -> s{_lerExports = a}) .
      _Default
      . _Coerce

instance FromJSON ListExportsResponse where
        parseJSON
          = withObject "ListExportsResponse"
              (\ o ->
                 ListExportsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "exports" .!= mempty))

instance ToJSON ListExportsResponse where
        toJSON ListExportsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lerNextPageToken,
                  ("exports" .=) <$> _lerExports])

-- | Additional options for Voice search
--
-- /See:/ 'voiceOptions' smart constructor.
newtype VoiceOptions =
  VoiceOptions'
    { _voCoveredData :: Maybe [VoiceOptionsCoveredDataItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VoiceOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'voCoveredData'
voiceOptions
    :: VoiceOptions
voiceOptions = VoiceOptions' {_voCoveredData = Nothing}


-- | Datatypes to search
voCoveredData :: Lens' VoiceOptions [VoiceOptionsCoveredDataItem]
voCoveredData
  = lens _voCoveredData
      (\ s a -> s{_voCoveredData = a})
      . _Default
      . _Coerce

instance FromJSON VoiceOptions where
        parseJSON
          = withObject "VoiceOptions"
              (\ o ->
                 VoiceOptions' <$> (o .:? "coveredData" .!= mempty))

instance ToJSON VoiceOptions where
        toJSON VoiceOptions'{..}
          = object
              (catMaybes [("coveredData" .=) <$> _voCoveredData])

-- | The organizational unit covered by a hold. This structure is immutable.
--
-- /See:/ 'heldOrgUnit' smart constructor.
data HeldOrgUnit =
  HeldOrgUnit'
    { _houHoldTime :: !(Maybe DateTime')
    , _houOrgUnitId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HeldOrgUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'houHoldTime'
--
-- * 'houOrgUnitId'
heldOrgUnit
    :: HeldOrgUnit
heldOrgUnit = HeldOrgUnit' {_houHoldTime = Nothing, _houOrgUnitId = Nothing}


-- | When the organizational unit was put on hold. This property is
-- immutable.
houHoldTime :: Lens' HeldOrgUnit (Maybe UTCTime)
houHoldTime
  = lens _houHoldTime (\ s a -> s{_houHoldTime = a}) .
      mapping _DateTime

-- | The organizational unit\'s immutable ID as provided by the [Admin
-- SDK](https:\/\/developers.google.com\/admin-sdk\/).
houOrgUnitId :: Lens' HeldOrgUnit (Maybe Text)
houOrgUnitId
  = lens _houOrgUnitId (\ s a -> s{_houOrgUnitId = a})

instance FromJSON HeldOrgUnit where
        parseJSON
          = withObject "HeldOrgUnit"
              (\ o ->
                 HeldOrgUnit' <$>
                   (o .:? "holdTime") <*> (o .:? "orgUnitId"))

instance ToJSON HeldOrgUnit where
        toJSON HeldOrgUnit'{..}
          = object
              (catMaybes
                 [("holdTime" .=) <$> _houHoldTime,
                  ("orgUnitId" .=) <$> _houOrgUnitId])

-- | Provides the list of matters.
--
-- /See:/ 'listMattersResponse' smart constructor.
data ListMattersResponse =
  ListMattersResponse'
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrMatters :: !(Maybe [Matter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListMattersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrMatters'
listMattersResponse
    :: ListMattersResponse
listMattersResponse =
  ListMattersResponse' {_lmrNextPageToken = Nothing, _lmrMatters = Nothing}


-- | Page token to retrieve the next page of results in the list.
lmrNextPageToken :: Lens' ListMattersResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | List of matters.
lmrMatters :: Lens' ListMattersResponse [Matter]
lmrMatters
  = lens _lmrMatters (\ s a -> s{_lmrMatters = a}) .
      _Default
      . _Coerce

instance FromJSON ListMattersResponse where
        parseJSON
          = withObject "ListMattersResponse"
              (\ o ->
                 ListMattersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "matters" .!= mempty))

instance ToJSON ListMattersResponse where
        toJSON ListMattersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("matters" .=) <$> _lmrMatters])

-- | Reopen a matter by ID.
--
-- /See:/ 'reopenMatterRequest' smart constructor.
data ReopenMatterRequest =
  ReopenMatterRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReopenMatterRequest' with the minimum fields required to make a request.
--
reopenMatterRequest
    :: ReopenMatterRequest
reopenMatterRequest = ReopenMatterRequest'


instance FromJSON ReopenMatterRequest where
        parseJSON
          = withObject "ReopenMatterRequest"
              (\ o -> pure ReopenMatterRequest')

instance ToJSON ReopenMatterRequest where
        toJSON = const emptyObject

-- | Options for Voice holds.
--
-- /See:/ 'heldVoiceQuery' smart constructor.
newtype HeldVoiceQuery =
  HeldVoiceQuery'
    { _hvqCoveredData :: Maybe [HeldVoiceQueryCoveredDataItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HeldVoiceQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hvqCoveredData'
heldVoiceQuery
    :: HeldVoiceQuery
heldVoiceQuery = HeldVoiceQuery' {_hvqCoveredData = Nothing}


-- | A list of data types covered by the hold. Should be non-empty. Order
-- does not matter and duplicates are ignored.
hvqCoveredData :: Lens' HeldVoiceQuery [HeldVoiceQueryCoveredDataItem]
hvqCoveredData
  = lens _hvqCoveredData
      (\ s a -> s{_hvqCoveredData = a})
      . _Default
      . _Coerce

instance FromJSON HeldVoiceQuery where
        parseJSON
          = withObject "HeldVoiceQuery"
              (\ o ->
                 HeldVoiceQuery' <$> (o .:? "coveredData" .!= mempty))

instance ToJSON HeldVoiceQuery where
        toJSON HeldVoiceQuery'{..}
          = object
              (catMaybes [("coveredData" .=) <$> _hvqCoveredData])

-- | Remove an account as a matter collaborator.
--
-- /See:/ 'removeMatterPermissionsRequest' smart constructor.
newtype RemoveMatterPermissionsRequest =
  RemoveMatterPermissionsRequest'
    { _rmprAccountId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoveMatterPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmprAccountId'
removeMatterPermissionsRequest
    :: RemoveMatterPermissionsRequest
removeMatterPermissionsRequest =
  RemoveMatterPermissionsRequest' {_rmprAccountId = Nothing}


-- | The account ID.
rmprAccountId :: Lens' RemoveMatterPermissionsRequest (Maybe Text)
rmprAccountId
  = lens _rmprAccountId
      (\ s a -> s{_rmprAccountId = a})

instance FromJSON RemoveMatterPermissionsRequest
         where
        parseJSON
          = withObject "RemoveMatterPermissionsRequest"
              (\ o ->
                 RemoveMatterPermissionsRequest' <$>
                   (o .:? "accountId"))

instance ToJSON RemoveMatterPermissionsRequest where
        toJSON RemoveMatterPermissionsRequest'{..}
          = object
              (catMaybes [("accountId" .=) <$> _rmprAccountId])

-- | Additional options for exports
--
-- /See:/ 'exportOptions' smart constructor.
data ExportOptions =
  ExportOptions'
    { _eoHangoutsChatOptions :: !(Maybe HangoutsChatExportOptions)
    , _eoVoiceOptions :: !(Maybe VoiceExportOptions)
    , _eoDriveOptions :: !(Maybe DriveExportOptions)
    , _eoGroupsOptions :: !(Maybe GroupsExportOptions)
    , _eoRegion :: !(Maybe ExportOptionsRegion)
    , _eoMailOptions :: !(Maybe MailExportOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eoHangoutsChatOptions'
--
-- * 'eoVoiceOptions'
--
-- * 'eoDriveOptions'
--
-- * 'eoGroupsOptions'
--
-- * 'eoRegion'
--
-- * 'eoMailOptions'
exportOptions
    :: ExportOptions
exportOptions =
  ExportOptions'
    { _eoHangoutsChatOptions = Nothing
    , _eoVoiceOptions = Nothing
    , _eoDriveOptions = Nothing
    , _eoGroupsOptions = Nothing
    , _eoRegion = Nothing
    , _eoMailOptions = Nothing
    }


-- | Options for Chat exports.
eoHangoutsChatOptions :: Lens' ExportOptions (Maybe HangoutsChatExportOptions)
eoHangoutsChatOptions
  = lens _eoHangoutsChatOptions
      (\ s a -> s{_eoHangoutsChatOptions = a})

-- | Options for Voice exports.
eoVoiceOptions :: Lens' ExportOptions (Maybe VoiceExportOptions)
eoVoiceOptions
  = lens _eoVoiceOptions
      (\ s a -> s{_eoVoiceOptions = a})

-- | Options for Drive exports.
eoDriveOptions :: Lens' ExportOptions (Maybe DriveExportOptions)
eoDriveOptions
  = lens _eoDriveOptions
      (\ s a -> s{_eoDriveOptions = a})

-- | Options for Groups exports.
eoGroupsOptions :: Lens' ExportOptions (Maybe GroupsExportOptions)
eoGroupsOptions
  = lens _eoGroupsOptions
      (\ s a -> s{_eoGroupsOptions = a})

-- | The requested data region for the export.
eoRegion :: Lens' ExportOptions (Maybe ExportOptionsRegion)
eoRegion = lens _eoRegion (\ s a -> s{_eoRegion = a})

-- | Options for Gmail exports.
eoMailOptions :: Lens' ExportOptions (Maybe MailExportOptions)
eoMailOptions
  = lens _eoMailOptions
      (\ s a -> s{_eoMailOptions = a})

instance FromJSON ExportOptions where
        parseJSON
          = withObject "ExportOptions"
              (\ o ->
                 ExportOptions' <$>
                   (o .:? "hangoutsChatOptions") <*>
                     (o .:? "voiceOptions")
                     <*> (o .:? "driveOptions")
                     <*> (o .:? "groupsOptions")
                     <*> (o .:? "region")
                     <*> (o .:? "mailOptions"))

instance ToJSON ExportOptions where
        toJSON ExportOptions'{..}
          = object
              (catMaybes
                 [("hangoutsChatOptions" .=) <$>
                    _eoHangoutsChatOptions,
                  ("voiceOptions" .=) <$> _eoVoiceOptions,
                  ("driveOptions" .=) <$> _eoDriveOptions,
                  ("groupsOptions" .=) <$> _eoGroupsOptions,
                  ("region" .=) <$> _eoRegion,
                  ("mailOptions" .=) <$> _eoMailOptions])

-- | Close a matter by ID.
--
-- /See:/ 'closeMatterRequest' smart constructor.
data CloseMatterRequest =
  CloseMatterRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloseMatterRequest' with the minimum fields required to make a request.
--
closeMatterRequest
    :: CloseMatterRequest
closeMatterRequest = CloseMatterRequest'


instance FromJSON CloseMatterRequest where
        parseJSON
          = withObject "CloseMatterRequest"
              (\ o -> pure CloseMatterRequest')

instance ToJSON CloseMatterRequest where
        toJSON = const emptyObject

-- | Additional options for Drive search
--
-- /See:/ 'driveOptions' smart constructor.
data DriveOptions =
  DriveOptions'
    { _doIncludeSharedDrives :: !(Maybe Bool)
    , _doIncludeTeamDrives :: !(Maybe Bool)
    , _doVersionDate :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doIncludeSharedDrives'
--
-- * 'doIncludeTeamDrives'
--
-- * 'doVersionDate'
driveOptions
    :: DriveOptions
driveOptions =
  DriveOptions'
    { _doIncludeSharedDrives = Nothing
    , _doIncludeTeamDrives = Nothing
    , _doVersionDate = Nothing
    }


-- | Set to **true** to include shared drives.
doIncludeSharedDrives :: Lens' DriveOptions (Maybe Bool)
doIncludeSharedDrives
  = lens _doIncludeSharedDrives
      (\ s a -> s{_doIncludeSharedDrives = a})

-- | Set to true to include Team Drive.
doIncludeTeamDrives :: Lens' DriveOptions (Maybe Bool)
doIncludeTeamDrives
  = lens _doIncludeTeamDrives
      (\ s a -> s{_doIncludeTeamDrives = a})

-- | Search the current version of the Drive file, but export the contents of
-- the last version saved before 12:00 AM UTC on the specified date. Enter
-- the date in UTC.
doVersionDate :: Lens' DriveOptions (Maybe UTCTime)
doVersionDate
  = lens _doVersionDate
      (\ s a -> s{_doVersionDate = a})
      . mapping _DateTime

instance FromJSON DriveOptions where
        parseJSON
          = withObject "DriveOptions"
              (\ o ->
                 DriveOptions' <$>
                   (o .:? "includeSharedDrives") <*>
                     (o .:? "includeTeamDrives")
                     <*> (o .:? "versionDate"))

instance ToJSON DriveOptions where
        toJSON DriveOptions'{..}
          = object
              (catMaybes
                 [("includeSharedDrives" .=) <$>
                    _doIncludeSharedDrives,
                  ("includeTeamDrives" .=) <$> _doIncludeTeamDrives,
                  ("versionDate" .=) <$> _doVersionDate])

-- | The status of each account creation, and the **HeldAccount**, if
-- successful.
--
-- /See:/ 'addHeldAccountResult' smart constructor.
data AddHeldAccountResult =
  AddHeldAccountResult'
    { _aharStatus :: !(Maybe Status)
    , _aharAccount :: !(Maybe HeldAccount)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddHeldAccountResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aharStatus'
--
-- * 'aharAccount'
addHeldAccountResult
    :: AddHeldAccountResult
addHeldAccountResult =
  AddHeldAccountResult' {_aharStatus = Nothing, _aharAccount = Nothing}


-- | Reports the request status. If it failed, returns an error message.
aharStatus :: Lens' AddHeldAccountResult (Maybe Status)
aharStatus
  = lens _aharStatus (\ s a -> s{_aharStatus = a})

-- | Returned when the account was successfully created.
aharAccount :: Lens' AddHeldAccountResult (Maybe HeldAccount)
aharAccount
  = lens _aharAccount (\ s a -> s{_aharAccount = a})

instance FromJSON AddHeldAccountResult where
        parseJSON
          = withObject "AddHeldAccountResult"
              (\ o ->
                 AddHeldAccountResult' <$>
                   (o .:? "status") <*> (o .:? "account"))

instance ToJSON AddHeldAccountResult where
        toJSON AddHeldAccountResult'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _aharStatus,
                  ("account" .=) <$> _aharAccount])

-- | The definition of a saved query. To work with Vault resources, the
-- account must have the [required Vault
-- privileges](https:\/\/support.google.com\/vault\/answer\/2799699) and
-- access to the matter. To access a matter, the account must have created
-- the matter, have the matter shared with them, or have the **View All
-- Matters** privilege.
--
-- /See:/ 'savedQuery' smart constructor.
data SavedQuery =
  SavedQuery'
    { _sqSavedQueryId :: !(Maybe Text)
    , _sqMatterId :: !(Maybe Text)
    , _sqQuery :: !(Maybe Query)
    , _sqDisplayName :: !(Maybe Text)
    , _sqCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SavedQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqSavedQueryId'
--
-- * 'sqMatterId'
--
-- * 'sqQuery'
--
-- * 'sqDisplayName'
--
-- * 'sqCreateTime'
savedQuery
    :: SavedQuery
savedQuery =
  SavedQuery'
    { _sqSavedQueryId = Nothing
    , _sqMatterId = Nothing
    , _sqQuery = Nothing
    , _sqDisplayName = Nothing
    , _sqCreateTime = Nothing
    }


-- | A unique identifier for the saved query.
sqSavedQueryId :: Lens' SavedQuery (Maybe Text)
sqSavedQueryId
  = lens _sqSavedQueryId
      (\ s a -> s{_sqSavedQueryId = a})

-- | Output only. The matter ID of the matter the saved query is saved in.
-- The server does not use this field during create and always uses matter
-- ID in the URL.
sqMatterId :: Lens' SavedQuery (Maybe Text)
sqMatterId
  = lens _sqMatterId (\ s a -> s{_sqMatterId = a})

-- | The search parameters of the saved query.
sqQuery :: Lens' SavedQuery (Maybe Query)
sqQuery = lens _sqQuery (\ s a -> s{_sqQuery = a})

-- | The name of the saved query.
sqDisplayName :: Lens' SavedQuery (Maybe Text)
sqDisplayName
  = lens _sqDisplayName
      (\ s a -> s{_sqDisplayName = a})

-- | Output only. The server-generated timestamp when the saved query was
-- created.
sqCreateTime :: Lens' SavedQuery (Maybe UTCTime)
sqCreateTime
  = lens _sqCreateTime (\ s a -> s{_sqCreateTime = a})
      . mapping _DateTime

instance FromJSON SavedQuery where
        parseJSON
          = withObject "SavedQuery"
              (\ o ->
                 SavedQuery' <$>
                   (o .:? "savedQueryId") <*> (o .:? "matterId") <*>
                     (o .:? "query")
                     <*> (o .:? "displayName")
                     <*> (o .:? "createTime"))

instance ToJSON SavedQuery where
        toJSON SavedQuery'{..}
          = object
              (catMaybes
                 [("savedQueryId" .=) <$> _sqSavedQueryId,
                  ("matterId" .=) <$> _sqMatterId,
                  ("query" .=) <$> _sqQuery,
                  ("displayName" .=) <$> _sqDisplayName,
                  ("createTime" .=) <$> _sqCreateTime])

-- | A hold. A hold prevents the specified Google Workspace service from
-- purging data for specific accounts or all members of an organizational
-- unit. To work with Vault resources, the account must have the [required
-- Vault privileges] (https:\/\/support.google.com\/vault\/answer\/2799699)
-- and access to the matter. To access a matter, the account must have
-- created the matter, have the matter shared with them, or have the **View
-- All Matters** privilege.
--
-- /See:/ 'hold' smart constructor.
data Hold =
  Hold'
    { _hOrgUnit :: !(Maybe HeldOrgUnit)
    , _hHoldId :: !(Maybe Text)
    , _hAccounts :: !(Maybe [HeldAccount])
    , _hUpdateTime :: !(Maybe DateTime')
    , _hName :: !(Maybe Text)
    , _hQuery :: !(Maybe CorpusQuery)
    , _hCorpus :: !(Maybe HoldCorpus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hold' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hOrgUnit'
--
-- * 'hHoldId'
--
-- * 'hAccounts'
--
-- * 'hUpdateTime'
--
-- * 'hName'
--
-- * 'hQuery'
--
-- * 'hCorpus'
hold
    :: Hold
hold =
  Hold'
    { _hOrgUnit = Nothing
    , _hHoldId = Nothing
    , _hAccounts = Nothing
    , _hUpdateTime = Nothing
    , _hName = Nothing
    , _hQuery = Nothing
    , _hCorpus = Nothing
    }


-- | If set, the hold applies to all members of the organizational unit and
-- **accounts** must be empty. This property is mutable. For Groups holds,
-- set **accounts**.
hOrgUnit :: Lens' Hold (Maybe HeldOrgUnit)
hOrgUnit = lens _hOrgUnit (\ s a -> s{_hOrgUnit = a})

-- | The unique immutable ID of the hold. Assigned during creation.
hHoldId :: Lens' Hold (Maybe Text)
hHoldId = lens _hHoldId (\ s a -> s{_hHoldId = a})

-- | If set, the hold applies to the specified accounts and **orgUnit** must
-- be empty.
hAccounts :: Lens' Hold [HeldAccount]
hAccounts
  = lens _hAccounts (\ s a -> s{_hAccounts = a}) .
      _Default
      . _Coerce

-- | The last time this hold was modified.
hUpdateTime :: Lens' Hold (Maybe UTCTime)
hUpdateTime
  = lens _hUpdateTime (\ s a -> s{_hUpdateTime = a}) .
      mapping _DateTime

-- | The name of the hold.
hName :: Lens' Hold (Maybe Text)
hName = lens _hName (\ s a -> s{_hName = a})

-- | Service-specific options. If set, **CorpusQuery** must match
-- **CorpusType**.
hQuery :: Lens' Hold (Maybe CorpusQuery)
hQuery = lens _hQuery (\ s a -> s{_hQuery = a})

-- | The service to be searched.
hCorpus :: Lens' Hold (Maybe HoldCorpus)
hCorpus = lens _hCorpus (\ s a -> s{_hCorpus = a})

instance FromJSON Hold where
        parseJSON
          = withObject "Hold"
              (\ o ->
                 Hold' <$>
                   (o .:? "orgUnit") <*> (o .:? "holdId") <*>
                     (o .:? "accounts" .!= mempty)
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "query")
                     <*> (o .:? "corpus"))

instance ToJSON Hold where
        toJSON Hold'{..}
          = object
              (catMaybes
                 [("orgUnit" .=) <$> _hOrgUnit,
                  ("holdId" .=) <$> _hHoldId,
                  ("accounts" .=) <$> _hAccounts,
                  ("updateTime" .=) <$> _hUpdateTime,
                  ("name" .=) <$> _hName, ("query" .=) <$> _hQuery,
                  ("corpus" .=) <$> _hCorpus])

-- | The query definition used for search and export.
--
-- /See:/ 'query' smart constructor.
data Query =
  Query'
    { _qAccountInfo :: !(Maybe AccountInfo)
    , _qTeamDriveInfo :: !(Maybe TeamDriveInfo)
    , _qOrgUnitInfo :: !(Maybe OrgUnitInfo)
    , _qStartTime :: !(Maybe DateTime')
    , _qTerms :: !(Maybe Text)
    , _qHangoutsChatInfo :: !(Maybe HangoutsChatInfo)
    , _qHangoutsChatOptions :: !(Maybe HangoutsChatOptions)
    , _qVoiceOptions :: !(Maybe VoiceOptions)
    , _qDriveOptions :: !(Maybe DriveOptions)
    , _qMethod :: !(Maybe QueryMethod)
    , _qEndTime :: !(Maybe DateTime')
    , _qDataScope :: !(Maybe QueryDataScope)
    , _qCorpus :: !(Maybe QueryCorpus)
    , _qTimeZone :: !(Maybe Text)
    , _qSharedDriveInfo :: !(Maybe SharedDriveInfo)
    , _qMailOptions :: !(Maybe MailOptions)
    , _qSearchMethod :: !(Maybe QuerySearchMethod)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Query' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qAccountInfo'
--
-- * 'qTeamDriveInfo'
--
-- * 'qOrgUnitInfo'
--
-- * 'qStartTime'
--
-- * 'qTerms'
--
-- * 'qHangoutsChatInfo'
--
-- * 'qHangoutsChatOptions'
--
-- * 'qVoiceOptions'
--
-- * 'qDriveOptions'
--
-- * 'qMethod'
--
-- * 'qEndTime'
--
-- * 'qDataScope'
--
-- * 'qCorpus'
--
-- * 'qTimeZone'
--
-- * 'qSharedDriveInfo'
--
-- * 'qMailOptions'
--
-- * 'qSearchMethod'
query
    :: Query
query =
  Query'
    { _qAccountInfo = Nothing
    , _qTeamDriveInfo = Nothing
    , _qOrgUnitInfo = Nothing
    , _qStartTime = Nothing
    , _qTerms = Nothing
    , _qHangoutsChatInfo = Nothing
    , _qHangoutsChatOptions = Nothing
    , _qVoiceOptions = Nothing
    , _qDriveOptions = Nothing
    , _qMethod = Nothing
    , _qEndTime = Nothing
    , _qDataScope = Nothing
    , _qCorpus = Nothing
    , _qTimeZone = Nothing
    , _qSharedDriveInfo = Nothing
    , _qMailOptions = Nothing
    , _qSearchMethod = Nothing
    }


-- | Required when **SearchMethod** is **ACCOUNT**.
qAccountInfo :: Lens' Query (Maybe AccountInfo)
qAccountInfo
  = lens _qAccountInfo (\ s a -> s{_qAccountInfo = a})

-- | Required when **SearchMethod** is **TEAM_DRIVE**.
qTeamDriveInfo :: Lens' Query (Maybe TeamDriveInfo)
qTeamDriveInfo
  = lens _qTeamDriveInfo
      (\ s a -> s{_qTeamDriveInfo = a})

-- | Required when **SearchMethod** is **ORG_UNIT**.
qOrgUnitInfo :: Lens' Query (Maybe OrgUnitInfo)
qOrgUnitInfo
  = lens _qOrgUnitInfo (\ s a -> s{_qOrgUnitInfo = a})

-- | The start time for the search query. Specify in GMT. The value is
-- rounded to 12 AM on the specified date.
qStartTime :: Lens' Query (Maybe UTCTime)
qStartTime
  = lens _qStartTime (\ s a -> s{_qStartTime = a}) .
      mapping _DateTime

-- | Service-specific [search
-- operators](https:\/\/support.google.com\/vault\/answer\/2474474) to
-- filter search results.
qTerms :: Lens' Query (Maybe Text)
qTerms = lens _qTerms (\ s a -> s{_qTerms = a})

-- | Required when **SearchMethod** is **ROOM**. (read-only)
qHangoutsChatInfo :: Lens' Query (Maybe HangoutsChatInfo)
qHangoutsChatInfo
  = lens _qHangoutsChatInfo
      (\ s a -> s{_qHangoutsChatInfo = a})

-- | Set Chat search-specific options. (read-only)
qHangoutsChatOptions :: Lens' Query (Maybe HangoutsChatOptions)
qHangoutsChatOptions
  = lens _qHangoutsChatOptions
      (\ s a -> s{_qHangoutsChatOptions = a})

-- | Set Voice search-specific options.
qVoiceOptions :: Lens' Query (Maybe VoiceOptions)
qVoiceOptions
  = lens _qVoiceOptions
      (\ s a -> s{_qVoiceOptions = a})

-- | Set Drive search-specific options.
qDriveOptions :: Lens' Query (Maybe DriveOptions)
qDriveOptions
  = lens _qDriveOptions
      (\ s a -> s{_qDriveOptions = a})

-- | The entity to search. This field replaces **searchMethod** to support
-- shared drives. When **searchMethod** is **TEAM_DRIVE**, the response of
-- this field is **SHARED_DRIVE**.
qMethod :: Lens' Query (Maybe QueryMethod)
qMethod = lens _qMethod (\ s a -> s{_qMethod = a})

-- | The end time for the search query. Specify in GMT. The value is rounded
-- to 12 AM on the specified date.
qEndTime :: Lens' Query (Maybe UTCTime)
qEndTime
  = lens _qEndTime (\ s a -> s{_qEndTime = a}) .
      mapping _DateTime

-- | The data source to search.
qDataScope :: Lens' Query (Maybe QueryDataScope)
qDataScope
  = lens _qDataScope (\ s a -> s{_qDataScope = a})

-- | The Google Workspace service to search.
qCorpus :: Lens' Query (Maybe QueryCorpus)
qCorpus = lens _qCorpus (\ s a -> s{_qCorpus = a})

-- | The time zone name. It should be an IANA TZ name, such as
-- \"America\/Los_Angeles\". For a list of time zone names, see [Time
-- Zone](https:\/\/en.wikipedia.org\/wiki\/List_of_tz_database_time_zones).
-- For more information about how Vault uses time zones, see [the Vault
-- help center](https:\/\/support.google.com\/vault\/answer\/6092995#time).
qTimeZone :: Lens' Query (Maybe Text)
qTimeZone
  = lens _qTimeZone (\ s a -> s{_qTimeZone = a})

-- | Required when **SearchMethod** is **SHARED_DRIVE**.
qSharedDriveInfo :: Lens' Query (Maybe SharedDriveInfo)
qSharedDriveInfo
  = lens _qSharedDriveInfo
      (\ s a -> s{_qSharedDriveInfo = a})

-- | Set Gmail search-specific options.
qMailOptions :: Lens' Query (Maybe MailOptions)
qMailOptions
  = lens _qMailOptions (\ s a -> s{_qMailOptions = a})

-- | The search method to use.
qSearchMethod :: Lens' Query (Maybe QuerySearchMethod)
qSearchMethod
  = lens _qSearchMethod
      (\ s a -> s{_qSearchMethod = a})

instance FromJSON Query where
        parseJSON
          = withObject "Query"
              (\ o ->
                 Query' <$>
                   (o .:? "accountInfo") <*> (o .:? "teamDriveInfo") <*>
                     (o .:? "orgUnitInfo")
                     <*> (o .:? "startTime")
                     <*> (o .:? "terms")
                     <*> (o .:? "hangoutsChatInfo")
                     <*> (o .:? "hangoutsChatOptions")
                     <*> (o .:? "voiceOptions")
                     <*> (o .:? "driveOptions")
                     <*> (o .:? "method")
                     <*> (o .:? "endTime")
                     <*> (o .:? "dataScope")
                     <*> (o .:? "corpus")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "sharedDriveInfo")
                     <*> (o .:? "mailOptions")
                     <*> (o .:? "searchMethod"))

instance ToJSON Query where
        toJSON Query'{..}
          = object
              (catMaybes
                 [("accountInfo" .=) <$> _qAccountInfo,
                  ("teamDriveInfo" .=) <$> _qTeamDriveInfo,
                  ("orgUnitInfo" .=) <$> _qOrgUnitInfo,
                  ("startTime" .=) <$> _qStartTime,
                  ("terms" .=) <$> _qTerms,
                  ("hangoutsChatInfo" .=) <$> _qHangoutsChatInfo,
                  ("hangoutsChatOptions" .=) <$> _qHangoutsChatOptions,
                  ("voiceOptions" .=) <$> _qVoiceOptions,
                  ("driveOptions" .=) <$> _qDriveOptions,
                  ("method" .=) <$> _qMethod,
                  ("endTime" .=) <$> _qEndTime,
                  ("dataScope" .=) <$> _qDataScope,
                  ("corpus" .=) <$> _qCorpus,
                  ("timeZone" .=) <$> _qTimeZone,
                  ("sharedDriveInfo" .=) <$> _qSharedDriveInfo,
                  ("mailOptions" .=) <$> _qMailOptions,
                  ("searchMethod" .=) <$> _qSearchMethod])

-- | An error that occurred when querying a specific account
--
-- /See:/ 'accountCountError' smart constructor.
data AccountCountError =
  AccountCountError'
    { _aceAccount :: !(Maybe UserInfo)
    , _aceErrorType :: !(Maybe AccountCountErrorErrorType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountCountError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aceAccount'
--
-- * 'aceErrorType'
accountCountError
    :: AccountCountError
accountCountError =
  AccountCountError' {_aceAccount = Nothing, _aceErrorType = Nothing}


-- | Account owner.
aceAccount :: Lens' AccountCountError (Maybe UserInfo)
aceAccount
  = lens _aceAccount (\ s a -> s{_aceAccount = a})

-- | Account query error.
aceErrorType :: Lens' AccountCountError (Maybe AccountCountErrorErrorType)
aceErrorType
  = lens _aceErrorType (\ s a -> s{_aceErrorType = a})

instance FromJSON AccountCountError where
        parseJSON
          = withObject "AccountCountError"
              (\ o ->
                 AccountCountError' <$>
                   (o .:? "account") <*> (o .:? "errorType"))

instance ToJSON AccountCountError where
        toJSON AccountCountError'{..}
          = object
              (catMaybes
                 [("account" .=) <$> _aceAccount,
                  ("errorType" .=) <$> _aceErrorType])

-- | The results count for each account.
--
-- /See:/ 'accountCount' smart constructor.
data AccountCount =
  AccountCount'
    { _acCount :: !(Maybe (Textual Int64))
    , _acAccount :: !(Maybe UserInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acCount'
--
-- * 'acAccount'
accountCount
    :: AccountCount
accountCount = AccountCount' {_acCount = Nothing, _acAccount = Nothing}


-- | The number of results (messages or files) found for this account.
acCount :: Lens' AccountCount (Maybe Int64)
acCount
  = lens _acCount (\ s a -> s{_acCount = a}) .
      mapping _Coerce

-- | Account owner.
acAccount :: Lens' AccountCount (Maybe UserInfo)
acAccount
  = lens _acAccount (\ s a -> s{_acAccount = a})

instance FromJSON AccountCount where
        parseJSON
          = withObject "AccountCount"
              (\ o ->
                 AccountCount' <$>
                   (o .:? "count") <*> (o .:? "account"))

instance ToJSON AccountCount where
        toJSON AccountCount'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _acCount,
                  ("account" .=) <$> _acAccount])

-- | The options for Voice exports.
--
-- /See:/ 'voiceExportOptions' smart constructor.
newtype VoiceExportOptions =
  VoiceExportOptions'
    { _veoExportFormat :: Maybe VoiceExportOptionsExportFormat
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VoiceExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veoExportFormat'
voiceExportOptions
    :: VoiceExportOptions
voiceExportOptions = VoiceExportOptions' {_veoExportFormat = Nothing}


-- | The file format for exported text messages.
veoExportFormat :: Lens' VoiceExportOptions (Maybe VoiceExportOptionsExportFormat)
veoExportFormat
  = lens _veoExportFormat
      (\ s a -> s{_veoExportFormat = a})

instance FromJSON VoiceExportOptions where
        parseJSON
          = withObject "VoiceExportOptions"
              (\ o ->
                 VoiceExportOptions' <$> (o .:? "exportFormat"))

instance ToJSON VoiceExportOptions where
        toJSON VoiceExportOptions'{..}
          = object
              (catMaybes
                 [("exportFormat" .=) <$> _veoExportFormat])

-- | Response for batch create held accounts.
--
-- /See:/ 'addHeldAccountsResponse' smart constructor.
newtype AddHeldAccountsResponse =
  AddHeldAccountsResponse'
    { _aharResponses :: Maybe [AddHeldAccountResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddHeldAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aharResponses'
addHeldAccountsResponse
    :: AddHeldAccountsResponse
addHeldAccountsResponse = AddHeldAccountsResponse' {_aharResponses = Nothing}


-- | The list of responses, in the same order as the batch request.
aharResponses :: Lens' AddHeldAccountsResponse [AddHeldAccountResult]
aharResponses
  = lens _aharResponses
      (\ s a -> s{_aharResponses = a})
      . _Default
      . _Coerce

instance FromJSON AddHeldAccountsResponse where
        parseJSON
          = withObject "AddHeldAccountsResponse"
              (\ o ->
                 AddHeldAccountsResponse' <$>
                   (o .:? "responses" .!= mempty))

instance ToJSON AddHeldAccountsResponse where
        toJSON AddHeldAccountsResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _aharResponses])

-- | Options for Gmail exports.
--
-- /See:/ 'mailExportOptions' smart constructor.
data MailExportOptions =
  MailExportOptions'
    { _meoExportFormat :: !(Maybe MailExportOptionsExportFormat)
    , _meoShowConfidentialModeContent :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MailExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meoExportFormat'
--
-- * 'meoShowConfidentialModeContent'
mailExportOptions
    :: MailExportOptions
mailExportOptions =
  MailExportOptions'
    {_meoExportFormat = Nothing, _meoShowConfidentialModeContent = Nothing}


-- | The file format for exported messages.
meoExportFormat :: Lens' MailExportOptions (Maybe MailExportOptionsExportFormat)
meoExportFormat
  = lens _meoExportFormat
      (\ s a -> s{_meoExportFormat = a})

-- | To export confidential mode content, set to **true**.
meoShowConfidentialModeContent :: Lens' MailExportOptions (Maybe Bool)
meoShowConfidentialModeContent
  = lens _meoShowConfidentialModeContent
      (\ s a -> s{_meoShowConfidentialModeContent = a})

instance FromJSON MailExportOptions where
        parseJSON
          = withObject "MailExportOptions"
              (\ o ->
                 MailExportOptions' <$>
                   (o .:? "exportFormat") <*>
                     (o .:? "showConfidentialModeContent"))

instance ToJSON MailExportOptions where
        toJSON MailExportOptions'{..}
          = object
              (catMaybes
                 [("exportFormat" .=) <$> _meoExportFormat,
                  ("showConfidentialModeContent" .=) <$>
                    _meoShowConfidentialModeContent])

-- | Definition of the response for method CountArtifacts.
--
-- /See:/ 'countArtifactsResponse' smart constructor.
data CountArtifactsResponse =
  CountArtifactsResponse'
    { _carMailCountResult :: !(Maybe MailCountResult)
    , _carGroupsCountResult :: !(Maybe GroupsCountResult)
    , _carTotalCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CountArtifactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carMailCountResult'
--
-- * 'carGroupsCountResult'
--
-- * 'carTotalCount'
countArtifactsResponse
    :: CountArtifactsResponse
countArtifactsResponse =
  CountArtifactsResponse'
    { _carMailCountResult = Nothing
    , _carGroupsCountResult = Nothing
    , _carTotalCount = Nothing
    }


-- | Count metrics for Gmail and classic Hangouts.
carMailCountResult :: Lens' CountArtifactsResponse (Maybe MailCountResult)
carMailCountResult
  = lens _carMailCountResult
      (\ s a -> s{_carMailCountResult = a})

-- | Count metrics for Groups.
carGroupsCountResult :: Lens' CountArtifactsResponse (Maybe GroupsCountResult)
carGroupsCountResult
  = lens _carGroupsCountResult
      (\ s a -> s{_carGroupsCountResult = a})

-- | Total count of messages.
carTotalCount :: Lens' CountArtifactsResponse (Maybe Int64)
carTotalCount
  = lens _carTotalCount
      (\ s a -> s{_carTotalCount = a})
      . mapping _Coerce

instance FromJSON CountArtifactsResponse where
        parseJSON
          = withObject "CountArtifactsResponse"
              (\ o ->
                 CountArtifactsResponse' <$>
                   (o .:? "mailCountResult") <*>
                     (o .:? "groupsCountResult")
                     <*> (o .:? "totalCount"))

instance ToJSON CountArtifactsResponse where
        toJSON CountArtifactsResponse'{..}
          = object
              (catMaybes
                 [("mailCountResult" .=) <$> _carMailCountResult,
                  ("groupsCountResult" .=) <$> _carGroupsCountResult,
                  ("totalCount" .=) <$> _carTotalCount])

-- | The holds for a matter.
--
-- /See:/ 'listHoldsResponse' smart constructor.
data ListHoldsResponse =
  ListHoldsResponse'
    { _lhrNextPageToken :: !(Maybe Text)
    , _lhrHolds :: !(Maybe [Hold])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListHoldsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhrNextPageToken'
--
-- * 'lhrHolds'
listHoldsResponse
    :: ListHoldsResponse
listHoldsResponse =
  ListHoldsResponse' {_lhrNextPageToken = Nothing, _lhrHolds = Nothing}


-- | Page token to retrieve the next page of results in the list. If this is
-- empty, then there are no more holds to list.
lhrNextPageToken :: Lens' ListHoldsResponse (Maybe Text)
lhrNextPageToken
  = lens _lhrNextPageToken
      (\ s a -> s{_lhrNextPageToken = a})

-- | The list of holds.
lhrHolds :: Lens' ListHoldsResponse [Hold]
lhrHolds
  = lens _lhrHolds (\ s a -> s{_lhrHolds = a}) .
      _Default
      . _Coerce

instance FromJSON ListHoldsResponse where
        parseJSON
          = withObject "ListHoldsResponse"
              (\ o ->
                 ListHoldsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "holds" .!= mempty))

instance ToJSON ListHoldsResponse where
        toJSON ListHoldsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lhrNextPageToken,
                  ("holds" .=) <$> _lhrHolds])

-- | Options for Groups exports.
--
-- /See:/ 'groupsExportOptions' smart constructor.
newtype GroupsExportOptions =
  GroupsExportOptions'
    { _geoExportFormat :: Maybe GroupsExportOptionsExportFormat
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geoExportFormat'
groupsExportOptions
    :: GroupsExportOptions
groupsExportOptions = GroupsExportOptions' {_geoExportFormat = Nothing}


-- | The file format for exported messages.
geoExportFormat :: Lens' GroupsExportOptions (Maybe GroupsExportOptionsExportFormat)
geoExportFormat
  = lens _geoExportFormat
      (\ s a -> s{_geoExportFormat = a})

instance FromJSON GroupsExportOptions where
        parseJSON
          = withObject "GroupsExportOptions"
              (\ o ->
                 GroupsExportOptions' <$> (o .:? "exportFormat"))

instance ToJSON GroupsExportOptions where
        toJSON GroupsExportOptions'{..}
          = object
              (catMaybes
                 [("exportFormat" .=) <$> _geoExportFormat])

-- | Users can be matter owners or collaborators. Each matter has only one
-- owner. All others users who can access the matter are collaborators.
-- When an account is purged, its corresponding MatterPermission resources
-- cease to exist.
--
-- /See:/ 'matterPermission' smart constructor.
data MatterPermission =
  MatterPermission'
    { _mpRole :: !(Maybe MatterPermissionRole)
    , _mpAccountId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MatterPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpRole'
--
-- * 'mpAccountId'
matterPermission
    :: MatterPermission
matterPermission = MatterPermission' {_mpRole = Nothing, _mpAccountId = Nothing}


-- | The user\'s role for the matter.
mpRole :: Lens' MatterPermission (Maybe MatterPermissionRole)
mpRole = lens _mpRole (\ s a -> s{_mpRole = a})

-- | The account ID, as provided by the [Admin
-- SDK](https:\/\/developers.google.com\/admin-sdk\/).
mpAccountId :: Lens' MatterPermission (Maybe Text)
mpAccountId
  = lens _mpAccountId (\ s a -> s{_mpAccountId = a})

instance FromJSON MatterPermission where
        parseJSON
          = withObject "MatterPermission"
              (\ o ->
                 MatterPermission' <$>
                   (o .:? "role") <*> (o .:? "accountId"))

instance ToJSON MatterPermission where
        toJSON MatterPermission'{..}
          = object
              (catMaybes
                 [("role" .=) <$> _mpRole,
                  ("accountId" .=) <$> _mpAccountId])

-- | Options for Drive exports.
--
-- /See:/ 'driveExportOptions' smart constructor.
newtype DriveExportOptions =
  DriveExportOptions'
    { _deoIncludeAccessInfo :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveExportOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deoIncludeAccessInfo'
driveExportOptions
    :: DriveExportOptions
driveExportOptions = DriveExportOptions' {_deoIncludeAccessInfo = Nothing}


-- | To include access level information for users with [indirect
-- access](https:\/\/support.google.com\/vault\/answer\/6099459#metadata)
-- to files, set to **true**.
deoIncludeAccessInfo :: Lens' DriveExportOptions (Maybe Bool)
deoIncludeAccessInfo
  = lens _deoIncludeAccessInfo
      (\ s a -> s{_deoIncludeAccessInfo = a})

instance FromJSON DriveExportOptions where
        parseJSON
          = withObject "DriveExportOptions"
              (\ o ->
                 DriveExportOptions' <$> (o .:? "includeAccessInfo"))

instance ToJSON DriveExportOptions where
        toJSON DriveExportOptions'{..}
          = object
              (catMaybes
                 [("includeAccessInfo" .=) <$> _deoIncludeAccessInfo])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Query options for group holds.
--
-- /See:/ 'heldGroupsQuery' smart constructor.
data HeldGroupsQuery =
  HeldGroupsQuery'
    { _hgqStartTime :: !(Maybe DateTime')
    , _hgqTerms :: !(Maybe Text)
    , _hgqEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HeldGroupsQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hgqStartTime'
--
-- * 'hgqTerms'
--
-- * 'hgqEndTime'
heldGroupsQuery
    :: HeldGroupsQuery
heldGroupsQuery =
  HeldGroupsQuery'
    {_hgqStartTime = Nothing, _hgqTerms = Nothing, _hgqEndTime = Nothing}


-- | The start time for the query. Specify in GMT. The value is rounded to 12
-- AM on the specified date.
hgqStartTime :: Lens' HeldGroupsQuery (Maybe UTCTime)
hgqStartTime
  = lens _hgqStartTime (\ s a -> s{_hgqStartTime = a})
      . mapping _DateTime

-- | The [search
-- operators](https:\/\/support.google.com\/vault\/answer\/2474474) used to
-- refine the messages covered by the hold.
hgqTerms :: Lens' HeldGroupsQuery (Maybe Text)
hgqTerms = lens _hgqTerms (\ s a -> s{_hgqTerms = a})

-- | The end time for the query. Specify in GMT. The value is rounded to 12
-- AM on the specified date.
hgqEndTime :: Lens' HeldGroupsQuery (Maybe UTCTime)
hgqEndTime
  = lens _hgqEndTime (\ s a -> s{_hgqEndTime = a}) .
      mapping _DateTime

instance FromJSON HeldGroupsQuery where
        parseJSON
          = withObject "HeldGroupsQuery"
              (\ o ->
                 HeldGroupsQuery' <$>
                   (o .:? "startTime") <*> (o .:? "terms") <*>
                     (o .:? "endTime"))

instance ToJSON HeldGroupsQuery where
        toJSON HeldGroupsQuery'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _hgqStartTime,
                  ("terms" .=) <$> _hgqTerms,
                  ("endTime" .=) <$> _hgqEndTime])

-- | The shared drives to search
--
-- /See:/ 'sharedDriveInfo' smart constructor.
newtype SharedDriveInfo =
  SharedDriveInfo'
    { _sdiSharedDriveIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SharedDriveInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiSharedDriveIds'
sharedDriveInfo
    :: SharedDriveInfo
sharedDriveInfo = SharedDriveInfo' {_sdiSharedDriveIds = Nothing}


-- | A list of shared drive IDs, as provided by the [Drive
-- API](https:\/\/developers.google.com\/drive).
sdiSharedDriveIds :: Lens' SharedDriveInfo [Text]
sdiSharedDriveIds
  = lens _sdiSharedDriveIds
      (\ s a -> s{_sdiSharedDriveIds = a})
      . _Default
      . _Coerce

instance FromJSON SharedDriveInfo where
        parseJSON
          = withObject "SharedDriveInfo"
              (\ o ->
                 SharedDriveInfo' <$>
                   (o .:? "sharedDriveIds" .!= mempty))

instance ToJSON SharedDriveInfo where
        toJSON SharedDriveInfo'{..}
          = object
              (catMaybes
                 [("sharedDriveIds" .=) <$> _sdiSharedDriveIds])

-- | Response to a ReopenMatterRequest.
--
-- /See:/ 'reopenMatterResponse' smart constructor.
newtype ReopenMatterResponse =
  ReopenMatterResponse'
    { _rmrMatter :: Maybe Matter
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReopenMatterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmrMatter'
reopenMatterResponse
    :: ReopenMatterResponse
reopenMatterResponse = ReopenMatterResponse' {_rmrMatter = Nothing}


-- | The updated matter, with state **OPEN**.
rmrMatter :: Lens' ReopenMatterResponse (Maybe Matter)
rmrMatter
  = lens _rmrMatter (\ s a -> s{_rmrMatter = a})

instance FromJSON ReopenMatterResponse where
        parseJSON
          = withObject "ReopenMatterResponse"
              (\ o -> ReopenMatterResponse' <$> (o .:? "matter"))

instance ToJSON ReopenMatterResponse where
        toJSON ReopenMatterResponse'{..}
          = object (catMaybes [("matter" .=) <$> _rmrMatter])

-- | The export file in Cloud Storage
--
-- /See:/ 'cloudStorageFile' smart constructor.
data CloudStorageFile =
  CloudStorageFile'
    { _csfObjectName :: !(Maybe Text)
    , _csfSize :: !(Maybe (Textual Int64))
    , _csfBucketName :: !(Maybe Text)
    , _csfMD5Hash :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudStorageFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csfObjectName'
--
-- * 'csfSize'
--
-- * 'csfBucketName'
--
-- * 'csfMD5Hash'
cloudStorageFile
    :: CloudStorageFile
cloudStorageFile =
  CloudStorageFile'
    { _csfObjectName = Nothing
    , _csfSize = Nothing
    , _csfBucketName = Nothing
    , _csfMD5Hash = Nothing
    }


-- | The name of the Cloud Storage object for the export file. You can use
-- this value in the [Cloud Storage JSON or XML
-- APIs](https:\/\/cloud.google.com\/storage\/docs\/apis).
csfObjectName :: Lens' CloudStorageFile (Maybe Text)
csfObjectName
  = lens _csfObjectName
      (\ s a -> s{_csfObjectName = a})

-- | The export file size.
csfSize :: Lens' CloudStorageFile (Maybe Int64)
csfSize
  = lens _csfSize (\ s a -> s{_csfSize = a}) .
      mapping _Coerce

-- | The name of the Cloud Storage bucket for the export file. You can use
-- this value in the [Cloud Storage JSON or XML
-- APIs](https:\/\/cloud.google.com\/storage\/docs\/apis), but not to list
-- the bucket contents. Instead, you can [get individual export
-- files](https:\/\/cloud.google.com\/storage\/docs\/json_api\/v1\/objects\/get)
-- by object name.
csfBucketName :: Lens' CloudStorageFile (Maybe Text)
csfBucketName
  = lens _csfBucketName
      (\ s a -> s{_csfBucketName = a})

-- | The md5 hash of the file.
csfMD5Hash :: Lens' CloudStorageFile (Maybe Text)
csfMD5Hash
  = lens _csfMD5Hash (\ s a -> s{_csfMD5Hash = a})

instance FromJSON CloudStorageFile where
        parseJSON
          = withObject "CloudStorageFile"
              (\ o ->
                 CloudStorageFile' <$>
                   (o .:? "objectName") <*> (o .:? "size") <*>
                     (o .:? "bucketName")
                     <*> (o .:? "md5Hash"))

instance ToJSON CloudStorageFile where
        toJSON CloudStorageFile'{..}
          = object
              (catMaybes
                 [("objectName" .=) <$> _csfObjectName,
                  ("size" .=) <$> _csfSize,
                  ("bucketName" .=) <$> _csfBucketName,
                  ("md5Hash" .=) <$> _csfMD5Hash])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Groups specific count metrics.
--
-- /See:/ 'groupsCountResult' smart constructor.
data GroupsCountResult =
  GroupsCountResult'
    { _gcrAccountCounts :: !(Maybe [AccountCount])
    , _gcrAccountCountErrors :: !(Maybe [AccountCountError])
    , _gcrMatchingAccountsCount :: !(Maybe (Textual Int64))
    , _gcrQueriedAccountsCount :: !(Maybe (Textual Int64))
    , _gcrNonQueryableAccounts :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsCountResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrAccountCounts'
--
-- * 'gcrAccountCountErrors'
--
-- * 'gcrMatchingAccountsCount'
--
-- * 'gcrQueriedAccountsCount'
--
-- * 'gcrNonQueryableAccounts'
groupsCountResult
    :: GroupsCountResult
groupsCountResult =
  GroupsCountResult'
    { _gcrAccountCounts = Nothing
    , _gcrAccountCountErrors = Nothing
    , _gcrMatchingAccountsCount = Nothing
    , _gcrQueriedAccountsCount = Nothing
    , _gcrNonQueryableAccounts = Nothing
    }


-- | Subtotal count per matching account that have more than zero messages.
gcrAccountCounts :: Lens' GroupsCountResult [AccountCount]
gcrAccountCounts
  = lens _gcrAccountCounts
      (\ s a -> s{_gcrAccountCounts = a})
      . _Default
      . _Coerce

-- | Error occurred when querying these accounts.
gcrAccountCountErrors :: Lens' GroupsCountResult [AccountCountError]
gcrAccountCountErrors
  = lens _gcrAccountCountErrors
      (\ s a -> s{_gcrAccountCountErrors = a})
      . _Default
      . _Coerce

-- | Total number of accounts that can be queried and have more than zero
-- messages.
gcrMatchingAccountsCount :: Lens' GroupsCountResult (Maybe Int64)
gcrMatchingAccountsCount
  = lens _gcrMatchingAccountsCount
      (\ s a -> s{_gcrMatchingAccountsCount = a})
      . mapping _Coerce

-- | Total number of accounts involved in this count operation.
gcrQueriedAccountsCount :: Lens' GroupsCountResult (Maybe Int64)
gcrQueriedAccountsCount
  = lens _gcrQueriedAccountsCount
      (\ s a -> s{_gcrQueriedAccountsCount = a})
      . mapping _Coerce

-- | When **DataScope** is **HELD_DATA**, these accounts in the request are
-- not queried because they are not on hold. For other data scope, this
-- field is not set.
gcrNonQueryableAccounts :: Lens' GroupsCountResult [Text]
gcrNonQueryableAccounts
  = lens _gcrNonQueryableAccounts
      (\ s a -> s{_gcrNonQueryableAccounts = a})
      . _Default
      . _Coerce

instance FromJSON GroupsCountResult where
        parseJSON
          = withObject "GroupsCountResult"
              (\ o ->
                 GroupsCountResult' <$>
                   (o .:? "accountCounts" .!= mempty) <*>
                     (o .:? "accountCountErrors" .!= mempty)
                     <*> (o .:? "matchingAccountsCount")
                     <*> (o .:? "queriedAccountsCount")
                     <*> (o .:? "nonQueryableAccounts" .!= mempty))

instance ToJSON GroupsCountResult where
        toJSON GroupsCountResult'{..}
          = object
              (catMaybes
                 [("accountCounts" .=) <$> _gcrAccountCounts,
                  ("accountCountErrors" .=) <$> _gcrAccountCountErrors,
                  ("matchingAccountsCount" .=) <$>
                    _gcrMatchingAccountsCount,
                  ("queriedAccountsCount" .=) <$>
                    _gcrQueriedAccountsCount,
                  ("nonQueryableAccounts" .=) <$>
                    _gcrNonQueryableAccounts])

-- | Additional options for Gmail search
--
-- /See:/ 'mailOptions' smart constructor.
newtype MailOptions =
  MailOptions'
    { _moExcludeDrafts :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MailOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moExcludeDrafts'
mailOptions
    :: MailOptions
mailOptions = MailOptions' {_moExcludeDrafts = Nothing}


-- | Set to **true** to exclude drafts.
moExcludeDrafts :: Lens' MailOptions (Maybe Bool)
moExcludeDrafts
  = lens _moExcludeDrafts
      (\ s a -> s{_moExcludeDrafts = a})

instance FromJSON MailOptions where
        parseJSON
          = withObject "MailOptions"
              (\ o -> MailOptions' <$> (o .:? "excludeDrafts"))

instance ToJSON MailOptions where
        toJSON MailOptions'{..}
          = object
              (catMaybes
                 [("excludeDrafts" .=) <$> _moExcludeDrafts])
