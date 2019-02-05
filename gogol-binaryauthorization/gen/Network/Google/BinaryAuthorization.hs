{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.BinaryAuthorization
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The management interface for Binary Authorization, a system providing
-- policy control for images deployed to Kubernetes Engine clusters.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference>
module Network.Google.BinaryAuthorization
    (
    -- * Service Configuration
      binaryAuthorizationService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , BinaryAuthorizationAPI

    -- * Resources

    -- ** binaryauthorization.projects.attestors.create
    , module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Create

    -- ** binaryauthorization.projects.attestors.delete
    , module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Delete

    -- ** binaryauthorization.projects.attestors.get
    , module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Get

    -- ** binaryauthorization.projects.attestors.getIamPolicy
    , module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.GetIAMPolicy

    -- ** binaryauthorization.projects.attestors.list
    , module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.List

    -- ** binaryauthorization.projects.attestors.setIamPolicy
    , module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.SetIAMPolicy

    -- ** binaryauthorization.projects.attestors.testIamPermissions
    , module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.TestIAMPermissions

    -- ** binaryauthorization.projects.attestors.update
    , module Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Update

    -- ** binaryauthorization.projects.getPolicy
    , module Network.Google.Resource.BinaryAuthorization.Projects.GetPolicy

    -- ** binaryauthorization.projects.policy.getIamPolicy
    , module Network.Google.Resource.BinaryAuthorization.Projects.Policy.GetIAMPolicy

    -- ** binaryauthorization.projects.policy.setIamPolicy
    , module Network.Google.Resource.BinaryAuthorization.Projects.Policy.SetIAMPolicy

    -- ** binaryauthorization.projects.policy.testIamPermissions
    , module Network.Google.Resource.BinaryAuthorization.Projects.Policy.TestIAMPermissions

    -- ** binaryauthorization.projects.updatePolicy
    , module Network.Google.Resource.BinaryAuthorization.Projects.UpdatePolicy

    -- * Types

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** UserOwnedDrydockNote
    , UserOwnedDrydockNote
    , userOwnedDrydockNote
    , uodnDelegationServiceAccountEmail
    , uodnPublicKeys
    , uodnNoteReference

    -- ** Empty
    , Empty
    , empty

    -- ** AdmissionRuleEnforcementMode
    , AdmissionRuleEnforcementMode (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** ListAttestorsResponse
    , ListAttestorsResponse
    , listAttestorsResponse
    , larNextPageToken
    , larAttestors

    -- ** AdmissionWhiteListPattern
    , AdmissionWhiteListPattern
    , admissionWhiteListPattern
    , awlpNamePattern

    -- ** AdmissionRule
    , AdmissionRule
    , admissionRule
    , arEnforcementMode
    , arEvaluationMode
    , arRequireAttestationsBy

    -- ** AdmissionRuleEvaluationMode
    , AdmissionRuleEvaluationMode (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** IAMPolicy
    , IAMPolicy
    , iamPolicy
    , ipEtag
    , ipVersion
    , ipBindings

    -- ** AttestorPublicKey
    , AttestorPublicKey
    , attestorPublicKey
    , apkAsciiArmoredPgpPublicKey
    , apkId
    , apkComment

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pDefaultAdmissionRule
    , pAdmissionWhiteListPatterns
    , pClusterAdmissionRules
    , pUpdateTime
    , pName
    , pDescription

    -- ** PolicyClusterAdmissionRules
    , PolicyClusterAdmissionRules
    , policyClusterAdmissionRules
    , pcarAddtional

    -- ** Attestor
    , Attestor
    , attestor
    , aUserOwnedDrydockNote
    , aUpdateTime
    , aName
    , aDescription

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.BinaryAuthorization.Types
import           Network.Google.Prelude
import           Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Create
import           Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Delete
import           Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Get
import           Network.Google.Resource.BinaryAuthorization.Projects.Attestors.GetIAMPolicy
import           Network.Google.Resource.BinaryAuthorization.Projects.Attestors.List
import           Network.Google.Resource.BinaryAuthorization.Projects.Attestors.SetIAMPolicy
import           Network.Google.Resource.BinaryAuthorization.Projects.Attestors.TestIAMPermissions
import           Network.Google.Resource.BinaryAuthorization.Projects.Attestors.Update
import           Network.Google.Resource.BinaryAuthorization.Projects.GetPolicy
import           Network.Google.Resource.BinaryAuthorization.Projects.Policy.GetIAMPolicy
import           Network.Google.Resource.BinaryAuthorization.Projects.Policy.SetIAMPolicy
import           Network.Google.Resource.BinaryAuthorization.Projects.Policy.TestIAMPermissions
import           Network.Google.Resource.BinaryAuthorization.Projects.UpdatePolicy

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Binary Authorization API service.
type BinaryAuthorizationAPI =
     ProjectsAttestorsListResource :<|>
       ProjectsAttestorsGetIAMPolicyResource
       :<|> ProjectsAttestorsGetResource
       :<|> ProjectsAttestorsCreateResource
       :<|> ProjectsAttestorsSetIAMPolicyResource
       :<|> ProjectsAttestorsTestIAMPermissionsResource
       :<|> ProjectsAttestorsDeleteResource
       :<|> ProjectsAttestorsUpdateResource
       :<|> ProjectsPolicyGetIAMPolicyResource
       :<|> ProjectsPolicySetIAMPolicyResource
       :<|> ProjectsPolicyTestIAMPermissionsResource
       :<|> ProjectsUpdatePolicyResource
       :<|> ProjectsGetPolicyResource
