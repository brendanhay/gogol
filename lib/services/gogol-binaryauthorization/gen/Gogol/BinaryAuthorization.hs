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
  ( -- * Configuration
    binaryAuthorizationService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** binaryauthorization.projects.attestors.create
    BinaryAuthorizationProjectsAttestorsCreateResource,
    BinaryAuthorizationProjectsAttestorsCreate (..),
    newBinaryAuthorizationProjectsAttestorsCreate,

    -- ** binaryauthorization.projects.attestors.delete
    BinaryAuthorizationProjectsAttestorsDeleteResource,
    BinaryAuthorizationProjectsAttestorsDelete (..),
    newBinaryAuthorizationProjectsAttestorsDelete,

    -- ** binaryauthorization.projects.attestors.get
    BinaryAuthorizationProjectsAttestorsGetResource,
    BinaryAuthorizationProjectsAttestorsGet (..),
    newBinaryAuthorizationProjectsAttestorsGet,

    -- ** binaryauthorization.projects.attestors.getIamPolicy
    BinaryAuthorizationProjectsAttestorsGetIamPolicyResource,
    BinaryAuthorizationProjectsAttestorsGetIamPolicy (..),
    newBinaryAuthorizationProjectsAttestorsGetIamPolicy,

    -- ** binaryauthorization.projects.attestors.list
    BinaryAuthorizationProjectsAttestorsListResource,
    BinaryAuthorizationProjectsAttestorsList (..),
    newBinaryAuthorizationProjectsAttestorsList,

    -- ** binaryauthorization.projects.attestors.setIamPolicy
    BinaryAuthorizationProjectsAttestorsSetIamPolicyResource,
    BinaryAuthorizationProjectsAttestorsSetIamPolicy (..),
    newBinaryAuthorizationProjectsAttestorsSetIamPolicy,

    -- ** binaryauthorization.projects.attestors.testIamPermissions
    BinaryAuthorizationProjectsAttestorsTestIamPermissionsResource,
    BinaryAuthorizationProjectsAttestorsTestIamPermissions (..),
    newBinaryAuthorizationProjectsAttestorsTestIamPermissions,

    -- ** binaryauthorization.projects.attestors.update
    BinaryAuthorizationProjectsAttestorsUpdateResource,
    BinaryAuthorizationProjectsAttestorsUpdate (..),
    newBinaryAuthorizationProjectsAttestorsUpdate,

    -- ** binaryauthorization.projects.attestors.validateAttestationOccurrence
    BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrenceResource,
    BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence (..),
    newBinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence,

    -- ** binaryauthorization.projects.getPolicy
    BinaryAuthorizationProjectsGetPolicyResource,
    BinaryAuthorizationProjectsGetPolicy (..),
    newBinaryAuthorizationProjectsGetPolicy,

    -- ** binaryauthorization.projects.policy.getIamPolicy
    BinaryAuthorizationProjectsPolicyGetIamPolicyResource,
    BinaryAuthorizationProjectsPolicyGetIamPolicy (..),
    newBinaryAuthorizationProjectsPolicyGetIamPolicy,

    -- ** binaryauthorization.projects.policy.setIamPolicy
    BinaryAuthorizationProjectsPolicySetIamPolicyResource,
    BinaryAuthorizationProjectsPolicySetIamPolicy (..),
    newBinaryAuthorizationProjectsPolicySetIamPolicy,

    -- ** binaryauthorization.projects.policy.testIamPermissions
    BinaryAuthorizationProjectsPolicyTestIamPermissionsResource,
    BinaryAuthorizationProjectsPolicyTestIamPermissions (..),
    newBinaryAuthorizationProjectsPolicyTestIamPermissions,

    -- ** binaryauthorization.projects.updatePolicy
    BinaryAuthorizationProjectsUpdatePolicyResource,
    BinaryAuthorizationProjectsUpdatePolicy (..),
    newBinaryAuthorizationProjectsUpdatePolicy,

    -- ** binaryauthorization.systempolicy.getPolicy
    BinaryAuthorizationSystempolicyGetPolicyResource,
    BinaryAuthorizationSystempolicyGetPolicy (..),
    newBinaryAuthorizationSystempolicyGetPolicy,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdmissionRule
    AdmissionRule (..),
    newAdmissionRule,

    -- ** AdmissionRule_EnforcementMode
    AdmissionRule_EnforcementMode (..),

    -- ** AdmissionRule_EvaluationMode
    AdmissionRule_EvaluationMode (..),

    -- ** AdmissionWhitelistPattern
    AdmissionWhitelistPattern (..),
    newAdmissionWhitelistPattern,

    -- ** AttestationOccurrence
    AttestationOccurrence (..),
    newAttestationOccurrence,

    -- ** Attestor
    Attestor (..),
    newAttestor,

    -- ** AttestorPublicKey
    AttestorPublicKey (..),
    newAttestorPublicKey,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** IamPolicy
    IamPolicy (..),
    newIamPolicy,

    -- ** Jwt
    Jwt (..),
    newJwt,

    -- ** ListAttestorsResponse
    ListAttestorsResponse (..),
    newListAttestorsResponse,

    -- ** PkixPublicKey
    PkixPublicKey (..),
    newPkixPublicKey,

    -- ** PkixPublicKey_SignatureAlgorithm
    PkixPublicKey_SignatureAlgorithm (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Policy_ClusterAdmissionRules
    Policy_ClusterAdmissionRules (..),
    newPolicy_ClusterAdmissionRules,

    -- ** Policy_GlobalPolicyEvaluationMode
    Policy_GlobalPolicyEvaluationMode (..),

    -- ** Policy_IstioServiceIdentityAdmissionRules
    Policy_IstioServiceIdentityAdmissionRules (..),
    newPolicy_IstioServiceIdentityAdmissionRules,

    -- ** Policy_KubernetesNamespaceAdmissionRules
    Policy_KubernetesNamespaceAdmissionRules (..),
    newPolicy_KubernetesNamespaceAdmissionRules,

    -- ** Policy_KubernetesServiceAccountAdmissionRules
    Policy_KubernetesServiceAccountAdmissionRules (..),
    newPolicy_KubernetesServiceAccountAdmissionRules,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Signature
    Signature (..),
    newSignature,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UserOwnedGrafeasNote
    UserOwnedGrafeasNote (..),
    newUserOwnedGrafeasNote,

    -- ** ValidateAttestationOccurrenceRequest
    ValidateAttestationOccurrenceRequest (..),
    newValidateAttestationOccurrenceRequest,

    -- ** ValidateAttestationOccurrenceResponse
    ValidateAttestationOccurrenceResponse (..),
    newValidateAttestationOccurrenceResponse,

    -- ** ValidateAttestationOccurrenceResponse_Result
    ValidateAttestationOccurrenceResponse_Result (..),
  )
where

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
