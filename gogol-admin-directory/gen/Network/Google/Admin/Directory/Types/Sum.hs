{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Admin.Directory.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Admin.Directory.Types.Sum where

import           Network.Google.Prelude

-- | Restrict information returned to a set of selected fields.
data MobiledevicesGet'Projection
    = Basic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, model, status,
      -- type, and status)
    | Full
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MobiledevicesGet'Projection

instance FromText MobiledevicesGet'Projection where
    fromText = \case
        "BASIC" -> Just Basic
        "FULL" -> Just Full
        _ -> Nothing

instance ToText MobiledevicesGet'Projection where
    toText = \case
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON MobiledevicesGet'Projection where
    parseJSON = parseJSONText "MobiledevicesGet'Projection"

instance ToJSON MobiledevicesGet'Projection where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data UsersAliasesList'Event
    = Add
      -- ^ @add@
      -- Alias Created Event
    | Delete
      -- ^ @delete@
      -- Alias Deleted Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersAliasesList'Event

instance FromText UsersAliasesList'Event where
    fromText = \case
        "add" -> Just Add
        "delete" -> Just Delete
        _ -> Nothing

instance ToText UsersAliasesList'Event where
    toText = \case
        Add -> "add"
        Delete -> "delete"

instance FromJSON UsersAliasesList'Event where
    parseJSON = parseJSONText "UsersAliasesList'Event"

instance ToJSON UsersAliasesList'Event where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data UsersAliasesWatch'Event
    = UAWEAdd
      -- ^ @add@
      -- Alias Created Event
    | UAWEDelete
      -- ^ @delete@
      -- Alias Deleted Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersAliasesWatch'Event

instance FromText UsersAliasesWatch'Event where
    fromText = \case
        "add" -> Just UAWEAdd
        "delete" -> Just UAWEDelete
        _ -> Nothing

instance ToText UsersAliasesWatch'Event where
    toText = \case
        UAWEAdd -> "add"
        UAWEDelete -> "delete"

instance FromJSON UsersAliasesWatch'Event where
    parseJSON = parseJSONText "UsersAliasesWatch'Event"

instance ToJSON UsersAliasesWatch'Event where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
data MobiledevicesList'SortOrder
    = Ascending
      -- ^ @ASCENDING@
      -- Ascending order.
    | Descending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MobiledevicesList'SortOrder

instance FromText MobiledevicesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText MobiledevicesList'SortOrder where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON MobiledevicesList'SortOrder where
    parseJSON = parseJSONText "MobiledevicesList'SortOrder"

instance ToJSON MobiledevicesList'SortOrder where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data ChromeosdevicesUpdate'Projection
    = CUPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | CUPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosdevicesUpdate'Projection

instance FromText ChromeosdevicesUpdate'Projection where
    fromText = \case
        "BASIC" -> Just CUPBasic
        "FULL" -> Just CUPFull
        _ -> Nothing

instance ToText ChromeosdevicesUpdate'Projection where
    toText = \case
        CUPBasic -> "BASIC"
        CUPFull -> "FULL"

instance FromJSON ChromeosdevicesUpdate'Projection where
    parseJSON = parseJSONText "ChromeosdevicesUpdate'Projection"

instance ToJSON ChromeosdevicesUpdate'Projection where
    toJSON = toJSONText

-- | Column to use for sorting results
data ChromeosdevicesList'OrderBy
    = AnnotatedLocation
      -- ^ @annotatedLocation@
      -- Chromebook location as annotated by the administrator.
    | AnnotatedUser
      -- ^ @annotatedUser@
      -- Chromebook user as annotated by administrator.
    | LastSync
      -- ^ @lastSync@
      -- Chromebook last sync.
    | Notes
      -- ^ @notes@
      -- Chromebook notes as annotated by the administrator.
    | SerialNumber
      -- ^ @serialNumber@
      -- Chromebook Serial Number.
    | Status
      -- ^ @status@
      -- Chromebook status.
    | SupportEndDate
      -- ^ @supportEndDate@
      -- Chromebook support end date.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosdevicesList'OrderBy

instance FromText ChromeosdevicesList'OrderBy where
    fromText = \case
        "annotatedLocation" -> Just AnnotatedLocation
        "annotatedUser" -> Just AnnotatedUser
        "lastSync" -> Just LastSync
        "notes" -> Just Notes
        "serialNumber" -> Just SerialNumber
        "status" -> Just Status
        "supportEndDate" -> Just SupportEndDate
        _ -> Nothing

instance ToText ChromeosdevicesList'OrderBy where
    toText = \case
        AnnotatedLocation -> "annotatedLocation"
        AnnotatedUser -> "annotatedUser"
        LastSync -> "lastSync"
        Notes -> "notes"
        SerialNumber -> "serialNumber"
        Status -> "status"
        SupportEndDate -> "supportEndDate"

instance FromJSON ChromeosdevicesList'OrderBy where
    parseJSON = parseJSONText "ChromeosdevicesList'OrderBy"

instance ToJSON ChromeosdevicesList'OrderBy where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data ChromeosdevicesList'Projection
    = CLPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | CLPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosdevicesList'Projection

instance FromText ChromeosdevicesList'Projection where
    fromText = \case
        "BASIC" -> Just CLPBasic
        "FULL" -> Just CLPFull
        _ -> Nothing

