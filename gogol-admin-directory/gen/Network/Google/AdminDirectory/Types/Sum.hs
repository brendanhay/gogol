{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
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
data Event
    = Add
      -- ^ @add@
      -- Alias Created Event
    | Delete
      -- ^ @delete@
      -- Alias Deleted Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Event

instance FromText Event where
    fromText = \case
        "add" -> Just Add
        "delete" -> Just Delete
        _ -> Nothing

instance ToText Event where
    toText = \case
        Add -> "add"
        Delete -> "delete"

instance FromJSON Event where
    parseJSON = parseJSONText "Event"

instance ToJSON Event where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryChromeosDevicesListProjection
    = Basic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | Full
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosDevicesListProjection

instance FromText DirectoryChromeosDevicesListProjection where
    fromText = \case
        "BASIC" -> Just Basic
        "FULL" -> Just Full
        _ -> Nothing

instance ToText DirectoryChromeosDevicesListProjection where
    toText = \case
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON DirectoryChromeosDevicesListProjection where
    parseJSON = parseJSONText "DirectoryChromeosDevicesListProjection"

instance ToJSON DirectoryChromeosDevicesListProjection where
    toJSON = toJSONText

-- | Column to use for sorting results
data DirectoryUsersWatchOrderBy
    = DUWOBEmail
      -- ^ @email@
      -- Primary email of the user.
    | DUWOBFamilyName
      -- ^ @familyName@
      -- User\'s family name.
    | DUWOBGivenName
      -- ^ @givenName@
      -- User\'s given name.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersWatchOrderBy

instance FromText DirectoryUsersWatchOrderBy where
    fromText = \case
        "email" -> Just DUWOBEmail
        "familyName" -> Just DUWOBFamilyName
        "givenName" -> Just DUWOBGivenName
        _ -> Nothing

instance ToText DirectoryUsersWatchOrderBy where
    toText = \case
        DUWOBEmail -> "email"
        DUWOBFamilyName -> "familyName"
        DUWOBGivenName -> "givenName"

instance FromJSON DirectoryUsersWatchOrderBy where
    parseJSON = parseJSONText "DirectoryUsersWatchOrderBy"

instance ToJSON DirectoryUsersWatchOrderBy where
    toJSON = toJSONText

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data DirectoryUsersWatchViewType
    = AdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | DomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersWatchViewType

instance FromText DirectoryUsersWatchViewType where
    fromText = \case
        "admin_view" -> Just AdminView
        "domain_public" -> Just DomainPublic
        _ -> Nothing

instance ToText DirectoryUsersWatchViewType where
    toText = \case
        AdminView -> "admin_view"
        DomainPublic -> "domain_public"

instance FromJSON DirectoryUsersWatchViewType where
    parseJSON = parseJSONText "DirectoryUsersWatchViewType"

instance ToJSON DirectoryUsersWatchViewType where
    toJSON = toJSONText

-- | Column to use for sorting results
data OrderBy
    = OBEmail
      -- ^ @email@
      -- Primary email of the user.
    | OBFamilyName
      -- ^ @familyName@
      -- User\'s family name.
    | OBGivenName
      -- ^ @givenName@
      -- User\'s given name.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderBy

instance FromText OrderBy where
    fromText = \case
        "email" -> Just OBEmail
        "familyName" -> Just OBFamilyName
        "givenName" -> Just OBGivenName
        _ -> Nothing

instance ToText OrderBy where
    toText = \case
        OBEmail -> "email"
        OBFamilyName -> "familyName"
        OBGivenName -> "givenName"

instance FromJSON OrderBy where
    parseJSON = parseJSONText "OrderBy"

instance ToJSON OrderBy where
    toJSON = toJSONText

-- | Column to use for sorting results
data DirectoryMobileDevicesListOrderBy
    = DMDLOBDeviceId
      -- ^ @deviceId@
      -- Mobile Device serial number.
    | DMDLOBEmail
      -- ^ @email@
      -- Owner user email.
    | DMDLOBLastSync
      -- ^ @lastSync@
      -- Last policy settings sync date time of the device.
    | DMDLOBModel
      -- ^ @model@
      -- Mobile Device model.
    | DMDLOBName
      -- ^ @name@
      -- Owner user name.
    | DMDLOBOS
      -- ^ @os@
      -- Mobile operating system.
    | DMDLOBStatus
      -- ^ @status@
      -- Status of the device.
    | DMDLOBType
      -- ^ @type@
      -- Type of the device.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryMobileDevicesListOrderBy

instance FromText DirectoryMobileDevicesListOrderBy where
    fromText = \case
        "deviceId" -> Just DMDLOBDeviceId
        "email" -> Just DMDLOBEmail
        "lastSync" -> Just DMDLOBLastSync
        "model" -> Just DMDLOBModel
        "name" -> Just DMDLOBName
        "os" -> Just DMDLOBOS
        "status" -> Just DMDLOBStatus
        "type" -> Just DMDLOBType
        _ -> Nothing

instance ToText DirectoryMobileDevicesListOrderBy where
    toText = \case
        DMDLOBDeviceId -> "deviceId"
        DMDLOBEmail -> "email"
        DMDLOBLastSync -> "lastSync"
        DMDLOBModel -> "model"
        DMDLOBName -> "name"
        DMDLOBOS -> "os"
        DMDLOBStatus -> "status"
        DMDLOBType -> "type"

instance FromJSON DirectoryMobileDevicesListOrderBy where
    parseJSON = parseJSONText "DirectoryMobileDevicesListOrderBy"

instance ToJSON DirectoryMobileDevicesListOrderBy where
    toJSON = toJSONText

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data ViewType
    = VTAdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | VTDomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ViewType

instance FromText ViewType where
    fromText = \case
        "admin_view" -> Just VTAdminView
        "domain_public" -> Just VTDomainPublic
        _ -> Nothing

instance ToText ViewType where
    toText = \case
        VTAdminView -> "admin_view"
        VTDomainPublic -> "domain_public"

instance FromJSON ViewType where
    parseJSON = parseJSONText "ViewType"

instance ToJSON ViewType where
    toJSON = toJSONText

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data DirectoryUsersGetViewType
    = DUGVTAdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | DUGVTDomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersGetViewType

instance FromText DirectoryUsersGetViewType where
    fromText = \case
        "admin_view" -> Just DUGVTAdminView
        "domain_public" -> Just DUGVTDomainPublic
        _ -> Nothing

instance ToText DirectoryUsersGetViewType where
    toText = \case
        DUGVTAdminView -> "admin_view"
        DUGVTDomainPublic -> "domain_public"

instance FromJSON DirectoryUsersGetViewType where
    parseJSON = parseJSONText "DirectoryUsersGetViewType"

instance ToJSON DirectoryUsersGetViewType where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data DirectoryUsersAliasesWatchEvent
    = DUAWEAdd
      -- ^ @add@
      -- Alias Created Event
    | DUAWEDelete
      -- ^ @delete@
      -- Alias Deleted Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersAliasesWatchEvent

instance FromText DirectoryUsersAliasesWatchEvent where
    fromText = \case
        "add" -> Just DUAWEAdd
        "delete" -> Just DUAWEDelete
        _ -> Nothing

instance ToText DirectoryUsersAliasesWatchEvent where
    toText = \case
        DUAWEAdd -> "add"
        DUAWEDelete -> "delete"

instance FromJSON DirectoryUsersAliasesWatchEvent where
    parseJSON = parseJSONText "DirectoryUsersAliasesWatchEvent"

instance ToJSON DirectoryUsersAliasesWatchEvent where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order.
data DirectoryUsersWatchSortOrder
    = Ascending
      -- ^ @ASCENDING@
      -- Ascending order.
    | Descending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersWatchSortOrder

instance FromText DirectoryUsersWatchSortOrder where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText DirectoryUsersWatchSortOrder where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON DirectoryUsersWatchSortOrder where
    parseJSON = parseJSONText "DirectoryUsersWatchSortOrder"

instance ToJSON DirectoryUsersWatchSortOrder where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryMobileDevicesGetProjection
    = DMDGPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, model, status,
      -- type, and status)
    | DMDGPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryMobileDevicesGetProjection

