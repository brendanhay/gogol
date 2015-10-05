{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdminDirectory.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdminDirectory.Types.Sum where

import           Network.Google.Prelude

-- | Event on which subscription is intended (if subscribing)
data UsersListEvent
    = Add
      -- ^ @add@
      -- User Created Event
    | Delete'
      -- ^ @delete@
      -- User Deleted Event
    | MakeAdmin
      -- ^ @makeAdmin@
      -- User Admin Status Change Event
    | Undelete
      -- ^ @undelete@
      -- User Undeleted Event
    | Update
      -- ^ @update@
      -- User Updated Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersListEvent

instance FromText UsersListEvent where
    fromText = \case
        "add" -> Just Add
        "delete" -> Just Delete'
        "makeAdmin" -> Just MakeAdmin
        "undelete" -> Just Undelete
        "update" -> Just Update
        _ -> Nothing

instance ToText UsersListEvent where
    toText = \case
        Add -> "add"
        Delete' -> "delete"
        MakeAdmin -> "makeAdmin"
        Undelete -> "undelete"
        Update -> "update"

instance FromJSON UsersListEvent where
    parseJSON = parseJSONText "UsersListEvent"

instance ToJSON UsersListEvent where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data UsersAliasesListEvent
    = UALEAdd
      -- ^ @add@
      -- Alias Created Event
    | UALEDelete'
      -- ^ @delete@
      -- Alias Deleted Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersAliasesListEvent

instance FromText UsersAliasesListEvent where
    fromText = \case
        "add" -> Just UALEAdd
        "delete" -> Just UALEDelete'
        _ -> Nothing

instance ToText UsersAliasesListEvent where
    toText = \case
        UALEAdd -> "add"
        UALEDelete' -> "delete"

instance FromJSON UsersAliasesListEvent where
    parseJSON = parseJSONText "UsersAliasesListEvent"

instance ToJSON UsersAliasesListEvent where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data UsersAliasesWatchEvent
    = UAWEAdd
      -- ^ @add@
      -- Alias Created Event
    | UAWEDelete'
      -- ^ @delete@
      -- Alias Deleted Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersAliasesWatchEvent

instance FromText UsersAliasesWatchEvent where
    fromText = \case
        "add" -> Just UAWEAdd
        "delete" -> Just UAWEDelete'
        _ -> Nothing

instance ToText UsersAliasesWatchEvent where
    toText = \case
        UAWEAdd -> "add"
        UAWEDelete' -> "delete"

instance FromJSON UsersAliasesWatchEvent where
    parseJSON = parseJSONText "UsersAliasesWatchEvent"

instance ToJSON UsersAliasesWatchEvent where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data UsersWatchEvent
    = UWEAdd
      -- ^ @add@
      -- User Created Event
    | UWEDelete'
      -- ^ @delete@
      -- User Deleted Event
    | UWEMakeAdmin
      -- ^ @makeAdmin@
      -- User Admin Status Change Event
    | UWEUndelete
      -- ^ @undelete@
      -- User Undeleted Event
    | UWEUpdate
      -- ^ @update@
      -- User Updated Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersWatchEvent

instance FromText UsersWatchEvent where
    fromText = \case
        "add" -> Just UWEAdd
        "delete" -> Just UWEDelete'
        "makeAdmin" -> Just UWEMakeAdmin
        "undelete" -> Just UWEUndelete
        "update" -> Just UWEUpdate
        _ -> Nothing

instance ToText UsersWatchEvent where
    toText = \case
        UWEAdd -> "add"
        UWEDelete' -> "delete"
        UWEMakeAdmin -> "makeAdmin"
        UWEUndelete -> "undelete"
        UWEUpdate -> "update"

instance FromJSON UsersWatchEvent where
    parseJSON = parseJSONText "UsersWatchEvent"

instance ToJSON UsersWatchEvent where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data ChromeosDevicesPatchProjection
    = Basic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | Full
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosDevicesPatchProjection

instance FromText ChromeosDevicesPatchProjection where
    fromText = \case
        "BASIC" -> Just Basic
        "FULL" -> Just Full
        _ -> Nothing

instance ToText ChromeosDevicesPatchProjection where
    toText = \case
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON ChromeosDevicesPatchProjection where
    parseJSON = parseJSONText "ChromeosDevicesPatchProjection"

instance ToJSON ChromeosDevicesPatchProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data ChromeosDevicesGetProjection
    = CDGPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | CDGPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosDevicesGetProjection

instance FromText ChromeosDevicesGetProjection where
    fromText = \case
        "BASIC" -> Just CDGPBasic
        "FULL" -> Just CDGPFull
        _ -> Nothing

instance ToText ChromeosDevicesGetProjection where
    toText = \case
        CDGPBasic -> "BASIC"
        CDGPFull -> "FULL"

instance FromJSON ChromeosDevicesGetProjection where
    parseJSON = parseJSONText "ChromeosDevicesGetProjection"

instance ToJSON ChromeosDevicesGetProjection where
    toJSON = toJSONText

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data UsersListViewType
    = AdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | DomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersListViewType

instance FromText UsersListViewType where
    fromText = \case
        "admin_view" -> Just AdminView
        "domain_public" -> Just DomainPublic
        _ -> Nothing

instance ToText UsersListViewType where
    toText = \case
        AdminView -> "admin_view"
        DomainPublic -> "domain_public"

instance FromJSON UsersListViewType where
    parseJSON = parseJSONText "UsersListViewType"

instance ToJSON UsersListViewType where
    toJSON = toJSONText

-- | Whether to return all sub-organizations or just immediate children
data OrgUnitsListType
    = All
      -- ^ @all@
      -- All sub-organization units.
    | Children
      -- ^ @children@
      -- Immediate children only (default).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrgUnitsListType

instance FromText OrgUnitsListType where
    fromText = \case
        "all" -> Just All
        "children" -> Just Children
        _ -> Nothing

instance ToText OrgUnitsListType where
    toText = \case
        All -> "all"
        Children -> "children"

instance FromJSON OrgUnitsListType where
    parseJSON = parseJSONText "OrgUnitsListType"

instance ToJSON OrgUnitsListType where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
data MobileDevicesListSortOrder
    = Ascending
      -- ^ @ASCENDING@
      -- Ascending order.
    | Descending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MobileDevicesListSortOrder

instance FromText MobileDevicesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText MobileDevicesListSortOrder where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON MobileDevicesListSortOrder where
    parseJSON = parseJSONText "MobileDevicesListSortOrder"

instance ToJSON MobileDevicesListSortOrder where
    toJSON = toJSONText

-- | Column to use for sorting results
data UsersListOrderBy
    = Email
      -- ^ @email@
      -- Primary email of the user.
    | FamilyName
      -- ^ @familyName@
      -- User\'s family name.
    | GivenName
      -- ^ @givenName@
      -- User\'s given name.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersListOrderBy

instance FromText UsersListOrderBy where
    fromText = \case
        "email" -> Just Email
        "familyName" -> Just FamilyName
        "givenName" -> Just GivenName
        _ -> Nothing

instance ToText UsersListOrderBy where
    toText = \case
        Email -> "email"
        FamilyName -> "familyName"
        GivenName -> "givenName"

instance FromJSON UsersListOrderBy where
    parseJSON = parseJSONText "UsersListOrderBy"

instance ToJSON UsersListOrderBy where
    toJSON = toJSONText

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data UsersWatchViewType
    = UWVTAdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | UWVTDomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersWatchViewType

instance FromText UsersWatchViewType where
    fromText = \case
        "admin_view" -> Just UWVTAdminView
        "domain_public" -> Just UWVTDomainPublic
        _ -> Nothing

instance ToText UsersWatchViewType where
    toText = \case
        UWVTAdminView -> "admin_view"
        UWVTDomainPublic -> "domain_public"

instance FromJSON UsersWatchViewType where
    parseJSON = parseJSONText "UsersWatchViewType"

instance ToJSON UsersWatchViewType where
    toJSON = toJSONText

-- | What subset of fields to fetch for this user.
data UsersGetProjection
    = UGPBasic
      -- ^ @basic@
      -- Do not include any custom fields for the user.
    | UGPCustom
      -- ^ @custom@
      -- Include custom fields from schemas mentioned in customFieldMask.
    | UGPFull
      -- ^ @full@
      -- Include all fields associated with this user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersGetProjection

instance FromText UsersGetProjection where
    fromText = \case
        "basic" -> Just UGPBasic
        "custom" -> Just UGPCustom
        "full" -> Just UGPFull
        _ -> Nothing

instance ToText UsersGetProjection where
    toText = \case
        UGPBasic -> "basic"
        UGPCustom -> "custom"
        UGPFull -> "full"

instance FromJSON UsersGetProjection where
    parseJSON = parseJSONText "UsersGetProjection"

instance ToJSON UsersGetProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data MobileDevicesListProjection
    = MDLPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, model, status,
      -- type, and status)
    | MDLPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MobileDevicesListProjection

