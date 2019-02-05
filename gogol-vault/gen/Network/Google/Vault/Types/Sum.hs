{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vault.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Vault.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | The requested export location.
data ExportOptionsRegion
    = ExportRegionUnspecified
      -- ^ @EXPORT_REGION_UNSPECIFIED@
      -- The region is unspecified. Will be treated the same as ANY.
    | Any
      -- ^ @ANY@
      -- Any region.
    | US
      -- ^ @US@
      -- US region.
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

-- | The user\'s role in this matter.
data MatterPermissionRole
    = RoleUnspecified
      -- ^ @ROLE_UNSPECIFIED@
      -- No role assigned.
    | Collaborator
      -- ^ @COLLABORATOR@
      -- A collaborator to the matter.
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

-- | The corpus to be searched.
data HoldCorpus
    = CorpusTypeUnspecified
      -- ^ @CORPUS_TYPE_UNSPECIFIED@
      -- No corpus specified.
    | Drive
      -- ^ @DRIVE@
      -- Drive.
    | Mail
      -- ^ @MAIL@
      -- Mail.
    | Groups
      -- ^ @GROUPS@
      -- Groups.
    | HangoutsChat
      -- ^ @HANGOUTS_CHAT@
      -- Hangouts Chat.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HoldCorpus

instance FromHttpApiData HoldCorpus where
    parseQueryParam = \case
        "CORPUS_TYPE_UNSPECIFIED" -> Right CorpusTypeUnspecified
        "DRIVE" -> Right Drive
        "MAIL" -> Right Mail
        "GROUPS" -> Right Groups
        "HANGOUTS_CHAT" -> Right HangoutsChat
        x -> Left ("Unable to parse HoldCorpus from: " <> x)

instance ToHttpApiData HoldCorpus where
    toQueryParam = \case
        CorpusTypeUnspecified -> "CORPUS_TYPE_UNSPECIFIED"
        Drive -> "DRIVE"
        Mail -> "MAIL"
        Groups -> "GROUPS"
        HangoutsChat -> "HANGOUTS_CHAT"

instance FromJSON HoldCorpus where
    parseJSON = parseJSONText "HoldCorpus"

instance ToJSON HoldCorpus where
    toJSON = toJSONText

-- | The corpus to search.
data QueryCorpus
    = QCCorpusTypeUnspecified
      -- ^ @CORPUS_TYPE_UNSPECIFIED@
      -- No corpus specified.
    | QCDrive
      -- ^ @DRIVE@
      -- Drive.
    | QCMail
      -- ^ @MAIL@
      -- Mail.
    | QCGroups
      -- ^ @GROUPS@
      -- Groups.
    | QCHangoutsChat
      -- ^ @HANGOUTS_CHAT@
      -- Hangouts Chat.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryCorpus

instance FromHttpApiData QueryCorpus where
    parseQueryParam = \case
        "CORPUS_TYPE_UNSPECIFIED" -> Right QCCorpusTypeUnspecified
        "DRIVE" -> Right QCDrive
        "MAIL" -> Right QCMail
        "GROUPS" -> Right QCGroups
        "HANGOUTS_CHAT" -> Right QCHangoutsChat
        x -> Left ("Unable to parse QueryCorpus from: " <> x)

instance ToHttpApiData QueryCorpus where
    toQueryParam = \case
        QCCorpusTypeUnspecified -> "CORPUS_TYPE_UNSPECIFIED"
        QCDrive -> "DRIVE"
        QCMail -> "MAIL"
        QCGroups -> "GROUPS"
        QCHangoutsChat -> "HANGOUTS_CHAT"

instance FromJSON QueryCorpus where
    parseJSON = parseJSONText "QueryCorpus"

instance ToJSON QueryCorpus where
    toJSON = toJSONText

-- | The export format for hangouts chat export.
data HangoutsChatExportOptionsExportFormat
    = ExportFormatUnspecified
      -- ^ @EXPORT_FORMAT_UNSPECIFIED@
      -- No export format specified.
    | Mbox
      -- ^ @MBOX@
      -- MBOX as export format.
    | Pst
      -- ^ @PST@
      -- PST as export format
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

-- | The data source to search from.
data QueryDataScope
    = DataScopeUnspecified
      -- ^ @DATA_SCOPE_UNSPECIFIED@
      -- No data scope specified.
    | AllData
      -- ^ @ALL_DATA@
      -- All available data.
    | HeldData
      -- ^ @HELD_DATA@
      -- Data on hold.
    | UnprocessedData
      -- ^ @UNPROCESSED_DATA@
      -- Data not processed.
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

-- | Output only. The export status.
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
      -- The export is still being executed.
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

-- | The search method to use.
data QuerySearchMethod
    = SearchMethodUnspecified
      -- ^ @SEARCH_METHOD_UNSPECIFIED@
      -- A search method must be specified. If a request does not specify a
      -- search method, it will be rejected.
    | Account
      -- ^ @ACCOUNT@
      -- Will search all accounts provided in account_info.
    | OrgUnit
      -- ^ @ORG_UNIT@
      -- Will search all accounts in the OU specified in org_unit_info.
    | TeamDrive
      -- ^ @TEAM_DRIVE@
      -- Will search for all accounts in the Team Drive specified in
      -- team_drive_info.
    | EntireOrg
      -- ^ @ENTIRE_ORG@
      -- Will search for all accounts in the organization. No need to set
      -- account_info or org_unit_info.
    | Room
      -- ^ @ROOM@
      -- Will search in the Room specified in hangout_chats_info. (read-only)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QuerySearchMethod

instance FromHttpApiData QuerySearchMethod where
    parseQueryParam = \case
        "SEARCH_METHOD_UNSPECIFIED" -> Right SearchMethodUnspecified
        "ACCOUNT" -> Right Account
        "ORG_UNIT" -> Right OrgUnit
        "TEAM_DRIVE" -> Right TeamDrive
        "ENTIRE_ORG" -> Right EntireOrg
        "ROOM" -> Right Room
        x -> Left ("Unable to parse QuerySearchMethod from: " <> x)

instance ToHttpApiData QuerySearchMethod where
    toQueryParam = \case
        SearchMethodUnspecified -> "SEARCH_METHOD_UNSPECIFIED"
        Account -> "ACCOUNT"
        OrgUnit -> "ORG_UNIT"
        TeamDrive -> "TEAM_DRIVE"
        EntireOrg -> "ENTIRE_ORG"
        Room -> "ROOM"

instance FromJSON QuerySearchMethod where
    parseJSON = parseJSONText "QuerySearchMethod"

instance ToJSON QuerySearchMethod where
    toJSON = toJSONText

-- | The state of the matter.
data MatterState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The matter has no specified state.
    | Open
      -- ^ @OPEN@
      -- This matter is open.
    | Closed
      -- ^ @CLOSED@
      -- This matter is closed.
    | Deleted
      -- ^ @DELETED@
      -- This matter is deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MatterState

instance FromHttpApiData MatterState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "OPEN" -> Right Open
        "CLOSED" -> Right Closed
        "DELETED" -> Right Deleted
        x -> Left ("Unable to parse MatterState from: " <> x)

instance ToHttpApiData MatterState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Open -> "OPEN"
        Closed -> "CLOSED"
        Deleted -> "DELETED"

instance FromJSON MatterState where
    parseJSON = parseJSONText "MatterState"

instance ToJSON MatterState where
    toJSON = toJSONText

-- | The export format for groups export.
data GroupsExportOptionsExportFormat
    = GEOEFExportFormatUnspecified
      -- ^ @EXPORT_FORMAT_UNSPECIFIED@
      -- No export format specified.
    | GEOEFMbox
      -- ^ @MBOX@
      -- MBOX as export format.
    | GEOEFPst
      -- ^ @PST@
      -- PST as export format
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

-- | The export file format.
data MailExportOptionsExportFormat
    = MEOEFExportFormatUnspecified
      -- ^ @EXPORT_FORMAT_UNSPECIFIED@
      -- No export format specified.
    | MEOEFMbox
      -- ^ @MBOX@
      -- MBOX as export format.
    | MEOEFPst
      -- ^ @PST@
      -- PST as export format
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
