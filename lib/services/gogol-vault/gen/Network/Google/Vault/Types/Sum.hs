{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vault.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Vault.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The requested data region for the export.
data ExportOptionsRegion
    = ExportRegionUnspecified
      -- ^ @EXPORT_REGION_UNSPECIFIED@
      -- The region is unspecified. Defaults to ANY.
    | Any
      -- ^ @ANY@
      -- Any region.
    | US
      -- ^ @US@
      -- United States region.
    | Europe
      -- ^ @EUROPE@
      -- Europe region.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExportOptionsRegion

instance FromHttpApiData ExportOptionsRegion where
    parseQueryParam = \case
        "EXPORT_REGION_UNSPECIFIED" -> Right ExportRegionUnspecified
        "ANY" -> Right Any
        "US" -> Right US
        "EUROPE" -> Right Europe
        x -> Left ("Unable to parse ExportOptionsRegion from: " <> x)

instance ToHttpApiData ExportOptionsRegion where
    toQueryParam = \case
        ExportRegionUnspecified -> "EXPORT_REGION_UNSPECIFIED"
        Any -> "ANY"
        US -> "US"
        Europe -> "EUROPE"

instance FromJSON ExportOptionsRegion where
    parseJSON = parseJSONText "ExportOptionsRegion"

instance ToJSON ExportOptionsRegion where
    toJSON = toJSONText

-- | The user\'s role for the matter.
data MatterPermissionRole
    = RoleUnspecified
      -- ^ @ROLE_UNSPECIFIED@
      -- No role assigned.
    | Collaborator
      -- ^ @COLLABORATOR@
      -- A collaborator on the matter.
    | Owner
      -- ^ @OWNER@
      -- The owner of the matter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MatterPermissionRole

instance FromHttpApiData MatterPermissionRole where
    parseQueryParam = \case
        "ROLE_UNSPECIFIED" -> Right RoleUnspecified
        "COLLABORATOR" -> Right Collaborator
        "OWNER" -> Right Owner
        x -> Left ("Unable to parse MatterPermissionRole from: " <> x)

instance ToHttpApiData MatterPermissionRole where
    toQueryParam = \case
        RoleUnspecified -> "ROLE_UNSPECIFIED"
        Collaborator -> "COLLABORATOR"
        Owner -> "OWNER"

instance FromJSON MatterPermissionRole where
    parseJSON = parseJSONText "MatterPermissionRole"

instance ToJSON MatterPermissionRole where
    toJSON = toJSONText

-- | The service to be searched.
data HoldCorpus
    = CorpusTypeUnspecified
      -- ^ @CORPUS_TYPE_UNSPECIFIED@
      -- No service specified.
    | Drive
      -- ^ @DRIVE@
      -- Drive, including Meet and Sites.
    | Mail
      -- ^ @MAIL@
      -- For search, Gmail and classic Hangouts. For holds, Gmail only.
    | Groups
      -- ^ @GROUPS@
      -- Groups.
    | HangoutsChat
      -- ^ @HANGOUTS_CHAT@
      -- For search, Google Chat only. For holds, Google Chat and classic
      -- Hangouts.
    | Voice
      -- ^ @VOICE@
      -- Google Voice.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HoldCorpus

instance FromHttpApiData HoldCorpus where
    parseQueryParam = \case
        "CORPUS_TYPE_UNSPECIFIED" -> Right CorpusTypeUnspecified
        "DRIVE" -> Right Drive
        "MAIL" -> Right Mail
        "GROUPS" -> Right Groups
        "HANGOUTS_CHAT" -> Right HangoutsChat
        "VOICE" -> Right Voice
        x -> Left ("Unable to parse HoldCorpus from: " <> x)

instance ToHttpApiData HoldCorpus where
    toQueryParam = \case
        CorpusTypeUnspecified -> "CORPUS_TYPE_UNSPECIFIED"
        Drive -> "DRIVE"
        Mail -> "MAIL"
        Groups -> "GROUPS"
        HangoutsChat -> "HANGOUTS_CHAT"
        Voice -> "VOICE"

instance FromJSON HoldCorpus where
    parseJSON = parseJSONText "HoldCorpus"

instance ToJSON HoldCorpus where
    toJSON = toJSONText

-- | The Google Workspace service to search.
data QueryCorpus
    = QCCorpusTypeUnspecified
      -- ^ @CORPUS_TYPE_UNSPECIFIED@
      -- No service specified.
    | QCDrive
      -- ^ @DRIVE@
      -- Drive, including Meet and Sites.
    | QCMail
      -- ^ @MAIL@
      -- For search, Gmail and classic Hangouts. For holds, Gmail only.
    | QCGroups
      -- ^ @GROUPS@
      -- Groups.
    | QCHangoutsChat
      -- ^ @HANGOUTS_CHAT@
      -- For search, Google Chat only. For holds, Google Chat and classic
      -- Hangouts.
    | QCVoice
      -- ^ @VOICE@
      -- Google Voice.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryCorpus

instance FromHttpApiData QueryCorpus where
    parseQueryParam = \case
        "CORPUS_TYPE_UNSPECIFIED" -> Right QCCorpusTypeUnspecified
        "DRIVE" -> Right QCDrive
        "MAIL" -> Right QCMail
        "GROUPS" -> Right QCGroups
        "HANGOUTS_CHAT" -> Right QCHangoutsChat
        "VOICE" -> Right QCVoice
        x -> Left ("Unable to parse QueryCorpus from: " <> x)

instance ToHttpApiData QueryCorpus where
    toQueryParam = \case
        QCCorpusTypeUnspecified -> "CORPUS_TYPE_UNSPECIFIED"
        QCDrive -> "DRIVE"
        QCMail -> "MAIL"
        QCGroups -> "GROUPS"
        QCHangoutsChat -> "HANGOUTS_CHAT"
        QCVoice -> "VOICE"

instance FromJSON QueryCorpus where
    parseJSON = parseJSONText "QueryCorpus"

instance ToJSON QueryCorpus where
    toJSON = toJSONText

-- | Account query error.
data AccountCountErrorErrorType
    = ErrorTypeUnspecified
      -- ^ @ERROR_TYPE_UNSPECIFIED@
      -- Default.
    | WildcardTooBroad
      -- ^ @WILDCARD_TOO_BROAD@
      -- Permanent - prefix terms expanded to too many query terms.
    | TooManyTerms
      -- ^ @TOO_MANY_TERMS@
      -- Permanent - query contains too many terms.
    | LocationUnavailable
      -- ^ @LOCATION_UNAVAILABLE@
      -- Transient - data in transit between storage replicas, temporarily
      -- unavailable.
    | Unknown
      -- ^ @UNKNOWN@
      -- Unrecognized error.
    | DeadlineExceeded
      -- ^ @DEADLINE_EXCEEDED@
      -- Deadline exceeded when querying the account.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountCountErrorErrorType

instance FromHttpApiData AccountCountErrorErrorType where
    parseQueryParam = \case
        "ERROR_TYPE_UNSPECIFIED" -> Right ErrorTypeUnspecified
        "WILDCARD_TOO_BROAD" -> Right WildcardTooBroad
        "TOO_MANY_TERMS" -> Right TooManyTerms
        "LOCATION_UNAVAILABLE" -> Right LocationUnavailable
        "UNKNOWN" -> Right Unknown
        "DEADLINE_EXCEEDED" -> Right DeadlineExceeded
        x -> Left ("Unable to parse AccountCountErrorErrorType from: " <> x)

instance ToHttpApiData AccountCountErrorErrorType where
    toQueryParam = \case
        ErrorTypeUnspecified -> "ERROR_TYPE_UNSPECIFIED"
        WildcardTooBroad -> "WILDCARD_TOO_BROAD"
        TooManyTerms -> "TOO_MANY_TERMS"
        LocationUnavailable -> "LOCATION_UNAVAILABLE"
        Unknown -> "UNKNOWN"
        DeadlineExceeded -> "DEADLINE_EXCEEDED"

instance FromJSON AccountCountErrorErrorType where
    parseJSON = parseJSONText "AccountCountErrorErrorType"

instance ToJSON AccountCountErrorErrorType where
    toJSON = toJSONText

-- | If set, lists only matters with the specified state. The default lists
-- matters of all states.
data MattersListState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The matter has no specified state.
    | Open
      -- ^ @OPEN@
      -- The matter is open.
    | Closed
      -- ^ @CLOSED@
      -- The matter is closed.
    | Deleted
      -- ^ @DELETED@
      -- The matter is deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MattersListState

instance FromHttpApiData MattersListState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "OPEN" -> Right Open
        "CLOSED" -> Right Closed
        "DELETED" -> Right Deleted
        x -> Left ("Unable to parse MattersListState from: " <> x)

instance ToHttpApiData MattersListState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Open -> "OPEN"
        Closed -> "CLOSED"
        Deleted -> "DELETED"

instance FromJSON MattersListState where
    parseJSON = parseJSONText "MattersListState"

instance ToJSON MattersListState where
    toJSON = toJSONText

-- | The entity to search. This field replaces **searchMethod** to support
-- shared drives. When **searchMethod** is **TEAM_DRIVE**, the response of
-- this field is **SHARED_DRIVE**.
data QueryMethod
    = SearchMethodUnspecified
      -- ^ @SEARCH_METHOD_UNSPECIFIED@
      -- A search method must be specified or else it is rejected.
    | Account
      -- ^ @ACCOUNT@
      -- Search the data of the accounts specified in
      -- [AccountInfo](https:\/\/developers.google.com\/vault\/reference\/rest\/v1\/Query#accountinfo).
    | OrgUnit
      -- ^ @ORG_UNIT@
      -- Search the data of all accounts in the organizational unit specified in
      -- [OrgUnitInfo](https:\/\/developers.google.com\/vault\/reference\/rest\/v1\/Query#orgunitinfo).
    | TeamDrive
      -- ^ @TEAM_DRIVE@
      -- Search the data in the Team Drive specified in **team_drive_info**.
    | EntireOrg
      -- ^ @ENTIRE_ORG@
      -- Search the data of all accounts in the organization. Supported only for
      -- Gmail. When specified, you don\'t need to specify **AccountInfo** or
      -- **OrgUnitInfo**.
    | Room
      -- ^ @ROOM@
      -- Search messages in the Chat spaces specified in
      -- [HangoutsChatInfo](https:\/\/developers.google.com\/vault\/reference\/rest\/v1\/Query#hangoutschatinfo).
    | SharedDrive
      -- ^ @SHARED_DRIVE@
      -- Search the files in the shared drives specified in
      -- [SharedDriveInfo](https:\/\/developers.devsite.corp.google.com\/vault\/reference\/rest\/v1\/Query#shareddriveinfo).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryMethod

instance FromHttpApiData QueryMethod where
    parseQueryParam = \case
        "SEARCH_METHOD_UNSPECIFIED" -> Right SearchMethodUnspecified
        "ACCOUNT" -> Right Account
        "ORG_UNIT" -> Right OrgUnit
        "TEAM_DRIVE" -> Right TeamDrive
        "ENTIRE_ORG" -> Right EntireOrg
        "ROOM" -> Right Room
        "SHARED_DRIVE" -> Right SharedDrive
        x -> Left ("Unable to parse QueryMethod from: " <> x)

instance ToHttpApiData QueryMethod where
    toQueryParam = \case
        SearchMethodUnspecified -> "SEARCH_METHOD_UNSPECIFIED"
        Account -> "ACCOUNT"
        OrgUnit -> "ORG_UNIT"
        TeamDrive -> "TEAM_DRIVE"
        EntireOrg -> "ENTIRE_ORG"
        Room -> "ROOM"
        SharedDrive -> "SHARED_DRIVE"

instance FromJSON QueryMethod where
    parseJSON = parseJSONText "QueryMethod"

instance ToJSON QueryMethod where
    toJSON = toJSONText

-- | The file format for exported messages.
data HangoutsChatExportOptionsExportFormat
    = ExportFormatUnspecified
      -- ^ @EXPORT_FORMAT_UNSPECIFIED@
      -- No export format specified.
    | Mbox
      -- ^ @MBOX@
      -- Export as MBOX.
    | Pst
      -- ^ @PST@
      -- Export as PST.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HangoutsChatExportOptionsExportFormat

instance FromHttpApiData HangoutsChatExportOptionsExportFormat where
    parseQueryParam = \case
        "EXPORT_FORMAT_UNSPECIFIED" -> Right ExportFormatUnspecified
        "MBOX" -> Right Mbox
        "PST" -> Right Pst
        x -> Left ("Unable to parse HangoutsChatExportOptionsExportFormat from: " <> x)

instance ToHttpApiData HangoutsChatExportOptionsExportFormat where
    toQueryParam = \case
        ExportFormatUnspecified -> "EXPORT_FORMAT_UNSPECIFIED"
        Mbox -> "MBOX"
        Pst -> "PST"

instance FromJSON HangoutsChatExportOptionsExportFormat where
    parseJSON = parseJSONText "HangoutsChatExportOptionsExportFormat"

instance ToJSON HangoutsChatExportOptionsExportFormat where
    toJSON = toJSONText

-- | The data source to search.
data QueryDataScope
    = DataScopeUnspecified
      -- ^ @DATA_SCOPE_UNSPECIFIED@
      -- No data source specified.
    | AllData
      -- ^ @ALL_DATA@
      -- All available data.
    | HeldData
      -- ^ @HELD_DATA@
      -- Only data on hold.
    | UnprocessedData
      -- ^ @UNPROCESSED_DATA@
      -- Only data not yet processed by Vault. (Gmail and Groups only)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryDataScope

instance FromHttpApiData QueryDataScope where
    parseQueryParam = \case
        "DATA_SCOPE_UNSPECIFIED" -> Right DataScopeUnspecified
        "ALL_DATA" -> Right AllData
        "HELD_DATA" -> Right HeldData
        "UNPROCESSED_DATA" -> Right UnprocessedData
        x -> Left ("Unable to parse QueryDataScope from: " <> x)

instance ToHttpApiData QueryDataScope where
    toQueryParam = \case
        DataScopeUnspecified -> "DATA_SCOPE_UNSPECIFIED"
        AllData -> "ALL_DATA"
        HeldData -> "HELD_DATA"
        UnprocessedData -> "UNPROCESSED_DATA"

instance FromJSON QueryDataScope where
    parseJSON = parseJSONText "QueryDataScope"

instance ToJSON QueryDataScope where
    toJSON = toJSONText

-- | Output only. The status of the export.
data ExportStatus
    = ExportStatusUnspecified
      -- ^ @EXPORT_STATUS_UNSPECIFIED@
      -- The status is unspecified.
    | Completed
      -- ^ @COMPLETED@
      -- The export completed.
    | Failed
      -- ^ @FAILED@
      -- The export failed.
    | InProgress
      -- ^ @IN_PROGRESS@
      -- The export is in progress.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExportStatus

instance FromHttpApiData ExportStatus where
    parseQueryParam = \case
        "EXPORT_STATUS_UNSPECIFIED" -> Right ExportStatusUnspecified
        "COMPLETED" -> Right Completed
        "FAILED" -> Right Failed
        "IN_PROGRESS" -> Right InProgress
        x -> Left ("Unable to parse ExportStatus from: " <> x)

instance ToHttpApiData ExportStatus where
    toQueryParam = \case
        ExportStatusUnspecified -> "EXPORT_STATUS_UNSPECIFIED"
        Completed -> "COMPLETED"
        Failed -> "FAILED"
        InProgress -> "IN_PROGRESS"

instance FromJSON ExportStatus where
    parseJSON = parseJSONText "ExportStatus"

instance ToJSON ExportStatus where
    toJSON = toJSONText

-- | The amount of detail to return for a hold.
data MattersHoldsListView
    = HoldViewUnspecified
      -- ^ @HOLD_VIEW_UNSPECIFIED@
      -- Not specified. Defaults to **FULL_HOLD**.
    | BasicHold
      -- ^ @BASIC_HOLD@
      -- Returns the hold ID, name, update time, service, and query.
    | FullHold
      -- ^ @FULL_HOLD@
      -- Returns all details of **BASIC_HOLD** and the entities the hold applies
      -- to, such as accounts or organizational unit.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MattersHoldsListView

instance FromHttpApiData MattersHoldsListView where
    parseQueryParam = \case
        "HOLD_VIEW_UNSPECIFIED" -> Right HoldViewUnspecified
        "BASIC_HOLD" -> Right BasicHold
        "FULL_HOLD" -> Right FullHold
        x -> Left ("Unable to parse MattersHoldsListView from: " <> x)

instance ToHttpApiData MattersHoldsListView where
    toQueryParam = \case
        HoldViewUnspecified -> "HOLD_VIEW_UNSPECIFIED"
        BasicHold -> "BASIC_HOLD"
        FullHold -> "FULL_HOLD"

instance FromJSON MattersHoldsListView where
    parseJSON = parseJSONText "MattersHoldsListView"

instance ToJSON MattersHoldsListView where
    toJSON = toJSONText

-- | The search method to use.
data QuerySearchMethod
    = QSMSearchMethodUnspecified
      -- ^ @SEARCH_METHOD_UNSPECIFIED@
      -- A search method must be specified or else it is rejected.
    | QSMAccount
      -- ^ @ACCOUNT@
      -- Search the data of the accounts specified in
      -- [AccountInfo](https:\/\/developers.google.com\/vault\/reference\/rest\/v1\/Query#accountinfo).
    | QSMOrgUnit
      -- ^ @ORG_UNIT@
      -- Search the data of all accounts in the organizational unit specified in
      -- [OrgUnitInfo](https:\/\/developers.google.com\/vault\/reference\/rest\/v1\/Query#orgunitinfo).
    | QSMTeamDrive
      -- ^ @TEAM_DRIVE@
      -- Search the data in the Team Drive specified in **team_drive_info**.
    | QSMEntireOrg
      -- ^ @ENTIRE_ORG@
      -- Search the data of all accounts in the organization. Supported only for
      -- Gmail. When specified, you don\'t need to specify **AccountInfo** or
      -- **OrgUnitInfo**.
    | QSMRoom
      -- ^ @ROOM@
      -- Search messages in the Chat spaces specified in
      -- [HangoutsChatInfo](https:\/\/developers.google.com\/vault\/reference\/rest\/v1\/Query#hangoutschatinfo).
    | QSMSharedDrive
      -- ^ @SHARED_DRIVE@
      -- Search the files in the shared drives specified in
      -- [SharedDriveInfo](https:\/\/developers.devsite.corp.google.com\/vault\/reference\/rest\/v1\/Query#shareddriveinfo).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QuerySearchMethod

instance FromHttpApiData QuerySearchMethod where
    parseQueryParam = \case
        "SEARCH_METHOD_UNSPECIFIED" -> Right QSMSearchMethodUnspecified
        "ACCOUNT" -> Right QSMAccount
        "ORG_UNIT" -> Right QSMOrgUnit
        "TEAM_DRIVE" -> Right QSMTeamDrive
        "ENTIRE_ORG" -> Right QSMEntireOrg
        "ROOM" -> Right QSMRoom
        "SHARED_DRIVE" -> Right QSMSharedDrive
        x -> Left ("Unable to parse QuerySearchMethod from: " <> x)

instance ToHttpApiData QuerySearchMethod where
    toQueryParam = \case
        QSMSearchMethodUnspecified -> "SEARCH_METHOD_UNSPECIFIED"
        QSMAccount -> "ACCOUNT"
        QSMOrgUnit -> "ORG_UNIT"
        QSMTeamDrive -> "TEAM_DRIVE"
        QSMEntireOrg -> "ENTIRE_ORG"
        QSMRoom -> "ROOM"
        QSMSharedDrive -> "SHARED_DRIVE"

instance FromJSON QuerySearchMethod where
    parseJSON = parseJSONText "QuerySearchMethod"

instance ToJSON QuerySearchMethod where
    toJSON = toJSONText

-- | Specifies how much information about the matter to return in the
-- response.
data MattersGetView
    = ViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- The amount of detail is unspecified. Same as **BASIC**.
    | Basic
      -- ^ @BASIC@
      -- Returns the matter ID, name, description, and state. Default choice.
    | Full
      -- ^ @FULL@
      -- Returns the basic details and a list of matter owners and collaborators
      -- (see
      -- [MatterPermissions](https:\/\/developers.google.com\/vault\/reference\/rest\/v1\/matters#matterpermission)).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MattersGetView

instance FromHttpApiData MattersGetView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right ViewUnspecified
        "BASIC" -> Right Basic
        "FULL" -> Right Full
        x -> Left ("Unable to parse MattersGetView from: " <> x)

instance ToHttpApiData MattersGetView where
    toQueryParam = \case
        ViewUnspecified -> "VIEW_UNSPECIFIED"
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON MattersGetView where
    parseJSON = parseJSONText "MattersGetView"

instance ToJSON MattersGetView where
    toJSON = toJSONText

-- | The state of the matter.
data MatterState
    = MSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The matter has no specified state.
    | MSOpen
      -- ^ @OPEN@
      -- The matter is open.
    | MSClosed
      -- ^ @CLOSED@
      -- The matter is closed.
    | MSDeleted
      -- ^ @DELETED@
      -- The matter is deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MatterState

instance FromHttpApiData MatterState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right MSStateUnspecified
        "OPEN" -> Right MSOpen
        "CLOSED" -> Right MSClosed
        "DELETED" -> Right MSDeleted
        x -> Left ("Unable to parse MatterState from: " <> x)

instance ToHttpApiData MatterState where
    toQueryParam = \case
        MSStateUnspecified -> "STATE_UNSPECIFIED"
        MSOpen -> "OPEN"
        MSClosed -> "CLOSED"
        MSDeleted -> "DELETED"

instance FromJSON MatterState where
    parseJSON = parseJSONText "MatterState"

instance ToJSON MatterState where
    toJSON = toJSONText

-- | Specifies how much information about the matter to return in response.
data MattersListView
    = MLVViewUnspecified
      -- ^ @VIEW_UNSPECIFIED@
      -- The amount of detail is unspecified. Same as **BASIC**.
    | MLVBasic
      -- ^ @BASIC@
      -- Returns the matter ID, name, description, and state. Default choice.
    | MLVFull
      -- ^ @FULL@
      -- Returns the basic details and a list of matter owners and collaborators
      -- (see
      -- [MatterPermissions](https:\/\/developers.google.com\/vault\/reference\/rest\/v1\/matters#matterpermission)).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MattersListView

instance FromHttpApiData MattersListView where
    parseQueryParam = \case
        "VIEW_UNSPECIFIED" -> Right MLVViewUnspecified
        "BASIC" -> Right MLVBasic
        "FULL" -> Right MLVFull
        x -> Left ("Unable to parse MattersListView from: " <> x)

instance ToHttpApiData MattersListView where
    toQueryParam = \case
        MLVViewUnspecified -> "VIEW_UNSPECIFIED"
        MLVBasic -> "BASIC"
        MLVFull -> "FULL"

instance FromJSON MattersListView where
    parseJSON = parseJSONText "MattersListView"

instance ToJSON MattersListView where
    toJSON = toJSONText

data VoiceOptionsCoveredDataItem
    = CoveredDataUnspecified
      -- ^ @COVERED_DATA_UNSPECIFIED@
      -- Covered data unspecified.
    | TextMessages
      -- ^ @TEXT_MESSAGES@
      -- Voice text messages.
    | Voicemails
      -- ^ @VOICEMAILS@
      -- Voicemails and their transcripts.
    | CallLogs
      -- ^ @CALL_LOGS@
      -- Call logs.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VoiceOptionsCoveredDataItem

instance FromHttpApiData VoiceOptionsCoveredDataItem where
    parseQueryParam = \case
        "COVERED_DATA_UNSPECIFIED" -> Right CoveredDataUnspecified
        "TEXT_MESSAGES" -> Right TextMessages
        "VOICEMAILS" -> Right Voicemails
        "CALL_LOGS" -> Right CallLogs
        x -> Left ("Unable to parse VoiceOptionsCoveredDataItem from: " <> x)

instance ToHttpApiData VoiceOptionsCoveredDataItem where
    toQueryParam = \case
        CoveredDataUnspecified -> "COVERED_DATA_UNSPECIFIED"
        TextMessages -> "TEXT_MESSAGES"
        Voicemails -> "VOICEMAILS"
        CallLogs -> "CALL_LOGS"

instance FromJSON VoiceOptionsCoveredDataItem where
    parseJSON = parseJSONText "VoiceOptionsCoveredDataItem"

instance ToJSON VoiceOptionsCoveredDataItem where
    toJSON = toJSONText

-- | The file format for exported messages.
data GroupsExportOptionsExportFormat
    = GEOEFExportFormatUnspecified
      -- ^ @EXPORT_FORMAT_UNSPECIFIED@
      -- No export format specified.
    | GEOEFMbox
      -- ^ @MBOX@
      -- Export as MBOX.
    | GEOEFPst
      -- ^ @PST@
      -- Export as PST.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupsExportOptionsExportFormat

instance FromHttpApiData GroupsExportOptionsExportFormat where
    parseQueryParam = \case
        "EXPORT_FORMAT_UNSPECIFIED" -> Right GEOEFExportFormatUnspecified
        "MBOX" -> Right GEOEFMbox
        "PST" -> Right GEOEFPst
        x -> Left ("Unable to parse GroupsExportOptionsExportFormat from: " <> x)

instance ToHttpApiData GroupsExportOptionsExportFormat where
    toQueryParam = \case
        GEOEFExportFormatUnspecified -> "EXPORT_FORMAT_UNSPECIFIED"
        GEOEFMbox -> "MBOX"
        GEOEFPst -> "PST"

instance FromJSON GroupsExportOptionsExportFormat where
    parseJSON = parseJSONText "GroupsExportOptionsExportFormat"

instance ToJSON GroupsExportOptionsExportFormat where
    toJSON = toJSONText

-- | The amount of detail to return for a hold.
data MattersHoldsGetView
    = MHGVHoldViewUnspecified
      -- ^ @HOLD_VIEW_UNSPECIFIED@
      -- Not specified. Defaults to **FULL_HOLD**.
    | MHGVBasicHold
      -- ^ @BASIC_HOLD@
      -- Returns the hold ID, name, update time, service, and query.
    | MHGVFullHold
      -- ^ @FULL_HOLD@
      -- Returns all details of **BASIC_HOLD** and the entities the hold applies
      -- to, such as accounts or organizational unit.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MattersHoldsGetView

instance FromHttpApiData MattersHoldsGetView where
    parseQueryParam = \case
        "HOLD_VIEW_UNSPECIFIED" -> Right MHGVHoldViewUnspecified
        "BASIC_HOLD" -> Right MHGVBasicHold
        "FULL_HOLD" -> Right MHGVFullHold
        x -> Left ("Unable to parse MattersHoldsGetView from: " <> x)

instance ToHttpApiData MattersHoldsGetView where
    toQueryParam = \case
        MHGVHoldViewUnspecified -> "HOLD_VIEW_UNSPECIFIED"
        MHGVBasicHold -> "BASIC_HOLD"
        MHGVFullHold -> "FULL_HOLD"

instance FromJSON MattersHoldsGetView where
    parseJSON = parseJSONText "MattersHoldsGetView"

instance ToJSON MattersHoldsGetView where
    toJSON = toJSONText

-- | Sets the granularity of the count results.
data CountArtifactsRequestView
    = CountResultViewUnspecified
      -- ^ @COUNT_RESULT_VIEW_UNSPECIFIED@
      -- Default. Same as **TOTAL_COUNT**.
    | TotalCount
      -- ^ @TOTAL_COUNT@
      -- Response includes counts of the total accounts, queried accounts,
      -- matching accounts, non-queryable accounts, and queried account errors.
    | All
      -- ^ @ALL@
      -- Response includes the same details as **TOTAL_COUNT**, plus additional
      -- account breakdown.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CountArtifactsRequestView

instance FromHttpApiData CountArtifactsRequestView where
    parseQueryParam = \case
        "COUNT_RESULT_VIEW_UNSPECIFIED" -> Right CountResultViewUnspecified
        "TOTAL_COUNT" -> Right TotalCount
        "ALL" -> Right All
        x -> Left ("Unable to parse CountArtifactsRequestView from: " <> x)

instance ToHttpApiData CountArtifactsRequestView where
    toQueryParam = \case
        CountResultViewUnspecified -> "COUNT_RESULT_VIEW_UNSPECIFIED"
        TotalCount -> "TOTAL_COUNT"
        All -> "ALL"

instance FromJSON CountArtifactsRequestView where
    parseJSON = parseJSONText "CountArtifactsRequestView"

instance ToJSON CountArtifactsRequestView where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The file format for exported messages.
data MailExportOptionsExportFormat
    = MEOEFExportFormatUnspecified
      -- ^ @EXPORT_FORMAT_UNSPECIFIED@
      -- No export format specified.
    | MEOEFMbox
      -- ^ @MBOX@
      -- Export as MBOX.
    | MEOEFPst
      -- ^ @PST@
      -- Export as PST.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MailExportOptionsExportFormat

instance FromHttpApiData MailExportOptionsExportFormat where
    parseQueryParam = \case
        "EXPORT_FORMAT_UNSPECIFIED" -> Right MEOEFExportFormatUnspecified
        "MBOX" -> Right MEOEFMbox
        "PST" -> Right MEOEFPst
        x -> Left ("Unable to parse MailExportOptionsExportFormat from: " <> x)

instance ToHttpApiData MailExportOptionsExportFormat where
    toQueryParam = \case
        MEOEFExportFormatUnspecified -> "EXPORT_FORMAT_UNSPECIFIED"
        MEOEFMbox -> "MBOX"
        MEOEFPst -> "PST"

instance FromJSON MailExportOptionsExportFormat where
    parseJSON = parseJSONText "MailExportOptionsExportFormat"

instance ToJSON MailExportOptionsExportFormat where
    toJSON = toJSONText

-- | The file format for exported text messages.
data VoiceExportOptionsExportFormat
    = VEOEFExportFormatUnspecified
      -- ^ @EXPORT_FORMAT_UNSPECIFIED@
      -- No export format specified.
    | VEOEFMbox
      -- ^ @MBOX@
      -- Export as MBOX.
    | VEOEFPst
      -- ^ @PST@
      -- Export as PST.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VoiceExportOptionsExportFormat

instance FromHttpApiData VoiceExportOptionsExportFormat where
    parseQueryParam = \case
        "EXPORT_FORMAT_UNSPECIFIED" -> Right VEOEFExportFormatUnspecified
        "MBOX" -> Right VEOEFMbox
        "PST" -> Right VEOEFPst
        x -> Left ("Unable to parse VoiceExportOptionsExportFormat from: " <> x)

instance ToHttpApiData VoiceExportOptionsExportFormat where
    toQueryParam = \case
        VEOEFExportFormatUnspecified -> "EXPORT_FORMAT_UNSPECIFIED"
        VEOEFMbox -> "MBOX"
        VEOEFPst -> "PST"

instance FromJSON VoiceExportOptionsExportFormat where
    parseJSON = parseJSONText "VoiceExportOptionsExportFormat"

instance ToJSON VoiceExportOptionsExportFormat where
    toJSON = toJSONText

data HeldVoiceQueryCoveredDataItem
    = HVQCDICoveredDataUnspecified
      -- ^ @COVERED_DATA_UNSPECIFIED@
      -- Covered data unspecified.
    | HVQCDITextMessages
      -- ^ @TEXT_MESSAGES@
      -- Voice text messages.
    | HVQCDIVoicemails
      -- ^ @VOICEMAILS@
      -- Voicemails and their transcripts.
    | HVQCDICallLogs
      -- ^ @CALL_LOGS@
      -- Call logs.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HeldVoiceQueryCoveredDataItem

instance FromHttpApiData HeldVoiceQueryCoveredDataItem where
    parseQueryParam = \case
        "COVERED_DATA_UNSPECIFIED" -> Right HVQCDICoveredDataUnspecified
        "TEXT_MESSAGES" -> Right HVQCDITextMessages
        "VOICEMAILS" -> Right HVQCDIVoicemails
        "CALL_LOGS" -> Right HVQCDICallLogs
        x -> Left ("Unable to parse HeldVoiceQueryCoveredDataItem from: " <> x)

instance ToHttpApiData HeldVoiceQueryCoveredDataItem where
    toQueryParam = \case
        HVQCDICoveredDataUnspecified -> "COVERED_DATA_UNSPECIFIED"
        HVQCDITextMessages -> "TEXT_MESSAGES"
        HVQCDIVoicemails -> "VOICEMAILS"
        HVQCDICallLogs -> "CALL_LOGS"

instance FromJSON HeldVoiceQueryCoveredDataItem where
    parseJSON = parseJSONText "HeldVoiceQueryCoveredDataItem"

instance ToJSON HeldVoiceQueryCoveredDataItem where
    toJSON = toJSONText
