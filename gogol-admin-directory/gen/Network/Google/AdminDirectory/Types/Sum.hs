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

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data DirectoryUsersListViewType
    = AdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | DomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersListViewType

instance FromText DirectoryUsersListViewType where
    fromText = \case
        "admin_view" -> Just AdminView
        "domain_public" -> Just DomainPublic
        _ -> Nothing

instance ToText DirectoryUsersListViewType where
    toText = \case
        AdminView -> "admin_view"
        DomainPublic -> "domain_public"

instance FromJSON DirectoryUsersListViewType where
    parseJSON = parseJSONText "DirectoryUsersListViewType"

instance ToJSON DirectoryUsersListViewType where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryChromeosdevicesListProjection
    = Basic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | Full
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosdevicesListProjection

instance FromText DirectoryChromeosdevicesListProjection where
    fromText = \case
        "BASIC" -> Just Basic
        "FULL" -> Just Full
        _ -> Nothing

instance ToText DirectoryChromeosdevicesListProjection where
    toText = \case
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON DirectoryChromeosdevicesListProjection where
    parseJSON = parseJSONText "DirectoryChromeosdevicesListProjection"

instance ToJSON DirectoryChromeosdevicesListProjection where
    toJSON = toJSONText

-- | Column to use for sorting results
data DirectoryUsersWatchOrderBy
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

instance Hashable DirectoryUsersWatchOrderBy

instance FromText DirectoryUsersWatchOrderBy where
    fromText = \case
        "email" -> Just Email
        "familyName" -> Just FamilyName
        "givenName" -> Just GivenName
        _ -> Nothing

instance ToText DirectoryUsersWatchOrderBy where
    toText = \case
        Email -> "email"
        FamilyName -> "familyName"
        GivenName -> "givenName"

instance FromJSON DirectoryUsersWatchOrderBy where
    parseJSON = parseJSONText "DirectoryUsersWatchOrderBy"

instance ToJSON DirectoryUsersWatchOrderBy where
    toJSON = toJSONText

-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
data DirectoryUsersWatchViewType
    = DUWVTAdminView
      -- ^ @admin_view@
      -- Fetches the ADMIN_VIEW of the user.
    | DUWVTDomainPublic
      -- ^ @domain_public@
      -- Fetches the DOMAIN_PUBLIC view of the user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersWatchViewType

instance FromText DirectoryUsersWatchViewType where
    fromText = \case
        "admin_view" -> Just DUWVTAdminView
        "domain_public" -> Just DUWVTDomainPublic
        _ -> Nothing

instance ToText DirectoryUsersWatchViewType where
    toText = \case
        DUWVTAdminView -> "admin_view"
        DUWVTDomainPublic -> "domain_public"

instance FromJSON DirectoryUsersWatchViewType where
    parseJSON = parseJSONText "DirectoryUsersWatchViewType"

instance ToJSON DirectoryUsersWatchViewType where
    toJSON = toJSONText

-- | Column to use for sorting results
data DirectoryMobiledevicesListOrderBy
    = DMLOBDeviceId
      -- ^ @deviceId@
      -- Mobile Device serial number.
    | DMLOBEmail
      -- ^ @email@
      -- Owner user email.
    | DMLOBLastSync
      -- ^ @lastSync@
      -- Last policy settings sync date time of the device.
    | DMLOBModel
      -- ^ @model@
      -- Mobile Device model.
    | DMLOBName
      -- ^ @name@
      -- Owner user name.
    | DMLOBOS
      -- ^ @os@
      -- Mobile operating system.
    | DMLOBStatus
      -- ^ @status@
      -- Status of the device.
    | DMLOBType
      -- ^ @type@
      -- Type of the device.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryMobiledevicesListOrderBy

instance FromText DirectoryMobiledevicesListOrderBy where
    fromText = \case
        "deviceId" -> Just DMLOBDeviceId
        "email" -> Just DMLOBEmail
        "lastSync" -> Just DMLOBLastSync
        "model" -> Just DMLOBModel
        "name" -> Just DMLOBName
        "os" -> Just DMLOBOS
        "status" -> Just DMLOBStatus
        "type" -> Just DMLOBType
        _ -> Nothing

