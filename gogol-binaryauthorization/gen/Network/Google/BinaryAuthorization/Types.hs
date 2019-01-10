{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BinaryAuthorization.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * UserOwnedDrydockNote
    , UserOwnedDrydockNote
    , userOwnedDrydockNote
    , uodnDelegationServiceAccountEmail
    , uodnPublicKeys
    , uodnNoteReference

    -- * Empty
    , Empty
    , empty

    -- * AdmissionRuleEnforcementMode
    , AdmissionRuleEnforcementMode (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * ListAttestorsResponse
    , ListAttestorsResponse
    , listAttestorsResponse
    , larNextPageToken
    , larAttestors

    -- * AdmissionWhiteListPattern
    , AdmissionWhiteListPattern
    , admissionWhiteListPattern
    , awlpNamePattern

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

    -- * IAMPolicy
    , IAMPolicy
    , iamPolicy
    , ipEtag
    , ipVersion
    , ipBindings

    -- * AttestorPublicKey
    , AttestorPublicKey
    , attestorPublicKey
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
    , pAdmissionWhiteListPatterns
    , pClusterAdmissionRules
    , pUpdateTime
    , pName
    , pDescription

    -- * PolicyClusterAdmissionRules
    , PolicyClusterAdmissionRules
    , policyClusterAdmissionRules
    , pcarAddtional

    -- * Attestor
    , Attestor
    , attestor
    , aUserOwnedDrydockNote
    , aUpdateTime
    , aName
    , aDescription

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.BinaryAuthorization.Types.Product
import           Network.Google.BinaryAuthorization.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Binary Authorization API. This contains the host and root path used as a starting point for constructing service requests.
binaryAuthorizationService :: ServiceConfig
binaryAuthorizationService
  = defaultService
      (ServiceId "binaryauthorization:v1beta1")
      "binaryauthorization.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