instance FromText DirectoryMobileDevicesGetProjection where
    fromText = \case
        "BASIC" -> Just DMDGPBasic
        "FULL" -> Just DMDGPFull
        _ -> Nothing

instance ToText DirectoryMobileDevicesGetProjection where
    toText = \case
        DMDGPBasic -> "BASIC"
        DMDGPFull -> "FULL"

instance FromJSON DirectoryMobileDevicesGetProjection where
    parseJSON = parseJSONText "DirectoryMobileDevicesGetProjection"

instance ToJSON DirectoryMobileDevicesGetProjection where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order.
data SortOrder
    = SOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | SODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SortOrder

instance FromText SortOrder where
    fromText = \case
        "ASCENDING" -> Just SOAscending
        "DESCENDING" -> Just SODescending
        _ -> Nothing

instance ToText SortOrder where
    toText = \case
        SOAscending -> "ASCENDING"
        SODescending -> "DESCENDING"

instance FromJSON SortOrder where
    parseJSON = parseJSONText "SortOrder"

instance ToJSON SortOrder where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
data DirectoryMobileDevicesListSortOrder
    = DMDLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | DMDLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryMobileDevicesListSortOrder

instance FromText DirectoryMobileDevicesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DMDLSOAscending
        "DESCENDING" -> Just DMDLSODescending
        _ -> Nothing

