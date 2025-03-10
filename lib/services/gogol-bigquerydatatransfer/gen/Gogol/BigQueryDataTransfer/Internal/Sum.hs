{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.BigQueryDataTransfer.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BigQueryDataTransfer.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * DataSource_AuthorizationType
    DataSource_AuthorizationType
      ( DataSource_AuthorizationType_AUTHORIZATIONTYPEUNSPECIFIED,
        DataSource_AuthorizationType_AUTHORIZATIONCODE,
        DataSource_AuthorizationType_GOOGLEPLUSAUTHORIZATIONCODE,
        DataSource_AuthorizationType_FIRSTPARTYOAUTH,
        ..
      ),

    -- * DataSource_DataRefreshType
    DataSource_DataRefreshType
      ( DataSource_DataRefreshType_DATAREFRESHTYPEUNSPECIFIED,
        DataSource_DataRefreshType_SLIDINGWINDOW,
        DataSource_DataRefreshType_CUSTOMSLIDINGWINDOW,
        ..
      ),

    -- * DataSource_TransferType
    DataSource_TransferType
      ( DataSource_TransferType_TRANSFERTYPEUNSPECIFIED,
        DataSource_TransferType_Batch,
        DataSource_TransferType_Streaming,
        ..
      ),

    -- * DataSourceParameter_Type
    DataSourceParameter_Type
      ( DataSourceParameter_Type_TYPEUNSPECIFIED,
        DataSourceParameter_Type_String,
        DataSourceParameter_Type_Integer,
        DataSourceParameter_Type_Double,
        DataSourceParameter_Type_Boolean,
        DataSourceParameter_Type_Record,
        DataSourceParameter_Type_PLUSPAGE,
        DataSourceParameter_Type_List,
        ..
      ),

    -- * TransferConfig_State
    TransferConfig_State
      ( TransferConfig_State_TRANSFERSTATEUNSPECIFIED,
        TransferConfig_State_Pending,
        TransferConfig_State_Running,
        TransferConfig_State_Succeeded,
        TransferConfig_State_Failed,
        TransferConfig_State_Cancelled,
        ..
      ),

    -- * TransferMessage_Severity
    TransferMessage_Severity
      ( TransferMessage_Severity_MESSAGESEVERITYUNSPECIFIED,
        TransferMessage_Severity_Info,
        TransferMessage_Severity_Warning,
        TransferMessage_Severity_Error',
        ..
      ),

    -- * TransferRun_State
    TransferRun_State
      ( TransferRun_State_TRANSFERSTATEUNSPECIFIED,
        TransferRun_State_Pending,
        TransferRun_State_Running,
        TransferRun_State_Succeeded,
        TransferRun_State_Failed,
        TransferRun_State_Cancelled,
        ..
      ),

    -- * ProjectsLocationsTransferConfigsRunsListRunAttempt
    ProjectsLocationsTransferConfigsRunsListRunAttempt
      ( ProjectsLocationsTransferConfigsRunsListRunAttempt_RUNATTEMPTUNSPECIFIED,
        ProjectsLocationsTransferConfigsRunsListRunAttempt_Latest,
        ..
      ),

    -- * ProjectsLocationsTransferConfigsRunsListStates
    ProjectsLocationsTransferConfigsRunsListStates
      ( ProjectsLocationsTransferConfigsRunsListStates_TRANSFERSTATEUNSPECIFIED,
        ProjectsLocationsTransferConfigsRunsListStates_Pending,
        ProjectsLocationsTransferConfigsRunsListStates_Running,
        ProjectsLocationsTransferConfigsRunsListStates_Succeeded,
        ProjectsLocationsTransferConfigsRunsListStates_Failed,
        ProjectsLocationsTransferConfigsRunsListStates_Cancelled,
        ..
      ),

    -- * ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
    ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
      ( ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_MESSAGESEVERITYUNSPECIFIED,
        ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Info,
        ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Warning,
        ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Error',
        ..
      ),

    -- * ProjectsTransferConfigsRunsListRunAttempt
    ProjectsTransferConfigsRunsListRunAttempt
      ( ProjectsTransferConfigsRunsListRunAttempt_RUNATTEMPTUNSPECIFIED,
        ProjectsTransferConfigsRunsListRunAttempt_Latest,
        ..
      ),

    -- * ProjectsTransferConfigsRunsListStates
    ProjectsTransferConfigsRunsListStates
      ( ProjectsTransferConfigsRunsListStates_TRANSFERSTATEUNSPECIFIED,
        ProjectsTransferConfigsRunsListStates_Pending,
        ProjectsTransferConfigsRunsListStates_Running,
        ProjectsTransferConfigsRunsListStates_Succeeded,
        ProjectsTransferConfigsRunsListStates_Failed,
        ProjectsTransferConfigsRunsListStates_Cancelled,
        ..
      ),

    -- * ProjectsTransferConfigsRunsTransferLogsListMessageTypes
    ProjectsTransferConfigsRunsTransferLogsListMessageTypes
      ( ProjectsTransferConfigsRunsTransferLogsListMessageTypes_MESSAGESEVERITYUNSPECIFIED,
        ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Info,
        ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Warning,
        ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Error',
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

-- | Indicates the type of authorization.
newtype DataSource_AuthorizationType = DataSource_AuthorizationType {fromDataSource_AuthorizationType :: Core.Text}
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

-- | Type unspecified.
pattern DataSource_AuthorizationType_AUTHORIZATIONTYPEUNSPECIFIED :: DataSource_AuthorizationType
pattern DataSource_AuthorizationType_AUTHORIZATIONTYPEUNSPECIFIED = DataSource_AuthorizationType "AUTHORIZATION_TYPE_UNSPECIFIED"

-- | Use OAuth 2 authorization codes that can be exchanged for a refresh token on the backend.
pattern DataSource_AuthorizationType_AUTHORIZATIONCODE :: DataSource_AuthorizationType
pattern DataSource_AuthorizationType_AUTHORIZATIONCODE = DataSource_AuthorizationType "AUTHORIZATION_CODE"

-- | Return an authorization code for a given Google+ page that can then be exchanged for a refresh token on the backend.
pattern DataSource_AuthorizationType_GOOGLEPLUSAUTHORIZATIONCODE :: DataSource_AuthorizationType
pattern DataSource_AuthorizationType_GOOGLEPLUSAUTHORIZATIONCODE = DataSource_AuthorizationType "GOOGLE_PLUS_AUTHORIZATION_CODE"

-- | Use First Party OAuth.
pattern DataSource_AuthorizationType_FIRSTPARTYOAUTH :: DataSource_AuthorizationType
pattern DataSource_AuthorizationType_FIRSTPARTYOAUTH = DataSource_AuthorizationType "FIRST_PARTY_OAUTH"

{-# COMPLETE
  DataSource_AuthorizationType_AUTHORIZATIONTYPEUNSPECIFIED,
  DataSource_AuthorizationType_AUTHORIZATIONCODE,
  DataSource_AuthorizationType_GOOGLEPLUSAUTHORIZATIONCODE,
  DataSource_AuthorizationType_FIRSTPARTYOAUTH,
  DataSource_AuthorizationType
  #-}

-- | Specifies whether the data source supports automatic data refresh for the past few days, and how it\'s supported. For some data sources, data might not be complete until a few days later, so it\'s useful to refresh data automatically.
newtype DataSource_DataRefreshType = DataSource_DataRefreshType {fromDataSource_DataRefreshType :: Core.Text}
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

-- | The data source won\'t support data auto refresh, which is default value.
pattern DataSource_DataRefreshType_DATAREFRESHTYPEUNSPECIFIED :: DataSource_DataRefreshType
pattern DataSource_DataRefreshType_DATAREFRESHTYPEUNSPECIFIED = DataSource_DataRefreshType "DATA_REFRESH_TYPE_UNSPECIFIED"

-- | The data source supports data auto refresh, and runs will be scheduled for the past few days. Does not allow custom values to be set for each transfer config.
pattern DataSource_DataRefreshType_SLIDINGWINDOW :: DataSource_DataRefreshType
pattern DataSource_DataRefreshType_SLIDINGWINDOW = DataSource_DataRefreshType "SLIDING_WINDOW"

-- | The data source supports data auto refresh, and runs will be scheduled for the past few days. Allows custom values to be set for each transfer config.
pattern DataSource_DataRefreshType_CUSTOMSLIDINGWINDOW :: DataSource_DataRefreshType
pattern DataSource_DataRefreshType_CUSTOMSLIDINGWINDOW = DataSource_DataRefreshType "CUSTOM_SLIDING_WINDOW"

{-# COMPLETE
  DataSource_DataRefreshType_DATAREFRESHTYPEUNSPECIFIED,
  DataSource_DataRefreshType_SLIDINGWINDOW,
  DataSource_DataRefreshType_CUSTOMSLIDINGWINDOW,
  DataSource_DataRefreshType
  #-}

-- | Deprecated. This field has no effect.
newtype DataSource_TransferType = DataSource_TransferType {fromDataSource_TransferType :: Core.Text}
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

-- | Invalid or Unknown transfer type placeholder.
pattern DataSource_TransferType_TRANSFERTYPEUNSPECIFIED :: DataSource_TransferType
pattern DataSource_TransferType_TRANSFERTYPEUNSPECIFIED = DataSource_TransferType "TRANSFER_TYPE_UNSPECIFIED"

-- | Batch data transfer.
pattern DataSource_TransferType_Batch :: DataSource_TransferType
pattern DataSource_TransferType_Batch = DataSource_TransferType "BATCH"

-- | Streaming data transfer. Streaming data source currently doesn\'t support multiple transfer configs per project.
pattern DataSource_TransferType_Streaming :: DataSource_TransferType
pattern DataSource_TransferType_Streaming = DataSource_TransferType "STREAMING"

{-# COMPLETE
  DataSource_TransferType_TRANSFERTYPEUNSPECIFIED,
  DataSource_TransferType_Batch,
  DataSource_TransferType_Streaming,
  DataSource_TransferType
  #-}

-- | Parameter type.
newtype DataSourceParameter_Type = DataSourceParameter_Type {fromDataSourceParameter_Type :: Core.Text}
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

-- | Type unspecified.
pattern DataSourceParameter_Type_TYPEUNSPECIFIED :: DataSourceParameter_Type
pattern DataSourceParameter_Type_TYPEUNSPECIFIED = DataSourceParameter_Type "TYPE_UNSPECIFIED"

-- | String parameter.
pattern DataSourceParameter_Type_String :: DataSourceParameter_Type
pattern DataSourceParameter_Type_String = DataSourceParameter_Type "STRING"

-- | Integer parameter (64-bits). Will be serialized to json as string.
pattern DataSourceParameter_Type_Integer :: DataSourceParameter_Type
pattern DataSourceParameter_Type_Integer = DataSourceParameter_Type "INTEGER"

-- | Double precision floating point parameter.
pattern DataSourceParameter_Type_Double :: DataSourceParameter_Type
pattern DataSourceParameter_Type_Double = DataSourceParameter_Type "DOUBLE"

-- | Boolean parameter.
pattern DataSourceParameter_Type_Boolean :: DataSourceParameter_Type
pattern DataSourceParameter_Type_Boolean = DataSourceParameter_Type "BOOLEAN"

-- | Deprecated. This field has no effect.
pattern DataSourceParameter_Type_Record :: DataSourceParameter_Type
pattern DataSourceParameter_Type_Record = DataSourceParameter_Type "RECORD"

-- | Page ID for a Google+ Page.
pattern DataSourceParameter_Type_PLUSPAGE :: DataSourceParameter_Type
pattern DataSourceParameter_Type_PLUSPAGE = DataSourceParameter_Type "PLUS_PAGE"

-- | List of strings parameter.
pattern DataSourceParameter_Type_List :: DataSourceParameter_Type
pattern DataSourceParameter_Type_List = DataSourceParameter_Type "LIST"

{-# COMPLETE
  DataSourceParameter_Type_TYPEUNSPECIFIED,
  DataSourceParameter_Type_String,
  DataSourceParameter_Type_Integer,
  DataSourceParameter_Type_Double,
  DataSourceParameter_Type_Boolean,
  DataSourceParameter_Type_Record,
  DataSourceParameter_Type_PLUSPAGE,
  DataSourceParameter_Type_List,
  DataSourceParameter_Type
  #-}

-- | Output only. State of the most recently updated transfer run.
newtype TransferConfig_State = TransferConfig_State {fromTransferConfig_State :: Core.Text}
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

-- | State placeholder (0).
pattern TransferConfig_State_TRANSFERSTATEUNSPECIFIED :: TransferConfig_State
pattern TransferConfig_State_TRANSFERSTATEUNSPECIFIED = TransferConfig_State "TRANSFER_STATE_UNSPECIFIED"

-- | Data transfer is scheduled and is waiting to be picked up by data transfer backend (2).
pattern TransferConfig_State_Pending :: TransferConfig_State
pattern TransferConfig_State_Pending = TransferConfig_State "PENDING"

-- | Data transfer is in progress (3).
pattern TransferConfig_State_Running :: TransferConfig_State
pattern TransferConfig_State_Running = TransferConfig_State "RUNNING"

-- | Data transfer completed successfully (4).
pattern TransferConfig_State_Succeeded :: TransferConfig_State
pattern TransferConfig_State_Succeeded = TransferConfig_State "SUCCEEDED"

-- | Data transfer failed (5).
pattern TransferConfig_State_Failed :: TransferConfig_State
pattern TransferConfig_State_Failed = TransferConfig_State "FAILED"

-- | Data transfer is cancelled (6).
pattern TransferConfig_State_Cancelled :: TransferConfig_State
pattern TransferConfig_State_Cancelled = TransferConfig_State "CANCELLED"

{-# COMPLETE
  TransferConfig_State_TRANSFERSTATEUNSPECIFIED,
  TransferConfig_State_Pending,
  TransferConfig_State_Running,
  TransferConfig_State_Succeeded,
  TransferConfig_State_Failed,
  TransferConfig_State_Cancelled,
  TransferConfig_State
  #-}

-- | Message severity.
newtype TransferMessage_Severity = TransferMessage_Severity {fromTransferMessage_Severity :: Core.Text}
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

-- | No severity specified.
pattern TransferMessage_Severity_MESSAGESEVERITYUNSPECIFIED :: TransferMessage_Severity
pattern TransferMessage_Severity_MESSAGESEVERITYUNSPECIFIED = TransferMessage_Severity "MESSAGE_SEVERITY_UNSPECIFIED"

-- | Informational message.
pattern TransferMessage_Severity_Info :: TransferMessage_Severity
pattern TransferMessage_Severity_Info = TransferMessage_Severity "INFO"

-- | Warning message.
pattern TransferMessage_Severity_Warning :: TransferMessage_Severity
pattern TransferMessage_Severity_Warning = TransferMessage_Severity "WARNING"

-- | Error message.
pattern TransferMessage_Severity_Error' :: TransferMessage_Severity
pattern TransferMessage_Severity_Error' = TransferMessage_Severity "ERROR"

{-# COMPLETE
  TransferMessage_Severity_MESSAGESEVERITYUNSPECIFIED,
  TransferMessage_Severity_Info,
  TransferMessage_Severity_Warning,
  TransferMessage_Severity_Error',
  TransferMessage_Severity
  #-}

-- | Data transfer run state. Ignored for input requests.
newtype TransferRun_State = TransferRun_State {fromTransferRun_State :: Core.Text}
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

-- | State placeholder (0).
pattern TransferRun_State_TRANSFERSTATEUNSPECIFIED :: TransferRun_State
pattern TransferRun_State_TRANSFERSTATEUNSPECIFIED = TransferRun_State "TRANSFER_STATE_UNSPECIFIED"

-- | Data transfer is scheduled and is waiting to be picked up by data transfer backend (2).
pattern TransferRun_State_Pending :: TransferRun_State
pattern TransferRun_State_Pending = TransferRun_State "PENDING"

-- | Data transfer is in progress (3).
pattern TransferRun_State_Running :: TransferRun_State
pattern TransferRun_State_Running = TransferRun_State "RUNNING"

-- | Data transfer completed successfully (4).
pattern TransferRun_State_Succeeded :: TransferRun_State
pattern TransferRun_State_Succeeded = TransferRun_State "SUCCEEDED"

-- | Data transfer failed (5).
pattern TransferRun_State_Failed :: TransferRun_State
pattern TransferRun_State_Failed = TransferRun_State "FAILED"

-- | Data transfer is cancelled (6).
pattern TransferRun_State_Cancelled :: TransferRun_State
pattern TransferRun_State_Cancelled = TransferRun_State "CANCELLED"

{-# COMPLETE
  TransferRun_State_TRANSFERSTATEUNSPECIFIED,
  TransferRun_State_Pending,
  TransferRun_State_Running,
  TransferRun_State_Succeeded,
  TransferRun_State_Failed,
  TransferRun_State_Cancelled,
  TransferRun_State
  #-}

-- | Indicates how run attempts are to be pulled.
newtype ProjectsLocationsTransferConfigsRunsListRunAttempt = ProjectsLocationsTransferConfigsRunsListRunAttempt {fromProjectsLocationsTransferConfigsRunsListRunAttempt :: Core.Text}
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

-- | All runs should be returned.
pattern ProjectsLocationsTransferConfigsRunsListRunAttempt_RUNATTEMPTUNSPECIFIED :: ProjectsLocationsTransferConfigsRunsListRunAttempt
pattern ProjectsLocationsTransferConfigsRunsListRunAttempt_RUNATTEMPTUNSPECIFIED = ProjectsLocationsTransferConfigsRunsListRunAttempt "RUN_ATTEMPT_UNSPECIFIED"

-- | Only latest run per day should be returned.
pattern ProjectsLocationsTransferConfigsRunsListRunAttempt_Latest :: ProjectsLocationsTransferConfigsRunsListRunAttempt
pattern ProjectsLocationsTransferConfigsRunsListRunAttempt_Latest = ProjectsLocationsTransferConfigsRunsListRunAttempt "LATEST"

{-# COMPLETE
  ProjectsLocationsTransferConfigsRunsListRunAttempt_RUNATTEMPTUNSPECIFIED,
  ProjectsLocationsTransferConfigsRunsListRunAttempt_Latest,
  ProjectsLocationsTransferConfigsRunsListRunAttempt
  #-}

-- | When specified, only transfer runs with requested states are returned.
newtype ProjectsLocationsTransferConfigsRunsListStates = ProjectsLocationsTransferConfigsRunsListStates {fromProjectsLocationsTransferConfigsRunsListStates :: Core.Text}
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

-- | State placeholder (0).
pattern ProjectsLocationsTransferConfigsRunsListStates_TRANSFERSTATEUNSPECIFIED :: ProjectsLocationsTransferConfigsRunsListStates
pattern ProjectsLocationsTransferConfigsRunsListStates_TRANSFERSTATEUNSPECIFIED = ProjectsLocationsTransferConfigsRunsListStates "TRANSFER_STATE_UNSPECIFIED"

-- | Data transfer is scheduled and is waiting to be picked up by data transfer backend (2).
pattern ProjectsLocationsTransferConfigsRunsListStates_Pending :: ProjectsLocationsTransferConfigsRunsListStates
pattern ProjectsLocationsTransferConfigsRunsListStates_Pending = ProjectsLocationsTransferConfigsRunsListStates "PENDING"

-- | Data transfer is in progress (3).
pattern ProjectsLocationsTransferConfigsRunsListStates_Running :: ProjectsLocationsTransferConfigsRunsListStates
pattern ProjectsLocationsTransferConfigsRunsListStates_Running = ProjectsLocationsTransferConfigsRunsListStates "RUNNING"

-- | Data transfer completed successfully (4).
pattern ProjectsLocationsTransferConfigsRunsListStates_Succeeded :: ProjectsLocationsTransferConfigsRunsListStates
pattern ProjectsLocationsTransferConfigsRunsListStates_Succeeded = ProjectsLocationsTransferConfigsRunsListStates "SUCCEEDED"

-- | Data transfer failed (5).
pattern ProjectsLocationsTransferConfigsRunsListStates_Failed :: ProjectsLocationsTransferConfigsRunsListStates
pattern ProjectsLocationsTransferConfigsRunsListStates_Failed = ProjectsLocationsTransferConfigsRunsListStates "FAILED"

-- | Data transfer is cancelled (6).
pattern ProjectsLocationsTransferConfigsRunsListStates_Cancelled :: ProjectsLocationsTransferConfigsRunsListStates
pattern ProjectsLocationsTransferConfigsRunsListStates_Cancelled = ProjectsLocationsTransferConfigsRunsListStates "CANCELLED"

{-# COMPLETE
  ProjectsLocationsTransferConfigsRunsListStates_TRANSFERSTATEUNSPECIFIED,
  ProjectsLocationsTransferConfigsRunsListStates_Pending,
  ProjectsLocationsTransferConfigsRunsListStates_Running,
  ProjectsLocationsTransferConfigsRunsListStates_Succeeded,
  ProjectsLocationsTransferConfigsRunsListStates_Failed,
  ProjectsLocationsTransferConfigsRunsListStates_Cancelled,
  ProjectsLocationsTransferConfigsRunsListStates
  #-}

-- | Message types to return. If not populated - INFO, WARNING and ERROR messages are returned.
newtype ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes = ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes {fromProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes :: Core.Text}
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

-- | No severity specified.
pattern ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_MESSAGESEVERITYUNSPECIFIED :: ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
pattern ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_MESSAGESEVERITYUNSPECIFIED = ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes "MESSAGE_SEVERITY_UNSPECIFIED"

-- | Informational message.
pattern ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Info :: ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
pattern ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Info = ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes "INFO"

-- | Warning message.
pattern ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Warning :: ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
pattern ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Warning = ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes "WARNING"

-- | Error message.
pattern ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Error' :: ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
pattern ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Error' = ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes "ERROR"

{-# COMPLETE
  ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_MESSAGESEVERITYUNSPECIFIED,
  ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Info,
  ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Warning,
  ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes_Error',
  ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
  #-}

-- | Indicates how run attempts are to be pulled.
newtype ProjectsTransferConfigsRunsListRunAttempt = ProjectsTransferConfigsRunsListRunAttempt {fromProjectsTransferConfigsRunsListRunAttempt :: Core.Text}
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

-- | All runs should be returned.
pattern ProjectsTransferConfigsRunsListRunAttempt_RUNATTEMPTUNSPECIFIED :: ProjectsTransferConfigsRunsListRunAttempt
pattern ProjectsTransferConfigsRunsListRunAttempt_RUNATTEMPTUNSPECIFIED = ProjectsTransferConfigsRunsListRunAttempt "RUN_ATTEMPT_UNSPECIFIED"

-- | Only latest run per day should be returned.
pattern ProjectsTransferConfigsRunsListRunAttempt_Latest :: ProjectsTransferConfigsRunsListRunAttempt
pattern ProjectsTransferConfigsRunsListRunAttempt_Latest = ProjectsTransferConfigsRunsListRunAttempt "LATEST"

{-# COMPLETE
  ProjectsTransferConfigsRunsListRunAttempt_RUNATTEMPTUNSPECIFIED,
  ProjectsTransferConfigsRunsListRunAttempt_Latest,
  ProjectsTransferConfigsRunsListRunAttempt
  #-}

-- | When specified, only transfer runs with requested states are returned.
newtype ProjectsTransferConfigsRunsListStates = ProjectsTransferConfigsRunsListStates {fromProjectsTransferConfigsRunsListStates :: Core.Text}
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

-- | State placeholder (0).
pattern ProjectsTransferConfigsRunsListStates_TRANSFERSTATEUNSPECIFIED :: ProjectsTransferConfigsRunsListStates
pattern ProjectsTransferConfigsRunsListStates_TRANSFERSTATEUNSPECIFIED = ProjectsTransferConfigsRunsListStates "TRANSFER_STATE_UNSPECIFIED"

-- | Data transfer is scheduled and is waiting to be picked up by data transfer backend (2).
pattern ProjectsTransferConfigsRunsListStates_Pending :: ProjectsTransferConfigsRunsListStates
pattern ProjectsTransferConfigsRunsListStates_Pending = ProjectsTransferConfigsRunsListStates "PENDING"

-- | Data transfer is in progress (3).
pattern ProjectsTransferConfigsRunsListStates_Running :: ProjectsTransferConfigsRunsListStates
pattern ProjectsTransferConfigsRunsListStates_Running = ProjectsTransferConfigsRunsListStates "RUNNING"

-- | Data transfer completed successfully (4).
pattern ProjectsTransferConfigsRunsListStates_Succeeded :: ProjectsTransferConfigsRunsListStates
pattern ProjectsTransferConfigsRunsListStates_Succeeded = ProjectsTransferConfigsRunsListStates "SUCCEEDED"

-- | Data transfer failed (5).
pattern ProjectsTransferConfigsRunsListStates_Failed :: ProjectsTransferConfigsRunsListStates
pattern ProjectsTransferConfigsRunsListStates_Failed = ProjectsTransferConfigsRunsListStates "FAILED"

-- | Data transfer is cancelled (6).
pattern ProjectsTransferConfigsRunsListStates_Cancelled :: ProjectsTransferConfigsRunsListStates
pattern ProjectsTransferConfigsRunsListStates_Cancelled = ProjectsTransferConfigsRunsListStates "CANCELLED"

{-# COMPLETE
  ProjectsTransferConfigsRunsListStates_TRANSFERSTATEUNSPECIFIED,
  ProjectsTransferConfigsRunsListStates_Pending,
  ProjectsTransferConfigsRunsListStates_Running,
  ProjectsTransferConfigsRunsListStates_Succeeded,
  ProjectsTransferConfigsRunsListStates_Failed,
  ProjectsTransferConfigsRunsListStates_Cancelled,
  ProjectsTransferConfigsRunsListStates
  #-}

-- | Message types to return. If not populated - INFO, WARNING and ERROR messages are returned.
newtype ProjectsTransferConfigsRunsTransferLogsListMessageTypes = ProjectsTransferConfigsRunsTransferLogsListMessageTypes {fromProjectsTransferConfigsRunsTransferLogsListMessageTypes :: Core.Text}
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

-- | No severity specified.
pattern ProjectsTransferConfigsRunsTransferLogsListMessageTypes_MESSAGESEVERITYUNSPECIFIED :: ProjectsTransferConfigsRunsTransferLogsListMessageTypes
pattern ProjectsTransferConfigsRunsTransferLogsListMessageTypes_MESSAGESEVERITYUNSPECIFIED = ProjectsTransferConfigsRunsTransferLogsListMessageTypes "MESSAGE_SEVERITY_UNSPECIFIED"

-- | Informational message.
pattern ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Info :: ProjectsTransferConfigsRunsTransferLogsListMessageTypes
pattern ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Info = ProjectsTransferConfigsRunsTransferLogsListMessageTypes "INFO"

-- | Warning message.
pattern ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Warning :: ProjectsTransferConfigsRunsTransferLogsListMessageTypes
pattern ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Warning = ProjectsTransferConfigsRunsTransferLogsListMessageTypes "WARNING"

-- | Error message.
pattern ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Error' :: ProjectsTransferConfigsRunsTransferLogsListMessageTypes
pattern ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Error' = ProjectsTransferConfigsRunsTransferLogsListMessageTypes "ERROR"

{-# COMPLETE
  ProjectsTransferConfigsRunsTransferLogsListMessageTypes_MESSAGESEVERITYUNSPECIFIED,
  ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Info,
  ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Warning,
  ProjectsTransferConfigsRunsTransferLogsListMessageTypes_Error',
  ProjectsTransferConfigsRunsTransferLogsListMessageTypes
  #-}
