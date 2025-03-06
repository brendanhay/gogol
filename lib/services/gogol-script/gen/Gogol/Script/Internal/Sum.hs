{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Script.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Script.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * EntryPoint_EntryPointType
    EntryPoint_EntryPointType
      ( EntryPoint_EntryPointType_ENTRYPOINTTYPEUNSPECIFIED,
        EntryPoint_EntryPointType_WEBAPP,
        EntryPoint_EntryPointType_EXECUTIONAPI,
        EntryPoint_EntryPointType_ADDON,
        ..
      ),

    -- * File_Type
    File_Type
      ( File_Type_ENUMTYPEUNSPECIFIED,
        File_Type_SERVERJS,
        File_Type_Html,
        File_Type_Json,
        ..
      ),

    -- * GoogleAppsScriptTypeAddOnEntryPoint_AddOnType
    GoogleAppsScriptTypeAddOnEntryPoint_AddOnType
      ( GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_UNKNOWNADDONTYPE,
        GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_Gmail,
        GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_DATASTUDIO,
        ..
      ),

    -- * GoogleAppsScriptTypeExecutionApiConfig_Access
    GoogleAppsScriptTypeExecutionApiConfig_Access
      ( GoogleAppsScriptTypeExecutionApiConfig_Access_UNKNOWNACCESS,
        GoogleAppsScriptTypeExecutionApiConfig_Access_Myself,
        GoogleAppsScriptTypeExecutionApiConfig_Access_Domain,
        GoogleAppsScriptTypeExecutionApiConfig_Access_Anyone,
        GoogleAppsScriptTypeExecutionApiConfig_Access_ANYONEANONYMOUS,
        ..
      ),

    -- * GoogleAppsScriptTypeProcess_ProcessStatus
    GoogleAppsScriptTypeProcess_ProcessStatus
      ( GoogleAppsScriptTypeProcess_ProcessStatus_PROCESSSTATUSUNSPECIFIED,
        GoogleAppsScriptTypeProcess_ProcessStatus_Running,
        GoogleAppsScriptTypeProcess_ProcessStatus_Paused,
        GoogleAppsScriptTypeProcess_ProcessStatus_Completed,
        GoogleAppsScriptTypeProcess_ProcessStatus_Canceled,
        GoogleAppsScriptTypeProcess_ProcessStatus_Failed,
        GoogleAppsScriptTypeProcess_ProcessStatus_TIMEDOUT,
        GoogleAppsScriptTypeProcess_ProcessStatus_Unknown,
        GoogleAppsScriptTypeProcess_ProcessStatus_Delayed,
        GoogleAppsScriptTypeProcess_ProcessStatus_EXECUTIONDISABLED,
        ..
      ),

    -- * GoogleAppsScriptTypeProcess_ProcessType
    GoogleAppsScriptTypeProcess_ProcessType
      ( GoogleAppsScriptTypeProcess_ProcessType_PROCESSTYPEUNSPECIFIED,
        GoogleAppsScriptTypeProcess_ProcessType_ADDON,
        GoogleAppsScriptTypeProcess_ProcessType_EXECUTIONAPI,
        GoogleAppsScriptTypeProcess_ProcessType_TIMEDRIVEN,
        GoogleAppsScriptTypeProcess_ProcessType_Trigger,
        GoogleAppsScriptTypeProcess_ProcessType_Webapp,
        GoogleAppsScriptTypeProcess_ProcessType_Editor,
        GoogleAppsScriptTypeProcess_ProcessType_SIMPLETRIGGER,
        GoogleAppsScriptTypeProcess_ProcessType_Menu,
        GoogleAppsScriptTypeProcess_ProcessType_BATCHTASK,
        ..
      ),

    -- * GoogleAppsScriptTypeProcess_RuntimeVersion
    GoogleAppsScriptTypeProcess_RuntimeVersion
      ( GoogleAppsScriptTypeProcess_RuntimeVersion_RUNTIMEVERSIONUNSPECIFIED,
        GoogleAppsScriptTypeProcess_RuntimeVersion_DEPRECATED_ES5,
        GoogleAppsScriptTypeProcess_RuntimeVersion_V8,
        ..
      ),

    -- * GoogleAppsScriptTypeProcess_UserAccessLevel
    GoogleAppsScriptTypeProcess_UserAccessLevel
      ( GoogleAppsScriptTypeProcess_UserAccessLevel_USERACCESSLEVELUNSPECIFIED,
        GoogleAppsScriptTypeProcess_UserAccessLevel_None,
        GoogleAppsScriptTypeProcess_UserAccessLevel_Read',
        GoogleAppsScriptTypeProcess_UserAccessLevel_Write,
        GoogleAppsScriptTypeProcess_UserAccessLevel_Owner,
        ..
      ),

    -- * GoogleAppsScriptTypeWebAppConfig_Access
    GoogleAppsScriptTypeWebAppConfig_Access
      ( GoogleAppsScriptTypeWebAppConfig_Access_UNKNOWNACCESS,
        GoogleAppsScriptTypeWebAppConfig_Access_Myself,
        GoogleAppsScriptTypeWebAppConfig_Access_Domain,
        GoogleAppsScriptTypeWebAppConfig_Access_Anyone,
        GoogleAppsScriptTypeWebAppConfig_Access_ANYONEANONYMOUS,
        ..
      ),

    -- * GoogleAppsScriptTypeWebAppConfig_ExecuteAs
    GoogleAppsScriptTypeWebAppConfig_ExecuteAs
      ( GoogleAppsScriptTypeWebAppConfig_ExecuteAs_UNKNOWNEXECUTEAS,
        GoogleAppsScriptTypeWebAppConfig_ExecuteAs_USERACCESSING,
        GoogleAppsScriptTypeWebAppConfig_ExecuteAs_USERDEPLOYING,
        ..
      ),

    -- * Value_NullValue
    Value_NullValue
      ( Value_NullValue_NULLVALUE,
        ..
      ),

    -- * ProcessesListUserProcessFilterStatuses
    ProcessesListUserProcessFilterStatuses
      ( ProcessesListUserProcessFilterStatuses_PROCESSSTATUSUNSPECIFIED,
        ProcessesListUserProcessFilterStatuses_Running,
        ProcessesListUserProcessFilterStatuses_Paused,
        ProcessesListUserProcessFilterStatuses_Completed,
        ProcessesListUserProcessFilterStatuses_Canceled,
        ProcessesListUserProcessFilterStatuses_Failed,
        ProcessesListUserProcessFilterStatuses_TIMEDOUT,
        ProcessesListUserProcessFilterStatuses_Unknown,
        ProcessesListUserProcessFilterStatuses_Delayed,
        ProcessesListUserProcessFilterStatuses_EXECUTIONDISABLED,
        ..
      ),

    -- * ProcessesListUserProcessFilterTypes
    ProcessesListUserProcessFilterTypes
      ( ProcessesListUserProcessFilterTypes_PROCESSTYPEUNSPECIFIED,
        ProcessesListUserProcessFilterTypes_ADDON,
        ProcessesListUserProcessFilterTypes_EXECUTIONAPI,
        ProcessesListUserProcessFilterTypes_TIMEDRIVEN,
        ProcessesListUserProcessFilterTypes_Trigger,
        ProcessesListUserProcessFilterTypes_Webapp,
        ProcessesListUserProcessFilterTypes_Editor,
        ProcessesListUserProcessFilterTypes_SIMPLETRIGGER,
        ProcessesListUserProcessFilterTypes_Menu,
        ProcessesListUserProcessFilterTypes_BATCHTASK,
        ..
      ),

    -- * ProcessesListUserProcessFilterUserAccessLevels
    ProcessesListUserProcessFilterUserAccessLevels
      ( ProcessesListUserProcessFilterUserAccessLevels_USERACCESSLEVELUNSPECIFIED,
        ProcessesListUserProcessFilterUserAccessLevels_None,
        ProcessesListUserProcessFilterUserAccessLevels_Read',
        ProcessesListUserProcessFilterUserAccessLevels_Write,
        ProcessesListUserProcessFilterUserAccessLevels_Owner,
        ..
      ),

    -- * ProcessesListScriptProcessesScriptProcessFilterStatuses
    ProcessesListScriptProcessesScriptProcessFilterStatuses
      ( ProcessesListScriptProcessesScriptProcessFilterStatuses_PROCESSSTATUSUNSPECIFIED,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_Running,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_Paused,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_Completed,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_Canceled,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_Failed,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_TIMEDOUT,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_Unknown,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_Delayed,
        ProcessesListScriptProcessesScriptProcessFilterStatuses_EXECUTIONDISABLED,
        ..
      ),

    -- * ProcessesListScriptProcessesScriptProcessFilterTypes
    ProcessesListScriptProcessesScriptProcessFilterTypes
      ( ProcessesListScriptProcessesScriptProcessFilterTypes_PROCESSTYPEUNSPECIFIED,
        ProcessesListScriptProcessesScriptProcessFilterTypes_ADDON,
        ProcessesListScriptProcessesScriptProcessFilterTypes_EXECUTIONAPI,
        ProcessesListScriptProcessesScriptProcessFilterTypes_TIMEDRIVEN,
        ProcessesListScriptProcessesScriptProcessFilterTypes_Trigger,
        ProcessesListScriptProcessesScriptProcessFilterTypes_Webapp,
        ProcessesListScriptProcessesScriptProcessFilterTypes_Editor,
        ProcessesListScriptProcessesScriptProcessFilterTypes_SIMPLETRIGGER,
        ProcessesListScriptProcessesScriptProcessFilterTypes_Menu,
        ProcessesListScriptProcessesScriptProcessFilterTypes_BATCHTASK,
        ..
      ),

    -- * ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
    ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
      ( ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_USERACCESSLEVELUNSPECIFIED,
        ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_None,
        ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Read',
        ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Write,
        ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Owner,
        ..
      ),

    -- * ProjectsGetMetricsMetricsGranularity
    ProjectsGetMetricsMetricsGranularity
      ( ProjectsGetMetricsMetricsGranularity_UNSPECIFIEDGRANULARITY,
        ProjectsGetMetricsMetricsGranularity_Weekly,
        ProjectsGetMetricsMetricsGranularity_Daily,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

-- | The type of the entry point.
newtype EntryPoint_EntryPointType = EntryPoint_EntryPointType {fromEntryPoint_EntryPointType :: Core.Text}
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

-- | An unspecified entry point.
pattern EntryPoint_EntryPointType_ENTRYPOINTTYPEUNSPECIFIED :: EntryPoint_EntryPointType
pattern EntryPoint_EntryPointType_ENTRYPOINTTYPEUNSPECIFIED = EntryPoint_EntryPointType "ENTRY_POINT_TYPE_UNSPECIFIED"

-- | A web application entry point.
pattern EntryPoint_EntryPointType_WEBAPP :: EntryPoint_EntryPointType
pattern EntryPoint_EntryPointType_WEBAPP = EntryPoint_EntryPointType "WEB_APP"

-- | An API executable entry point.
pattern EntryPoint_EntryPointType_EXECUTIONAPI :: EntryPoint_EntryPointType
pattern EntryPoint_EntryPointType_EXECUTIONAPI = EntryPoint_EntryPointType "EXECUTION_API"

-- | An Add-On entry point.
pattern EntryPoint_EntryPointType_ADDON :: EntryPoint_EntryPointType
pattern EntryPoint_EntryPointType_ADDON = EntryPoint_EntryPointType "ADD_ON"

{-# COMPLETE
  EntryPoint_EntryPointType_ENTRYPOINTTYPEUNSPECIFIED,
  EntryPoint_EntryPointType_WEBAPP,
  EntryPoint_EntryPointType_EXECUTIONAPI,
  EntryPoint_EntryPointType_ADDON,
  EntryPoint_EntryPointType
  #-}

-- | The type of the file.
newtype File_Type = File_Type {fromFile_Type :: Core.Text}
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

-- | Undetermined file type; never actually used.
pattern File_Type_ENUMTYPEUNSPECIFIED :: File_Type
pattern File_Type_ENUMTYPEUNSPECIFIED = File_Type "ENUM_TYPE_UNSPECIFIED"

-- | An Apps Script server-side code file.
pattern File_Type_SERVERJS :: File_Type
pattern File_Type_SERVERJS = File_Type "SERVER_JS"

-- | A file containing client-side HTML.
pattern File_Type_Html :: File_Type
pattern File_Type_Html = File_Type "HTML"

-- | A file in JSON format. This type is only used for the script project\'s manifest. The manifest file content must match the structure of a valid </apps-script/concepts/manifests ScriptManifest>
pattern File_Type_Json :: File_Type
pattern File_Type_Json = File_Type "JSON"

{-# COMPLETE
  File_Type_ENUMTYPEUNSPECIFIED,
  File_Type_SERVERJS,
  File_Type_Html,
  File_Type_Json,
  File_Type
  #-}

-- | The add-on\'s required list of supported container types.
newtype GoogleAppsScriptTypeAddOnEntryPoint_AddOnType = GoogleAppsScriptTypeAddOnEntryPoint_AddOnType {fromGoogleAppsScriptTypeAddOnEntryPoint_AddOnType :: Core.Text}
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

-- | Default value, unknown add-on type.
pattern GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_UNKNOWNADDONTYPE :: GoogleAppsScriptTypeAddOnEntryPoint_AddOnType
pattern GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_UNKNOWNADDONTYPE = GoogleAppsScriptTypeAddOnEntryPoint_AddOnType "UNKNOWN_ADDON_TYPE"

-- | Add-on type for Gmail.
pattern GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_Gmail :: GoogleAppsScriptTypeAddOnEntryPoint_AddOnType
pattern GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_Gmail = GoogleAppsScriptTypeAddOnEntryPoint_AddOnType "GMAIL"

-- | Add-on type for Data Studio.
pattern GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_DATASTUDIO :: GoogleAppsScriptTypeAddOnEntryPoint_AddOnType
pattern GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_DATASTUDIO = GoogleAppsScriptTypeAddOnEntryPoint_AddOnType "DATA_STUDIO"

{-# COMPLETE
  GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_UNKNOWNADDONTYPE,
  GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_Gmail,
  GoogleAppsScriptTypeAddOnEntryPoint_AddOnType_DATASTUDIO,
  GoogleAppsScriptTypeAddOnEntryPoint_AddOnType
  #-}

-- | Who has permission to run the API executable.
newtype GoogleAppsScriptTypeExecutionApiConfig_Access = GoogleAppsScriptTypeExecutionApiConfig_Access {fromGoogleAppsScriptTypeExecutionApiConfig_Access :: Core.Text}
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

-- | Default value, should not be used.
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_UNKNOWNACCESS :: GoogleAppsScriptTypeExecutionApiConfig_Access
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_UNKNOWNACCESS = GoogleAppsScriptTypeExecutionApiConfig_Access "UNKNOWN_ACCESS"

-- | Only the user who deployed the web app or executable can access it. Note that this is not necessarily the owner of the script project.
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_Myself :: GoogleAppsScriptTypeExecutionApiConfig_Access
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_Myself = GoogleAppsScriptTypeExecutionApiConfig_Access "MYSELF"

-- | Only users in the same domain as the user who deployed the web app or executable can access it.
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_Domain :: GoogleAppsScriptTypeExecutionApiConfig_Access
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_Domain = GoogleAppsScriptTypeExecutionApiConfig_Access "DOMAIN"

-- | Any logged in user can access the web app or executable.
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_Anyone :: GoogleAppsScriptTypeExecutionApiConfig_Access
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_Anyone = GoogleAppsScriptTypeExecutionApiConfig_Access "ANYONE"

-- | Any user, logged in or not, can access the web app or executable.
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_ANYONEANONYMOUS :: GoogleAppsScriptTypeExecutionApiConfig_Access
pattern GoogleAppsScriptTypeExecutionApiConfig_Access_ANYONEANONYMOUS = GoogleAppsScriptTypeExecutionApiConfig_Access "ANYONE_ANONYMOUS"

{-# COMPLETE
  GoogleAppsScriptTypeExecutionApiConfig_Access_UNKNOWNACCESS,
  GoogleAppsScriptTypeExecutionApiConfig_Access_Myself,
  GoogleAppsScriptTypeExecutionApiConfig_Access_Domain,
  GoogleAppsScriptTypeExecutionApiConfig_Access_Anyone,
  GoogleAppsScriptTypeExecutionApiConfig_Access_ANYONEANONYMOUS,
  GoogleAppsScriptTypeExecutionApiConfig_Access
  #-}

-- | The executions status.
newtype GoogleAppsScriptTypeProcess_ProcessStatus = GoogleAppsScriptTypeProcess_ProcessStatus {fromGoogleAppsScriptTypeProcess_ProcessStatus :: Core.Text}
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

-- | Unspecified status.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_PROCESSSTATUSUNSPECIFIED :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_PROCESSSTATUSUNSPECIFIED = GoogleAppsScriptTypeProcess_ProcessStatus "PROCESS_STATUS_UNSPECIFIED"

-- | The process is currently running.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Running :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Running = GoogleAppsScriptTypeProcess_ProcessStatus "RUNNING"

-- | The process has paused.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Paused :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Paused = GoogleAppsScriptTypeProcess_ProcessStatus "PAUSED"

-- | The process has completed.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Completed :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Completed = GoogleAppsScriptTypeProcess_ProcessStatus "COMPLETED"

-- | The process was cancelled.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Canceled :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Canceled = GoogleAppsScriptTypeProcess_ProcessStatus "CANCELED"

-- | The process failed.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Failed :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Failed = GoogleAppsScriptTypeProcess_ProcessStatus "FAILED"

-- | The process timed out.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_TIMEDOUT :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_TIMEDOUT = GoogleAppsScriptTypeProcess_ProcessStatus "TIMED_OUT"

-- | Process status unknown.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Unknown :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Unknown = GoogleAppsScriptTypeProcess_ProcessStatus "UNKNOWN"

-- | The process is delayed, waiting for quota.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Delayed :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_Delayed = GoogleAppsScriptTypeProcess_ProcessStatus "DELAYED"

-- | AppsScript executions are disabled by Admin.
pattern GoogleAppsScriptTypeProcess_ProcessStatus_EXECUTIONDISABLED :: GoogleAppsScriptTypeProcess_ProcessStatus
pattern GoogleAppsScriptTypeProcess_ProcessStatus_EXECUTIONDISABLED = GoogleAppsScriptTypeProcess_ProcessStatus "EXECUTION_DISABLED"

{-# COMPLETE
  GoogleAppsScriptTypeProcess_ProcessStatus_PROCESSSTATUSUNSPECIFIED,
  GoogleAppsScriptTypeProcess_ProcessStatus_Running,
  GoogleAppsScriptTypeProcess_ProcessStatus_Paused,
  GoogleAppsScriptTypeProcess_ProcessStatus_Completed,
  GoogleAppsScriptTypeProcess_ProcessStatus_Canceled,
  GoogleAppsScriptTypeProcess_ProcessStatus_Failed,
  GoogleAppsScriptTypeProcess_ProcessStatus_TIMEDOUT,
  GoogleAppsScriptTypeProcess_ProcessStatus_Unknown,
  GoogleAppsScriptTypeProcess_ProcessStatus_Delayed,
  GoogleAppsScriptTypeProcess_ProcessStatus_EXECUTIONDISABLED,
  GoogleAppsScriptTypeProcess_ProcessStatus
  #-}

-- | The executions type.
newtype GoogleAppsScriptTypeProcess_ProcessType = GoogleAppsScriptTypeProcess_ProcessType {fromGoogleAppsScriptTypeProcess_ProcessType :: Core.Text}
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

-- | Unspecified type.
pattern GoogleAppsScriptTypeProcess_ProcessType_PROCESSTYPEUNSPECIFIED :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_PROCESSTYPEUNSPECIFIED = GoogleAppsScriptTypeProcess_ProcessType "PROCESS_TYPE_UNSPECIFIED"

-- | The process was started from an add-on entry point.
pattern GoogleAppsScriptTypeProcess_ProcessType_ADDON :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_ADDON = GoogleAppsScriptTypeProcess_ProcessType "ADD_ON"

-- | The process was started using the Apps Script API.
pattern GoogleAppsScriptTypeProcess_ProcessType_EXECUTIONAPI :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_EXECUTIONAPI = GoogleAppsScriptTypeProcess_ProcessType "EXECUTION_API"

-- | The process was started from a time-based trigger.
pattern GoogleAppsScriptTypeProcess_ProcessType_TIMEDRIVEN :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_TIMEDRIVEN = GoogleAppsScriptTypeProcess_ProcessType "TIME_DRIVEN"

-- | The process was started from an event-based trigger.
pattern GoogleAppsScriptTypeProcess_ProcessType_Trigger :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_Trigger = GoogleAppsScriptTypeProcess_ProcessType "TRIGGER"

-- | The process was started from a web app entry point.
pattern GoogleAppsScriptTypeProcess_ProcessType_Webapp :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_Webapp = GoogleAppsScriptTypeProcess_ProcessType "WEBAPP"

-- | The process was started using the Apps Script IDE.
pattern GoogleAppsScriptTypeProcess_ProcessType_Editor :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_Editor = GoogleAppsScriptTypeProcess_ProcessType "EDITOR"

-- | The process was started from a G Suite simple trigger.
pattern GoogleAppsScriptTypeProcess_ProcessType_SIMPLETRIGGER :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_SIMPLETRIGGER = GoogleAppsScriptTypeProcess_ProcessType "SIMPLE_TRIGGER"

-- | The process was started from a G Suite menu item.
pattern GoogleAppsScriptTypeProcess_ProcessType_Menu :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_Menu = GoogleAppsScriptTypeProcess_ProcessType "MENU"

-- | The process was started as a task in a batch job.
pattern GoogleAppsScriptTypeProcess_ProcessType_BATCHTASK :: GoogleAppsScriptTypeProcess_ProcessType
pattern GoogleAppsScriptTypeProcess_ProcessType_BATCHTASK = GoogleAppsScriptTypeProcess_ProcessType "BATCH_TASK"

{-# COMPLETE
  GoogleAppsScriptTypeProcess_ProcessType_PROCESSTYPEUNSPECIFIED,
  GoogleAppsScriptTypeProcess_ProcessType_ADDON,
  GoogleAppsScriptTypeProcess_ProcessType_EXECUTIONAPI,
  GoogleAppsScriptTypeProcess_ProcessType_TIMEDRIVEN,
  GoogleAppsScriptTypeProcess_ProcessType_Trigger,
  GoogleAppsScriptTypeProcess_ProcessType_Webapp,
  GoogleAppsScriptTypeProcess_ProcessType_Editor,
  GoogleAppsScriptTypeProcess_ProcessType_SIMPLETRIGGER,
  GoogleAppsScriptTypeProcess_ProcessType_Menu,
  GoogleAppsScriptTypeProcess_ProcessType_BATCHTASK,
  GoogleAppsScriptTypeProcess_ProcessType
  #-}

-- | Which version of maestro to use to execute the script.
newtype GoogleAppsScriptTypeProcess_RuntimeVersion = GoogleAppsScriptTypeProcess_RuntimeVersion {fromGoogleAppsScriptTypeProcess_RuntimeVersion :: Core.Text}
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

-- | Runtime version unset \/ unknown.
pattern GoogleAppsScriptTypeProcess_RuntimeVersion_RUNTIMEVERSIONUNSPECIFIED :: GoogleAppsScriptTypeProcess_RuntimeVersion
pattern GoogleAppsScriptTypeProcess_RuntimeVersion_RUNTIMEVERSIONUNSPECIFIED = GoogleAppsScriptTypeProcess_RuntimeVersion "RUNTIME_VERSION_UNSPECIFIED"

-- | Legacy rhino version of the Apps script runtime
pattern GoogleAppsScriptTypeProcess_RuntimeVersion_DEPRECATED_ES5 :: GoogleAppsScriptTypeProcess_RuntimeVersion
pattern GoogleAppsScriptTypeProcess_RuntimeVersion_DEPRECATED_ES5 = GoogleAppsScriptTypeProcess_RuntimeVersion "DEPRECATED_ES5"

-- | Current default V8 version of the apps script runtime.
pattern GoogleAppsScriptTypeProcess_RuntimeVersion_V8 :: GoogleAppsScriptTypeProcess_RuntimeVersion
pattern GoogleAppsScriptTypeProcess_RuntimeVersion_V8 = GoogleAppsScriptTypeProcess_RuntimeVersion "V8"

{-# COMPLETE
  GoogleAppsScriptTypeProcess_RuntimeVersion_RUNTIMEVERSIONUNSPECIFIED,
  GoogleAppsScriptTypeProcess_RuntimeVersion_DEPRECATED_ES5,
  GoogleAppsScriptTypeProcess_RuntimeVersion_V8,
  GoogleAppsScriptTypeProcess_RuntimeVersion
  #-}

-- | The executing users access level to the script.
newtype GoogleAppsScriptTypeProcess_UserAccessLevel = GoogleAppsScriptTypeProcess_UserAccessLevel {fromGoogleAppsScriptTypeProcess_UserAccessLevel :: Core.Text}
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

-- | User access level unspecified
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_USERACCESSLEVELUNSPECIFIED :: GoogleAppsScriptTypeProcess_UserAccessLevel
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_USERACCESSLEVELUNSPECIFIED = GoogleAppsScriptTypeProcess_UserAccessLevel "USER_ACCESS_LEVEL_UNSPECIFIED"

-- | The user has no access.
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_None :: GoogleAppsScriptTypeProcess_UserAccessLevel
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_None = GoogleAppsScriptTypeProcess_UserAccessLevel "NONE"

-- | The user has read-only access.
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_Read' :: GoogleAppsScriptTypeProcess_UserAccessLevel
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_Read' = GoogleAppsScriptTypeProcess_UserAccessLevel "READ"

-- | The user has write access.
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_Write :: GoogleAppsScriptTypeProcess_UserAccessLevel
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_Write = GoogleAppsScriptTypeProcess_UserAccessLevel "WRITE"

-- | The user is an owner.
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_Owner :: GoogleAppsScriptTypeProcess_UserAccessLevel
pattern GoogleAppsScriptTypeProcess_UserAccessLevel_Owner = GoogleAppsScriptTypeProcess_UserAccessLevel "OWNER"

{-# COMPLETE
  GoogleAppsScriptTypeProcess_UserAccessLevel_USERACCESSLEVELUNSPECIFIED,
  GoogleAppsScriptTypeProcess_UserAccessLevel_None,
  GoogleAppsScriptTypeProcess_UserAccessLevel_Read',
  GoogleAppsScriptTypeProcess_UserAccessLevel_Write,
  GoogleAppsScriptTypeProcess_UserAccessLevel_Owner,
  GoogleAppsScriptTypeProcess_UserAccessLevel
  #-}

-- | Who has permission to run the web app.
newtype GoogleAppsScriptTypeWebAppConfig_Access = GoogleAppsScriptTypeWebAppConfig_Access {fromGoogleAppsScriptTypeWebAppConfig_Access :: Core.Text}
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

-- | Default value, should not be used.
pattern GoogleAppsScriptTypeWebAppConfig_Access_UNKNOWNACCESS :: GoogleAppsScriptTypeWebAppConfig_Access
pattern GoogleAppsScriptTypeWebAppConfig_Access_UNKNOWNACCESS = GoogleAppsScriptTypeWebAppConfig_Access "UNKNOWN_ACCESS"

-- | Only the user who deployed the web app or executable can access it. Note that this is not necessarily the owner of the script project.
pattern GoogleAppsScriptTypeWebAppConfig_Access_Myself :: GoogleAppsScriptTypeWebAppConfig_Access
pattern GoogleAppsScriptTypeWebAppConfig_Access_Myself = GoogleAppsScriptTypeWebAppConfig_Access "MYSELF"

-- | Only users in the same domain as the user who deployed the web app or executable can access it.
pattern GoogleAppsScriptTypeWebAppConfig_Access_Domain :: GoogleAppsScriptTypeWebAppConfig_Access
pattern GoogleAppsScriptTypeWebAppConfig_Access_Domain = GoogleAppsScriptTypeWebAppConfig_Access "DOMAIN"

-- | Any logged in user can access the web app or executable.
pattern GoogleAppsScriptTypeWebAppConfig_Access_Anyone :: GoogleAppsScriptTypeWebAppConfig_Access
pattern GoogleAppsScriptTypeWebAppConfig_Access_Anyone = GoogleAppsScriptTypeWebAppConfig_Access "ANYONE"

-- | Any user, logged in or not, can access the web app or executable.
pattern GoogleAppsScriptTypeWebAppConfig_Access_ANYONEANONYMOUS :: GoogleAppsScriptTypeWebAppConfig_Access
pattern GoogleAppsScriptTypeWebAppConfig_Access_ANYONEANONYMOUS = GoogleAppsScriptTypeWebAppConfig_Access "ANYONE_ANONYMOUS"

{-# COMPLETE
  GoogleAppsScriptTypeWebAppConfig_Access_UNKNOWNACCESS,
  GoogleAppsScriptTypeWebAppConfig_Access_Myself,
  GoogleAppsScriptTypeWebAppConfig_Access_Domain,
  GoogleAppsScriptTypeWebAppConfig_Access_Anyone,
  GoogleAppsScriptTypeWebAppConfig_Access_ANYONEANONYMOUS,
  GoogleAppsScriptTypeWebAppConfig_Access
  #-}

-- | Who to execute the web app as.
newtype GoogleAppsScriptTypeWebAppConfig_ExecuteAs = GoogleAppsScriptTypeWebAppConfig_ExecuteAs {fromGoogleAppsScriptTypeWebAppConfig_ExecuteAs :: Core.Text}
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

-- | Default value, should not be used.
pattern GoogleAppsScriptTypeWebAppConfig_ExecuteAs_UNKNOWNEXECUTEAS :: GoogleAppsScriptTypeWebAppConfig_ExecuteAs
pattern GoogleAppsScriptTypeWebAppConfig_ExecuteAs_UNKNOWNEXECUTEAS = GoogleAppsScriptTypeWebAppConfig_ExecuteAs "UNKNOWN_EXECUTE_AS"

-- | The script runs as the user accessing the web app.
pattern GoogleAppsScriptTypeWebAppConfig_ExecuteAs_USERACCESSING :: GoogleAppsScriptTypeWebAppConfig_ExecuteAs
pattern GoogleAppsScriptTypeWebAppConfig_ExecuteAs_USERACCESSING = GoogleAppsScriptTypeWebAppConfig_ExecuteAs "USER_ACCESSING"

-- | The script runs as the user who deployed the web app. Note that this is not necessarily the owner of the script project.
pattern GoogleAppsScriptTypeWebAppConfig_ExecuteAs_USERDEPLOYING :: GoogleAppsScriptTypeWebAppConfig_ExecuteAs
pattern GoogleAppsScriptTypeWebAppConfig_ExecuteAs_USERDEPLOYING = GoogleAppsScriptTypeWebAppConfig_ExecuteAs "USER_DEPLOYING"

{-# COMPLETE
  GoogleAppsScriptTypeWebAppConfig_ExecuteAs_UNKNOWNEXECUTEAS,
  GoogleAppsScriptTypeWebAppConfig_ExecuteAs_USERACCESSING,
  GoogleAppsScriptTypeWebAppConfig_ExecuteAs_USERDEPLOYING,
  GoogleAppsScriptTypeWebAppConfig_ExecuteAs
  #-}

-- | Represents a null value.
newtype Value_NullValue = Value_NullValue {fromValue_NullValue :: Core.Text}
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

-- | Null value.
pattern Value_NullValue_NULLVALUE :: Value_NullValue
pattern Value_NullValue_NULLVALUE = Value_NullValue "NULL_VALUE"

{-# COMPLETE
  Value_NullValue_NULLVALUE,
  Value_NullValue
  #-}

-- | Optional field used to limit returned processes to those having one of the specified process statuses.
newtype ProcessesListUserProcessFilterStatuses = ProcessesListUserProcessFilterStatuses {fromProcessesListUserProcessFilterStatuses :: Core.Text}
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

-- | Unspecified status.
pattern ProcessesListUserProcessFilterStatuses_PROCESSSTATUSUNSPECIFIED :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_PROCESSSTATUSUNSPECIFIED = ProcessesListUserProcessFilterStatuses "PROCESS_STATUS_UNSPECIFIED"

-- | The process is currently running.
pattern ProcessesListUserProcessFilterStatuses_Running :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_Running = ProcessesListUserProcessFilterStatuses "RUNNING"

-- | The process has paused.
pattern ProcessesListUserProcessFilterStatuses_Paused :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_Paused = ProcessesListUserProcessFilterStatuses "PAUSED"

-- | The process has completed.
pattern ProcessesListUserProcessFilterStatuses_Completed :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_Completed = ProcessesListUserProcessFilterStatuses "COMPLETED"

-- | The process was cancelled.
pattern ProcessesListUserProcessFilterStatuses_Canceled :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_Canceled = ProcessesListUserProcessFilterStatuses "CANCELED"

-- | The process failed.
pattern ProcessesListUserProcessFilterStatuses_Failed :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_Failed = ProcessesListUserProcessFilterStatuses "FAILED"

-- | The process timed out.
pattern ProcessesListUserProcessFilterStatuses_TIMEDOUT :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_TIMEDOUT = ProcessesListUserProcessFilterStatuses "TIMED_OUT"

-- | Process status unknown.
pattern ProcessesListUserProcessFilterStatuses_Unknown :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_Unknown = ProcessesListUserProcessFilterStatuses "UNKNOWN"

-- | The process is delayed, waiting for quota.
pattern ProcessesListUserProcessFilterStatuses_Delayed :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_Delayed = ProcessesListUserProcessFilterStatuses "DELAYED"

-- | AppsScript executions are disabled by Admin.
pattern ProcessesListUserProcessFilterStatuses_EXECUTIONDISABLED :: ProcessesListUserProcessFilterStatuses
pattern ProcessesListUserProcessFilterStatuses_EXECUTIONDISABLED = ProcessesListUserProcessFilterStatuses "EXECUTION_DISABLED"

{-# COMPLETE
  ProcessesListUserProcessFilterStatuses_PROCESSSTATUSUNSPECIFIED,
  ProcessesListUserProcessFilterStatuses_Running,
  ProcessesListUserProcessFilterStatuses_Paused,
  ProcessesListUserProcessFilterStatuses_Completed,
  ProcessesListUserProcessFilterStatuses_Canceled,
  ProcessesListUserProcessFilterStatuses_Failed,
  ProcessesListUserProcessFilterStatuses_TIMEDOUT,
  ProcessesListUserProcessFilterStatuses_Unknown,
  ProcessesListUserProcessFilterStatuses_Delayed,
  ProcessesListUserProcessFilterStatuses_EXECUTIONDISABLED,
  ProcessesListUserProcessFilterStatuses
  #-}

-- | Optional field used to limit returned processes to those having one of the specified process types.
newtype ProcessesListUserProcessFilterTypes = ProcessesListUserProcessFilterTypes {fromProcessesListUserProcessFilterTypes :: Core.Text}
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

-- | Unspecified type.
pattern ProcessesListUserProcessFilterTypes_PROCESSTYPEUNSPECIFIED :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_PROCESSTYPEUNSPECIFIED = ProcessesListUserProcessFilterTypes "PROCESS_TYPE_UNSPECIFIED"

-- | The process was started from an add-on entry point.
pattern ProcessesListUserProcessFilterTypes_ADDON :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_ADDON = ProcessesListUserProcessFilterTypes "ADD_ON"

-- | The process was started using the Apps Script API.
pattern ProcessesListUserProcessFilterTypes_EXECUTIONAPI :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_EXECUTIONAPI = ProcessesListUserProcessFilterTypes "EXECUTION_API"

-- | The process was started from a time-based trigger.
pattern ProcessesListUserProcessFilterTypes_TIMEDRIVEN :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_TIMEDRIVEN = ProcessesListUserProcessFilterTypes "TIME_DRIVEN"

-- | The process was started from an event-based trigger.
pattern ProcessesListUserProcessFilterTypes_Trigger :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_Trigger = ProcessesListUserProcessFilterTypes "TRIGGER"

-- | The process was started from a web app entry point.
pattern ProcessesListUserProcessFilterTypes_Webapp :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_Webapp = ProcessesListUserProcessFilterTypes "WEBAPP"

-- | The process was started using the Apps Script IDE.
pattern ProcessesListUserProcessFilterTypes_Editor :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_Editor = ProcessesListUserProcessFilterTypes "EDITOR"

-- | The process was started from a G Suite simple trigger.
pattern ProcessesListUserProcessFilterTypes_SIMPLETRIGGER :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_SIMPLETRIGGER = ProcessesListUserProcessFilterTypes "SIMPLE_TRIGGER"

-- | The process was started from a G Suite menu item.
pattern ProcessesListUserProcessFilterTypes_Menu :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_Menu = ProcessesListUserProcessFilterTypes "MENU"

-- | The process was started as a task in a batch job.
pattern ProcessesListUserProcessFilterTypes_BATCHTASK :: ProcessesListUserProcessFilterTypes
pattern ProcessesListUserProcessFilterTypes_BATCHTASK = ProcessesListUserProcessFilterTypes "BATCH_TASK"

{-# COMPLETE
  ProcessesListUserProcessFilterTypes_PROCESSTYPEUNSPECIFIED,
  ProcessesListUserProcessFilterTypes_ADDON,
  ProcessesListUserProcessFilterTypes_EXECUTIONAPI,
  ProcessesListUserProcessFilterTypes_TIMEDRIVEN,
  ProcessesListUserProcessFilterTypes_Trigger,
  ProcessesListUserProcessFilterTypes_Webapp,
  ProcessesListUserProcessFilterTypes_Editor,
  ProcessesListUserProcessFilterTypes_SIMPLETRIGGER,
  ProcessesListUserProcessFilterTypes_Menu,
  ProcessesListUserProcessFilterTypes_BATCHTASK,
  ProcessesListUserProcessFilterTypes
  #-}

-- | Optional field used to limit returned processes to those having one of the specified user access levels.
newtype ProcessesListUserProcessFilterUserAccessLevels = ProcessesListUserProcessFilterUserAccessLevels {fromProcessesListUserProcessFilterUserAccessLevels :: Core.Text}
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

-- | User access level unspecified
pattern ProcessesListUserProcessFilterUserAccessLevels_USERACCESSLEVELUNSPECIFIED :: ProcessesListUserProcessFilterUserAccessLevels
pattern ProcessesListUserProcessFilterUserAccessLevels_USERACCESSLEVELUNSPECIFIED = ProcessesListUserProcessFilterUserAccessLevels "USER_ACCESS_LEVEL_UNSPECIFIED"

-- | The user has no access.
pattern ProcessesListUserProcessFilterUserAccessLevels_None :: ProcessesListUserProcessFilterUserAccessLevels
pattern ProcessesListUserProcessFilterUserAccessLevels_None = ProcessesListUserProcessFilterUserAccessLevels "NONE"

-- | The user has read-only access.
pattern ProcessesListUserProcessFilterUserAccessLevels_Read' :: ProcessesListUserProcessFilterUserAccessLevels
pattern ProcessesListUserProcessFilterUserAccessLevels_Read' = ProcessesListUserProcessFilterUserAccessLevels "READ"

-- | The user has write access.
pattern ProcessesListUserProcessFilterUserAccessLevels_Write :: ProcessesListUserProcessFilterUserAccessLevels
pattern ProcessesListUserProcessFilterUserAccessLevels_Write = ProcessesListUserProcessFilterUserAccessLevels "WRITE"

-- | The user is an owner.
pattern ProcessesListUserProcessFilterUserAccessLevels_Owner :: ProcessesListUserProcessFilterUserAccessLevels
pattern ProcessesListUserProcessFilterUserAccessLevels_Owner = ProcessesListUserProcessFilterUserAccessLevels "OWNER"

{-# COMPLETE
  ProcessesListUserProcessFilterUserAccessLevels_USERACCESSLEVELUNSPECIFIED,
  ProcessesListUserProcessFilterUserAccessLevels_None,
  ProcessesListUserProcessFilterUserAccessLevels_Read',
  ProcessesListUserProcessFilterUserAccessLevels_Write,
  ProcessesListUserProcessFilterUserAccessLevels_Owner,
  ProcessesListUserProcessFilterUserAccessLevels
  #-}

-- | Optional field used to limit returned processes to those having one of the specified process statuses.
newtype ProcessesListScriptProcessesScriptProcessFilterStatuses = ProcessesListScriptProcessesScriptProcessFilterStatuses {fromProcessesListScriptProcessesScriptProcessFilterStatuses :: Core.Text}
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

-- | Unspecified status.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_PROCESSSTATUSUNSPECIFIED :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_PROCESSSTATUSUNSPECIFIED = ProcessesListScriptProcessesScriptProcessFilterStatuses "PROCESS_STATUS_UNSPECIFIED"

-- | The process is currently running.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Running :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Running = ProcessesListScriptProcessesScriptProcessFilterStatuses "RUNNING"

-- | The process has paused.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Paused :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Paused = ProcessesListScriptProcessesScriptProcessFilterStatuses "PAUSED"

-- | The process has completed.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Completed :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Completed = ProcessesListScriptProcessesScriptProcessFilterStatuses "COMPLETED"

-- | The process was cancelled.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Canceled :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Canceled = ProcessesListScriptProcessesScriptProcessFilterStatuses "CANCELED"

-- | The process failed.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Failed :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Failed = ProcessesListScriptProcessesScriptProcessFilterStatuses "FAILED"

-- | The process timed out.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_TIMEDOUT :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_TIMEDOUT = ProcessesListScriptProcessesScriptProcessFilterStatuses "TIMED_OUT"

-- | Process status unknown.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Unknown :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Unknown = ProcessesListScriptProcessesScriptProcessFilterStatuses "UNKNOWN"

-- | The process is delayed, waiting for quota.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Delayed :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_Delayed = ProcessesListScriptProcessesScriptProcessFilterStatuses "DELAYED"

-- | AppsScript executions are disabled by Admin.
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_EXECUTIONDISABLED :: ProcessesListScriptProcessesScriptProcessFilterStatuses
pattern ProcessesListScriptProcessesScriptProcessFilterStatuses_EXECUTIONDISABLED = ProcessesListScriptProcessesScriptProcessFilterStatuses "EXECUTION_DISABLED"

{-# COMPLETE
  ProcessesListScriptProcessesScriptProcessFilterStatuses_PROCESSSTATUSUNSPECIFIED,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_Running,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_Paused,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_Completed,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_Canceled,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_Failed,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_TIMEDOUT,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_Unknown,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_Delayed,
  ProcessesListScriptProcessesScriptProcessFilterStatuses_EXECUTIONDISABLED,
  ProcessesListScriptProcessesScriptProcessFilterStatuses
  #-}

-- | Optional field used to limit returned processes to those having one of the specified process types.
newtype ProcessesListScriptProcessesScriptProcessFilterTypes = ProcessesListScriptProcessesScriptProcessFilterTypes {fromProcessesListScriptProcessesScriptProcessFilterTypes :: Core.Text}
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

-- | Unspecified type.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_PROCESSTYPEUNSPECIFIED :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_PROCESSTYPEUNSPECIFIED = ProcessesListScriptProcessesScriptProcessFilterTypes "PROCESS_TYPE_UNSPECIFIED"

-- | The process was started from an add-on entry point.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_ADDON :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_ADDON = ProcessesListScriptProcessesScriptProcessFilterTypes "ADD_ON"

-- | The process was started using the Apps Script API.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_EXECUTIONAPI :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_EXECUTIONAPI = ProcessesListScriptProcessesScriptProcessFilterTypes "EXECUTION_API"

-- | The process was started from a time-based trigger.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_TIMEDRIVEN :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_TIMEDRIVEN = ProcessesListScriptProcessesScriptProcessFilterTypes "TIME_DRIVEN"

-- | The process was started from an event-based trigger.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_Trigger :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_Trigger = ProcessesListScriptProcessesScriptProcessFilterTypes "TRIGGER"

-- | The process was started from a web app entry point.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_Webapp :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_Webapp = ProcessesListScriptProcessesScriptProcessFilterTypes "WEBAPP"

-- | The process was started using the Apps Script IDE.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_Editor :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_Editor = ProcessesListScriptProcessesScriptProcessFilterTypes "EDITOR"

-- | The process was started from a G Suite simple trigger.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_SIMPLETRIGGER :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_SIMPLETRIGGER = ProcessesListScriptProcessesScriptProcessFilterTypes "SIMPLE_TRIGGER"

-- | The process was started from a G Suite menu item.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_Menu :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_Menu = ProcessesListScriptProcessesScriptProcessFilterTypes "MENU"

-- | The process was started as a task in a batch job.
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_BATCHTASK :: ProcessesListScriptProcessesScriptProcessFilterTypes
pattern ProcessesListScriptProcessesScriptProcessFilterTypes_BATCHTASK = ProcessesListScriptProcessesScriptProcessFilterTypes "BATCH_TASK"

{-# COMPLETE
  ProcessesListScriptProcessesScriptProcessFilterTypes_PROCESSTYPEUNSPECIFIED,
  ProcessesListScriptProcessesScriptProcessFilterTypes_ADDON,
  ProcessesListScriptProcessesScriptProcessFilterTypes_EXECUTIONAPI,
  ProcessesListScriptProcessesScriptProcessFilterTypes_TIMEDRIVEN,
  ProcessesListScriptProcessesScriptProcessFilterTypes_Trigger,
  ProcessesListScriptProcessesScriptProcessFilterTypes_Webapp,
  ProcessesListScriptProcessesScriptProcessFilterTypes_Editor,
  ProcessesListScriptProcessesScriptProcessFilterTypes_SIMPLETRIGGER,
  ProcessesListScriptProcessesScriptProcessFilterTypes_Menu,
  ProcessesListScriptProcessesScriptProcessFilterTypes_BATCHTASK,
  ProcessesListScriptProcessesScriptProcessFilterTypes
  #-}

-- | Optional field used to limit returned processes to those having one of the specified user access levels.
newtype ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels = ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels {fromProcessesListScriptProcessesScriptProcessFilterUserAccessLevels :: Core.Text}
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

-- | User access level unspecified
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_USERACCESSLEVELUNSPECIFIED :: ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_USERACCESSLEVELUNSPECIFIED = ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels "USER_ACCESS_LEVEL_UNSPECIFIED"

-- | The user has no access.
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_None :: ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_None = ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels "NONE"

-- | The user has read-only access.
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Read' :: ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Read' = ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels "READ"

-- | The user has write access.
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Write :: ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Write = ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels "WRITE"

-- | The user is an owner.
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Owner :: ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
pattern ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Owner = ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels "OWNER"

{-# COMPLETE
  ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_USERACCESSLEVELUNSPECIFIED,
  ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_None,
  ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Read',
  ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Write,
  ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels_Owner,
  ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
  #-}

-- | Required field indicating what granularity of metrics are returned.
newtype ProjectsGetMetricsMetricsGranularity = ProjectsGetMetricsMetricsGranularity {fromProjectsGetMetricsMetricsGranularity :: Core.Text}
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

-- | Default metric granularity used to query no metrics.
pattern ProjectsGetMetricsMetricsGranularity_UNSPECIFIEDGRANULARITY :: ProjectsGetMetricsMetricsGranularity
pattern ProjectsGetMetricsMetricsGranularity_UNSPECIFIEDGRANULARITY = ProjectsGetMetricsMetricsGranularity "UNSPECIFIED_GRANULARITY"

-- | Represents weekly metrics.
pattern ProjectsGetMetricsMetricsGranularity_Weekly :: ProjectsGetMetricsMetricsGranularity
pattern ProjectsGetMetricsMetricsGranularity_Weekly = ProjectsGetMetricsMetricsGranularity "WEEKLY"

-- | Represents daily metrics over a period of 7 days.
pattern ProjectsGetMetricsMetricsGranularity_Daily :: ProjectsGetMetricsMetricsGranularity
pattern ProjectsGetMetricsMetricsGranularity_Daily = ProjectsGetMetricsMetricsGranularity "DAILY"

{-# COMPLETE
  ProjectsGetMetricsMetricsGranularity_UNSPECIFIEDGRANULARITY,
  ProjectsGetMetricsMetricsGranularity_Weekly,
  ProjectsGetMetricsMetricsGranularity_Daily,
  ProjectsGetMetricsMetricsGranularity
  #-}
