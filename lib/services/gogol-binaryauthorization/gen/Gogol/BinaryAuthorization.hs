{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BinaryAuthorization
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The management interface for Binary Authorization, a service that provides policy-based deployment validation and control for images deployed to Google Kubernetes Engine (GKE), Anthos Service Mesh, Anthos Clusters, and Cloud Run.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference>
module Gogol.BinaryAuthorization
    (
    -- * Configuration
      binaryAuthorizationService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Resources

    -- ** binaryauthorization.projects.attestors.create
    , BinaryAuthorizationProjectsAttestorsCreateResource
    , newBinaryAuthorizationProjectsAttestorsCreate
    , BinaryAuthorizationProjectsAttestorsCreate

    -- ** binaryauthorization.projects.attestors.delete
    , BinaryAuthorizationProjectsAttestorsDeleteResource
    , newBinaryAuthorizationProjectsAttestorsDelete
    , BinaryAuthorizationProjectsAttestorsDelete

    -- ** binaryauthorization.projects.attestors.get
    , BinaryAuthorizationProjectsAttestorsGetResource
    , newBinaryAuthorizationProjectsAttestorsGet
    , BinaryAuthorizationProjectsAttestorsGet

    -- ** binaryauthorization.projects.attestors.getIamPolicy
    , BinaryAuthorizationProjectsAttestorsGetIamPolicyResource
    , newBinaryAuthorizationProjectsAttestorsGetIamPolicy
    , BinaryAuthorizationProjectsAttestorsGetIamPolicy

    -- ** binaryauthorization.projects.attestors.list
    , BinaryAuthorizationProjectsAttestorsListResource
    , newBinaryAuthorizationProjectsAttestorsList
    , BinaryAuthorizationProjectsAttestorsList

    -- ** binaryauthorization.projects.attestors.setIamPolicy
    , BinaryAuthorizationProjectsAttestorsSetIamPolicyResource
    , newBinaryAuthorizationProjectsAttestorsSetIamPolicy
    , BinaryAuthorizationProjectsAttestorsSetIamPolicy

    -- ** binaryauthorization.projects.attestors.testIamPermissions
    , BinaryAuthorizationProjectsAttestorsTestIamPermissionsResource
    , newBinaryAuthorizationProjectsAttestorsTestIamPermissions
    , BinaryAuthorizationProjectsAttestorsTestIamPermissions

    -- ** binaryauthorization.projects.attestors.update
    , BinaryAuthorizationProjectsAttestorsUpdateResource
    , newBinaryAuthorizationProjectsAttestorsUpdate
    , BinaryAuthorizationProjectsAttestorsUpdate

    -- ** binaryauthorization.projects.attestors.validateAttestationOccurrence
    , BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrenceResource
    , newBinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence
    , BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence

    -- ** binaryauthorization.projects.getPolicy
    , BinaryAuthorizationProjectsGetPolicyResource
    , newBinaryAuthorizationProjectsGetPolicy
    , BinaryAuthorizationProjectsGetPolicy

    -- ** binaryauthorization.projects.policy.getIamPolicy
    , BinaryAuthorizationProjectsPolicyGetIamPolicyResource
    , newBinaryAuthorizationProjectsPolicyGetIamPolicy
    , BinaryAuthorizationProjectsPolicyGetIamPolicy

    -- ** binaryauthorization.projects.policy.setIamPolicy
    , BinaryAuthorizationProjectsPolicySetIamPolicyResource
    , newBinaryAuthorizationProjectsPolicySetIamPolicy
    , BinaryAuthorizationProjectsPolicySetIamPolicy

    -- ** binaryauthorization.projects.policy.testIamPermissions
    , BinaryAuthorizationProjectsPolicyTestIamPermissionsResource
    , newBinaryAuthorizationProjectsPolicyTestIamPermissions
    , BinaryAuthorizationProjectsPolicyTestIamPermissions

    -- ** binaryauthorization.projects.updatePolicy
    , BinaryAuthorizationProjectsUpdatePolicyResource
    , newBinaryAuthorizationProjectsUpdatePolicy
    , BinaryAuthorizationProjectsUpdatePolicy

    -- ** binaryauthorization.systempolicy.getPolicy
    , BinaryAuthorizationSystempolicyGetPolicyResource
    , newBinaryAuthorizationSystempolicyGetPolicy
    , BinaryAuthorizationSystempolicyGetPolicy

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AdmissionRule
    , AdmissionRule (..)
    , newAdmissionRule

    -- ** AdmissionRule_EnforcementMode
    , AdmissionRule_EnforcementMode (..)

    -- ** AdmissionRule_EvaluationMode
    , AdmissionRule_EvaluationMode (..)

    -- ** AdmissionWhitelistPattern
    , AdmissionWhitelistPattern (..)
    , newAdmissionWhitelistPattern

    -- ** AttestationOccurrence
    , AttestationOccurrence (..)
    , newAttestationOccurrence

    -- ** Attestor
    , Attestor (..)
    , newAttestor

    -- ** AttestorPublicKey
    , AttestorPublicKey (..)
    , newAttestorPublicKey

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** IamPolicy
    , IamPolicy (..)
    , newIamPolicy

    -- ** Jwt
    , Jwt (..)
    , newJwt

    -- ** ListAttestorsResponse
    , ListAttestorsResponse (..)
    , newListAttestorsResponse

    -- ** PkixPublicKey
    , PkixPublicKey (..)
    , newPkixPublicKey

    -- ** PkixPublicKey_SignatureAlgorithm
    , PkixPublicKey_SignatureAlgorithm (..)

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** Policy_ClusterAdmissionRules
    , Policy_ClusterAdmissionRules (..)
    , newPolicy_ClusterAdmissionRules

    -- ** Policy_GlobalPolicyEvaluationMode
    , Policy_GlobalPolicyEvaluationMode (..)

    -- ** Policy_IstioServiceIdentityAdmissionRules
    , Policy_IstioServiceIdentityAdmissionRules (..)
    , newPolicy_IstioServiceIdentityAdmissionRules

    -- ** Policy_KubernetesNamespaceAdmissionRules
    , Policy_KubernetesNamespaceAdmissionRules (..)
    , newPolicy_KubernetesNamespaceAdmissionRules

    -- ** Policy_KubernetesServiceAccountAdmissionRules
    , Policy_KubernetesServiceAccountAdmissionRules (..)
    , newPolicy_KubernetesServiceAccountAdmissionRules

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Signature
    , Signature (..)
    , newSignature

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** UserOwnedGrafeasNote
    , UserOwnedGrafeasNote (..)
    , newUserOwnedGrafeasNote

    -- ** ValidateAttestationOccurrenceRequest
    , ValidateAttestationOccurrenceRequest (..)
    , newValidateAttestationOccurrenceRequest

    -- ** ValidateAttestationOccurrenceResponse
    , ValidateAttestationOccurrenceResponse (..)
    , newValidateAttestationOccurrenceResponse

    -- ** ValidateAttestationOccurrenceResponse_Result
    , ValidateAttestationOccurrenceResponse_Result (..)
    ) where

import Gogol.BinaryAuthorization.Projects.Attestors.Create
import Gogol.BinaryAuthorization.Projects.Attestors.Delete
import Gogol.BinaryAuthorization.Projects.Attestors.Get
import Gogol.BinaryAuthorization.Projects.Attestors.GetIamPolicy
import Gogol.BinaryAuthorization.Projects.Attestors.List
import Gogol.BinaryAuthorization.Projects.Attestors.SetIamPolicy
import Gogol.BinaryAuthorization.Projects.Attestors.TestIamPermissions
import Gogol.BinaryAuthorization.Projects.Attestors.Update
import Gogol.BinaryAuthorization.Projects.Attestors.ValidateAttestationOccurrence
import Gogol.BinaryAuthorization.Projects.GetPolicy
import Gogol.BinaryAuthorization.Projects.Policy.GetIamPolicy
import Gogol.BinaryAuthorization.Projects.Policy.SetIamPolicy
import Gogol.BinaryAuthorization.Projects.Policy.TestIamPermissions
import Gogol.BinaryAuthorization.Projects.UpdatePolicy
import Gogol.BinaryAuthorization.Systempolicy.GetPolicy
import Gogol.BinaryAuthorization.Types
