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
-- Module      : Gogol.ServiceControl.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ServiceControl.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AuthorizationInfo_PermissionType
    AuthorizationInfo_PermissionType
      ( AuthorizationInfo_PermissionType_PERMISSIONTYPEUNSPECIFIED,
        AuthorizationInfo_PermissionType_ADMINREAD,
        AuthorizationInfo_PermissionType_ADMINWRITE,
        AuthorizationInfo_PermissionType_DATAREAD,
        AuthorizationInfo_PermissionType_DATAWRITE,
        ..
      ),

    -- * V2LogEntry_Severity
    V2LogEntry_Severity
      ( V2LogEntry_Severity_Default,
        V2LogEntry_Severity_Debug,
        V2LogEntry_Severity_Info,
        V2LogEntry_Severity_Notice,
        V2LogEntry_Severity_Warning,
        V2LogEntry_Severity_Error',
        V2LogEntry_Severity_Critical,
        V2LogEntry_Severity_Alert,
        V2LogEntry_Severity_Emergency,
        ..
      ),

    -- * V2ResourceEvent_Path
    V2ResourceEvent_Path
      ( V2ResourceEvent_Path_APIPATHUNSPECIFIED,
        V2ResourceEvent_Path_Request',
        V2ResourceEvent_Path_Response,
        ..
      ),

    -- * V2ResourceEvent_Type
    V2ResourceEvent_Type
      ( V2ResourceEvent_Type_TYPEUNSPECIFIED,
        V2ResourceEvent_Type_Create,
        V2ResourceEvent_Type_Update,
        V2ResourceEvent_Type_Delete',
        V2ResourceEvent_Type_Undelete,
        ..
      ),

    -- * ViolationInfo_PolicyType
    ViolationInfo_PolicyType
      ( ViolationInfo_PolicyType_POLICYTYPEUNSPECIFIED,
        ViolationInfo_PolicyType_BOOLEANCONSTRAINT,
        ViolationInfo_PolicyType_LISTCONSTRAINT,
        ViolationInfo_PolicyType_CUSTOMCONSTRAINT,
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

-- | The type of the permission that was checked. For data access audit logs this corresponds with the permission type that must be enabled in the project\/folder\/organization IAM policy in order for the log to be written.
newtype AuthorizationInfo_PermissionType = AuthorizationInfo_PermissionType {fromAuthorizationInfo_PermissionType :: Core.Text}
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

-- | Default. Should not be used.
pattern AuthorizationInfo_PermissionType_PERMISSIONTYPEUNSPECIFIED :: AuthorizationInfo_PermissionType
pattern AuthorizationInfo_PermissionType_PERMISSIONTYPEUNSPECIFIED = AuthorizationInfo_PermissionType "PERMISSION_TYPE_UNSPECIFIED"

-- | Permissions that gate reading resource configuration or metadata.
pattern AuthorizationInfo_PermissionType_ADMINREAD :: AuthorizationInfo_PermissionType
pattern AuthorizationInfo_PermissionType_ADMINREAD = AuthorizationInfo_PermissionType "ADMIN_READ"

-- | Permissions that gate modification of resource configuration or metadata.
pattern AuthorizationInfo_PermissionType_ADMINWRITE :: AuthorizationInfo_PermissionType
pattern AuthorizationInfo_PermissionType_ADMINWRITE = AuthorizationInfo_PermissionType "ADMIN_WRITE"

-- | Permissions that gate reading user-provided data.
pattern AuthorizationInfo_PermissionType_DATAREAD :: AuthorizationInfo_PermissionType
pattern AuthorizationInfo_PermissionType_DATAREAD = AuthorizationInfo_PermissionType "DATA_READ"

-- | Permissions that gate writing user-provided data.
pattern AuthorizationInfo_PermissionType_DATAWRITE :: AuthorizationInfo_PermissionType
pattern AuthorizationInfo_PermissionType_DATAWRITE = AuthorizationInfo_PermissionType "DATA_WRITE"

{-# COMPLETE
  AuthorizationInfo_PermissionType_PERMISSIONTYPEUNSPECIFIED,
  AuthorizationInfo_PermissionType_ADMINREAD,
  AuthorizationInfo_PermissionType_ADMINWRITE,
  AuthorizationInfo_PermissionType_DATAREAD,
  AuthorizationInfo_PermissionType_DATAWRITE,
  AuthorizationInfo_PermissionType
  #-}

-- | The severity of the log entry. The default value is @LogSeverity.DEFAULT@.
newtype V2LogEntry_Severity = V2LogEntry_Severity {fromV2LogEntry_Severity :: Core.Text}
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

-- | (0) The log entry has no assigned severity level.
pattern V2LogEntry_Severity_Default :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Default = V2LogEntry_Severity "DEFAULT"

-- | (100) Debug or trace information.
pattern V2LogEntry_Severity_Debug :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Debug = V2LogEntry_Severity "DEBUG"

-- | (200) Routine information, such as ongoing status or performance.
pattern V2LogEntry_Severity_Info :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Info = V2LogEntry_Severity "INFO"

-- | (300) Normal but significant events, such as start up, shut down, or a configuration change.
pattern V2LogEntry_Severity_Notice :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Notice = V2LogEntry_Severity "NOTICE"

-- | (400) Warning events might cause problems.
pattern V2LogEntry_Severity_Warning :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Warning = V2LogEntry_Severity "WARNING"

-- | (500) Error events are likely to cause problems.
pattern V2LogEntry_Severity_Error' :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Error' = V2LogEntry_Severity "ERROR"

-- | (600) Critical events cause more severe problems or outages.
pattern V2LogEntry_Severity_Critical :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Critical = V2LogEntry_Severity "CRITICAL"

-- | (700) A person must take an action immediately.
pattern V2LogEntry_Severity_Alert :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Alert = V2LogEntry_Severity "ALERT"

-- | (800) One or more systems are unusable.
pattern V2LogEntry_Severity_Emergency :: V2LogEntry_Severity
pattern V2LogEntry_Severity_Emergency = V2LogEntry_Severity "EMERGENCY"

{-# COMPLETE
  V2LogEntry_Severity_Default,
  V2LogEntry_Severity_Debug,
  V2LogEntry_Severity_Info,
  V2LogEntry_Severity_Notice,
  V2LogEntry_Severity_Warning,
  V2LogEntry_Severity_Error',
  V2LogEntry_Severity_Critical,
  V2LogEntry_Severity_Alert,
  V2LogEntry_Severity_Emergency,
  V2LogEntry_Severity
  #-}

-- | The api path the resource event was created in. This should match the source of the @payload@ field. For direct integrations with Chemist, this should generally be the RESPONSE. go\/resource-event-pipeline-type
newtype V2ResourceEvent_Path = V2ResourceEvent_Path {fromV2ResourceEvent_Path :: Core.Text}
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

-- | Default value. Do not use.
pattern V2ResourceEvent_Path_APIPATHUNSPECIFIED :: V2ResourceEvent_Path
pattern V2ResourceEvent_Path_APIPATHUNSPECIFIED = V2ResourceEvent_Path "API_PATH_UNSPECIFIED"

-- | The request path.
pattern V2ResourceEvent_Path_Request' :: V2ResourceEvent_Path
pattern V2ResourceEvent_Path_Request' = V2ResourceEvent_Path "REQUEST"

-- | The response path.
pattern V2ResourceEvent_Path_Response :: V2ResourceEvent_Path
pattern V2ResourceEvent_Path_Response = V2ResourceEvent_Path "RESPONSE"

{-# COMPLETE
  V2ResourceEvent_Path_APIPATHUNSPECIFIED,
  V2ResourceEvent_Path_Request',
  V2ResourceEvent_Path_Response,
  V2ResourceEvent_Path
  #-}

-- | The resource event type determines how the backend service should process the event.
newtype V2ResourceEvent_Type = V2ResourceEvent_Type {fromV2ResourceEvent_Type :: Core.Text}
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

-- | The resource event type is unclear. We do not expect any events to fall into this category.
pattern V2ResourceEvent_Type_TYPEUNSPECIFIED :: V2ResourceEvent_Type
pattern V2ResourceEvent_Type_TYPEUNSPECIFIED = V2ResourceEvent_Type "TYPE_UNSPECIFIED"

-- | The resource is created\/inserted.
pattern V2ResourceEvent_Type_Create :: V2ResourceEvent_Type
pattern V2ResourceEvent_Type_Create = V2ResourceEvent_Type "CREATE"

-- | The resource is updated.
pattern V2ResourceEvent_Type_Update :: V2ResourceEvent_Type
pattern V2ResourceEvent_Type_Update = V2ResourceEvent_Type "UPDATE"

-- | The resource is deleted.
pattern V2ResourceEvent_Type_Delete' :: V2ResourceEvent_Type
pattern V2ResourceEvent_Type_Delete' = V2ResourceEvent_Type "DELETE"

-- | The resource is un-deleted.
pattern V2ResourceEvent_Type_Undelete :: V2ResourceEvent_Type
pattern V2ResourceEvent_Type_Undelete = V2ResourceEvent_Type "UNDELETE"

{-# COMPLETE
  V2ResourceEvent_Type_TYPEUNSPECIFIED,
  V2ResourceEvent_Type_Create,
  V2ResourceEvent_Type_Update,
  V2ResourceEvent_Type_Delete',
  V2ResourceEvent_Type_Undelete,
  V2ResourceEvent_Type
  #-}

-- | Optional. Indicates the type of the policy.
newtype ViolationInfo_PolicyType = ViolationInfo_PolicyType {fromViolationInfo_PolicyType :: Core.Text}
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

-- | Default value. This value should not be used.
pattern ViolationInfo_PolicyType_POLICYTYPEUNSPECIFIED :: ViolationInfo_PolicyType
pattern ViolationInfo_PolicyType_POLICYTYPEUNSPECIFIED = ViolationInfo_PolicyType "POLICY_TYPE_UNSPECIFIED"

-- | Indicates boolean policy constraint
pattern ViolationInfo_PolicyType_BOOLEANCONSTRAINT :: ViolationInfo_PolicyType
pattern ViolationInfo_PolicyType_BOOLEANCONSTRAINT = ViolationInfo_PolicyType "BOOLEAN_CONSTRAINT"

-- | Indicates list policy constraint
pattern ViolationInfo_PolicyType_LISTCONSTRAINT :: ViolationInfo_PolicyType
pattern ViolationInfo_PolicyType_LISTCONSTRAINT = ViolationInfo_PolicyType "LIST_CONSTRAINT"

-- | Indicates custom policy constraint
pattern ViolationInfo_PolicyType_CUSTOMCONSTRAINT :: ViolationInfo_PolicyType
pattern ViolationInfo_PolicyType_CUSTOMCONSTRAINT = ViolationInfo_PolicyType "CUSTOM_CONSTRAINT"

{-# COMPLETE
  ViolationInfo_PolicyType_POLICYTYPEUNSPECIFIED,
  ViolationInfo_PolicyType_BOOLEANCONSTRAINT,
  ViolationInfo_PolicyType_LISTCONSTRAINT,
  ViolationInfo_PolicyType_CUSTOMCONSTRAINT,
  ViolationInfo_PolicyType
  #-}