instance FromText MobileDevicesListProjection where
    fromText = \case
        "BASIC" -> Just MDLPBasic
        "FULL" -> Just MDLPFull
        _ -> Nothing

instance ToText MobileDevicesListProjection where
    toText = \case
        MDLPBasic -> "BASIC"
        MDLPFull -> "FULL"

instance FromJSON MobileDevicesListProjection where
    parseJSON = parseJSONText "MobileDevicesListProjection"

instance ToJSON MobileDevicesListProjection where
    toJSON = toJSONText

-- | Column to use for sorting results
data MobileDevicesListOrderBy
    = MDLOBDeviceId
      -- ^ @deviceId@
      -- Mobile Device serial number.
    | MDLOBEmail
      -- ^ @email@
      -- Owner user email.
    | MDLOBLastSync
      -- ^ @lastSync@
      -- Last policy settings sync date time of the device.
    | MDLOBModel
      -- ^ @model@
      -- Mobile Device model.
    | MDLOBName
      -- ^ @name@
      -- Owner user name.
    | MDLOBOS
      -- ^ @os@
      -- Mobile operating system.
    | MDLOBStatus
      -- ^ @status@
      -- Status of the device.
    | MDLOBType
      -- ^ @type@
      -- Type of the device.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MobileDevicesListOrderBy

