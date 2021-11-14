{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BinaryAuthorization.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BinaryAuthorization.Types
    (
    -- * Service Configuration
      binaryAuthorizationService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Signature
    , Signature
    , signature
    , sSignature
    , sPublicKeyId

    -- * PkixPublicKey
    , PkixPublicKey
    , pkixPublicKey
    , ppkPublicKeyPem
    , ppkSignatureAlgorithm

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * Empty
    , Empty
    , empty

    -- * PolicyKubernetesNamespaceAdmissionRules
    , PolicyKubernetesNamespaceAdmissionRules
    , policyKubernetesNamespaceAdmissionRules
    , pknarAddtional

    -- * AdmissionRuleEnforcementMode
    , AdmissionRuleEnforcementMode (..)

    -- * PolicyGlobalPolicyEvaluationMode
    , PolicyGlobalPolicyEvaluationMode (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * ValidateAttestationOccurrenceRequest
    , ValidateAttestationOccurrenceRequest
    , validateAttestationOccurrenceRequest
    , vaorOccurrenceNote
    , vaorAttestation
    , vaorOccurrenceResourceURI

    -- * Jwt
    , Jwt
    , jwt
    , jCompactJwt

    -- * ListAttestorsResponse
    , ListAttestorsResponse
    , listAttestorsResponse
    , larNextPageToken
    , larAttestors

    -- * ValidateAttestationOccurrenceResponse
    , ValidateAttestationOccurrenceResponse
    , validateAttestationOccurrenceResponse
    , vaorDenialReason
    , vaorResult

    -- * AdmissionWhiteListPattern
    , AdmissionWhiteListPattern
    , admissionWhiteListPattern
    , awlpNamePattern

    -- * PolicyIstioServiceIdentityAdmissionRules
    , PolicyIstioServiceIdentityAdmissionRules
    , policyIstioServiceIdentityAdmissionRules
    , pisiarAddtional

    -- * PkixPublicKeySignatureAlgorithm
    , PkixPublicKeySignatureAlgorithm (..)

    -- * AdmissionRule
    , AdmissionRule
    , admissionRule
    , arEnforcementMode
    , arEvaluationMode
    , arRequireAttestationsBy

    -- * AdmissionRuleEvaluationMode
    , AdmissionRuleEvaluationMode (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * PolicyKubernetesServiceAccountAdmissionRules
    , PolicyKubernetesServiceAccountAdmissionRules
    , policyKubernetesServiceAccountAdmissionRules
    , pksaarAddtional

    -- * IAMPolicy
    , IAMPolicy
    , iamPolicy
    , ipEtag
    , ipVersion
    , ipBindings

    -- * ValidateAttestationOccurrenceResponseResult
    , ValidateAttestationOccurrenceResponseResult (..)

    -- * AttestorPublicKey
    , AttestorPublicKey
    , attestorPublicKey
    , apkPkixPublicKey
    , apkAsciiArmoredPgpPublicKey
    , apkId
    , apkComment

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pDefaultAdmissionRule
    , pIstioServiceIdentityAdmissionRules
    , pAdmissionWhiteListPatterns
    , pKubernetesServiceAccountAdmissionRules
    , pClusterAdmissionRules
    , pUpdateTime
    , pName
    , pKubernetesNamespaceAdmissionRules
    , pGlobalPolicyEvaluationMode
    , pDescription

    -- * UserOwnedGrafeasNote
    , UserOwnedGrafeasNote
    , userOwnedGrafeasNote
    , uognDelegationServiceAccountEmail
    , uognPublicKeys
    , uognNoteReference

    -- * PolicyClusterAdmissionRules
    , PolicyClusterAdmissionRules
    , policyClusterAdmissionRules
    , pcarAddtional

    -- * Attestor
    , Attestor
    , attestor
    , aUpdateTime
    , aName
    , aUserOwnedGrafeasNote
    , aDescription

    -- * AttestationOccurrence
    , AttestationOccurrence
    , attestationOccurrence
    , aoSerializedPayload
    , aoJwts
    , aoSignatures

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.BinaryAuthorization.Types.Product
import Network.Google.BinaryAuthorization.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Binary Authorization API. This contains the host and root path used as a starting point for constructing service requests.
binaryAuthorizationService :: ServiceConfig
binaryAuthorizationService
  = defaultService (ServiceId "binaryauthorization:v1")
      "binaryauthorization.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
