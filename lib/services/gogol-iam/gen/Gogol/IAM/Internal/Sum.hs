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
-- Module      : Gogol.IAM.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IAM.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction
    CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction
      ( CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_UNKNOWNREPAIRACTION,
        CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_Delete',
        CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_Retry,
        ..
      ),

    -- * GoogleIamV1BindingDelta_Action
    GoogleIamV1BindingDelta_Action
      ( GoogleIamV1BindingDelta_Action_ACTIONUNSPECIFIED,
        GoogleIamV1BindingDelta_Action_Add,
        GoogleIamV1BindingDelta_Action_Remove,
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

-- | Excluisive action returned by the CLH.
newtype CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction = CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction {fromCloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction :: Core.Text}
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

-- | Unknown repair action.
pattern CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_UNKNOWNREPAIRACTION :: CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction
pattern CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_UNKNOWNREPAIRACTION = CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction "UNKNOWN_REPAIR_ACTION"

-- | The resource has to be deleted. When using this bit, the CLH should fail the operation. DEPRECATED. Instead use DELETE_RESOURCE OperationSignal in SideChannel.
pattern CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_Delete' :: CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction
pattern CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_Delete' = CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction "DELETE"

-- | This resource could not be repaired but the repair should be tried again at a later time. This can happen if there is a dependency that needs to be resolved first- e.g. if a parent resource must be repaired before a child resource.
pattern CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_Retry :: CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction
pattern CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_Retry = CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction "RETRY"

{-# COMPLETE
  CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_UNKNOWNREPAIRACTION,
  CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_Delete',
  CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction_Retry,
  CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction
  #-}

-- | The action that was performed on a Binding. Required
newtype GoogleIamV1BindingDelta_Action = GoogleIamV1BindingDelta_Action {fromGoogleIamV1BindingDelta_Action :: Core.Text}
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

-- | Unspecified.
pattern GoogleIamV1BindingDelta_Action_ACTIONUNSPECIFIED :: GoogleIamV1BindingDelta_Action
pattern GoogleIamV1BindingDelta_Action_ACTIONUNSPECIFIED = GoogleIamV1BindingDelta_Action "ACTION_UNSPECIFIED"

-- | Addition of a Binding.
pattern GoogleIamV1BindingDelta_Action_Add :: GoogleIamV1BindingDelta_Action
pattern GoogleIamV1BindingDelta_Action_Add = GoogleIamV1BindingDelta_Action "ADD"

-- | Removal of a Binding.
pattern GoogleIamV1BindingDelta_Action_Remove :: GoogleIamV1BindingDelta_Action
pattern GoogleIamV1BindingDelta_Action_Remove = GoogleIamV1BindingDelta_Action "REMOVE"

{-# COMPLETE
  GoogleIamV1BindingDelta_Action_ACTIONUNSPECIFIED,
  GoogleIamV1BindingDelta_Action_Add,
  GoogleIamV1BindingDelta_Action_Remove,
  GoogleIamV1BindingDelta_Action
  #-}
