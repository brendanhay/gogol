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
-- Module      : Gogol.CloudShell.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudShell.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Environment_State
    Environment_State
      ( Environment_State_STATEUNSPECIFIED,
        Environment_State_Suspended,
        Environment_State_Pending,
        Environment_State_Running,
        Environment_State_Deleting,
        ..
      ),

    -- * StartEnvironmentMetadata_State
    StartEnvironmentMetadata_State
      ( StartEnvironmentMetadata_State_STATEUNSPECIFIED,
        StartEnvironmentMetadata_State_Starting,
        StartEnvironmentMetadata_State_UNARCHIVINGDISK,
        StartEnvironmentMetadata_State_AWAITINGCOMPUTERESOURCES,
        StartEnvironmentMetadata_State_Finished,
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

-- | Output only. Current execution state of this environment.
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

-- | The environment\'s states is unknown.
pattern Environment_State_STATEUNSPECIFIED :: Environment_State
pattern Environment_State_STATEUNSPECIFIED = Environment_State "STATE_UNSPECIFIED"

-- | The environment is not running and can\'t be connected to. Starting the environment will transition it to the PENDING state.
pattern Environment_State_Suspended :: Environment_State
pattern Environment_State_Suspended = Environment_State "SUSPENDED"

-- | The environment is being started but is not yet ready to accept connections.
pattern Environment_State_Pending :: Environment_State
pattern Environment_State_Pending = Environment_State "PENDING"

-- | The environment is running and ready to accept connections. It will automatically transition back to DISABLED after a period of inactivity or if another environment is started.
pattern Environment_State_Running :: Environment_State
pattern Environment_State_Running = Environment_State "RUNNING"

-- | The environment is being deleted and can\'t be connected to.
pattern Environment_State_Deleting :: Environment_State
pattern Environment_State_Deleting = Environment_State "DELETING"

{-# COMPLETE
  Environment_State_STATEUNSPECIFIED,
  Environment_State_Suspended,
  Environment_State_Pending,
  Environment_State_Running,
  Environment_State_Deleting,
  Environment_State
  #-}

-- | Current state of the environment being started.
newtype StartEnvironmentMetadata_State = StartEnvironmentMetadata_State {fromStartEnvironmentMetadata_State :: Core.Text}
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

-- | The environment\'s start state is unknown.
pattern StartEnvironmentMetadata_State_STATEUNSPECIFIED :: StartEnvironmentMetadata_State
pattern StartEnvironmentMetadata_State_STATEUNSPECIFIED = StartEnvironmentMetadata_State "STATE_UNSPECIFIED"

-- | The environment is in the process of being started, but no additional details are available.
pattern StartEnvironmentMetadata_State_Starting :: StartEnvironmentMetadata_State
pattern StartEnvironmentMetadata_State_Starting = StartEnvironmentMetadata_State "STARTING"

-- | Startup is waiting for the user\'s disk to be unarchived. This can happen when the user returns to Cloud Shell after not having used it for a while, and suggests that startup will take longer than normal.
pattern StartEnvironmentMetadata_State_UNARCHIVINGDISK :: StartEnvironmentMetadata_State
pattern StartEnvironmentMetadata_State_UNARCHIVINGDISK = StartEnvironmentMetadata_State "UNARCHIVING_DISK"

-- | Startup is waiting for compute resources to be assigned to the environment. This should normally happen very quickly, but an environment might stay in this state for an extended period of time if the system is experiencing heavy load.
pattern StartEnvironmentMetadata_State_AWAITINGCOMPUTERESOURCES :: StartEnvironmentMetadata_State
pattern StartEnvironmentMetadata_State_AWAITINGCOMPUTERESOURCES = StartEnvironmentMetadata_State "AWAITING_COMPUTE_RESOURCES"

-- | Startup has completed. If the start operation was successful, the user should be able to establish an SSH connection to their environment. Otherwise, the operation will contain details of the failure.
pattern StartEnvironmentMetadata_State_Finished :: StartEnvironmentMetadata_State
pattern StartEnvironmentMetadata_State_Finished = StartEnvironmentMetadata_State "FINISHED"

{-# COMPLETE
  StartEnvironmentMetadata_State_STATEUNSPECIFIED,
  StartEnvironmentMetadata_State_Starting,
  StartEnvironmentMetadata_State_UNARCHIVINGDISK,
  StartEnvironmentMetadata_State_AWAITINGCOMPUTERESOURCES,
  StartEnvironmentMetadata_State_Finished,
  StartEnvironmentMetadata_State
  #-}
