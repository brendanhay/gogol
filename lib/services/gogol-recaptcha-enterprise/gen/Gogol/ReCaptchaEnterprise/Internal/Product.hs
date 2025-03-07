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
-- Module      : Gogol.ReCaptchaEnterprise.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ReCaptchaEnterprise.Internal.Product
  ( -- * GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
    GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment (..),
    newGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment,

    -- * GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
    GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo (..),
    newGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo,

    -- * GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
    GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest (..),
    newGoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest,

    -- * GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
    GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse (..),
    newGoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse,

    -- * GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
    GoogleCloudRecaptchaenterpriseV1AndroidKeySettings (..),
    newGoogleCloudRecaptchaenterpriseV1AndroidKeySettings,

    -- * GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest (..),
    newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest,

    -- * GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse (..),
    newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse,

    -- * GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
    GoogleCloudRecaptchaenterpriseV1AppleDeveloperId (..),
    newGoogleCloudRecaptchaenterpriseV1AppleDeveloperId,

    -- * GoogleCloudRecaptchaenterpriseV1Assessment
    GoogleCloudRecaptchaenterpriseV1Assessment (..),
    newGoogleCloudRecaptchaenterpriseV1Assessment,

    -- * GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
    GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment (..),
    newGoogleCloudRecaptchaenterpriseV1AssessmentEnvironment,

    -- * GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
    GoogleCloudRecaptchaenterpriseV1ChallengeMetrics (..),
    newGoogleCloudRecaptchaenterpriseV1ChallengeMetrics,

    -- * GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
    GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo (..),
    newGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo,

    -- * GoogleCloudRecaptchaenterpriseV1Event
    GoogleCloudRecaptchaenterpriseV1Event (..),
    newGoogleCloudRecaptchaenterpriseV1Event,

    -- * GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
    GoogleCloudRecaptchaenterpriseV1ExpressKeySettings (..),
    newGoogleCloudRecaptchaenterpriseV1ExpressKeySettings,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallAction
    GoogleCloudRecaptchaenterpriseV1FirewallAction (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallAction,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
    GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
    GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
    GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
    GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
    GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
    GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallPolicy
    GoogleCloudRecaptchaenterpriseV1FirewallPolicy (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallPolicy,

    -- * GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
    GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment (..),
    newGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment,

    -- * GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment (..),
    newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment,

    -- * GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict (..),
    newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict,

    -- * GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict (..),
    newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict,

    -- * GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict (..),
    newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict,

    -- * GoogleCloudRecaptchaenterpriseV1FraudSignals
    GoogleCloudRecaptchaenterpriseV1FraudSignals (..),
    newGoogleCloudRecaptchaenterpriseV1FraudSignals,

    -- * GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
    GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals (..),
    newGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals,

    -- * GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
    GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals (..),
    newGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals,

    -- * GoogleCloudRecaptchaenterpriseV1IOSKeySettings
    GoogleCloudRecaptchaenterpriseV1IOSKeySettings (..),
    newGoogleCloudRecaptchaenterpriseV1IOSKeySettings,

    -- * GoogleCloudRecaptchaenterpriseV1IpOverrideData
    GoogleCloudRecaptchaenterpriseV1IpOverrideData (..),
    newGoogleCloudRecaptchaenterpriseV1IpOverrideData,

    -- * GoogleCloudRecaptchaenterpriseV1Key
    GoogleCloudRecaptchaenterpriseV1Key (..),
    newGoogleCloudRecaptchaenterpriseV1Key,

    -- * GoogleCloudRecaptchaenterpriseV1Key_Labels
    GoogleCloudRecaptchaenterpriseV1Key_Labels (..),
    newGoogleCloudRecaptchaenterpriseV1Key_Labels,

    -- * GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
    GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse (..),
    newGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse,

    -- * GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
    GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse (..),
    newGoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse,

    -- * GoogleCloudRecaptchaenterpriseV1ListKeysResponse
    GoogleCloudRecaptchaenterpriseV1ListKeysResponse (..),
    newGoogleCloudRecaptchaenterpriseV1ListKeysResponse,

    -- * GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse (..),
    newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse,

    -- * GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse (..),
    newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse,

    -- * GoogleCloudRecaptchaenterpriseV1Metrics
    GoogleCloudRecaptchaenterpriseV1Metrics (..),
    newGoogleCloudRecaptchaenterpriseV1Metrics,

    -- * GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
    GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest (..),
    newGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest,

    -- * GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
    GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment (..),
    newGoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment,

    -- * GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
    GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification (..),
    newGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification,

    -- * GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup (..),
    newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup,

    -- * GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership (..),
    newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership,

    -- * GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
    GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest (..),
    newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest,

    -- * GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
    GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse (..),
    newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse,

    -- * GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
    GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest (..),
    newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest,

    -- * GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
    GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse (..),
    newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse,

    -- * GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
    GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse (..),
    newGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse,

    -- * GoogleCloudRecaptchaenterpriseV1RiskAnalysis
    GoogleCloudRecaptchaenterpriseV1RiskAnalysis (..),
    newGoogleCloudRecaptchaenterpriseV1RiskAnalysis,

    -- * GoogleCloudRecaptchaenterpriseV1ScoreDistribution
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution (..),
    newGoogleCloudRecaptchaenterpriseV1ScoreDistribution,

    -- * GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets (..),
    newGoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets,

    -- * GoogleCloudRecaptchaenterpriseV1ScoreMetrics
    GoogleCloudRecaptchaenterpriseV1ScoreMetrics (..),
    newGoogleCloudRecaptchaenterpriseV1ScoreMetrics,

    -- * GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
    GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics (..),
    newGoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics,

    -- * GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest (..),
    newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest,

    -- * GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse (..),
    newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse,

    -- * GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
    GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict (..),
    newGoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict,

    -- * GoogleCloudRecaptchaenterpriseV1TestingOptions
    GoogleCloudRecaptchaenterpriseV1TestingOptions (..),
    newGoogleCloudRecaptchaenterpriseV1TestingOptions,

    -- * GoogleCloudRecaptchaenterpriseV1TokenProperties
    GoogleCloudRecaptchaenterpriseV1TokenProperties (..),
    newGoogleCloudRecaptchaenterpriseV1TokenProperties,

    -- * GoogleCloudRecaptchaenterpriseV1TransactionData
    GoogleCloudRecaptchaenterpriseV1TransactionData (..),
    newGoogleCloudRecaptchaenterpriseV1TransactionData,

    -- * GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
    GoogleCloudRecaptchaenterpriseV1TransactionDataAddress (..),
    newGoogleCloudRecaptchaenterpriseV1TransactionDataAddress,

    -- * GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
    GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo (..),
    newGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo,

    -- * GoogleCloudRecaptchaenterpriseV1TransactionDataItem
    GoogleCloudRecaptchaenterpriseV1TransactionDataItem (..),
    newGoogleCloudRecaptchaenterpriseV1TransactionDataItem,

    -- * GoogleCloudRecaptchaenterpriseV1TransactionDataUser
    GoogleCloudRecaptchaenterpriseV1TransactionDataUser (..),
    newGoogleCloudRecaptchaenterpriseV1TransactionDataUser,

    -- * GoogleCloudRecaptchaenterpriseV1TransactionEvent
    GoogleCloudRecaptchaenterpriseV1TransactionEvent (..),
    newGoogleCloudRecaptchaenterpriseV1TransactionEvent,

    -- * GoogleCloudRecaptchaenterpriseV1UserId
    GoogleCloudRecaptchaenterpriseV1UserId (..),
    newGoogleCloudRecaptchaenterpriseV1UserId,

    -- * GoogleCloudRecaptchaenterpriseV1UserInfo
    GoogleCloudRecaptchaenterpriseV1UserInfo (..),
    newGoogleCloudRecaptchaenterpriseV1UserInfo,

    -- * GoogleCloudRecaptchaenterpriseV1WafSettings
    GoogleCloudRecaptchaenterpriseV1WafSettings (..),
    newGoogleCloudRecaptchaenterpriseV1WafSettings,

    -- * GoogleCloudRecaptchaenterpriseV1WebKeySettings
    GoogleCloudRecaptchaenterpriseV1WebKeySettings (..),
    newGoogleCloudRecaptchaenterpriseV1WebKeySettings,

    -- * GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- * GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- * GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ReCaptchaEnterprise.Internal.Sum

-- | Account defender risk assessment.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment = GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
  { -- | Output only. Labels for this request.
    labels ::
      ( Core.Maybe
          [GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment ::
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
newGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment =
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
    { labels =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
            Core.<$> (o Core..:? "labels")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment {..} =
      Core.object (Core.catMaybes [("labels" Core..=) Core.<$> labels])

-- | Information about account verification, used for identity verification.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo' smart constructor.
data GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
  { -- | Optional. Endpoints that can be used for identity verification.
    endpoints ::
      ( Core.Maybe
          [GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo]
      ),
    -- | Optional. Language code preference for the verification message, set as a IETF BCP 47 language code.
    languageCode :: (Core.Maybe Core.Text),
    -- | Output only. Result of the latest account verification challenge.
    latestVerificationResult ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
      ),
    -- | Username of the account that is being verified. Deprecated. Customers should now provide the @account_id@ field in @event.user_info@.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo ::
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
newGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo =
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
    { endpoints =
        Core.Nothing,
      languageCode = Core.Nothing,
      latestVerificationResult = Core.Nothing,
      username = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
            Core.<$> (o Core..:? "endpoints")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "latestVerificationResult")
            Core.<*> (o Core..:? "username")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
  where
  toJSON GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("endpoints" Core..=) Core.<$> endpoints,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("latestVerificationResult" Core..=)
              Core.<$> latestVerificationResult,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | The AddIpOverride request message.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest = GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
  { -- | Required. IP override added to the key.
    ipOverrideData :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1IpOverrideData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest ::
  GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
newGoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest =
  GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
    { ipOverrideData =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
            Core.<$> (o Core..:? "ipOverrideData")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
  where
  toJSON GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest {..} =
    Core.object
      ( Core.catMaybes
          [("ipOverrideData" Core..=) Core.<$> ipOverrideData]
      )

-- | Response for AddIpOverride.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse = GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse ::
  GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
newGoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse =
  GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse"
      ( \o ->
          Core.pure GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
  where
  toJSON = Core.const Core.emptyObject

-- | Settings specific to keys that can be used by Android apps.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AndroidKeySettings' smart constructor.
data GoogleCloudRecaptchaenterpriseV1AndroidKeySettings = GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
  { -- | Optional. If set to true, allowed/package/names are not enforced.
    allowAllPackageNames :: (Core.Maybe Core.Bool),
    -- | Optional. Android package names of apps allowed to use the key. Example: \'com.companyname.appname\'
    allowedPackageNames :: (Core.Maybe [Core.Text]),
    -- | Optional. Set to true for keys that are used in an Android application that is available for download in app stores in addition to the Google Play Store.
    supportNonGoogleAppStoreDistribution :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AndroidKeySettings' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AndroidKeySettings ::
  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
newGoogleCloudRecaptchaenterpriseV1AndroidKeySettings =
  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
    { allowAllPackageNames =
        Core.Nothing,
      allowedPackageNames = Core.Nothing,
      supportNonGoogleAppStoreDistribution =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AndroidKeySettings"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
            Core.<$> (o Core..:? "allowAllPackageNames")
            Core.<*> (o Core..:? "allowedPackageNames")
            Core.<*> (o Core..:? "supportNonGoogleAppStoreDistribution")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
  where
  toJSON GoogleCloudRecaptchaenterpriseV1AndroidKeySettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowAllPackageNames" Core..=) Core.<$> allowAllPackageNames,
            ("allowedPackageNames" Core..=) Core.<$> allowedPackageNames,
            ("supportNonGoogleAppStoreDistribution" Core..=)
              Core.<$> supportNonGoogleAppStoreDistribution
          ]
      )

-- | The request message to annotate an Assessment.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest' smart constructor.
data GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
  { -- | Optional. A stable account identifier to apply to the assessment. This is an alternative to setting @account_id@ in @CreateAssessment@, for example when a stable account identifier is not yet known in the initial request.
    accountId :: (Core.Maybe Core.Text),
    -- | Optional. The annotation that is assigned to the Event. This field can be left empty to provide reasons that apply to an event without concluding whether the event is legitimate or fraudulent.
    annotation ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
      ),
    -- | Optional. A stable hashed account identifier to apply to the assessment. This is an alternative to setting @hashed_account_id@ in @CreateAssessment@, for example when a stable account identifier is not yet known in the initial request.
    hashedAccountId :: (Core.Maybe Core.Base64),
    -- | Optional. Reasons for the annotation that are assigned to the event.
    reasons ::
      ( Core.Maybe
          [GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem]
      ),
    -- | Optional. If the assessment is part of a payment transaction, provide details on payment lifecycle events that occur in the transaction.
    transactionEvent :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1TransactionEvent)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest ::
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest =
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
    { accountId =
        Core.Nothing,
      annotation = Core.Nothing,
      hashedAccountId = Core.Nothing,
      reasons = Core.Nothing,
      transactionEvent = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "annotation")
            Core.<*> (o Core..:? "hashedAccountId")
            Core.<*> (o Core..:? "reasons")
            Core.<*> (o Core..:? "transactionEvent")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("accountId" Core..=) Core.<$> accountId,
              ("annotation" Core..=) Core.<$> annotation,
              ("hashedAccountId" Core..=) Core.<$> hashedAccountId,
              ("reasons" Core..=) Core.<$> reasons,
              ("transactionEvent" Core..=) Core.<$> transactionEvent
            ]
        )

-- | Empty response for AnnotateAssessment.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse ::
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse =
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse"
      ( \o ->
          Core.pure
            GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
  where
  toJSON = Core.const Core.emptyObject

-- | Contains fields that are required to perform Apple-specific integrity checks.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AppleDeveloperId' smart constructor.
data GoogleCloudRecaptchaenterpriseV1AppleDeveloperId = GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
  { -- | Required. The Apple developer key ID (10-character string).
    keyId :: (Core.Maybe Core.Text),
    -- | Required. Input only. A private key (downloaded as a text file with a .p8 file extension) generated for your Apple Developer account. Ensure that Apple DeviceCheck is enabled for the private key.
    privateKey :: (Core.Maybe Core.Text),
    -- | Required. The Apple team ID (10-character string) owning the provisioning profile used to build your application.
    teamId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AppleDeveloperId' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AppleDeveloperId ::
  GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
newGoogleCloudRecaptchaenterpriseV1AppleDeveloperId =
  GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
    { keyId =
        Core.Nothing,
      privateKey = Core.Nothing,
      teamId = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AppleDeveloperId"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
            Core.<$> (o Core..:? "keyId")
            Core.<*> (o Core..:? "privateKey")
            Core.<*> (o Core..:? "teamId")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
  where
  toJSON GoogleCloudRecaptchaenterpriseV1AppleDeveloperId {..} =
    Core.object
      ( Core.catMaybes
          [ ("keyId" Core..=) Core.<$> keyId,
            ("privateKey" Core..=) Core.<$> privateKey,
            ("teamId" Core..=) Core.<$> teamId
          ]
      )

-- | A reCAPTCHA Enterprise assessment resource.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1Assessment' smart constructor.
data GoogleCloudRecaptchaenterpriseV1Assessment = GoogleCloudRecaptchaenterpriseV1Assessment
  { -- | Output only. Assessment returned by account defender when an account identifier is provided.
    accountDefenderAssessment ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
      ),
    -- | Optional. Account verification information for identity verification. The assessment event must include a token and site key to use this feature.
    accountVerification ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
      ),
    -- | Optional. The environment creating the assessment. This describes your environment (the system invoking CreateAssessment), NOT the environment of your user.
    assessmentEnvironment :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment),
    -- | Optional. The event being assessed.
    event :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1Event),
    -- | Output only. Assessment returned when firewall policies belonging to the project are evaluated using the field firewall/policy/evaluation.
    firewallPolicyAssessment ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
      ),
    -- | Output only. Assessment returned by Fraud Prevention when TransactionData is provided.
    fraudPreventionAssessment ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
      ),
    -- | Output only. Fraud Signals specific to the users involved in a payment transaction.
    fraudSignals :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1FraudSignals),
    -- | Output only. Identifier. The resource name for the Assessment in the format @projects\/{project}\/assessments\/{assessment}@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Assessment returned when a site key, a token, and a phone number as @user_id@ are provided. Account defender and SMS toll fraud protection need to be enabled.
    phoneFraudAssessment :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment),
    -- | Optional. The private password leak verification field contains the parameters that are used to to check for leaks privately without sharing user credentials.
    privatePasswordLeakVerification ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
      ),
    -- | Output only. The risk analysis result for the event being assessed.
    riskAnalysis :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1RiskAnalysis),
    -- | Output only. Properties of the provided event token.
    tokenProperties :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1TokenProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1Assessment' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1Assessment ::
  GoogleCloudRecaptchaenterpriseV1Assessment
newGoogleCloudRecaptchaenterpriseV1Assessment =
  GoogleCloudRecaptchaenterpriseV1Assessment
    { accountDefenderAssessment =
        Core.Nothing,
      accountVerification = Core.Nothing,
      assessmentEnvironment = Core.Nothing,
      event = Core.Nothing,
      firewallPolicyAssessment = Core.Nothing,
      fraudPreventionAssessment = Core.Nothing,
      fraudSignals = Core.Nothing,
      name = Core.Nothing,
      phoneFraudAssessment = Core.Nothing,
      privatePasswordLeakVerification = Core.Nothing,
      riskAnalysis = Core.Nothing,
      tokenProperties = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1Assessment where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1Assessment"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1Assessment
            Core.<$> (o Core..:? "accountDefenderAssessment")
            Core.<*> (o Core..:? "accountVerification")
            Core.<*> (o Core..:? "assessmentEnvironment")
            Core.<*> (o Core..:? "event")
            Core.<*> (o Core..:? "firewallPolicyAssessment")
            Core.<*> (o Core..:? "fraudPreventionAssessment")
            Core.<*> (o Core..:? "fraudSignals")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "phoneFraudAssessment")
            Core.<*> (o Core..:? "privatePasswordLeakVerification")
            Core.<*> (o Core..:? "riskAnalysis")
            Core.<*> (o Core..:? "tokenProperties")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1Assessment where
  toJSON GoogleCloudRecaptchaenterpriseV1Assessment {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountDefenderAssessment" Core..=)
              Core.<$> accountDefenderAssessment,
            ("accountVerification" Core..=) Core.<$> accountVerification,
            ("assessmentEnvironment" Core..=) Core.<$> assessmentEnvironment,
            ("event" Core..=) Core.<$> event,
            ("firewallPolicyAssessment" Core..=)
              Core.<$> firewallPolicyAssessment,
            ("fraudPreventionAssessment" Core..=)
              Core.<$> fraudPreventionAssessment,
            ("fraudSignals" Core..=) Core.<$> fraudSignals,
            ("name" Core..=) Core.<$> name,
            ("phoneFraudAssessment" Core..=) Core.<$> phoneFraudAssessment,
            ("privatePasswordLeakVerification" Core..=)
              Core.<$> privatePasswordLeakVerification,
            ("riskAnalysis" Core..=) Core.<$> riskAnalysis,
            ("tokenProperties" Core..=) Core.<$> tokenProperties
          ]
      )

