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
-- Module      : Gogol.ReCaptchaEnterprise.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ReCaptchaEnterprise.Types
    (
    -- * Configuration
      reCaptchaEnterpriseService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
    , GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment (..)
    , newGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment

    -- ** GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
    , GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem (..)

    -- ** GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
    , GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo (..)
    , newGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo

    -- ** GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
    , GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult (..)

    -- ** GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
    , GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest (..)
    , newGoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest

    -- ** GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
    , GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse

    -- ** GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
    , GoogleCloudRecaptchaenterpriseV1AndroidKeySettings (..)
    , newGoogleCloudRecaptchaenterpriseV1AndroidKeySettings

    -- ** GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
    , GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest (..)
    , newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest

    -- ** GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
    , GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation (..)

    -- ** GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
    , GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem (..)

    -- ** GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
    , GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse

    -- ** GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
    , GoogleCloudRecaptchaenterpriseV1AppleDeveloperId (..)
    , newGoogleCloudRecaptchaenterpriseV1AppleDeveloperId

    -- ** GoogleCloudRecaptchaenterpriseV1Assessment
    , GoogleCloudRecaptchaenterpriseV1Assessment (..)
    , newGoogleCloudRecaptchaenterpriseV1Assessment

    -- ** GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
    , GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment (..)
    , newGoogleCloudRecaptchaenterpriseV1AssessmentEnvironment

    -- ** GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
    , GoogleCloudRecaptchaenterpriseV1ChallengeMetrics (..)
    , newGoogleCloudRecaptchaenterpriseV1ChallengeMetrics

    -- ** GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
    , GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo (..)
    , newGoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo

    -- ** GoogleCloudRecaptchaenterpriseV1Event
    , GoogleCloudRecaptchaenterpriseV1Event (..)
    , newGoogleCloudRecaptchaenterpriseV1Event

    -- ** GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention
    , GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention (..)

    -- ** GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
    , GoogleCloudRecaptchaenterpriseV1ExpressKeySettings (..)
    , newGoogleCloudRecaptchaenterpriseV1ExpressKeySettings

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallAction
    , GoogleCloudRecaptchaenterpriseV1FirewallAction (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallAction

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
    , GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
    , GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
    , GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
    , GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
    , GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
    , GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallPolicy
    , GoogleCloudRecaptchaenterpriseV1FirewallPolicy (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallPolicy

    -- ** GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
    , GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment (..)
    , newGoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment

    -- ** GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
    , GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment (..)
    , newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment

    -- ** GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
    , GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict (..)
    , newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict

    -- ** GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
    , GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict (..)
    , newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict

    -- ** GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
    , GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict (..)
    , newGoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict

    -- ** GoogleCloudRecaptchaenterpriseV1FraudSignals
    , GoogleCloudRecaptchaenterpriseV1FraudSignals (..)
    , newGoogleCloudRecaptchaenterpriseV1FraudSignals

    -- ** GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
    , GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals (..)
    , newGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals

    -- ** GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem
    , GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem (..)

    -- ** GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
    , GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals (..)
    , newGoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals

    -- ** GoogleCloudRecaptchaenterpriseV1IOSKeySettings
    , GoogleCloudRecaptchaenterpriseV1IOSKeySettings (..)
    , newGoogleCloudRecaptchaenterpriseV1IOSKeySettings

    -- ** GoogleCloudRecaptchaenterpriseV1IpOverrideData
    , GoogleCloudRecaptchaenterpriseV1IpOverrideData (..)
    , newGoogleCloudRecaptchaenterpriseV1IpOverrideData

    -- ** GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType
    , GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType (..)

    -- ** GoogleCloudRecaptchaenterpriseV1Key
    , GoogleCloudRecaptchaenterpriseV1Key (..)
    , newGoogleCloudRecaptchaenterpriseV1Key

    -- ** GoogleCloudRecaptchaenterpriseV1Key_Labels
    , GoogleCloudRecaptchaenterpriseV1Key_Labels (..)
    , newGoogleCloudRecaptchaenterpriseV1Key_Labels

    -- ** GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
    , GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse

    -- ** GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
    , GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse

    -- ** GoogleCloudRecaptchaenterpriseV1ListKeysResponse
    , GoogleCloudRecaptchaenterpriseV1ListKeysResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1ListKeysResponse

    -- ** GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
    , GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse

    -- ** GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
    , GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse

    -- ** GoogleCloudRecaptchaenterpriseV1Metrics
    , GoogleCloudRecaptchaenterpriseV1Metrics (..)
    , newGoogleCloudRecaptchaenterpriseV1Metrics

    -- ** GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
    , GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest (..)
    , newGoogleCloudRecaptchaenterpriseV1MigrateKeyRequest

    -- ** GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
    , GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment (..)
    , newGoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment

    -- ** GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
    , GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification (..)
    , newGoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification

    -- ** GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
    , GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup (..)
    , newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroup

    -- ** GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
    , GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership (..)
    , newGoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership

    -- ** GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
    , GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest (..)
    , newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest

    -- ** GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
    , GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse

    -- ** GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
    , GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest (..)
    , newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest

    -- ** GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
    , GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse

    -- ** GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
    , GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse

    -- ** GoogleCloudRecaptchaenterpriseV1RiskAnalysis
    , GoogleCloudRecaptchaenterpriseV1RiskAnalysis (..)
    , newGoogleCloudRecaptchaenterpriseV1RiskAnalysis

    -- ** GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge
    , GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge (..)

    -- ** GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
    , GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem (..)

    -- ** GoogleCloudRecaptchaenterpriseV1ScoreDistribution
    , GoogleCloudRecaptchaenterpriseV1ScoreDistribution (..)
    , newGoogleCloudRecaptchaenterpriseV1ScoreDistribution

    -- ** GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets
    , GoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets (..)
    , newGoogleCloudRecaptchaenterpriseV1ScoreDistribution_ScoreBuckets

    -- ** GoogleCloudRecaptchaenterpriseV1ScoreMetrics
    , GoogleCloudRecaptchaenterpriseV1ScoreMetrics (..)
    , newGoogleCloudRecaptchaenterpriseV1ScoreMetrics

    -- ** GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics
    , GoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics (..)
    , newGoogleCloudRecaptchaenterpriseV1ScoreMetrics_ActionMetrics

    -- ** GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
    , GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest (..)
    , newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest

    -- ** GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
    , GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse (..)
    , newGoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse

    -- ** GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
    , GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict (..)
    , newGoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict

    -- ** GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem
    , GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem (..)

    -- ** GoogleCloudRecaptchaenterpriseV1TestingOptions
    , GoogleCloudRecaptchaenterpriseV1TestingOptions (..)
    , newGoogleCloudRecaptchaenterpriseV1TestingOptions

    -- ** GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge
    , GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge (..)

    -- ** GoogleCloudRecaptchaenterpriseV1TokenProperties
    , GoogleCloudRecaptchaenterpriseV1TokenProperties (..)
    , newGoogleCloudRecaptchaenterpriseV1TokenProperties

    -- ** GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
    , GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason (..)

    -- ** GoogleCloudRecaptchaenterpriseV1TransactionData
    , GoogleCloudRecaptchaenterpriseV1TransactionData (..)
    , newGoogleCloudRecaptchaenterpriseV1TransactionData

    -- ** GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
    , GoogleCloudRecaptchaenterpriseV1TransactionDataAddress (..)
    , newGoogleCloudRecaptchaenterpriseV1TransactionDataAddress

    -- ** GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
    , GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo (..)
    , newGoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo

    -- ** GoogleCloudRecaptchaenterpriseV1TransactionDataItem
    , GoogleCloudRecaptchaenterpriseV1TransactionDataItem (..)
    , newGoogleCloudRecaptchaenterpriseV1TransactionDataItem

    -- ** GoogleCloudRecaptchaenterpriseV1TransactionDataUser
    , GoogleCloudRecaptchaenterpriseV1TransactionDataUser (..)
    , newGoogleCloudRecaptchaenterpriseV1TransactionDataUser

    -- ** GoogleCloudRecaptchaenterpriseV1TransactionEvent
    , GoogleCloudRecaptchaenterpriseV1TransactionEvent (..)
    , newGoogleCloudRecaptchaenterpriseV1TransactionEvent

    -- ** GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
    , GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType (..)

    -- ** GoogleCloudRecaptchaenterpriseV1UserId
    , GoogleCloudRecaptchaenterpriseV1UserId (..)
    , newGoogleCloudRecaptchaenterpriseV1UserId

    -- ** GoogleCloudRecaptchaenterpriseV1UserInfo
    , GoogleCloudRecaptchaenterpriseV1UserInfo (..)
    , newGoogleCloudRecaptchaenterpriseV1UserInfo

    -- ** GoogleCloudRecaptchaenterpriseV1WafSettings
    , GoogleCloudRecaptchaenterpriseV1WafSettings (..)
    , newGoogleCloudRecaptchaenterpriseV1WafSettings

    -- ** GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
    , GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature (..)

    -- ** GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
    , GoogleCloudRecaptchaenterpriseV1WafSettings_WafService (..)

    -- ** GoogleCloudRecaptchaenterpriseV1WebKeySettings
    , GoogleCloudRecaptchaenterpriseV1WebKeySettings (..)
    , newGoogleCloudRecaptchaenterpriseV1WebKeySettings

    -- ** GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
    , GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference (..)

    -- ** GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
    , GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType (..)

    -- ** GoogleProtobufEmpty
    , GoogleProtobufEmpty (..)
    , newGoogleProtobufEmpty

    -- ** GoogleRpcStatus
    , GoogleRpcStatus (..)
    , newGoogleRpcStatus

    -- ** GoogleRpcStatus_DetailsItem
    , GoogleRpcStatus_DetailsItem (..)
    , newGoogleRpcStatus_DetailsItem
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReCaptchaEnterprise.Internal.Product
import Gogol.ReCaptchaEnterprise.Internal.Sum

-- | Default request referring to version @v1@ of the reCAPTCHA Enterprise API. This contains the host and root path used as a starting point for constructing service requests.
reCaptchaEnterpriseService :: Core.ServiceConfig
reCaptchaEnterpriseService
  = Core.defaultService
      (Core.ServiceId "recaptchaenterprise:v1")
      "recaptchaenterprise.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
