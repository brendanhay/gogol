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
-- Module      : Gogol.ReCaptchaEnterprise.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ReCaptchaEnterprise.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
    GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
      ( GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_ACCOUNTDEFENDERLABELUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_PROFILEMATCH,
        GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_SUSPICIOUSLOGINACTIVITY,
        GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_SUSPICIOUSACCOUNTCREATION,
        GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_RELATEDACCOUNTSNUMBERHIGH,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
    GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
      ( GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_RESULTUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_SUCCESSUSERVERIFIED,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORUSERNOTVERIFIED,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORSITEONBOARDINGINCOMPLETE,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORRECIPIENTNOTALLOWED,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORRECIPIENTABUSELIMITEXHAUSTED,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORCRITICALINTERNAL,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORCUSTOMERQUOTAEXHAUSTED,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORVERIFICATIONBYPASSED,
        GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORVERDICTMISMATCH,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
      ( GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_ANNOTATIONUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_Legitimate,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_Fraudulent,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_PASSWORDCORRECT,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_PASSWORDINCORRECT,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
      ( GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_REASONUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_Chargeback,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CHARGEBACKFRAUD,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CHARGEBACKDISPUTE,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_Refund,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_REFUNDFRAUD,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_TRANSACTIONACCEPTED,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_TRANSACTIONDECLINED,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_PAYMENTHEURISTICS,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_INITIATEDTWOFACTOR,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_PASSEDTWOFACTOR,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_FAILEDTWOFACTOR,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CORRECTPASSWORD,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_INCORRECTPASSWORD,
        GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_SOCIALSPAM,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention
    GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention
      ( GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_FRAUDPREVENTIONUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_Enabled,
        GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_Disabled,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem
    GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem
      ( GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_CARDLABELUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_Prepaid,
        GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_Virtual,
        GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_UNEXPECTEDLOCATION,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType
    GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType
      ( GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType_OVERRIDETYPEUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType_Allow,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge
    GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge
      ( GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_CHALLENGEUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Nocaptcha,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Passed,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Failed,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
    GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
      ( GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_CLASSIFICATIONREASONUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_Automation,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_UNEXPECTEDENVIRONMENT,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_TOOMUCHTRAFFIC,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_UNEXPECTEDUSAGEPATTERNS,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_LOWCONFIDENCESCORE,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_SUSPECTEDCARDING,
        GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_SUSPECTEDCHARGEBACK,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem
    GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem
      ( GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem_SMSTOLLFRAUDREASONUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem_INVALIDPHONENUMBER,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge
    GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge
      ( GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_TESTINGCHALLENGEUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_Nocaptcha,
        GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_UNSOLVABLECHALLENGE,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
    GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
      ( GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_INVALIDREASONUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_UNKNOWNINVALIDREASON,
        GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Malformed,
        GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Expired,
        GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Dupe,
        GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Missing,
        GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_BROWSERERROR,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
    GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
      ( GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_TRANSACTIONEVENTTYPEUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MERCHANTAPPROVE,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MERCHANTDENY,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MANUALREVIEW,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Authorization,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_AUTHORIZATIONDECLINE,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_PAYMENTCAPTURE,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_PAYMENTCAPTUREDECLINE,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Cancel,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKINQUIRY,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKALERT,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_FRAUDNOTIFICATION,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Chargeback,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKREPRESENTMENT,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKREVERSE,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDREQUEST,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDDECLINE,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Refund,
        GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDREVERSE,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
    GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
      ( GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_WAFFEATUREUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_CHALLENGEPAGE,
        GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_SESSIONTOKEN,
        GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_ACTIONTOKEN,
        GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_Express,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
    GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
      ( GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_WAFSERVICEUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_CA,
        GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Fastly,
        GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Cloudflare,
        GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Akamai,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
    GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
      ( GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_CHALLENGESECURITYPREFERENCEUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Usability,
        GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Balance,
        GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Security,
        ..
      ),

    -- * GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
    GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
      ( GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_INTEGRATIONTYPEUNSPECIFIED,
        GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Score,
        GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Checkbox,
        GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Invisible,
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

newtype GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem = GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem {fromGoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem :: Core.Text}
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

-- | Default unspecified type.
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_ACCOUNTDEFENDERLABELUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_ACCOUNTDEFENDERLABELUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem "ACCOUNT_DEFENDER_LABEL_UNSPECIFIED"

-- | The request matches a known good profile for the user.
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_PROFILEMATCH :: GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_PROFILEMATCH = GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem "PROFILE_MATCH"

-- | The request is potentially a suspicious login event and must be further verified either through multi-factor authentication or another system.
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_SUSPICIOUSLOGINACTIVITY :: GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_SUSPICIOUSLOGINACTIVITY = GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem "SUSPICIOUS_LOGIN_ACTIVITY"

-- | The request matched a profile that previously had suspicious account creation behavior. This can mean that this is a fake account.
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_SUSPICIOUSACCOUNTCREATION :: GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_SUSPICIOUSACCOUNTCREATION = GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem "SUSPICIOUS_ACCOUNT_CREATION"

-- | The account in the request has a high number of related accounts. It does not necessarily imply that the account is bad but can require further investigation.
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_RELATEDACCOUNTSNUMBERHIGH :: GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
pattern GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_RELATEDACCOUNTSNUMBERHIGH = GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem "RELATED_ACCOUNTS_NUMBER_HIGH"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_ACCOUNTDEFENDERLABELUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_PROFILEMATCH,
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_SUSPICIOUSLOGINACTIVITY,
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_SUSPICIOUSACCOUNTCREATION,
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem_RELATEDACCOUNTSNUMBERHIGH,
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment_LabelsItem
  #-}

-- | Output only. Result of the latest account verification challenge.
newtype GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult {fromGoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult :: Core.Text}
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

-- | No information about the latest account verification.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_RESULTUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_RESULTUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "RESULT_UNSPECIFIED"

-- | The user was successfully verified. This means the account verification challenge was successfully completed.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_SUCCESSUSERVERIFIED :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_SUCCESSUSERVERIFIED = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "SUCCESS_USER_VERIFIED"

-- | The user failed the verification challenge.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORUSERNOTVERIFIED :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORUSERNOTVERIFIED = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "ERROR_USER_NOT_VERIFIED"

-- | The site is not properly onboarded to use the account verification feature.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORSITEONBOARDINGINCOMPLETE :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORSITEONBOARDINGINCOMPLETE = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "ERROR_SITE_ONBOARDING_INCOMPLETE"

-- | The recipient is not allowed for account verification. This can occur during integration but should not occur in production.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORRECIPIENTNOTALLOWED :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORRECIPIENTNOTALLOWED = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "ERROR_RECIPIENT_NOT_ALLOWED"

-- | The recipient has already been sent too many verification codes in a short amount of time.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORRECIPIENTABUSELIMITEXHAUSTED :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORRECIPIENTABUSELIMITEXHAUSTED = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "ERROR_RECIPIENT_ABUSE_LIMIT_EXHAUSTED"

-- | The verification flow could not be completed due to a critical internal error.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORCRITICALINTERNAL :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORCRITICALINTERNAL = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "ERROR_CRITICAL_INTERNAL"

-- | The client has exceeded their two factor request quota for this period of time.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORCUSTOMERQUOTAEXHAUSTED :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORCUSTOMERQUOTAEXHAUSTED = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "ERROR_CUSTOMER_QUOTA_EXHAUSTED"

-- | The request cannot be processed at the time because of an incident. This bypass can be restricted to a problematic destination email domain, a customer, or could affect the entire service.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORVERIFICATIONBYPASSED :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORVERIFICATIONBYPASSED = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "ERROR_VERIFICATION_BYPASSED"

-- | The request parameters do not match with the token provided and cannot be processed.
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORVERDICTMISMATCH :: GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
pattern GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORVERDICTMISMATCH = GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult "ERROR_VERDICT_MISMATCH"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_RESULTUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_SUCCESSUSERVERIFIED,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORUSERNOTVERIFIED,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORSITEONBOARDINGINCOMPLETE,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORRECIPIENTNOTALLOWED,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORRECIPIENTABUSELIMITEXHAUSTED,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORCRITICALINTERNAL,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORCUSTOMERQUOTAEXHAUSTED,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORVERIFICATIONBYPASSED,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult_ERRORVERDICTMISMATCH,
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo_LatestVerificationResult
  #-}

-- | Optional. The annotation that is assigned to the Event. This field can be left empty to provide reasons that apply to an event without concluding whether the event is legitimate or fraudulent.
newtype GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation {fromGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation :: Core.Text}
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

-- | Default unspecified type.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_ANNOTATIONUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_ANNOTATIONUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation "ANNOTATION_UNSPECIFIED"

-- | Provides information that the event turned out to be legitimate.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_Legitimate :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_Legitimate = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation "LEGITIMATE"

-- | Provides information that the event turned out to be fraudulent.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_Fraudulent :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_Fraudulent = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation "FRAUDULENT"

-- | Provides information that the event was related to a login event in which the user typed the correct password. Deprecated, prefer indicating CORRECT_PASSWORD through the reasons field instead.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_PASSWORDCORRECT :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_PASSWORDCORRECT = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation "PASSWORD_CORRECT"

-- | Provides information that the event was related to a login event in which the user typed the incorrect password. Deprecated, prefer indicating INCORRECT_PASSWORD through the reasons field instead.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_PASSWORDINCORRECT :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_PASSWORDINCORRECT = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation "PASSWORD_INCORRECT"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_ANNOTATIONUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_Legitimate,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_Fraudulent,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_PASSWORDCORRECT,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation_PASSWORDINCORRECT,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_Annotation
  #-}

newtype GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem {fromGoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem :: Core.Text}
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

-- | Unspecified reason. Do not use.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_REASONUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_REASONUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "REASON_UNSPECIFIED"

-- | Indicates that the transaction had a chargeback issued with no other details. When possible, specify the type by using CHARGEBACK/FRAUD or CHARGEBACK/DISPUTE instead.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_Chargeback :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_Chargeback = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "CHARGEBACK"

-- | Indicates that the transaction had a chargeback issued related to an alleged unauthorized transaction from the cardholder\'s perspective (for example, the card number was stolen).
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CHARGEBACKFRAUD :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CHARGEBACKFRAUD = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "CHARGEBACK_FRAUD"

-- | Indicates that the transaction had a chargeback issued related to the cardholder having provided their card details but allegedly not being satisfied with the purchase (for example, misrepresentation, attempted cancellation).
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CHARGEBACKDISPUTE :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CHARGEBACKDISPUTE = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "CHARGEBACK_DISPUTE"

-- | Indicates that the completed payment transaction was refunded by the seller.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_Refund :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_Refund = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "REFUND"

-- | Indicates that the completed payment transaction was determined to be fraudulent by the seller, and was cancelled and refunded as a result.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_REFUNDFRAUD :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_REFUNDFRAUD = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "REFUND_FRAUD"

-- | Indicates that the payment transaction was accepted, and the user was charged.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_TRANSACTIONACCEPTED :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_TRANSACTIONACCEPTED = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "TRANSACTION_ACCEPTED"

-- | Indicates that the payment transaction was declined, for example due to invalid card details.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_TRANSACTIONDECLINED :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_TRANSACTIONDECLINED = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "TRANSACTION_DECLINED"

-- | Indicates the transaction associated with the assessment is suspected of being fraudulent based on the payment method, billing details, shipping address or other transaction information.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_PAYMENTHEURISTICS :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_PAYMENTHEURISTICS = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "PAYMENT_HEURISTICS"

-- | Indicates that the user was served a 2FA challenge. An old assessment with @ENUM_VALUES.INITIATED_TWO_FACTOR@ reason that has not been overwritten with @PASSED_TWO_FACTOR@ is treated as an abandoned 2FA flow. This is equivalent to @FAILED_TWO_FACTOR@.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_INITIATEDTWOFACTOR :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_INITIATEDTWOFACTOR = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "INITIATED_TWO_FACTOR"

-- | Indicates that the user passed a 2FA challenge.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_PASSEDTWOFACTOR :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_PASSEDTWOFACTOR = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "PASSED_TWO_FACTOR"

-- | Indicates that the user failed a 2FA challenge.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_FAILEDTWOFACTOR :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_FAILEDTWOFACTOR = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "FAILED_TWO_FACTOR"

-- | Indicates the user provided the correct password.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CORRECTPASSWORD :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CORRECTPASSWORD = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "CORRECT_PASSWORD"

-- | Indicates the user provided an incorrect password.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_INCORRECTPASSWORD :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_INCORRECTPASSWORD = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "INCORRECT_PASSWORD"

-- | Indicates that the user sent unwanted and abusive messages to other users of the platform, such as spam, scams, phishing, or social engineering.
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_SOCIALSPAM :: GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_SOCIALSPAM = GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem "SOCIAL_SPAM"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_REASONUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_Chargeback,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CHARGEBACKFRAUD,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CHARGEBACKDISPUTE,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_Refund,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_REFUNDFRAUD,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_TRANSACTIONACCEPTED,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_TRANSACTIONDECLINED,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_PAYMENTHEURISTICS,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_INITIATEDTWOFACTOR,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_PASSEDTWOFACTOR,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_FAILEDTWOFACTOR,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_CORRECTPASSWORD,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_INCORRECTPASSWORD,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem_SOCIALSPAM,
  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest_ReasonsItem
  #-}

-- | Optional. The Fraud Prevention setting for this assessment.
newtype GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention = GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention {fromGoogleCloudRecaptchaenterpriseV1Event_FraudPrevention :: Core.Text}
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

-- | Default, unspecified setting. @fraud_prevention_assessment@ is returned if @transaction_data@ is present in @Event@ and Fraud Prevention is enabled in the Google Cloud console.
pattern GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_FRAUDPREVENTIONUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention
pattern GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_FRAUDPREVENTIONUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention "FRAUD_PREVENTION_UNSPECIFIED"

-- | Enable Fraud Prevention for this assessment, if Fraud Prevention is enabled in the Google Cloud console.
pattern GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_Enabled :: GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention
pattern GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_Enabled = GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention "ENABLED"

-- | Disable Fraud Prevention for this assessment, regardless of the Google Cloud console settings.
pattern GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_Disabled :: GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention
pattern GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_Disabled = GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention "DISABLED"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_FRAUDPREVENTIONUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_Enabled,
  GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention_Disabled,
  GoogleCloudRecaptchaenterpriseV1Event_FraudPrevention
  #-}

newtype GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem = GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem {fromGoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem :: Core.Text}
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

-- | No label specified.
pattern GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_CARDLABELUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem
pattern GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_CARDLABELUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem "CARD_LABEL_UNSPECIFIED"

-- | This card has been detected as prepaid.
pattern GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_Prepaid :: GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem
pattern GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_Prepaid = GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem "PREPAID"

-- | This card has been detected as virtual, such as a card number generated for a single transaction or merchant.
pattern GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_Virtual :: GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem
pattern GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_Virtual = GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem "VIRTUAL"

-- | This card has been detected as being used in an unexpected geographic location.
pattern GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_UNEXPECTEDLOCATION :: GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem
pattern GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_UNEXPECTEDLOCATION = GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem "UNEXPECTED_LOCATION"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_CARDLABELUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_Prepaid,
  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_Virtual,
  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem_UNEXPECTEDLOCATION,
  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals_CardLabelsItem
  #-}

-- | Required. Describes the type of IP override.
newtype GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType = GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType {fromGoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType :: Core.Text}
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

-- | Default override type that indicates this enum hasn\'t been specified.
pattern GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType_OVERRIDETYPEUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType
pattern GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType_OVERRIDETYPEUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType "OVERRIDE_TYPE_UNSPECIFIED"

-- | Allowlist the IP address; i.e. give a @risk_analysis.score@ of 0.9 for all valid assessments.
pattern GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType_Allow :: GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType
pattern GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType_Allow = GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType "ALLOW"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType_OVERRIDETYPEUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType_Allow,
  GoogleCloudRecaptchaenterpriseV1IpOverrideData_OverrideType
  #-}

-- | Output only. Challenge information for SCORE/AND/CHALLENGE and INVISIBLE keys
newtype GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge {fromGoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge :: Core.Text}
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

-- | Default unspecified type.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_CHALLENGEUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_CHALLENGEUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge "CHALLENGE_UNSPECIFIED"

-- | No challenge was presented for solving.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Nocaptcha :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Nocaptcha = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge "NOCAPTCHA"

-- | A solution was submitted that was correct.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Passed :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Passed = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge "PASSED"

-- | A solution was submitted that was incorrect or otherwise deemed suspicious.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Failed :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Failed = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge "FAILED"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_CHALLENGEUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Nocaptcha,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Passed,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge_Failed,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_Challenge
  #-}

newtype GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem {fromGoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem :: Core.Text}
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

-- | Default unspecified type.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_CLASSIFICATIONREASONUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_CLASSIFICATIONREASONUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem "CLASSIFICATION_REASON_UNSPECIFIED"

-- | Interactions matched the behavior of an automated agent.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_Automation :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_Automation = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem "AUTOMATION"

-- | The event originated from an illegitimate environment.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_UNEXPECTEDENVIRONMENT :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_UNEXPECTEDENVIRONMENT = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem "UNEXPECTED_ENVIRONMENT"

-- | Traffic volume from the event source is higher than normal.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_TOOMUCHTRAFFIC :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_TOOMUCHTRAFFIC = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem "TOO_MUCH_TRAFFIC"

-- | Interactions with the site were significantly different than expected patterns.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_UNEXPECTEDUSAGEPATTERNS :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_UNEXPECTEDUSAGEPATTERNS = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem "UNEXPECTED_USAGE_PATTERNS"

-- | Too little traffic has been received from this site thus far to generate quality risk analysis.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_LOWCONFIDENCESCORE :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_LOWCONFIDENCESCORE = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem "LOW_CONFIDENCE_SCORE"

-- | The request matches behavioral characteristics of a carding attack.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_SUSPECTEDCARDING :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_SUSPECTEDCARDING = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem "SUSPECTED_CARDING"

-- | The request matches behavioral characteristics of chargebacks for fraud.
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_SUSPECTEDCHARGEBACK :: GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_SUSPECTEDCHARGEBACK = GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem "SUSPECTED_CHARGEBACK"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_CLASSIFICATIONREASONUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_Automation,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_UNEXPECTEDENVIRONMENT,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_TOOMUCHTRAFFIC,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_UNEXPECTEDUSAGEPATTERNS,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_LOWCONFIDENCESCORE,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_SUSPECTEDCARDING,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem_SUSPECTEDCHARGEBACK,
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis_ReasonsItem
  #-}

newtype GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem = GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem {fromGoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem :: Core.Text}
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

-- | Default unspecified reason
pattern GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem_SMSTOLLFRAUDREASONUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem_SMSTOLLFRAUDREASONUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem "SMS_TOLL_FRAUD_REASON_UNSPECIFIED"

-- | The provided phone number was invalid
pattern GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem_INVALIDPHONENUMBER :: GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem
pattern GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem_INVALIDPHONENUMBER = GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem "INVALID_PHONE_NUMBER"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem_SMSTOLLFRAUDREASONUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem_INVALIDPHONENUMBER,
  GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict_ReasonsItem
  #-}

-- | Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.
newtype GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge = GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge {fromGoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge :: Core.Text}
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

-- | Perform the normal risk analysis and return either nocaptcha or a challenge depending on risk and trust factors.
pattern GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_TESTINGCHALLENGEUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge
pattern GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_TESTINGCHALLENGEUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge "TESTING_CHALLENGE_UNSPECIFIED"

-- | Challenge requests for this key always return a nocaptcha, which does not require a solution.
pattern GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_Nocaptcha :: GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge
pattern GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_Nocaptcha = GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge "NOCAPTCHA"

-- | Challenge requests for this key always return an unsolvable challenge.
pattern GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_UNSOLVABLECHALLENGE :: GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge
pattern GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_UNSOLVABLECHALLENGE = GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge "UNSOLVABLE_CHALLENGE"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_TESTINGCHALLENGEUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_Nocaptcha,
  GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge_UNSOLVABLECHALLENGE,
  GoogleCloudRecaptchaenterpriseV1TestingOptions_TestingChallenge
  #-}

-- | Output only. Reason associated with the response when valid = false.
newtype GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason = GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason {fromGoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason :: Core.Text}
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

-- | Default unspecified type.
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_INVALIDREASONUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_INVALIDREASONUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason "INVALID_REASON_UNSPECIFIED"

-- | If the failure reason was not accounted for.
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_UNKNOWNINVALIDREASON :: GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_UNKNOWNINVALIDREASON = GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason "UNKNOWN_INVALID_REASON"

-- | The provided user verification token was malformed.
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Malformed :: GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Malformed = GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason "MALFORMED"

-- | The user verification token had expired.
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Expired :: GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Expired = GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason "EXPIRED"

-- | The user verification had already been seen.
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Dupe :: GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Dupe = GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason "DUPE"

-- | The user verification token was not present.
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Missing :: GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Missing = GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason "MISSING"

-- | A retriable error (such as network failure) occurred on the browser. Could easily be simulated by an attacker.
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_BROWSERERROR :: GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
pattern GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_BROWSERERROR = GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason "BROWSER_ERROR"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_INVALIDREASONUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_UNKNOWNINVALIDREASON,
  GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Malformed,
  GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Expired,
  GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Dupe,
  GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_Missing,
  GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason_BROWSERERROR,
  GoogleCloudRecaptchaenterpriseV1TokenProperties_InvalidReason
  #-}

-- | Optional. The type of this transaction event.
newtype GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType {fromGoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType :: Core.Text}
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

-- | Default, unspecified event type.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_TRANSACTIONEVENTTYPEUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_TRANSACTIONEVENTTYPEUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "TRANSACTION_EVENT_TYPE_UNSPECIFIED"

-- | Indicates that the transaction is approved by the merchant. The accompanying reasons can include terms such as \'INHOUSE\', \'ACCERTIFY\', \'CYBERSOURCE\', or \'MANUAL_REVIEW\'.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MERCHANTAPPROVE :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MERCHANTAPPROVE = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "MERCHANT_APPROVE"

-- | Indicates that the transaction is denied and concluded due to risks detected by the merchant. The accompanying reasons can include terms such as \'INHOUSE\', \'ACCERTIFY\', \'CYBERSOURCE\', or \'MANUAL_REVIEW\'.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MERCHANTDENY :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MERCHANTDENY = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "MERCHANT_DENY"

-- | Indicates that the transaction is being evaluated by a human, due to suspicion or risk.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MANUALREVIEW :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MANUALREVIEW = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "MANUAL_REVIEW"

-- | Indicates that the authorization attempt with the card issuer succeeded.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Authorization :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Authorization = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "AUTHORIZATION"

-- | Indicates that the authorization attempt with the card issuer failed. The accompanying reasons can include Visa\'s \'54\' indicating that the card is expired, or \'82\' indicating that the CVV is incorrect.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_AUTHORIZATIONDECLINE :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_AUTHORIZATIONDECLINE = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "AUTHORIZATION_DECLINE"

-- | Indicates that the transaction is completed because the funds were settled.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_PAYMENTCAPTURE :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_PAYMENTCAPTURE = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "PAYMENT_CAPTURE"

-- | Indicates that the transaction could not be completed because the funds were not settled.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_PAYMENTCAPTUREDECLINE :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_PAYMENTCAPTUREDECLINE = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "PAYMENT_CAPTURE_DECLINE"

-- | Indicates that the transaction has been canceled. Specify the reason for the cancellation. For example, \'INSUFFICIENT_INVENTORY\'.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Cancel :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Cancel = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "CANCEL"

-- | Indicates that the merchant has received a chargeback inquiry due to fraud for the transaction, requesting additional information before a fraud chargeback is officially issued and a formal chargeback notification is sent.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKINQUIRY :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKINQUIRY = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "CHARGEBACK_INQUIRY"

-- | Indicates that the merchant has received a chargeback alert due to fraud for the transaction. The process of resolving the dispute without involving the payment network is started.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKALERT :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKALERT = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "CHARGEBACK_ALERT"

-- | Indicates that a fraud notification is issued for the transaction, sent by the payment instrument\'s issuing bank because the transaction appears to be fraudulent. We recommend including TC40 or SAFE data in the @reason@ field for this event type. For partial chargebacks, we recommend that you include an amount in the @value@ field.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_FRAUDNOTIFICATION :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_FRAUDNOTIFICATION = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "FRAUD_NOTIFICATION"

-- | Indicates that the merchant is informed by the payment network that the transaction has entered the chargeback process due to fraud. Reason code examples include Discover\'s \'6005\' and \'6041\'. For partial chargebacks, we recommend that you include an amount in the @value@ field.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Chargeback :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Chargeback = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "CHARGEBACK"

-- | Indicates that the transaction has entered the chargeback process due to fraud, and that the merchant has chosen to enter representment. Reason examples include Discover\'s \'6005\' and \'6041\'. For partial chargebacks, we recommend that you include an amount in the @value@ field.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKREPRESENTMENT :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKREPRESENTMENT = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "CHARGEBACK_REPRESENTMENT"

-- | Indicates that the transaction has had a fraud chargeback which was illegitimate and was reversed as a result. For partial chargebacks, we recommend that you include an amount in the @value@ field.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKREVERSE :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKREVERSE = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "CHARGEBACK_REVERSE"

-- | Indicates that the merchant has received a refund for a completed transaction. For partial refunds, we recommend that you include an amount in the @value@ field. Reason example: \'TAX_EXEMPT\' (partial refund of exempt tax)
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDREQUEST :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDREQUEST = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "REFUND_REQUEST"

-- | Indicates that the merchant has received a refund request for this transaction, but that they have declined it. For partial refunds, we recommend that you include an amount in the @value@ field. Reason example: \'TAX_EXEMPT\' (partial refund of exempt tax)
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDDECLINE :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDDECLINE = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "REFUND_DECLINE"

-- | Indicates that the completed transaction was refunded by the merchant. For partial refunds, we recommend that you include an amount in the @value@ field. Reason example: \'TAX_EXEMPT\' (partial refund of exempt tax)
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Refund :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Refund = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "REFUND"

-- | Indicates that the completed transaction was refunded by the merchant, and that this refund was reversed. For partial refunds, we recommend that you include an amount in the @value@ field.
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDREVERSE :: GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
pattern GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDREVERSE = GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType "REFUND_REVERSE"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_TRANSACTIONEVENTTYPEUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MERCHANTAPPROVE,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MERCHANTDENY,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_MANUALREVIEW,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Authorization,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_AUTHORIZATIONDECLINE,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_PAYMENTCAPTURE,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_PAYMENTCAPTUREDECLINE,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Cancel,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKINQUIRY,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKALERT,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_FRAUDNOTIFICATION,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Chargeback,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKREPRESENTMENT,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_CHARGEBACKREVERSE,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDREQUEST,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDDECLINE,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_Refund,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType_REFUNDREVERSE,
  GoogleCloudRecaptchaenterpriseV1TransactionEvent_EventType
  #-}

-- | Required. The WAF feature for which this key is enabled.
newtype GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature = GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature {fromGoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature :: Core.Text}
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

-- | Undefined feature.
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_WAFFEATUREUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_WAFFEATUREUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature "WAF_FEATURE_UNSPECIFIED"

-- | Redirects suspicious traffic to reCAPTCHA.
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_CHALLENGEPAGE :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_CHALLENGEPAGE = GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature "CHALLENGE_PAGE"

-- | Use reCAPTCHA session-tokens to protect the whole user session on the site\'s domain.
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_SESSIONTOKEN :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_SESSIONTOKEN = GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature "SESSION_TOKEN"

-- | Use reCAPTCHA action-tokens to protect user actions.
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_ACTIONTOKEN :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_ACTIONTOKEN = GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature "ACTION_TOKEN"

-- | Use reCAPTCHA WAF express protection to protect any content other than web pages, like APIs and IoT devices.
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_Express :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_Express = GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature "EXPRESS"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_WAFFEATUREUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_CHALLENGEPAGE,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_SESSIONTOKEN,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_ACTIONTOKEN,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature_Express,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafFeature
  #-}

-- | Required. The WAF service that uses this key.
newtype GoogleCloudRecaptchaenterpriseV1WafSettings_WafService = GoogleCloudRecaptchaenterpriseV1WafSettings_WafService {fromGoogleCloudRecaptchaenterpriseV1WafSettings_WafService :: Core.Text}
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

-- | Undefined WAF
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_WAFSERVICEUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_WAFSERVICEUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1WafSettings_WafService "WAF_SERVICE_UNSPECIFIED"

-- | Cloud Armor
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_CA :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_CA = GoogleCloudRecaptchaenterpriseV1WafSettings_WafService "CA"

-- | Fastly
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Fastly :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Fastly = GoogleCloudRecaptchaenterpriseV1WafSettings_WafService "FASTLY"

-- | Cloudflare
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Cloudflare :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Cloudflare = GoogleCloudRecaptchaenterpriseV1WafSettings_WafService "CLOUDFLARE"

-- | Akamai
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Akamai :: GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
pattern GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Akamai = GoogleCloudRecaptchaenterpriseV1WafSettings_WafService "AKAMAI"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_WAFSERVICEUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_CA,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Fastly,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Cloudflare,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafService_Akamai,
  GoogleCloudRecaptchaenterpriseV1WafSettings_WafService
  #-}

-- | Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE and SCORE/AND/CHALLENGE.
newtype GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference = GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference {fromGoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference :: Core.Text}
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

-- | Default type that indicates this enum hasn\'t been specified.
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_CHALLENGESECURITYPREFERENCEUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_CHALLENGESECURITYPREFERENCEUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference "CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED"

-- | Key tends to show fewer and easier challenges.
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Usability :: GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Usability = GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference "USABILITY"

-- | Key tends to show balanced (in amount and difficulty) challenges.
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Balance :: GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Balance = GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference "BALANCE"

-- | Key tends to show more and harder challenges.
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Security :: GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Security = GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference "SECURITY"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_CHALLENGESECURITYPREFERENCEUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Usability,
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Balance,
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference_Security,
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_ChallengeSecurityPreference
  #-}

-- | Required. Describes how this key is integrated with the website.
newtype GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType = GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType {fromGoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType :: Core.Text}
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

-- | Default type that indicates this enum hasn\'t been specified. This is not a valid IntegrationType, one of the other types must be specified instead.
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_INTEGRATIONTYPEUNSPECIFIED :: GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_INTEGRATIONTYPEUNSPECIFIED = GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType "INTEGRATION_TYPE_UNSPECIFIED"

-- | Only used to produce scores. It doesn\'t display the \"I\'m not a robot\" checkbox and never shows captcha challenges.
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Score :: GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Score = GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType "SCORE"

-- | Displays the \"I\'m not a robot\" checkbox and may show captcha challenges after it is checked.
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Checkbox :: GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Checkbox = GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType "CHECKBOX"

-- | Doesn\'t display the \"I\'m not a robot\" checkbox, but may show captcha challenges after risk analysis.
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Invisible :: GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
pattern GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Invisible = GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType "INVISIBLE"

{-# COMPLETE
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_INTEGRATIONTYPEUNSPECIFIED,
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Score,
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Checkbox,
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType_Invisible,
  GoogleCloudRecaptchaenterpriseV1WebKeySettings_IntegrationType
  #-}