instance ToText DirectoryMobileDevicesListSortOrder where
    toText = \case
        DMDLSOAscending -> "ASCENDING"
        DMDLSODescending -> "DESCENDING"

instance FromJSON DirectoryMobileDevicesListSortOrder where
    parseJSON = parseJSONText "DirectoryMobileDevicesListSortOrder"

instance ToJSON DirectoryMobileDevicesListSortOrder where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryChromeosDevicesUpdateProjection
    = DCDUPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | DCDUPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosDevicesUpdateProjection

instance FromText DirectoryChromeosDevicesUpdateProjection where
    fromText = \case
        "BASIC" -> Just DCDUPBasic
        "FULL" -> Just DCDUPFull
        _ -> Nothing

instance ToText DirectoryChromeosDevicesUpdateProjection where
    toText = \case
        DCDUPBasic -> "BASIC"
        DCDUPFull -> "FULL"

instance FromJSON DirectoryChromeosDevicesUpdateProjection where
    parseJSON = parseJSONText "DirectoryChromeosDevicesUpdateProjection"

instance ToJSON DirectoryChromeosDevicesUpdateProjection where
    toJSON = toJSONText

-- | What subset of fields to fetch for this user.
data DirectoryUsersWatchProjection
    = DUWPBasic
      -- ^ @basic@
      -- Do not include any custom fields for the user.
    | DUWPCustom
      -- ^ @custom@
      -- Include custom fields from schemas mentioned in customFieldMask.
    | DUWPFull
      -- ^ @full@
      -- Include all fields associated with this user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersWatchProjection

instance FromText DirectoryUsersWatchProjection where
    fromText = \case
        "basic" -> Just DUWPBasic
        "custom" -> Just DUWPCustom
        "full" -> Just DUWPFull
        _ -> Nothing

instance ToText DirectoryUsersWatchProjection where
    toText = \case
        DUWPBasic -> "basic"
        DUWPCustom -> "custom"
        DUWPFull -> "full"

instance FromJSON DirectoryUsersWatchProjection where
    parseJSON = parseJSONText "DirectoryUsersWatchProjection"

instance ToJSON DirectoryUsersWatchProjection where
    toJSON = toJSONText

-- | Column to use for sorting results
data DirectoryChromeosDevicesListOrderBy
    = DCDLOBAnnotatedLocation
      -- ^ @annotatedLocation@
      -- Chromebook location as annotated by the administrator.
    | DCDLOBAnnotatedUser
      -- ^ @annotatedUser@
      -- Chromebook user as annotated by administrator.
    | DCDLOBLastSync
      -- ^ @lastSync@
      -- Chromebook last sync.
    | DCDLOBNotes
      -- ^ @notes@
      -- Chromebook notes as annotated by the administrator.
    | DCDLOBSerialNumber
      -- ^ @serialNumber@
      -- Chromebook Serial Number.
    | DCDLOBStatus
      -- ^ @status@
      -- Chromebook status.
    | DCDLOBSupportEndDate
      -- ^ @supportEndDate@
      -- Chromebook support end date.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosDevicesListOrderBy

