{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Script.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Script.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The executions type.
data GoogleAppsScriptTypeProcessProcessType
    = ProcessTypeUnspecified
      -- ^ @PROCESS_TYPE_UNSPECIFIED@
      -- Unspecified type.
    | AddOn
      -- ^ @ADD_ON@
      -- The process was started from an add-on entry point.
    | ExecutionAPI
      -- ^ @EXECUTION_API@
      -- The process was started using the Apps Script API.
    | TimeDriven
      -- ^ @TIME_DRIVEN@
      -- The process was started from a time-based trigger.
    | Trigger
      -- ^ @TRIGGER@
      -- The process was started from an event-based trigger.
    | WebApp
      -- ^ @WEBAPP@
      -- The process was started from a web app entry point.
    | Editor
      -- ^ @EDITOR@
      -- The process was started using the Apps Script IDE.
    | SimpleTrigger
      -- ^ @SIMPLE_TRIGGER@
      -- The process was started from a G Suite simple trigger.
    | Menu
      -- ^ @MENU@
      -- The process was started from a G Suite menu item.
    | BatchTask
      -- ^ @BATCH_TASK@
      -- The process was started as a task in a batch job.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsScriptTypeProcessProcessType

instance FromHttpApiData GoogleAppsScriptTypeProcessProcessType where
    parseQueryParam = \case
        "PROCESS_TYPE_UNSPECIFIED" -> Right ProcessTypeUnspecified
        "ADD_ON" -> Right AddOn
        "EXECUTION_API" -> Right ExecutionAPI
        "TIME_DRIVEN" -> Right TimeDriven
        "TRIGGER" -> Right Trigger
        "WEBAPP" -> Right WebApp
        "EDITOR" -> Right Editor
        "SIMPLE_TRIGGER" -> Right SimpleTrigger
        "MENU" -> Right Menu
        "BATCH_TASK" -> Right BatchTask
        x -> Left ("Unable to parse GoogleAppsScriptTypeProcessProcessType from: " <> x)

instance ToHttpApiData GoogleAppsScriptTypeProcessProcessType where
    toQueryParam = \case
        ProcessTypeUnspecified -> "PROCESS_TYPE_UNSPECIFIED"
        AddOn -> "ADD_ON"
        ExecutionAPI -> "EXECUTION_API"
        TimeDriven -> "TIME_DRIVEN"
        Trigger -> "TRIGGER"
        WebApp -> "WEBAPP"
        Editor -> "EDITOR"
        SimpleTrigger -> "SIMPLE_TRIGGER"
        Menu -> "MENU"
        BatchTask -> "BATCH_TASK"

instance FromJSON GoogleAppsScriptTypeProcessProcessType where
    parseJSON = parseJSONText "GoogleAppsScriptTypeProcessProcessType"

instance ToJSON GoogleAppsScriptTypeProcessProcessType where
    toJSON = toJSONText

-- | The executing users access level to the script.
data GoogleAppsScriptTypeProcessUserAccessLevel
    = UserAccessLevelUnspecified
      -- ^ @USER_ACCESS_LEVEL_UNSPECIFIED@
      -- User access level unspecified
    | None
      -- ^ @NONE@
      -- The user has no access.
    | Read'
      -- ^ @READ@
      -- The user has read-only access.
    | Write
      -- ^ @WRITE@
      -- The user has write access.
    | Owner
      -- ^ @OWNER@
      -- The user is an owner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsScriptTypeProcessUserAccessLevel

instance FromHttpApiData GoogleAppsScriptTypeProcessUserAccessLevel where
    parseQueryParam = \case
        "USER_ACCESS_LEVEL_UNSPECIFIED" -> Right UserAccessLevelUnspecified
        "NONE" -> Right None
        "READ" -> Right Read'
        "WRITE" -> Right Write
        "OWNER" -> Right Owner
        x -> Left ("Unable to parse GoogleAppsScriptTypeProcessUserAccessLevel from: " <> x)

instance ToHttpApiData GoogleAppsScriptTypeProcessUserAccessLevel where
    toQueryParam = \case
        UserAccessLevelUnspecified -> "USER_ACCESS_LEVEL_UNSPECIFIED"
        None -> "NONE"
        Read' -> "READ"
        Write -> "WRITE"
        Owner -> "OWNER"

instance FromJSON GoogleAppsScriptTypeProcessUserAccessLevel where
    parseJSON = parseJSONText "GoogleAppsScriptTypeProcessUserAccessLevel"

instance ToJSON GoogleAppsScriptTypeProcessUserAccessLevel where
    toJSON = toJSONText

-- | Optional field used to limit returned processes to those having one of
-- the specified process types.
data ProcessesListScriptProcessesScriptProcessFilterTypes
    = PLSPSPFTProcessTypeUnspecified
      -- ^ @PROCESS_TYPE_UNSPECIFIED@
      -- Unspecified type.
    | PLSPSPFTAddOn
      -- ^ @ADD_ON@
      -- The process was started from an add-on entry point.
    | PLSPSPFTExecutionAPI
      -- ^ @EXECUTION_API@
      -- The process was started using the Apps Script API.
    | PLSPSPFTTimeDriven
      -- ^ @TIME_DRIVEN@
      -- The process was started from a time-based trigger.
    | PLSPSPFTTrigger
      -- ^ @TRIGGER@
      -- The process was started from an event-based trigger.
    | PLSPSPFTWebApp
      -- ^ @WEBAPP@
      -- The process was started from a web app entry point.
    | PLSPSPFTEditor
      -- ^ @EDITOR@
      -- The process was started using the Apps Script IDE.
    | PLSPSPFTSimpleTrigger
      -- ^ @SIMPLE_TRIGGER@
      -- The process was started from a G Suite simple trigger.
    | PLSPSPFTMenu
      -- ^ @MENU@
      -- The process was started from a G Suite menu item.
    | PLSPSPFTBatchTask
      -- ^ @BATCH_TASK@
      -- The process was started as a task in a batch job.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProcessesListScriptProcessesScriptProcessFilterTypes

instance FromHttpApiData ProcessesListScriptProcessesScriptProcessFilterTypes where
    parseQueryParam = \case
        "PROCESS_TYPE_UNSPECIFIED" -> Right PLSPSPFTProcessTypeUnspecified
        "ADD_ON" -> Right PLSPSPFTAddOn
        "EXECUTION_API" -> Right PLSPSPFTExecutionAPI
        "TIME_DRIVEN" -> Right PLSPSPFTTimeDriven
        "TRIGGER" -> Right PLSPSPFTTrigger
        "WEBAPP" -> Right PLSPSPFTWebApp
        "EDITOR" -> Right PLSPSPFTEditor
        "SIMPLE_TRIGGER" -> Right PLSPSPFTSimpleTrigger
        "MENU" -> Right PLSPSPFTMenu
        "BATCH_TASK" -> Right PLSPSPFTBatchTask
        x -> Left ("Unable to parse ProcessesListScriptProcessesScriptProcessFilterTypes from: " <> x)

instance ToHttpApiData ProcessesListScriptProcessesScriptProcessFilterTypes where
    toQueryParam = \case
        PLSPSPFTProcessTypeUnspecified -> "PROCESS_TYPE_UNSPECIFIED"
        PLSPSPFTAddOn -> "ADD_ON"
        PLSPSPFTExecutionAPI -> "EXECUTION_API"
        PLSPSPFTTimeDriven -> "TIME_DRIVEN"
        PLSPSPFTTrigger -> "TRIGGER"
        PLSPSPFTWebApp -> "WEBAPP"
        PLSPSPFTEditor -> "EDITOR"
        PLSPSPFTSimpleTrigger -> "SIMPLE_TRIGGER"
        PLSPSPFTMenu -> "MENU"
        PLSPSPFTBatchTask -> "BATCH_TASK"

instance FromJSON ProcessesListScriptProcessesScriptProcessFilterTypes where
    parseJSON = parseJSONText "ProcessesListScriptProcessesScriptProcessFilterTypes"

instance ToJSON ProcessesListScriptProcessesScriptProcessFilterTypes where
    toJSON = toJSONText

-- | Who to execute the web app as.
data GoogleAppsScriptTypeWebAppConfigExecuteAs
    = UnknownExecuteAs
      -- ^ @UNKNOWN_EXECUTE_AS@
      -- Default value, should not be used.
    | UserAccessing
      -- ^ @USER_ACCESSING@
      -- The script runs as the user accessing the web app.
    | UserDeploying
      -- ^ @USER_DEPLOYING@
      -- The script runs as the user who deployed the web app. Note that this is
      -- not necessarily the owner of the script project.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsScriptTypeWebAppConfigExecuteAs

instance FromHttpApiData GoogleAppsScriptTypeWebAppConfigExecuteAs where
    parseQueryParam = \case
        "UNKNOWN_EXECUTE_AS" -> Right UnknownExecuteAs
        "USER_ACCESSING" -> Right UserAccessing
        "USER_DEPLOYING" -> Right UserDeploying
        x -> Left ("Unable to parse GoogleAppsScriptTypeWebAppConfigExecuteAs from: " <> x)

instance ToHttpApiData GoogleAppsScriptTypeWebAppConfigExecuteAs where
    toQueryParam = \case
        UnknownExecuteAs -> "UNKNOWN_EXECUTE_AS"
        UserAccessing -> "USER_ACCESSING"
        UserDeploying -> "USER_DEPLOYING"

instance FromJSON GoogleAppsScriptTypeWebAppConfigExecuteAs where
    parseJSON = parseJSONText "GoogleAppsScriptTypeWebAppConfigExecuteAs"

instance ToJSON GoogleAppsScriptTypeWebAppConfigExecuteAs where
    toJSON = toJSONText

-- | Who has permission to run the API executable.
data GoogleAppsScriptTypeExecutionAPIConfigAccess
    = UnknownAccess
      -- ^ @UNKNOWN_ACCESS@
      -- Default value, should not be used.
    | Myself
      -- ^ @MYSELF@
      -- Only the user who deployed the web app or executable can access it. Note
      -- that this is not necessarily the owner of the script project.
    | Domain
      -- ^ @DOMAIN@
      -- Only users in the same domain as the user who deployed the web app or
      -- executable can access it.
    | Anyone
      -- ^ @ANYONE@
      -- Any logged in user can access the web app or executable.
    | AnyoneAnonymous
      -- ^ @ANYONE_ANONYMOUS@
      -- Any user, logged in or not, can access the web app or executable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsScriptTypeExecutionAPIConfigAccess

instance FromHttpApiData GoogleAppsScriptTypeExecutionAPIConfigAccess where
    parseQueryParam = \case
        "UNKNOWN_ACCESS" -> Right UnknownAccess
        "MYSELF" -> Right Myself
        "DOMAIN" -> Right Domain
        "ANYONE" -> Right Anyone
        "ANYONE_ANONYMOUS" -> Right AnyoneAnonymous
        x -> Left ("Unable to parse GoogleAppsScriptTypeExecutionAPIConfigAccess from: " <> x)

instance ToHttpApiData GoogleAppsScriptTypeExecutionAPIConfigAccess where
    toQueryParam = \case
        UnknownAccess -> "UNKNOWN_ACCESS"
        Myself -> "MYSELF"
        Domain -> "DOMAIN"
        Anyone -> "ANYONE"
        AnyoneAnonymous -> "ANYONE_ANONYMOUS"

instance FromJSON GoogleAppsScriptTypeExecutionAPIConfigAccess where
    parseJSON = parseJSONText "GoogleAppsScriptTypeExecutionAPIConfigAccess"

instance ToJSON GoogleAppsScriptTypeExecutionAPIConfigAccess where
    toJSON = toJSONText

-- | Optional field used to limit returned processes to those having one of
-- the specified process statuses.
data ProcessesListScriptProcessesScriptProcessFilterStatuses
    = ProcessStatusUnspecified
      -- ^ @PROCESS_STATUS_UNSPECIFIED@
      -- Unspecified status.
    | Running
      -- ^ @RUNNING@
      -- The process is currently running.
    | Paused
      -- ^ @PAUSED@
      -- The process has paused.
    | Completed
      -- ^ @COMPLETED@
      -- The process has completed.
    | Canceled
      -- ^ @CANCELED@
      -- The process was cancelled.
    | Failed
      -- ^ @FAILED@
      -- The process failed.
    | TimedOut
      -- ^ @TIMED_OUT@
      -- The process timed out.
    | Unknown
      -- ^ @UNKNOWN@
      -- Process status unknown.
    | Delayed
      -- ^ @DELAYED@
      -- The process is delayed, waiting for quota.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProcessesListScriptProcessesScriptProcessFilterStatuses

instance FromHttpApiData ProcessesListScriptProcessesScriptProcessFilterStatuses where
    parseQueryParam = \case
        "PROCESS_STATUS_UNSPECIFIED" -> Right ProcessStatusUnspecified
        "RUNNING" -> Right Running
        "PAUSED" -> Right Paused
        "COMPLETED" -> Right Completed
        "CANCELED" -> Right Canceled
        "FAILED" -> Right Failed
        "TIMED_OUT" -> Right TimedOut
        "UNKNOWN" -> Right Unknown
        "DELAYED" -> Right Delayed
        x -> Left ("Unable to parse ProcessesListScriptProcessesScriptProcessFilterStatuses from: " <> x)

instance ToHttpApiData ProcessesListScriptProcessesScriptProcessFilterStatuses where
    toQueryParam = \case
        ProcessStatusUnspecified -> "PROCESS_STATUS_UNSPECIFIED"
        Running -> "RUNNING"
        Paused -> "PAUSED"
        Completed -> "COMPLETED"
        Canceled -> "CANCELED"
        Failed -> "FAILED"
        TimedOut -> "TIMED_OUT"
        Unknown -> "UNKNOWN"
        Delayed -> "DELAYED"

instance FromJSON ProcessesListScriptProcessesScriptProcessFilterStatuses where
    parseJSON = parseJSONText "ProcessesListScriptProcessesScriptProcessFilterStatuses"

instance ToJSON ProcessesListScriptProcessesScriptProcessFilterStatuses where
    toJSON = toJSONText

-- | Represents a null value.
data ValueNullValue
    = NullValue
      -- ^ @NULL_VALUE@
      -- Null value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ValueNullValue

instance FromHttpApiData ValueNullValue where
    parseQueryParam = \case
        "NULL_VALUE" -> Right NullValue
        x -> Left ("Unable to parse ValueNullValue from: " <> x)

instance ToHttpApiData ValueNullValue where
    toQueryParam = \case
        NullValue -> "NULL_VALUE"

instance FromJSON ValueNullValue where
    parseJSON = parseJSONText "ValueNullValue"

instance ToJSON ValueNullValue where
    toJSON = toJSONText

-- | The type of the file.
data FileType
    = EnumTypeUnspecified
      -- ^ @ENUM_TYPE_UNSPECIFIED@
      -- Undetermined file type; never actually used.
    | ServerJs
      -- ^ @SERVER_JS@
      -- An Apps Script server-side code file.
    | HTML
      -- ^ @HTML@
      -- A file containing client-side HTML.
    | JSON
      -- ^ @JSON@
      -- A file in JSON format. This type is only used for the script project\'s
      -- manifest. The manifest file content must match the structure of a valid
      -- [ScriptManifest](\/apps-script\/concepts\/manifests)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FileType

instance FromHttpApiData FileType where
    parseQueryParam = \case
        "ENUM_TYPE_UNSPECIFIED" -> Right EnumTypeUnspecified
        "SERVER_JS" -> Right ServerJs
        "HTML" -> Right HTML
        "JSON" -> Right JSON
        x -> Left ("Unable to parse FileType from: " <> x)

instance ToHttpApiData FileType where
    toQueryParam = \case
        EnumTypeUnspecified -> "ENUM_TYPE_UNSPECIFIED"
        ServerJs -> "SERVER_JS"
        HTML -> "HTML"
        JSON -> "JSON"

instance FromJSON FileType where
    parseJSON = parseJSONText "FileType"

instance ToJSON FileType where
    toJSON = toJSONText

-- | Optional field used to limit returned processes to those having one of
-- the specified process types.
data ProcessesListUserProcessFilterTypes
    = PLUPFTProcessTypeUnspecified
      -- ^ @PROCESS_TYPE_UNSPECIFIED@
      -- Unspecified type.
    | PLUPFTAddOn
      -- ^ @ADD_ON@
      -- The process was started from an add-on entry point.
    | PLUPFTExecutionAPI
      -- ^ @EXECUTION_API@
      -- The process was started using the Apps Script API.
    | PLUPFTTimeDriven
      -- ^ @TIME_DRIVEN@
      -- The process was started from a time-based trigger.
    | PLUPFTTrigger
      -- ^ @TRIGGER@
      -- The process was started from an event-based trigger.
    | PLUPFTWebApp
      -- ^ @WEBAPP@
      -- The process was started from a web app entry point.
    | PLUPFTEditor
      -- ^ @EDITOR@
      -- The process was started using the Apps Script IDE.
    | PLUPFTSimpleTrigger
      -- ^ @SIMPLE_TRIGGER@
      -- The process was started from a G Suite simple trigger.
    | PLUPFTMenu
      -- ^ @MENU@
      -- The process was started from a G Suite menu item.
    | PLUPFTBatchTask
      -- ^ @BATCH_TASK@
      -- The process was started as a task in a batch job.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProcessesListUserProcessFilterTypes

instance FromHttpApiData ProcessesListUserProcessFilterTypes where
    parseQueryParam = \case
        "PROCESS_TYPE_UNSPECIFIED" -> Right PLUPFTProcessTypeUnspecified
        "ADD_ON" -> Right PLUPFTAddOn
        "EXECUTION_API" -> Right PLUPFTExecutionAPI
        "TIME_DRIVEN" -> Right PLUPFTTimeDriven
        "TRIGGER" -> Right PLUPFTTrigger
        "WEBAPP" -> Right PLUPFTWebApp
        "EDITOR" -> Right PLUPFTEditor
        "SIMPLE_TRIGGER" -> Right PLUPFTSimpleTrigger
        "MENU" -> Right PLUPFTMenu
        "BATCH_TASK" -> Right PLUPFTBatchTask
        x -> Left ("Unable to parse ProcessesListUserProcessFilterTypes from: " <> x)

instance ToHttpApiData ProcessesListUserProcessFilterTypes where
    toQueryParam = \case
        PLUPFTProcessTypeUnspecified -> "PROCESS_TYPE_UNSPECIFIED"
        PLUPFTAddOn -> "ADD_ON"
        PLUPFTExecutionAPI -> "EXECUTION_API"
        PLUPFTTimeDriven -> "TIME_DRIVEN"
        PLUPFTTrigger -> "TRIGGER"
        PLUPFTWebApp -> "WEBAPP"
        PLUPFTEditor -> "EDITOR"
        PLUPFTSimpleTrigger -> "SIMPLE_TRIGGER"
        PLUPFTMenu -> "MENU"
        PLUPFTBatchTask -> "BATCH_TASK"

instance FromJSON ProcessesListUserProcessFilterTypes where
    parseJSON = parseJSONText "ProcessesListUserProcessFilterTypes"

instance ToJSON ProcessesListUserProcessFilterTypes where
    toJSON = toJSONText

-- | Optional field used to limit returned processes to those having one of
-- the specified user access levels.
data ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
    = PLSPSPFUALUserAccessLevelUnspecified
      -- ^ @USER_ACCESS_LEVEL_UNSPECIFIED@
      -- User access level unspecified
    | PLSPSPFUALNone
      -- ^ @NONE@
      -- The user has no access.
    | PLSPSPFUALRead'
      -- ^ @READ@
      -- The user has read-only access.
    | PLSPSPFUALWrite
      -- ^ @WRITE@
      -- The user has write access.
    | PLSPSPFUALOwner
      -- ^ @OWNER@
      -- The user is an owner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels

instance FromHttpApiData ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels where
    parseQueryParam = \case
        "USER_ACCESS_LEVEL_UNSPECIFIED" -> Right PLSPSPFUALUserAccessLevelUnspecified
        "NONE" -> Right PLSPSPFUALNone
        "READ" -> Right PLSPSPFUALRead'
        "WRITE" -> Right PLSPSPFUALWrite
        "OWNER" -> Right PLSPSPFUALOwner
        x -> Left ("Unable to parse ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels from: " <> x)

instance ToHttpApiData ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels where
    toQueryParam = \case
        PLSPSPFUALUserAccessLevelUnspecified -> "USER_ACCESS_LEVEL_UNSPECIFIED"
        PLSPSPFUALNone -> "NONE"
        PLSPSPFUALRead' -> "READ"
        PLSPSPFUALWrite -> "WRITE"
        PLSPSPFUALOwner -> "OWNER"

instance FromJSON ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels where
    parseJSON = parseJSONText "ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels"

instance ToJSON ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels where
    toJSON = toJSONText

-- | Required field indicating what granularity of metrics are returned.
data ProjectsGetMetricsMetricsGranularity
    = UnspecifiedGranularity
      -- ^ @UNSPECIFIED_GRANULARITY@
      -- Default metric granularity used to query no metrics.
    | Weekly
      -- ^ @WEEKLY@
      -- Represents weekly metrics.
    | Daily
      -- ^ @DAILY@
      -- Represents daily metrics over a period of 7 days.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsGetMetricsMetricsGranularity

instance FromHttpApiData ProjectsGetMetricsMetricsGranularity where
    parseQueryParam = \case
        "UNSPECIFIED_GRANULARITY" -> Right UnspecifiedGranularity
        "WEEKLY" -> Right Weekly
        "DAILY" -> Right Daily
        x -> Left ("Unable to parse ProjectsGetMetricsMetricsGranularity from: " <> x)

instance ToHttpApiData ProjectsGetMetricsMetricsGranularity where
    toQueryParam = \case
        UnspecifiedGranularity -> "UNSPECIFIED_GRANULARITY"
        Weekly -> "WEEKLY"
        Daily -> "DAILY"

instance FromJSON ProjectsGetMetricsMetricsGranularity where
    parseJSON = parseJSONText "ProjectsGetMetricsMetricsGranularity"

instance ToJSON ProjectsGetMetricsMetricsGranularity where
    toJSON = toJSONText

-- | The add-on\'s required list of supported container types.
data GoogleAppsScriptTypeAddOnEntryPointAddOnType
    = UnknownAddonType
      -- ^ @UNKNOWN_ADDON_TYPE@
      -- Default value, unknown add-on type.
    | Gmail
      -- ^ @GMAIL@
      -- Add-on type for Gmail.
    | DataStudio
      -- ^ @DATA_STUDIO@
      -- Add-on type for Data Studio.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsScriptTypeAddOnEntryPointAddOnType

instance FromHttpApiData GoogleAppsScriptTypeAddOnEntryPointAddOnType where
    parseQueryParam = \case
        "UNKNOWN_ADDON_TYPE" -> Right UnknownAddonType
        "GMAIL" -> Right Gmail
        "DATA_STUDIO" -> Right DataStudio
        x -> Left ("Unable to parse GoogleAppsScriptTypeAddOnEntryPointAddOnType from: " <> x)

instance ToHttpApiData GoogleAppsScriptTypeAddOnEntryPointAddOnType where
    toQueryParam = \case
        UnknownAddonType -> "UNKNOWN_ADDON_TYPE"
        Gmail -> "GMAIL"
        DataStudio -> "DATA_STUDIO"

instance FromJSON GoogleAppsScriptTypeAddOnEntryPointAddOnType where
    parseJSON = parseJSONText "GoogleAppsScriptTypeAddOnEntryPointAddOnType"

instance ToJSON GoogleAppsScriptTypeAddOnEntryPointAddOnType where
    toJSON = toJSONText

-- | Optional field used to limit returned processes to those having one of
-- the specified process statuses.
data ProcessesListUserProcessFilterStatuses
    = PLUPFSProcessStatusUnspecified
      -- ^ @PROCESS_STATUS_UNSPECIFIED@
      -- Unspecified status.
    | PLUPFSRunning
      -- ^ @RUNNING@
      -- The process is currently running.
    | PLUPFSPaused
      -- ^ @PAUSED@
      -- The process has paused.
    | PLUPFSCompleted
      -- ^ @COMPLETED@
      -- The process has completed.
    | PLUPFSCanceled
      -- ^ @CANCELED@
      -- The process was cancelled.
    | PLUPFSFailed
      -- ^ @FAILED@
      -- The process failed.
    | PLUPFSTimedOut
      -- ^ @TIMED_OUT@
      -- The process timed out.
    | PLUPFSUnknown
      -- ^ @UNKNOWN@
      -- Process status unknown.
    | PLUPFSDelayed
      -- ^ @DELAYED@
      -- The process is delayed, waiting for quota.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProcessesListUserProcessFilterStatuses

instance FromHttpApiData ProcessesListUserProcessFilterStatuses where
    parseQueryParam = \case
        "PROCESS_STATUS_UNSPECIFIED" -> Right PLUPFSProcessStatusUnspecified
        "RUNNING" -> Right PLUPFSRunning
        "PAUSED" -> Right PLUPFSPaused
        "COMPLETED" -> Right PLUPFSCompleted
        "CANCELED" -> Right PLUPFSCanceled
        "FAILED" -> Right PLUPFSFailed
        "TIMED_OUT" -> Right PLUPFSTimedOut
        "UNKNOWN" -> Right PLUPFSUnknown
        "DELAYED" -> Right PLUPFSDelayed
        x -> Left ("Unable to parse ProcessesListUserProcessFilterStatuses from: " <> x)

instance ToHttpApiData ProcessesListUserProcessFilterStatuses where
    toQueryParam = \case
        PLUPFSProcessStatusUnspecified -> "PROCESS_STATUS_UNSPECIFIED"
        PLUPFSRunning -> "RUNNING"
        PLUPFSPaused -> "PAUSED"
        PLUPFSCompleted -> "COMPLETED"
        PLUPFSCanceled -> "CANCELED"
        PLUPFSFailed -> "FAILED"
        PLUPFSTimedOut -> "TIMED_OUT"
        PLUPFSUnknown -> "UNKNOWN"
        PLUPFSDelayed -> "DELAYED"

instance FromJSON ProcessesListUserProcessFilterStatuses where
    parseJSON = parseJSONText "ProcessesListUserProcessFilterStatuses"

instance ToJSON ProcessesListUserProcessFilterStatuses where
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

-- | Optional field used to limit returned processes to those having one of
-- the specified user access levels.
data ProcessesListUserProcessFilterUserAccessLevels
    = PLUPFUALUserAccessLevelUnspecified
      -- ^ @USER_ACCESS_LEVEL_UNSPECIFIED@
      -- User access level unspecified
    | PLUPFUALNone
      -- ^ @NONE@
      -- The user has no access.
    | PLUPFUALRead'
      -- ^ @READ@
      -- The user has read-only access.
    | PLUPFUALWrite
      -- ^ @WRITE@
      -- The user has write access.
    | PLUPFUALOwner
      -- ^ @OWNER@
      -- The user is an owner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProcessesListUserProcessFilterUserAccessLevels

instance FromHttpApiData ProcessesListUserProcessFilterUserAccessLevels where
    parseQueryParam = \case
        "USER_ACCESS_LEVEL_UNSPECIFIED" -> Right PLUPFUALUserAccessLevelUnspecified
        "NONE" -> Right PLUPFUALNone
        "READ" -> Right PLUPFUALRead'
        "WRITE" -> Right PLUPFUALWrite
        "OWNER" -> Right PLUPFUALOwner
        x -> Left ("Unable to parse ProcessesListUserProcessFilterUserAccessLevels from: " <> x)

instance ToHttpApiData ProcessesListUserProcessFilterUserAccessLevels where
    toQueryParam = \case
        PLUPFUALUserAccessLevelUnspecified -> "USER_ACCESS_LEVEL_UNSPECIFIED"
        PLUPFUALNone -> "NONE"
        PLUPFUALRead' -> "READ"
        PLUPFUALWrite -> "WRITE"
        PLUPFUALOwner -> "OWNER"

instance FromJSON ProcessesListUserProcessFilterUserAccessLevels where
    parseJSON = parseJSONText "ProcessesListUserProcessFilterUserAccessLevels"

instance ToJSON ProcessesListUserProcessFilterUserAccessLevels where
    toJSON = toJSONText

-- | The type of the entry point.
data EntryPointEntryPointType
    = EPEPTEntryPointTypeUnspecified
      -- ^ @ENTRY_POINT_TYPE_UNSPECIFIED@
      -- An unspecified entry point.
    | EPEPTWebApp
      -- ^ @WEB_APP@
      -- A web application entry point.
    | EPEPTExecutionAPI
      -- ^ @EXECUTION_API@
      -- An API executable entry point.
    | EPEPTAddOn
      -- ^ @ADD_ON@
      -- An Add-On entry point.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EntryPointEntryPointType

instance FromHttpApiData EntryPointEntryPointType where
    parseQueryParam = \case
        "ENTRY_POINT_TYPE_UNSPECIFIED" -> Right EPEPTEntryPointTypeUnspecified
        "WEB_APP" -> Right EPEPTWebApp
        "EXECUTION_API" -> Right EPEPTExecutionAPI
        "ADD_ON" -> Right EPEPTAddOn
        x -> Left ("Unable to parse EntryPointEntryPointType from: " <> x)

instance ToHttpApiData EntryPointEntryPointType where
    toQueryParam = \case
        EPEPTEntryPointTypeUnspecified -> "ENTRY_POINT_TYPE_UNSPECIFIED"
        EPEPTWebApp -> "WEB_APP"
        EPEPTExecutionAPI -> "EXECUTION_API"
        EPEPTAddOn -> "ADD_ON"

instance FromJSON EntryPointEntryPointType where
    parseJSON = parseJSONText "EntryPointEntryPointType"

instance ToJSON EntryPointEntryPointType where
    toJSON = toJSONText

-- | The executions status.
data GoogleAppsScriptTypeProcessProcessStatus
    = GASTPPSProcessStatusUnspecified
      -- ^ @PROCESS_STATUS_UNSPECIFIED@
      -- Unspecified status.
    | GASTPPSRunning
      -- ^ @RUNNING@
      -- The process is currently running.
    | GASTPPSPaused
      -- ^ @PAUSED@
      -- The process has paused.
    | GASTPPSCompleted
      -- ^ @COMPLETED@
      -- The process has completed.
    | GASTPPSCanceled
      -- ^ @CANCELED@
      -- The process was cancelled.
    | GASTPPSFailed
      -- ^ @FAILED@
      -- The process failed.
    | GASTPPSTimedOut
      -- ^ @TIMED_OUT@
      -- The process timed out.
    | GASTPPSUnknown
      -- ^ @UNKNOWN@
      -- Process status unknown.
    | GASTPPSDelayed
      -- ^ @DELAYED@
      -- The process is delayed, waiting for quota.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsScriptTypeProcessProcessStatus

instance FromHttpApiData GoogleAppsScriptTypeProcessProcessStatus where
    parseQueryParam = \case
        "PROCESS_STATUS_UNSPECIFIED" -> Right GASTPPSProcessStatusUnspecified
        "RUNNING" -> Right GASTPPSRunning
        "PAUSED" -> Right GASTPPSPaused
        "COMPLETED" -> Right GASTPPSCompleted
        "CANCELED" -> Right GASTPPSCanceled
        "FAILED" -> Right GASTPPSFailed
        "TIMED_OUT" -> Right GASTPPSTimedOut
        "UNKNOWN" -> Right GASTPPSUnknown
        "DELAYED" -> Right GASTPPSDelayed
        x -> Left ("Unable to parse GoogleAppsScriptTypeProcessProcessStatus from: " <> x)

instance ToHttpApiData GoogleAppsScriptTypeProcessProcessStatus where
    toQueryParam = \case
        GASTPPSProcessStatusUnspecified -> "PROCESS_STATUS_UNSPECIFIED"
        GASTPPSRunning -> "RUNNING"
        GASTPPSPaused -> "PAUSED"
        GASTPPSCompleted -> "COMPLETED"
        GASTPPSCanceled -> "CANCELED"
        GASTPPSFailed -> "FAILED"
        GASTPPSTimedOut -> "TIMED_OUT"
        GASTPPSUnknown -> "UNKNOWN"
        GASTPPSDelayed -> "DELAYED"

instance FromJSON GoogleAppsScriptTypeProcessProcessStatus where
    parseJSON = parseJSONText "GoogleAppsScriptTypeProcessProcessStatus"

instance ToJSON GoogleAppsScriptTypeProcessProcessStatus where
    toJSON = toJSONText

-- | Who has permission to run the web app.
data GoogleAppsScriptTypeWebAppConfigAccess
    = GASTWACAUnknownAccess
      -- ^ @UNKNOWN_ACCESS@
      -- Default value, should not be used.
    | GASTWACAMyself
      -- ^ @MYSELF@
      -- Only the user who deployed the web app or executable can access it. Note
      -- that this is not necessarily the owner of the script project.
    | GASTWACADomain
      -- ^ @DOMAIN@
      -- Only users in the same domain as the user who deployed the web app or
      -- executable can access it.
    | GASTWACAAnyone
      -- ^ @ANYONE@
      -- Any logged in user can access the web app or executable.
    | GASTWACAAnyoneAnonymous
      -- ^ @ANYONE_ANONYMOUS@
      -- Any user, logged in or not, can access the web app or executable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleAppsScriptTypeWebAppConfigAccess

instance FromHttpApiData GoogleAppsScriptTypeWebAppConfigAccess where
    parseQueryParam = \case
        "UNKNOWN_ACCESS" -> Right GASTWACAUnknownAccess
        "MYSELF" -> Right GASTWACAMyself
        "DOMAIN" -> Right GASTWACADomain
        "ANYONE" -> Right GASTWACAAnyone
        "ANYONE_ANONYMOUS" -> Right GASTWACAAnyoneAnonymous
        x -> Left ("Unable to parse GoogleAppsScriptTypeWebAppConfigAccess from: " <> x)

instance ToHttpApiData GoogleAppsScriptTypeWebAppConfigAccess where
    toQueryParam = \case
        GASTWACAUnknownAccess -> "UNKNOWN_ACCESS"
        GASTWACAMyself -> "MYSELF"
        GASTWACADomain -> "DOMAIN"
        GASTWACAAnyone -> "ANYONE"
        GASTWACAAnyoneAnonymous -> "ANYONE_ANONYMOUS"

instance FromJSON GoogleAppsScriptTypeWebAppConfigAccess where
    parseJSON = parseJSONText "GoogleAppsScriptTypeWebAppConfigAccess"

instance ToJSON GoogleAppsScriptTypeWebAppConfigAccess where
    toJSON = toJSONText
