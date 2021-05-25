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

import Network.Google.Prelude hiding (Bytes)

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

-- | Events to watch for.
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

-- | Events to watch for.
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

-- | Events to watch for.
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

-- | The type of the command.
data DirectoryChromeosDevicesCommandType
    = CommandTypeUnspecified
      -- ^ @COMMAND_TYPE_UNSPECIFIED@
      -- The command type was unspecified.
    | Reboot
      -- ^ @REBOOT@
      -- Reboot the device. Can only be issued to Kiosk and managed guest session
      -- devices.
    | TakeAScreenshot
      -- ^ @TAKE_A_SCREENSHOT@
      -- Take a screenshot of the device. Only available if the device is in
      -- Kiosk Mode.
    | SetVolume
      -- ^ @SET_VOLUME@
      -- Set the volume of the device. Can only be issued to Kiosk and managed
      -- guest session devices.
    | WipeUsers
      -- ^ @WIPE_USERS@
      -- Wipe all the users off of the device. Executing this command in the
      -- device will remove all user profile data, but it will keep device policy
      -- and enrollment.
    | RemotePowerwash
      -- ^ @REMOTE_POWERWASH@
      -- Wipes the device by performing a power wash. Executing this command in
      -- the device will remove all data including user policies, device policies
      -- and enrollment policies. Warning: This will revert the device back to a
      -- factory state with no enrollment unless the device is subject to forced
      -- or auto enrollment. Use with caution, as this is an irreversible action!
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DirectoryChromeosDevicesCommandType

instance FromHttpApiData DirectoryChromeosDevicesCommandType where
    parseQueryParam = \case
        "COMMAND_TYPE_UNSPECIFIED" -> Right CommandTypeUnspecified
        "REBOOT" -> Right Reboot
        "TAKE_A_SCREENSHOT" -> Right TakeAScreenshot
        "SET_VOLUME" -> Right SetVolume
        "WIPE_USERS" -> Right WipeUsers
        "REMOTE_POWERWASH" -> Right RemotePowerwash
        x -> Left ("Unable to parse DirectoryChromeosDevicesCommandType from: " <> x)

instance ToHttpApiData DirectoryChromeosDevicesCommandType where
    toQueryParam = \case
        CommandTypeUnspecified -> "COMMAND_TYPE_UNSPECIFIED"
        Reboot -> "REBOOT"
        TakeAScreenshot -> "TAKE_A_SCREENSHOT"
        SetVolume -> "SET_VOLUME"
        WipeUsers -> "WIPE_USERS"
        RemotePowerwash -> "REMOTE_POWERWASH"

instance FromJSON DirectoryChromeosDevicesCommandType where
    parseJSON = parseJSONText "DirectoryChromeosDevicesCommandType"

instance ToJSON DirectoryChromeosDevicesCommandType where
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

-- | Determines whether the response contains the full list of properties or
-- only a subset.
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

-- | Message severity
data AuxiliaryMessageSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Message type unspecified.
    | SeverityInfo
      -- ^ @SEVERITY_INFO@
      -- Message of severity: info.
    | SeverityWarning
      -- ^ @SEVERITY_WARNING@
      -- Message of severity: warning.
    | SeverityError
      -- ^ @SEVERITY_ERROR@
      -- Message of severity: error.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuxiliaryMessageSeverity

instance FromHttpApiData AuxiliaryMessageSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "SEVERITY_INFO" -> Right SeverityInfo
        "SEVERITY_WARNING" -> Right SeverityWarning
        "SEVERITY_ERROR" -> Right SeverityError
        x -> Left ("Unable to parse AuxiliaryMessageSeverity from: " <> x)

instance ToHttpApiData AuxiliaryMessageSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        SeverityInfo -> "SEVERITY_INFO"
        SeverityWarning -> "SEVERITY_WARNING"
        SeverityError -> "SEVERITY_ERROR"

instance FromJSON AuxiliaryMessageSeverity where
    parseJSON = parseJSONText "AuxiliaryMessageSeverity"

instance ToJSON AuxiliaryMessageSeverity where
    toJSON = toJSONText