instance FromText MobileDevicesListOrderBy where
    fromText = \case
        "deviceId" -> Just MDLOBDeviceId
        "email" -> Just MDLOBEmail
        "lastSync" -> Just MDLOBLastSync
        "model" -> Just MDLOBModel
        "name" -> Just MDLOBName
        "os" -> Just MDLOBOS
        "status" -> Just MDLOBStatus
        "type" -> Just MDLOBType
        _ -> Nothing

instance ToText MobileDevicesListOrderBy where
    toText = \case
        MDLOBDeviceId -> "deviceId"
        MDLOBEmail -> "email"
        MDLOBLastSync -> "lastSync"
        MDLOBModel -> "model"
        MDLOBName -> "name"
        MDLOBOS -> "os"
        MDLOBStatus -> "status"
        MDLOBType -> "type"

instance FromJSON MobileDevicesListOrderBy where
    parseJSON = parseJSONText "MobileDevicesListOrderBy"

instance ToJSON MobileDevicesListOrderBy where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order.
data UsersListSortOrder
    = ULSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | ULSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersListSortOrder

instance FromText UsersListSortOrder where
    fromText = \case
        "ASCENDING" -> Just ULSOAscending
        "DESCENDING" -> Just ULSODescending
        _ -> Nothing

instance ToText UsersListSortOrder where
    toText = \case
        ULSOAscending -> "ASCENDING"
        ULSODescending -> "DESCENDING"