-- | The environment creating the assessment. This describes your environment (the system invoking CreateAssessment), NOT the environment of your user.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1AssessmentEnvironment' smart constructor.
data GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment = GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
  { -- | Optional. Identifies the client module initiating the CreateAssessment request. This can be the link to the client module\'s project. Examples include: - \"github.com\/GoogleCloudPlatform\/recaptcha-enterprise-google-tag-manager\" - \"cloud.google.com\/recaptcha\/docs\/implement-waf-akamai\" - \"cloud.google.com\/recaptcha\/docs\/implement-waf-cloudflare\" - \"wordpress.org\/plugins\/recaptcha-something\"
    client :: (Core.Maybe Core.Text),
    -- | Optional. The version of the client module. For example, \"1.0.0\".
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1AssessmentEnvironment ::
  GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
newGoogleCloudRecaptchaenterpriseV1AssessmentEnvironment =
  GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
    { client =
        Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
            Core.<$> (o Core..:? "client")
            Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
  where
  toJSON GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment {..} =
    Core.object
      ( Core.catMaybes
          [ ("client" Core..=) Core.<$> client,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Metrics related to challenges.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ChallengeMetrics' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ChallengeMetrics = GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
  { -- | Count of submitted challenge solutions that were incorrect or otherwise deemed suspicious such that a subsequent challenge was triggered.
    failedCount :: (Core.Maybe Core.Int64),
    -- | Count of nocaptchas (successful verification without a challenge) issued.
    nocaptchaCount :: (Core.Maybe Core.Int64),
    -- | Count of reCAPTCHA checkboxes or badges rendered. This is mostly equivalent to a count of pageloads for pages that include reCAPTCHA.
    pageloadCount :: (Core.Maybe Core.Int64),
    -- | Count of nocaptchas (successful verification without a challenge) plus submitted challenge solutions that were correct and resulted in verification.
    passedCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ChallengeMetrics' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ChallengeMetrics ::
  GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
newGoogleCloudRecaptchaenterpriseV1ChallengeMetrics =
  GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
    { failedCount =
        Core.Nothing,
      nocaptchaCount = Core.Nothing,
      pageloadCount = Core.Nothing,
      passedCount = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ChallengeMetrics"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
            Core.<$> (o Core..:? "failedCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "nocaptchaCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "pageloadCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "passedCount" Core.<&> Core.fmap Core.fromAsText)
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
  where
  toJSON GoogleCloudRecaptchaenterpriseV1ChallengeMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("failedCount" Core..=) Core.. Core.AsText Core.<$> failedCount,
            ("nocaptchaCount" Core..=)
              Core.. Core.AsText
              Core.<$> nocaptchaCount,
            ("pageloadCount" Core..=)
              Core.. Core.AsText
              Core.<$> pageloadCount,
            ("passedCount" Core..=) Core.. Core.AsText Core.<$> passedCount
          ]
      )

-- | Information about a verification endpoint that can be used for 2FA.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo' smart constructor.
data GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo = GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
  { -- | Email address for which to trigger a verification request.
    emailAddress :: (Core.Maybe Core.Text),
    -- | Output only. Timestamp of the last successful verification for the endpoint, if any.
    lastVerificationTime :: (Core.Maybe Core.DateTime),
    -- | Phone number for which to trigger a verification request. Should be given in E.164 format.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Output only. Token to provide to the client to trigger endpoint verification. It must be used within 15 minutes.
    requestToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo ::
  GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
newGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo =
  GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
    { emailAddress =
        Core.Nothing,
      lastVerificationTime = Core.Nothing,
      phoneNumber = Core.Nothing,
      requestToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
            Core.<$> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "lastVerificationTime")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "requestToken")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
  where
  toJSON GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("emailAddress" Core..=) Core.<$> emailAddress,
            ("lastVerificationTime" Core..=) Core.<$> lastVerificationTime,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("requestToken" Core..=) Core.<$> requestToken
          ]
      )

-- | The event being assessed.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1Event' smart constructor.
data GoogleCloudRecaptchaenterpriseV1Event = GoogleCloudRecaptchaenterpriseV1Event
  { -- | Optional. The expected action for this type of event. This should be the same action provided at token generation time on client-side platforms already integrated with recaptcha enterprise.
    expectedAction :: (Core.Maybe Core.Text),
    -- | Optional. Flag for a reCAPTCHA express request for an assessment without a token. If enabled, @site_key@ must reference an Express site key.
    express :: (Core.Maybe Core.Bool),
    -- | Optional. Flag for enabling firewall policy config assessment. If this flag is enabled, the firewall policy is evaluated and a suggested firewall action is returned in the response.
    firewallPolicyEvaluation :: (Core.Maybe Core.Bool),
    -- | Optional. The Fraud Prevention setting for this assessment.
    fraudPrevention :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention),
    -- | Optional. Deprecated: use @user_info.account_id@ instead. Unique stable hashed user identifier for the request. The identifier must be hashed using hmac-sha256 with stable secret.
    hashedAccountId :: (Core.Maybe Core.Base64),
    -- | Optional. HTTP header information about the request.
    headers :: (Core.Maybe [Core.Text]),
    -- | Optional. JA3 fingerprint for SSL clients.
    ja3 :: (Core.Maybe Core.Text),
    -- | Optional. The URI resource the user requested that triggered an assessment.
    requestedUri :: (Core.Maybe Core.Text),
    -- | Optional. The site key that was used to invoke reCAPTCHA Enterprise on your site and generate the token.
    siteKey :: (Core.Maybe Core.Text),
    -- | Optional. The user response token provided by the reCAPTCHA Enterprise client-side integration on your site.
    token :: (Core.Maybe Core.Text),
    -- | Optional. Data describing a payment transaction to be assessed. Sending this data enables reCAPTCHA Enterprise Fraud Prevention and the FraudPreventionAssessment component in the response.
    transactionData :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1TransactionData),
    -- | Optional. The user agent present in the request from the user\'s device related to this event.
    userAgent :: (Core.Maybe Core.Text),
    -- | Optional. Information about the user that generates this event, when they can be identified. They are often identified through the use of an account for logged-in requests or login\/registration requests, or by providing user identifiers for guest actions like checkout.
    userInfo :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1UserInfo),
    -- | Optional. The IP address in the request from the user\'s device related to this event.
    userIpAddress :: (Core.Maybe Core.Text),
    -- | Optional. Flag for running WAF token assessment. If enabled, the token must be specified, and have been created by a WAF-enabled key.
    wafTokenAssessment :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1Event' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1Event ::
  GoogleCloudRecaptchaenterpriseV1Event
newGoogleCloudRecaptchaenterpriseV1Event =
  GoogleCloudRecaptchaenterpriseV1Event
    { expectedAction =
        Core.Nothing,
      express = Core.Nothing,
      firewallPolicyEvaluation = Core.Nothing,
      fraudPrevention = Core.Nothing,
      hashedAccountId = Core.Nothing,
      headers = Core.Nothing,
      ja3 = Core.Nothing,
      requestedUri = Core.Nothing,
      siteKey = Core.Nothing,
      token = Core.Nothing,
      transactionData = Core.Nothing,
      userAgent = Core.Nothing,
      userInfo = Core.Nothing,
      userIpAddress = Core.Nothing,
      wafTokenAssessment = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1Event where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1Event"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1Event
            Core.<$> (o Core..:? "expectedAction")
            Core.<*> (o Core..:? "express")
            Core.<*> (o Core..:? "firewallPolicyEvaluation")
            Core.<*> (o Core..:? "fraudPrevention")
            Core.<*> (o Core..:? "hashedAccountId")
            Core.<*> (o Core..:? "headers")
            Core.<*> (o Core..:? "ja3")
            Core.<*> (o Core..:? "requestedUri")
            Core.<*> (o Core..:? "siteKey")
            Core.<*> (o Core..:? "token")
            Core.<*> (o Core..:? "transactionData")
            Core.<*> (o Core..:? "userAgent")
            Core.<*> (o Core..:? "userInfo")
            Core.<*> (o Core..:? "userIpAddress")
            Core.<*> (o Core..:? "wafTokenAssessment")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1Event where
  toJSON GoogleCloudRecaptchaenterpriseV1Event {..} =
    Core.object
      ( Core.catMaybes
          [ ("expectedAction" Core..=) Core.<$> expectedAction,
            ("express" Core..=) Core.<$> express,
            ("firewallPolicyEvaluation" Core..=)
              Core.<$> firewallPolicyEvaluation,
            ("fraudPrevention" Core..=) Core.<$> fraudPrevention,
            ("hashedAccountId" Core..=) Core.<$> hashedAccountId,
            ("headers" Core..=) Core.<$> headers,
            ("ja3" Core..=) Core.<$> ja3,
            ("requestedUri" Core..=) Core.<$> requestedUri,
            ("siteKey" Core..=) Core.<$> siteKey,
            ("token" Core..=) Core.<$> token,
            ("transactionData" Core..=) Core.<$> transactionData,
            ("userAgent" Core..=) Core.<$> userAgent,
            ("userInfo" Core..=) Core.<$> userInfo,
            ("userIpAddress" Core..=) Core.<$> userIpAddress,
            ("wafTokenAssessment" Core..=) Core.<$> wafTokenAssessment
          ]
      )

-- | Settings specific to keys that can be used for reCAPTCHA Express.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ExpressKeySettings' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ExpressKeySettings = GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ExpressKeySettings' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ExpressKeySettings ::
  GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
newGoogleCloudRecaptchaenterpriseV1ExpressKeySettings =
  GoogleCloudRecaptchaenterpriseV1ExpressKeySettings

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ExpressKeySettings"
      ( \o ->
          Core.pure GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
  where
  toJSON = Core.const Core.emptyObject

-- | An individual action. Each action represents what to do if a policy matches.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallAction' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FirewallAction = GoogleCloudRecaptchaenterpriseV1FirewallAction
  { -- | The user request did not match any policy and should be allowed access to the requested resource.
    allow ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
      ),
    -- | This action denies access to a given page. The user gets an HTTP error code.
    block ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
      ),
    -- | This action injects reCAPTCHA JavaScript code into the HTML page returned by the site backend.
    includeRecaptchaScript ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
      ),
    -- | This action redirects the request to a reCAPTCHA interstitial to attach a token.
    redirect ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
      ),
    -- | This action sets a custom header but allow the request to continue to the customer backend.
    setHeader ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
      ),
    -- | This action transparently serves a different page to an offending user.
    substitute ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallAction' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallAction ::
  GoogleCloudRecaptchaenterpriseV1FirewallAction
