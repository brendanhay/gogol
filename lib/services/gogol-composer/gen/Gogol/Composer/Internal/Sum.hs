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
-- Module      : Gogol.Composer.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Composer.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * CheckUpgradeResponse_ContainsPypiModulesConflict
    CheckUpgradeResponse_ContainsPypiModulesConflict
      ( CheckUpgradeResponse_ContainsPypiModulesConflict_CONFLICTRESULTUNSPECIFIED,
        CheckUpgradeResponse_ContainsPypiModulesConflict_Conflict,
        CheckUpgradeResponse_ContainsPypiModulesConflict_NOCONFLICT,
        ..
      ),

    -- * Environment_State
    Environment_State
      ( Environment_State_STATEUNSPECIFIED,
        Environment_State_Creating,
        Environment_State_Running,
        Environment_State_Updating,
        Environment_State_Deleting,
        Environment_State_Error',
        ..
      ),

    -- * EnvironmentConfig_EnvironmentSize
    EnvironmentConfig_EnvironmentSize
      ( EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEUNSPECIFIED,
        EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZESMALL,
        EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEMEDIUM,
        EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZELARGE,
        ..
      ),

    -- * NetworkingConfig_ConnectionType
    NetworkingConfig_ConnectionType
      ( NetworkingConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
        NetworkingConfig_ConnectionType_VPCPEERING,
        NetworkingConfig_ConnectionType_PRIVATESERVICECONNECT,
        ..
      ),

    -- * OperationMetadata_OperationType
    OperationMetadata_OperationType
      ( OperationMetadata_OperationType_TYPEUNSPECIFIED,
        OperationMetadata_OperationType_Create,
        OperationMetadata_OperationType_Delete',
        OperationMetadata_OperationType_Update,
        OperationMetadata_OperationType_Check,
        OperationMetadata_OperationType_SAVESNAPSHOT,
        OperationMetadata_OperationType_LOADSNAPSHOT,
        ..
      ),

    -- * OperationMetadata_State
    OperationMetadata_State
      ( OperationMetadata_State_STATEUNSPECIFIED,
        OperationMetadata_State_Pending,
        OperationMetadata_State_Running,
        OperationMetadata_State_Succeeded,
        OperationMetadata_State_Successful,
        OperationMetadata_State_Failed,
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

-- | Output only. Whether build has succeeded or failed on modules conflicts.
newtype CheckUpgradeResponse_ContainsPypiModulesConflict = CheckUpgradeResponse_ContainsPypiModulesConflict {fromCheckUpgradeResponse_ContainsPypiModulesConflict :: Core.Text}
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

-- | It is unknown whether build had conflicts or not.
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_CONFLICTRESULTUNSPECIFIED :: CheckUpgradeResponse_ContainsPypiModulesConflict
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_CONFLICTRESULTUNSPECIFIED = CheckUpgradeResponse_ContainsPypiModulesConflict "CONFLICT_RESULT_UNSPECIFIED"

-- | There were python packages conflicts.
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_Conflict :: CheckUpgradeResponse_ContainsPypiModulesConflict
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_Conflict = CheckUpgradeResponse_ContainsPypiModulesConflict "CONFLICT"

-- | There were no python packages conflicts.
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_NOCONFLICT :: CheckUpgradeResponse_ContainsPypiModulesConflict
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_NOCONFLICT = CheckUpgradeResponse_ContainsPypiModulesConflict "NO_CONFLICT"

{-# COMPLETE
  CheckUpgradeResponse_ContainsPypiModulesConflict_CONFLICTRESULTUNSPECIFIED,
  CheckUpgradeResponse_ContainsPypiModulesConflict_Conflict,
  CheckUpgradeResponse_ContainsPypiModulesConflict_NOCONFLICT,
  CheckUpgradeResponse_ContainsPypiModulesConflict
  #-}

-- | The current state of the environment.
newtype Environment_State = Environment_State {fromEnvironment_State :: Core.Text}
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

-- | The state of the environment is unknown.
pattern Environment_State_STATEUNSPECIFIED :: Environment_State
pattern Environment_State_STATEUNSPECIFIED = Environment_State "STATE_UNSPECIFIED"

-- | The environment is in the process of being created.
pattern Environment_State_Creating :: Environment_State
pattern Environment_State_Creating = Environment_State "CREATING"

-- | The environment is currently running and healthy. It is ready for use.
pattern Environment_State_Running :: Environment_State
pattern Environment_State_Running = Environment_State "RUNNING"

-- | The environment is being updated. It remains usable but cannot receive additional update requests or be deleted at this time.
pattern Environment_State_Updating :: Environment_State
pattern Environment_State_Updating = Environment_State "UPDATING"

-- | The environment is undergoing deletion. It cannot be used.
pattern Environment_State_Deleting :: Environment_State
pattern Environment_State_Deleting = Environment_State "DELETING"

-- | The environment has encountered an error and cannot be used.
pattern Environment_State_Error' :: Environment_State
pattern Environment_State_Error' = Environment_State "ERROR"

{-# COMPLETE
  Environment_State_STATEUNSPECIFIED,
  Environment_State_Creating,
  Environment_State_Running,
  Environment_State_Updating,
  Environment_State_Deleting,
  Environment_State_Error',
  Environment_State
  #-}

-- | Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
newtype EnvironmentConfig_EnvironmentSize = EnvironmentConfig_EnvironmentSize {fromEnvironmentConfig_EnvironmentSize :: Core.Text}
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

-- | The size of the environment is unspecified.
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEUNSPECIFIED :: EnvironmentConfig_EnvironmentSize
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEUNSPECIFIED = EnvironmentConfig_EnvironmentSize "ENVIRONMENT_SIZE_UNSPECIFIED"

-- | The environment size is small.
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZESMALL :: EnvironmentConfig_EnvironmentSize
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZESMALL = EnvironmentConfig_EnvironmentSize "ENVIRONMENT_SIZE_SMALL"

-- | The environment size is medium.
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEMEDIUM :: EnvironmentConfig_EnvironmentSize
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEMEDIUM = EnvironmentConfig_EnvironmentSize "ENVIRONMENT_SIZE_MEDIUM"

-- | The environment size is large.
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZELARGE :: EnvironmentConfig_EnvironmentSize
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZELARGE = EnvironmentConfig_EnvironmentSize "ENVIRONMENT_SIZE_LARGE"

{-# COMPLETE
  EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEUNSPECIFIED,
  EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZESMALL,
  EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEMEDIUM,
  EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZELARGE,
  EnvironmentConfig_EnvironmentSize
  #-}

-- | Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
newtype NetworkingConfig_ConnectionType = NetworkingConfig_ConnectionType {fromNetworkingConfig_ConnectionType :: Core.Text}
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

-- | No specific connection type was requested, so the environment uses the default value corresponding to the rest of its configuration.
pattern NetworkingConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED :: NetworkingConfig_ConnectionType
pattern NetworkingConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED = NetworkingConfig_ConnectionType "CONNECTION_TYPE_UNSPECIFIED"

-- | Requests the use of VPC peerings for connecting the Customer and Tenant projects.
pattern NetworkingConfig_ConnectionType_VPCPEERING :: NetworkingConfig_ConnectionType
pattern NetworkingConfig_ConnectionType_VPCPEERING = NetworkingConfig_ConnectionType "VPC_PEERING"

-- | Requests the use of Private Service Connect for connecting the Customer and Tenant projects.
pattern NetworkingConfig_ConnectionType_PRIVATESERVICECONNECT :: NetworkingConfig_ConnectionType
pattern NetworkingConfig_ConnectionType_PRIVATESERVICECONNECT = NetworkingConfig_ConnectionType "PRIVATE_SERVICE_CONNECT"

{-# COMPLETE
  NetworkingConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
  NetworkingConfig_ConnectionType_VPCPEERING,
  NetworkingConfig_ConnectionType_PRIVATESERVICECONNECT,
  NetworkingConfig_ConnectionType
  #-}

-- | Output only. The type of operation being performed.
newtype OperationMetadata_OperationType = OperationMetadata_OperationType {fromOperationMetadata_OperationType :: Core.Text}
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

-- | Unused.
pattern OperationMetadata_OperationType_TYPEUNSPECIFIED :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_TYPEUNSPECIFIED = OperationMetadata_OperationType "TYPE_UNSPECIFIED"

-- | A resource creation operation.
pattern OperationMetadata_OperationType_Create :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_Create = OperationMetadata_OperationType "CREATE"

-- | A resource deletion operation.
pattern OperationMetadata_OperationType_Delete' :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_Delete' = OperationMetadata_OperationType "DELETE"

-- | A resource update operation.
pattern OperationMetadata_OperationType_Update :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_Update = OperationMetadata_OperationType "UPDATE"

-- | A resource check operation.
pattern OperationMetadata_OperationType_Check :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_Check = OperationMetadata_OperationType "CHECK"

-- | Saves snapshot of the resource operation.
pattern OperationMetadata_OperationType_SAVESNAPSHOT :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_SAVESNAPSHOT = OperationMetadata_OperationType "SAVE_SNAPSHOT"

-- | Loads snapshot of the resource operation.
pattern OperationMetadata_OperationType_LOADSNAPSHOT :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_LOADSNAPSHOT = OperationMetadata_OperationType "LOAD_SNAPSHOT"

{-# COMPLETE
  OperationMetadata_OperationType_TYPEUNSPECIFIED,
  OperationMetadata_OperationType_Create,
  OperationMetadata_OperationType_Delete',
  OperationMetadata_OperationType_Update,
  OperationMetadata_OperationType_Check,
  OperationMetadata_OperationType_SAVESNAPSHOT,
  OperationMetadata_OperationType_LOADSNAPSHOT,
  OperationMetadata_OperationType
  #-}

-- | Output only. The current operation state.
newtype OperationMetadata_State = OperationMetadata_State {fromOperationMetadata_State :: Core.Text}
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

-- | Unused.
pattern OperationMetadata_State_STATEUNSPECIFIED :: OperationMetadata_State
pattern OperationMetadata_State_STATEUNSPECIFIED = OperationMetadata_State "STATE_UNSPECIFIED"

-- | The operation has been created but is not yet started.
pattern OperationMetadata_State_Pending :: OperationMetadata_State
pattern OperationMetadata_State_Pending = OperationMetadata_State "PENDING"

-- | The operation is underway.
pattern OperationMetadata_State_Running :: OperationMetadata_State
pattern OperationMetadata_State_Running = OperationMetadata_State "RUNNING"

-- | The operation completed successfully.
pattern OperationMetadata_State_Succeeded :: OperationMetadata_State
pattern OperationMetadata_State_Succeeded = OperationMetadata_State "SUCCEEDED"

-- |
pattern OperationMetadata_State_Successful :: OperationMetadata_State
pattern OperationMetadata_State_Successful = OperationMetadata_State "SUCCESSFUL"

-- | The operation is no longer running but did not succeed.
pattern OperationMetadata_State_Failed :: OperationMetadata_State
pattern OperationMetadata_State_Failed = OperationMetadata_State "FAILED"

{-# COMPLETE
  OperationMetadata_State_STATEUNSPECIFIED,
  OperationMetadata_State_Pending,
  OperationMetadata_State_Running,
  OperationMetadata_State_Succeeded,
  OperationMetadata_State_Successful,
  OperationMetadata_State_Failed,
  OperationMetadata_State
  #-}