instance FromText DirectoryChromeosDevicesListOrderBy where
    fromText = \case
        "annotatedLocation" -> Just DCDLOBAnnotatedLocation
        "annotatedUser" -> Just DCDLOBAnnotatedUser
        "lastSync" -> Just DCDLOBLastSync
        "notes" -> Just DCDLOBNotes
        "serialNumber" -> Just DCDLOBSerialNumber
        "status" -> Just DCDLOBStatus
        "supportEndDate" -> Just DCDLOBSupportEndDate
        _ -> Nothing

instance ToText DirectoryChromeosDevicesListOrderBy where
    toText = \case
        DCDLOBAnnotatedLocation -> "annotatedLocation"
        DCDLOBAnnotatedUser -> "annotatedUser"
        DCDLOBLastSync -> "lastSync"
        DCDLOBNotes -> "notes"
        DCDLOBSerialNumber -> "serialNumber"
        DCDLOBStatus -> "status"
        DCDLOBSupportEndDate -> "supportEndDate"

instance FromJSON DirectoryChromeosDevicesListOrderBy where
    parseJSON = parseJSONText "DirectoryChromeosDevicesListOrderBy"

instance ToJSON DirectoryChromeosDevicesListOrderBy where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data DirectoryUsersListEvent
    = DULEAdd
      -- ^ @add@
      -- User Created Event
    | DULEDelete
      -- ^ @delete@
      -- User Deleted Event
    | DULEMakeAdmin
      -- ^ @makeAdmin@
      -- User Admin Status Change Event
    | DULEUndelete
      -- ^ @undelete@
      -- User Undeleted Event
    | DULEUpdate
      -- ^ @update@
      -- User Updated Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersListEvent

instance FromText DirectoryUsersListEvent where
    fromText = \case
        "add" -> Just DULEAdd
        "delete" -> Just DULEDelete
        "makeAdmin" -> Just DULEMakeAdmin
        "undelete" -> Just DULEUndelete
        "update" -> Just DULEUpdate
        _ -> Nothing

instance ToText DirectoryUsersListEvent where
    toText = \case
        DULEAdd -> "add"
        DULEDelete -> "delete"
        DULEMakeAdmin -> "makeAdmin"
        DULEUndelete -> "undelete"
        DULEUpdate -> "update"

instance FromJSON DirectoryUsersListEvent where
    parseJSON = parseJSONText "DirectoryUsersListEvent"

instance ToJSON DirectoryUsersListEvent where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryMobileDevicesListProjection
    = DMDLPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, model, status,
      -- type, and status)
    | DMDLPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryMobileDevicesListProjection

instance FromText DirectoryMobileDevicesListProjection where
    fromText = \case
        "BASIC" -> Just DMDLPBasic
        "FULL" -> Just DMDLPFull
        _ -> Nothing

instance ToText DirectoryMobileDevicesListProjection where
    toText = \case
        DMDLPBasic -> "BASIC"
        DMDLPFull -> "FULL"

instance FromJSON DirectoryMobileDevicesListProjection where
    parseJSON = parseJSONText "DirectoryMobileDevicesListProjection"

instance ToJSON DirectoryMobileDevicesListProjection where
    toJSON = toJSONText

-- | What subset of fields to fetch for this user.
data Projection
    = PBasic
      -- ^ @basic@
      -- Do not include any custom fields for the user.
    | PCustom
      -- ^ @custom@
      -- Include custom fields from schemas mentioned in customFieldMask.
    | PFull
      -- ^ @full@
      -- Include all fields associated with this user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Projection

instance FromText Projection where
    fromText = \case
        "basic" -> Just PBasic
        "custom" -> Just PCustom
        "full" -> Just PFull
        _ -> Nothing

instance ToText Projection where
    toText = \case
        PBasic -> "basic"
        PCustom -> "custom"
        PFull -> "full"

instance FromJSON Projection where
    parseJSON = parseJSONText "Projection"

instance ToJSON Projection where
    toJSON = toJSONText

-- | What subset of fields to fetch for this user.
data DirectoryUsersGetProjection
    = DUGPBasic
      -- ^ @basic@
      -- Do not include any custom fields for the user.
    | DUGPCustom
      -- ^ @custom@
      -- Include custom fields from schemas mentioned in customFieldMask.
    | DUGPFull
      -- ^ @full@
      -- Include all fields associated with this user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersGetProjection

instance FromText DirectoryUsersGetProjection where
    fromText = \case
        "basic" -> Just DUGPBasic
        "custom" -> Just DUGPCustom
        "full" -> Just DUGPFull
        _ -> Nothing

