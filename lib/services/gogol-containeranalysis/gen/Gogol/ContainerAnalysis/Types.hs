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
-- Module      : Gogol.ContainerAnalysis.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ContainerAnalysis.Types
    (
    -- * Configuration
      containerAnalysisService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AliasContext
    , AliasContext (..)
    , newAliasContext

    -- ** AliasContext_Kind
    , AliasContext_Kind (..)

    -- ** Artifact
    , Artifact (..)
    , newArtifact

    -- ** AttestationNote
    , AttestationNote (..)
    , newAttestationNote

    -- ** AttestationOccurrence
    , AttestationOccurrence (..)
    , newAttestationOccurrence

    -- ** BatchCreateNotesRequest
    , BatchCreateNotesRequest (..)
    , newBatchCreateNotesRequest

    -- ** BatchCreateNotesRequest_Notes
    , BatchCreateNotesRequest_Notes (..)
    , newBatchCreateNotesRequest_Notes

    -- ** BatchCreateNotesResponse
    , BatchCreateNotesResponse (..)
    , newBatchCreateNotesResponse

    -- ** BatchCreateOccurrencesRequest
    , BatchCreateOccurrencesRequest (..)
    , newBatchCreateOccurrencesRequest

    -- ** BatchCreateOccurrencesResponse
    , BatchCreateOccurrencesResponse (..)
    , newBatchCreateOccurrencesResponse

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** BuildNote
    , BuildNote (..)
    , newBuildNote

    -- ** BuildOccurrence
    , BuildOccurrence (..)
    , newBuildOccurrence

    -- ** BuildProvenance
    , BuildProvenance (..)
    , newBuildProvenance

    -- ** BuildProvenance_BuildOptions
    , BuildProvenance_BuildOptions (..)
    , newBuildProvenance_BuildOptions

    -- ** BuilderConfig
    , BuilderConfig (..)
    , newBuilderConfig

    -- ** CVSS
    , CVSS (..)
    , newCVSS

    -- ** CVSS_AttackComplexity
    , CVSS_AttackComplexity (..)

    -- ** CVSS_AttackVector
    , CVSS_AttackVector (..)

    -- ** CVSS_Authentication
    , CVSS_Authentication (..)

    -- ** CVSS_AvailabilityImpact
    , CVSS_AvailabilityImpact (..)

    -- ** CVSS_ConfidentialityImpact
    , CVSS_ConfidentialityImpact (..)

    -- ** CVSS_IntegrityImpact
    , CVSS_IntegrityImpact (..)

    -- ** CVSS_PrivilegesRequired
    , CVSS_PrivilegesRequired (..)

    -- ** CVSS_Scope
    , CVSS_Scope (..)

    -- ** CVSS_UserInteraction
    , CVSS_UserInteraction (..)

    -- ** CVSSv3
    , CVSSv3 (..)
    , newCVSSv3

    -- ** CVSSv3_AttackComplexity
    , CVSSv3_AttackComplexity (..)

    -- ** CVSSv3_AttackVector
    , CVSSv3_AttackVector (..)

    -- ** CVSSv3_AvailabilityImpact
    , CVSSv3_AvailabilityImpact (..)

    -- ** CVSSv3_ConfidentialityImpact
    , CVSSv3_ConfidentialityImpact (..)

    -- ** CVSSv3_IntegrityImpact
    , CVSSv3_IntegrityImpact (..)

    -- ** CVSSv3_PrivilegesRequired
    , CVSSv3_PrivilegesRequired (..)

    -- ** CVSSv3_Scope
    , CVSSv3_Scope (..)

    -- ** CVSSv3_UserInteraction
    , CVSSv3_UserInteraction (..)

    -- ** Category
    , Category (..)
    , newCategory

    -- ** CisBenchmark
    , CisBenchmark (..)
    , newCisBenchmark

    -- ** CisBenchmark_Severity
    , CisBenchmark_Severity (..)

    -- ** CloudRepoSourceContext
    , CloudRepoSourceContext (..)
    , newCloudRepoSourceContext

    -- ** Command
    , Command (..)
    , newCommand

    -- ** Completeness
    , Completeness (..)
    , newCompleteness

    -- ** ComplianceNote
    , ComplianceNote (..)
    , newComplianceNote

    -- ** ComplianceOccurrence
    , ComplianceOccurrence (..)
    , newComplianceOccurrence

    -- ** ComplianceVersion
    , ComplianceVersion (..)
    , newComplianceVersion

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
    , ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
    , ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision
    , ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
    , ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Build
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Build (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Build

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
    , ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
    , ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Hash (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Hash

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type (..)

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
    , ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
    , ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
    , ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
    , ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Results
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Results (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Results

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Secret (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Secret

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
    , ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Secrets

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Source
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Source (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Source

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
    , ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    , ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
    , ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
    , ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
    , ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
    , ContaineranalysisGoogleDevtoolsCloudbuildV1Volume (..)
    , newContaineranalysisGoogleDevtoolsCloudbuildV1Volume

    -- ** DSSEAttestationNote
    , DSSEAttestationNote (..)
    , newDSSEAttestationNote

    -- ** DSSEAttestationOccurrence
    , DSSEAttestationOccurrence (..)
    , newDSSEAttestationOccurrence

    -- ** DSSEHint
    , DSSEHint (..)
    , newDSSEHint

    -- ** DeploymentNote
    , DeploymentNote (..)
    , newDeploymentNote

    -- ** DeploymentOccurrence
    , DeploymentOccurrence (..)
    , newDeploymentOccurrence

    -- ** DeploymentOccurrence_Platform
    , DeploymentOccurrence_Platform (..)

    -- ** Detail
    , Detail (..)
    , newDetail

    -- ** DiscoveryNote
    , DiscoveryNote (..)
    , newDiscoveryNote

    -- ** DiscoveryNote_AnalysisKind
    , DiscoveryNote_AnalysisKind (..)

    -- ** DiscoveryOccurrence
    , DiscoveryOccurrence (..)
    , newDiscoveryOccurrence

    -- ** DiscoveryOccurrence_AnalysisStatus
    , DiscoveryOccurrence_AnalysisStatus (..)

    -- ** DiscoveryOccurrence_ContinuousAnalysis
    , DiscoveryOccurrence_ContinuousAnalysis (..)

    -- ** Distribution
    , Distribution (..)
    , newDistribution

    -- ** Distribution_Architecture
    , Distribution_Architecture (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Envelope
    , Envelope (..)
    , newEnvelope

    -- ** EnvelopeSignature
    , EnvelopeSignature (..)
    , newEnvelopeSignature

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** FileHashes
    , FileHashes (..)
    , newFileHashes

    -- ** Fingerprint
    , Fingerprint (..)
    , newFingerprint

    -- ** FixableTotalByDigest
    , FixableTotalByDigest (..)
    , newFixableTotalByDigest

    -- ** FixableTotalByDigest_Severity
    , FixableTotalByDigest_Severity (..)

    -- ** GerritSourceContext
    , GerritSourceContext (..)
    , newGerritSourceContext

    -- ** GetIamPolicyRequest
    , GetIamPolicyRequest (..)
    , newGetIamPolicyRequest

    -- ** GetPolicyOptions
    , GetPolicyOptions (..)
    , newGetPolicyOptions

    -- ** GitSourceContext
    , GitSourceContext (..)
    , newGitSourceContext

    -- ** GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    , GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata (..)
    , newGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata

    -- ** Hash
    , Hash (..)
    , newHash

    -- ** Hint
    , Hint (..)
    , newHint

    -- ** Identity
    , Identity (..)
    , newIdentity

    -- ** ImageNote
    , ImageNote (..)
    , newImageNote

    -- ** ImageOccurrence
    , ImageOccurrence (..)
    , newImageOccurrence

    -- ** InTotoProvenance
    , InTotoProvenance (..)
    , newInTotoProvenance

    -- ** InTotoStatement
    , InTotoStatement (..)
    , newInTotoStatement

    -- ** Jwt
    , Jwt (..)
    , newJwt

    -- ** KnowledgeBase
    , KnowledgeBase (..)
    , newKnowledgeBase

    -- ** Layer
    , Layer (..)
    , newLayer

    -- ** ListNoteOccurrencesResponse
    , ListNoteOccurrencesResponse (..)
    , newListNoteOccurrencesResponse

    -- ** ListNotesResponse
    , ListNotesResponse (..)
    , newListNotesResponse

    -- ** ListOccurrencesResponse
    , ListOccurrencesResponse (..)
    , newListOccurrencesResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Material
    , Material (..)
    , newMaterial

    -- ** Material_Digest
    , Material_Digest (..)
    , newMaterial_Digest

    -- ** Metadata
    , Metadata (..)
    , newMetadata

    -- ** NonCompliantFile
    , NonCompliantFile (..)
    , newNonCompliantFile

    -- ** Note
    , Note (..)
    , newNote

    -- ** Note_Kind
    , Note_Kind (..)

    -- ** Occurrence
    , Occurrence (..)
    , newOccurrence

    -- ** Occurrence_Kind
    , Occurrence_Kind (..)

    -- ** PackageIssue
    , PackageIssue (..)
    , newPackageIssue

    -- ** PackageIssue_EffectiveSeverity
    , PackageIssue_EffectiveSeverity (..)

    -- ** PackageNote
    , PackageNote (..)
    , newPackageNote

    -- ** PackageOccurrence
    , PackageOccurrence (..)
    , newPackageOccurrence

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** ProjectRepoId
    , ProjectRepoId (..)
    , newProjectRepoId

    -- ** Recipe
    , Recipe (..)
    , newRecipe

    -- ** Recipe_ArgumentsItem
    , Recipe_ArgumentsItem (..)
    , newRecipe_ArgumentsItem

    -- ** Recipe_EnvironmentItem
    , Recipe_EnvironmentItem (..)
    , newRecipe_EnvironmentItem

    -- ** RelatedUrl
    , RelatedUrl (..)
    , newRelatedUrl

    -- ** RepoId
    , RepoId (..)
    , newRepoId

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Signature
    , Signature (..)
    , newSignature

    -- ** SlsaBuilder
    , SlsaBuilder (..)
    , newSlsaBuilder

    -- ** SlsaCompleteness
    , SlsaCompleteness (..)
    , newSlsaCompleteness

    -- ** SlsaMetadata
    , SlsaMetadata (..)
    , newSlsaMetadata

    -- ** SlsaProvenance
    , SlsaProvenance (..)
    , newSlsaProvenance

    -- ** SlsaRecipe
    , SlsaRecipe (..)
    , newSlsaRecipe

    -- ** SlsaRecipe_Arguments
    , SlsaRecipe_Arguments (..)
    , newSlsaRecipe_Arguments

    -- ** SlsaRecipe_Environment
    , SlsaRecipe_Environment (..)
    , newSlsaRecipe_Environment

    -- ** Source
    , Source (..)
    , newSource

    -- ** Source_FileHashes
    , Source_FileHashes (..)
    , newSource_FileHashes

    -- ** SourceContext
    , SourceContext (..)
    , newSourceContext

    -- ** SourceContext_Labels
    , SourceContext_Labels (..)
    , newSourceContext_Labels

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** Subject
    , Subject (..)
    , newSubject

    -- ** Subject_Digest
    , Subject_Digest (..)
    , newSubject_Digest

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** UpgradeDistribution
    , UpgradeDistribution (..)
    , newUpgradeDistribution

    -- ** UpgradeNote
    , UpgradeNote (..)
    , newUpgradeNote

    -- ** UpgradeOccurrence
    , UpgradeOccurrence (..)
    , newUpgradeOccurrence

    -- ** Version
    , Version (..)
    , newVersion

    -- ** Version_Kind
    , Version_Kind (..)

    -- ** VulnerabilityNote
    , VulnerabilityNote (..)
    , newVulnerabilityNote

    -- ** VulnerabilityNote_Severity
    , VulnerabilityNote_Severity (..)

    -- ** VulnerabilityOccurrence
    , VulnerabilityOccurrence (..)
    , newVulnerabilityOccurrence

    -- ** VulnerabilityOccurrence_EffectiveSeverity
    , VulnerabilityOccurrence_EffectiveSeverity (..)

    -- ** VulnerabilityOccurrence_Severity
    , VulnerabilityOccurrence_Severity (..)

    -- ** VulnerabilityOccurrencesSummary
    , VulnerabilityOccurrencesSummary (..)
    , newVulnerabilityOccurrencesSummary

    -- ** WindowsDetail
    , WindowsDetail (..)
    , newWindowsDetail

    -- ** WindowsUpdate
    , WindowsUpdate (..)
    , newWindowsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerAnalysis.Internal.Product
import Gogol.ContainerAnalysis.Internal.Sum

-- | Default request referring to version @v1@ of the Container Analysis API. This contains the host and root path used as a starting point for constructing service requests.
containerAnalysisService :: Core.ServiceConfig
containerAnalysisService
  = Core.defaultService
      (Core.ServiceId "containeranalysis:v1")
      "containeranalysis.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
