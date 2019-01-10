{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Directory.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Directory.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersListEvent

instance FromHttpApiData UsersListEvent where
    parseQueryParam = \case
        "add" -> Right Add
        "delete" -> Right Delete'
        "makeAdmin" -> Right MakeAdmin
        "undelete" -> Right Undelete
        "update" -> Right Update
        x -> Left ("Unable to parse UsersListEvent from: " <> x)

instance ToHttpApiData UsersListEvent where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersAliasesListEvent

instance FromHttpApiData UsersAliasesListEvent where
    parseQueryParam = \case
        "add" -> Right UALEAdd
        "delete" -> Right UALEDelete'
        x -> Left ("Unable to parse UsersAliasesListEvent from: " <> x)

instance ToHttpApiData UsersAliasesListEvent where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersAliasesWatchEvent

instance FromHttpApiData UsersAliasesWatchEvent where
    parseQueryParam = \case
        "add" -> Right UAWEAdd
        "delete" -> Right UAWEDelete'
        x -> Left ("Unable to parse UsersAliasesWatchEvent from: " <> x)

instance ToHttpApiData UsersAliasesWatchEvent where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersWatchEvent

instance FromHttpApiData UsersWatchEvent where
    parseQueryParam = \case
        "add" -> Right UWEAdd
        "delete" -> Right UWEDelete'
        "makeAdmin" -> Right UWEMakeAdmin
        "undelete" -> Right UWEUndelete
        "update" -> Right UWEUpdate
        x -> Left ("Unable to parse UsersWatchEvent from: " <> x)

instance ToHttpApiData UsersWatchEvent where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChromeosDevicesPatchProjection

instance FromHttpApiData ChromeosDevicesPatchProjection where
    parseQueryParam = \case
        "BASIC" -> Right Basic
        "FULL" -> Right Full
        x -> Left ("Unable to parse ChromeosDevicesPatchProjection from: " <> x)

instance ToHttpApiData ChromeosDevicesPatchProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChromeosDevicesGetProjection

instance FromHttpApiData ChromeosDevicesGetProjection where
    parseQueryParam = \case
        "BASIC" -> Right CDGPBasic
        "FULL" -> Right CDGPFull
        x -> Left ("Unable to parse ChromeosDevicesGetProjection from: " <> x)

instance ToHttpApiData ChromeosDevicesGetProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersListViewType

instance FromHttpApiData UsersListViewType where
    parseQueryParam = \case
        "admin_view" -> Right AdminView
        "domain_public" -> Right DomainPublic
        x -> Left ("Unable to parse UsersListViewType from: " <> x)

instance ToHttpApiData UsersListViewType where
    toQueryParam = \case
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
      -- All sub-organizational units.
    | Children
      -- ^ @children@
      -- Immediate children only (default).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrgUnitsListType

instance FromHttpApiData OrgUnitsListType where
    parseQueryParam = \case
        "all" -> Right All
        "children" -> Right Children
        x -> Left ("Unable to parse OrgUnitsListType from: " <> x)

instance ToHttpApiData OrgUnitsListType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MobileDevicesListSortOrder

instance FromHttpApiData MobileDevicesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right Ascending
        "DESCENDING" -> Right Descending
        x -> Left ("Unable to parse MobileDevicesListSortOrder from: " <> x)

instance ToHttpApiData MobileDevicesListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersListOrderBy

instance FromHttpApiData UsersListOrderBy where
    parseQueryParam = \case
        "email" -> Right Email
        "familyName" -> Right FamilyName
        "givenName" -> Right GivenName
        x -> Left ("Unable to parse UsersListOrderBy from: " <> x)

instance ToHttpApiData UsersListOrderBy where
    toQueryParam = \case
        Email -> "email"
        FamilyName -> "familyName"
        GivenName -> "givenName"

instance FromJSON UsersListOrderBy where
    parseJSON = parseJSONText "UsersListOrderBy"

instance ToJSON UsersListOrderBy where
    toJSON = toJSONText

-- | Column to use for sorting results
data GroupsListOrderBy
    = GLOBEmail
      -- ^ @email@
      -- Email of the group.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupsListOrderBy

instance FromHttpApiData GroupsListOrderBy where
    parseQueryParam = \case
        "email" -> Right GLOBEmail
        x -> Left ("Unable to parse GroupsListOrderBy from: " <> x)

instance ToHttpApiData GroupsListOrderBy where
    toQueryParam = \case
        GLOBEmail -> "email"

instance FromJSON GroupsListOrderBy where
    parseJSON = parseJSONText "GroupsListOrderBy"

instance ToJSON GroupsListOrderBy where
    toJSON = toJSONText

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data UsersWatchViewType
    = UWVTAdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | UWVTDomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersWatchViewType

instance FromHttpApiData UsersWatchViewType where
    parseQueryParam = \case
        "admin_view" -> Right UWVTAdminView
        "domain_public" -> Right UWVTDomainPublic
        x -> Left ("Unable to parse UsersWatchViewType from: " <> x)

instance ToHttpApiData UsersWatchViewType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersGetProjection

instance FromHttpApiData UsersGetProjection where
    parseQueryParam = \case
        "basic" -> Right UGPBasic
        "custom" -> Right UGPCustom
        "full" -> Right UGPFull
        x -> Left ("Unable to parse UsersGetProjection from: " <> x)

instance ToHttpApiData UsersGetProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MobileDevicesListProjection

instance FromHttpApiData MobileDevicesListProjection where
    parseQueryParam = \case
        "BASIC" -> Right MDLPBasic
        "FULL" -> Right MDLPFull
        x -> Left ("Unable to parse MobileDevicesListProjection from: " <> x)

instance ToHttpApiData MobileDevicesListProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MobileDevicesListOrderBy

instance FromHttpApiData MobileDevicesListOrderBy where
    parseQueryParam = \case
        "deviceId" -> Right MDLOBDeviceId
        "email" -> Right MDLOBEmail
        "lastSync" -> Right MDLOBLastSync
        "model" -> Right MDLOBModel
        "name" -> Right MDLOBName
        "os" -> Right MDLOBOS
        "status" -> Right MDLOBStatus
        "type" -> Right MDLOBType
        x -> Left ("Unable to parse MobileDevicesListOrderBy from: " <> x)

instance ToHttpApiData MobileDevicesListOrderBy where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersListSortOrder

instance FromHttpApiData UsersListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right ULSOAscending
        "DESCENDING" -> Right ULSODescending
        x -> Left ("Unable to parse UsersListSortOrder from: " <> x)

instance ToHttpApiData UsersListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChromeosDevicesListSortOrder

instance FromHttpApiData ChromeosDevicesListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right CDLSOAscending
        "DESCENDING" -> Right CDLSODescending
        x -> Left ("Unable to parse ChromeosDevicesListSortOrder from: " <> x)

instance ToHttpApiData ChromeosDevicesListSortOrder where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersWatchSortOrder

instance FromHttpApiData UsersWatchSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right UWSOAscending
        "DESCENDING" -> Right UWSODescending
        x -> Left ("Unable to parse UsersWatchSortOrder from: " <> x)

instance ToHttpApiData UsersWatchSortOrder where
    toQueryParam = \case
        UWSOAscending -> "ASCENDING"
        UWSODescending -> "DESCENDING"

instance FromJSON UsersWatchSortOrder where
    parseJSON = parseJSONText "UsersWatchSortOrder"

instance ToJSON UsersWatchSortOrder where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
data GroupsListSortOrder
    = GLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | GLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GroupsListSortOrder

instance FromHttpApiData GroupsListSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right GLSOAscending
        "DESCENDING" -> Right GLSODescending
        x -> Left ("Unable to parse GroupsListSortOrder from: " <> x)

instance ToHttpApiData GroupsListSortOrder where
    toQueryParam = \case
        GLSOAscending -> "ASCENDING"
        GLSODescending -> "DESCENDING"

instance FromJSON GroupsListSortOrder where
    parseJSON = parseJSONText "GroupsListSortOrder"

instance ToJSON GroupsListSortOrder where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersListProjection

instance FromHttpApiData UsersListProjection where
    parseQueryParam = \case
        "basic" -> Right ULPBasic
        "custom" -> Right ULPCustom
        "full" -> Right ULPFull
        x -> Left ("Unable to parse UsersListProjection from: " <> x)

instance ToHttpApiData UsersListProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChromeosDevicesUpdateProjection

instance FromHttpApiData ChromeosDevicesUpdateProjection where
    parseQueryParam = \case
        "BASIC" -> Right CDUPBasic
        "FULL" -> Right CDUPFull
        x -> Left ("Unable to parse ChromeosDevicesUpdateProjection from: " <> x)

instance ToHttpApiData ChromeosDevicesUpdateProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MobileDevicesGetProjection

instance FromHttpApiData MobileDevicesGetProjection where
    parseQueryParam = \case
        "BASIC" -> Right MDGPBasic
        "FULL" -> Right MDGPFull
        x -> Left ("Unable to parse MobileDevicesGetProjection from: " <> x)

instance ToHttpApiData MobileDevicesGetProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChromeosDevicesListOrderBy

instance FromHttpApiData ChromeosDevicesListOrderBy where
    parseQueryParam = \case
        "annotatedLocation" -> Right AnnotatedLocation
        "annotatedUser" -> Right AnnotatedUser
        "lastSync" -> Right LastSync
        "notes" -> Right Notes
        "serialNumber" -> Right SerialNumber
        "status" -> Right Status
        "supportEndDate" -> Right SupportEndDate
        x -> Left ("Unable to parse ChromeosDevicesListOrderBy from: " <> x)

instance ToHttpApiData ChromeosDevicesListOrderBy where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersWatchProjection

instance FromHttpApiData UsersWatchProjection where
    parseQueryParam = \case
        "basic" -> Right UWPBasic
        "custom" -> Right UWPCustom
        "full" -> Right UWPFull
        x -> Left ("Unable to parse UsersWatchProjection from: " <> x)

instance ToHttpApiData UsersWatchProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersWatchOrderBy

instance FromHttpApiData UsersWatchOrderBy where
    parseQueryParam = \case
        "email" -> Right UWOBEmail
        "familyName" -> Right UWOBFamilyName
        "givenName" -> Right UWOBGivenName
        x -> Left ("Unable to parse UsersWatchOrderBy from: " <> x)

instance ToHttpApiData UsersWatchOrderBy where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChromeosDevicesListProjection

instance FromHttpApiData ChromeosDevicesListProjection where
    parseQueryParam = \case
        "BASIC" -> Right CDLPBasic
        "FULL" -> Right CDLPFull
        x -> Left ("Unable to parse ChromeosDevicesListProjection from: " <> x)

instance ToHttpApiData ChromeosDevicesListProjection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersGetViewType

instance FromHttpApiData UsersGetViewType where
    parseQueryParam = \case
        "admin_view" -> Right UGVTAdminView
        "domain_public" -> Right UGVTDomainPublic
        x -> Left ("Unable to parse UsersGetViewType from: " <> x)

instance ToHttpApiData UsersGetViewType where
    toQueryParam = \case
        UGVTAdminView -> "admin_view"
        UGVTDomainPublic -> "domain_public"

instance FromJSON UsersGetViewType where
    parseJSON = parseJSONText "UsersGetViewType"

instance ToJSON UsersGetViewType where
    toJSON = toJSONText