-- | Whether to fetch the administrator-only or domain-wide public view of
-- the user. For more information, see [Retrieve a user as a
-- non-administrator](\/admin-sdk\/directory\/v1\/guides\/manage-users#retrieve_users_non_admin).
data UsersListViewType
    = AdminView
      -- ^ @admin_view@
      -- Results include both administrator-only and domain-public fields for the
      -- user.
    | DomainPublic
      -- ^ @domain_public@
      -- Results only include fields for the user that are publicly visible to
      -- other users in the domain.
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

-- | Whether to return all sub-organizations or just immediate children.
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

-- | Whether to return results in ascending or descending order. Must be used
-- with the \`orderBy\` parameter.
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

-- | Property to use for sorting results.
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

-- | The type of command.
data DirectoryChromeosDevicesIssueCommandRequestCommandType
    = DCDICRCTCommandTypeUnspecified
      -- ^ @COMMAND_TYPE_UNSPECIFIED@
      -- The command type was unspecified.
    | DCDICRCTReboot
      -- ^ @REBOOT@
      -- Reboot the device. Can only be issued to Kiosk and managed guest session
      -- devices.
    | DCDICRCTTakeAScreenshot
      -- ^ @TAKE_A_SCREENSHOT@
      -- Take a screenshot of the device. Only available if the device is in
      -- Kiosk Mode.
    | DCDICRCTSetVolume
      -- ^ @SET_VOLUME@
      -- Set the volume of the device. Can only be issued to Kiosk and managed
      -- guest session devices.
    | DCDICRCTWipeUsers
      -- ^ @WIPE_USERS@
      -- Wipe all the users off of the device. Executing this command in the
      -- device will remove all user profile data, but it will keep device policy
      -- and enrollment.
    | DCDICRCTRemotePowerwash
      -- ^ @REMOTE_POWERWASH@
      -- Wipes the device by performing a power wash. Executing this command in
      -- the device will remove all data including user policies, device policies
      -- and enrollment policies. Warning: This will revert the device back to a
      -- factory state with no enrollment unless the device is subject to forced
      -- or auto enrollment. Use with caution, as this is an irreversible action!
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DirectoryChromeosDevicesIssueCommandRequestCommandType

instance FromHttpApiData DirectoryChromeosDevicesIssueCommandRequestCommandType where
    parseQueryParam = \case
        "COMMAND_TYPE_UNSPECIFIED" -> Right DCDICRCTCommandTypeUnspecified
        "REBOOT" -> Right DCDICRCTReboot
        "TAKE_A_SCREENSHOT" -> Right DCDICRCTTakeAScreenshot
        "SET_VOLUME" -> Right DCDICRCTSetVolume
        "WIPE_USERS" -> Right DCDICRCTWipeUsers
        "REMOTE_POWERWASH" -> Right DCDICRCTRemotePowerwash
        x -> Left ("Unable to parse DirectoryChromeosDevicesIssueCommandRequestCommandType from: " <> x)

instance ToHttpApiData DirectoryChromeosDevicesIssueCommandRequestCommandType where
    toQueryParam = \case
        DCDICRCTCommandTypeUnspecified -> "COMMAND_TYPE_UNSPECIFIED"
        DCDICRCTReboot -> "REBOOT"
        DCDICRCTTakeAScreenshot -> "TAKE_A_SCREENSHOT"
        DCDICRCTSetVolume -> "SET_VOLUME"
        DCDICRCTWipeUsers -> "WIPE_USERS"
        DCDICRCTRemotePowerwash -> "REMOTE_POWERWASH"

instance FromJSON DirectoryChromeosDevicesIssueCommandRequestCommandType where
    parseJSON = parseJSONText "DirectoryChromeosDevicesIssueCommandRequestCommandType"

instance ToJSON DirectoryChromeosDevicesIssueCommandRequestCommandType where
    toJSON = toJSONText

-- | Indicates the command state.
data DirectoryChromeosDevicesCommandState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The command status was unspecified.
    | Pending
      -- ^ @PENDING@
      -- An unexpired command not yet sent to the client.
    | Expired
      -- ^ @EXPIRED@
      -- The command didn\'t get executed by the client within the expected time.
    | Cancelled
      -- ^ @CANCELLED@
      -- The command is cancelled by admin while in PENDING.
    | SentToClient
      -- ^ @SENT_TO_CLIENT@
      -- The command has been sent to the client.
    | AckedByClient
      -- ^ @ACKED_BY_CLIENT@
      -- The client has responded that it received the command.
    | ExecutedByClient
      -- ^ @EXECUTED_BY_CLIENT@
      -- The client has (un)successfully executed the command.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DirectoryChromeosDevicesCommandState

instance FromHttpApiData DirectoryChromeosDevicesCommandState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "PENDING" -> Right Pending
        "EXPIRED" -> Right Expired
        "CANCELLED" -> Right Cancelled
        "SENT_TO_CLIENT" -> Right SentToClient
        "ACKED_BY_CLIENT" -> Right AckedByClient
        "EXECUTED_BY_CLIENT" -> Right ExecutedByClient
        x -> Left ("Unable to parse DirectoryChromeosDevicesCommandState from: " <> x)

instance ToHttpApiData DirectoryChromeosDevicesCommandState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Pending -> "PENDING"
        Expired -> "EXPIRED"
        Cancelled -> "CANCELLED"
        SentToClient -> "SENT_TO_CLIENT"
        AckedByClient -> "ACKED_BY_CLIENT"
        ExecutedByClient -> "EXECUTED_BY_CLIENT"

instance FromJSON DirectoryChromeosDevicesCommandState where
    parseJSON = parseJSONText "DirectoryChromeosDevicesCommandState"

instance ToJSON DirectoryChromeosDevicesCommandState where
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

-- | Canonical code for why the update failed to apply.
data FailureInfoErrorCode
    = FIECOK
      -- ^ @OK@
      -- Not an error; returned on success HTTP Mapping: 200 OK
    | FIECCancelled
      -- ^ @CANCELLED@
      -- The operation was cancelled, typically by the caller. HTTP Mapping: 499
      -- Client Closed Request
    | FIECUnknown
      -- ^ @UNKNOWN@
      -- Unknown error. For example, this error may be returned when a \`Status\`
      -- value received from another address space belongs to an error space that
      -- is not known in this address space. Also errors raised by APIs that do
      -- not return enough error information may be converted to this error. HTTP
      -- Mapping: 500 Internal Server Error
    | FIECInvalidArgument
      -- ^ @INVALID_ARGUMENT@
      -- The client specified an invalid argument. Note that this differs from
      -- \`FAILED_PRECONDITION\`. \`INVALID_ARGUMENT\` indicates arguments that
      -- are problematic regardless of the state of the system (e.g., a malformed
      -- file name). HTTP Mapping: 400 Bad Request
    | FIECDeadlineExceeded
      -- ^ @DEADLINE_EXCEEDED@
      -- The deadline expired before the operation could complete. For operations
      -- that change the state of the system, this error may be returned even if
      -- the operation has completed successfully. For example, a successful
      -- response from a server could have been delayed long enough for the
      -- deadline to expire. HTTP Mapping: 504 Gateway Timeout
    | FIECNotFound
      -- ^ @NOT_FOUND@
      -- Some requested entity (e.g., file or directory) was not found. Note to
      -- server developers: if a request is denied for an entire class of users,
      -- such as gradual feature rollout or undocumented allowlist, \`NOT_FOUND\`
      -- may be used. If a request is denied for some users within a class of
      -- users, such as user-based access control, \`PERMISSION_DENIED\` must be
      -- used. HTTP Mapping: 404 Not Found
    | FIECAlreadyExists
      -- ^ @ALREADY_EXISTS@
      -- The entity that a client attempted to create (e.g., file or directory)
      -- already exists. HTTP Mapping: 409 Conflict
    | FIECPermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The caller does not have permission to execute the specified operation.
      -- \`PERMISSION_DENIED\` must not be used for rejections caused by
      -- exhausting some resource (use \`RESOURCE_EXHAUSTED\` instead for those
      -- errors). \`PERMISSION_DENIED\` must not be used if the caller can not be
      -- identified (use \`UNAUTHENTICATED\` instead for those errors). This
      -- error code does not imply the request is valid or the requested entity
      -- exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
    | FIECUnauthenticated
      -- ^ @UNAUTHENTICATED@
      -- The request does not have valid authentication credentials for the
      -- operation. HTTP Mapping: 401 Unauthorized
    | FIECResourceExhausted
      -- ^ @RESOURCE_EXHAUSTED@
      -- Some resource has been exhausted, perhaps a per-user quota, or perhaps
      -- the entire file system is out of space. HTTP Mapping: 429 Too Many
      -- Requests
    | FIECFailedPrecondition
      -- ^ @FAILED_PRECONDITION@
      -- The operation was rejected because the system is not in a state required
      -- for the operation\'s execution. For example, the directory to be deleted
      -- is non-empty, an rmdir operation is applied to a non-directory, etc.
      -- Service implementors can use the following guidelines to decide between
      -- \`FAILED_PRECONDITION\`, \`ABORTED\`, and \`UNAVAILABLE\`: (a) Use
      -- \`UNAVAILABLE\` if the client can retry just the failing call. (b) Use
      -- \`ABORTED\` if the client should retry at a higher level. For example,
      -- when a client-specified test-and-set fails, indicating the client should
      -- restart a read-modify-write sequence. (c) Use \`FAILED_PRECONDITION\` if
      -- the client should not retry until the system state has been explicitly
      -- fixed. For example, if an \"rmdir\" fails because the directory is
      -- non-empty, \`FAILED_PRECONDITION\` should be returned since the client
      -- should not retry unless the files are deleted from the directory. HTTP
      -- Mapping: 400 Bad Request
    | FIECAborted
      -- ^ @ABORTED@
      -- The operation was aborted, typically due to a concurrency issue such as
      -- a sequencer check failure or transaction abort. See the guidelines above
      -- for deciding between \`FAILED_PRECONDITION\`, \`ABORTED\`, and
      -- \`UNAVAILABLE\`. HTTP Mapping: 409 Conflict
    | FIECOutOfRange
      -- ^ @OUT_OF_RANGE@
      -- The operation was attempted past the valid range. E.g., seeking or
      -- reading past end-of-file. Unlike \`INVALID_ARGUMENT\`, this error
      -- indicates a problem that may be fixed if the system state changes. For
      -- example, a 32-bit file system will generate \`INVALID_ARGUMENT\` if
      -- asked to read at an offset that is not in the range [0,2^32-1], but it
      -- will generate \`OUT_OF_RANGE\` if asked to read from an offset past the
      -- current file size. There is a fair bit of overlap between
      -- \`FAILED_PRECONDITION\` and \`OUT_OF_RANGE\`. We recommend using
      -- \`OUT_OF_RANGE\` (the more specific error) when it applies so that
      -- callers who are iterating through a space can easily look for an
      -- \`OUT_OF_RANGE\` error to detect when they are done. HTTP Mapping: 400
      -- Bad Request
    | FIECUnimplemented
      -- ^ @UNIMPLEMENTED@
      -- The operation is not implemented or is not supported\/enabled in this
      -- service. HTTP Mapping: 501 Not Implemented
    | FIECInternal
      -- ^ @INTERNAL@
      -- Internal errors. This means that some invariants expected by the
      -- underlying system have been broken. This error code is reserved for
      -- serious errors. HTTP Mapping: 500 Internal Server Error
    | FIECUnavailable
      -- ^ @UNAVAILABLE@
      -- The service is currently unavailable. This is most likely a transient
      -- condition, which can be corrected by retrying with a backoff. Note that
      -- it is not always safe to retry non-idempotent operations. See the
      -- guidelines above for deciding between \`FAILED_PRECONDITION\`,
      -- \`ABORTED\`, and \`UNAVAILABLE\`. HTTP Mapping: 503 Service Unavailable
    | FIECDataLoss
      -- ^ @DATA_LOSS@
      -- Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server
      -- Error
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FailureInfoErrorCode

instance FromHttpApiData FailureInfoErrorCode where
    parseQueryParam = \case
        "OK" -> Right FIECOK
        "CANCELLED" -> Right FIECCancelled
        "UNKNOWN" -> Right FIECUnknown
        "INVALID_ARGUMENT" -> Right FIECInvalidArgument
        "DEADLINE_EXCEEDED" -> Right FIECDeadlineExceeded
        "NOT_FOUND" -> Right FIECNotFound
        "ALREADY_EXISTS" -> Right FIECAlreadyExists
        "PERMISSION_DENIED" -> Right FIECPermissionDenied
        "UNAUTHENTICATED" -> Right FIECUnauthenticated
        "RESOURCE_EXHAUSTED" -> Right FIECResourceExhausted
        "FAILED_PRECONDITION" -> Right FIECFailedPrecondition
        "ABORTED" -> Right FIECAborted
        "OUT_OF_RANGE" -> Right FIECOutOfRange
        "UNIMPLEMENTED" -> Right FIECUnimplemented
        "INTERNAL" -> Right FIECInternal
        "UNAVAILABLE" -> Right FIECUnavailable
        "DATA_LOSS" -> Right FIECDataLoss
        x -> Left ("Unable to parse FailureInfoErrorCode from: " <> x)

instance ToHttpApiData FailureInfoErrorCode where
    toQueryParam = \case
        FIECOK -> "OK"
        FIECCancelled -> "CANCELLED"
        FIECUnknown -> "UNKNOWN"
        FIECInvalidArgument -> "INVALID_ARGUMENT"
        FIECDeadlineExceeded -> "DEADLINE_EXCEEDED"
        FIECNotFound -> "NOT_FOUND"
        FIECAlreadyExists -> "ALREADY_EXISTS"
        FIECPermissionDenied -> "PERMISSION_DENIED"
        FIECUnauthenticated -> "UNAUTHENTICATED"
        FIECResourceExhausted -> "RESOURCE_EXHAUSTED"
        FIECFailedPrecondition -> "FAILED_PRECONDITION"
        FIECAborted -> "ABORTED"
        FIECOutOfRange -> "OUT_OF_RANGE"
        FIECUnimplemented -> "UNIMPLEMENTED"
        FIECInternal -> "INTERNAL"
        FIECUnavailable -> "UNAVAILABLE"
        FIECDataLoss -> "DATA_LOSS"

instance FromJSON FailureInfoErrorCode where
    parseJSON = parseJSONText "FailureInfoErrorCode"

instance ToJSON FailureInfoErrorCode where
    toJSON = toJSONText

-- | Source from which Building.coordinates are derived.
data ResourcesBuildingsPatchCoordinatesSource
    = ClientSpecified
      -- ^ @CLIENT_SPECIFIED@
      -- Building.coordinates are set to the coordinates included in the request.
    | ResolvedFromAddress
      -- ^ @RESOLVED_FROM_ADDRESS@
      -- Building.coordinates are automatically populated based on the postal
      -- address.
    | SourceUnspecified
      -- ^ @SOURCE_UNSPECIFIED@
      -- Defaults to \`RESOLVED_FROM_ADDRESS\` if postal address is provided.
      -- Otherwise, defaults to \`CLIENT_SPECIFIED\` if coordinates are provided.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourcesBuildingsPatchCoordinatesSource

instance FromHttpApiData ResourcesBuildingsPatchCoordinatesSource where
    parseQueryParam = \case
        "CLIENT_SPECIFIED" -> Right ClientSpecified
        "RESOLVED_FROM_ADDRESS" -> Right ResolvedFromAddress
        "SOURCE_UNSPECIFIED" -> Right SourceUnspecified
        x -> Left ("Unable to parse ResourcesBuildingsPatchCoordinatesSource from: " <> x)

instance ToHttpApiData ResourcesBuildingsPatchCoordinatesSource where
    toQueryParam = \case
        ClientSpecified -> "CLIENT_SPECIFIED"
        ResolvedFromAddress -> "RESOLVED_FROM_ADDRESS"
        SourceUnspecified -> "SOURCE_UNSPECIFIED"

instance FromJSON ResourcesBuildingsPatchCoordinatesSource where
    parseJSON = parseJSONText "ResourcesBuildingsPatchCoordinatesSource"

instance ToJSON ResourcesBuildingsPatchCoordinatesSource where
    toJSON = toJSONText

-- | Whether to fetch the administrator-only or domain-wide public view of
-- the user. For more information, see [Retrieve a user as a
-- non-administrator](\/admin-sdk\/directory\/v1\/guides\/manage-users#retrieve_users_non_admin).
data UsersWatchViewType
    = UWVTAdminView
      -- ^ @admin_view@
      -- Results include both administrator-only and domain-public fields.
    | UWVTDomainPublic
      -- ^ @domain_public@
      -- Results only include fields for the user that are publicly visible to
      -- other users in the domain.
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
      -- Include custom fields from schemas requested in \`customFieldMask\`.
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

-- | Source from which Building.coordinates are derived.
data ResourcesBuildingsUpdateCoordinatesSource
    = RBUCSClientSpecified
      -- ^ @CLIENT_SPECIFIED@
      -- Building.coordinates are set to the coordinates included in the request.
    | RBUCSResolvedFromAddress
      -- ^ @RESOLVED_FROM_ADDRESS@
      -- Building.coordinates are automatically populated based on the postal
      -- address.
    | RBUCSSourceUnspecified
      -- ^ @SOURCE_UNSPECIFIED@
      -- Defaults to \`RESOLVED_FROM_ADDRESS\` if postal address is provided.
      -- Otherwise, defaults to \`CLIENT_SPECIFIED\` if coordinates are provided.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourcesBuildingsUpdateCoordinatesSource

instance FromHttpApiData ResourcesBuildingsUpdateCoordinatesSource where
    parseQueryParam = \case
        "CLIENT_SPECIFIED" -> Right RBUCSClientSpecified
        "RESOLVED_FROM_ADDRESS" -> Right RBUCSResolvedFromAddress
        "SOURCE_UNSPECIFIED" -> Right RBUCSSourceUnspecified
        x -> Left ("Unable to parse ResourcesBuildingsUpdateCoordinatesSource from: " <> x)

instance ToHttpApiData ResourcesBuildingsUpdateCoordinatesSource where
    toQueryParam = \case
        RBUCSClientSpecified -> "CLIENT_SPECIFIED"
        RBUCSResolvedFromAddress -> "RESOLVED_FROM_ADDRESS"
        RBUCSSourceUnspecified -> "SOURCE_UNSPECIFIED"

instance FromJSON ResourcesBuildingsUpdateCoordinatesSource where
    parseJSON = parseJSONText "ResourcesBuildingsUpdateCoordinatesSource"

instance ToJSON ResourcesBuildingsUpdateCoordinatesSource where
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

-- | Device property to use for sorting results.
data MobileDevicesListOrderBy
    = MDLOBDeviceId
      -- ^ @deviceId@
      -- The serial number for a Google Sync mobile device. For Android devices,
      -- this is a software generated unique identifier.
    | MDLOBEmail
      -- ^ @email@
      -- The device owner\'s email address.
    | MDLOBLastSync
      -- ^ @lastSync@
      -- Last policy settings sync date time of the device.
    | MDLOBModel
      -- ^ @model@
      -- The mobile device\'s model.
    | MDLOBName
      -- ^ @name@
      -- The device owner\'s user name.
    | MDLOBOS
      -- ^ @os@
      -- The device\'s operating system.
    | MDLOBStatus
      -- ^ @status@
      -- The device status.
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

-- | Source from which Building.coordinates are derived.
data ResourcesBuildingsInsertCoordinatesSource
    = RBICSClientSpecified
      -- ^ @CLIENT_SPECIFIED@
      -- Building.coordinates are set to the coordinates included in the request.
    | RBICSResolvedFromAddress
      -- ^ @RESOLVED_FROM_ADDRESS@
      -- Building.coordinates are automatically populated based on the postal
      -- address.
    | RBICSSourceUnspecified
      -- ^ @SOURCE_UNSPECIFIED@
      -- Defaults to \`RESOLVED_FROM_ADDRESS\` if postal address is provided.
      -- Otherwise, defaults to \`CLIENT_SPECIFIED\` if coordinates are provided.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourcesBuildingsInsertCoordinatesSource

instance FromHttpApiData ResourcesBuildingsInsertCoordinatesSource where
    parseQueryParam = \case
        "CLIENT_SPECIFIED" -> Right RBICSClientSpecified
        "RESOLVED_FROM_ADDRESS" -> Right RBICSResolvedFromAddress
        "SOURCE_UNSPECIFIED" -> Right RBICSSourceUnspecified
        x -> Left ("Unable to parse ResourcesBuildingsInsertCoordinatesSource from: " <> x)

instance ToHttpApiData ResourcesBuildingsInsertCoordinatesSource where
    toQueryParam = \case
        RBICSClientSpecified -> "CLIENT_SPECIFIED"
        RBICSResolvedFromAddress -> "RESOLVED_FROM_ADDRESS"
        RBICSSourceUnspecified -> "SOURCE_UNSPECIFIED"

instance FromJSON ResourcesBuildingsInsertCoordinatesSource where
    parseJSON = parseJSONText "ResourcesBuildingsInsertCoordinatesSource"

instance ToJSON ResourcesBuildingsInsertCoordinatesSource where
    toJSON = toJSONText

-- | Whether to return results in ascending or descending order. Must be used
-- with the \`orderBy\` parameter.
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

-- | The result of the command.
data DirectoryChromeosDevicesCommandResultResult
    = CommandResultTypeUnspecified
      -- ^ @COMMAND_RESULT_TYPE_UNSPECIFIED@
      -- The command result was unspecified.
    | Ignored
      -- ^ @IGNORED@
      -- The command was ignored as obsolete.
    | Failure
      -- ^ @FAILURE@
      -- The command could not be executed successfully.
    | Success
      -- ^ @SUCCESS@
      -- The command was successfully executed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DirectoryChromeosDevicesCommandResultResult

instance FromHttpApiData DirectoryChromeosDevicesCommandResultResult where
    parseQueryParam = \case
        "COMMAND_RESULT_TYPE_UNSPECIFIED" -> Right CommandResultTypeUnspecified
        "IGNORED" -> Right Ignored
        "FAILURE" -> Right Failure
        "SUCCESS" -> Right Success
        x -> Left ("Unable to parse DirectoryChromeosDevicesCommandResultResult from: " <> x)

instance ToHttpApiData DirectoryChromeosDevicesCommandResultResult where
    toQueryParam = \case
        CommandResultTypeUnspecified -> "COMMAND_RESULT_TYPE_UNSPECIFIED"
        Ignored -> "IGNORED"
        Failure -> "FAILURE"
        Success -> "SUCCESS"

instance FromJSON DirectoryChromeosDevicesCommandResultResult where
    parseJSON = parseJSONText "DirectoryChromeosDevicesCommandResultResult"

instance ToJSON DirectoryChromeosDevicesCommandResultResult where
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

-- | What subset of fields to fetch for this user.
data UsersListProjection
    = ULPBasic
      -- ^ @basic@
      -- Do not include any custom fields for the user.
    | ULPCustom
      -- ^ @custom@
      -- Include custom fields from schemas requested in \`customFieldMask\`.
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

-- | Device property to use for sorting results.
data ChromeosDevicesListOrderBy
    = AnnotatedLocation
      -- ^ @annotatedLocation@
      -- Chrome device location as annotated by the administrator.
    | AnnotatedUser
      -- ^ @annotatedUser@
      -- Chromebook user as annotated by administrator.
    | LastSync
      -- ^ @lastSync@
      -- The date and time the Chrome device was last synchronized with the
      -- policy settings in the Admin console.
    | Notes
      -- ^ @notes@
      -- Chrome device notes as annotated by the administrator.
    | SerialNumber
      -- ^ @serialNumber@
      -- The Chrome device serial number entered when the device was enabled.
    | Status
      -- ^ @status@
      -- Chrome device status. For more information, see the
    | SupportEndDate
      -- ^ @supportEndDate@
      -- Chrome device support end date. This is applicable only for devices
      -- purchased directly from Google.
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

-- | Whether to fetch the administrator-only or domain-wide public view of
-- the user. For more information, see [Retrieve a user as a
-- non-administrator](\/admin-sdk\/directory\/v1\/guides\/manage-users#retrieve_users_non_admin).
data UsersGetViewType
    = UGVTAdminView
      -- ^ @admin_view@
      -- Results include both administrator-only and domain-public fields for the
      -- user.
    | UGVTDomainPublic
      -- ^ @domain_public@
      -- Results only include fields for the user that are publicly visible to
      -- other users in the domain.
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
