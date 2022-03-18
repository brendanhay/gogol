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
-- Module      : Network.Google.IAP.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.IAP.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ReauthSettings_Method
    ReauthSettings_Method
      ( ReauthSettings_Method_METHODUNSPECIFIED,
        ReauthSettings_Method_Login,
        ReauthSettings_Method_Password,
        ReauthSettings_Method_SECUREKEY,
        ..
      ),

    -- * ReauthSettings_PolicyType
    ReauthSettings_PolicyType
      ( ReauthSettings_PolicyType_POLICYTYPEUNSPECIFIED,
        ReauthSettings_PolicyType_Minimum,
        ReauthSettings_PolicyType_Default,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

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

-- | Reauth method required by the policy.
newtype ReauthSettings_Method = ReauthSettings_Method {fromReauthSettings_Method :: Core.Text}
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

-- | Reauthentication disabled.
pattern ReauthSettings_Method_METHODUNSPECIFIED :: ReauthSettings_Method
pattern ReauthSettings_Method_METHODUNSPECIFIED = ReauthSettings_Method "METHOD_UNSPECIFIED"

-- | Mimicks the behavior as if the user had logged out and tried to log in again. Users with 2SV (step verification) enabled will see their 2SV challenges if they did not opt to have their second factor responses saved. Apps Core (GSuites) admins can configure settings to disable 2SV cookies and require 2-step verification for all Apps Core users in their domains.
pattern ReauthSettings_Method_Login :: ReauthSettings_Method
pattern ReauthSettings_Method_Login = ReauthSettings_Method "LOGIN"

-- | User must type their password.
pattern ReauthSettings_Method_Password :: ReauthSettings_Method
pattern ReauthSettings_Method_Password = ReauthSettings_Method "PASSWORD"

-- | User must use their secure key 2nd factor device.
pattern ReauthSettings_Method_SECUREKEY :: ReauthSettings_Method
pattern ReauthSettings_Method_SECUREKEY = ReauthSettings_Method "SECURE_KEY"

{-# COMPLETE
  ReauthSettings_Method_METHODUNSPECIFIED,
  ReauthSettings_Method_Login,
  ReauthSettings_Method_Password,
  ReauthSettings_Method_SECUREKEY,
  ReauthSettings_Method
  #-}

-- | How IAP determines the effective policy in cases of hierarchial policies. Policies are merged from higher in the hierarchy to lower in the hierarchy.
newtype ReauthSettings_PolicyType = ReauthSettings_PolicyType {fromReauthSettings_PolicyType :: Core.Text}
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

-- | Default value. This value is unused\/invalid.
pattern ReauthSettings_PolicyType_POLICYTYPEUNSPECIFIED :: ReauthSettings_PolicyType
pattern ReauthSettings_PolicyType_POLICYTYPEUNSPECIFIED = ReauthSettings_PolicyType "POLICY_TYPE_UNSPECIFIED"

-- | This policy acts as a minimum to other policies, lower in the hierarchy. Effective policy may only be the same or stricter.
pattern ReauthSettings_PolicyType_Minimum :: ReauthSettings_PolicyType
pattern ReauthSettings_PolicyType_Minimum = ReauthSettings_PolicyType "MINIMUM"

-- | This policy acts as a default if no other reauth policy is set.
pattern ReauthSettings_PolicyType_Default :: ReauthSettings_PolicyType
pattern ReauthSettings_PolicyType_Default = ReauthSettings_PolicyType "DEFAULT"

{-# COMPLETE
  ReauthSettings_PolicyType_POLICYTYPEUNSPECIFIED,
  ReauthSettings_PolicyType_Minimum,
  ReauthSettings_PolicyType_Default,
  ReauthSettings_PolicyType
  #-}