newGoogleCloudRecaptchaenterpriseV1FirewallAction =
  GoogleCloudRecaptchaenterpriseV1FirewallAction
    { allow =
        Core.Nothing,
      block = Core.Nothing,
      includeRecaptchaScript = Core.Nothing,
      redirect = Core.Nothing,
      setHeader = Core.Nothing,
      substitute = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallAction
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallAction"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FirewallAction
            Core.<$> (o Core..:? "allow")
            Core.<*> (o Core..:? "block")
            Core.<*> (o Core..:? "includeRecaptchaScript")
            Core.<*> (o Core..:? "redirect")
            Core.<*> (o Core..:? "setHeader")
            Core.<*> (o Core..:? "substitute")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1FirewallAction where
  toJSON GoogleCloudRecaptchaenterpriseV1FirewallAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("allow" Core..=) Core.<$> allow,
            ("block" Core..=) Core.<$> block,
            ("includeRecaptchaScript" Core..=) Core.<$> includeRecaptchaScript,
            ("redirect" Core..=) Core.<$> redirect,
            ("setHeader" Core..=) Core.<$> setHeader,
            ("substitute" Core..=) Core.<$> substitute
          ]
      )

-- | An allow action continues processing a request unimpeded.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction = GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction ::
  GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
newGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction =
  GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction"
      ( \o ->
          Core.pure
            GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
  where
  toJSON = Core.const Core.emptyObject

-- | A block action serves an HTTP error code a prevents the request from hitting the backend.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction = GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction ::
  GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
newGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction =
  GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction"
      ( \o ->
          Core.pure
            GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
  where
  toJSON = Core.const Core.emptyObject

-- | An include reCAPTCHA script action involves injecting reCAPTCHA JavaScript code into the HTML returned by the site backend. This reCAPTCHA script is tasked with collecting user signals on the requested web page, issuing tokens as a cookie within the site domain, and enabling their utilization in subsequent page requests.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction = GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction ::
  GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
newGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction =
  GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction"
      ( \o ->
          Core.pure
            GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
  where
  toJSON = Core.const Core.emptyObject

-- | A redirect action returns a 307 (temporary redirect) response, pointing the user to a reCAPTCHA interstitial page to attach a token.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction = GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction ::
  GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
newGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction =
  GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction"
      ( \o ->
          Core.pure
            GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
  where
  toJSON = Core.const Core.emptyObject

-- | A set header action sets a header and forwards the request to the backend. This can be used to trigger custom protection implemented on the backend.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction = GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
  { -- | Optional. The header key to set in the request to the backend server.
    key :: (Core.Maybe Core.Text),
    -- | Optional. The header value to set in the request to the backend server.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction ::
  GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
newGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction =
  GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
    { key =
        Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction {..} =
      Core.object
        ( Core.catMaybes
            [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value]
        )

-- | A substitute action transparently serves a different page than the one requested.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction = GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
  { -- | Optional. The address to redirect to. The target is a relative path in the current host. Example: \"\/blog\/404.html\".
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction ::
  GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
newGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction =
  GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
    { path =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
            Core.<$> (o Core..:? "path")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction {..} =
      Core.object (Core.catMaybes [("path" Core..=) Core.<$> path])

-- | A FirewallPolicy represents a single matching pattern and resulting actions to take.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallPolicy' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FirewallPolicy = GoogleCloudRecaptchaenterpriseV1FirewallPolicy
  { -- | Optional. The actions that the caller should take regarding user access. There should be at most one terminal action. A terminal action is any action that forces a response, such as @AllowAction@, @BlockAction@ or @SubstituteAction@. Zero or more non-terminal actions such as @SetHeader@ might be specified. A single policy can contain up to 16 actions.
    actions :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1FirewallAction]),
    -- | Optional. A CEL (Common Expression Language) conditional expression that specifies if this policy applies to an incoming user request. If this condition evaluates to true and the requested path matched the path pattern, the associated actions should be executed by the caller. The condition string is checked for CEL syntax correctness on creation. For more information, see the <https://github.com/google/cel-spec CEL spec> and its <https://github.com/google/cel-spec/blob/master/doc/langdef.md language definition>. A condition has a max length of 500 characters.
    condition :: (Core.Maybe Core.Text),
    -- | Optional. A description of what this policy aims to achieve, for convenience purposes. The description can at most include 256 UTF-8 characters.
    description :: (Core.Maybe Core.Text),
    -- | Identifier. The resource name for the FirewallPolicy in the format @projects\/{project}\/firewallpolicies\/{firewallpolicy}@.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The path for which this policy applies, specified as a glob pattern. For more information on glob, see the <https://man7.org/linux/man-pages/man7/glob.7.html manual page>. A path has a max length of 200 characters.
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallPolicy' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallPolicy ::
  GoogleCloudRecaptchaenterpriseV1FirewallPolicy
newGoogleCloudRecaptchaenterpriseV1FirewallPolicy =
  GoogleCloudRecaptchaenterpriseV1FirewallPolicy
    { actions =
        Core.Nothing,
      condition = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing,
      path = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallPolicy
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallPolicy"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FirewallPolicy
            Core.<$> (o Core..:? "actions")
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "path")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1FirewallPolicy where
  toJSON GoogleCloudRecaptchaenterpriseV1FirewallPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("actions" Core..=) Core.<$> actions,
            ("condition" Core..=) Core.<$> condition,
            ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("path" Core..=) Core.<$> path
          ]
      )

-- | Policy config assessment.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment = GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
  { -- | Output only. If the processing of a policy config fails, an error is populated and the firewall_policy is left empty.
    error :: (Core.Maybe GoogleRpcStatus),
    -- | Output only. The policy that matched the request. If more than one policy may match, this is the first match. If no policy matches the incoming request, the policy field is left empty.
    firewallPolicy :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1FirewallPolicy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment ::
  GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
newGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment =
  GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
    { error =
        Core.Nothing,
      firewallPolicy = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "firewallPolicy")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
  where
  toJSON GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("firewallPolicy" Core..=) Core.<$> firewallPolicy
          ]
      )

-- | Assessment for Fraud Prevention.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment = GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
  { -- | Output only. Assessment of this transaction for behavioral trust.
    behavioralTrustVerdict ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
      ),
    -- | Output only. Assessment of this transaction for risk of being part of a card testing attack.
    cardTestingVerdict ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
      ),
    -- | Output only. Assessment of this transaction for risk of a stolen instrument.
    stolenInstrumentVerdict ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
      ),
    -- | Output only. Probability of this transaction being fraudulent. Summarizes the combined risk of attack vectors below. Values are from 0.0 (lowest) to 1.0 (highest).
    transactionRisk :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment ::
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment =
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
    { behavioralTrustVerdict =
        Core.Nothing,
      cardTestingVerdict = Core.Nothing,
      stolenInstrumentVerdict =
        Core.Nothing,
      transactionRisk = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
            Core.<$> (o Core..:? "behavioralTrustVerdict")
            Core.<*> (o Core..:? "cardTestingVerdict")
            Core.<*> (o Core..:? "stolenInstrumentVerdict")
            Core.<*> (o Core..:? "transactionRisk")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment {..} =
      Core.object
        ( Core.catMaybes
            [ ("behavioralTrustVerdict" Core..=)
                Core.<$> behavioralTrustVerdict,
              ("cardTestingVerdict" Core..=) Core.<$> cardTestingVerdict,
              ("stolenInstrumentVerdict" Core..=)
                Core.<$> stolenInstrumentVerdict,
              ("transactionRisk" Core..=) Core.<$> transactionRisk
            ]
        )

-- | Information about behavioral trust of the transaction.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict = GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
  { -- | Output only. Probability of this transaction attempt being executed in a behaviorally trustworthy way. Values are from 0.0 (lowest) to 1.0 (highest).
    trust :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict ::
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict =
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
    { trust =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
            Core.<$> (o Core..:? "trust")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict {..} =
      Core.object (Core.catMaybes [("trust" Core..=) Core.<$> trust])

-- | Information about card testing fraud, where an adversary is testing fraudulently obtained cards or brute forcing their details.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict = GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
  { -- | Output only. Probability of this transaction attempt being part of a card testing attack. Values are from 0.0 (lowest) to 1.0 (highest).
    risk :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict ::
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict =
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
    { risk =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
            Core.<$> (o Core..:? "risk")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict {..} =
      Core.object (Core.catMaybes [("risk" Core..=) Core.<$> risk])

-- | Information about stolen instrument fraud, where the user is not the legitimate owner of the instrument being used for the purchase.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict = GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
  { -- | Output only. Probability of this transaction being executed with a stolen instrument. Values are from 0.0 (lowest) to 1.0 (highest).
    risk :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict ::
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict =
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
    { risk =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
            Core.<$> (o Core..:? "risk")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict {..} =
      Core.object (Core.catMaybes [("risk" Core..=) Core.<$> risk])

-- | Fraud signals describing users and cards involved in the transaction.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FraudSignals' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FraudSignals = GoogleCloudRecaptchaenterpriseV1FraudSignals
  { -- | Output only. Signals describing the payment card or cards used in this transaction.
    cardSignals ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
      ),
    -- | Output only. Signals describing the end user in this transaction.
    userSignals ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FraudSignals' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FraudSignals ::
  GoogleCloudRecaptchaenterpriseV1FraudSignals
newGoogleCloudRecaptchaenterpriseV1FraudSignals =
  GoogleCloudRecaptchaenterpriseV1FraudSignals
    { cardSignals =
        Core.Nothing,
      userSignals = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1FraudSignals where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FraudSignals"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FraudSignals
            Core.<$> (o Core..:? "cardSignals")
            Core.<*> (o Core..:? "userSignals")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1FraudSignals where
  toJSON GoogleCloudRecaptchaenterpriseV1FraudSignals {..} =
    Core.object
      ( Core.catMaybes
          [ ("cardSignals" Core..=) Core.<$> cardSignals,
            ("userSignals" Core..=) Core.<$> userSignals
          ]
      )

-- | Signals describing the payment card used in this transaction.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals = GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
  { -- | Output only. The labels for the payment card in this transaction.
    cardLabels ::
      ( Core.Maybe
          [GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals ::
  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
newGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals =
  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
    { cardLabels =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
            Core.<$> (o Core..:? "cardLabels")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
  where
  toJSON GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals {..} =
    Core.object
      (Core.catMaybes [("cardLabels" Core..=) Core.<$> cardLabels])

-- | Signals describing the user involved in this transaction.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals' smart constructor.
data GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals = GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
  { -- | Output only. This user (based on email, phone, and other identifiers) has been seen on the internet for at least this number of days.
    activeDaysLowerBound :: (Core.Maybe Core.Int32),
    -- | Output only. Likelihood (from 0.0 to 1.0) this user includes synthetic components in their identity, such as a randomly generated email address, temporary phone number, or fake shipping address.
    syntheticRisk :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals ::
  GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
newGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals =
  GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
    { activeDaysLowerBound =
        Core.Nothing,
      syntheticRisk = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
            Core.<$> (o Core..:? "activeDaysLowerBound")
            Core.<*> (o Core..:? "syntheticRisk")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
  where
  toJSON GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeDaysLowerBound" Core..=) Core.<$> activeDaysLowerBound,
            ("syntheticRisk" Core..=) Core.<$> syntheticRisk
          ]
      )

-- | Settings specific to keys that can be used by iOS apps.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1IOSKeySettings' smart constructor.
data GoogleCloudRecaptchaenterpriseV1IOSKeySettings = GoogleCloudRecaptchaenterpriseV1IOSKeySettings
  { -- | Optional. If set to true, allowed/bundle/ids are not enforced.
    allowAllBundleIds :: (Core.Maybe Core.Bool),
    -- | Optional. iOS bundle ids of apps allowed to use the key. Example: \'com.companyname.productname.appname\'
    allowedBundleIds :: (Core.Maybe [Core.Text]),
    -- | Optional. Apple Developer account details for the app that is protected by the reCAPTCHA Key. reCAPTCHA leverages platform-specific checks like Apple App Attest and Apple DeviceCheck to protect your app from abuse. Providing these fields allows reCAPTCHA to get a better assessment of the integrity of your app.
    appleDeveloperId :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1AppleDeveloperId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1IOSKeySettings' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1IOSKeySettings ::
  GoogleCloudRecaptchaenterpriseV1IOSKeySettings
newGoogleCloudRecaptchaenterpriseV1IOSKeySettings =
  GoogleCloudRecaptchaenterpriseV1IOSKeySettings
    { allowAllBundleIds =
        Core.Nothing,
      allowedBundleIds = Core.Nothing,
      appleDeveloperId = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1IOSKeySettings
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1IOSKeySettings"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1IOSKeySettings
            Core.<$> (o Core..:? "allowAllBundleIds")
            Core.<*> (o Core..:? "allowedBundleIds")
            Core.<*> (o Core..:? "appleDeveloperId")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1IOSKeySettings where
  toJSON GoogleCloudRecaptchaenterpriseV1IOSKeySettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowAllBundleIds" Core..=) Core.<$> allowAllBundleIds,
            ("allowedBundleIds" Core..=) Core.<$> allowedBundleIds,
            ("appleDeveloperId" Core..=) Core.<$> appleDeveloperId
          ]
      )

-- | Information about the IP or IP range override.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1IpOverrideData' smart constructor.
data GoogleCloudRecaptchaenterpriseV1IpOverrideData = GoogleCloudRecaptchaenterpriseV1IpOverrideData
  { -- | Required. The IP address to override (can be IPv4, IPv6 or CIDR). The IP override must be a valid IPv4 or IPv6 address, or a CIDR range. The IP override must be a public IP address. Example of IPv4: 168.192.5.6 Example of IPv6: 2001:0000:130F:0000:0000:09C0:876A:130B Example of IPv4 with CIDR: 168.192.5.0\/24 Example of IPv6 with CIDR: 2001:0DB8:1234::\/48
    ip :: (Core.Maybe Core.Text),
    -- | Required. Describes the type of IP override.
    overrideType ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1IpOverrideData' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1IpOverrideData ::
  GoogleCloudRecaptchaenterpriseV1IpOverrideData
newGoogleCloudRecaptchaenterpriseV1IpOverrideData =
  GoogleCloudRecaptchaenterpriseV1IpOverrideData
    { ip = Core.Nothing,
      overrideType = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1IpOverrideData
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1IpOverrideData"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1IpOverrideData
            Core.<$> (o Core..:? "ip")
            Core.<*> (o Core..:? "overrideType")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1IpOverrideData where
  toJSON GoogleCloudRecaptchaenterpriseV1IpOverrideData {..} =
    Core.object
      ( Core.catMaybes
          [ ("ip" Core..=) Core.<$> ip,
            ("overrideType" Core..=) Core.<$> overrideType
          ]
      )

-- | A key used to identify and configure applications (web and\/or mobile) that use reCAPTCHA Enterprise.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1Key' smart constructor.
data GoogleCloudRecaptchaenterpriseV1Key = GoogleCloudRecaptchaenterpriseV1Key
  { -- | Settings for keys that can be used by Android apps.
    androidSettings :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1AndroidKeySettings),
    -- | Output only. The timestamp corresponding to the creation of this key.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Required. Human-readable display name of this key. Modifiable by user.
    displayName :: (Core.Maybe Core.Text),
    -- | Settings for keys that can be used by reCAPTCHA Express.
    expressSettings :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1ExpressKeySettings),
    -- | Settings for keys that can be used by iOS apps.
    iosSettings :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1IOSKeySettings),
    -- | Optional. See [Creating and managing labels] (https:\/\/cloud.google.com\/recaptcha\/docs\/labels).
    labels :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1Key_Labels),
    -- | Identifier. The resource name for the Key in the format @projects\/{project}\/keys\/{key}@.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Options for user acceptance testing.
    testingOptions :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1TestingOptions),
    -- | Optional. Settings for WAF
    wafSettings :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1WafSettings),
    -- | Settings for keys that can be used by websites.
    webSettings :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1WebKeySettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1Key' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1Key ::
  GoogleCloudRecaptchaenterpriseV1Key
newGoogleCloudRecaptchaenterpriseV1Key =
  GoogleCloudRecaptchaenterpriseV1Key
    { androidSettings =
        Core.Nothing,
      createTime = Core.Nothing,
      displayName = Core.Nothing,
      expressSettings = Core.Nothing,
      iosSettings = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      testingOptions = Core.Nothing,
      wafSettings = Core.Nothing,
      webSettings = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1Key where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1Key"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1Key
            Core.<$> (o Core..:? "androidSettings")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "expressSettings")
            Core.<*> (o Core..:? "iosSettings")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "testingOptions")
            Core.<*> (o Core..:? "wafSettings")
            Core.<*> (o Core..:? "webSettings")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1Key where
  toJSON GoogleCloudRecaptchaenterpriseV1Key {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidSettings" Core..=) Core.<$> androidSettings,
            ("createTime" Core..=) Core.<$> createTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("expressSettings" Core..=) Core.<$> expressSettings,
            ("iosSettings" Core..=) Core.<$> iosSettings,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("testingOptions" Core..=) Core.<$> testingOptions,
            ("wafSettings" Core..=) Core.<$> wafSettings,
            ("webSettings" Core..=) Core.<$> webSettings
          ]
      )

-- | Optional. See [Creating and managing labels] (https:\/\/cloud.google.com\/recaptcha\/docs\/labels).
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1Key_Labels' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1Key_Labels = GoogleCloudRecaptchaenterpriseV1Key_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1Key_Labels' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1Key_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudRecaptchaenterpriseV1Key_Labels
newGoogleCloudRecaptchaenterpriseV1Key_Labels additional =
  GoogleCloudRecaptchaenterpriseV1Key_Labels
    { additional =
        additional
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1Key_Labels where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1Key_Labels"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1Key_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1Key_Labels where
  toJSON GoogleCloudRecaptchaenterpriseV1Key_Labels {..} =
    Core.toJSON additional

-- | Response to request to list firewall policies belonging to a project.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse = GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
  { -- | Policy details.
    firewallPolicies :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1FirewallPolicy]),
    -- | Token to retrieve the next page of results. It is set to empty if no policies remain in results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse ::
  GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
newGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse =
  GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
    { firewallPolicies =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
            Core.<$> (o Core..:? "firewallPolicies")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("firewallPolicies" Core..=) Core.<$> firewallPolicies,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | Response for ListIpOverrides.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse = GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
  { -- | IP Overrides details.
    ipOverrides :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1IpOverrideData]),
    -- | Token to retrieve the next page of results. If this field is empty, no keys remain in the results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse ::
  GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
newGoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse =
  GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
    { ipOverrides =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
            Core.<$> (o Core..:? "ipOverrides")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
  where
  toJSON GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("ipOverrides" Core..=) Core.<$> ipOverrides,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response to request to list keys in a project.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ListKeysResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ListKeysResponse = GoogleCloudRecaptchaenterpriseV1ListKeysResponse
  { -- | Key details.
    keys :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1Key]),
    -- | Token to retrieve the next page of results. It is set to empty if no keys remain in results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ListKeysResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ListKeysResponse ::
  GoogleCloudRecaptchaenterpriseV1ListKeysResponse
newGoogleCloudRecaptchaenterpriseV1ListKeysResponse =
  GoogleCloudRecaptchaenterpriseV1ListKeysResponse
    { keys =
        Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ListKeysResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ListKeysResponse"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ListKeysResponse
            Core.<$> (o Core..:? "keys")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ListKeysResponse
  where
  toJSON GoogleCloudRecaptchaenterpriseV1ListKeysResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("keys" Core..=) Core.<$> keys,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response to a @ListRelatedAccountGroupMemberships@ call.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse = GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The memberships listed by the query.
    relatedAccountGroupMemberships ::
      ( Core.Maybe
          [GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse ::
  GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse =
  GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
    { nextPageToken =
        Core.Nothing,
      relatedAccountGroupMemberships =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "relatedAccountGroupMemberships")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("relatedAccountGroupMemberships" Core..=)
                Core.<$> relatedAccountGroupMemberships
            ]
        )

-- | The response to a @ListRelatedAccountGroups@ call.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse = GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The groups of related accounts listed by the query.
    relatedAccountGroups :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse ::
  GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse =
  GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
    { nextPageToken =
        Core.Nothing,
      relatedAccountGroups =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "relatedAccountGroups")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("relatedAccountGroups" Core..=) Core.<$> relatedAccountGroups
            ]
        )

-- | Metrics for a single Key.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1Metrics' smart constructor.
data GoogleCloudRecaptchaenterpriseV1Metrics = GoogleCloudRecaptchaenterpriseV1Metrics
  { -- | Metrics are continuous and in order by dates, and in the granularity of day. Only challenge-based keys (CHECKBOX, INVISIBLE) have challenge-based data.
    challengeMetrics :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1ChallengeMetrics]),
    -- | Output only. Identifier. The name of the metrics, in the format @projects\/{project}\/keys\/{key}\/metrics@.
    name :: (Core.Maybe Core.Text),
    -- | Metrics are continuous and in order by dates, and in the granularity of day. All Key types should have score-based data.
    scoreMetrics :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1ScoreMetrics]),
    -- | Inclusive start time aligned to a day (UTC).
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1Metrics' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1Metrics ::
  GoogleCloudRecaptchaenterpriseV1Metrics
newGoogleCloudRecaptchaenterpriseV1Metrics =
  GoogleCloudRecaptchaenterpriseV1Metrics
    { challengeMetrics =
        Core.Nothing,
      name = Core.Nothing,
      scoreMetrics = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1Metrics where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1Metrics"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1Metrics
            Core.<$> (o Core..:? "challengeMetrics")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "scoreMetrics")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1Metrics where
  toJSON GoogleCloudRecaptchaenterpriseV1Metrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("challengeMetrics" Core..=) Core.<$> challengeMetrics,
            ("name" Core..=) Core.<$> name,
            ("scoreMetrics" Core..=) Core.<$> scoreMetrics,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | The migrate key request message.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest = GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
  { -- | Optional. If true, skips the billing check. A reCAPTCHA Enterprise key or migrated key behaves differently than a reCAPTCHA (non-Enterprise version) key when you reach a quota limit (see https:\/\/cloud.google.com\/recaptcha\/quotas#quota_limit). To avoid any disruption of your usage, we check that a billing account is present. If your usage of reCAPTCHA is under the free quota, you can safely skip the billing check and proceed with the migration. See https:\/\/cloud.google.com\/recaptcha\/docs\/billing-information.
    skipBillingCheck :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest ::
  GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
newGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest =
  GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
    { skipBillingCheck =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
            Core.<$> (o Core..:? "skipBillingCheck")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
  where
  toJSON GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest {..} =
    Core.object
      ( Core.catMaybes
          [("skipBillingCheck" Core..=) Core.<$> skipBillingCheck]
      )

-- | Assessment for Phone Fraud
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment = GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
  { -- | Output only. Assessment of this phone event for risk of SMS toll fraud.
    smsTollFraudVerdict :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment ::
  GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
newGoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment =
  GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
    { smsTollFraudVerdict =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
            Core.<$> (o Core..:? "smsTollFraudVerdict")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
  where
  toJSON GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment {..} =
    Core.object
      ( Core.catMaybes
          [("smsTollFraudVerdict" Core..=) Core.<$> smsTollFraudVerdict]
      )

-- | Private password leak verification info.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification' smart constructor.
data GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification = GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
  { -- | Output only. List of prefixes of the encrypted potential password leaks that matched the given parameters. They must be compared with the client-side decryption prefix of @reencrypted_user_credentials_hash@
    encryptedLeakMatchPrefixes :: (Core.Maybe [Core.Base64]),
    -- | Optional. Encrypted Scrypt hash of the canonicalized username+password. It is re-encrypted by the server and returned through @reencrypted_user_credentials_hash@.
    encryptedUserCredentialsHash :: (Core.Maybe Core.Base64),
    -- | Required. Exactly 26-bit prefix of the SHA-256 hash of the canonicalized username. It is used to look up password leaks associated with that hash prefix.
    lookupHashPrefix :: (Core.Maybe Core.Base64),
    -- | Output only. Corresponds to the re-encryption of the @encrypted_user_credentials_hash@ field. It is used to match potential password leaks within @encrypted_leak_match_prefixes@.
    reencryptedUserCredentialsHash :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification ::
  GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
newGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification =
  GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
    { encryptedLeakMatchPrefixes =
        Core.Nothing,
      encryptedUserCredentialsHash =
        Core.Nothing,
      lookupHashPrefix = Core.Nothing,
      reencryptedUserCredentialsHash =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
            Core.<$> (o Core..:? "encryptedLeakMatchPrefixes")
            Core.<*> (o Core..:? "encryptedUserCredentialsHash")
            Core.<*> (o Core..:? "lookupHashPrefix")
            Core.<*> (o Core..:? "reencryptedUserCredentialsHash")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification {..} =
      Core.object
        ( Core.catMaybes
            [ ("encryptedLeakMatchPrefixes" Core..=)
                Core.<$> encryptedLeakMatchPrefixes,
              ("encryptedUserCredentialsHash" Core..=)
                Core.<$> encryptedUserCredentialsHash,
              ("lookupHashPrefix" Core..=) Core.<$> lookupHashPrefix,
              ("reencryptedUserCredentialsHash" Core..=)
                Core.<$> reencryptedUserCredentialsHash
            ]
        )

-- | A group of related accounts.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup = GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
  { -- | Required. Identifier. The resource name for the related account group in the format @projects\/{project}\/relatedaccountgroups\/{related_account_group}@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup ::
  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup =
  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
    { name =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
            Core.<$> (o Core..:? "name")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
  where
  toJSON GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup {..} =
    Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | A membership in a group of related accounts.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership' smart constructor.
data GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership = GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
  { -- | The unique stable account identifier of the member. The identifier corresponds to an @account_id@ provided in a previous @CreateAssessment@ or @AnnotateAssessment@ call.
    accountId :: (Core.Maybe Core.Text),
    -- | Deprecated: use @account_id@ instead. The unique stable hashed account identifier of the member. The identifier corresponds to a @hashed_account_id@ provided in a previous @CreateAssessment@ or @AnnotateAssessment@ call.
    hashedAccountId :: (Core.Maybe Core.Base64),
    -- | Required. Identifier. The resource name for this membership in the format @projects\/{project}\/relatedaccountgroups\/{relatedaccountgroup}\/memberships\/{membership}@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership ::
  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership =
  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
    { accountId =
        Core.Nothing,
      hashedAccountId = Core.Nothing,
      name = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "hashedAccountId")
            Core.<*> (o Core..:? "name")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership {..} =
      Core.object
        ( Core.catMaybes
            [ ("accountId" Core..=) Core.<$> accountId,
              ("hashedAccountId" Core..=) Core.<$> hashedAccountId,
              ("name" Core..=) Core.<$> name
            ]
        )

-- | The RemoveIpOverride request message.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest = GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
  { -- | Required. IP override to be removed from the key.
    ipOverrideData :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1IpOverrideData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest ::
  GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest =
  GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
    { ipOverrideData =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
            Core.<$> (o Core..:? "ipOverrideData")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
  where
  toJSON GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest {..} =
    Core.object
      ( Core.catMaybes
          [("ipOverrideData" Core..=) Core.<$> ipOverrideData]
      )

-- | Response for RemoveIpOverride.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse = GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse ::
  GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse =
  GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse"
      ( \o ->
          Core.pure GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
  where
  toJSON = Core.const Core.emptyObject

-- | The reorder firewall policies request message.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest = GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
  { -- | Required. A list containing all policy names, in the new order. Each name is in the format @projects\/{project}\/firewallpolicies\/{firewallpolicy}@.
    names :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest ::
  GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest =
  GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
    { names =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
            Core.<$> (o Core..:? "names")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest {..} =
      Core.object (Core.catMaybes [("names" Core..=) Core.<$> names])

-- | The reorder firewall policies response message.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse = GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse ::
  GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse =
  GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse"
      ( \o ->
          Core.pure
            GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
  where
  toJSON = Core.const Core.emptyObject

-- | Secret key is used only in legacy reCAPTCHA. It must be used in a 3rd party integration with legacy reCAPTCHA.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse = GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
  { -- | The secret key (also known as shared secret) authorizes communication between your application backend and the reCAPTCHA Enterprise server to create an assessment. The secret key needs to be kept safe for security purposes.
    legacySecretKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse ::
  GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
newGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse =
  GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
    { legacySecretKey =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
            Core.<$> (o Core..:? "legacySecretKey")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse {..} =
      Core.object
        ( Core.catMaybes
            [("legacySecretKey" Core..=) Core.<$> legacySecretKey]
        )

-- | Risk analysis result for an event.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1RiskAnalysis' smart constructor.
data GoogleCloudRecaptchaenterpriseV1RiskAnalysis = GoogleCloudRecaptchaenterpriseV1RiskAnalysis
  { -- | Output only. Challenge information for SCORE/AND/CHALLENGE and INVISIBLE keys
    challenge :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge),
    -- | Output only. Extended verdict reasons to be used for experimentation only. The set of possible reasons is subject to change.
    extendedVerdictReasons :: (Core.Maybe [Core.Text]),
    -- | Output only. Reasons contributing to the risk analysis verdict.
    reasons ::
      ( Core.Maybe
          [GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem]
      ),
    -- | Output only. Legitimate event score from 0.0 to 1.0. (1.0 means very likely legitimate traffic while 0.0 means very likely non-legitimate traffic).
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1RiskAnalysis' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1RiskAnalysis ::
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis
newGoogleCloudRecaptchaenterpriseV1RiskAnalysis =
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis
    { challenge =
        Core.Nothing,
      extendedVerdictReasons = Core.Nothing,
      reasons = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1RiskAnalysis where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1RiskAnalysis"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1RiskAnalysis
            Core.<$> (o Core..:? "challenge")
            Core.<*> (o Core..:? "extendedVerdictReasons")
            Core.<*> (o Core..:? "reasons")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1RiskAnalysis where
  toJSON GoogleCloudRecaptchaenterpriseV1RiskAnalysis {..} =
    Core.object
      ( Core.catMaybes
          [ ("challenge" Core..=) Core.<$> challenge,
            ("extendedVerdictReasons" Core..=) Core.<$> extendedVerdictReasons,
            ("reasons" Core..=) Core.<$> reasons,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Score distribution.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ScoreDistribution' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1ScoreDistribution = GoogleCloudRecaptchaenterpriseV1ScoreDistribution
  { -- | Map key is score value multiplied by 100. The scores are discrete values between [0, 1]. The maximum number of buckets is on order of a few dozen, but typically much lower (ie. 10).
    scoreBuckets ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ScoreDistribution' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ScoreDistribution ::
  GoogleCloudRecaptchaenterpriseV1ScoreDistribution
newGoogleCloudRecaptchaenterpriseV1ScoreDistribution =
  GoogleCloudRecaptchaenterpriseV1ScoreDistribution
    { scoreBuckets =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ScoreDistribution"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ScoreDistribution
            Core.<$> (o Core..:? "scoreBuckets")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution
  where
  toJSON GoogleCloudRecaptchaenterpriseV1ScoreDistribution {..} =
    Core.object
      (Core.catMaybes [("scoreBuckets" Core..=) Core.<$> scoreBuckets])

-- | Map key is score value multiplied by 100. The scores are discrete values between [0, 1]. The maximum number of buckets is on order of a few dozen, but typically much lower (ie. 10).
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets = GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
newGoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
  additional =
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
      { additional =
          additional
      }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets {..} =
      Core.toJSON additional

-- | Metrics related to scoring.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ScoreMetrics' smart constructor.
data GoogleCloudRecaptchaenterpriseV1ScoreMetrics = GoogleCloudRecaptchaenterpriseV1ScoreMetrics
  { -- | Action-based metrics. The map key is the action name which specified by the site owners at time of the \"execute\" client-side call.
    actionMetrics ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
      ),
    -- | Aggregated score metrics for all traffic.
    overallMetrics :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1ScoreDistribution)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ScoreMetrics' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ScoreMetrics ::
  GoogleCloudRecaptchaenterpriseV1ScoreMetrics
newGoogleCloudRecaptchaenterpriseV1ScoreMetrics =
  GoogleCloudRecaptchaenterpriseV1ScoreMetrics
    { actionMetrics =
        Core.Nothing,
      overallMetrics = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1ScoreMetrics where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ScoreMetrics"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ScoreMetrics
            Core.<$> (o Core..:? "actionMetrics")
            Core.<*> (o Core..:? "overallMetrics")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1ScoreMetrics where
  toJSON GoogleCloudRecaptchaenterpriseV1ScoreMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionMetrics" Core..=) Core.<$> actionMetrics,
            ("overallMetrics" Core..=) Core.<$> overallMetrics
          ]
      )

-- | Action-based metrics. The map key is the action name which specified by the site owners at time of the \"execute\" client-side call.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics' smart constructor.
newtype GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics = GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
  { additional ::
      ( Core.HashMap
          Core.Text
          GoogleCloudRecaptchaenterpriseV1ScoreDistribution
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics ::
  -- |  See 'additional'.
  Core.HashMap
    Core.Text
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution ->
  GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
newGoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
  additional =
    GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
      { additional =
          additional
      }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics {..} =
      Core.toJSON additional

-- | The request message to search related account group memberships.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest' smart constructor.
data GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest = GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
  { -- | Optional. The unique stable account identifier used to search connections. The identifier should correspond to an @account_id@ provided in a previous @CreateAssessment@ or @AnnotateAssessment@ call. Either hashed/account/id or account_id must be set, but not both.
    accountId :: (Core.Maybe Core.Text),
    -- | Optional. Deprecated: use @account_id@ instead. The unique stable hashed account identifier used to search connections. The identifier should correspond to a @hashed_account_id@ provided in a previous @CreateAssessment@ or @AnnotateAssessment@ call. Either hashed/account/id or account_id must be set, but not both.
    hashedAccountId :: (Core.Maybe Core.Base64),
    -- | Optional. The maximum number of groups to return. The service might return fewer than this value. If unspecified, at most 50 groups are returned. The maximum value is 1000; values above 1000 are coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous @SearchRelatedAccountGroupMemberships@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @SearchRelatedAccountGroupMemberships@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest ::
  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest =
  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
    { accountId =
        Core.Nothing,
      hashedAccountId =
        Core.Nothing,
      pageSize =
        Core.Nothing,
      pageToken =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "hashedAccountId")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("accountId" Core..=) Core.<$> accountId,
              ("hashedAccountId" Core..=) Core.<$> hashedAccountId,
              ("pageSize" Core..=) Core.<$> pageSize,
              ("pageToken" Core..=) Core.<$> pageToken
            ]
        )

-- | The response to a @SearchRelatedAccountGroupMemberships@ call.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse' smart constructor.
data GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse = GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The queried memberships.
    relatedAccountGroupMemberships ::
      ( Core.Maybe
          [GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse ::
  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse =
  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
    { nextPageToken =
        Core.Nothing,
      relatedAccountGroupMemberships =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "relatedAccountGroupMemberships")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("relatedAccountGroupMemberships" Core..=)
                Core.<$> relatedAccountGroupMemberships
            ]
        )

-- | Information about SMS toll fraud.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict' smart constructor.
data GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict = GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
  { -- | Output only. Reasons contributing to the SMS toll fraud verdict.
    reasons ::
      ( Core.Maybe
          [GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem]
      ),
    -- | Output only. Probability of an SMS event being fraudulent. Values are from 0.0 (lowest) to 1.0 (highest).
    risk :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict ::
  GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
newGoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict =
  GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
    { reasons =
        Core.Nothing,
      risk = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
            Core.<$> (o Core..:? "reasons")
            Core.<*> (o Core..:? "risk")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
  where
  toJSON GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict {..} =
    Core.object
      ( Core.catMaybes
          [ ("reasons" Core..=) Core.<$> reasons,
            ("risk" Core..=) Core.<$> risk
          ]
      )

-- | Options for user acceptance testing.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1TestingOptions' smart constructor.
data GoogleCloudRecaptchaenterpriseV1TestingOptions = GoogleCloudRecaptchaenterpriseV1TestingOptions
  { -- | Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
    testingChallenge ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge
      ),
    -- | Optional. All assessments for this Key return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.
    testingScore :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1TestingOptions' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1TestingOptions ::
  GoogleCloudRecaptchaenterpriseV1TestingOptions
newGoogleCloudRecaptchaenterpriseV1TestingOptions =
  GoogleCloudRecaptchaenterpriseV1TestingOptions
    { testingChallenge =
        Core.Nothing,
      testingScore = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1TestingOptions
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1TestingOptions"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1TestingOptions
            Core.<$> (o Core..:? "testingChallenge")
            Core.<*> (o Core..:? "testingScore")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1TestingOptions where
  toJSON GoogleCloudRecaptchaenterpriseV1TestingOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("testingChallenge" Core..=) Core.<$> testingChallenge,
            ("testingScore" Core..=) Core.<$> testingScore
          ]
      )

-- | Properties of the provided event token.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1TokenProperties' smart constructor.
data GoogleCloudRecaptchaenterpriseV1TokenProperties = GoogleCloudRecaptchaenterpriseV1TokenProperties
  { -- | Output only. Action name provided at token generation.
    action :: (Core.Maybe Core.Text),
    -- | Output only. The name of the Android package with which the token was generated (Android keys only).
    androidPackageName :: (Core.Maybe Core.Text),
    -- | Output only. The timestamp corresponding to the generation of the token.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The hostname of the page on which the token was generated (Web keys only).
    hostname :: (Core.Maybe Core.Text),
    -- | Output only. Reason associated with the response when valid = false.
    invalidReason ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
      ),
    -- | Output only. The ID of the iOS bundle with which the token was generated (iOS keys only).
    iosBundleId :: (Core.Maybe Core.Text),
    -- | Output only. Whether the provided user response token is valid. When valid = false, the reason could be specified in invalid_reason or it could also be due to a user failing to solve a challenge or a sitekey mismatch (i.e the sitekey used to generate the token was different than the one specified in the assessment).
    valid :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1TokenProperties' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1TokenProperties ::
  GoogleCloudRecaptchaenterpriseV1TokenProperties
newGoogleCloudRecaptchaenterpriseV1TokenProperties =
  GoogleCloudRecaptchaenterpriseV1TokenProperties
    { action =
        Core.Nothing,
      androidPackageName = Core.Nothing,
      createTime = Core.Nothing,
      hostname = Core.Nothing,
      invalidReason = Core.Nothing,
      iosBundleId = Core.Nothing,
      valid = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1TokenProperties
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1TokenProperties"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1TokenProperties
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "androidPackageName")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "hostname")
            Core.<*> (o Core..:? "invalidReason")
            Core.<*> (o Core..:? "iosBundleId")
            Core.<*> (o Core..:? "valid")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1TokenProperties
  where
  toJSON GoogleCloudRecaptchaenterpriseV1TokenProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("androidPackageName" Core..=) Core.<$> androidPackageName,
            ("createTime" Core..=) Core.<$> createTime,
            ("hostname" Core..=) Core.<$> hostname,
            ("invalidReason" Core..=) Core.<$> invalidReason,
            ("iosBundleId" Core..=) Core.<$> iosBundleId,
            ("valid" Core..=) Core.<$> valid
          ]
      )

-- | Transaction data associated with a payment protected by reCAPTCHA Enterprise.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1TransactionData' smart constructor.
data GoogleCloudRecaptchaenterpriseV1TransactionData = GoogleCloudRecaptchaenterpriseV1TransactionData
  { -- | Optional. Address associated with the payment method when applicable.
    billingAddress :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1TransactionDataAddress),
    -- | Optional. The Bank Identification Number - generally the first 6 or 8 digits of the card.
    cardBin :: (Core.Maybe Core.Text),
    -- | Optional. The last four digits of the card.
    cardLastFour :: (Core.Maybe Core.Text),
    -- | Optional. The currency code in ISO-4217 format.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Optional. Information about the payment gateway\'s response to the transaction.
    gatewayInfo ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
      ),
    -- | Optional. Items purchased in this transaction.
    items :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1TransactionDataItem]),
    -- | Optional. Information about the user or users fulfilling the transaction.
    merchants :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1TransactionDataUser]),
    -- | Optional. The payment method for the transaction. The allowed values are: * credit-card * debit-card * gift-card * processor-{name} (If a third-party is used, for example, processor-paypal) * custom-{name} (If an alternative method is used, for example, custom-crypto)
    paymentMethod :: (Core.Maybe Core.Text),
    -- | Optional. Destination address if this transaction involves shipping a physical item.
    shippingAddress :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1TransactionDataAddress),
    -- | Optional. The value of shipping in the specified currency. 0 for free or no shipping.
    shippingValue :: (Core.Maybe Core.Double),
    -- | Unique identifier for the transaction. This custom identifier can be used to reference this transaction in the future, for example, labeling a refund or chargeback event. Two attempts at the same transaction should use the same transaction id.
    transactionId :: (Core.Maybe Core.Text),
    -- | Optional. Information about the user paying\/initiating the transaction.
    user :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1TransactionDataUser),
    -- | Optional. The decimal value of the transaction in the specified currency.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1TransactionData' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1TransactionData ::
  GoogleCloudRecaptchaenterpriseV1TransactionData
newGoogleCloudRecaptchaenterpriseV1TransactionData =
  GoogleCloudRecaptchaenterpriseV1TransactionData
    { billingAddress =
        Core.Nothing,
      cardBin = Core.Nothing,
      cardLastFour = Core.Nothing,
      currencyCode = Core.Nothing,
      gatewayInfo = Core.Nothing,
      items = Core.Nothing,
      merchants = Core.Nothing,
      paymentMethod = Core.Nothing,
      shippingAddress = Core.Nothing,
      shippingValue = Core.Nothing,
      transactionId = Core.Nothing,
      user = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1TransactionData
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1TransactionData"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1TransactionData
            Core.<$> (o Core..:? "billingAddress")
            Core.<*> (o Core..:? "cardBin")
            Core.<*> (o Core..:? "cardLastFour")
            Core.<*> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "gatewayInfo")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "merchants")
            Core.<*> (o Core..:? "paymentMethod")
            Core.<*> (o Core..:? "shippingAddress")
            Core.<*> (o Core..:? "shippingValue")
            Core.<*> (o Core..:? "transactionId")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1TransactionData
  where
  toJSON GoogleCloudRecaptchaenterpriseV1TransactionData {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingAddress" Core..=) Core.<$> billingAddress,
            ("cardBin" Core..=) Core.<$> cardBin,
            ("cardLastFour" Core..=) Core.<$> cardLastFour,
            ("currencyCode" Core..=) Core.<$> currencyCode,
            ("gatewayInfo" Core..=) Core.<$> gatewayInfo,
            ("items" Core..=) Core.<$> items,
            ("merchants" Core..=) Core.<$> merchants,
            ("paymentMethod" Core..=) Core.<$> paymentMethod,
            ("shippingAddress" Core..=) Core.<$> shippingAddress,
            ("shippingValue" Core..=) Core.<$> shippingValue,
            ("transactionId" Core..=) Core.<$> transactionId,
            ("user" Core..=) Core.<$> user,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Structured address format for billing and shipping addresses.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1TransactionDataAddress' smart constructor.
data GoogleCloudRecaptchaenterpriseV1TransactionDataAddress = GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
  { -- | Optional. The first lines of the address. The first line generally contains the street name and number, and further lines may include information such as an apartment number.
    address :: (Core.Maybe [Core.Text]),
    -- | Optional. The state, province, or otherwise administrative area of the address.
    administrativeArea :: (Core.Maybe Core.Text),
    -- | Optional. The town\/city of the address.
    locality :: (Core.Maybe Core.Text),
    -- | Optional. The postal or ZIP code of the address.
    postalCode :: (Core.Maybe Core.Text),
    -- | Optional. The recipient name, potentially including information such as \"care of\".
    recipient :: (Core.Maybe Core.Text),
    -- | Optional. The CLDR country\/region of the address.
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1TransactionDataAddress' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1TransactionDataAddress ::
  GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
newGoogleCloudRecaptchaenterpriseV1TransactionDataAddress =
  GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
    { address =
        Core.Nothing,
      administrativeArea = Core.Nothing,
      locality = Core.Nothing,
      postalCode = Core.Nothing,
      recipient = Core.Nothing,
      regionCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1TransactionDataAddress"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "administrativeArea")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "postalCode")
            Core.<*> (o Core..:? "recipient")
            Core.<*> (o Core..:? "regionCode")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
  where
  toJSON GoogleCloudRecaptchaenterpriseV1TransactionDataAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("administrativeArea" Core..=) Core.<$> administrativeArea,
            ("locality" Core..=) Core.<$> locality,
            ("postalCode" Core..=) Core.<$> postalCode,
            ("recipient" Core..=) Core.<$> recipient,
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | Details about the transaction from the gateway.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo' smart constructor.
data GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo = GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
  { -- | Optional. AVS response code from the gateway (available only when reCAPTCHA Enterprise is called after authorization).
    avsResponseCode :: (Core.Maybe Core.Text),
    -- | Optional. CVV response code from the gateway (available only when reCAPTCHA Enterprise is called after authorization).
    cvvResponseCode :: (Core.Maybe Core.Text),
    -- | Optional. Gateway response code describing the state of the transaction.
    gatewayResponseCode :: (Core.Maybe Core.Text),
    -- | Optional. Name of the gateway service (for example, stripe, square, paypal).
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo ::
  GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
newGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo =
  GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
    { avsResponseCode =
        Core.Nothing,
      cvvResponseCode = Core.Nothing,
      gatewayResponseCode = Core.Nothing,
      name = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
            Core.<$> (o Core..:? "avsResponseCode")
            Core.<*> (o Core..:? "cvvResponseCode")
            Core.<*> (o Core..:? "gatewayResponseCode")
            Core.<*> (o Core..:? "name")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
  where
  toJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("avsResponseCode" Core..=) Core.<$> avsResponseCode,
              ("cvvResponseCode" Core..=) Core.<$> cvvResponseCode,
              ("gatewayResponseCode" Core..=) Core.<$> gatewayResponseCode,
              ("name" Core..=) Core.<$> name
            ]
        )

-- | Line items being purchased in this transaction.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1TransactionDataItem' smart constructor.
data GoogleCloudRecaptchaenterpriseV1TransactionDataItem = GoogleCloudRecaptchaenterpriseV1TransactionDataItem
  { -- | Optional. When a merchant is specified, its corresponding account_id. Necessary to populate marketplace-style transactions.
    merchantAccountId :: (Core.Maybe Core.Text),
    -- | Optional. The full name of the item.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The quantity of this item that is being purchased.
    quantity :: (Core.Maybe Core.Int64),
    -- | Optional. The value per item that the user is paying, in the transaction currency, after discounts.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1TransactionDataItem' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1TransactionDataItem ::
  GoogleCloudRecaptchaenterpriseV1TransactionDataItem
newGoogleCloudRecaptchaenterpriseV1TransactionDataItem =
  GoogleCloudRecaptchaenterpriseV1TransactionDataItem
    { merchantAccountId =
        Core.Nothing,
      name = Core.Nothing,
      quantity = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataItem
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1TransactionDataItem"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1TransactionDataItem
            Core.<$> (o Core..:? "merchantAccountId")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "quantity" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataItem
  where
  toJSON GoogleCloudRecaptchaenterpriseV1TransactionDataItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("merchantAccountId" Core..=) Core.<$> merchantAccountId,
            ("name" Core..=) Core.<$> name,
            ("quantity" Core..=) Core.. Core.AsText Core.<$> quantity,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Details about a user\'s account involved in the transaction.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1TransactionDataUser' smart constructor.
data GoogleCloudRecaptchaenterpriseV1TransactionDataUser = GoogleCloudRecaptchaenterpriseV1TransactionDataUser
  { -- | Optional. Unique account identifier for this user. If using account defender, this should match the hashed/account/id field. Otherwise, a unique and persistent identifier for this account.
    accountId :: (Core.Maybe Core.Text),
    -- | Optional. The epoch milliseconds of the user\'s account creation.
    creationMs :: (Core.Maybe Core.Int64),
    -- | Optional. The email address of the user.
    email :: (Core.Maybe Core.Text),
    -- | Optional. Whether the email has been verified to be accessible by the user (OTP or similar).
    emailVerified :: (Core.Maybe Core.Bool),
    -- | Optional. The phone number of the user, with country code.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Optional. Whether the phone number has been verified to be accessible by the user (OTP or similar).
    phoneVerified :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1TransactionDataUser' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1TransactionDataUser ::
  GoogleCloudRecaptchaenterpriseV1TransactionDataUser
newGoogleCloudRecaptchaenterpriseV1TransactionDataUser =
  GoogleCloudRecaptchaenterpriseV1TransactionDataUser
    { accountId =
        Core.Nothing,
      creationMs = Core.Nothing,
      email = Core.Nothing,
      emailVerified = Core.Nothing,
      phoneNumber = Core.Nothing,
      phoneVerified = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataUser
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1TransactionDataUser"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1TransactionDataUser
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "creationMs" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "emailVerified")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "phoneVerified")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1TransactionDataUser
  where
  toJSON GoogleCloudRecaptchaenterpriseV1TransactionDataUser {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("creationMs" Core..=) Core.. Core.AsText Core.<$> creationMs,
            ("email" Core..=) Core.<$> email,
            ("emailVerified" Core..=) Core.<$> emailVerified,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("phoneVerified" Core..=) Core.<$> phoneVerified
          ]
      )

-- | Describes an event in the lifecycle of a payment transaction.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1TransactionEvent' smart constructor.
data GoogleCloudRecaptchaenterpriseV1TransactionEvent = GoogleCloudRecaptchaenterpriseV1TransactionEvent
  { -- | Optional. Timestamp when this transaction event occurred; otherwise assumed to be the time of the API call.
    eventTime :: (Core.Maybe Core.DateTime),
    -- | Optional. The type of this transaction event.
    eventType ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
      ),
    -- | Optional. The reason or standardized code that corresponds with this transaction event, if one exists. For example, a CHARGEBACK event with code 6005.
    reason :: (Core.Maybe Core.Text),
    -- | Optional. The value that corresponds with this transaction event, if one exists. For example, a refund event where $5.00 was refunded. Currency is obtained from the original transaction data.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1TransactionEvent' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1TransactionEvent ::
  GoogleCloudRecaptchaenterpriseV1TransactionEvent
newGoogleCloudRecaptchaenterpriseV1TransactionEvent =
  GoogleCloudRecaptchaenterpriseV1TransactionEvent
    { eventTime =
        Core.Nothing,
      eventType = Core.Nothing,
      reason = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1TransactionEvent
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1TransactionEvent"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1TransactionEvent
            Core.<$> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "eventType")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudRecaptchaenterpriseV1TransactionEvent
  where
  toJSON GoogleCloudRecaptchaenterpriseV1TransactionEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventTime" Core..=) Core.<$> eventTime,
            ("eventType" Core..=) Core.<$> eventType,
            ("reason" Core..=) Core.<$> reason,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | An identifier associated with a user.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1UserId' smart constructor.
data GoogleCloudRecaptchaenterpriseV1UserId = GoogleCloudRecaptchaenterpriseV1UserId
  { -- | Optional. An email address.
    email :: (Core.Maybe Core.Text),
    -- | Optional. A phone number. Should use the E.164 format.
    phoneNumber :: (Core.Maybe Core.Text),
    -- | Optional. A unique username, if different from all the other identifiers and @account_id@ that are provided. Can be a unique login handle or display name for a user.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1UserId' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1UserId ::
  GoogleCloudRecaptchaenterpriseV1UserId
newGoogleCloudRecaptchaenterpriseV1UserId =
  GoogleCloudRecaptchaenterpriseV1UserId
    { email = Core.Nothing,
      phoneNumber = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1UserId where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1UserId"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1UserId
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "phoneNumber")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1UserId where
  toJSON GoogleCloudRecaptchaenterpriseV1UserId {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("phoneNumber" Core..=) Core.<$> phoneNumber,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | User information associated with a request protected by reCAPTCHA Enterprise.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1UserInfo' smart constructor.
data GoogleCloudRecaptchaenterpriseV1UserInfo = GoogleCloudRecaptchaenterpriseV1UserInfo
  { -- | Optional. For logged-in requests or login\/registration requests, the unique account identifier associated with this user. You can use the username if it is stable (meaning it is the same for every request associated with the same user), or any stable user ID of your choice. Leave blank for non logged-in actions or guest checkout.
    accountId :: (Core.Maybe Core.Text),
    -- | Optional. Creation time for this account associated with this user. Leave blank for non logged-in actions, guest checkout, or when there is no account associated with the current user.
    createAccountTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Identifiers associated with this user or request.
    userIds :: (Core.Maybe [GoogleCloudRecaptchaenterpriseV1UserId])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1UserInfo' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1UserInfo ::
  GoogleCloudRecaptchaenterpriseV1UserInfo
newGoogleCloudRecaptchaenterpriseV1UserInfo =
  GoogleCloudRecaptchaenterpriseV1UserInfo
    { accountId =
        Core.Nothing,
      createAccountTime = Core.Nothing,
      userIds = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1UserInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1UserInfo"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1UserInfo
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "createAccountTime")
            Core.<*> (o Core..:? "userIds")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1UserInfo where
  toJSON GoogleCloudRecaptchaenterpriseV1UserInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("createAccountTime" Core..=) Core.<$> createAccountTime,
            ("userIds" Core..=) Core.<$> userIds
          ]
      )

-- | Settings specific to keys that can be used for WAF (Web Application Firewall).
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1WafSettings' smart constructor.
data GoogleCloudRecaptchaenterpriseV1WafSettings = GoogleCloudRecaptchaenterpriseV1WafSettings
  { -- | Required. The WAF feature for which this key is enabled.
    wafFeature :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature),
    -- | Required. The WAF service that uses this key.
    wafService :: (Core.Maybe GoogleCloudRecaptchaenterpriseV1WafSettings_WafService)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1WafSettings' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1WafSettings ::
  GoogleCloudRecaptchaenterpriseV1WafSettings
newGoogleCloudRecaptchaenterpriseV1WafSettings =
  GoogleCloudRecaptchaenterpriseV1WafSettings
    { wafFeature =
        Core.Nothing,
      wafService = Core.Nothing
    }

instance Core.FromJSON GoogleCloudRecaptchaenterpriseV1WafSettings where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1WafSettings"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1WafSettings
            Core.<$> (o Core..:? "wafFeature")
            Core.<*> (o Core..:? "wafService")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1WafSettings where
  toJSON GoogleCloudRecaptchaenterpriseV1WafSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("wafFeature" Core..=) Core.<$> wafFeature,
            ("wafService" Core..=) Core.<$> wafService
          ]
      )

-- | Settings specific to keys that can be used by websites.
--
-- /See:/ 'newGoogleCloudRecaptchaenterpriseV1WebKeySettings' smart constructor.
data GoogleCloudRecaptchaenterpriseV1WebKeySettings = GoogleCloudRecaptchaenterpriseV1WebKeySettings
  { -- | Optional. If set to true, it means allowed_domains are not enforced.
    allowAllDomains :: (Core.Maybe Core.Bool),
    -- | Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
    allowAmpTraffic :: (Core.Maybe Core.Bool),
    -- | Optional. Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: \'example.com\' or \'subdomain.example.com\'
    allowedDomains :: (Core.Maybe [Core.Text]),
    -- | Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE and SCORE/AND/CHALLENGE.
    challengeSecurityPreference ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
      ),
    -- | Required. Describes how this key is integrated with the website.
    integrationType ::
      ( Core.Maybe
          GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRecaptchaenterpriseV1WebKeySettings' with the minimum fields required to make a request.
newGoogleCloudRecaptchaenterpriseV1WebKeySettings ::
  GoogleCloudRecaptchaenterpriseV1WebKeySettings
newGoogleCloudRecaptchaenterpriseV1WebKeySettings =
  GoogleCloudRecaptchaenterpriseV1WebKeySettings
    { allowAllDomains =
        Core.Nothing,
      allowAmpTraffic = Core.Nothing,
      allowedDomains = Core.Nothing,
      challengeSecurityPreference = Core.Nothing,
      integrationType = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRecaptchaenterpriseV1WebKeySettings
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRecaptchaenterpriseV1WebKeySettings"
      ( \o ->
          GoogleCloudRecaptchaenterpriseV1WebKeySettings
            Core.<$> (o Core..:? "allowAllDomains")
            Core.<*> (o Core..:? "allowAmpTraffic")
            Core.<*> (o Core..:? "allowedDomains")
            Core.<*> (o Core..:? "challengeSecurityPreference")
            Core.<*> (o Core..:? "integrationType")
      )

instance Core.ToJSON GoogleCloudRecaptchaenterpriseV1WebKeySettings where
  toJSON GoogleCloudRecaptchaenterpriseV1WebKeySettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowAllDomains" Core..=) Core.<$> allowAllDomains,
            ("allowAmpTraffic" Core..=) Core.<$> allowAmpTraffic,
            ("allowedDomains" Core..=) Core.<$> allowedDomains,
            ("challengeSecurityPreference" Core..=)
              Core.<$> challengeSecurityPreference,
            ("integrationType" Core..=) Core.<$> integrationType
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newGoogleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty = GoogleProtobufEmpty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
newGoogleProtobufEmpty ::
  GoogleProtobufEmpty
newGoogleProtobufEmpty = GoogleProtobufEmpty

instance Core.FromJSON GoogleProtobufEmpty where
  parseJSON =
    Core.withObject
      "GoogleProtobufEmpty"
      (\o -> Core.pure GoogleProtobufEmpty)

instance Core.ToJSON GoogleProtobufEmpty where
  toJSON = Core.const Core.emptyObject

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpcStatus' smart constructor.
data GoogleRpcStatus = GoogleRpcStatus
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [GoogleRpcStatus_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
newGoogleRpcStatus ::
  GoogleRpcStatus
newGoogleRpcStatus =
  GoogleRpcStatus
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON GoogleRpcStatus where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus"
      ( \o ->
          GoogleRpcStatus
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON GoogleRpcStatus where
  toJSON GoogleRpcStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newGoogleRpcStatus_DetailsItem' smart constructor.
newtype GoogleRpcStatus_DetailsItem = GoogleRpcStatus_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus_DetailsItem' with the minimum fields required to make a request.
newGoogleRpcStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleRpcStatus_DetailsItem
newGoogleRpcStatus_DetailsItem additional =
  GoogleRpcStatus_DetailsItem {additional = additional}

instance Core.FromJSON GoogleRpcStatus_DetailsItem where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus_DetailsItem"
      ( \o ->
          GoogleRpcStatus_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleRpcStatus_DetailsItem where
  toJSON GoogleRpcStatus_DetailsItem {..} = Core.toJSON additional