instance ToText DirectoryUsersGetProjection where
    toText = \case
        DUGPBasic -> "basic"
        DUGPCustom -> "custom"
        DUGPFull -> "full"

instance FromJSON DirectoryUsersGetProjection where
    parseJSON = parseJSONText "DirectoryUsersGetProjection"

instance ToJSON DirectoryUsersGetProjection where
    toJSON = toJSONText

-- | Whether to return all sub-organizations or just immediate children
data Type
    = All
      -- ^ @all@
      -- All sub-organization units.
    | Children
      -- ^ @children@
      -- Immediate children only (default).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Type

instance FromText Type where
    fromText = \case
        "all" -> Just All
        "children" -> Just Children
        _ -> Nothing

instance ToText Type where
    toText = \case
        All -> "all"
        Children -> "children"

instance FromJSON Type where
    parseJSON = parseJSONText "Type"

instance ToJSON Type where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryChromeosDevicesGetProjection
    = DCDGPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | DCDGPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosDevicesGetProjection

instance FromText DirectoryChromeosDevicesGetProjection where
    fromText = \case
        "BASIC" -> Just DCDGPBasic
        "FULL" -> Just DCDGPFull
        _ -> Nothing

instance ToText DirectoryChromeosDevicesGetProjection where
    toText = \case
        DCDGPBasic -> "BASIC"
        DCDGPFull -> "FULL"

instance FromJSON DirectoryChromeosDevicesGetProjection where
    parseJSON = parseJSONText "DirectoryChromeosDevicesGetProjection"

instance ToJSON DirectoryChromeosDevicesGetProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryChromeosDevicesPatchProjection
    = DCDPPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | DCDPPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosDevicesPatchProjection

instance FromText DirectoryChromeosDevicesPatchProjection where
    fromText = \case
        "BASIC" -> Just DCDPPBasic
        "FULL" -> Just DCDPPFull
        _ -> Nothing

instance ToText DirectoryChromeosDevicesPatchProjection where
    toText = \case
        DCDPPBasic -> "BASIC"
        DCDPPFull -> "FULL"

instance FromJSON DirectoryChromeosDevicesPatchProjection where
    parseJSON = parseJSONText "DirectoryChromeosDevicesPatchProjection"

instance ToJSON DirectoryChromeosDevicesPatchProjection where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data DirectoryUsersWatchEvent
    = DUWEAdd
      -- ^ @add@
      -- User Created Event
    | DUWEDelete
      -- ^ @delete@
      -- User Deleted Event
    | DUWEMakeAdmin
      -- ^ @makeAdmin@
      -- User Admin Status Change Event
    | DUWEUndelete
      -- ^ @undelete@
      -- User Undeleted Event
    | DUWEUpdate
      -- ^ @update@
      -- User Updated Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersWatchEvent

instance FromText DirectoryUsersWatchEvent where
    fromText = \case
        "add" -> Just DUWEAdd
        "delete" -> Just DUWEDelete
        "makeAdmin" -> Just DUWEMakeAdmin
        "undelete" -> Just DUWEUndelete
        "update" -> Just DUWEUpdate
        _ -> Nothing

instance ToText DirectoryUsersWatchEvent where
    toText = \case
        DUWEAdd -> "add"
        DUWEDelete -> "delete"
        DUWEMakeAdmin -> "makeAdmin"
        DUWEUndelete -> "undelete"
        DUWEUpdate -> "update"

instance FromJSON DirectoryUsersWatchEvent where
    parseJSON = parseJSONText "DirectoryUsersWatchEvent"

instance ToJSON DirectoryUsersWatchEvent where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
data DirectoryChromeosDevicesListSortOrder
    = DCDLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | DCDLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosDevicesListSortOrder

instance FromText DirectoryChromeosDevicesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DCDLSOAscending
        "DESCENDING" -> Just DCDLSODescending
        _ -> Nothing

instance ToText DirectoryChromeosDevicesListSortOrder where
    toText = \case
        DCDLSOAscending -> "ASCENDING"
        DCDLSODescending -> "DESCENDING"

instance FromJSON DirectoryChromeosDevicesListSortOrder where
    parseJSON = parseJSONText "DirectoryChromeosDevicesListSortOrder"

instance ToJSON DirectoryChromeosDevicesListSortOrder where
    toJSON = toJSONText