instance ToText DirectoryMobiledevicesListOrderBy where
    toText = \case
        DMLOBDeviceId -> "deviceId"
        DMLOBEmail -> "email"
        DMLOBLastSync -> "lastSync"
        DMLOBModel -> "model"
        DMLOBName -> "name"
        DMLOBOS -> "os"
        DMLOBStatus -> "status"
        DMLOBType -> "type"

instance FromJSON DirectoryMobiledevicesListOrderBy where
    parseJSON = parseJSONText "DirectoryMobiledevicesListOrderBy"

instance ToJSON DirectoryMobiledevicesListOrderBy where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order.
data DirectoryUsersListSortOrder
    = Ascending
      -- ^ @ASCENDING@
      -- Ascending order.
    | Descending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersListSortOrder

instance FromText DirectoryUsersListSortOrder where
    fromText = \case
        "ASCENDING" -> Just Ascending
        "DESCENDING" -> Just Descending
        _ -> Nothing

instance ToText DirectoryUsersListSortOrder where
    toText = \case
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON DirectoryUsersListSortOrder where
    parseJSON = parseJSONText "DirectoryUsersListSortOrder"

instance ToJSON DirectoryUsersListSortOrder where
    toJSON = toJSONText

-- | Event on which subscription is intended (if subscribing)
data DirectoryUsersAliasesListEvent
    = Add
      -- ^ @add@
      -- Alias Created Event
    | Delete
      -- ^ @delete@
      -- Alias Deleted Event
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersAliasesListEvent

instance FromText DirectoryUsersAliasesListEvent where
    fromText = \case
        "add" -> Just Add
        "delete" -> Just Delete
        _ -> Nothing

instance ToText DirectoryUsersAliasesListEvent where
    toText = \case
        Add -> "add"
        Delete -> "delete"

instance FromJSON DirectoryUsersAliasesListEvent where
    parseJSON = parseJSONText "DirectoryUsersAliasesListEvent"

instance ToJSON DirectoryUsersAliasesListEvent where
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
    = DUWSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | DUWSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersWatchSortOrder

instance FromText DirectoryUsersWatchSortOrder where
    fromText = \case
        "ASCENDING" -> Just DUWSOAscending
        "DESCENDING" -> Just DUWSODescending
        _ -> Nothing

instance ToText DirectoryUsersWatchSortOrder where
    toText = \case
        DUWSOAscending -> "ASCENDING"
        DUWSODescending -> "DESCENDING"

instance FromJSON DirectoryUsersWatchSortOrder where
    parseJSON = parseJSONText "DirectoryUsersWatchSortOrder"

instance ToJSON DirectoryUsersWatchSortOrder where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryMobiledevicesGetProjection
    = DMGPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, model, status,
      -- type, and status)
    | DMGPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryMobiledevicesGetProjection

instance FromText DirectoryMobiledevicesGetProjection where
    fromText = \case
        "BASIC" -> Just DMGPBasic
        "FULL" -> Just DMGPFull
        _ -> Nothing

instance ToText DirectoryMobiledevicesGetProjection where
    toText = \case
        DMGPBasic -> "BASIC"
        DMGPFull -> "FULL"

instance FromJSON DirectoryMobiledevicesGetProjection where
    parseJSON = parseJSONText "DirectoryMobiledevicesGetProjection"

instance ToJSON DirectoryMobiledevicesGetProjection where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Only of use
-- when orderBy is also used
data DirectoryMobiledevicesListSortOrder
    = DMLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | DMLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryMobiledevicesListSortOrder

instance FromText DirectoryMobiledevicesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DMLSOAscending
        "DESCENDING" -> Just DMLSODescending
        _ -> Nothing

instance ToText DirectoryMobiledevicesListSortOrder where
    toText = \case
        DMLSOAscending -> "ASCENDING"
        DMLSODescending -> "DESCENDING"

