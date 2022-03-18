{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Directory.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Admin.Directory.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AuxiliaryMessage_Severity
    AuxiliaryMessage_Severity
      ( AuxiliaryMessage_Severity_SEVERITYUNSPECIFIED,
        AuxiliaryMessage_Severity_SEVERITYINFO,
        AuxiliaryMessage_Severity_SEVERITYWARNING,
        AuxiliaryMessage_Severity_SEVERITYERROR,
        ..
      ),

    -- * DirectoryChromeosdevicesCommand_State
    DirectoryChromeosdevicesCommand_State
      ( DirectoryChromeosdevicesCommand_State_STATEUNSPECIFIED,
        DirectoryChromeosdevicesCommand_State_Pending,
        DirectoryChromeosdevicesCommand_State_Expired,
        DirectoryChromeosdevicesCommand_State_Cancelled,
        DirectoryChromeosdevicesCommand_State_SENTTOCLIENT,
        DirectoryChromeosdevicesCommand_State_ACKEDBYCLIENT,
        DirectoryChromeosdevicesCommand_State_EXECUTEDBYCLIENT,
        ..
      ),

    -- * DirectoryChromeosdevicesCommand_Type
    DirectoryChromeosdevicesCommand_Type
      ( DirectoryChromeosdevicesCommand_Type_COMMANDTYPEUNSPECIFIED,
        DirectoryChromeosdevicesCommand_Type_Reboot,
        DirectoryChromeosdevicesCommand_Type_TAKEASCREENSHOT,
        DirectoryChromeosdevicesCommand_Type_SETVOLUME,
        DirectoryChromeosdevicesCommand_Type_WIPEUSERS,
        DirectoryChromeosdevicesCommand_Type_REMOTEPOWERWASH,
        ..
      ),

    -- * DirectoryChromeosdevicesCommandResult_Result
    DirectoryChromeosdevicesCommandResult_Result
      ( DirectoryChromeosdevicesCommandResult_Result_COMMANDRESULTTYPEUNSPECIFIED,
        DirectoryChromeosdevicesCommandResult_Result_Ignored,
        DirectoryChromeosdevicesCommandResult_Result_Failure,
        DirectoryChromeosdevicesCommandResult_Result_Success,
        ..
      ),

    -- * DirectoryChromeosdevicesIssueCommandRequest_CommandType
    DirectoryChromeosdevicesIssueCommandRequest_CommandType
      ( DirectoryChromeosdevicesIssueCommandRequest_CommandType_COMMANDTYPEUNSPECIFIED,
        DirectoryChromeosdevicesIssueCommandRequest_CommandType_Reboot,
        DirectoryChromeosdevicesIssueCommandRequest_CommandType_TAKEASCREENSHOT,
        DirectoryChromeosdevicesIssueCommandRequest_CommandType_SETVOLUME,
        DirectoryChromeosdevicesIssueCommandRequest_CommandType_WIPEUSERS,
        DirectoryChromeosdevicesIssueCommandRequest_CommandType_REMOTEPOWERWASH,
        ..
      ),

    -- * FailureInfo_ErrorCode
    FailureInfo_ErrorCode
      ( FailureInfo_ErrorCode_OK,
        FailureInfo_ErrorCode_Cancelled,
        FailureInfo_ErrorCode_Unknown,
        FailureInfo_ErrorCode_INVALIDARGUMENT,
        FailureInfo_ErrorCode_DEADLINEEXCEEDED,
        FailureInfo_ErrorCode_NOTFOUND,
        FailureInfo_ErrorCode_ALREADYEXISTS,
        FailureInfo_ErrorCode_PERMISSIONDENIED,
        FailureInfo_ErrorCode_Unauthenticated,
        FailureInfo_ErrorCode_RESOURCEEXHAUSTED,
        FailureInfo_ErrorCode_FAILEDPRECONDITION,
        FailureInfo_ErrorCode_Aborted,
        FailureInfo_ErrorCode_OUTOFRANGE,
        FailureInfo_ErrorCode_Unimplemented,
        FailureInfo_ErrorCode_Internal,
        FailureInfo_ErrorCode_Unavailable,
        FailureInfo_ErrorCode_DATALOSS,
        ..
      ),

    -- * ChromeosdevicesGetProjection
    ChromeosdevicesGetProjection
      ( ChromeosdevicesGetProjection_Basic,
        ChromeosdevicesGetProjection_Full,
        ..
      ),

    -- * ChromeosdevicesListOrderBy
    ChromeosdevicesListOrderBy
      ( ChromeosdevicesListOrderBy_AnnotatedLocation,
        ChromeosdevicesListOrderBy_AnnotatedUser,
        ChromeosdevicesListOrderBy_LastSync,
        ChromeosdevicesListOrderBy_Notes,
        ChromeosdevicesListOrderBy_SerialNumber,
        ChromeosdevicesListOrderBy_Status,
        ChromeosdevicesListOrderBy_SupportEndDate,
        ..
      ),

    -- * ChromeosdevicesListProjection
    ChromeosdevicesListProjection
      ( ChromeosdevicesListProjection_Basic,
        ChromeosdevicesListProjection_Full,
        ..
      ),

    -- * ChromeosdevicesListSortOrder
    ChromeosdevicesListSortOrder
      ( ChromeosdevicesListSortOrder_Ascending,
        ChromeosdevicesListSortOrder_Descending,
        ..
      ),

    -- * ChromeosdevicesPatchProjection
    ChromeosdevicesPatchProjection
      ( ChromeosdevicesPatchProjection_Basic,
        ChromeosdevicesPatchProjection_Full,
        ..
      ),

    -- * ChromeosdevicesUpdateProjection
    ChromeosdevicesUpdateProjection
      ( ChromeosdevicesUpdateProjection_Basic,
        ChromeosdevicesUpdateProjection_Full,
        ..
      ),

    -- * GroupsListOrderBy
    GroupsListOrderBy
      ( GroupsListOrderBy_Email,
        ..
      ),

    -- * GroupsListSortOrder
    GroupsListSortOrder
      ( GroupsListSortOrder_Ascending,
        GroupsListSortOrder_Descending,
        ..
      ),

    -- * MobiledevicesGetProjection
    MobiledevicesGetProjection
      ( MobiledevicesGetProjection_Basic,
        MobiledevicesGetProjection_Full,
        ..
      ),

    -- * MobiledevicesListOrderBy
    MobiledevicesListOrderBy
      ( MobiledevicesListOrderBy_DeviceId,
        MobiledevicesListOrderBy_Email,
        MobiledevicesListOrderBy_LastSync,
        MobiledevicesListOrderBy_Model,
        MobiledevicesListOrderBy_Name,
        MobiledevicesListOrderBy_OS,
        MobiledevicesListOrderBy_Status,
        MobiledevicesListOrderBy_Type,
        ..
      ),

    -- * MobiledevicesListProjection
    MobiledevicesListProjection
      ( MobiledevicesListProjection_Basic,
        MobiledevicesListProjection_Full,
        ..
      ),

    -- * MobiledevicesListSortOrder
    MobiledevicesListSortOrder
      ( MobiledevicesListSortOrder_Ascending,
        MobiledevicesListSortOrder_Descending,
        ..
      ),

    -- * OrgunitsListType
    OrgunitsListType
      ( OrgunitsListType_All,
        OrgunitsListType_Children,
        ..
      ),

    -- * ResourcesBuildingsInsertCoordinatesSource
    ResourcesBuildingsInsertCoordinatesSource
      ( ResourcesBuildingsInsertCoordinatesSource_CLIENTSPECIFIED,
        ResourcesBuildingsInsertCoordinatesSource_RESOLVEDFROMADDRESS,
        ResourcesBuildingsInsertCoordinatesSource_SOURCEUNSPECIFIED,
        ..
      ),

    -- * ResourcesBuildingsPatchCoordinatesSource
    ResourcesBuildingsPatchCoordinatesSource
      ( ResourcesBuildingsPatchCoordinatesSource_CLIENTSPECIFIED,
        ResourcesBuildingsPatchCoordinatesSource_RESOLVEDFROMADDRESS,
        ResourcesBuildingsPatchCoordinatesSource_SOURCEUNSPECIFIED,
        ..
      ),

    -- * ResourcesBuildingsUpdateCoordinatesSource
    ResourcesBuildingsUpdateCoordinatesSource
      ( ResourcesBuildingsUpdateCoordinatesSource_CLIENTSPECIFIED,
        ResourcesBuildingsUpdateCoordinatesSource_RESOLVEDFROMADDRESS,
        ResourcesBuildingsUpdateCoordinatesSource_SOURCEUNSPECIFIED,
        ..
      ),

    -- * UsersAliasesListEvent
    UsersAliasesListEvent
      ( UsersAliasesListEvent_Add,
        UsersAliasesListEvent_Delete',
        ..
      ),

    -- * UsersAliasesWatchEvent
    UsersAliasesWatchEvent
      ( UsersAliasesWatchEvent_Add,
        UsersAliasesWatchEvent_Delete',
        ..
      ),

    -- * UsersGetProjection
    UsersGetProjection
      ( UsersGetProjection_Basic,
        UsersGetProjection_Custom,
        UsersGetProjection_Full,
        ..
      ),

    -- * UsersGetViewType
    UsersGetViewType
      ( UsersGetViewType_AdminView,
        UsersGetViewType_DomainPublic,
        ..
      ),

    -- * UsersListEvent
    UsersListEvent
      ( UsersListEvent_Add,
        UsersListEvent_Delete',
        UsersListEvent_MakeAdmin,
        UsersListEvent_Undelete,
        UsersListEvent_Update,
        ..
      ),

    -- * UsersListOrderBy
    UsersListOrderBy
      ( UsersListOrderBy_Email,
        UsersListOrderBy_FamilyName,
        UsersListOrderBy_GivenName,
        ..
      ),

    -- * UsersListProjection
    UsersListProjection
      ( UsersListProjection_Basic,
        UsersListProjection_Custom,
        UsersListProjection_Full,
        ..
      ),

    -- * UsersListSortOrder
    UsersListSortOrder
      ( UsersListSortOrder_Ascending,
        UsersListSortOrder_Descending,
        ..
      ),

    -- * UsersListViewType
    UsersListViewType
      ( UsersListViewType_AdminView,
        UsersListViewType_DomainPublic,
        ..
      ),

    -- * UsersWatchEvent
    UsersWatchEvent
      ( UsersWatchEvent_Add,
        UsersWatchEvent_Delete',
        UsersWatchEvent_MakeAdmin,
        UsersWatchEvent_Undelete,
        UsersWatchEvent_Update,
        ..
      ),

    -- * UsersWatchOrderBy
    UsersWatchOrderBy
      ( UsersWatchOrderBy_Email,
        UsersWatchOrderBy_FamilyName,
        UsersWatchOrderBy_GivenName,
        ..
      ),

    -- * UsersWatchProjection
    UsersWatchProjection
      ( UsersWatchProjection_Basic,
        UsersWatchProjection_Custom,
        UsersWatchProjection_Full,
        ..
      ),

    -- * UsersWatchSortOrder
    UsersWatchSortOrder
      ( UsersWatchSortOrder_Ascending,
        UsersWatchSortOrder_Descending,
        ..
      ),

    -- * UsersWatchViewType
    UsersWatchViewType
      ( UsersWatchViewType_AdminView,
        UsersWatchViewType_DomainPublic,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Message severity
newtype AuxiliaryMessage_Severity = AuxiliaryMessage_Severity {fromAuxiliaryMessage_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Message type unspecified.
pattern AuxiliaryMessage_Severity_SEVERITYUNSPECIFIED :: AuxiliaryMessage_Severity
pattern AuxiliaryMessage_Severity_SEVERITYUNSPECIFIED = AuxiliaryMessage_Severity "SEVERITY_UNSPECIFIED"

-- | Message of severity: info.
pattern AuxiliaryMessage_Severity_SEVERITYINFO :: AuxiliaryMessage_Severity
pattern AuxiliaryMessage_Severity_SEVERITYINFO = AuxiliaryMessage_Severity "SEVERITY_INFO"

-- | Message of severity: warning.
pattern AuxiliaryMessage_Severity_SEVERITYWARNING :: AuxiliaryMessage_Severity
pattern AuxiliaryMessage_Severity_SEVERITYWARNING = AuxiliaryMessage_Severity "SEVERITY_WARNING"

-- | Message of severity: error.
pattern AuxiliaryMessage_Severity_SEVERITYERROR :: AuxiliaryMessage_Severity
pattern AuxiliaryMessage_Severity_SEVERITYERROR = AuxiliaryMessage_Severity "SEVERITY_ERROR"

{-# COMPLETE
  AuxiliaryMessage_Severity_SEVERITYUNSPECIFIED,
  AuxiliaryMessage_Severity_SEVERITYINFO,
  AuxiliaryMessage_Severity_SEVERITYWARNING,
  AuxiliaryMessage_Severity_SEVERITYERROR,
  AuxiliaryMessage_Severity
  #-}

-- | Indicates the command state.
newtype DirectoryChromeosdevicesCommand_State = DirectoryChromeosdevicesCommand_State {fromDirectoryChromeosdevicesCommand_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The command status was unspecified.
pattern DirectoryChromeosdevicesCommand_State_STATEUNSPECIFIED :: DirectoryChromeosdevicesCommand_State
pattern DirectoryChromeosdevicesCommand_State_STATEUNSPECIFIED = DirectoryChromeosdevicesCommand_State "STATE_UNSPECIFIED"

-- | An unexpired command not yet sent to the client.
pattern DirectoryChromeosdevicesCommand_State_Pending :: DirectoryChromeosdevicesCommand_State
pattern DirectoryChromeosdevicesCommand_State_Pending = DirectoryChromeosdevicesCommand_State "PENDING"

-- | The command didn\'t get executed by the client within the expected time.
pattern DirectoryChromeosdevicesCommand_State_Expired :: DirectoryChromeosdevicesCommand_State
pattern DirectoryChromeosdevicesCommand_State_Expired = DirectoryChromeosdevicesCommand_State "EXPIRED"

-- | The command is cancelled by admin while in PENDING.
pattern DirectoryChromeosdevicesCommand_State_Cancelled :: DirectoryChromeosdevicesCommand_State
pattern DirectoryChromeosdevicesCommand_State_Cancelled = DirectoryChromeosdevicesCommand_State "CANCELLED"

-- | The command has been sent to the client.
pattern DirectoryChromeosdevicesCommand_State_SENTTOCLIENT :: DirectoryChromeosdevicesCommand_State
pattern DirectoryChromeosdevicesCommand_State_SENTTOCLIENT = DirectoryChromeosdevicesCommand_State "SENT_TO_CLIENT"

-- | The client has responded that it received the command.
pattern DirectoryChromeosdevicesCommand_State_ACKEDBYCLIENT :: DirectoryChromeosdevicesCommand_State
pattern DirectoryChromeosdevicesCommand_State_ACKEDBYCLIENT = DirectoryChromeosdevicesCommand_State "ACKED_BY_CLIENT"

-- | The client has (un)successfully executed the command.
pattern DirectoryChromeosdevicesCommand_State_EXECUTEDBYCLIENT :: DirectoryChromeosdevicesCommand_State
pattern DirectoryChromeosdevicesCommand_State_EXECUTEDBYCLIENT = DirectoryChromeosdevicesCommand_State "EXECUTED_BY_CLIENT"

{-# COMPLETE
  DirectoryChromeosdevicesCommand_State_STATEUNSPECIFIED,
  DirectoryChromeosdevicesCommand_State_Pending,
  DirectoryChromeosdevicesCommand_State_Expired,
  DirectoryChromeosdevicesCommand_State_Cancelled,
  DirectoryChromeosdevicesCommand_State_SENTTOCLIENT,
  DirectoryChromeosdevicesCommand_State_ACKEDBYCLIENT,
  DirectoryChromeosdevicesCommand_State_EXECUTEDBYCLIENT,
  DirectoryChromeosdevicesCommand_State
  #-}

-- | The type of the command.
newtype DirectoryChromeosdevicesCommand_Type = DirectoryChromeosdevicesCommand_Type {fromDirectoryChromeosdevicesCommand_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The command type was unspecified.
pattern DirectoryChromeosdevicesCommand_Type_COMMANDTYPEUNSPECIFIED :: DirectoryChromeosdevicesCommand_Type
pattern DirectoryChromeosdevicesCommand_Type_COMMANDTYPEUNSPECIFIED = DirectoryChromeosdevicesCommand_Type "COMMAND_TYPE_UNSPECIFIED"

-- | Reboot the device. Can only be issued to Kiosk and managed guest session devices.
pattern DirectoryChromeosdevicesCommand_Type_Reboot :: DirectoryChromeosdevicesCommand_Type
pattern DirectoryChromeosdevicesCommand_Type_Reboot = DirectoryChromeosdevicesCommand_Type "REBOOT"

-- | Take a screenshot of the device. Only available if the device is in Kiosk Mode.
pattern DirectoryChromeosdevicesCommand_Type_TAKEASCREENSHOT :: DirectoryChromeosdevicesCommand_Type
pattern DirectoryChromeosdevicesCommand_Type_TAKEASCREENSHOT = DirectoryChromeosdevicesCommand_Type "TAKE_A_SCREENSHOT"

-- | Set the volume of the device. Can only be issued to Kiosk and managed guest session devices.
pattern DirectoryChromeosdevicesCommand_Type_SETVOLUME :: DirectoryChromeosdevicesCommand_Type
pattern DirectoryChromeosdevicesCommand_Type_SETVOLUME = DirectoryChromeosdevicesCommand_Type "SET_VOLUME"

-- | Wipe all the users off of the device. Executing this command in the device will remove all user profile data, but it will keep device policy and enrollment.
pattern DirectoryChromeosdevicesCommand_Type_WIPEUSERS :: DirectoryChromeosdevicesCommand_Type
pattern DirectoryChromeosdevicesCommand_Type_WIPEUSERS = DirectoryChromeosdevicesCommand_Type "WIPE_USERS"

-- | Wipes the device by performing a power wash. Executing this command in the device will remove all data including user policies, device policies and enrollment policies. Warning: This will revert the device back to a factory state with no enrollment unless the device is subject to forced or auto enrollment. Use with caution, as this is an irreversible action!
pattern DirectoryChromeosdevicesCommand_Type_REMOTEPOWERWASH :: DirectoryChromeosdevicesCommand_Type
pattern DirectoryChromeosdevicesCommand_Type_REMOTEPOWERWASH = DirectoryChromeosdevicesCommand_Type "REMOTE_POWERWASH"

{-# COMPLETE
  DirectoryChromeosdevicesCommand_Type_COMMANDTYPEUNSPECIFIED,
  DirectoryChromeosdevicesCommand_Type_Reboot,
  DirectoryChromeosdevicesCommand_Type_TAKEASCREENSHOT,
  DirectoryChromeosdevicesCommand_Type_SETVOLUME,
  DirectoryChromeosdevicesCommand_Type_WIPEUSERS,
  DirectoryChromeosdevicesCommand_Type_REMOTEPOWERWASH,
  DirectoryChromeosdevicesCommand_Type
  #-}

-- | The result of the command.
newtype DirectoryChromeosdevicesCommandResult_Result = DirectoryChromeosdevicesCommandResult_Result {fromDirectoryChromeosdevicesCommandResult_Result :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The command result was unspecified.
pattern DirectoryChromeosdevicesCommandResult_Result_COMMANDRESULTTYPEUNSPECIFIED :: DirectoryChromeosdevicesCommandResult_Result
pattern DirectoryChromeosdevicesCommandResult_Result_COMMANDRESULTTYPEUNSPECIFIED = DirectoryChromeosdevicesCommandResult_Result "COMMAND_RESULT_TYPE_UNSPECIFIED"

-- | The command was ignored as obsolete.
pattern DirectoryChromeosdevicesCommandResult_Result_Ignored :: DirectoryChromeosdevicesCommandResult_Result
pattern DirectoryChromeosdevicesCommandResult_Result_Ignored = DirectoryChromeosdevicesCommandResult_Result "IGNORED"

-- | The command could not be executed successfully.
pattern DirectoryChromeosdevicesCommandResult_Result_Failure :: DirectoryChromeosdevicesCommandResult_Result
pattern DirectoryChromeosdevicesCommandResult_Result_Failure = DirectoryChromeosdevicesCommandResult_Result "FAILURE"

-- | The command was successfully executed.
pattern DirectoryChromeosdevicesCommandResult_Result_Success :: DirectoryChromeosdevicesCommandResult_Result
pattern DirectoryChromeosdevicesCommandResult_Result_Success = DirectoryChromeosdevicesCommandResult_Result "SUCCESS"

{-# COMPLETE
  DirectoryChromeosdevicesCommandResult_Result_COMMANDRESULTTYPEUNSPECIFIED,
  DirectoryChromeosdevicesCommandResult_Result_Ignored,
  DirectoryChromeosdevicesCommandResult_Result_Failure,
  DirectoryChromeosdevicesCommandResult_Result_Success,
  DirectoryChromeosdevicesCommandResult_Result
  #-}

-- | The type of command.
newtype DirectoryChromeosdevicesIssueCommandRequest_CommandType = DirectoryChromeosdevicesIssueCommandRequest_CommandType {fromDirectoryChromeosdevicesIssueCommandRequest_CommandType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The command type was unspecified.
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_COMMANDTYPEUNSPECIFIED :: DirectoryChromeosdevicesIssueCommandRequest_CommandType
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_COMMANDTYPEUNSPECIFIED = DirectoryChromeosdevicesIssueCommandRequest_CommandType "COMMAND_TYPE_UNSPECIFIED"

-- | Reboot the device. Can only be issued to Kiosk and managed guest session devices.
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_Reboot :: DirectoryChromeosdevicesIssueCommandRequest_CommandType
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_Reboot = DirectoryChromeosdevicesIssueCommandRequest_CommandType "REBOOT"

-- | Take a screenshot of the device. Only available if the device is in Kiosk Mode.
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_TAKEASCREENSHOT :: DirectoryChromeosdevicesIssueCommandRequest_CommandType
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_TAKEASCREENSHOT = DirectoryChromeosdevicesIssueCommandRequest_CommandType "TAKE_A_SCREENSHOT"

-- | Set the volume of the device. Can only be issued to Kiosk and managed guest session devices.
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_SETVOLUME :: DirectoryChromeosdevicesIssueCommandRequest_CommandType
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_SETVOLUME = DirectoryChromeosdevicesIssueCommandRequest_CommandType "SET_VOLUME"

-- | Wipe all the users off of the device. Executing this command in the device will remove all user profile data, but it will keep device policy and enrollment.
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_WIPEUSERS :: DirectoryChromeosdevicesIssueCommandRequest_CommandType
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_WIPEUSERS = DirectoryChromeosdevicesIssueCommandRequest_CommandType "WIPE_USERS"

-- | Wipes the device by performing a power wash. Executing this command in the device will remove all data including user policies, device policies and enrollment policies. Warning: This will revert the device back to a factory state with no enrollment unless the device is subject to forced or auto enrollment. Use with caution, as this is an irreversible action!
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_REMOTEPOWERWASH :: DirectoryChromeosdevicesIssueCommandRequest_CommandType
pattern DirectoryChromeosdevicesIssueCommandRequest_CommandType_REMOTEPOWERWASH = DirectoryChromeosdevicesIssueCommandRequest_CommandType "REMOTE_POWERWASH"

{-# COMPLETE
  DirectoryChromeosdevicesIssueCommandRequest_CommandType_COMMANDTYPEUNSPECIFIED,
  DirectoryChromeosdevicesIssueCommandRequest_CommandType_Reboot,
  DirectoryChromeosdevicesIssueCommandRequest_CommandType_TAKEASCREENSHOT,
  DirectoryChromeosdevicesIssueCommandRequest_CommandType_SETVOLUME,
  DirectoryChromeosdevicesIssueCommandRequest_CommandType_WIPEUSERS,
  DirectoryChromeosdevicesIssueCommandRequest_CommandType_REMOTEPOWERWASH,
  DirectoryChromeosdevicesIssueCommandRequest_CommandType
  #-}

-- | Canonical code for why the update failed to apply.
newtype FailureInfo_ErrorCode = FailureInfo_ErrorCode {fromFailureInfo_ErrorCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not an error; returned on success HTTP Mapping: 200 OK
pattern FailureInfo_ErrorCode_OK :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_OK = FailureInfo_ErrorCode "OK"

-- | The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request
pattern FailureInfo_ErrorCode_Cancelled :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_Cancelled = FailureInfo_ErrorCode "CANCELLED"

-- | Unknown error. For example, this error may be returned when a @Status@ value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error
pattern FailureInfo_ErrorCode_Unknown :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_Unknown = FailureInfo_ErrorCode "UNKNOWN"

-- | The client specified an invalid argument. Note that this differs from @FAILED_PRECONDITION@. @INVALID_ARGUMENT@ indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
pattern FailureInfo_ErrorCode_INVALIDARGUMENT :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_INVALIDARGUMENT = FailureInfo_ErrorCode "INVALID_ARGUMENT"

-- | The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
pattern FailureInfo_ErrorCode_DEADLINEEXCEEDED :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_DEADLINEEXCEEDED = FailureInfo_ErrorCode "DEADLINE_EXCEEDED"

-- | Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, @NOT_FOUND@ may be used. If a request is denied for some users within a class of users, such as user-based access control, @PERMISSION_DENIED@ must be used. HTTP Mapping: 404 Not Found
pattern FailureInfo_ErrorCode_NOTFOUND :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_NOTFOUND = FailureInfo_ErrorCode "NOT_FOUND"

-- | The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict
pattern FailureInfo_ErrorCode_ALREADYEXISTS :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_ALREADYEXISTS = FailureInfo_ErrorCode "ALREADY_EXISTS"

-- | The caller does not have permission to execute the specified operation. @PERMISSION_DENIED@ must not be used for rejections caused by exhausting some resource (use @RESOURCE_EXHAUSTED@ instead for those errors). @PERMISSION_DENIED@ must not be used if the caller can not be identified (use @UNAUTHENTICATED@ instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
pattern FailureInfo_ErrorCode_PERMISSIONDENIED :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_PERMISSIONDENIED = FailureInfo_ErrorCode "PERMISSION_DENIED"

-- | The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized
pattern FailureInfo_ErrorCode_Unauthenticated :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_Unauthenticated = FailureInfo_ErrorCode "UNAUTHENTICATED"

-- | Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests
pattern FailureInfo_ErrorCode_RESOURCEEXHAUSTED :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_RESOURCEEXHAUSTED = FailureInfo_ErrorCode "RESOURCE_EXHAUSTED"

-- | The operation was rejected because the system is not in a state required for the operation\'s execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@: (a) Use @UNAVAILABLE@ if the client can retry just the failing call. (b) Use @ABORTED@ if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use @FAILED_PRECONDITION@ if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, @FAILED_PRECONDITION@ should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request
pattern FailureInfo_ErrorCode_FAILEDPRECONDITION :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_FAILEDPRECONDITION = FailureInfo_ErrorCode "FAILED_PRECONDITION"

-- | The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 409 Conflict
pattern FailureInfo_ErrorCode_Aborted :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_Aborted = FailureInfo_ErrorCode "ABORTED"

-- | The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike @INVALID_ARGUMENT@, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate @INVALID_ARGUMENT@ if asked to read at an offset that is not in the range [0,2^32-1], but it will generate @OUT_OF_RANGE@ if asked to read from an offset past the current file size. There is a fair bit of overlap between @FAILED_PRECONDITION@ and @OUT_OF_RANGE@. We recommend using @OUT_OF_RANGE@ (the more specific error) when it applies so that callers who are iterating through a space can easily look for an @OUT_OF_RANGE@ error to detect when they are done. HTTP Mapping: 400 Bad Request
pattern FailureInfo_ErrorCode_OUTOFRANGE :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_OUTOFRANGE = FailureInfo_ErrorCode "OUT_OF_RANGE"

-- | The operation is not implemented or is not supported\/enabled in this service. HTTP Mapping: 501 Not Implemented
pattern FailureInfo_ErrorCode_Unimplemented :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_Unimplemented = FailureInfo_ErrorCode "UNIMPLEMENTED"

-- | Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error
pattern FailureInfo_ErrorCode_Internal :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_Internal = FailureInfo_ErrorCode "INTERNAL"

-- | The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 503 Service Unavailable
pattern FailureInfo_ErrorCode_Unavailable :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_Unavailable = FailureInfo_ErrorCode "UNAVAILABLE"

-- | Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error
pattern FailureInfo_ErrorCode_DATALOSS :: FailureInfo_ErrorCode
pattern FailureInfo_ErrorCode_DATALOSS = FailureInfo_ErrorCode "DATA_LOSS"

{-# COMPLETE
  FailureInfo_ErrorCode_OK,
  FailureInfo_ErrorCode_Cancelled,
  FailureInfo_ErrorCode_Unknown,
  FailureInfo_ErrorCode_INVALIDARGUMENT,
  FailureInfo_ErrorCode_DEADLINEEXCEEDED,
  FailureInfo_ErrorCode_NOTFOUND,
  FailureInfo_ErrorCode_ALREADYEXISTS,
  FailureInfo_ErrorCode_PERMISSIONDENIED,
  FailureInfo_ErrorCode_Unauthenticated,
  FailureInfo_ErrorCode_RESOURCEEXHAUSTED,
  FailureInfo_ErrorCode_FAILEDPRECONDITION,
  FailureInfo_ErrorCode_Aborted,
  FailureInfo_ErrorCode_OUTOFRANGE,
  FailureInfo_ErrorCode_Unimplemented,
  FailureInfo_ErrorCode_Internal,
  FailureInfo_ErrorCode_Unavailable,
  FailureInfo_ErrorCode_DATALOSS,
  FailureInfo_ErrorCode
  #-}

-- | Determines whether the response contains the full list of properties or only a subset.
newtype ChromeosdevicesGetProjection = ChromeosdevicesGetProjection {fromChromeosdevicesGetProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)
pattern ChromeosdevicesGetProjection_Basic :: ChromeosdevicesGetProjection
pattern ChromeosdevicesGetProjection_Basic = ChromeosdevicesGetProjection "BASIC"

-- | Includes all metadata fields
pattern ChromeosdevicesGetProjection_Full :: ChromeosdevicesGetProjection
pattern ChromeosdevicesGetProjection_Full = ChromeosdevicesGetProjection "FULL"

{-# COMPLETE
  ChromeosdevicesGetProjection_Basic,
  ChromeosdevicesGetProjection_Full,
  ChromeosdevicesGetProjection
  #-}

-- | Device property to use for sorting results.
newtype ChromeosdevicesListOrderBy = ChromeosdevicesListOrderBy {fromChromeosdevicesListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Chrome device location as annotated by the administrator.
pattern ChromeosdevicesListOrderBy_AnnotatedLocation :: ChromeosdevicesListOrderBy
pattern ChromeosdevicesListOrderBy_AnnotatedLocation = ChromeosdevicesListOrderBy "annotatedLocation"

-- | Chromebook user as annotated by administrator.
pattern ChromeosdevicesListOrderBy_AnnotatedUser :: ChromeosdevicesListOrderBy
pattern ChromeosdevicesListOrderBy_AnnotatedUser = ChromeosdevicesListOrderBy "annotatedUser"

-- | The date and time the Chrome device was last synchronized with the policy settings in the Admin console.
pattern ChromeosdevicesListOrderBy_LastSync :: ChromeosdevicesListOrderBy
pattern ChromeosdevicesListOrderBy_LastSync = ChromeosdevicesListOrderBy "lastSync"

-- | Chrome device notes as annotated by the administrator.
pattern ChromeosdevicesListOrderBy_Notes :: ChromeosdevicesListOrderBy
pattern ChromeosdevicesListOrderBy_Notes = ChromeosdevicesListOrderBy "notes"

-- | The Chrome device serial number entered when the device was enabled.
pattern ChromeosdevicesListOrderBy_SerialNumber :: ChromeosdevicesListOrderBy
pattern ChromeosdevicesListOrderBy_SerialNumber = ChromeosdevicesListOrderBy "serialNumber"

-- | Chrome device status. For more information, see the \<a </admin-sdk/directory/v1/reference/chromeosdevices.html chromeosdevices>.
pattern ChromeosdevicesListOrderBy_Status :: ChromeosdevicesListOrderBy
pattern ChromeosdevicesListOrderBy_Status = ChromeosdevicesListOrderBy "status"

-- | Chrome device support end date. This is applicable only for devices purchased directly from Google.
pattern ChromeosdevicesListOrderBy_SupportEndDate :: ChromeosdevicesListOrderBy
pattern ChromeosdevicesListOrderBy_SupportEndDate = ChromeosdevicesListOrderBy "supportEndDate"

{-# COMPLETE
  ChromeosdevicesListOrderBy_AnnotatedLocation,
  ChromeosdevicesListOrderBy_AnnotatedUser,
  ChromeosdevicesListOrderBy_LastSync,
  ChromeosdevicesListOrderBy_Notes,
  ChromeosdevicesListOrderBy_SerialNumber,
  ChromeosdevicesListOrderBy_Status,
  ChromeosdevicesListOrderBy_SupportEndDate,
  ChromeosdevicesListOrderBy
  #-}

-- | Restrict information returned to a set of selected fields.
newtype ChromeosdevicesListProjection = ChromeosdevicesListProjection {fromChromeosdevicesListProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)
pattern ChromeosdevicesListProjection_Basic :: ChromeosdevicesListProjection
pattern ChromeosdevicesListProjection_Basic = ChromeosdevicesListProjection "BASIC"

-- | Includes all metadata fields
pattern ChromeosdevicesListProjection_Full :: ChromeosdevicesListProjection
pattern ChromeosdevicesListProjection_Full = ChromeosdevicesListProjection "FULL"

{-# COMPLETE
  ChromeosdevicesListProjection_Basic,
  ChromeosdevicesListProjection_Full,
  ChromeosdevicesListProjection
  #-}

-- | Whether to return results in ascending or descending order. Must be used with the @orderBy@ parameter.
newtype ChromeosdevicesListSortOrder = ChromeosdevicesListSortOrder {fromChromeosdevicesListSortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Ascending order.
pattern ChromeosdevicesListSortOrder_Ascending :: ChromeosdevicesListSortOrder
pattern ChromeosdevicesListSortOrder_Ascending = ChromeosdevicesListSortOrder "ASCENDING"

-- | Descending order.
pattern ChromeosdevicesListSortOrder_Descending :: ChromeosdevicesListSortOrder
pattern ChromeosdevicesListSortOrder_Descending = ChromeosdevicesListSortOrder "DESCENDING"

{-# COMPLETE
  ChromeosdevicesListSortOrder_Ascending,
  ChromeosdevicesListSortOrder_Descending,
  ChromeosdevicesListSortOrder
  #-}

-- | Restrict information returned to a set of selected fields.
newtype ChromeosdevicesPatchProjection = ChromeosdevicesPatchProjection {fromChromeosdevicesPatchProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)
pattern ChromeosdevicesPatchProjection_Basic :: ChromeosdevicesPatchProjection
pattern ChromeosdevicesPatchProjection_Basic = ChromeosdevicesPatchProjection "BASIC"

-- | Includes all metadata fields
pattern ChromeosdevicesPatchProjection_Full :: ChromeosdevicesPatchProjection
pattern ChromeosdevicesPatchProjection_Full = ChromeosdevicesPatchProjection "FULL"

{-# COMPLETE
  ChromeosdevicesPatchProjection_Basic,
  ChromeosdevicesPatchProjection_Full,
  ChromeosdevicesPatchProjection
  #-}

-- | Restrict information returned to a set of selected fields.
newtype ChromeosdevicesUpdateProjection = ChromeosdevicesUpdateProjection {fromChromeosdevicesUpdateProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)
pattern ChromeosdevicesUpdateProjection_Basic :: ChromeosdevicesUpdateProjection
pattern ChromeosdevicesUpdateProjection_Basic = ChromeosdevicesUpdateProjection "BASIC"

-- | Includes all metadata fields
pattern ChromeosdevicesUpdateProjection_Full :: ChromeosdevicesUpdateProjection
pattern ChromeosdevicesUpdateProjection_Full = ChromeosdevicesUpdateProjection "FULL"

{-# COMPLETE
  ChromeosdevicesUpdateProjection_Basic,
  ChromeosdevicesUpdateProjection_Full,
  ChromeosdevicesUpdateProjection
  #-}

-- | Column to use for sorting results
newtype GroupsListOrderBy = GroupsListOrderBy {fromGroupsListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Email of the group.
pattern GroupsListOrderBy_Email :: GroupsListOrderBy
pattern GroupsListOrderBy_Email = GroupsListOrderBy "email"

{-# COMPLETE
  GroupsListOrderBy_Email,
  GroupsListOrderBy
  #-}

-- | Whether to return results in ascending or descending order. Only of use when orderBy is also used
newtype GroupsListSortOrder = GroupsListSortOrder {fromGroupsListSortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Ascending order.
pattern GroupsListSortOrder_Ascending :: GroupsListSortOrder
pattern GroupsListSortOrder_Ascending = GroupsListSortOrder "ASCENDING"

-- | Descending order.
pattern GroupsListSortOrder_Descending :: GroupsListSortOrder
pattern GroupsListSortOrder_Descending = GroupsListSortOrder "DESCENDING"

{-# COMPLETE
  GroupsListSortOrder_Ascending,
  GroupsListSortOrder_Descending,
  GroupsListSortOrder
  #-}

-- | Restrict information returned to a set of selected fields.
newtype MobiledevicesGetProjection = MobiledevicesGetProjection {fromMobiledevicesGetProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Includes only the basic metadata fields (e.g., deviceId, model, status, type, and status)
pattern MobiledevicesGetProjection_Basic :: MobiledevicesGetProjection
pattern MobiledevicesGetProjection_Basic = MobiledevicesGetProjection "BASIC"

-- | Includes all metadata fields
pattern MobiledevicesGetProjection_Full :: MobiledevicesGetProjection
pattern MobiledevicesGetProjection_Full = MobiledevicesGetProjection "FULL"

{-# COMPLETE
  MobiledevicesGetProjection_Basic,
  MobiledevicesGetProjection_Full,
  MobiledevicesGetProjection
  #-}

-- | Device property to use for sorting results.
newtype MobiledevicesListOrderBy = MobiledevicesListOrderBy {fromMobiledevicesListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The serial number for a Google Sync mobile device. For Android devices, this is a software generated unique identifier.
pattern MobiledevicesListOrderBy_DeviceId :: MobiledevicesListOrderBy
pattern MobiledevicesListOrderBy_DeviceId = MobiledevicesListOrderBy "deviceId"

-- | The device owner\'s email address.
pattern MobiledevicesListOrderBy_Email :: MobiledevicesListOrderBy
pattern MobiledevicesListOrderBy_Email = MobiledevicesListOrderBy "email"

-- | Last policy settings sync date time of the device.
pattern MobiledevicesListOrderBy_LastSync :: MobiledevicesListOrderBy
pattern MobiledevicesListOrderBy_LastSync = MobiledevicesListOrderBy "lastSync"

-- | The mobile device\'s model.
pattern MobiledevicesListOrderBy_Model :: MobiledevicesListOrderBy
pattern MobiledevicesListOrderBy_Model = MobiledevicesListOrderBy "model"

-- | The device owner\'s user name.
pattern MobiledevicesListOrderBy_Name :: MobiledevicesListOrderBy
pattern MobiledevicesListOrderBy_Name = MobiledevicesListOrderBy "name"

-- | The device\'s operating system.
pattern MobiledevicesListOrderBy_OS :: MobiledevicesListOrderBy
pattern MobiledevicesListOrderBy_OS = MobiledevicesListOrderBy "os"

-- | The device status.
pattern MobiledevicesListOrderBy_Status :: MobiledevicesListOrderBy
pattern MobiledevicesListOrderBy_Status = MobiledevicesListOrderBy "status"

-- | Type of the device.
pattern MobiledevicesListOrderBy_Type :: MobiledevicesListOrderBy
pattern MobiledevicesListOrderBy_Type = MobiledevicesListOrderBy "type"

{-# COMPLETE
  MobiledevicesListOrderBy_DeviceId,
  MobiledevicesListOrderBy_Email,
  MobiledevicesListOrderBy_LastSync,
  MobiledevicesListOrderBy_Model,
  MobiledevicesListOrderBy_Name,
  MobiledevicesListOrderBy_OS,
  MobiledevicesListOrderBy_Status,
  MobiledevicesListOrderBy_Type,
  MobiledevicesListOrderBy
  #-}

-- | Restrict information returned to a set of selected fields.
newtype MobiledevicesListProjection = MobiledevicesListProjection {fromMobiledevicesListProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Includes only the basic metadata fields (e.g., deviceId, model, status, type, and status)
pattern MobiledevicesListProjection_Basic :: MobiledevicesListProjection
pattern MobiledevicesListProjection_Basic = MobiledevicesListProjection "BASIC"

-- | Includes all metadata fields
pattern MobiledevicesListProjection_Full :: MobiledevicesListProjection
pattern MobiledevicesListProjection_Full = MobiledevicesListProjection "FULL"

{-# COMPLETE
  MobiledevicesListProjection_Basic,
  MobiledevicesListProjection_Full,
  MobiledevicesListProjection
  #-}

-- | Whether to return results in ascending or descending order. Must be used with the @orderBy@ parameter.
newtype MobiledevicesListSortOrder = MobiledevicesListSortOrder {fromMobiledevicesListSortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Ascending order.
pattern MobiledevicesListSortOrder_Ascending :: MobiledevicesListSortOrder
pattern MobiledevicesListSortOrder_Ascending = MobiledevicesListSortOrder "ASCENDING"

-- | Descending order.
pattern MobiledevicesListSortOrder_Descending :: MobiledevicesListSortOrder
pattern MobiledevicesListSortOrder_Descending = MobiledevicesListSortOrder "DESCENDING"

{-# COMPLETE
  MobiledevicesListSortOrder_Ascending,
  MobiledevicesListSortOrder_Descending,
  MobiledevicesListSortOrder
  #-}

-- | Whether to return all sub-organizations or just immediate children.
newtype OrgunitsListType = OrgunitsListType {fromOrgunitsListType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | All sub-organizational units.
pattern OrgunitsListType_All :: OrgunitsListType
pattern OrgunitsListType_All = OrgunitsListType "all"

-- | Immediate children only (default).
pattern OrgunitsListType_Children :: OrgunitsListType
pattern OrgunitsListType_Children = OrgunitsListType "children"

{-# COMPLETE
  OrgunitsListType_All,
  OrgunitsListType_Children,
  OrgunitsListType
  #-}

-- | Source from which Building.coordinates are derived.
newtype ResourcesBuildingsInsertCoordinatesSource = ResourcesBuildingsInsertCoordinatesSource {fromResourcesBuildingsInsertCoordinatesSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Building.coordinates are set to the coordinates included in the request.
pattern ResourcesBuildingsInsertCoordinatesSource_CLIENTSPECIFIED :: ResourcesBuildingsInsertCoordinatesSource
pattern ResourcesBuildingsInsertCoordinatesSource_CLIENTSPECIFIED = ResourcesBuildingsInsertCoordinatesSource "CLIENT_SPECIFIED"

-- | Building.coordinates are automatically populated based on the postal address.
pattern ResourcesBuildingsInsertCoordinatesSource_RESOLVEDFROMADDRESS :: ResourcesBuildingsInsertCoordinatesSource
pattern ResourcesBuildingsInsertCoordinatesSource_RESOLVEDFROMADDRESS = ResourcesBuildingsInsertCoordinatesSource "RESOLVED_FROM_ADDRESS"

-- | Defaults to @RESOLVED_FROM_ADDRESS@ if postal address is provided. Otherwise, defaults to @CLIENT_SPECIFIED@ if coordinates are provided.
pattern ResourcesBuildingsInsertCoordinatesSource_SOURCEUNSPECIFIED :: ResourcesBuildingsInsertCoordinatesSource
pattern ResourcesBuildingsInsertCoordinatesSource_SOURCEUNSPECIFIED = ResourcesBuildingsInsertCoordinatesSource "SOURCE_UNSPECIFIED"

{-# COMPLETE
  ResourcesBuildingsInsertCoordinatesSource_CLIENTSPECIFIED,
  ResourcesBuildingsInsertCoordinatesSource_RESOLVEDFROMADDRESS,
  ResourcesBuildingsInsertCoordinatesSource_SOURCEUNSPECIFIED,
  ResourcesBuildingsInsertCoordinatesSource
  #-}

-- | Source from which Building.coordinates are derived.
newtype ResourcesBuildingsPatchCoordinatesSource = ResourcesBuildingsPatchCoordinatesSource {fromResourcesBuildingsPatchCoordinatesSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Building.coordinates are set to the coordinates included in the request.
pattern ResourcesBuildingsPatchCoordinatesSource_CLIENTSPECIFIED :: ResourcesBuildingsPatchCoordinatesSource
pattern ResourcesBuildingsPatchCoordinatesSource_CLIENTSPECIFIED = ResourcesBuildingsPatchCoordinatesSource "CLIENT_SPECIFIED"

-- | Building.coordinates are automatically populated based on the postal address.
pattern ResourcesBuildingsPatchCoordinatesSource_RESOLVEDFROMADDRESS :: ResourcesBuildingsPatchCoordinatesSource
pattern ResourcesBuildingsPatchCoordinatesSource_RESOLVEDFROMADDRESS = ResourcesBuildingsPatchCoordinatesSource "RESOLVED_FROM_ADDRESS"

-- | Defaults to @RESOLVED_FROM_ADDRESS@ if postal address is provided. Otherwise, defaults to @CLIENT_SPECIFIED@ if coordinates are provided.
pattern ResourcesBuildingsPatchCoordinatesSource_SOURCEUNSPECIFIED :: ResourcesBuildingsPatchCoordinatesSource
pattern ResourcesBuildingsPatchCoordinatesSource_SOURCEUNSPECIFIED = ResourcesBuildingsPatchCoordinatesSource "SOURCE_UNSPECIFIED"

{-# COMPLETE
  ResourcesBuildingsPatchCoordinatesSource_CLIENTSPECIFIED,
  ResourcesBuildingsPatchCoordinatesSource_RESOLVEDFROMADDRESS,
  ResourcesBuildingsPatchCoordinatesSource_SOURCEUNSPECIFIED,
  ResourcesBuildingsPatchCoordinatesSource
  #-}

-- | Source from which Building.coordinates are derived.
newtype ResourcesBuildingsUpdateCoordinatesSource = ResourcesBuildingsUpdateCoordinatesSource {fromResourcesBuildingsUpdateCoordinatesSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Building.coordinates are set to the coordinates included in the request.
pattern ResourcesBuildingsUpdateCoordinatesSource_CLIENTSPECIFIED :: ResourcesBuildingsUpdateCoordinatesSource
pattern ResourcesBuildingsUpdateCoordinatesSource_CLIENTSPECIFIED = ResourcesBuildingsUpdateCoordinatesSource "CLIENT_SPECIFIED"

-- | Building.coordinates are automatically populated based on the postal address.
pattern ResourcesBuildingsUpdateCoordinatesSource_RESOLVEDFROMADDRESS :: ResourcesBuildingsUpdateCoordinatesSource
pattern ResourcesBuildingsUpdateCoordinatesSource_RESOLVEDFROMADDRESS = ResourcesBuildingsUpdateCoordinatesSource "RESOLVED_FROM_ADDRESS"

-- | Defaults to @RESOLVED_FROM_ADDRESS@ if postal address is provided. Otherwise, defaults to @CLIENT_SPECIFIED@ if coordinates are provided.
pattern ResourcesBuildingsUpdateCoordinatesSource_SOURCEUNSPECIFIED :: ResourcesBuildingsUpdateCoordinatesSource
pattern ResourcesBuildingsUpdateCoordinatesSource_SOURCEUNSPECIFIED = ResourcesBuildingsUpdateCoordinatesSource "SOURCE_UNSPECIFIED"

{-# COMPLETE
  ResourcesBuildingsUpdateCoordinatesSource_CLIENTSPECIFIED,
  ResourcesBuildingsUpdateCoordinatesSource_RESOLVEDFROMADDRESS,
  ResourcesBuildingsUpdateCoordinatesSource_SOURCEUNSPECIFIED,
  ResourcesBuildingsUpdateCoordinatesSource
  #-}

-- | Events to watch for.
newtype UsersAliasesListEvent = UsersAliasesListEvent {fromUsersAliasesListEvent :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Alias Created Event
pattern UsersAliasesListEvent_Add :: UsersAliasesListEvent
pattern UsersAliasesListEvent_Add = UsersAliasesListEvent "add"

-- | Alias Deleted Event
pattern UsersAliasesListEvent_Delete' :: UsersAliasesListEvent
pattern UsersAliasesListEvent_Delete' = UsersAliasesListEvent "delete"

{-# COMPLETE
  UsersAliasesListEvent_Add,
  UsersAliasesListEvent_Delete',
  UsersAliasesListEvent
  #-}

-- | Events to watch for.
newtype UsersAliasesWatchEvent = UsersAliasesWatchEvent {fromUsersAliasesWatchEvent :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Alias Created Event
pattern UsersAliasesWatchEvent_Add :: UsersAliasesWatchEvent
pattern UsersAliasesWatchEvent_Add = UsersAliasesWatchEvent "add"

-- | Alias Deleted Event
pattern UsersAliasesWatchEvent_Delete' :: UsersAliasesWatchEvent
pattern UsersAliasesWatchEvent_Delete' = UsersAliasesWatchEvent "delete"

{-# COMPLETE
  UsersAliasesWatchEvent_Add,
  UsersAliasesWatchEvent_Delete',
  UsersAliasesWatchEvent
  #-}

-- | What subset of fields to fetch for this user.
newtype UsersGetProjection = UsersGetProjection {fromUsersGetProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not include any custom fields for the user.
pattern UsersGetProjection_Basic :: UsersGetProjection
pattern UsersGetProjection_Basic = UsersGetProjection "basic"

-- | Include custom fields from schemas requested in @customFieldMask@.
pattern UsersGetProjection_Custom :: UsersGetProjection
pattern UsersGetProjection_Custom = UsersGetProjection "custom"

-- | Include all fields associated with this user.
pattern UsersGetProjection_Full :: UsersGetProjection
pattern UsersGetProjection_Full = UsersGetProjection "full"

{-# COMPLETE
  UsersGetProjection_Basic,
  UsersGetProjection_Custom,
  UsersGetProjection_Full,
  UsersGetProjection
  #-}

-- | Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see </admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin Retrieve a user as a non-administrator>.
newtype UsersGetViewType = UsersGetViewType {fromUsersGetViewType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Results include both administrator-only and domain-public fields for the user.
pattern UsersGetViewType_AdminView :: UsersGetViewType
pattern UsersGetViewType_AdminView = UsersGetViewType "admin_view"

-- | Results only include fields for the user that are publicly visible to other users in the domain.
pattern UsersGetViewType_DomainPublic :: UsersGetViewType
pattern UsersGetViewType_DomainPublic = UsersGetViewType "domain_public"

{-# COMPLETE
  UsersGetViewType_AdminView,
  UsersGetViewType_DomainPublic,
  UsersGetViewType
  #-}

-- | Event on which subscription is intended (if subscribing)
newtype UsersListEvent = UsersListEvent {fromUsersListEvent :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | User Created Event
pattern UsersListEvent_Add :: UsersListEvent
pattern UsersListEvent_Add = UsersListEvent "add"

-- | User Deleted Event
pattern UsersListEvent_Delete' :: UsersListEvent
pattern UsersListEvent_Delete' = UsersListEvent "delete"

-- | User Admin Status Change Event
pattern UsersListEvent_MakeAdmin :: UsersListEvent
pattern UsersListEvent_MakeAdmin = UsersListEvent "makeAdmin"

-- | User Undeleted Event
pattern UsersListEvent_Undelete :: UsersListEvent
pattern UsersListEvent_Undelete = UsersListEvent "undelete"

-- | User Updated Event
pattern UsersListEvent_Update :: UsersListEvent
pattern UsersListEvent_Update = UsersListEvent "update"

{-# COMPLETE
  UsersListEvent_Add,
  UsersListEvent_Delete',
  UsersListEvent_MakeAdmin,
  UsersListEvent_Undelete,
  UsersListEvent_Update,
  UsersListEvent
  #-}

-- | Property to use for sorting results.
newtype UsersListOrderBy = UsersListOrderBy {fromUsersListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Primary email of the user.
pattern UsersListOrderBy_Email :: UsersListOrderBy
pattern UsersListOrderBy_Email = UsersListOrderBy "email"

-- | User\'s family name.
pattern UsersListOrderBy_FamilyName :: UsersListOrderBy
pattern UsersListOrderBy_FamilyName = UsersListOrderBy "familyName"

-- | User\'s given name.
pattern UsersListOrderBy_GivenName :: UsersListOrderBy
pattern UsersListOrderBy_GivenName = UsersListOrderBy "givenName"

{-# COMPLETE
  UsersListOrderBy_Email,
  UsersListOrderBy_FamilyName,
  UsersListOrderBy_GivenName,
  UsersListOrderBy
  #-}

-- | What subset of fields to fetch for this user.
newtype UsersListProjection = UsersListProjection {fromUsersListProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not include any custom fields for the user.
pattern UsersListProjection_Basic :: UsersListProjection
pattern UsersListProjection_Basic = UsersListProjection "basic"

-- | Include custom fields from schemas requested in @customFieldMask@.
pattern UsersListProjection_Custom :: UsersListProjection
pattern UsersListProjection_Custom = UsersListProjection "custom"

-- | Include all fields associated with this user.
pattern UsersListProjection_Full :: UsersListProjection
pattern UsersListProjection_Full = UsersListProjection "full"

{-# COMPLETE
  UsersListProjection_Basic,
  UsersListProjection_Custom,
  UsersListProjection_Full,
  UsersListProjection
  #-}

-- | Whether to return results in ascending or descending order, ignoring case.
newtype UsersListSortOrder = UsersListSortOrder {fromUsersListSortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Ascending order.
pattern UsersListSortOrder_Ascending :: UsersListSortOrder
pattern UsersListSortOrder_Ascending = UsersListSortOrder "ASCENDING"

-- | Descending order.
pattern UsersListSortOrder_Descending :: UsersListSortOrder
pattern UsersListSortOrder_Descending = UsersListSortOrder "DESCENDING"

{-# COMPLETE
  UsersListSortOrder_Ascending,
  UsersListSortOrder_Descending,
  UsersListSortOrder
  #-}

-- | Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see </admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin Retrieve a user as a non-administrator>.
newtype UsersListViewType = UsersListViewType {fromUsersListViewType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Results include both administrator-only and domain-public fields for the user.
pattern UsersListViewType_AdminView :: UsersListViewType
pattern UsersListViewType_AdminView = UsersListViewType "admin_view"

-- | Results only include fields for the user that are publicly visible to other users in the domain.
pattern UsersListViewType_DomainPublic :: UsersListViewType
pattern UsersListViewType_DomainPublic = UsersListViewType "domain_public"

{-# COMPLETE
  UsersListViewType_AdminView,
  UsersListViewType_DomainPublic,
  UsersListViewType
  #-}

-- | Events to watch for.
newtype UsersWatchEvent = UsersWatchEvent {fromUsersWatchEvent :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | User Created Event
pattern UsersWatchEvent_Add :: UsersWatchEvent
pattern UsersWatchEvent_Add = UsersWatchEvent "add"

-- | User Deleted Event
pattern UsersWatchEvent_Delete' :: UsersWatchEvent
pattern UsersWatchEvent_Delete' = UsersWatchEvent "delete"

-- | User Admin Status Change Event
pattern UsersWatchEvent_MakeAdmin :: UsersWatchEvent
pattern UsersWatchEvent_MakeAdmin = UsersWatchEvent "makeAdmin"

-- | User Undeleted Event
pattern UsersWatchEvent_Undelete :: UsersWatchEvent
pattern UsersWatchEvent_Undelete = UsersWatchEvent "undelete"

-- | User Updated Event
pattern UsersWatchEvent_Update :: UsersWatchEvent
pattern UsersWatchEvent_Update = UsersWatchEvent "update"

{-# COMPLETE
  UsersWatchEvent_Add,
  UsersWatchEvent_Delete',
  UsersWatchEvent_MakeAdmin,
  UsersWatchEvent_Undelete,
  UsersWatchEvent_Update,
  UsersWatchEvent
  #-}

-- | Column to use for sorting results
newtype UsersWatchOrderBy = UsersWatchOrderBy {fromUsersWatchOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Primary email of the user.
pattern UsersWatchOrderBy_Email :: UsersWatchOrderBy
pattern UsersWatchOrderBy_Email = UsersWatchOrderBy "email"

-- | User\'s family name.
pattern UsersWatchOrderBy_FamilyName :: UsersWatchOrderBy
pattern UsersWatchOrderBy_FamilyName = UsersWatchOrderBy "familyName"

-- | User\'s given name.
pattern UsersWatchOrderBy_GivenName :: UsersWatchOrderBy
pattern UsersWatchOrderBy_GivenName = UsersWatchOrderBy "givenName"

{-# COMPLETE
  UsersWatchOrderBy_Email,
  UsersWatchOrderBy_FamilyName,
  UsersWatchOrderBy_GivenName,
  UsersWatchOrderBy
  #-}

-- | What subset of fields to fetch for this user.
newtype UsersWatchProjection = UsersWatchProjection {fromUsersWatchProjection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not include any custom fields for the user.
pattern UsersWatchProjection_Basic :: UsersWatchProjection
pattern UsersWatchProjection_Basic = UsersWatchProjection "basic"

-- | Include custom fields from schemas mentioned in customFieldMask.
pattern UsersWatchProjection_Custom :: UsersWatchProjection
pattern UsersWatchProjection_Custom = UsersWatchProjection "custom"

-- | Include all fields associated with this user.
pattern UsersWatchProjection_Full :: UsersWatchProjection
pattern UsersWatchProjection_Full = UsersWatchProjection "full"

{-# COMPLETE
  UsersWatchProjection_Basic,
  UsersWatchProjection_Custom,
  UsersWatchProjection_Full,
  UsersWatchProjection
  #-}

-- | Whether to return results in ascending or descending order.
newtype UsersWatchSortOrder = UsersWatchSortOrder {fromUsersWatchSortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Ascending order.
pattern UsersWatchSortOrder_Ascending :: UsersWatchSortOrder
pattern UsersWatchSortOrder_Ascending = UsersWatchSortOrder "ASCENDING"

-- | Descending order.
pattern UsersWatchSortOrder_Descending :: UsersWatchSortOrder
pattern UsersWatchSortOrder_Descending = UsersWatchSortOrder "DESCENDING"

{-# COMPLETE
  UsersWatchSortOrder_Ascending,
  UsersWatchSortOrder_Descending,
  UsersWatchSortOrder
  #-}

-- | Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see </admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin Retrieve a user as a non-administrator>.
newtype UsersWatchViewType = UsersWatchViewType {fromUsersWatchViewType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Results include both administrator-only and domain-public fields.
pattern UsersWatchViewType_AdminView :: UsersWatchViewType
pattern UsersWatchViewType_AdminView = UsersWatchViewType "admin_view"

-- | Results only include fields for the user that are publicly visible to other users in the domain.
pattern UsersWatchViewType_DomainPublic :: UsersWatchViewType
pattern UsersWatchViewType_DomainPublic = UsersWatchViewType "domain_public"

{-# COMPLETE
  UsersWatchViewType_AdminView,
  UsersWatchViewType_DomainPublic,
  UsersWatchViewType
  #-}
