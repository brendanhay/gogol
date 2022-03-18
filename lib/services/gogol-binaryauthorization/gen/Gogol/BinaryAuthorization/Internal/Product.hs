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
-- Module      : Gogol.BinaryAuthorization.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.BinaryAuthorization.Internal.Product
  (

    -- * AdmissionRule
    AdmissionRule (..),
    newAdmissionRule,

    -- * AdmissionWhitelistPattern
    AdmissionWhitelistPattern (..),
    newAdmissionWhitelistPattern,

    -- * AttestationOccurrence
    AttestationOccurrence (..),
    newAttestationOccurrence,

    -- * Attestor
    Attestor (..),
    newAttestor,

    -- * AttestorPublicKey
    AttestorPublicKey (..),
    newAttestorPublicKey,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Expr
    Expr (..),
    newExpr,

    -- * IamPolicy
    IamPolicy (..),
    newIamPolicy,

    -- * Jwt
    Jwt (..),
    newJwt,

    -- * ListAttestorsResponse
    ListAttestorsResponse (..),
    newListAttestorsResponse,

    -- * PkixPublicKey
    PkixPublicKey (..),
    newPkixPublicKey,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Policy_ClusterAdmissionRules
    Policy_ClusterAdmissionRules (..),
    newPolicy_ClusterAdmissionRules,

    -- * Policy_IstioServiceIdentityAdmissionRules
    Policy_IstioServiceIdentityAdmissionRules (..),
    newPolicy_IstioServiceIdentityAdmissionRules,

    -- * Policy_KubernetesNamespaceAdmissionRules
    Policy_KubernetesNamespaceAdmissionRules (..),
    newPolicy_KubernetesNamespaceAdmissionRules,

    -- * Policy_KubernetesServiceAccountAdmissionRules
    Policy_KubernetesServiceAccountAdmissionRules (..),
    newPolicy_KubernetesServiceAccountAdmissionRules,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Signature
    Signature (..),
    newSignature,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * UserOwnedGrafeasNote
    UserOwnedGrafeasNote (..),
    newUserOwnedGrafeasNote,

    -- * ValidateAttestationOccurrenceRequest
    ValidateAttestationOccurrenceRequest (..),
    newValidateAttestationOccurrenceRequest,

    -- * ValidateAttestationOccurrenceResponse
    ValidateAttestationOccurrenceResponse (..),
    newValidateAttestationOccurrenceResponse,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.BinaryAuthorization.Internal.Sum

-- | An admission rule specifies either that all container images used in a pod creation request must be attested to by one or more attestors, that all pod creations will be allowed, or that all pod creations will be denied. Images matching an admission allowlist pattern are exempted from admission rules and will never block a pod creation.
--
-- /See:/ 'newAdmissionRule' smart constructor.
data AdmissionRule = AdmissionRule
    {
      -- | Required. The action when a pod creation is denied by the admission rule.
      enforcementMode :: (Core.Maybe AdmissionRule_EnforcementMode)
      -- | Required. How this admission rule will be evaluated.
    , evaluationMode :: (Core.Maybe AdmissionRule_EvaluationMode)
      -- | Optional. The resource names of the attestors that must attest to a container image, in the format @projects\/*\/attestors\/*@. Each attestor must exist before a policy can reference it. To add an attestor to a policy the principal issuing the policy change request must be able to read the attestor resource. Note: this field must be non-empty when the evaluation/mode field specifies REQUIRE/ATTESTATION, otherwise it must be empty.
    , requireAttestationsBy :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdmissionRule' with the minimum fields required to make a request.
newAdmissionRule 
    ::  AdmissionRule
newAdmissionRule =
  AdmissionRule
    { enforcementMode = Core.Nothing
    , evaluationMode = Core.Nothing
    , requireAttestationsBy = Core.Nothing
    }

instance Core.FromJSON AdmissionRule where
        parseJSON
          = Core.withObject "AdmissionRule"
              (\ o ->
                 AdmissionRule Core.<$>
                   (o Core..:? "enforcementMode") Core.<*>
                     (o Core..:? "evaluationMode")
                     Core.<*>
                     (o Core..:? "requireAttestationsBy" Core..!=
                        Core.mempty))

instance Core.ToJSON AdmissionRule where
        toJSON AdmissionRule{..}
          = Core.object
              (Core.catMaybes
                 [("enforcementMode" Core..=) Core.<$>
                    enforcementMode,
                  ("evaluationMode" Core..=) Core.<$> evaluationMode,
                  ("requireAttestationsBy" Core..=) Core.<$>
                    requireAttestationsBy])


-- | An admission allowlist pattern exempts images from checks by admission rules.
--
-- /See:/ 'newAdmissionWhitelistPattern' smart constructor.
newtype AdmissionWhitelistPattern = AdmissionWhitelistPattern
    {
      -- | An image name pattern to allowlist, in the form @registry\/path\/to\/image@. This supports a trailing @*@ wildcard, but this is allowed only in text after the @registry\/@ part. This also supports a trailing @**@ wildcard which matches subdirectories of a given entry.
      namePattern :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdmissionWhitelistPattern' with the minimum fields required to make a request.
newAdmissionWhitelistPattern 
    ::  AdmissionWhitelistPattern
newAdmissionWhitelistPattern =
  AdmissionWhitelistPattern {namePattern = Core.Nothing}

instance Core.FromJSON AdmissionWhitelistPattern
         where
        parseJSON
          = Core.withObject "AdmissionWhitelistPattern"
              (\ o ->
                 AdmissionWhitelistPattern Core.<$>
                   (o Core..:? "namePattern"))

instance Core.ToJSON AdmissionWhitelistPattern where
        toJSON AdmissionWhitelistPattern{..}
          = Core.object
              (Core.catMaybes
                 [("namePattern" Core..=) Core.<$> namePattern])


-- | Occurrence that represents a single \"attestation\". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.
--
-- /See:/ 'newAttestationOccurrence' smart constructor.
data AttestationOccurrence = AttestationOccurrence
    {
      -- | One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the @serialized_payload@ field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the @serialized_payload@ SHOULD be left empty. Each JWT SHOULD encode a claim specific to the @resource_uri@ of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.
      jwts :: (Core.Maybe [Jwt])
      -- | Required. The serialized payload that is verified by one or more @signatures@.
    , serializedPayload :: (Core.Maybe Core.Base64)
      -- | One or more signatures over @serialized_payload@. Verifier implementations should consider this attestation message verified if at least one @signature@ verifies @serialized_payload@. See @Signature@ in common.proto for more details on signature structure and verification.
    , signatures :: (Core.Maybe [Signature])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttestationOccurrence' with the minimum fields required to make a request.
newAttestationOccurrence 
    ::  AttestationOccurrence
newAttestationOccurrence =
  AttestationOccurrence
    { jwts = Core.Nothing
    , serializedPayload = Core.Nothing
    , signatures = Core.Nothing
    }

instance Core.FromJSON AttestationOccurrence where
        parseJSON
          = Core.withObject "AttestationOccurrence"
              (\ o ->
                 AttestationOccurrence Core.<$>
                   (o Core..:? "jwts" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "serializedPayload")
                     Core.<*>
                     (o Core..:? "signatures" Core..!= Core.mempty))

instance Core.ToJSON AttestationOccurrence where
        toJSON AttestationOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("jwts" Core..=) Core.<$> jwts,
                  ("serializedPayload" Core..=) Core.<$>
                    serializedPayload,
                  ("signatures" Core..=) Core.<$> signatures])


-- | An attestor that attests to container image artifacts. An existing attestor cannot be modified except where indicated.
--
-- /See:/ 'newAttestor' smart constructor.
data Attestor = Attestor
    {
      -- | Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
      description :: (Core.Maybe Core.Text)
      -- | Optional. Used to prevent updating the attestor when another request has updated it since it was retrieved.
    , etag :: (Core.Maybe Core.Text)
      -- | Required. The resource name, in the format: @projects\/*\/attestors\/*@. This field may not be updated.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Time when the attestor was last updated.
    , updateTime :: (Core.Maybe Core.DateTime')
      -- | This specifies how an attestation will be read, and how it will be used during policy enforcement.
    , userOwnedGrafeasNote :: (Core.Maybe UserOwnedGrafeasNote)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attestor' with the minimum fields required to make a request.
newAttestor 
    ::  Attestor
newAttestor =
  Attestor
    { description = Core.Nothing
    , etag = Core.Nothing
    , name = Core.Nothing
    , updateTime = Core.Nothing
    , userOwnedGrafeasNote = Core.Nothing
    }

instance Core.FromJSON Attestor where
        parseJSON
          = Core.withObject "Attestor"
              (\ o ->
                 Attestor Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "etag")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "userOwnedGrafeasNote"))

instance Core.ToJSON Attestor where
        toJSON Attestor{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("etag" Core..=) Core.<$> etag,
                  ("name" Core..=) Core.<$> name,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("userOwnedGrafeasNote" Core..=) Core.<$>
                    userOwnedGrafeasNote])


-- | An attestor public key that will be used to verify attestations signed by this attestor.
--
-- /See:/ 'newAttestorPublicKey' smart constructor.
data AttestorPublicKey = AttestorPublicKey
    {
      -- | ASCII-armored representation of a PGP public key, as the entire output by the command @gpg --export --armor foo\@example.com@ (either LF or CRLF line endings). When using this field, @id@ should be left blank. The BinAuthz API handlers will calculate the ID and fill it in automatically. BinAuthz computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If @id@ is provided by the caller, it will be overwritten by the API-calculated ID.
      asciiArmoredPgpPublicKey :: (Core.Maybe Core.Text)
      -- | Optional. A descriptive comment. This field may be updated.
    , comment :: (Core.Maybe Core.Text)
      -- | The ID of this public key. Signatures verified by BinAuthz must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. Additional restrictions on this field can be imposed based on which public key type is encapsulated. See the documentation on @public_key@ cases below for details.
    , id :: (Core.Maybe Core.Text)
      -- | A raw PKIX SubjectPublicKeyInfo format public key. NOTE: @id@ may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If @id@ is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
    , pkixPublicKey :: (Core.Maybe PkixPublicKey)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttestorPublicKey' with the minimum fields required to make a request.
newAttestorPublicKey 
    ::  AttestorPublicKey
newAttestorPublicKey =
  AttestorPublicKey
    { asciiArmoredPgpPublicKey = Core.Nothing
    , comment = Core.Nothing
    , id = Core.Nothing
    , pkixPublicKey = Core.Nothing
    }

instance Core.FromJSON AttestorPublicKey where
        parseJSON
          = Core.withObject "AttestorPublicKey"
              (\ o ->
                 AttestorPublicKey Core.<$>
                   (o Core..:? "asciiArmoredPgpPublicKey") Core.<*>
                     (o Core..:? "comment")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "pkixPublicKey"))

instance Core.ToJSON AttestorPublicKey where
        toJSON AttestorPublicKey{..}
          = Core.object
              (Core.catMaybes
                 [("asciiArmoredPgpPublicKey" Core..=) Core.<$>
                    asciiArmoredPgpPublicKey,
                  ("comment" Core..=) Core.<$> comment,
                  ("id" Core..=) Core.<$> id,
                  ("pkixPublicKey" Core..=) Core.<$> pkixPublicKey])


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe Expr)
      -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
      -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding 
    ::  Binding
newBinding =
  Binding
    {condition = Core.Nothing, members = Core.Nothing, role' = Core.Nothing}

instance Core.FromJSON Binding where
        parseJSON
          = Core.withObject "Binding"
              (\ o ->
                 Binding Core.<$>
                   (o Core..:? "condition") Core.<*>
                     (o Core..:? "members" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON Binding where
        toJSON Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
    {
      -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
      description :: (Core.Maybe Core.Text)
      -- | Textual representation of an expression in Common Expression Language syntax.
    , expression :: (Core.Maybe Core.Text)
      -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    , location :: (Core.Maybe Core.Text)
      -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr 
    ::  Expr
newExpr =
  Expr
    { description = Core.Nothing
    , expression = Core.Nothing
    , location = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Expr where
        parseJSON
          = Core.withObject "Expr"
              (\ o ->
                 Expr Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "expression")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Expr where
        toJSON Expr{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("location" Core..=) Core.<$> location,
                  ("title" Core..=) Core.<$> title])


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newIamPolicy' smart constructor.
data IamPolicy = IamPolicy
    {
      -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
      bindings :: (Core.Maybe [Binding])
      -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    , etag :: (Core.Maybe Core.Base64)
      -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
      -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IamPolicy' with the minimum fields required to make a request.
newIamPolicy 
    ::  IamPolicy
newIamPolicy =
  IamPolicy
    {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON IamPolicy where
        parseJSON
          = Core.withObject "IamPolicy"
              (\ o ->
                 IamPolicy Core.<$>
                   (o Core..:? "bindings" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON IamPolicy where
        toJSON IamPolicy{..}
          = Core.object
              (Core.catMaybes
                 [("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


--
-- /See:/ 'newJwt' smart constructor.
newtype Jwt = Jwt
    {
      -- | The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https:\/\/tools.ietf.org\/html\/rfc7515.html#section-3.1
      compactJwt :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Jwt' with the minimum fields required to make a request.
newJwt 
    ::  Jwt
newJwt = Jwt {compactJwt = Core.Nothing}

instance Core.FromJSON Jwt where
        parseJSON
          = Core.withObject "Jwt"
              (\ o -> Jwt Core.<$> (o Core..:? "compactJwt"))

instance Core.ToJSON Jwt where
        toJSON Jwt{..}
          = Core.object
              (Core.catMaybes
                 [("compactJwt" Core..=) Core.<$> compactJwt])


-- | Response message for BinauthzManagementService.ListAttestors.
--
-- /See:/ 'newListAttestorsResponse' smart constructor.
data ListAttestorsResponse = ListAttestorsResponse
    {
      -- | The list of attestors.
      attestors :: (Core.Maybe [Attestor])
      -- | A token to retrieve the next page of results. Pass this value in the ListAttestorsRequest.page_token field in the subsequent call to the @ListAttestors@ method to retrieve the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAttestorsResponse' with the minimum fields required to make a request.
newListAttestorsResponse 
    ::  ListAttestorsResponse
newListAttestorsResponse =
  ListAttestorsResponse {attestors = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAttestorsResponse where
        parseJSON
          = Core.withObject "ListAttestorsResponse"
              (\ o ->
                 ListAttestorsResponse Core.<$>
                   (o Core..:? "attestors" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAttestorsResponse where
        toJSON ListAttestorsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("attestors" Core..=) Core.<$> attestors,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A public key in the PkixPublicKey format (see https:\/\/tools.ietf.org\/html\/rfc5280#section-4.1.2.7 for details). Public keys of this type are typically textually encoded using the PEM format.
--
-- /See:/ 'newPkixPublicKey' smart constructor.
data PkixPublicKey = PkixPublicKey
    {
      -- | A PEM-encoded public key, as described in https:\/\/tools.ietf.org\/html\/rfc7468#section-13
      publicKeyPem :: (Core.Maybe Core.Text)
      -- | The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in @public_key_pem@ (i.e. this algorithm must match that of the public key).
    , signatureAlgorithm :: (Core.Maybe PkixPublicKey_SignatureAlgorithm)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PkixPublicKey' with the minimum fields required to make a request.
newPkixPublicKey 
    ::  PkixPublicKey
newPkixPublicKey =
  PkixPublicKey {publicKeyPem = Core.Nothing, signatureAlgorithm = Core.Nothing}

instance Core.FromJSON PkixPublicKey where
        parseJSON
          = Core.withObject "PkixPublicKey"
              (\ o ->
                 PkixPublicKey Core.<$>
                   (o Core..:? "publicKeyPem") Core.<*>
                     (o Core..:? "signatureAlgorithm"))

instance Core.ToJSON PkixPublicKey where
        toJSON PkixPublicKey{..}
          = Core.object
              (Core.catMaybes
                 [("publicKeyPem" Core..=) Core.<$> publicKeyPem,
                  ("signatureAlgorithm" Core..=) Core.<$>
                    signatureAlgorithm])


-- | A policy for container image binary authorization.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
    {
      -- | Optional. Admission policy allowlisting. A matching admission request will always be permitted. This feature is typically used to exclude Google or third-party infrastructure images from Binary Authorization policies.
      admissionWhitelistPatterns :: (Core.Maybe [AdmissionWhitelistPattern])
      -- | Optional. Per-cluster admission rules. Cluster spec format: @location.clusterId@. There can be at most one admission rule per cluster spec. A @location@ is either a compute zone (e.g. us-central1-a) or a region (e.g. us-central1). For @clusterId@ syntax restrictions see https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.zones.clusters.
    , clusterAdmissionRules :: (Core.Maybe Policy_ClusterAdmissionRules)
      -- | Required. Default admission rule for a cluster without a per-cluster, per- kubernetes-service-account, or per-istio-service-identity admission rule.
    , defaultAdmissionRule :: (Core.Maybe AdmissionRule)
      -- | Optional. A descriptive comment.
    , description :: (Core.Maybe Core.Text)
      -- | Optional. Used to prevent updating the policy when another request has updated it since it was retrieved.
    , etag :: (Core.Maybe Core.Text)
      -- | Optional. Controls the evaluation of a Google-maintained global admission policy for common system-level images. Images not covered by the global policy will be subject to the project admission policy. This setting has no effect when specified inside a global admission policy.
    , globalPolicyEvaluationMode :: (Core.Maybe Policy_GlobalPolicyEvaluationMode)
      -- | Optional. Per-istio-service-identity admission rules. Istio service identity spec format: @spiffe:\/\/\/ns\/\/sa\/@ or @\/ns\/\/sa\/@ e.g. @spiffe:\/\/example.com\/ns\/test-ns\/sa\/default@
    , istioServiceIdentityAdmissionRules :: (Core.Maybe Policy_IstioServiceIdentityAdmissionRules)
      -- | Optional. Per-kubernetes-namespace admission rules. K8s namespace spec format: @[a-z.-]+@, e.g. @some-namespace@
    , kubernetesNamespaceAdmissionRules :: (Core.Maybe Policy_KubernetesNamespaceAdmissionRules)
      -- | Optional. Per-kubernetes-service-account admission rules. Service account spec format: @namespace:serviceaccount@. e.g. @test-ns:default@
    , kubernetesServiceAccountAdmissionRules :: (Core.Maybe Policy_KubernetesServiceAccountAdmissionRules)
      -- | Output only. The resource name, in the format @projects\/*\/policy@. There is at most one policy per project.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Time when the policy was last updated.
    , updateTime :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy 
    ::  Policy
newPolicy =
  Policy
    { admissionWhitelistPatterns = Core.Nothing
    , clusterAdmissionRules = Core.Nothing
    , defaultAdmissionRule = Core.Nothing
    , description = Core.Nothing
    , etag = Core.Nothing
    , globalPolicyEvaluationMode = Core.Nothing
    , istioServiceIdentityAdmissionRules = Core.Nothing
    , kubernetesNamespaceAdmissionRules = Core.Nothing
    , kubernetesServiceAccountAdmissionRules = Core.Nothing
    , name = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Policy where
        parseJSON
          = Core.withObject "Policy"
              (\ o ->
                 Policy Core.<$>
                   (o Core..:? "admissionWhitelistPatterns" Core..!=
                      Core.mempty)
                     Core.<*> (o Core..:? "clusterAdmissionRules")
                     Core.<*> (o Core..:? "defaultAdmissionRule")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "globalPolicyEvaluationMode")
                     Core.<*>
                     (o Core..:? "istioServiceIdentityAdmissionRules")
                     Core.<*>
                     (o Core..:? "kubernetesNamespaceAdmissionRules")
                     Core.<*>
                     (o Core..:? "kubernetesServiceAccountAdmissionRules")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Policy where
        toJSON Policy{..}
          = Core.object
              (Core.catMaybes
                 [("admissionWhitelistPatterns" Core..=) Core.<$>
                    admissionWhitelistPatterns,
                  ("clusterAdmissionRules" Core..=) Core.<$>
                    clusterAdmissionRules,
                  ("defaultAdmissionRule" Core..=) Core.<$>
                    defaultAdmissionRule,
                  ("description" Core..=) Core.<$> description,
                  ("etag" Core..=) Core.<$> etag,
                  ("globalPolicyEvaluationMode" Core..=) Core.<$>
                    globalPolicyEvaluationMode,
                  ("istioServiceIdentityAdmissionRules" Core..=)
                    Core.<$> istioServiceIdentityAdmissionRules,
                  ("kubernetesNamespaceAdmissionRules" Core..=)
                    Core.<$> kubernetesNamespaceAdmissionRules,
                  ("kubernetesServiceAccountAdmissionRules" Core..=)
                    Core.<$> kubernetesServiceAccountAdmissionRules,
                  ("name" Core..=) Core.<$> name,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Optional. Per-cluster admission rules. Cluster spec format: @location.clusterId@. There can be at most one admission rule per cluster spec. A @location@ is either a compute zone (e.g. us-central1-a) or a region (e.g. us-central1). For @clusterId@ syntax restrictions see https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.zones.clusters.
--
-- /See:/ 'newPolicy_ClusterAdmissionRules' smart constructor.
newtype Policy_ClusterAdmissionRules = Policy_ClusterAdmissionRules
    {
      -- | 
      addtional :: (Core.HashMap Core.Text AdmissionRule)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_ClusterAdmissionRules' with the minimum fields required to make a request.
newPolicy_ClusterAdmissionRules 
    ::  Core.HashMap Core.Text AdmissionRule
       -- ^  See 'addtional'.
    -> Policy_ClusterAdmissionRules
newPolicy_ClusterAdmissionRules addtional =
  Policy_ClusterAdmissionRules {addtional = addtional}

instance Core.FromJSON Policy_ClusterAdmissionRules
         where
        parseJSON
          = Core.withObject "Policy_ClusterAdmissionRules"
              (\ o ->
                 Policy_ClusterAdmissionRules Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Policy_ClusterAdmissionRules
         where
        toJSON Policy_ClusterAdmissionRules{..}
          = Core.toJSON addtional


-- | Optional. Per-istio-service-identity admission rules. Istio service identity spec format: @spiffe:\/\/\/ns\/\/sa\/@ or @\/ns\/\/sa\/@ e.g. @spiffe:\/\/example.com\/ns\/test-ns\/sa\/default@
--
-- /See:/ 'newPolicy_IstioServiceIdentityAdmissionRules' smart constructor.
newtype Policy_IstioServiceIdentityAdmissionRules = Policy_IstioServiceIdentityAdmissionRules
    {
      -- | 
      addtional :: (Core.HashMap Core.Text AdmissionRule)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_IstioServiceIdentityAdmissionRules' with the minimum fields required to make a request.
newPolicy_IstioServiceIdentityAdmissionRules 
    ::  Core.HashMap Core.Text AdmissionRule
       -- ^  See 'addtional'.
    -> Policy_IstioServiceIdentityAdmissionRules
newPolicy_IstioServiceIdentityAdmissionRules addtional =
  Policy_IstioServiceIdentityAdmissionRules {addtional = addtional}

instance Core.FromJSON
           Policy_IstioServiceIdentityAdmissionRules
         where
        parseJSON
          = Core.withObject
              "Policy_IstioServiceIdentityAdmissionRules"
              (\ o ->
                 Policy_IstioServiceIdentityAdmissionRules Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           Policy_IstioServiceIdentityAdmissionRules
         where
        toJSON Policy_IstioServiceIdentityAdmissionRules{..}
          = Core.toJSON addtional


-- | Optional. Per-kubernetes-namespace admission rules. K8s namespace spec format: @[a-z.-]+@, e.g. @some-namespace@
--
-- /See:/ 'newPolicy_KubernetesNamespaceAdmissionRules' smart constructor.
newtype Policy_KubernetesNamespaceAdmissionRules = Policy_KubernetesNamespaceAdmissionRules
    {
      -- | 
      addtional :: (Core.HashMap Core.Text AdmissionRule)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_KubernetesNamespaceAdmissionRules' with the minimum fields required to make a request.
newPolicy_KubernetesNamespaceAdmissionRules 
    ::  Core.HashMap Core.Text AdmissionRule
       -- ^  See 'addtional'.
    -> Policy_KubernetesNamespaceAdmissionRules
newPolicy_KubernetesNamespaceAdmissionRules addtional =
  Policy_KubernetesNamespaceAdmissionRules {addtional = addtional}

instance Core.FromJSON
           Policy_KubernetesNamespaceAdmissionRules
         where
        parseJSON
          = Core.withObject
              "Policy_KubernetesNamespaceAdmissionRules"
              (\ o ->
                 Policy_KubernetesNamespaceAdmissionRules Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           Policy_KubernetesNamespaceAdmissionRules
         where
        toJSON Policy_KubernetesNamespaceAdmissionRules{..}
          = Core.toJSON addtional


-- | Optional. Per-kubernetes-service-account admission rules. Service account spec format: @namespace:serviceaccount@. e.g. @test-ns:default@
--
-- /See:/ 'newPolicy_KubernetesServiceAccountAdmissionRules' smart constructor.
newtype Policy_KubernetesServiceAccountAdmissionRules = Policy_KubernetesServiceAccountAdmissionRules
    {
      -- | 
      addtional :: (Core.HashMap Core.Text AdmissionRule)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_KubernetesServiceAccountAdmissionRules' with the minimum fields required to make a request.
newPolicy_KubernetesServiceAccountAdmissionRules 
    ::  Core.HashMap Core.Text AdmissionRule
       -- ^  See 'addtional'.
    -> Policy_KubernetesServiceAccountAdmissionRules
newPolicy_KubernetesServiceAccountAdmissionRules addtional =
  Policy_KubernetesServiceAccountAdmissionRules {addtional = addtional}

instance Core.FromJSON
           Policy_KubernetesServiceAccountAdmissionRules
         where
        parseJSON
          = Core.withObject
              "Policy_KubernetesServiceAccountAdmissionRules"
              (\ o ->
                 Policy_KubernetesServiceAccountAdmissionRules
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           Policy_KubernetesServiceAccountAdmissionRules
         where
        toJSON
          Policy_KubernetesServiceAccountAdmissionRules{..}
          = Core.toJSON addtional


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
      policy :: (Core.Maybe IamPolicy)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest 
    ::  SetIamPolicyRequest
newSetIamPolicyRequest = SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
        parseJSON
          = Core.withObject "SetIamPolicyRequest"
              (\ o ->
                 SetIamPolicyRequest Core.<$> (o Core..:? "policy"))

instance Core.ToJSON SetIamPolicyRequest where
        toJSON SetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes [("policy" Core..=) Core.<$> policy])


-- | Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to the trust anchors defined in policy (e.g. a Kritis policy). Typically this means that the verifier has been configured with a map from @public_key_id@ to public key material (and any required parameters, e.g. signing algorithm). In particular, verification implementations MUST NOT treat the signature @public_key_id@ as anything more than a key lookup hint. The @public_key_id@ DOES NOT validate or authenticate a public key; it only provides a mechanism for quickly selecting a public key ALREADY CONFIGURED on the verifier through a trusted channel. Verification implementations MUST reject signatures in any of the following circumstances: * The @public_key_id@ is not recognized by the verifier. * The public key that @public_key_id@ refers to does not verify the signature with respect to the payload. The @signature@ contents SHOULD NOT be \"attached\" (where the payload is included with the serialized @signature@ bytes). Verifiers MUST
-- ignore any \"attached\" payload and only verify signatures with respect to explicitly provided payload (e.g. a @payload@ field on the proto message that holds this Signature, or the canonical serialization of the proto message that holds this signature).
--
-- /See:/ 'newSignature' smart constructor.
data Signature = Signature
    {
      -- | The identifier for the public key that verifies this signature. * The @public_key_id@ is required. * The @public_key_id@ SHOULD be an RFC3986 conformant URI. * When possible, the @public_key_id@ SHOULD be an immutable reference, such as a cryptographic digest. Examples of valid @public_key_id@s: OpenPGP V4 public key fingerprint: * \"openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA\" See https:\/\/www.iana.org\/assignments\/uri-schemes\/prov\/openpgp4fpr for more details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER serialization): * \"ni:\/\/\/sha-256;cD9o9Cq6LG3jD0iKXqEi/vdjJGecm/iXkbqVoScViaU\" * \"nih:\/\/\/sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5\"
      publicKeyId :: (Core.Maybe Core.Text)
      -- | The content of the signature, an opaque bytestring. The payload that this signature verifies MUST be unambiguously provided with the Signature during verification. A wrapper message might provide the payload explicitly. Alternatively, a message might have a canonical serialization that can always be unambiguously computed to derive the payload.
    , signature :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Signature' with the minimum fields required to make a request.
newSignature 
    ::  Signature
newSignature = Signature {publicKeyId = Core.Nothing, signature = Core.Nothing}

instance Core.FromJSON Signature where
        parseJSON
          = Core.withObject "Signature"
              (\ o ->
                 Signature Core.<$>
                   (o Core..:? "publicKeyId") Core.<*>
                     (o Core..:? "signature"))

instance Core.ToJSON Signature where
        toJSON Signature{..}
          = Core.object
              (Core.catMaybes
                 [("publicKeyId" Core..=) Core.<$> publicKeyId,
                  ("signature" Core..=) Core.<$> signature])


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest 
    ::  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest
         where
        parseJSON
          = Core.withObject "TestIamPermissionsRequest"
              (\ o ->
                 TestIamPermissionsRequest Core.<$>
                   (o Core..:? "permissions" Core..!= Core.mempty))

instance Core.ToJSON TestIamPermissionsRequest where
        toJSON TestIamPermissionsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
    {
      -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse 
    ::  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse
         where
        parseJSON
          = Core.withObject "TestIamPermissionsResponse"
              (\ o ->
                 TestIamPermissionsResponse Core.<$>
                   (o Core..:? "permissions" Core..!= Core.mempty))

instance Core.ToJSON TestIamPermissionsResponse where
        toJSON TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | An user owned Grafeas note references a Grafeas Attestation.Authority Note created by the user.
--
-- /See:/ 'newUserOwnedGrafeasNote' smart constructor.
data UserOwnedGrafeasNote = UserOwnedGrafeasNote
    {
      -- | Output only. This field will contain the service account email address that this Attestor will use as the principal when querying Container Analysis. Attestor administrators must grant this service account the IAM role needed to read attestations from the note_reference in Container Analysis (@containeranalysis.notes.occurrences.viewer@). This email address is fixed for the lifetime of the Attestor, but callers should not make any other assumptions about the service account email; future versions may use an email based on a different naming pattern.
      delegationServiceAccountEmail :: (Core.Maybe Core.Text)
      -- | Required. The Grafeas resource name of a Attestation.Authority Note, created by the user, in the format: @projects\/*\/notes\/*@. This field may not be updated. An attestation by this attestor is stored as a Grafeas Attestation.Authority Occurrence that names a container image and that links to this Note. Grafeas is an external dependency.
    , noteReference :: (Core.Maybe Core.Text)
      -- | Optional. Public keys that verify attestations signed by this attestor. This field may be updated. If this field is non-empty, one of the specified public keys must verify that an attestation was signed by this attestor for the image specified in the admission request. If this field is empty, this attestor always returns that no valid attestations exist.
    , publicKeys :: (Core.Maybe [AttestorPublicKey])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserOwnedGrafeasNote' with the minimum fields required to make a request.
newUserOwnedGrafeasNote 
    ::  UserOwnedGrafeasNote
newUserOwnedGrafeasNote =
  UserOwnedGrafeasNote
    { delegationServiceAccountEmail = Core.Nothing
    , noteReference = Core.Nothing
    , publicKeys = Core.Nothing
    }

instance Core.FromJSON UserOwnedGrafeasNote where
        parseJSON
          = Core.withObject "UserOwnedGrafeasNote"
              (\ o ->
                 UserOwnedGrafeasNote Core.<$>
                   (o Core..:? "delegationServiceAccountEmail") Core.<*>
                     (o Core..:? "noteReference")
                     Core.<*>
                     (o Core..:? "publicKeys" Core..!= Core.mempty))

instance Core.ToJSON UserOwnedGrafeasNote where
        toJSON UserOwnedGrafeasNote{..}
          = Core.object
              (Core.catMaybes
                 [("delegationServiceAccountEmail" Core..=) Core.<$>
                    delegationServiceAccountEmail,
                  ("noteReference" Core..=) Core.<$> noteReference,
                  ("publicKeys" Core..=) Core.<$> publicKeys])


-- | Request message for ValidationHelperV1.ValidateAttestationOccurrence.
--
-- /See:/ 'newValidateAttestationOccurrenceRequest' smart constructor.
data ValidateAttestationOccurrenceRequest = ValidateAttestationOccurrenceRequest
    {
      -- | Required. An AttestationOccurrence to be checked that it can be verified by the Attestor. It does not have to be an existing entity in Container Analysis. It must otherwise be a valid AttestationOccurrence.
      attestation :: (Core.Maybe AttestationOccurrence)
      -- | Required. The resource name of the Note to which the containing Occurrence is associated.
    , occurrenceNote :: (Core.Maybe Core.Text)
      -- | Required. The URI of the artifact (e.g. container image) that is the subject of the containing Occurrence.
    , occurrenceResourceUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateAttestationOccurrenceRequest' with the minimum fields required to make a request.
newValidateAttestationOccurrenceRequest 
    ::  ValidateAttestationOccurrenceRequest
newValidateAttestationOccurrenceRequest =
  ValidateAttestationOccurrenceRequest
    { attestation = Core.Nothing
    , occurrenceNote = Core.Nothing
    , occurrenceResourceUri = Core.Nothing
    }

instance Core.FromJSON
           ValidateAttestationOccurrenceRequest
         where
        parseJSON
          = Core.withObject
              "ValidateAttestationOccurrenceRequest"
              (\ o ->
                 ValidateAttestationOccurrenceRequest Core.<$>
                   (o Core..:? "attestation") Core.<*>
                     (o Core..:? "occurrenceNote")
                     Core.<*> (o Core..:? "occurrenceResourceUri"))

instance Core.ToJSON
           ValidateAttestationOccurrenceRequest
         where
        toJSON ValidateAttestationOccurrenceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("attestation" Core..=) Core.<$> attestation,
                  ("occurrenceNote" Core..=) Core.<$> occurrenceNote,
                  ("occurrenceResourceUri" Core..=) Core.<$>
                    occurrenceResourceUri])


-- | Response message for ValidationHelperV1.ValidateAttestationOccurrence.
--
-- /See:/ 'newValidateAttestationOccurrenceResponse' smart constructor.
data ValidateAttestationOccurrenceResponse = ValidateAttestationOccurrenceResponse
    {
      -- | The reason for denial if the Attestation couldn\'t be validated.
      denialReason :: (Core.Maybe Core.Text)
      -- | The result of the Attestation validation.
    , result :: (Core.Maybe ValidateAttestationOccurrenceResponse_Result)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateAttestationOccurrenceResponse' with the minimum fields required to make a request.
newValidateAttestationOccurrenceResponse 
    ::  ValidateAttestationOccurrenceResponse
newValidateAttestationOccurrenceResponse =
  ValidateAttestationOccurrenceResponse
    {denialReason = Core.Nothing, result = Core.Nothing}

instance Core.FromJSON
           ValidateAttestationOccurrenceResponse
         where
        parseJSON
          = Core.withObject
              "ValidateAttestationOccurrenceResponse"
              (\ o ->
                 ValidateAttestationOccurrenceResponse Core.<$>
                   (o Core..:? "denialReason") Core.<*>
                     (o Core..:? "result"))

instance Core.ToJSON
           ValidateAttestationOccurrenceResponse
         where
        toJSON ValidateAttestationOccurrenceResponse{..}
          = Core.object
              (Core.catMaybes
                 [("denialReason" Core..=) Core.<$> denialReason,
                  ("result" Core..=) Core.<$> result])