instance FromJSON UsersListSortOrder where
    parseJSON = parseJSONText "UsersListSortOrder"

instance ToJSON UsersListSortOrder where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
data ChromeosDevicesListSortOrder
    = CDLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | CDLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosDevicesListSortOrder

instance FromText ChromeosDevicesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just CDLSOAscending
        "DESCENDING" -> Just CDLSODescending
        _ -> Nothing

instance ToText ChromeosDevicesListSortOrder where
    toText = \case
        CDLSOAscending -> "ASCENDING"
        CDLSODescending -> "DESCENDING"

instance FromJSON ChromeosDevicesListSortOrder where
    parseJSON = parseJSONText "ChromeosDevicesListSortOrder"

instance ToJSON ChromeosDevicesListSortOrder where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order.
data UsersWatchSortOrder
    = UWSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | UWSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersWatchSortOrder

instance FromText UsersWatchSortOrder where
    fromText = \case
        "ASCENDING" -> Just UWSOAscending
        "DESCENDING" -> Just UWSODescending
        _ -> Nothing

instance ToText UsersWatchSortOrder where
    toText = \case
        UWSOAscending -> "ASCENDING"
        UWSODescending -> "DESCENDING"

instance FromJSON UsersWatchSortOrder where
    parseJSON = parseJSONText "UsersWatchSortOrder"

instance ToJSON UsersWatchSortOrder where
    toJSON = toJSONText

-- | What subset of fields to fetch for this user.
data UsersListProjection
    = ULPBasic
      -- ^ @basic@
      -- Do not include any custom fields for the user.
    | ULPCustom
      -- ^ @custom@
      -- Include custom fields from schemas mentioned in customFieldMask.
    | ULPFull
      -- ^ @full@
      -- Include all fields associated with this user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersListProjection

instance FromText UsersListProjection where
    fromText = \case
        "basic" -> Just ULPBasic
        "custom" -> Just ULPCustom
        "full" -> Just ULPFull
        _ -> Nothing

instance ToText UsersListProjection where
    toText = \case
        ULPBasic -> "basic"
        ULPCustom -> "custom"
        ULPFull -> "full"

instance FromJSON UsersListProjection where
    parseJSON = parseJSONText "UsersListProjection"

instance ToJSON UsersListProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data ChromeosDevicesUpdateProjection
    = CDUPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | CDUPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosDevicesUpdateProjection

instance FromText ChromeosDevicesUpdateProjection where
    fromText = \case
        "BASIC" -> Just CDUPBasic
        "FULL" -> Just CDUPFull
        _ -> Nothing

instance ToText ChromeosDevicesUpdateProjection where
    toText = \case
        CDUPBasic -> "BASIC"
        CDUPFull -> "FULL"

instance FromJSON ChromeosDevicesUpdateProjection where
    parseJSON = parseJSONText "ChromeosDevicesUpdateProjection"

instance ToJSON ChromeosDevicesUpdateProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data MobileDevicesGetProjection
    = MDGPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, model, status,
      -- type, and status)
    | MDGPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MobileDevicesGetProjection

instance FromText MobileDevicesGetProjection where
    fromText = \case
        "BASIC" -> Just MDGPBasic
        "FULL" -> Just MDGPFull
        _ -> Nothing

instance ToText MobileDevicesGetProjection where
    toText = \case
        MDGPBasic -> "BASIC"
        MDGPFull -> "FULL"

instance FromJSON MobileDevicesGetProjection where
    parseJSON = parseJSONText "MobileDevicesGetProjection"

instance ToJSON MobileDevicesGetProjection where
    toJSON = toJSONText

-- | Column to use for sorting results
data ChromeosDevicesListOrderBy
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

instance Hashable ChromeosDevicesListOrderBy

