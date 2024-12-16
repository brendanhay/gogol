{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DataFusion.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DataFusion.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Accelerator_AcceleratorType
    Accelerator_AcceleratorType
      (
        Accelerator_AcceleratorType_ACCELERATORTYPEUNSPECIFIED,
        Accelerator_AcceleratorType_Cdc,
        Accelerator_AcceleratorType_Healthcare,
        Accelerator_AcceleratorType_CCAIINSIGHTS,
        Accelerator_AcceleratorType_Cloudsearch,
        ..
      ),

    -- * Accelerator_State
    Accelerator_State
      (
        Accelerator_State_STATEUNSPECIFIED,
        Accelerator_State_Enabled,
        Accelerator_State_Disabled,
        Accelerator_State_Unknown,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      (
        AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * Instance_DisabledReasonItem
    Instance_DisabledReasonItem
      (
        Instance_DisabledReasonItem_DISABLEDREASONUNSPECIFIED,
        Instance_DisabledReasonItem_KMSKEYISSUE,
        ..
      ),

    -- * Instance_State
    Instance_State
      (
        Instance_State_STATEUNSPECIFIED,
        Instance_State_Creating,
        Instance_State_Active,
        Instance_State_Failed,
        Instance_State_Deleting,
        Instance_State_Upgrading,
        Instance_State_Restarting,
        Instance_State_Updating,
        Instance_State_AUTOUPDATING,
        Instance_State_AUTOUPGRADING,
        Instance_State_Disabled,
        ..
      ),

    -- * Instance_Type
    Instance_Type
      (
        Instance_Type_TYPEUNSPECIFIED,
        Instance_Type_Basic,
        Instance_Type_Enterprise,
        Instance_Type_Developer,
        ..
      ),

    -- * NetworkConfig_ConnectionType
    NetworkConfig_ConnectionType
      (
        NetworkConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
        NetworkConfig_ConnectionType_VPCPEERING,
        NetworkConfig_ConnectionType_PRIVATESERVICECONNECTINTERFACES,
        ..
      ),

    -- * Version_Type
    Version_Type
      (
        Version_Type_TYPEUNSPECIFIED,
        Version_Type_TYPEPREVIEW,
        Version_Type_TYPEGENERALAVAILABILITY,
        Version_Type_TYPEDEPRECATED,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Optional. The type of an accelator for a Cloud Data Fusion instance.
newtype Accelerator_AcceleratorType = Accelerator_AcceleratorType { fromAccelerator_AcceleratorType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value, if unspecified.
pattern Accelerator_AcceleratorType_ACCELERATORTYPEUNSPECIFIED :: Accelerator_AcceleratorType
pattern Accelerator_AcceleratorType_ACCELERATORTYPEUNSPECIFIED = Accelerator_AcceleratorType "ACCELERATOR_TYPE_UNSPECIFIED"

-- | Change Data Capture accelerator for Cloud Data Fusion.
pattern Accelerator_AcceleratorType_Cdc :: Accelerator_AcceleratorType
pattern Accelerator_AcceleratorType_Cdc = Accelerator_AcceleratorType "CDC"

-- | Reserved for internal use.
pattern Accelerator_AcceleratorType_Healthcare :: Accelerator_AcceleratorType
pattern Accelerator_AcceleratorType_Healthcare = Accelerator_AcceleratorType "HEALTHCARE"

-- | Contact Center AI Insights This accelerator is used to enable import and export pipelines custom built to streamline CCAI Insights processing.
pattern Accelerator_AcceleratorType_CCAIINSIGHTS :: Accelerator_AcceleratorType
pattern Accelerator_AcceleratorType_CCAIINSIGHTS = Accelerator_AcceleratorType "CCAI_INSIGHTS"

-- | Reserved for internal use.
pattern Accelerator_AcceleratorType_Cloudsearch :: Accelerator_AcceleratorType
pattern Accelerator_AcceleratorType_Cloudsearch = Accelerator_AcceleratorType "CLOUDSEARCH"

{-# COMPLETE
  Accelerator_AcceleratorType_ACCELERATORTYPEUNSPECIFIED,
  Accelerator_AcceleratorType_Cdc,
  Accelerator_AcceleratorType_Healthcare,
  Accelerator_AcceleratorType_CCAIINSIGHTS,
  Accelerator_AcceleratorType_Cloudsearch,
  Accelerator_AcceleratorType #-}

-- | Output only. The state of the accelerator.
newtype Accelerator_State = Accelerator_State { fromAccelerator_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value, do not use.
pattern Accelerator_State_STATEUNSPECIFIED :: Accelerator_State
pattern Accelerator_State_STATEUNSPECIFIED = Accelerator_State "STATE_UNSPECIFIED"

-- | Indicates that the accelerator is enabled and available to use.
pattern Accelerator_State_Enabled :: Accelerator_State
pattern Accelerator_State_Enabled = Accelerator_State "ENABLED"

-- | Indicates that the accelerator is disabled and not available to use.
pattern Accelerator_State_Disabled :: Accelerator_State
pattern Accelerator_State_Disabled = Accelerator_State "DISABLED"

-- | Indicates that accelerator state is currently unknown. Requests for enable, disable could be retried while in this state.
pattern Accelerator_State_Unknown :: Accelerator_State
pattern Accelerator_State_Unknown = Accelerator_State "UNKNOWN"

{-# COMPLETE
  Accelerator_State_STATEUNSPECIFIED,
  Accelerator_State_Enabled,
  Accelerator_State_Disabled,
  Accelerator_State_Unknown,
  Accelerator_State #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType { fromAuditLogConfig_LogType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType #-}

newtype Instance_DisabledReasonItem = Instance_DisabledReasonItem { fromInstance_DisabledReasonItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | This is an unknown reason for disabling.
pattern Instance_DisabledReasonItem_DISABLEDREASONUNSPECIFIED :: Instance_DisabledReasonItem
pattern Instance_DisabledReasonItem_DISABLEDREASONUNSPECIFIED = Instance_DisabledReasonItem "DISABLED_REASON_UNSPECIFIED"

-- | The KMS key used by the instance is either revoked or denied access to
pattern Instance_DisabledReasonItem_KMSKEYISSUE :: Instance_DisabledReasonItem
pattern Instance_DisabledReasonItem_KMSKEYISSUE = Instance_DisabledReasonItem "KMS_KEY_ISSUE"

{-# COMPLETE
  Instance_DisabledReasonItem_DISABLEDREASONUNSPECIFIED,
  Instance_DisabledReasonItem_KMSKEYISSUE,
  Instance_DisabledReasonItem #-}

-- | Output only. The current state of this Data Fusion instance.
newtype Instance_State = Instance_State { fromInstance_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Instance does not have a state yet
pattern Instance_State_STATEUNSPECIFIED :: Instance_State
pattern Instance_State_STATEUNSPECIFIED = Instance_State "STATE_UNSPECIFIED"

-- | Instance is being created
pattern Instance_State_Creating :: Instance_State
pattern Instance_State_Creating = Instance_State "CREATING"

-- | Instance is active and ready for requests. This corresponds to \'RUNNING\' in datafusion.v1beta1.
pattern Instance_State_Active :: Instance_State
pattern Instance_State_Active = Instance_State "ACTIVE"

-- | Instance creation failed
pattern Instance_State_Failed :: Instance_State
pattern Instance_State_Failed = Instance_State "FAILED"

-- | Instance is being deleted
pattern Instance_State_Deleting :: Instance_State
pattern Instance_State_Deleting = Instance_State "DELETING"

-- | Instance is being upgraded
pattern Instance_State_Upgrading :: Instance_State
pattern Instance_State_Upgrading = Instance_State "UPGRADING"

-- | Instance is being restarted
pattern Instance_State_Restarting :: Instance_State
pattern Instance_State_Restarting = Instance_State "RESTARTING"

-- | Instance is being updated on customer request
pattern Instance_State_Updating :: Instance_State
pattern Instance_State_Updating = Instance_State "UPDATING"

-- | Instance is being auto-updated
pattern Instance_State_AUTOUPDATING :: Instance_State
pattern Instance_State_AUTOUPDATING = Instance_State "AUTO_UPDATING"

-- | Instance is being auto-upgraded
pattern Instance_State_AUTOUPGRADING :: Instance_State
pattern Instance_State_AUTOUPGRADING = Instance_State "AUTO_UPGRADING"

-- | Instance is disabled
pattern Instance_State_Disabled :: Instance_State
pattern Instance_State_Disabled = Instance_State "DISABLED"

{-# COMPLETE
  Instance_State_STATEUNSPECIFIED,
  Instance_State_Creating,
  Instance_State_Active,
  Instance_State_Failed,
  Instance_State_Deleting,
  Instance_State_Upgrading,
  Instance_State_Restarting,
  Instance_State_Updating,
  Instance_State_AUTOUPDATING,
  Instance_State_AUTOUPGRADING,
  Instance_State_Disabled,
  Instance_State #-}

-- | Required. Instance type.
newtype Instance_Type = Instance_Type { fromInstance_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No type specified. The instance creation will fail.
pattern Instance_Type_TYPEUNSPECIFIED :: Instance_Type
pattern Instance_Type_TYPEUNSPECIFIED = Instance_Type "TYPE_UNSPECIFIED"

-- | Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines using point and click UI. However, there are certain limitations, such as fewer number of concurrent pipelines, no support for streaming pipelines, etc.
pattern Instance_Type_Basic :: Instance_Type
pattern Instance_Type_Basic = Instance_Type "BASIC"

-- | Enterprise Data Fusion instance. In Enterprise type, the user will have all features available, such as support for streaming pipelines, higher number of concurrent pipelines, etc.
pattern Instance_Type_Enterprise :: Instance_Type
pattern Instance_Type_Enterprise = Instance_Type "ENTERPRISE"

-- | Developer Data Fusion instance. In Developer type, the user will have all features available but with restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration pipelines at low cost.
pattern Instance_Type_Developer :: Instance_Type
pattern Instance_Type_Developer = Instance_Type "DEVELOPER"

{-# COMPLETE
  Instance_Type_TYPEUNSPECIFIED,
  Instance_Type_Basic,
  Instance_Type_Enterprise,
  Instance_Type_Developer,
  Instance_Type #-}

-- | Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and the corresponding tenant project from a predefined list of available connection modes. If this field is unspecified for a private instance, VPC peering is used.
newtype NetworkConfig_ConnectionType = NetworkConfig_ConnectionType { fromNetworkConfig_ConnectionType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No specific connection type was requested, the default value of VPC_PEERING is chosen.
pattern NetworkConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED :: NetworkConfig_ConnectionType
pattern NetworkConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED = NetworkConfig_ConnectionType "CONNECTION_TYPE_UNSPECIFIED"

-- | Requests the use of VPC peerings for connecting the consumer and tenant projects.
pattern NetworkConfig_ConnectionType_VPCPEERING :: NetworkConfig_ConnectionType
pattern NetworkConfig_ConnectionType_VPCPEERING = NetworkConfig_ConnectionType "VPC_PEERING"

-- | Requests the use of Private Service Connect Interfaces for connecting the consumer and tenant projects.
pattern NetworkConfig_ConnectionType_PRIVATESERVICECONNECTINTERFACES :: NetworkConfig_ConnectionType
pattern NetworkConfig_ConnectionType_PRIVATESERVICECONNECTINTERFACES = NetworkConfig_ConnectionType "PRIVATE_SERVICE_CONNECT_INTERFACES"

{-# COMPLETE
  NetworkConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
  NetworkConfig_ConnectionType_VPCPEERING,
  NetworkConfig_ConnectionType_PRIVATESERVICECONNECTINTERFACES,
  NetworkConfig_ConnectionType #-}

-- | Type represents the release availability of the version
newtype Version_Type = Version_Type { fromVersion_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Version does not have availability yet
pattern Version_Type_TYPEUNSPECIFIED :: Version_Type
pattern Version_Type_TYPEUNSPECIFIED = Version_Type "TYPE_UNSPECIFIED"

-- | Version is under development and not considered stable
pattern Version_Type_TYPEPREVIEW :: Version_Type
pattern Version_Type_TYPEPREVIEW = Version_Type "TYPE_PREVIEW"

-- | Version is available for public use
pattern Version_Type_TYPEGENERALAVAILABILITY :: Version_Type
pattern Version_Type_TYPEGENERALAVAILABILITY = Version_Type "TYPE_GENERAL_AVAILABILITY"

-- | Version is no longer supported.
pattern Version_Type_TYPEDEPRECATED :: Version_Type
pattern Version_Type_TYPEDEPRECATED = Version_Type "TYPE_DEPRECATED"

{-# COMPLETE
  Version_Type_TYPEUNSPECIFIED,
  Version_Type_TYPEPREVIEW,
  Version_Type_TYPEGENERALAVAILABILITY,
  Version_Type_TYPEDEPRECATED,
  Version_Type #-}
