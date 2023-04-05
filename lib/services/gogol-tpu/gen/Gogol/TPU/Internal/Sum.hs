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
-- Module      : Gogol.TPU.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.TPU.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AcceleratorConfig_Type
    AcceleratorConfig_Type
      ( AcceleratorConfig_Type_TYPEUNSPECIFIED,
        AcceleratorConfig_Type_V2,
        AcceleratorConfig_Type_V3,
        AcceleratorConfig_Type_V4,
        ..
      ),

    -- * AttachedDisk_Mode
    AttachedDisk_Mode
      ( AttachedDisk_Mode_DISKMODEUNSPECIFIED,
        AttachedDisk_Mode_READWRITE,
        AttachedDisk_Mode_READONLY,
        ..
      ),

    -- * Node_ApiVersion
    Node_ApiVersion
      ( Node_ApiVersion_APIVERSIONUNSPECIFIED,
        Node_ApiVersion_V1_ALPHA1,
        Node_ApiVersion_V1,
        Node_ApiVersion_V2_ALPHA1,
        Node_ApiVersion_V2,
        ..
      ),

    -- * Node_Health
    Node_Health
      ( Node_Health_HEALTHUNSPECIFIED,
        Node_Health_Healthy,
        Node_Health_Timeout,
        Node_Health_UNHEALTHYTENSORFLOW,
        Node_Health_UNHEALTHYMAINTENANCE,
        ..
      ),

    -- * Node_State
    Node_State
      ( Node_State_STATEUNSPECIFIED,
        Node_State_Creating,
        Node_State_Ready,
        Node_State_Restarting,
        Node_State_Reimaging,
        Node_State_Deleting,
        Node_State_Repairing,
        Node_State_Stopped,
        Node_State_Stopping,
        Node_State_Starting,
        Node_State_Preempted,
        Node_State_Terminated,
        Node_State_Hiding,
        Node_State_Hidden,
        Node_State_Unhiding,
        ..
      ),

    -- * Symptom_SymptomType
    Symptom_SymptomType
      ( Symptom_SymptomType_SYMPTOMTYPEUNSPECIFIED,
        Symptom_SymptomType_LOWMEMORY,
        Symptom_SymptomType_OUTOFMEMORY,
        Symptom_SymptomType_EXECUTETIMEDOUT,
        Symptom_SymptomType_MESHBUILDFAIL,
        Symptom_SymptomType_HBMOUTOFMEMORY,
        Symptom_SymptomType_PROJECTABUSE,
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

-- | Required. Type of TPU.
newtype AcceleratorConfig_Type = AcceleratorConfig_Type {fromAcceleratorConfig_Type :: Core.Text}
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

-- | Unspecified version.
pattern AcceleratorConfig_Type_TYPEUNSPECIFIED :: AcceleratorConfig_Type
pattern AcceleratorConfig_Type_TYPEUNSPECIFIED = AcceleratorConfig_Type "TYPE_UNSPECIFIED"

-- | TPU v2.
pattern AcceleratorConfig_Type_V2 :: AcceleratorConfig_Type
pattern AcceleratorConfig_Type_V2 = AcceleratorConfig_Type "V2"

-- | TPU v3.
pattern AcceleratorConfig_Type_V3 :: AcceleratorConfig_Type
pattern AcceleratorConfig_Type_V3 = AcceleratorConfig_Type "V3"

-- | TPU v4.
pattern AcceleratorConfig_Type_V4 :: AcceleratorConfig_Type
pattern AcceleratorConfig_Type_V4 = AcceleratorConfig_Type "V4"

{-# COMPLETE
  AcceleratorConfig_Type_TYPEUNSPECIFIED,
  AcceleratorConfig_Type_V2,
  AcceleratorConfig_Type_V3,
  AcceleratorConfig_Type_V4,
  AcceleratorConfig_Type
  #-}

-- | The mode in which to attach this disk. If not specified, the default is READ/WRITE mode. Only applicable to data/disks.
newtype AttachedDisk_Mode = AttachedDisk_Mode {fromAttachedDisk_Mode :: Core.Text}
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

-- | The disk mode is not known\/set.
pattern AttachedDisk_Mode_DISKMODEUNSPECIFIED :: AttachedDisk_Mode
pattern AttachedDisk_Mode_DISKMODEUNSPECIFIED = AttachedDisk_Mode "DISK_MODE_UNSPECIFIED"

-- | Attaches the disk in read-write mode. Only one TPU node can attach a disk in read-write mode at a time.
pattern AttachedDisk_Mode_READWRITE :: AttachedDisk_Mode
pattern AttachedDisk_Mode_READWRITE = AttachedDisk_Mode "READ_WRITE"

-- | Attaches the disk in read-only mode. Multiple TPU nodes can attach a disk in read-only mode at a time.
pattern AttachedDisk_Mode_READONLY :: AttachedDisk_Mode
pattern AttachedDisk_Mode_READONLY = AttachedDisk_Mode "READ_ONLY"

{-# COMPLETE
  AttachedDisk_Mode_DISKMODEUNSPECIFIED,
  AttachedDisk_Mode_READWRITE,
  AttachedDisk_Mode_READONLY,
  AttachedDisk_Mode
  #-}

-- | Output only. The API version that created this Node.
newtype Node_ApiVersion = Node_ApiVersion {fromNode_ApiVersion :: Core.Text}
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

-- | API version is unknown.
pattern Node_ApiVersion_APIVERSIONUNSPECIFIED :: Node_ApiVersion
pattern Node_ApiVersion_APIVERSIONUNSPECIFIED = Node_ApiVersion "API_VERSION_UNSPECIFIED"

-- | TPU API V1Alpha1 version.
pattern Node_ApiVersion_V1_ALPHA1 :: Node_ApiVersion
pattern Node_ApiVersion_V1_ALPHA1 = Node_ApiVersion "V1_ALPHA1"

-- | TPU API V1 version.
pattern Node_ApiVersion_V1 :: Node_ApiVersion
pattern Node_ApiVersion_V1 = Node_ApiVersion "V1"

-- | TPU API V2Alpha1 version.
pattern Node_ApiVersion_V2_ALPHA1 :: Node_ApiVersion
pattern Node_ApiVersion_V2_ALPHA1 = Node_ApiVersion "V2_ALPHA1"

-- | TPU API V2 version.
pattern Node_ApiVersion_V2 :: Node_ApiVersion
pattern Node_ApiVersion_V2 = Node_ApiVersion "V2"

{-# COMPLETE
  Node_ApiVersion_APIVERSIONUNSPECIFIED,
  Node_ApiVersion_V1_ALPHA1,
  Node_ApiVersion_V1,
  Node_ApiVersion_V2_ALPHA1,
  Node_ApiVersion_V2,
  Node_ApiVersion
  #-}

-- | The health status of the TPU node.
newtype Node_Health = Node_Health {fromNode_Health :: Core.Text}
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

-- | Health status is unknown: not initialized or failed to retrieve.
pattern Node_Health_HEALTHUNSPECIFIED :: Node_Health
pattern Node_Health_HEALTHUNSPECIFIED = Node_Health "HEALTH_UNSPECIFIED"

-- | The resource is healthy.
pattern Node_Health_Healthy :: Node_Health
pattern Node_Health_Healthy = Node_Health "HEALTHY"

-- | The resource is unresponsive.
pattern Node_Health_Timeout :: Node_Health
pattern Node_Health_Timeout = Node_Health "TIMEOUT"

-- | The in-guest ML stack is unhealthy.
pattern Node_Health_UNHEALTHYTENSORFLOW :: Node_Health
pattern Node_Health_UNHEALTHYTENSORFLOW = Node_Health "UNHEALTHY_TENSORFLOW"

-- | The node is under maintenance\/priority boost caused rescheduling and will resume running once rescheduled.
pattern Node_Health_UNHEALTHYMAINTENANCE :: Node_Health
pattern Node_Health_UNHEALTHYMAINTENANCE = Node_Health "UNHEALTHY_MAINTENANCE"

{-# COMPLETE
  Node_Health_HEALTHUNSPECIFIED,
  Node_Health_Healthy,
  Node_Health_Timeout,
  Node_Health_UNHEALTHYTENSORFLOW,
  Node_Health_UNHEALTHYMAINTENANCE,
  Node_Health
  #-}

-- | Output only. The current state for the TPU Node.
newtype Node_State = Node_State {fromNode_State :: Core.Text}
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

-- | TPU node state is not known\/set.
pattern Node_State_STATEUNSPECIFIED :: Node_State
pattern Node_State_STATEUNSPECIFIED = Node_State "STATE_UNSPECIFIED"

-- | TPU node is being created.
pattern Node_State_Creating :: Node_State
pattern Node_State_Creating = Node_State "CREATING"

-- | TPU node has been created.
pattern Node_State_Ready :: Node_State
pattern Node_State_Ready = Node_State "READY"

-- | TPU node is restarting.
pattern Node_State_Restarting :: Node_State
pattern Node_State_Restarting = Node_State "RESTARTING"

-- | TPU node is undergoing reimaging.
pattern Node_State_Reimaging :: Node_State
pattern Node_State_Reimaging = Node_State "REIMAGING"

-- | TPU node is being deleted.
pattern Node_State_Deleting :: Node_State
pattern Node_State_Deleting = Node_State "DELETING"

-- | TPU node is being repaired and may be unusable. Details can be found in the @help_description@ field.
pattern Node_State_Repairing :: Node_State
pattern Node_State_Repairing = Node_State "REPAIRING"

-- | TPU node is stopped.
pattern Node_State_Stopped :: Node_State
pattern Node_State_Stopped = Node_State "STOPPED"

-- | TPU node is currently stopping.
pattern Node_State_Stopping :: Node_State
pattern Node_State_Stopping = Node_State "STOPPING"

-- | TPU node is currently starting.
pattern Node_State_Starting :: Node_State
pattern Node_State_Starting = Node_State "STARTING"

-- | TPU node has been preempted. Only applies to Preemptible TPU Nodes.
pattern Node_State_Preempted :: Node_State
pattern Node_State_Preempted = Node_State "PREEMPTED"

-- | TPU node has been terminated due to maintenance or has reached the end of its life cycle (for preemptible nodes).
pattern Node_State_Terminated :: Node_State
pattern Node_State_Terminated = Node_State "TERMINATED"

-- | TPU node is currently hiding.
pattern Node_State_Hiding :: Node_State
pattern Node_State_Hiding = Node_State "HIDING"

-- | TPU node has been hidden.
pattern Node_State_Hidden :: Node_State
pattern Node_State_Hidden = Node_State "HIDDEN"

-- | TPU node is currently unhiding.
pattern Node_State_Unhiding :: Node_State
pattern Node_State_Unhiding = Node_State "UNHIDING"

{-# COMPLETE
  Node_State_STATEUNSPECIFIED,
  Node_State_Creating,
  Node_State_Ready,
  Node_State_Restarting,
  Node_State_Reimaging,
  Node_State_Deleting,
  Node_State_Repairing,
  Node_State_Stopped,
  Node_State_Stopping,
  Node_State_Starting,
  Node_State_Preempted,
  Node_State_Terminated,
  Node_State_Hiding,
  Node_State_Hidden,
  Node_State_Unhiding,
  Node_State
  #-}

-- | Type of the Symptom.
newtype Symptom_SymptomType = Symptom_SymptomType {fromSymptom_SymptomType :: Core.Text}
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

-- | Unspecified symptom.
pattern Symptom_SymptomType_SYMPTOMTYPEUNSPECIFIED :: Symptom_SymptomType
pattern Symptom_SymptomType_SYMPTOMTYPEUNSPECIFIED = Symptom_SymptomType "SYMPTOM_TYPE_UNSPECIFIED"

-- | TPU VM memory is low.
pattern Symptom_SymptomType_LOWMEMORY :: Symptom_SymptomType
pattern Symptom_SymptomType_LOWMEMORY = Symptom_SymptomType "LOW_MEMORY"

-- | TPU runtime is out of memory.
pattern Symptom_SymptomType_OUTOFMEMORY :: Symptom_SymptomType
pattern Symptom_SymptomType_OUTOFMEMORY = Symptom_SymptomType "OUT_OF_MEMORY"

-- | TPU runtime execution has timed out.
pattern Symptom_SymptomType_EXECUTETIMEDOUT :: Symptom_SymptomType
pattern Symptom_SymptomType_EXECUTETIMEDOUT = Symptom_SymptomType "EXECUTE_TIMED_OUT"

-- | TPU runtime fails to construct a mesh that recognizes each TPU device\'s neighbors.
pattern Symptom_SymptomType_MESHBUILDFAIL :: Symptom_SymptomType
pattern Symptom_SymptomType_MESHBUILDFAIL = Symptom_SymptomType "MESH_BUILD_FAIL"

-- | TPU HBM is out of memory.
pattern Symptom_SymptomType_HBMOUTOFMEMORY :: Symptom_SymptomType
pattern Symptom_SymptomType_HBMOUTOFMEMORY = Symptom_SymptomType "HBM_OUT_OF_MEMORY"

-- | Abusive behaviors have been identified on the current project.
pattern Symptom_SymptomType_PROJECTABUSE :: Symptom_SymptomType
pattern Symptom_SymptomType_PROJECTABUSE = Symptom_SymptomType "PROJECT_ABUSE"

{-# COMPLETE
  Symptom_SymptomType_SYMPTOMTYPEUNSPECIFIED,
  Symptom_SymptomType_LOWMEMORY,
  Symptom_SymptomType_OUTOFMEMORY,
  Symptom_SymptomType_EXECUTETIMEDOUT,
  Symptom_SymptomType_MESHBUILDFAIL,
  Symptom_SymptomType_HBMOUTOFMEMORY,
  Symptom_SymptomType_PROJECTABUSE,
  Symptom_SymptomType
  #-}