instance ToText ChromeosdevicesList'Projection where
    toText = \case
        CLPBasic -> "BASIC"
        CLPFull -> "FULL"

instance FromJSON ChromeosdevicesList'Projection where
    parseJSON = parseJSONText "ChromeosdevicesList'Projection"

instance ToJSON ChromeosdevicesList'Projection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data MobiledevicesList'Projection
    = MLPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, model, status,
      -- type, and status)
    | MLPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MobiledevicesList'Projection

instance FromText MobiledevicesList'Projection where
    fromText = \case
        "BASIC" -> Just MLPBasic
        "FULL" -> Just MLPFull
        _ -> Nothing

instance ToText MobiledevicesList'Projection where
    toText = \case
        MLPBasic -> "BASIC"
        MLPFull -> "FULL"

instance FromJSON MobiledevicesList'Projection where
    parseJSON = parseJSONText "MobiledevicesList'Projection"

instance ToJSON MobiledevicesList'Projection where
    toJSON = toJSONText

-- | Column to use for sorting results
data MobiledevicesList'OrderBy
    = MLOBDeviceId
      -- ^ @deviceId@
      -- Mobile Device serial number.
    | MLOBEmail
      -- ^ @email@
      -- Owner user email.
    | MLOBLastSync
      -- ^ @lastSync@
      -- Last policy settings sync date time of the device.
    | MLOBModel
      -- ^ @model@
      -- Mobile Device model.
    | MLOBName
      -- ^ @name@
      -- Owner user name.
    | MLOBOS
      -- ^ @os@
      -- Mobile operating system.
    | MLOBStatus
      -- ^ @status@
      -- Status of the device.
    | MLOBType
      -- ^ @type@
      -- Type of the device.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MobiledevicesList'OrderBy

instance FromText MobiledevicesList'OrderBy where
    fromText = \case
        "deviceId" -> Just MLOBDeviceId
        "email" -> Just MLOBEmail
        "lastSync" -> Just MLOBLastSync
        "model" -> Just MLOBModel
        "name" -> Just MLOBName
        "os" -> Just MLOBOS
        "status" -> Just MLOBStatus
        "type" -> Just MLOBType
        _ -> Nothing

instance ToText MobiledevicesList'OrderBy where
    toText = \case
        MLOBDeviceId -> "deviceId"
        MLOBEmail -> "email"
        MLOBLastSync -> "lastSync"
        MLOBModel -> "model"
        MLOBName -> "name"
        MLOBOS -> "os"
        MLOBStatus -> "status"
        MLOBType -> "type"

instance FromJSON MobiledevicesList'OrderBy where
    parseJSON = parseJSONText "MobiledevicesList'OrderBy"

instance ToJSON MobiledevicesList'OrderBy where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
data ChromeosdevicesList'SortOrder
    = CLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | CLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosdevicesList'SortOrder

instance FromText ChromeosdevicesList'SortOrder where
    fromText = \case
        "ASCENDING" -> Just CLSOAscending
        "DESCENDING" -> Just CLSODescending
        _ -> Nothing

instance ToText ChromeosdevicesList'SortOrder where
    toText = \case
        CLSOAscending -> "ASCENDING"
        CLSODescending -> "DESCENDING"

instance FromJSON ChromeosdevicesList'SortOrder where
    parseJSON = parseJSONText "ChromeosdevicesList'SortOrder"

instance ToJSON ChromeosdevicesList'SortOrder where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data ChromeosdevicesGet'Projection
    = CGPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | CGPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosdevicesGet'Projection

instance FromText ChromeosdevicesGet'Projection where
    fromText = \case
        "BASIC" -> Just CGPBasic
        "FULL" -> Just CGPFull
        _ -> Nothing

instance ToText ChromeosdevicesGet'Projection where
    toText = \case
        CGPBasic -> "BASIC"
        CGPFull -> "FULL"

instance FromJSON ChromeosdevicesGet'Projection where
    parseJSON = parseJSONText "ChromeosdevicesGet'Projection"

instance ToJSON ChromeosdevicesGet'Projection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data ChromeosdevicesPatch'Projection
    = CPPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | CPPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosdevicesPatch'Projection

instance FromText ChromeosdevicesPatch'Projection where
    fromText = \case
        "BASIC" -> Just CPPBasic
        "FULL" -> Just CPPFull
        _ -> Nothing

instance ToText ChromeosdevicesPatch'Projection where
    toText = \case
        CPPBasic -> "BASIC"
        CPPFull -> "FULL"

instance FromJSON ChromeosdevicesPatch'Projection where
    parseJSON = parseJSONText "ChromeosdevicesPatch'Projection"

instance ToJSON ChromeosdevicesPatch'Projection where
    toJSON = toJSONText

-- | Whether to return all sub-organizations or just immediate children
data OrgunitsList'Type
    = All
      -- ^ @all@
      -- All sub-organization units.
    | Children
      -- ^ @children@
      -- Immediate children only (default).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrgunitsList'Type

instance FromText OrgunitsList'Type where
    fromText = \case
        "all" -> Just All
        "children" -> Just Children
        _ -> Nothing

instance ToText OrgunitsList'Type where
    toText = \case
        All -> "all"
        Children -> "children"

instance FromJSON OrgunitsList'Type where
    parseJSON = parseJSONText "OrgunitsList'Type"

instance ToJSON OrgunitsList'Type where
    toJSON = toJSONText