instance FromText ChromeosDevicesListOrderBy where
    fromText = \case
        "annotatedLocation" -> Just AnnotatedLocation
        "annotatedUser" -> Just AnnotatedUser
        "lastSync" -> Just LastSync
        "notes" -> Just Notes
        "serialNumber" -> Just SerialNumber
        "status" -> Just Status
        "supportEndDate" -> Just SupportEndDate
        _ -> Nothing

instance ToText ChromeosDevicesListOrderBy where
    toText = \case
        AnnotatedLocation -> "annotatedLocation"
        AnnotatedUser -> "annotatedUser"
        LastSync -> "lastSync"
        Notes -> "notes"
        SerialNumber -> "serialNumber"
        Status -> "status"
        SupportEndDate -> "supportEndDate"

instance FromJSON ChromeosDevicesListOrderBy where
    parseJSON = parseJSONText "ChromeosDevicesListOrderBy"

instance ToJSON ChromeosDevicesListOrderBy where
    toJSON = toJSONText

-- | What subset of fields to fetch for this user.
data UsersWatchProjection
    = UWPBasic
      -- ^ @basic@
      -- Do not include any custom fields for the user.
    | UWPCustom
      -- ^ @custom@
      -- Include custom fields from schemas mentioned in customFieldMask.
    | UWPFull
      -- ^ @full@
      -- Include all fields associated with this user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersWatchProjection

instance FromText UsersWatchProjection where
    fromText = \case
        "basic" -> Just UWPBasic
        "custom" -> Just UWPCustom
        "full" -> Just UWPFull
        _ -> Nothing

instance ToText UsersWatchProjection where
    toText = \case
        UWPBasic -> "basic"
        UWPCustom -> "custom"
        UWPFull -> "full"

instance FromJSON UsersWatchProjection where
    parseJSON = parseJSONText "UsersWatchProjection"

instance ToJSON UsersWatchProjection where
    toJSON = toJSONText

-- | Column to use for sorting results
data UsersWatchOrderBy
    = UWOBEmail
      -- ^ @email@
      -- Primary email of the user.
    | UWOBFamilyName
      -- ^ @familyName@
      -- User\'s family name.
    | UWOBGivenName
      -- ^ @givenName@
      -- User\'s given name.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersWatchOrderBy

instance FromText UsersWatchOrderBy where
    fromText = \case
        "email" -> Just UWOBEmail
        "familyName" -> Just UWOBFamilyName
        "givenName" -> Just UWOBGivenName
        _ -> Nothing

instance ToText UsersWatchOrderBy where
    toText = \case
        UWOBEmail -> "email"
        UWOBFamilyName -> "familyName"
        UWOBGivenName -> "givenName"

instance FromJSON UsersWatchOrderBy where
    parseJSON = parseJSONText "UsersWatchOrderBy"

instance ToJSON UsersWatchOrderBy where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data ChromeosDevicesListProjection
    = CDLPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | CDLPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChromeosDevicesListProjection

instance FromText ChromeosDevicesListProjection where
    fromText = \case
        "BASIC" -> Just CDLPBasic
        "FULL" -> Just CDLPFull
        _ -> Nothing

instance ToText ChromeosDevicesListProjection where
    toText = \case
        CDLPBasic -> "BASIC"
        CDLPFull -> "FULL"

instance FromJSON ChromeosDevicesListProjection where
    parseJSON = parseJSONText "ChromeosDevicesListProjection"

instance ToJSON ChromeosDevicesListProjection where
    toJSON = toJSONText

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data UsersGetViewType
    = UGVTAdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | UGVTDomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersGetViewType

instance FromText UsersGetViewType where
    fromText = \case
        "admin_view" -> Just UGVTAdminView
        "domain_public" -> Just UGVTDomainPublic
        _ -> Nothing

instance ToText UsersGetViewType where
    toText = \case
        UGVTAdminView -> "admin_view"
        UGVTDomainPublic -> "domain_public"

instance FromJSON UsersGetViewType where
    parseJSON = parseJSONText "UsersGetViewType"

instance ToJSON UsersGetViewType where
    toJSON = toJSONText
