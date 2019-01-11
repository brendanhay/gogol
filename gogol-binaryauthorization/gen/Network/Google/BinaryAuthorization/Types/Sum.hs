{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BinaryAuthorization.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BinaryAuthorization.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Required. The action when a pod creation is denied by the admission
-- rule.
data AdmissionRuleEnforcementMode
    = EnforcementModeUnspecified
      -- ^ @ENFORCEMENT_MODE_UNSPECIFIED@
      -- Mandatory.
    | EnforcedBlockAndAuditLog
      -- ^ @ENFORCED_BLOCK_AND_AUDIT_LOG@
      -- Enforce the admission rule by blocking the pod creation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdmissionRuleEnforcementMode

instance FromHttpApiData AdmissionRuleEnforcementMode where
    parseQueryParam = \case
        "ENFORCEMENT_MODE_UNSPECIFIED" -> Right EnforcementModeUnspecified
        "ENFORCED_BLOCK_AND_AUDIT_LOG" -> Right EnforcedBlockAndAuditLog
        x -> Left ("Unable to parse AdmissionRuleEnforcementMode from: " <> x)

instance ToHttpApiData AdmissionRuleEnforcementMode where
    toQueryParam = \case
        EnforcementModeUnspecified -> "ENFORCEMENT_MODE_UNSPECIFIED"
        EnforcedBlockAndAuditLog -> "ENFORCED_BLOCK_AND_AUDIT_LOG"

instance FromJSON AdmissionRuleEnforcementMode where
    parseJSON = parseJSONText "AdmissionRuleEnforcementMode"

instance ToJSON AdmissionRuleEnforcementMode where
    toJSON = toJSONText

-- | Required. How this admission rule will be evaluated.
data AdmissionRuleEvaluationMode
    = EvaluationModeUnspecified
      -- ^ @EVALUATION_MODE_UNSPECIFIED@
      -- Mandatory.
    | AlwaysAllow
      -- ^ @ALWAYS_ALLOW@
      -- This rule allows all all pod creations.
    | RequireAttestation
      -- ^ @REQUIRE_ATTESTATION@
      -- This rule allows a pod creation if all the attestors listed in
      -- \'require_attestations_by\' have valid attestations for all of the
      -- images in the pod spec.
    | AlwaysDeny
      -- ^ @ALWAYS_DENY@
      -- This rule denies all pod creations.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdmissionRuleEvaluationMode

instance FromHttpApiData AdmissionRuleEvaluationMode where
    parseQueryParam = \case
        "EVALUATION_MODE_UNSPECIFIED" -> Right EvaluationModeUnspecified
        "ALWAYS_ALLOW" -> Right AlwaysAllow
        "REQUIRE_ATTESTATION" -> Right RequireAttestation
        "ALWAYS_DENY" -> Right AlwaysDeny
        x -> Left ("Unable to parse AdmissionRuleEvaluationMode from: " <> x)

instance ToHttpApiData AdmissionRuleEvaluationMode where
    toQueryParam = \case
        EvaluationModeUnspecified -> "EVALUATION_MODE_UNSPECIFIED"
        AlwaysAllow -> "ALWAYS_ALLOW"
        RequireAttestation -> "REQUIRE_ATTESTATION"
        AlwaysDeny -> "ALWAYS_DENY"

instance FromJSON AdmissionRuleEvaluationMode where
    parseJSON = parseJSONText "AdmissionRuleEvaluationMode"

instance ToJSON AdmissionRuleEvaluationMode where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText
