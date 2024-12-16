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
-- Module      : Gogol.SecurityCenter.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.SecurityCenter.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AssetDiscoveryConfig_InclusionMode
    AssetDiscoveryConfig_InclusionMode
      (
        AssetDiscoveryConfig_InclusionMode_INCLUSIONMODEUNSPECIFIED,
        AssetDiscoveryConfig_InclusionMode_INCLUDEONLY,
        AssetDiscoveryConfig_InclusionMode_Exclude,
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

    -- * Finding_State
    Finding_State
      (
        Finding_State_STATEUNSPECIFIED,
        Finding_State_Active,
        Finding_State_Inactive,
        ..
      ),

    -- * GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State
    GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State
      (
        GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED,
        GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Completed,
        GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Superseded,
        GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Terminated,
        ..
      ),

    -- * GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State
    GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State
      (
        GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED,
        GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Completed,
        GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Superseded,
        GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Terminated,
        ..
      ),

    -- * GoogleCloudSecuritycenterV1p1beta1Finding_Severity
    GoogleCloudSecuritycenterV1p1beta1Finding_Severity
      (
        GoogleCloudSecuritycenterV1p1beta1Finding_Severity_SEVERITYUNSPECIFIED,
        GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Critical,
        GoogleCloudSecuritycenterV1p1beta1Finding_Severity_High,
        GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Medium,
        GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Low,
        ..
      ),

    -- * GoogleCloudSecuritycenterV1p1beta1Finding_State
    GoogleCloudSecuritycenterV1p1beta1Finding_State
      (
        GoogleCloudSecuritycenterV1p1beta1Finding_State_STATEUNSPECIFIED,
        GoogleCloudSecuritycenterV1p1beta1Finding_State_Active,
        GoogleCloudSecuritycenterV1p1beta1Finding_State_Inactive,
        ..
      ),

    -- * GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State
    GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State
      (
        GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED,
        GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Completed,
        GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Superseded,
        GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Terminated,
        ..
      ),

    -- * GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType
    GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType
      (
        GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_CHANGETYPEUNSPECIFIED,
        GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Created,
        GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Updated,
        GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Deleted,
        ..
      ),

    -- * ListAssetsResult_StateChange
    ListAssetsResult_StateChange
      (
        ListAssetsResult_StateChange_Unused,
        ListAssetsResult_StateChange_Added,
        ListAssetsResult_StateChange_Removed,
        ListAssetsResult_StateChange_Active,
        ..
      ),

    -- * ListFindingsResult_StateChange
    ListFindingsResult_StateChange
      (
        ListFindingsResult_StateChange_Unused,
        ListFindingsResult_StateChange_Changed,
        ListFindingsResult_StateChange_Unchanged,
        ListFindingsResult_StateChange_Added,
        ListFindingsResult_StateChange_Removed,
        ..
      ),

    -- * NotificationConfig_EventType
    NotificationConfig_EventType
      (
        NotificationConfig_EventType_EVENTTYPEUNSPECIFIED,
        NotificationConfig_EventType_Finding,
        ..
      ),

    -- * SetFindingStateRequest_State
    SetFindingStateRequest_State
      (
        SetFindingStateRequest_State_STATEUNSPECIFIED,
        SetFindingStateRequest_State_Active,
        SetFindingStateRequest_State_Inactive,
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

-- | The mode to use for filtering asset discovery.
newtype AssetDiscoveryConfig_InclusionMode = AssetDiscoveryConfig_InclusionMode { fromAssetDiscoveryConfig_InclusionMode :: Core.Text }
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

-- | Unspecified. Setting the mode with this value will disable inclusion\/exclusion filtering for Asset Discovery.
pattern AssetDiscoveryConfig_InclusionMode_INCLUSIONMODEUNSPECIFIED :: AssetDiscoveryConfig_InclusionMode
pattern AssetDiscoveryConfig_InclusionMode_INCLUSIONMODEUNSPECIFIED = AssetDiscoveryConfig_InclusionMode "INCLUSION_MODE_UNSPECIFIED"

-- | Asset Discovery will capture only the resources within the projects specified. All other resources will be ignored.
pattern AssetDiscoveryConfig_InclusionMode_INCLUDEONLY :: AssetDiscoveryConfig_InclusionMode
pattern AssetDiscoveryConfig_InclusionMode_INCLUDEONLY = AssetDiscoveryConfig_InclusionMode "INCLUDE_ONLY"

-- | Asset Discovery will ignore all resources under the projects specified. All other resources will be retrieved.
pattern AssetDiscoveryConfig_InclusionMode_Exclude :: AssetDiscoveryConfig_InclusionMode
pattern AssetDiscoveryConfig_InclusionMode_Exclude = AssetDiscoveryConfig_InclusionMode "EXCLUDE"

{-# COMPLETE
  AssetDiscoveryConfig_InclusionMode_INCLUSIONMODEUNSPECIFIED,
  AssetDiscoveryConfig_InclusionMode_INCLUDEONLY,
  AssetDiscoveryConfig_InclusionMode_Exclude,
  AssetDiscoveryConfig_InclusionMode #-}

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

-- | The state of the finding.
newtype Finding_State = Finding_State { fromFinding_State :: Core.Text }
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

-- | Unspecified state.
pattern Finding_State_STATEUNSPECIFIED :: Finding_State
pattern Finding_State_STATEUNSPECIFIED = Finding_State "STATE_UNSPECIFIED"

-- | The finding requires attention and has not been addressed yet.
pattern Finding_State_Active :: Finding_State
pattern Finding_State_Active = Finding_State "ACTIVE"

-- | The finding has been fixed, triaged as a non-issue or otherwise addressed and is no longer active.
pattern Finding_State_Inactive :: Finding_State
pattern Finding_State_Inactive = Finding_State "INACTIVE"

{-# COMPLETE
  Finding_State_STATEUNSPECIFIED,
  Finding_State_Active,
  Finding_State_Inactive,
  Finding_State #-}

-- | The state of an asset discovery run.
newtype GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State = GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State { fromGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State :: Core.Text }
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

-- | Asset discovery run state was unspecified.
pattern GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED :: GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED = GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State "STATE_UNSPECIFIED"

-- | Asset discovery run completed successfully.
pattern GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Completed :: GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Completed = GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State "COMPLETED"

-- | Asset discovery run was cancelled with tasks still pending, as another run for the same organization was started with a higher priority.
pattern GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Superseded :: GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Superseded = GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State "SUPERSEDED"

-- | Asset discovery run was killed and terminated.
pattern GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Terminated :: GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Terminated = GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State "TERMINATED"

{-# COMPLETE
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED,
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Completed,
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Superseded,
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State_Terminated,
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State #-}

-- | The state of an asset discovery run.
newtype GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State = GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State { fromGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State :: Core.Text }
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

-- | Asset discovery run state was unspecified.
pattern GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED :: GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED = GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State "STATE_UNSPECIFIED"

-- | Asset discovery run completed successfully.
pattern GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Completed :: GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Completed = GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State "COMPLETED"

-- | Asset discovery run was cancelled with tasks still pending, as another run for the same organization was started with a higher priority.
pattern GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Superseded :: GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Superseded = GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State "SUPERSEDED"

-- | Asset discovery run was killed and terminated.
pattern GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Terminated :: GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Terminated = GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State "TERMINATED"

{-# COMPLETE
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED,
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Completed,
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Superseded,
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State_Terminated,
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State #-}

-- | The severity of the finding.
newtype GoogleCloudSecuritycenterV1p1beta1Finding_Severity = GoogleCloudSecuritycenterV1p1beta1Finding_Severity { fromGoogleCloudSecuritycenterV1p1beta1Finding_Severity :: Core.Text }
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

-- | No severity specified. The default value.
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_SEVERITYUNSPECIFIED :: GoogleCloudSecuritycenterV1p1beta1Finding_Severity
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_SEVERITYUNSPECIFIED = GoogleCloudSecuritycenterV1p1beta1Finding_Severity "SEVERITY_UNSPECIFIED"

-- | Critical severity.
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Critical :: GoogleCloudSecuritycenterV1p1beta1Finding_Severity
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Critical = GoogleCloudSecuritycenterV1p1beta1Finding_Severity "CRITICAL"

-- | High severity.
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_High :: GoogleCloudSecuritycenterV1p1beta1Finding_Severity
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_High = GoogleCloudSecuritycenterV1p1beta1Finding_Severity "HIGH"

-- | Medium severity.
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Medium :: GoogleCloudSecuritycenterV1p1beta1Finding_Severity
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Medium = GoogleCloudSecuritycenterV1p1beta1Finding_Severity "MEDIUM"

-- | Low severity.
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Low :: GoogleCloudSecuritycenterV1p1beta1Finding_Severity
pattern GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Low = GoogleCloudSecuritycenterV1p1beta1Finding_Severity "LOW"

{-# COMPLETE
  GoogleCloudSecuritycenterV1p1beta1Finding_Severity_SEVERITYUNSPECIFIED,
  GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Critical,
  GoogleCloudSecuritycenterV1p1beta1Finding_Severity_High,
  GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Medium,
  GoogleCloudSecuritycenterV1p1beta1Finding_Severity_Low,
  GoogleCloudSecuritycenterV1p1beta1Finding_Severity #-}

-- | The state of the finding.
newtype GoogleCloudSecuritycenterV1p1beta1Finding_State = GoogleCloudSecuritycenterV1p1beta1Finding_State { fromGoogleCloudSecuritycenterV1p1beta1Finding_State :: Core.Text }
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

-- | Unspecified state.
pattern GoogleCloudSecuritycenterV1p1beta1Finding_State_STATEUNSPECIFIED :: GoogleCloudSecuritycenterV1p1beta1Finding_State
pattern GoogleCloudSecuritycenterV1p1beta1Finding_State_STATEUNSPECIFIED = GoogleCloudSecuritycenterV1p1beta1Finding_State "STATE_UNSPECIFIED"

-- | The finding requires attention and has not been addressed yet.
pattern GoogleCloudSecuritycenterV1p1beta1Finding_State_Active :: GoogleCloudSecuritycenterV1p1beta1Finding_State
pattern GoogleCloudSecuritycenterV1p1beta1Finding_State_Active = GoogleCloudSecuritycenterV1p1beta1Finding_State "ACTIVE"

-- | The finding has been fixed, triaged as a non-issue or otherwise addressed and is no longer active.
pattern GoogleCloudSecuritycenterV1p1beta1Finding_State_Inactive :: GoogleCloudSecuritycenterV1p1beta1Finding_State
pattern GoogleCloudSecuritycenterV1p1beta1Finding_State_Inactive = GoogleCloudSecuritycenterV1p1beta1Finding_State "INACTIVE"

{-# COMPLETE
  GoogleCloudSecuritycenterV1p1beta1Finding_State_STATEUNSPECIFIED,
  GoogleCloudSecuritycenterV1p1beta1Finding_State_Active,
  GoogleCloudSecuritycenterV1p1beta1Finding_State_Inactive,
  GoogleCloudSecuritycenterV1p1beta1Finding_State #-}

-- | The state of an asset discovery run.
newtype GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State = GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State { fromGoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State :: Core.Text }
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

-- | Asset discovery run state was unspecified.
pattern GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED :: GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED = GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State "STATE_UNSPECIFIED"

-- | Asset discovery run completed successfully.
pattern GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Completed :: GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Completed = GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State "COMPLETED"

-- | Asset discovery run was cancelled with tasks still pending, as another run for the same organization was started with a higher priority.
pattern GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Superseded :: GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Superseded = GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State "SUPERSEDED"

-- | Asset discovery run was killed and terminated.
pattern GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Terminated :: GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State
pattern GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Terminated = GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State "TERMINATED"

{-# COMPLETE
  GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_STATEUNSPECIFIED,
  GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Completed,
  GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Superseded,
  GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State_Terminated,
  GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State #-}

-- | Represents if the asset was created\/updated\/deleted.
newtype GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType = GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType { fromGoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType :: Core.Text }
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

-- | Unspecified or default.
pattern GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_CHANGETYPEUNSPECIFIED :: GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType
pattern GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_CHANGETYPEUNSPECIFIED = GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType "CHANGE_TYPE_UNSPECIFIED"

-- | Newly created Asset
pattern GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Created :: GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType
pattern GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Created = GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType "CREATED"

-- | Asset was updated.
pattern GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Updated :: GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType
pattern GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Updated = GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType "UPDATED"

-- | Asset was deleted.
pattern GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Deleted :: GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType
pattern GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Deleted = GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType "DELETED"

{-# COMPLETE
  GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_CHANGETYPEUNSPECIFIED,
  GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Created,
  GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Updated,
  GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType_Deleted,
  GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType #-}

-- | State change of the asset between the points in time.
newtype ListAssetsResult_StateChange = ListAssetsResult_StateChange { fromListAssetsResult_StateChange :: Core.Text }
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

-- | State change is unused, this is the canonical default for this enum.
pattern ListAssetsResult_StateChange_Unused :: ListAssetsResult_StateChange
pattern ListAssetsResult_StateChange_Unused = ListAssetsResult_StateChange "UNUSED"

-- | Asset was added between the points in time.
pattern ListAssetsResult_StateChange_Added :: ListAssetsResult_StateChange
pattern ListAssetsResult_StateChange_Added = ListAssetsResult_StateChange "ADDED"

-- | Asset was removed between the points in time.
pattern ListAssetsResult_StateChange_Removed :: ListAssetsResult_StateChange
pattern ListAssetsResult_StateChange_Removed = ListAssetsResult_StateChange "REMOVED"

-- | Asset was present at both point(s) in time.
pattern ListAssetsResult_StateChange_Active :: ListAssetsResult_StateChange
pattern ListAssetsResult_StateChange_Active = ListAssetsResult_StateChange "ACTIVE"

{-# COMPLETE
  ListAssetsResult_StateChange_Unused,
  ListAssetsResult_StateChange_Added,
  ListAssetsResult_StateChange_Removed,
  ListAssetsResult_StateChange_Active,
  ListAssetsResult_StateChange #-}

-- | State change of the finding between the points in time.
newtype ListFindingsResult_StateChange = ListFindingsResult_StateChange { fromListFindingsResult_StateChange :: Core.Text }
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

-- | State change is unused, this is the canonical default for this enum.
pattern ListFindingsResult_StateChange_Unused :: ListFindingsResult_StateChange
pattern ListFindingsResult_StateChange_Unused = ListFindingsResult_StateChange "UNUSED"

-- | The finding has changed state in some way between the points in time and existed at both points.
pattern ListFindingsResult_StateChange_Changed :: ListFindingsResult_StateChange
pattern ListFindingsResult_StateChange_Changed = ListFindingsResult_StateChange "CHANGED"

-- | The finding has not changed state between the points in time and existed at both points.
pattern ListFindingsResult_StateChange_Unchanged :: ListFindingsResult_StateChange
pattern ListFindingsResult_StateChange_Unchanged = ListFindingsResult_StateChange "UNCHANGED"

-- | The finding was created between the points in time.
pattern ListFindingsResult_StateChange_Added :: ListFindingsResult_StateChange
pattern ListFindingsResult_StateChange_Added = ListFindingsResult_StateChange "ADDED"

-- | The finding at timestamp does not match the filter specified, but it did at timestamp - compare_duration.
pattern ListFindingsResult_StateChange_Removed :: ListFindingsResult_StateChange
pattern ListFindingsResult_StateChange_Removed = ListFindingsResult_StateChange "REMOVED"

{-# COMPLETE
  ListFindingsResult_StateChange_Unused,
  ListFindingsResult_StateChange_Changed,
  ListFindingsResult_StateChange_Unchanged,
  ListFindingsResult_StateChange_Added,
  ListFindingsResult_StateChange_Removed,
  ListFindingsResult_StateChange #-}

-- | The type of events the config is for, e.g. FINDING.
newtype NotificationConfig_EventType = NotificationConfig_EventType { fromNotificationConfig_EventType :: Core.Text }
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

-- | Unspecified event type.
pattern NotificationConfig_EventType_EVENTTYPEUNSPECIFIED :: NotificationConfig_EventType
pattern NotificationConfig_EventType_EVENTTYPEUNSPECIFIED = NotificationConfig_EventType "EVENT_TYPE_UNSPECIFIED"

-- | Events for findings.
pattern NotificationConfig_EventType_Finding :: NotificationConfig_EventType
pattern NotificationConfig_EventType_Finding = NotificationConfig_EventType "FINDING"

{-# COMPLETE
  NotificationConfig_EventType_EVENTTYPEUNSPECIFIED,
  NotificationConfig_EventType_Finding,
  NotificationConfig_EventType #-}

-- | Required. The desired State of the finding.
newtype SetFindingStateRequest_State = SetFindingStateRequest_State { fromSetFindingStateRequest_State :: Core.Text }
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

-- | Unspecified state.
pattern SetFindingStateRequest_State_STATEUNSPECIFIED :: SetFindingStateRequest_State
pattern SetFindingStateRequest_State_STATEUNSPECIFIED = SetFindingStateRequest_State "STATE_UNSPECIFIED"

-- | The finding requires attention and has not been addressed yet.
pattern SetFindingStateRequest_State_Active :: SetFindingStateRequest_State
pattern SetFindingStateRequest_State_Active = SetFindingStateRequest_State "ACTIVE"

-- | The finding has been fixed, triaged as a non-issue or otherwise addressed and is no longer active.
pattern SetFindingStateRequest_State_Inactive :: SetFindingStateRequest_State
pattern SetFindingStateRequest_State_Inactive = SetFindingStateRequest_State "INACTIVE"

{-# COMPLETE
  SetFindingStateRequest_State_STATEUNSPECIFIED,
  SetFindingStateRequest_State_Active,
  SetFindingStateRequest_State_Inactive,
  SetFindingStateRequest_State #-}
