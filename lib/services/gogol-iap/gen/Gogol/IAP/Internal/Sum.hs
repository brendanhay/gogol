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
-- Module      : Gogol.IAP.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.IAP.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AccessSettings_IdentitySourcesItem
    AccessSettings_IdentitySourcesItem
      (
        AccessSettings_IdentitySourcesItem_IDENTITYSOURCEUNSPECIFIED,
        AccessSettings_IdentitySourcesItem_WORKFORCEIDENTITYFEDERATION,
        ..
      ),

    -- * AttributePropagationSettings_OutputCredentialsItem
    AttributePropagationSettings_OutputCredentialsItem
      (
        AttributePropagationSettings_OutputCredentialsItem_OUTPUTCREDENTIALSUNSPECIFIED,
        AttributePropagationSettings_OutputCredentialsItem_Header,
        AttributePropagationSettings_OutputCredentialsItem_Jwt,
        AttributePropagationSettings_OutputCredentialsItem_Rctoken,
        ..
      ),

    -- * ReauthSettings_Method
    ReauthSettings_Method
      (
        ReauthSettings_Method_METHODUNSPECIFIED,
        ReauthSettings_Method_Login,
        ReauthSettings_Method_Password,
        ReauthSettings_Method_SECUREKEY,
        ReauthSettings_Method_ENROLLEDSECONDFACTORS,
        ..
      ),

    -- * ReauthSettings_PolicyType
    ReauthSettings_PolicyType
      (
        ReauthSettings_PolicyType_POLICYTYPEUNSPECIFIED,
        ReauthSettings_PolicyType_Minimum,
        ReauthSettings_PolicyType_Default,
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

newtype AccessSettings_IdentitySourcesItem = AccessSettings_IdentitySourcesItem { fromAccessSettings_IdentitySourcesItem :: Core.Text }
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

-- | IdentitySource Unspecified. When selected, IAP relies on which identity settings are fully configured to redirect the traffic to. The precedence order is WorkforceIdentitySettings > GcipSettings. If none is set, default to use Google identity.
pattern AccessSettings_IdentitySourcesItem_IDENTITYSOURCEUNSPECIFIED :: AccessSettings_IdentitySourcesItem
pattern AccessSettings_IdentitySourcesItem_IDENTITYSOURCEUNSPECIFIED = AccessSettings_IdentitySourcesItem "IDENTITY_SOURCE_UNSPECIFIED"

-- | Use external identities set up on Google Cloud Workforce Identity Federation.
pattern AccessSettings_IdentitySourcesItem_WORKFORCEIDENTITYFEDERATION :: AccessSettings_IdentitySourcesItem
pattern AccessSettings_IdentitySourcesItem_WORKFORCEIDENTITYFEDERATION = AccessSettings_IdentitySourcesItem "WORKFORCE_IDENTITY_FEDERATION"

{-# COMPLETE
  AccessSettings_IdentitySourcesItem_IDENTITYSOURCEUNSPECIFIED,
  AccessSettings_IdentitySourcesItem_WORKFORCEIDENTITYFEDERATION,
  AccessSettings_IdentitySourcesItem #-}

newtype AttributePropagationSettings_OutputCredentialsItem = AttributePropagationSettings_OutputCredentialsItem { fromAttributePropagationSettings_OutputCredentialsItem :: Core.Text }
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

-- | An output credential is required.
pattern AttributePropagationSettings_OutputCredentialsItem_OUTPUTCREDENTIALSUNSPECIFIED :: AttributePropagationSettings_OutputCredentialsItem
pattern AttributePropagationSettings_OutputCredentialsItem_OUTPUTCREDENTIALSUNSPECIFIED = AttributePropagationSettings_OutputCredentialsItem "OUTPUT_CREDENTIALS_UNSPECIFIED"

-- | Propagate attributes in the headers with \"x-goog-iap-attr-\" prefix.
pattern AttributePropagationSettings_OutputCredentialsItem_Header :: AttributePropagationSettings_OutputCredentialsItem
pattern AttributePropagationSettings_OutputCredentialsItem_Header = AttributePropagationSettings_OutputCredentialsItem "HEADER"

-- | Propagate attributes in the JWT of the form: @\"additional_claims\": { \"my_attribute\": [\"value1\", \"value2\"] }@
pattern AttributePropagationSettings_OutputCredentialsItem_Jwt :: AttributePropagationSettings_OutputCredentialsItem
pattern AttributePropagationSettings_OutputCredentialsItem_Jwt = AttributePropagationSettings_OutputCredentialsItem "JWT"

-- | Propagate attributes in the RCToken of the form: @\"additional_claims\": { \"my_attribute\": [\"value1\", \"value2\"] }@
pattern AttributePropagationSettings_OutputCredentialsItem_Rctoken :: AttributePropagationSettings_OutputCredentialsItem
pattern AttributePropagationSettings_OutputCredentialsItem_Rctoken = AttributePropagationSettings_OutputCredentialsItem "RCTOKEN"

{-# COMPLETE
  AttributePropagationSettings_OutputCredentialsItem_OUTPUTCREDENTIALSUNSPECIFIED,
  AttributePropagationSettings_OutputCredentialsItem_Header,
  AttributePropagationSettings_OutputCredentialsItem_Jwt,
  AttributePropagationSettings_OutputCredentialsItem_Rctoken,
  AttributePropagationSettings_OutputCredentialsItem #-}

-- | Optional. Reauth method requested.
newtype ReauthSettings_Method = ReauthSettings_Method { fromReauthSettings_Method :: Core.Text }
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

-- | Reauthentication disabled.
pattern ReauthSettings_Method_METHODUNSPECIFIED :: ReauthSettings_Method
pattern ReauthSettings_Method_METHODUNSPECIFIED = ReauthSettings_Method "METHOD_UNSPECIFIED"

-- | Prompts the user to log in again.
pattern ReauthSettings_Method_Login :: ReauthSettings_Method
pattern ReauthSettings_Method_Login = ReauthSettings_Method "LOGIN"

-- | 
pattern ReauthSettings_Method_Password :: ReauthSettings_Method
pattern ReauthSettings_Method_Password = ReauthSettings_Method "PASSWORD"

-- | User must use their secure key 2nd factor device.
pattern ReauthSettings_Method_SECUREKEY :: ReauthSettings_Method
pattern ReauthSettings_Method_SECUREKEY = ReauthSettings_Method "SECURE_KEY"

-- | User can use any enabled 2nd factor.
pattern ReauthSettings_Method_ENROLLEDSECONDFACTORS :: ReauthSettings_Method
pattern ReauthSettings_Method_ENROLLEDSECONDFACTORS = ReauthSettings_Method "ENROLLED_SECOND_FACTORS"

{-# COMPLETE
  ReauthSettings_Method_METHODUNSPECIFIED,
  ReauthSettings_Method_Login,
  ReauthSettings_Method_Password,
  ReauthSettings_Method_SECUREKEY,
  ReauthSettings_Method_ENROLLEDSECONDFACTORS,
  ReauthSettings_Method #-}

-- | Optional. How IAP determines the effective policy in cases of hierarchical policies. Policies are merged from higher in the hierarchy to lower in the hierarchy.
newtype ReauthSettings_PolicyType = ReauthSettings_PolicyType { fromReauthSettings_PolicyType :: Core.Text }
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

-- | Default value. This value is unused.
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
  ReauthSettings_PolicyType #-}