instance FromJSON DirectoryMobiledevicesListSortOrder where
    parseJSON = parseJSONText "DirectoryMobiledevicesListSortOrder"

instance ToJSON DirectoryMobiledevicesListSortOrder where
    toJSON = toJSONText

-- | Column to use for sorting results
data DirectoryUsersListOrderBy
    = DULOBEmail
      -- ^ @email@
      -- Primary email of the user.
    | DULOBFamilyName
      -- ^ @familyName@
      -- User\'s family name.
    | DULOBGivenName
      -- ^ @givenName@
      -- User\'s given name.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersListOrderBy

instance FromText DirectoryUsersListOrderBy where
    fromText = \case
        "email" -> Just DULOBEmail
        "familyName" -> Just DULOBFamilyName
        "givenName" -> Just DULOBGivenName
        _ -> Nothing

instance ToText DirectoryUsersListOrderBy where
    toText = \case
        DULOBEmail -> "email"
        DULOBFamilyName -> "familyName"
        DULOBGivenName -> "givenName"

instance FromJSON DirectoryUsersListOrderBy where
    parseJSON = parseJSONText "DirectoryUsersListOrderBy"

instance ToJSON DirectoryUsersListOrderBy where
    toJSON = toJSONText

-- | Whether to return all sub-organizations or just immediate children
data DirectoryOrgunitsListType
    = All
      -- ^ @all@
      -- All sub-organization units.
    | Children
      -- ^ @children@
      -- Immediate children only (default).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryOrgunitsListType

instance FromText DirectoryOrgunitsListType where
    fromText = \case
        "all" -> Just All
        "children" -> Just Children
        _ -> Nothing

instance ToText DirectoryOrgunitsListType where
    toText = \case
        All -> "all"
        Children -> "children"

instance FromJSON DirectoryOrgunitsListType where
    parseJSON = parseJSONText "DirectoryOrgunitsListType"

instance ToJSON DirectoryOrgunitsListType where
    toJSON = toJSONText

-- | What subset of fields to fetch for this user.
data DirectoryUsersListProjection
    = DULPBasic
      -- ^ @basic@
      -- Do not include any custom fields for the user.
    | DULPCustom
      -- ^ @custom@
      -- Include custom fields from schemas mentioned in customFieldMask.
    | DULPFull
      -- ^ @full@
      -- Include all fields associated with this user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryUsersListProjection

instance FromText DirectoryUsersListProjection where
    fromText = \case
        "basic" -> Just DULPBasic
        "custom" -> Just DULPCustom
        "full" -> Just DULPFull
        _ -> Nothing

instance ToText DirectoryUsersListProjection where
    toText = \case
        DULPBasic -> "basic"
        DULPCustom -> "custom"
        DULPFull -> "full"

instance FromJSON DirectoryUsersListProjection where
    parseJSON = parseJSONText "DirectoryUsersListProjection"

instance ToJSON DirectoryUsersListProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryChromeosdevicesUpdateProjection
    = DCUPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | DCUPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosdevicesUpdateProjection

instance FromText DirectoryChromeosdevicesUpdateProjection where
    fromText = \case
        "BASIC" -> Just DCUPBasic
        "FULL" -> Just DCUPFull
        _ -> Nothing

instance ToText DirectoryChromeosdevicesUpdateProjection where
    toText = \case
        DCUPBasic -> "BASIC"
        DCUPFull -> "FULL"

instance FromJSON DirectoryChromeosdevicesUpdateProjection where
    parseJSON = parseJSONText "DirectoryChromeosdevicesUpdateProjection"

instance ToJSON DirectoryChromeosdevicesUpdateProjection where
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
data DirectoryChromeosdevicesListOrderBy
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

instance Hashable DirectoryChromeosdevicesListOrderBy

instance FromText DirectoryChromeosdevicesListOrderBy where
    fromText = \case
        "annotatedLocation" -> Just AnnotatedLocation
        "annotatedUser" -> Just AnnotatedUser
        "lastSync" -> Just LastSync
        "notes" -> Just Notes
        "serialNumber" -> Just SerialNumber
        "status" -> Just Status
        "supportEndDate" -> Just SupportEndDate
        _ -> Nothing

instance ToText DirectoryChromeosdevicesListOrderBy where
    toText = \case
        AnnotatedLocation -> "annotatedLocation"
        AnnotatedUser -> "annotatedUser"
        LastSync -> "lastSync"
        Notes -> "notes"
        SerialNumber -> "serialNumber"
        Status -> "status"
        SupportEndDate -> "supportEndDate"

instance FromJSON DirectoryChromeosdevicesListOrderBy where
    parseJSON = parseJSONText "DirectoryChromeosdevicesListOrderBy"

instance ToJSON DirectoryChromeosdevicesListOrderBy where
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
data DirectoryMobiledevicesListProjection
    = DMLPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, model, status,
      -- type, and status)
    | DMLPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryMobiledevicesListProjection

instance FromText DirectoryMobiledevicesListProjection where
    fromText = \case
        "BASIC" -> Just DMLPBasic
        "FULL" -> Just DMLPFull
        _ -> Nothing

instance ToText DirectoryMobiledevicesListProjection where
    toText = \case
        DMLPBasic -> "BASIC"
        DMLPFull -> "FULL"

instance FromJSON DirectoryMobiledevicesListProjection where
    parseJSON = parseJSONText "DirectoryMobiledevicesListProjection"

instance ToJSON DirectoryMobiledevicesListProjection where
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

-- | Restrict information returned to a set of selected fields.
data DirectoryChromeosdevicesGetProjection
    = DCGPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | DCGPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosdevicesGetProjection

instance FromText DirectoryChromeosdevicesGetProjection where
    fromText = \case
        "BASIC" -> Just DCGPBasic
        "FULL" -> Just DCGPFull
        _ -> Nothing

instance ToText DirectoryChromeosdevicesGetProjection where
    toText = \case
        DCGPBasic -> "BASIC"
        DCGPFull -> "FULL"

instance FromJSON DirectoryChromeosdevicesGetProjection where
    parseJSON = parseJSONText "DirectoryChromeosdevicesGetProjection"

instance ToJSON DirectoryChromeosdevicesGetProjection where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields.
data DirectoryChromeosdevicesPatchProjection
    = DCPPBasic
      -- ^ @BASIC@
      -- Includes only the basic metadata fields (e.g., deviceId, serialNumber,
      -- status, and user)
    | DCPPFull
      -- ^ @FULL@
      -- Includes all metadata fields
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosdevicesPatchProjection

instance FromText DirectoryChromeosdevicesPatchProjection where
    fromText = \case
        "BASIC" -> Just DCPPBasic
        "FULL" -> Just DCPPFull
        _ -> Nothing

instance ToText DirectoryChromeosdevicesPatchProjection where
    toText = \case
        DCPPBasic -> "BASIC"
        DCPPFull -> "FULL"

instance FromJSON DirectoryChromeosdevicesPatchProjection where
    parseJSON = parseJSONText "DirectoryChromeosdevicesPatchProjection"

instance ToJSON DirectoryChromeosdevicesPatchProjection where
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
data DirectoryChromeosdevicesListSortOrder
    = DCLSOAscending
      -- ^ @ASCENDING@
      -- Ascending order.
    | DCLSODescending
      -- ^ @DESCENDING@
      -- Descending order.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DirectoryChromeosdevicesListSortOrder

instance FromText DirectoryChromeosdevicesListSortOrder where
    fromText = \case
        "ASCENDING" -> Just DCLSOAscending
        "DESCENDING" -> Just DCLSODescending
        _ -> Nothing

instance ToText DirectoryChromeosdevicesListSortOrder where
    toText = \case
        DCLSOAscending -> "ASCENDING"
        DCLSODescending -> "DESCENDING"

instance FromJSON DirectoryChromeosdevicesListSortOrder where
    parseJSON = parseJSONText "DirectoryChromeosdevicesListSortOrder"

instance ToJSON DirectoryChromeosdevicesListSortOrder where
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
