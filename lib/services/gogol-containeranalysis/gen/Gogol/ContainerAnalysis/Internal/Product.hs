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
-- Module      : Gogol.ContainerAnalysis.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ContainerAnalysis.Internal.Product
  (

    -- * AliasContext
    AliasContext (..),
    newAliasContext,

    -- * AnalysisCompleted
    AnalysisCompleted (..),
    newAnalysisCompleted,

    -- * Artifact
    Artifact (..),
    newArtifact,

    -- * Assessment
    Assessment (..),
    newAssessment,

    -- * AttestationNote
    AttestationNote (..),
    newAttestationNote,

    -- * AttestationOccurrence
    AttestationOccurrence (..),
    newAttestationOccurrence,

    -- * BatchCreateNotesRequest
    BatchCreateNotesRequest (..),
    newBatchCreateNotesRequest,

    -- * BatchCreateNotesRequest_Notes
    BatchCreateNotesRequest_Notes (..),
    newBatchCreateNotesRequest_Notes,

    -- * BatchCreateNotesResponse
    BatchCreateNotesResponse (..),
    newBatchCreateNotesResponse,

    -- * BatchCreateOccurrencesRequest
    BatchCreateOccurrencesRequest (..),
    newBatchCreateOccurrencesRequest,

    -- * BatchCreateOccurrencesResponse
    BatchCreateOccurrencesResponse (..),
    newBatchCreateOccurrencesResponse,

    -- * Binding
    Binding (..),
    newBinding,

    -- * BuildDefinition
    BuildDefinition (..),
    newBuildDefinition,

    -- * BuildDefinition_ExternalParameters
    BuildDefinition_ExternalParameters (..),
    newBuildDefinition_ExternalParameters,

    -- * BuildDefinition_InternalParameters
    BuildDefinition_InternalParameters (..),
    newBuildDefinition_InternalParameters,

    -- * BuildMetadata
    BuildMetadata (..),
    newBuildMetadata,

    -- * BuildNote
    BuildNote (..),
    newBuildNote,

    -- * BuildOccurrence
    BuildOccurrence (..),
    newBuildOccurrence,

    -- * BuildProvenance
    BuildProvenance (..),
    newBuildProvenance,

    -- * BuildProvenance_BuildOptions
    BuildProvenance_BuildOptions (..),
    newBuildProvenance_BuildOptions,

    -- * BuildStep
    BuildStep (..),
    newBuildStep,

    -- * BuilderConfig
    BuilderConfig (..),
    newBuilderConfig,

    -- * CVSS
    CVSS (..),
    newCVSS,

    -- * CVSSv3
    CVSSv3 (..),
    newCVSSv3,

    -- * Category
    Category (..),
    newCategory,

    -- * CisBenchmark
    CisBenchmark (..),
    newCisBenchmark,

    -- * CloudRepoSourceContext
    CloudRepoSourceContext (..),
    newCloudRepoSourceContext,

    -- * CloudStorageLocation
    CloudStorageLocation (..),
    newCloudStorageLocation,

    -- * Command
    Command (..),
    newCommand,

    -- * Completeness
    Completeness (..),
    newCompleteness,

    -- * ComplianceNote
    ComplianceNote (..),
    newComplianceNote,

    -- * ComplianceOccurrence
    ComplianceOccurrence (..),
    newComplianceOccurrence,

    -- * ComplianceVersion
    ComplianceVersion (..),
    newComplianceVersion,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
    ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
    ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
    ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Build
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Build,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
    ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig
    ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
    ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig
    ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig
    ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
    ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1GitSource,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
    ContaineranalysisGoogleDevtoolsCloudbuildV1Hash (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Hash,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
    ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
    ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
    ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
    ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Results
    ContaineranalysisGoogleDevtoolsCloudbuildV1Results (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Results,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
    ContaineranalysisGoogleDevtoolsCloudbuildV1Secret (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Secret,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
    ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
    ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
    ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Secrets,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Source
    ContaineranalysisGoogleDevtoolsCloudbuildV1Source (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Source,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
    ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
    ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
    ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
    ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
    ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage
    ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
    ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage,

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
    ContaineranalysisGoogleDevtoolsCloudbuildV1Volume (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Volume,

    -- * DSSEAttestationNote
    DSSEAttestationNote (..),
    newDSSEAttestationNote,

    -- * DSSEAttestationOccurrence
    DSSEAttestationOccurrence (..),
    newDSSEAttestationOccurrence,

    -- * DSSEHint
    DSSEHint (..),
    newDSSEHint,

    -- * DeploymentNote
    DeploymentNote (..),
    newDeploymentNote,

    -- * DeploymentOccurrence
    DeploymentOccurrence (..),
    newDeploymentOccurrence,

    -- * Detail
    Detail (..),
    newDetail,

    -- * Digest
    Digest (..),
    newDigest,

    -- * DiscoveryNote
    DiscoveryNote (..),
    newDiscoveryNote,

    -- * DiscoveryOccurrence
    DiscoveryOccurrence (..),
    newDiscoveryOccurrence,

    -- * Distribution
    Distribution (..),
    newDistribution,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Envelope
    Envelope (..),
    newEnvelope,

    -- * EnvelopeSignature
    EnvelopeSignature (..),
    newEnvelopeSignature,

    -- * ExportSBOMRequest
    ExportSBOMRequest (..),
    newExportSBOMRequest,

    -- * ExportSBOMResponse
    ExportSBOMResponse (..),
    newExportSBOMResponse,

    -- * Expr
    Expr (..),
    newExpr,

    -- * FileHashes
    FileHashes (..),
    newFileHashes,

    -- * Fingerprint
    Fingerprint (..),
    newFingerprint,

    -- * FixableTotalByDigest
    FixableTotalByDigest (..),
    newFixableTotalByDigest,

    -- * GerritSourceContext
    GerritSourceContext (..),
    newGerritSourceContext,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * GitSourceContext
    GitSourceContext (..),
    newGitSourceContext,

    -- * GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata (..),
    newGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata,

    -- * GrafeasV1FileLocation
    GrafeasV1FileLocation (..),
    newGrafeasV1FileLocation,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
    GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
    GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
    GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest
    GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
    GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment
    GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters
    GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
    GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest
    GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest,

    -- * GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
    GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata,

    -- * Hash
    Hash (..),
    newHash,

    -- * Hint
    Hint (..),
    newHint,

    -- * Identity
    Identity (..),
    newIdentity,

    -- * ImageNote
    ImageNote (..),
    newImageNote,

    -- * ImageOccurrence
    ImageOccurrence (..),
    newImageOccurrence,

    -- * InTotoProvenance
    InTotoProvenance (..),
    newInTotoProvenance,

    -- * InTotoSlsaProvenanceV1
    InTotoSlsaProvenanceV1 (..),
    newInTotoSlsaProvenanceV1,

    -- * InTotoStatement
    InTotoStatement (..),
    newInTotoStatement,

    -- * Justification
    Justification (..),
    newJustification,

    -- * Jwt
    Jwt (..),
    newJwt,

    -- * KnowledgeBase
    KnowledgeBase (..),
    newKnowledgeBase,

    -- * Layer
    Layer (..),
    newLayer,

    -- * License
    License (..),
    newLicense,

    -- * ListNoteOccurrencesResponse
    ListNoteOccurrencesResponse (..),
    newListNoteOccurrencesResponse,

    -- * ListNotesResponse
    ListNotesResponse (..),
    newListNotesResponse,

    -- * ListOccurrencesResponse
    ListOccurrencesResponse (..),
    newListOccurrencesResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Material
    Material (..),
    newMaterial,

    -- * Material_Digest
    Material_Digest (..),
    newMaterial_Digest,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * NonCompliantFile
    NonCompliantFile (..),
    newNonCompliantFile,

    -- * Note
    Note (..),
    newNote,

    -- * Occurrence
    Occurrence (..),
    newOccurrence,

    -- * PackageIssue
    PackageIssue (..),
    newPackageIssue,

    -- * PackageNote
    PackageNote (..),
    newPackageNote,

    -- * PackageOccurrence
    PackageOccurrence (..),
    newPackageOccurrence,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Product
    Product (..),
    newProduct,

    -- * ProjectRepoId
    ProjectRepoId (..),
    newProjectRepoId,

    -- * ProvenanceBuilder
    ProvenanceBuilder (..),
    newProvenanceBuilder,

    -- * ProvenanceBuilder_Version
    ProvenanceBuilder_Version (..),
    newProvenanceBuilder_Version,

    -- * Publisher
    Publisher (..),
    newPublisher,

    -- * Recipe
    Recipe (..),
    newRecipe,

    -- * Recipe_ArgumentsItem
    Recipe_ArgumentsItem (..),
    newRecipe_ArgumentsItem,

    -- * Recipe_EnvironmentItem
    Recipe_EnvironmentItem (..),
    newRecipe_EnvironmentItem,

    -- * RelatedUrl
    RelatedUrl (..),
    newRelatedUrl,

    -- * Remediation
    Remediation (..),
    newRemediation,

    -- * RepoId
    RepoId (..),
    newRepoId,

    -- * ResourceDescriptor
    ResourceDescriptor (..),
    newResourceDescriptor,

    -- * ResourceDescriptor_Annotations
    ResourceDescriptor_Annotations (..),
    newResourceDescriptor_Annotations,

    -- * ResourceDescriptor_Digest
    ResourceDescriptor_Digest (..),
    newResourceDescriptor_Digest,

    -- * RunDetails
    RunDetails (..),
    newRunDetails,

    -- * SBOMReferenceNote
    SBOMReferenceNote (..),
    newSBOMReferenceNote,

    -- * SBOMReferenceOccurrence
    SBOMReferenceOccurrence (..),
    newSBOMReferenceOccurrence,

    -- * SBOMStatus
    SBOMStatus (..),
    newSBOMStatus,

    -- * SbomReferenceIntotoPayload
    SbomReferenceIntotoPayload (..),
    newSbomReferenceIntotoPayload,

    -- * SbomReferenceIntotoPredicate
    SbomReferenceIntotoPredicate (..),
    newSbomReferenceIntotoPredicate,

    -- * SbomReferenceIntotoPredicate_Digest
    SbomReferenceIntotoPredicate_Digest (..),
    newSbomReferenceIntotoPredicate_Digest,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Signature
    Signature (..),
    newSignature,

    -- * SlsaBuilder
    SlsaBuilder (..),
    newSlsaBuilder,

    -- * SlsaCompleteness
    SlsaCompleteness (..),
    newSlsaCompleteness,

    -- * SlsaMetadata
    SlsaMetadata (..),
    newSlsaMetadata,

    -- * SlsaProvenance
    SlsaProvenance (..),
    newSlsaProvenance,

    -- * SlsaProvenanceV1
    SlsaProvenanceV1 (..),
    newSlsaProvenanceV1,

    -- * SlsaProvenanceZeroTwo
    SlsaProvenanceZeroTwo (..),
    newSlsaProvenanceZeroTwo,

    -- * SlsaProvenanceZeroTwo_BuildConfig
    SlsaProvenanceZeroTwo_BuildConfig (..),
    newSlsaProvenanceZeroTwo_BuildConfig,

    -- * SlsaRecipe
    SlsaRecipe (..),
    newSlsaRecipe,

    -- * SlsaRecipe_Arguments
    SlsaRecipe_Arguments (..),
    newSlsaRecipe_Arguments,

    -- * SlsaRecipe_Environment
    SlsaRecipe_Environment (..),
    newSlsaRecipe_Environment,

    -- * Source
    Source (..),
    newSource,

    -- * Source_FileHashes
    Source_FileHashes (..),
    newSource_FileHashes,

    -- * SourceContext
    SourceContext (..),
    newSourceContext,

    -- * SourceContext_Labels
    SourceContext_Labels (..),
    newSourceContext_Labels,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Subject
    Subject (..),
    newSubject,

    -- * Subject_Digest
    Subject_Digest (..),
    newSubject_Digest,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TimeSpan
    TimeSpan (..),
    newTimeSpan,

    -- * UpgradeDistribution
    UpgradeDistribution (..),
    newUpgradeDistribution,

    -- * UpgradeNote
    UpgradeNote (..),
    newUpgradeNote,

    -- * UpgradeOccurrence
    UpgradeOccurrence (..),
    newUpgradeOccurrence,

    -- * Version
    Version (..),
    newVersion,

    -- * VexAssessment
    VexAssessment (..),
    newVexAssessment,

    -- * Volume
    Volume (..),
    newVolume,

    -- * VulnerabilityAssessmentNote
    VulnerabilityAssessmentNote (..),
    newVulnerabilityAssessmentNote,

    -- * VulnerabilityNote
    VulnerabilityNote (..),
    newVulnerabilityNote,

    -- * VulnerabilityOccurrence
    VulnerabilityOccurrence (..),
    newVulnerabilityOccurrence,

    -- * VulnerabilityOccurrencesSummary
    VulnerabilityOccurrencesSummary (..),
    newVulnerabilityOccurrencesSummary,

    -- * WindowsDetail
    WindowsDetail (..),
    newWindowsDetail,

    -- * WindowsUpdate
    WindowsUpdate (..),
    newWindowsUpdate,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerAnalysis.Internal.Sum

-- | An alias to a repo revision.
--
-- /See:/ 'newAliasContext' smart constructor.
data AliasContext = AliasContext
    {
      -- | The alias kind.
      kind :: (Core.Maybe AliasContext_Kind)
      -- | The alias name.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AliasContext' with the minimum fields required to make a request.
newAliasContext 
    ::  AliasContext
newAliasContext = AliasContext {kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON AliasContext where
        parseJSON
          = Core.withObject "AliasContext"
              (\ o ->
                 AliasContext Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "name"))

instance Core.ToJSON AliasContext where
        toJSON AliasContext{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name])


-- | Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.
--
-- /See:/ 'newAnalysisCompleted' smart constructor.
newtype AnalysisCompleted = AnalysisCompleted
    {
      -- | 
      analysisType :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalysisCompleted' with the minimum fields required to make a request.
newAnalysisCompleted 
    ::  AnalysisCompleted
newAnalysisCompleted = AnalysisCompleted {analysisType = Core.Nothing}

instance Core.FromJSON AnalysisCompleted where
        parseJSON
          = Core.withObject "AnalysisCompleted"
              (\ o ->
                 AnalysisCompleted Core.<$>
                   (o Core..:? "analysisType"))

instance Core.ToJSON AnalysisCompleted where
        toJSON AnalysisCompleted{..}
          = Core.object
              (Core.catMaybes
                 [("analysisType" Core..=) Core.<$> analysisType])


-- | Artifact describes a build product.
--
-- /See:/ 'newArtifact' smart constructor.
data Artifact = Artifact
    {
      -- | Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
      checksum :: (Core.Maybe Core.Text)
      -- | Artifact ID, if any; for container images, this will be a URL by digest like @gcr.io\/projectID\/imagename\@sha256:123456@.
    , id :: (Core.Maybe Core.Text)
      -- | Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to @docker push@. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
    , names :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Artifact' with the minimum fields required to make a request.
newArtifact 
    ::  Artifact
newArtifact =
  Artifact {checksum = Core.Nothing, id = Core.Nothing, names = Core.Nothing}

instance Core.FromJSON Artifact where
        parseJSON
          = Core.withObject "Artifact"
              (\ o ->
                 Artifact Core.<$>
                   (o Core..:? "checksum") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "names"))

instance Core.ToJSON Artifact where
        toJSON Artifact{..}
          = Core.object
              (Core.catMaybes
                 [("checksum" Core..=) Core.<$> checksum,
                  ("id" Core..=) Core.<$> id,
                  ("names" Core..=) Core.<$> names])


-- | Assessment provides all information that is related to a single vulnerability for this product.
--
-- /See:/ 'newAssessment' smart constructor.
data Assessment = Assessment
    {
      -- | Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
      cve :: (Core.Maybe Core.Text)
      -- | Contains information about the impact of this vulnerability, this will change with time.
    , impacts :: (Core.Maybe [Core.Text])
      -- | Justification provides the justification when the state of the assessment if NOT_AFFECTED.
    , justification :: (Core.Maybe Justification)
      -- | A detailed description of this Vex.
    , longDescription :: (Core.Maybe Core.Text)
      -- | Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
    , relatedUris :: (Core.Maybe [RelatedUrl])
      -- | Specifies details on how to handle (and presumably, fix) a vulnerability.
    , remediations :: (Core.Maybe [Remediation])
      -- | A one sentence description of this Vex.
    , shortDescription :: (Core.Maybe Core.Text)
      -- | Provides the state of this Vulnerability assessment.
    , state :: (Core.Maybe Assessment_State)
      -- | The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
    , vulnerabilityId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Assessment' with the minimum fields required to make a request.
newAssessment 
    ::  Assessment
newAssessment =
  Assessment
    { cve = Core.Nothing
    , impacts = Core.Nothing
    , justification = Core.Nothing
    , longDescription = Core.Nothing
    , relatedUris = Core.Nothing
    , remediations = Core.Nothing
    , shortDescription = Core.Nothing
    , state = Core.Nothing
    , vulnerabilityId = Core.Nothing
    }

instance Core.FromJSON Assessment where
        parseJSON
          = Core.withObject "Assessment"
              (\ o ->
                 Assessment Core.<$>
                   (o Core..:? "cve") Core.<*> (o Core..:? "impacts")
                     Core.<*> (o Core..:? "justification")
                     Core.<*> (o Core..:? "longDescription")
                     Core.<*> (o Core..:? "relatedUris")
                     Core.<*> (o Core..:? "remediations")
                     Core.<*> (o Core..:? "shortDescription")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "vulnerabilityId"))

instance Core.ToJSON Assessment where
        toJSON Assessment{..}
          = Core.object
              (Core.catMaybes
                 [("cve" Core..=) Core.<$> cve,
                  ("impacts" Core..=) Core.<$> impacts,
                  ("justification" Core..=) Core.<$> justification,
                  ("longDescription" Core..=) Core.<$> longDescription,
                  ("relatedUris" Core..=) Core.<$> relatedUris,
                  ("remediations" Core..=) Core.<$> remediations,
                  ("shortDescription" Core..=) Core.<$>
                    shortDescription,
                  ("state" Core..=) Core.<$> state,
                  ("vulnerabilityId" Core..=) Core.<$>
                    vulnerabilityId])


-- | Note kind that represents a logical attestation \"role\" or \"authority\". For example, an organization might have one @Authority@ for \"QA\" and one for \"build\". This note is intended to act strictly as a grouping mechanism for the attached occurrences (Attestations). This grouping mechanism also provides a security boundary, since IAM ACLs gate the ability for a principle to attach an occurrence to a given note. It also provides a single point of lookup to find all attached attestation occurrences, even if they don\'t all live in the same project.
--
-- /See:/ 'newAttestationNote' smart constructor.
newtype AttestationNote = AttestationNote
    {
      -- | Hint hints at the purpose of the attestation authority.
      hint :: (Core.Maybe Hint)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttestationNote' with the minimum fields required to make a request.
newAttestationNote 
    ::  AttestationNote
newAttestationNote = AttestationNote {hint = Core.Nothing}

instance Core.FromJSON AttestationNote where
        parseJSON
          = Core.withObject "AttestationNote"
              (\ o -> AttestationNote Core.<$> (o Core..:? "hint"))

instance Core.ToJSON AttestationNote where
        toJSON AttestationNote{..}
          = Core.object
              (Core.catMaybes [("hint" Core..=) Core.<$> hint])


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
                   (o Core..:? "jwts") Core.<*>
                     (o Core..:? "serializedPayload")
                     Core.<*> (o Core..:? "signatures"))

instance Core.ToJSON AttestationOccurrence where
        toJSON AttestationOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("jwts" Core..=) Core.<$> jwts,
                  ("serializedPayload" Core..=) Core.<$>
                    serializedPayload,
                  ("signatures" Core..=) Core.<$> signatures])


-- | Request to create notes in batch.
--
-- /See:/ 'newBatchCreateNotesRequest' smart constructor.
newtype BatchCreateNotesRequest = BatchCreateNotesRequest
    {
      -- | Required. The notes to create. Max allowed length is 1000.
      notes :: (Core.Maybe BatchCreateNotesRequest_Notes)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateNotesRequest' with the minimum fields required to make a request.
newBatchCreateNotesRequest 
    ::  BatchCreateNotesRequest
newBatchCreateNotesRequest = BatchCreateNotesRequest {notes = Core.Nothing}

instance Core.FromJSON BatchCreateNotesRequest where
        parseJSON
          = Core.withObject "BatchCreateNotesRequest"
              (\ o ->
                 BatchCreateNotesRequest Core.<$>
                   (o Core..:? "notes"))

instance Core.ToJSON BatchCreateNotesRequest where
        toJSON BatchCreateNotesRequest{..}
          = Core.object
              (Core.catMaybes [("notes" Core..=) Core.<$> notes])


-- | Required. The notes to create. Max allowed length is 1000.
--
-- /See:/ 'newBatchCreateNotesRequest_Notes' smart constructor.
newtype BatchCreateNotesRequest_Notes = BatchCreateNotesRequest_Notes
    {
      -- | 
      additional :: (Core.HashMap Core.Text Note)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateNotesRequest_Notes' with the minimum fields required to make a request.
newBatchCreateNotesRequest_Notes 
    ::  Core.HashMap Core.Text Note
       -- ^  See 'additional'.
    -> BatchCreateNotesRequest_Notes
newBatchCreateNotesRequest_Notes additional =
  BatchCreateNotesRequest_Notes {additional = additional}

instance Core.FromJSON BatchCreateNotesRequest_Notes
         where
        parseJSON
          = Core.withObject "BatchCreateNotesRequest_Notes"
              (\ o ->
                 BatchCreateNotesRequest_Notes Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON BatchCreateNotesRequest_Notes
         where
        toJSON BatchCreateNotesRequest_Notes{..}
          = Core.toJSON additional


-- | Response for creating notes in batch.
--
-- /See:/ 'newBatchCreateNotesResponse' smart constructor.
newtype BatchCreateNotesResponse = BatchCreateNotesResponse
    {
      -- | The notes that were created.
      notes :: (Core.Maybe [Note])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateNotesResponse' with the minimum fields required to make a request.
newBatchCreateNotesResponse 
    ::  BatchCreateNotesResponse
newBatchCreateNotesResponse = BatchCreateNotesResponse {notes = Core.Nothing}

instance Core.FromJSON BatchCreateNotesResponse where
        parseJSON
          = Core.withObject "BatchCreateNotesResponse"
              (\ o ->
                 BatchCreateNotesResponse Core.<$>
                   (o Core..:? "notes"))

instance Core.ToJSON BatchCreateNotesResponse where
        toJSON BatchCreateNotesResponse{..}
          = Core.object
              (Core.catMaybes [("notes" Core..=) Core.<$> notes])


-- | Request to create occurrences in batch.
--
-- /See:/ 'newBatchCreateOccurrencesRequest' smart constructor.
newtype BatchCreateOccurrencesRequest = BatchCreateOccurrencesRequest
    {
      -- | Required. The occurrences to create. Max allowed length is 1000.
      occurrences :: (Core.Maybe [Occurrence])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateOccurrencesRequest' with the minimum fields required to make a request.
newBatchCreateOccurrencesRequest 
    ::  BatchCreateOccurrencesRequest
newBatchCreateOccurrencesRequest =
  BatchCreateOccurrencesRequest {occurrences = Core.Nothing}

instance Core.FromJSON BatchCreateOccurrencesRequest
         where
        parseJSON
          = Core.withObject "BatchCreateOccurrencesRequest"
              (\ o ->
                 BatchCreateOccurrencesRequest Core.<$>
                   (o Core..:? "occurrences"))

instance Core.ToJSON BatchCreateOccurrencesRequest
         where
        toJSON BatchCreateOccurrencesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("occurrences" Core..=) Core.<$> occurrences])


-- | Response for creating occurrences in batch.
--
-- /See:/ 'newBatchCreateOccurrencesResponse' smart constructor.
newtype BatchCreateOccurrencesResponse = BatchCreateOccurrencesResponse
    {
      -- | The occurrences that were created.
      occurrences :: (Core.Maybe [Occurrence])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateOccurrencesResponse' with the minimum fields required to make a request.
newBatchCreateOccurrencesResponse 
    ::  BatchCreateOccurrencesResponse
newBatchCreateOccurrencesResponse =
  BatchCreateOccurrencesResponse {occurrences = Core.Nothing}

instance Core.FromJSON BatchCreateOccurrencesResponse
         where
        parseJSON
          = Core.withObject "BatchCreateOccurrencesResponse"
              (\ o ->
                 BatchCreateOccurrencesResponse Core.<$>
                   (o Core..:? "occurrences"))

instance Core.ToJSON BatchCreateOccurrencesResponse
         where
        toJSON BatchCreateOccurrencesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("occurrences" Core..=) Core.<$> occurrences])


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe Expr)
      -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
      -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workforce identity pool. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/group\/{group_id}@: All workforce identities in a group. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All workforce identities with a specific attribute value. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*@: All identities in a workforce identity pool. *
      -- @principal:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workload identity pool. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/group\/{group_id}@: A workload identity pool group. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All identities in a workload identity pool with a certain attribute. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*@: All identities in a workload identity pool. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts
      -- to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: Deleted single identity in a workforce identity pool. For example,
      -- @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value@.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. For an overview of the IAM roles and permissions, see the <https://cloud.google.com/iam/docs/roles-overview IAM documentation>. For a list of the available pre-defined roles, see <https://cloud.google.com/iam/docs/understanding-roles here>.
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
                     (o Core..:? "members")
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON Binding where
        toJSON Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


--
-- /See:/ 'newBuildDefinition' smart constructor.
data BuildDefinition = BuildDefinition
    {
      -- | 
      buildType :: (Core.Maybe Core.Text)
      -- | 
    , externalParameters :: (Core.Maybe BuildDefinition_ExternalParameters)
      -- | 
    , internalParameters :: (Core.Maybe BuildDefinition_InternalParameters)
      -- | 
    , resolvedDependencies :: (Core.Maybe [ResourceDescriptor])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildDefinition' with the minimum fields required to make a request.
newBuildDefinition 
    ::  BuildDefinition
newBuildDefinition =
  BuildDefinition
    { buildType = Core.Nothing
    , externalParameters = Core.Nothing
    , internalParameters = Core.Nothing
    , resolvedDependencies = Core.Nothing
    }

instance Core.FromJSON BuildDefinition where
        parseJSON
          = Core.withObject "BuildDefinition"
              (\ o ->
                 BuildDefinition Core.<$>
                   (o Core..:? "buildType") Core.<*>
                     (o Core..:? "externalParameters")
                     Core.<*> (o Core..:? "internalParameters")
                     Core.<*> (o Core..:? "resolvedDependencies"))

instance Core.ToJSON BuildDefinition where
        toJSON BuildDefinition{..}
          = Core.object
              (Core.catMaybes
                 [("buildType" Core..=) Core.<$> buildType,
                  ("externalParameters" Core..=) Core.<$>
                    externalParameters,
                  ("internalParameters" Core..=) Core.<$>
                    internalParameters,
                  ("resolvedDependencies" Core..=) Core.<$>
                    resolvedDependencies])


--
-- /See:/ 'newBuildDefinition_ExternalParameters' smart constructor.
newtype BuildDefinition_ExternalParameters = BuildDefinition_ExternalParameters
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildDefinition_ExternalParameters' with the minimum fields required to make a request.
newBuildDefinition_ExternalParameters 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> BuildDefinition_ExternalParameters
newBuildDefinition_ExternalParameters additional =
  BuildDefinition_ExternalParameters {additional = additional}

instance Core.FromJSON
           BuildDefinition_ExternalParameters
         where
        parseJSON
          = Core.withObject
              "BuildDefinition_ExternalParameters"
              (\ o ->
                 BuildDefinition_ExternalParameters Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           BuildDefinition_ExternalParameters
         where
        toJSON BuildDefinition_ExternalParameters{..}
          = Core.toJSON additional


--
-- /See:/ 'newBuildDefinition_InternalParameters' smart constructor.
newtype BuildDefinition_InternalParameters = BuildDefinition_InternalParameters
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildDefinition_InternalParameters' with the minimum fields required to make a request.
newBuildDefinition_InternalParameters 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> BuildDefinition_InternalParameters
newBuildDefinition_InternalParameters additional =
  BuildDefinition_InternalParameters {additional = additional}

instance Core.FromJSON
           BuildDefinition_InternalParameters
         where
        parseJSON
          = Core.withObject
              "BuildDefinition_InternalParameters"
              (\ o ->
                 BuildDefinition_InternalParameters Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           BuildDefinition_InternalParameters
         where
        toJSON BuildDefinition_InternalParameters{..}
          = Core.toJSON additional


--
-- /See:/ 'newBuildMetadata' smart constructor.
data BuildMetadata = BuildMetadata
    {
      -- | 
      finishedOn :: (Core.Maybe Core.DateTime)
      -- | 
    , invocationId :: (Core.Maybe Core.Text)
      -- | 
    , startedOn :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildMetadata' with the minimum fields required to make a request.
newBuildMetadata 
    ::  BuildMetadata
newBuildMetadata =
  BuildMetadata
    { finishedOn = Core.Nothing
    , invocationId = Core.Nothing
    , startedOn = Core.Nothing
    }

instance Core.FromJSON BuildMetadata where
        parseJSON
          = Core.withObject "BuildMetadata"
              (\ o ->
                 BuildMetadata Core.<$>
                   (o Core..:? "finishedOn") Core.<*>
                     (o Core..:? "invocationId")
                     Core.<*> (o Core..:? "startedOn"))

instance Core.ToJSON BuildMetadata where
        toJSON BuildMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("finishedOn" Core..=) Core.<$> finishedOn,
                  ("invocationId" Core..=) Core.<$> invocationId,
                  ("startedOn" Core..=) Core.<$> startedOn])


-- | Note holding the version of the provider\'s builder and the signature of the provenance message in the build details occurrence.
--
-- /See:/ 'newBuildNote' smart constructor.
newtype BuildNote = BuildNote
    {
      -- | Required. Immutable. Version of the builder which produced this build.
      builderVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildNote' with the minimum fields required to make a request.
newBuildNote 
    ::  BuildNote
newBuildNote = BuildNote {builderVersion = Core.Nothing}

instance Core.FromJSON BuildNote where
        parseJSON
          = Core.withObject "BuildNote"
              (\ o ->
                 BuildNote Core.<$> (o Core..:? "builderVersion"))

instance Core.ToJSON BuildNote where
        toJSON BuildNote{..}
          = Core.object
              (Core.catMaybes
                 [("builderVersion" Core..=) Core.<$> builderVersion])


-- | Details of a build occurrence.
--
-- /See:/ 'newBuildOccurrence' smart constructor.
data BuildOccurrence = BuildOccurrence
    {
      -- | In-Toto Slsa Provenance V1 represents a slsa provenance meeting the slsa spec, wrapped in an in-toto statement. This allows for direct jsonification of a to-spec in-toto slsa statement with a to-spec slsa provenance.
      inTotoSlsaProvenanceV1 :: (Core.Maybe InTotoSlsaProvenanceV1)
      -- | Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined in spec.
    , intotoProvenance :: (Core.Maybe InTotoProvenance)
      -- | In-toto Statement representation as defined in spec. The intoto_statement can contain any type of provenance. The serialized payload of the statement can be stored and signed in the Occurrence\'s envelope.
    , intotoStatement :: (Core.Maybe InTotoStatement)
      -- | The actual provenance for the build.
    , provenance :: (Core.Maybe BuildProvenance)
      -- | Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, @provenance_bytes@ can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
    , provenanceBytes :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildOccurrence' with the minimum fields required to make a request.
newBuildOccurrence 
    ::  BuildOccurrence
newBuildOccurrence =
  BuildOccurrence
    { inTotoSlsaProvenanceV1 = Core.Nothing
    , intotoProvenance = Core.Nothing
    , intotoStatement = Core.Nothing
    , provenance = Core.Nothing
    , provenanceBytes = Core.Nothing
    }

instance Core.FromJSON BuildOccurrence where
        parseJSON
          = Core.withObject "BuildOccurrence"
              (\ o ->
                 BuildOccurrence Core.<$>
                   (o Core..:? "inTotoSlsaProvenanceV1") Core.<*>
                     (o Core..:? "intotoProvenance")
                     Core.<*> (o Core..:? "intotoStatement")
                     Core.<*> (o Core..:? "provenance")
                     Core.<*> (o Core..:? "provenanceBytes"))

instance Core.ToJSON BuildOccurrence where
        toJSON BuildOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("inTotoSlsaProvenanceV1" Core..=) Core.<$>
                    inTotoSlsaProvenanceV1,
                  ("intotoProvenance" Core..=) Core.<$>
                    intotoProvenance,
                  ("intotoStatement" Core..=) Core.<$> intotoStatement,
                  ("provenance" Core..=) Core.<$> provenance,
                  ("provenanceBytes" Core..=) Core.<$>
                    provenanceBytes])


-- | Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.
--
-- /See:/ 'newBuildProvenance' smart constructor.
data BuildProvenance = BuildProvenance
    {
      -- | Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
      buildOptions :: (Core.Maybe BuildProvenance_BuildOptions)
      -- | Version string of the builder at the time this build was executed.
    , builderVersion :: (Core.Maybe Core.Text)
      -- | Output of the build.
    , builtArtifacts :: (Core.Maybe [Artifact])
      -- | Commands requested by the build.
    , commands :: (Core.Maybe [Command])
      -- | Time at which the build was created.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | E-mail address of the user who initiated this build. Note that this was the user\'s e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
    , creator :: (Core.Maybe Core.Text)
      -- | Time at which execution of the build was finished.
    , endTime :: (Core.Maybe Core.DateTime)
      -- | Required. Unique identifier of the build.
    , id :: (Core.Maybe Core.Text)
      -- | URI where any logs for this provenance were written.
    , logsUri :: (Core.Maybe Core.Text)
      -- | ID of the project.
    , projectId :: (Core.Maybe Core.Text)
      -- | Details of the Source input to the build.
    , sourceProvenance :: (Core.Maybe Source)
      -- | Time at which execution of the build was started.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Trigger identifier if the build was triggered automatically; empty if not.
    , triggerId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildProvenance' with the minimum fields required to make a request.
newBuildProvenance 
    ::  BuildProvenance
newBuildProvenance =
  BuildProvenance
    { buildOptions = Core.Nothing
    , builderVersion = Core.Nothing
    , builtArtifacts = Core.Nothing
    , commands = Core.Nothing
    , createTime = Core.Nothing
    , creator = Core.Nothing
    , endTime = Core.Nothing
    , id = Core.Nothing
    , logsUri = Core.Nothing
    , projectId = Core.Nothing
    , sourceProvenance = Core.Nothing
    , startTime = Core.Nothing
    , triggerId = Core.Nothing
    }

instance Core.FromJSON BuildProvenance where
        parseJSON
          = Core.withObject "BuildProvenance"
              (\ o ->
                 BuildProvenance Core.<$>
                   (o Core..:? "buildOptions") Core.<*>
                     (o Core..:? "builderVersion")
                     Core.<*> (o Core..:? "builtArtifacts")
                     Core.<*> (o Core..:? "commands")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "creator")
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "logsUri")
                     Core.<*> (o Core..:? "projectId")
                     Core.<*> (o Core..:? "sourceProvenance")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "triggerId"))

instance Core.ToJSON BuildProvenance where
        toJSON BuildProvenance{..}
          = Core.object
              (Core.catMaybes
                 [("buildOptions" Core..=) Core.<$> buildOptions,
                  ("builderVersion" Core..=) Core.<$> builderVersion,
                  ("builtArtifacts" Core..=) Core.<$> builtArtifacts,
                  ("commands" Core..=) Core.<$> commands,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("creator" Core..=) Core.<$> creator,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("id" Core..=) Core.<$> id,
                  ("logsUri" Core..=) Core.<$> logsUri,
                  ("projectId" Core..=) Core.<$> projectId,
                  ("sourceProvenance" Core..=) Core.<$>
                    sourceProvenance,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("triggerId" Core..=) Core.<$> triggerId])


-- | Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
--
-- /See:/ 'newBuildProvenance_BuildOptions' smart constructor.
newtype BuildProvenance_BuildOptions = BuildProvenance_BuildOptions
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildProvenance_BuildOptions' with the minimum fields required to make a request.
newBuildProvenance_BuildOptions 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> BuildProvenance_BuildOptions
newBuildProvenance_BuildOptions additional =
  BuildProvenance_BuildOptions {additional = additional}

instance Core.FromJSON BuildProvenance_BuildOptions
         where
        parseJSON
          = Core.withObject "BuildProvenance_BuildOptions"
              (\ o ->
                 BuildProvenance_BuildOptions Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON BuildProvenance_BuildOptions
         where
        toJSON BuildProvenance_BuildOptions{..}
          = Core.toJSON additional


-- | A step in the build pipeline. Next ID: 21
--
-- /See:/ 'newBuildStep' smart constructor.
data BuildStep = BuildStep
    {
      -- | Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence.
      allowExitCodes :: (Core.Maybe [Core.Int32])
      -- | Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field.
    , allowFailure :: (Core.Maybe Core.Bool)
      -- | A list of arguments that will be presented to the step when it is started. If the image used to run the step\'s container has an entrypoint, the @args@ are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.
    , args :: (Core.Maybe [Core.Text])
      -- | Option to include built-in and custom substitutions as env variables for this build step. This option will override the global option in BuildOption.
    , automapSubstitutions :: (Core.Maybe Core.Bool)
      -- | Working directory to use when running this step\'s container. If this value is a relative path, it is relative to the build\'s working directory. If this value is absolute, it may be outside the build\'s working directory, in which case the contents of the path may not be persisted across build step executions, unless a @volume@ for that path is specified. If the build specifies a @RepoSource@ with @dir@ and a step with a @dir@, which specifies an absolute path, the @RepoSource@ @dir@ is ignored for the step\'s execution.
    , dir :: (Core.Maybe Core.Text)
      -- | Entrypoint to be used instead of the build step image\'s default entrypoint. If unset, the image\'s default entrypoint is used.
    , entrypoint :: (Core.Maybe Core.Text)
      -- | A list of environment variable definitions to be used when running a step. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".
    , env :: (Core.Maybe [Core.Text])
      -- | Output only. Return code from running the step.
    , exitCode :: (Core.Maybe Core.Int32)
      -- | Unique identifier for this build step, used in @wait_for@ to reference this build step as a dependency.
    , id :: (Core.Maybe Core.Text)
      -- | Required. The name of the container image that will run this particular build step. If the image is available in the host\'s Docker daemon\'s cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account\'s credentials if necessary. The Docker daemon\'s cache will already have the latest versions of all of the officially supported build steps (<https://github.com/GoogleCloudPlatform/cloud-builders>). The Docker daemon will also have cached many of the layers for some popular images, like \"ubuntu\", \"debian\", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host\'s Docker daemon\'s cache and is available to use as the name for a later build step.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Stores timing information for pulling this build step\'s builder image only.
    , pullTiming :: (Core.Maybe TimeSpan)
      -- | A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.
    , script :: (Core.Maybe Core.Text)
      -- | A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build\'s @Secret@.
    , secretEnv :: (Core.Maybe [Core.Text])
      -- | Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
    , status :: (Core.Maybe BuildStep_Status)
      -- | Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Stores timing information for executing this build step.
    , timing :: (Core.Maybe TimeSpan)
      -- | List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.
    , volumes :: (Core.Maybe [Volume])
      -- | The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in @wait_for@ have completed successfully. If @wait_for@ is empty, this build step will start when all previous build steps in the @Build.Steps@ list have completed successfully.
    , waitFor :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildStep' with the minimum fields required to make a request.
newBuildStep 
    ::  BuildStep
newBuildStep =
  BuildStep
    { allowExitCodes = Core.Nothing
    , allowFailure = Core.Nothing
    , args = Core.Nothing
    , automapSubstitutions = Core.Nothing
    , dir = Core.Nothing
    , entrypoint = Core.Nothing
    , env = Core.Nothing
    , exitCode = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , pullTiming = Core.Nothing
    , script = Core.Nothing
    , secretEnv = Core.Nothing
    , status = Core.Nothing
    , timeout = Core.Nothing
    , timing = Core.Nothing
    , volumes = Core.Nothing
    , waitFor = Core.Nothing
    }

instance Core.FromJSON BuildStep where
        parseJSON
          = Core.withObject "BuildStep"
              (\ o ->
                 BuildStep Core.<$>
                   (o Core..:? "allowExitCodes") Core.<*>
                     (o Core..:? "allowFailure")
                     Core.<*> (o Core..:? "args")
                     Core.<*> (o Core..:? "automapSubstitutions")
                     Core.<*> (o Core..:? "dir")
                     Core.<*> (o Core..:? "entrypoint")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "exitCode")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "pullTiming")
                     Core.<*> (o Core..:? "script")
                     Core.<*> (o Core..:? "secretEnv")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "timing")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "waitFor"))

instance Core.ToJSON BuildStep where
        toJSON BuildStep{..}
          = Core.object
              (Core.catMaybes
                 [("allowExitCodes" Core..=) Core.<$> allowExitCodes,
                  ("allowFailure" Core..=) Core.<$> allowFailure,
                  ("args" Core..=) Core.<$> args,
                  ("automapSubstitutions" Core..=) Core.<$>
                    automapSubstitutions,
                  ("dir" Core..=) Core.<$> dir,
                  ("entrypoint" Core..=) Core.<$> entrypoint,
                  ("env" Core..=) Core.<$> env,
                  ("exitCode" Core..=) Core.<$> exitCode,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("pullTiming" Core..=) Core.<$> pullTiming,
                  ("script" Core..=) Core.<$> script,
                  ("secretEnv" Core..=) Core.<$> secretEnv,
                  ("status" Core..=) Core.<$> status,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("timing" Core..=) Core.<$> timing,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("waitFor" Core..=) Core.<$> waitFor])


--
-- /See:/ 'newBuilderConfig' smart constructor.
newtype BuilderConfig = BuilderConfig
    {
      -- | 
      id :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuilderConfig' with the minimum fields required to make a request.
newBuilderConfig 
    ::  BuilderConfig
newBuilderConfig = BuilderConfig {id = Core.Nothing}

instance Core.FromJSON BuilderConfig where
        parseJSON
          = Core.withObject "BuilderConfig"
              (\ o -> BuilderConfig Core.<$> (o Core..:? "id"))

instance Core.ToJSON BuilderConfig where
        toJSON BuilderConfig{..}
          = Core.object
              (Core.catMaybes [("id" Core..=) Core.<$> id])


-- | Common Vulnerability Scoring System. For details, see https:\/\/www.first.org\/cvss\/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.
--
-- /See:/ 'newCVSS' smart constructor.
data CVSS = CVSS
    {
      -- | 
      attackComplexity :: (Core.Maybe CVSS_AttackComplexity)
      -- | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
    , attackVector :: (Core.Maybe CVSS_AttackVector)
      -- | 
    , authentication :: (Core.Maybe CVSS_Authentication)
      -- | 
    , availabilityImpact :: (Core.Maybe CVSS_AvailabilityImpact)
      -- | The base score is a function of the base metric scores.
    , baseScore :: (Core.Maybe Core.Double)
      -- | 
    , confidentialityImpact :: (Core.Maybe CVSS_ConfidentialityImpact)
      -- | 
    , exploitabilityScore :: (Core.Maybe Core.Double)
      -- | 
    , impactScore :: (Core.Maybe Core.Double)
      -- | 
    , integrityImpact :: (Core.Maybe CVSS_IntegrityImpact)
      -- | 
    , privilegesRequired :: (Core.Maybe CVSS_PrivilegesRequired)
      -- | 
    , scope :: (Core.Maybe CVSS_Scope)
      -- | 
    , userInteraction :: (Core.Maybe CVSS_UserInteraction)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CVSS' with the minimum fields required to make a request.
newCVSS 
    ::  CVSS
newCVSS =
  CVSS
    { attackComplexity = Core.Nothing
    , attackVector = Core.Nothing
    , authentication = Core.Nothing
    , availabilityImpact = Core.Nothing
    , baseScore = Core.Nothing
    , confidentialityImpact = Core.Nothing
    , exploitabilityScore = Core.Nothing
    , impactScore = Core.Nothing
    , integrityImpact = Core.Nothing
    , privilegesRequired = Core.Nothing
    , scope = Core.Nothing
    , userInteraction = Core.Nothing
    }

instance Core.FromJSON CVSS where
        parseJSON
          = Core.withObject "CVSS"
              (\ o ->
                 CVSS Core.<$>
                   (o Core..:? "attackComplexity") Core.<*>
                     (o Core..:? "attackVector")
                     Core.<*> (o Core..:? "authentication")
                     Core.<*> (o Core..:? "availabilityImpact")
                     Core.<*> (o Core..:? "baseScore")
                     Core.<*> (o Core..:? "confidentialityImpact")
                     Core.<*> (o Core..:? "exploitabilityScore")
                     Core.<*> (o Core..:? "impactScore")
                     Core.<*> (o Core..:? "integrityImpact")
                     Core.<*> (o Core..:? "privilegesRequired")
                     Core.<*> (o Core..:? "scope")
                     Core.<*> (o Core..:? "userInteraction"))

instance Core.ToJSON CVSS where
        toJSON CVSS{..}
          = Core.object
              (Core.catMaybes
                 [("attackComplexity" Core..=) Core.<$>
                    attackComplexity,
                  ("attackVector" Core..=) Core.<$> attackVector,
                  ("authentication" Core..=) Core.<$> authentication,
                  ("availabilityImpact" Core..=) Core.<$>
                    availabilityImpact,
                  ("baseScore" Core..=) Core.<$> baseScore,
                  ("confidentialityImpact" Core..=) Core.<$>
                    confidentialityImpact,
                  ("exploitabilityScore" Core..=) Core.<$>
                    exploitabilityScore,
                  ("impactScore" Core..=) Core.<$> impactScore,
                  ("integrityImpact" Core..=) Core.<$> integrityImpact,
                  ("privilegesRequired" Core..=) Core.<$>
                    privilegesRequired,
                  ("scope" Core..=) Core.<$> scope,
                  ("userInteraction" Core..=) Core.<$>
                    userInteraction])


-- | Common Vulnerability Scoring System version 3. For details, see https:\/\/www.first.org\/cvss\/specification-document
--
-- /See:/ 'newCVSSv3' smart constructor.
data CVSSv3 = CVSSv3
    {
      -- | 
      attackComplexity :: (Core.Maybe CVSSv3_AttackComplexity)
      -- | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
    , attackVector :: (Core.Maybe CVSSv3_AttackVector)
      -- | 
    , availabilityImpact :: (Core.Maybe CVSSv3_AvailabilityImpact)
      -- | The base score is a function of the base metric scores.
    , baseScore :: (Core.Maybe Core.Double)
      -- | 
    , confidentialityImpact :: (Core.Maybe CVSSv3_ConfidentialityImpact)
      -- | 
    , exploitabilityScore :: (Core.Maybe Core.Double)
      -- | 
    , impactScore :: (Core.Maybe Core.Double)
      -- | 
    , integrityImpact :: (Core.Maybe CVSSv3_IntegrityImpact)
      -- | 
    , privilegesRequired :: (Core.Maybe CVSSv3_PrivilegesRequired)
      -- | 
    , scope :: (Core.Maybe CVSSv3_Scope)
      -- | 
    , userInteraction :: (Core.Maybe CVSSv3_UserInteraction)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CVSSv3' with the minimum fields required to make a request.
newCVSSv3 
    ::  CVSSv3
newCVSSv3 =
  CVSSv3
    { attackComplexity = Core.Nothing
    , attackVector = Core.Nothing
    , availabilityImpact = Core.Nothing
    , baseScore = Core.Nothing
    , confidentialityImpact = Core.Nothing
    , exploitabilityScore = Core.Nothing
    , impactScore = Core.Nothing
    , integrityImpact = Core.Nothing
    , privilegesRequired = Core.Nothing
    , scope = Core.Nothing
    , userInteraction = Core.Nothing
    }

instance Core.FromJSON CVSSv3 where
        parseJSON
          = Core.withObject "CVSSv3"
              (\ o ->
                 CVSSv3 Core.<$>
                   (o Core..:? "attackComplexity") Core.<*>
                     (o Core..:? "attackVector")
                     Core.<*> (o Core..:? "availabilityImpact")
                     Core.<*> (o Core..:? "baseScore")
                     Core.<*> (o Core..:? "confidentialityImpact")
                     Core.<*> (o Core..:? "exploitabilityScore")
                     Core.<*> (o Core..:? "impactScore")
                     Core.<*> (o Core..:? "integrityImpact")
                     Core.<*> (o Core..:? "privilegesRequired")
                     Core.<*> (o Core..:? "scope")
                     Core.<*> (o Core..:? "userInteraction"))

instance Core.ToJSON CVSSv3 where
        toJSON CVSSv3{..}
          = Core.object
              (Core.catMaybes
                 [("attackComplexity" Core..=) Core.<$>
                    attackComplexity,
                  ("attackVector" Core..=) Core.<$> attackVector,
                  ("availabilityImpact" Core..=) Core.<$>
                    availabilityImpact,
                  ("baseScore" Core..=) Core.<$> baseScore,
                  ("confidentialityImpact" Core..=) Core.<$>
                    confidentialityImpact,
                  ("exploitabilityScore" Core..=) Core.<$>
                    exploitabilityScore,
                  ("impactScore" Core..=) Core.<$> impactScore,
                  ("integrityImpact" Core..=) Core.<$> integrityImpact,
                  ("privilegesRequired" Core..=) Core.<$>
                    privilegesRequired,
                  ("scope" Core..=) Core.<$> scope,
                  ("userInteraction" Core..=) Core.<$>
                    userInteraction])


-- | The category to which the update belongs.
--
-- /See:/ 'newCategory' smart constructor.
data Category = Category
    {
      -- | The identifier of the category.
      categoryId :: (Core.Maybe Core.Text)
      -- | The localized name of the category.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Category' with the minimum fields required to make a request.
newCategory 
    ::  Category
newCategory = Category {categoryId = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Category where
        parseJSON
          = Core.withObject "Category"
              (\ o ->
                 Category Core.<$>
                   (o Core..:? "categoryId") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON Category where
        toJSON Category{..}
          = Core.object
              (Core.catMaybes
                 [("categoryId" Core..=) Core.<$> categoryId,
                  ("name" Core..=) Core.<$> name])


-- | A compliance check that is a CIS benchmark.
--
-- /See:/ 'newCisBenchmark' smart constructor.
data CisBenchmark = CisBenchmark
    {
      -- | 
      profileLevel :: (Core.Maybe Core.Int32)
      -- | 
    , severity :: (Core.Maybe CisBenchmark_Severity)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CisBenchmark' with the minimum fields required to make a request.
newCisBenchmark 
    ::  CisBenchmark
newCisBenchmark =
  CisBenchmark {profileLevel = Core.Nothing, severity = Core.Nothing}

instance Core.FromJSON CisBenchmark where
        parseJSON
          = Core.withObject "CisBenchmark"
              (\ o ->
                 CisBenchmark Core.<$>
                   (o Core..:? "profileLevel") Core.<*>
                     (o Core..:? "severity"))

instance Core.ToJSON CisBenchmark where
        toJSON CisBenchmark{..}
          = Core.object
              (Core.catMaybes
                 [("profileLevel" Core..=) Core.<$> profileLevel,
                  ("severity" Core..=) Core.<$> severity])


-- | A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.
--
-- /See:/ 'newCloudRepoSourceContext' smart constructor.
data CloudRepoSourceContext = CloudRepoSourceContext
    {
      -- | An alias, which may be a branch or tag.
      aliasContext :: (Core.Maybe AliasContext)
      -- | The ID of the repo.
    , repoId :: (Core.Maybe RepoId)
      -- | A revision ID.
    , revisionId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudRepoSourceContext' with the minimum fields required to make a request.
newCloudRepoSourceContext 
    ::  CloudRepoSourceContext
newCloudRepoSourceContext =
  CloudRepoSourceContext
    { aliasContext = Core.Nothing
    , repoId = Core.Nothing
    , revisionId = Core.Nothing
    }

instance Core.FromJSON CloudRepoSourceContext where
        parseJSON
          = Core.withObject "CloudRepoSourceContext"
              (\ o ->
                 CloudRepoSourceContext Core.<$>
                   (o Core..:? "aliasContext") Core.<*>
                     (o Core..:? "repoId")
                     Core.<*> (o Core..:? "revisionId"))

instance Core.ToJSON CloudRepoSourceContext where
        toJSON CloudRepoSourceContext{..}
          = Core.object
              (Core.catMaybes
                 [("aliasContext" Core..=) Core.<$> aliasContext,
                  ("repoId" Core..=) Core.<$> repoId,
                  ("revisionId" Core..=) Core.<$> revisionId])


-- | Empty placeholder to denote that this is a Google Cloud Storage export request.
--
-- /See:/ 'newCloudStorageLocation' smart constructor.
data CloudStorageLocation = CloudStorageLocation
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudStorageLocation' with the minimum fields required to make a request.
newCloudStorageLocation 
    ::  CloudStorageLocation
newCloudStorageLocation = CloudStorageLocation

instance Core.FromJSON CloudStorageLocation where
        parseJSON
          = Core.withObject "CloudStorageLocation"
              (\ o -> Core.pure CloudStorageLocation)

instance Core.ToJSON CloudStorageLocation where
        toJSON = Core.const Core.emptyObject


-- | Command describes a step performed as part of the build pipeline.
--
-- /See:/ 'newCommand' smart constructor.
data Command = Command
    {
      -- | Command-line arguments used when executing this command.
      args :: (Core.Maybe [Core.Text])
      -- | Working directory (relative to project source root) used when running this command.
    , dir :: (Core.Maybe Core.Text)
      -- | Environment variables set before running this command.
    , env :: (Core.Maybe [Core.Text])
      -- | Optional unique identifier for this command, used in wait_for to reference this command as a dependency.
    , id :: (Core.Maybe Core.Text)
      -- | Required. Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to @docker pull@.
    , name :: (Core.Maybe Core.Text)
      -- | The ID(s) of the command(s) that this command depends on.
    , waitFor :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Command' with the minimum fields required to make a request.
newCommand 
    ::  Command
newCommand =
  Command
    { args = Core.Nothing
    , dir = Core.Nothing
    , env = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , waitFor = Core.Nothing
    }

instance Core.FromJSON Command where
        parseJSON
          = Core.withObject "Command"
              (\ o ->
                 Command Core.<$>
                   (o Core..:? "args") Core.<*> (o Core..:? "dir")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "waitFor"))

instance Core.ToJSON Command where
        toJSON Command{..}
          = Core.object
              (Core.catMaybes
                 [("args" Core..=) Core.<$> args,
                  ("dir" Core..=) Core.<$> dir,
                  ("env" Core..=) Core.<$> env,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("waitFor" Core..=) Core.<$> waitFor])


-- | Indicates that the builder claims certain fields in this message to be complete.
--
-- /See:/ 'newCompleteness' smart constructor.
data Completeness = Completeness
    {
      -- | If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
      arguments :: (Core.Maybe Core.Bool)
      -- | If true, the builder claims that recipe.environment is claimed to be complete.
    , environment :: (Core.Maybe Core.Bool)
      -- | If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called \"hermetic\".
    , materials :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Completeness' with the minimum fields required to make a request.
newCompleteness 
    ::  Completeness
newCompleteness =
  Completeness
    { arguments = Core.Nothing
    , environment = Core.Nothing
    , materials = Core.Nothing
    }

instance Core.FromJSON Completeness where
        parseJSON
          = Core.withObject "Completeness"
              (\ o ->
                 Completeness Core.<$>
                   (o Core..:? "arguments") Core.<*>
                     (o Core..:? "environment")
                     Core.<*> (o Core..:? "materials"))

instance Core.ToJSON Completeness where
        toJSON Completeness{..}
          = Core.object
              (Core.catMaybes
                 [("arguments" Core..=) Core.<$> arguments,
                  ("environment" Core..=) Core.<$> environment,
                  ("materials" Core..=) Core.<$> materials])


--
-- /See:/ 'newComplianceNote' smart constructor.
data ComplianceNote = ComplianceNote
    {
      -- | 
      cisBenchmark :: (Core.Maybe CisBenchmark)
      -- | A description about this compliance check.
    , description :: (Core.Maybe Core.Text)
      -- | 
    , impact :: (Core.Maybe Core.Text)
      -- | A rationale for the existence of this compliance check.
    , rationale :: (Core.Maybe Core.Text)
      -- | A description of remediation steps if the compliance check fails.
    , remediation :: (Core.Maybe Core.Text)
      -- | Serialized scan instructions with a predefined format.
    , scanInstructions :: (Core.Maybe Core.Base64)
      -- | The title that identifies this compliance check.
    , title :: (Core.Maybe Core.Text)
      -- | The OS and config versions the benchmark applies to.
    , version :: (Core.Maybe [ComplianceVersion])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComplianceNote' with the minimum fields required to make a request.
newComplianceNote 
    ::  ComplianceNote
newComplianceNote =
  ComplianceNote
    { cisBenchmark = Core.Nothing
    , description = Core.Nothing
    , impact = Core.Nothing
    , rationale = Core.Nothing
    , remediation = Core.Nothing
    , scanInstructions = Core.Nothing
    , title = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON ComplianceNote where
        parseJSON
          = Core.withObject "ComplianceNote"
              (\ o ->
                 ComplianceNote Core.<$>
                   (o Core..:? "cisBenchmark") Core.<*>
                     (o Core..:? "description")
                     Core.<*> (o Core..:? "impact")
                     Core.<*> (o Core..:? "rationale")
                     Core.<*> (o Core..:? "remediation")
                     Core.<*> (o Core..:? "scanInstructions")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON ComplianceNote where
        toJSON ComplianceNote{..}
          = Core.object
              (Core.catMaybes
                 [("cisBenchmark" Core..=) Core.<$> cisBenchmark,
                  ("description" Core..=) Core.<$> description,
                  ("impact" Core..=) Core.<$> impact,
                  ("rationale" Core..=) Core.<$> rationale,
                  ("remediation" Core..=) Core.<$> remediation,
                  ("scanInstructions" Core..=) Core.<$>
                    scanInstructions,
                  ("title" Core..=) Core.<$> title,
                  ("version" Core..=) Core.<$> version])


-- | An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
--
-- /See:/ 'newComplianceOccurrence' smart constructor.
data ComplianceOccurrence = ComplianceOccurrence
    {
      -- | 
      nonComplianceReason :: (Core.Maybe Core.Text)
      -- | 
    , nonCompliantFiles :: (Core.Maybe [NonCompliantFile])
      -- | The OS and config version the benchmark was run on.
    , version :: (Core.Maybe ComplianceVersion)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComplianceOccurrence' with the minimum fields required to make a request.
newComplianceOccurrence 
    ::  ComplianceOccurrence
newComplianceOccurrence =
  ComplianceOccurrence
    { nonComplianceReason = Core.Nothing
    , nonCompliantFiles = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON ComplianceOccurrence where
        parseJSON
          = Core.withObject "ComplianceOccurrence"
              (\ o ->
                 ComplianceOccurrence Core.<$>
                   (o Core..:? "nonComplianceReason") Core.<*>
                     (o Core..:? "nonCompliantFiles")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON ComplianceOccurrence where
        toJSON ComplianceOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("nonComplianceReason" Core..=) Core.<$>
                    nonComplianceReason,
                  ("nonCompliantFiles" Core..=) Core.<$>
                    nonCompliantFiles,
                  ("version" Core..=) Core.<$> version])


-- | Describes the CIS benchmark version that is applicable to a given OS and os version.
--
-- /See:/ 'newComplianceVersion' smart constructor.
data ComplianceVersion = ComplianceVersion
    {
      -- | The name of the document that defines this benchmark, e.g. \"CIS Container-Optimized OS\".
      benchmarkDocument :: (Core.Maybe Core.Text)
      -- | The CPE URI (https:\/\/cpe.mitre.org\/specification\/) this benchmark is applicable to.
    , cpeUri :: (Core.Maybe Core.Text)
      -- | The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComplianceVersion' with the minimum fields required to make a request.
newComplianceVersion 
    ::  ComplianceVersion
newComplianceVersion =
  ComplianceVersion
    { benchmarkDocument = Core.Nothing
    , cpeUri = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON ComplianceVersion where
        parseJSON
          = Core.withObject "ComplianceVersion"
              (\ o ->
                 ComplianceVersion Core.<$>
                   (o Core..:? "benchmarkDocument") Core.<*>
                     (o Core..:? "cpeUri")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON ComplianceVersion where
        toJSON ComplianceVersion{..}
          = Core.object
              (Core.catMaybes
                 [("benchmarkDocument" Core..=) Core.<$>
                    benchmarkDocument,
                  ("cpeUri" Core..=) Core.<$> cpeUri,
                  ("version" Core..=) Core.<$> version])


-- | ApprovalConfig describes configuration for manual approval of a build.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig = ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
    {
      -- | Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
      approvalRequired :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig =
  ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
    {approvalRequired = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
                   Core.<$> (o Core..:? "approvalRequired"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig{..}
          = Core.object
              (Core.catMaybes
                 [("approvalRequired" Core..=) Core.<$>
                    approvalRequired])


-- | ApprovalResult describes the decision and associated metadata of a manual approval of a build.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult = ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
    {
      -- | Output only. The time when the approval decision was made.
      approvalTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Email of the user that called the ApproveBuild API to approve or reject a build at the time that the API was called.
    , approverAccount :: (Core.Maybe Core.Text)
      -- | Optional. An optional comment for this manual approval result.
    , comment :: (Core.Maybe Core.Text)
      -- | Required. The decision of this manual approval.
    , decision :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision)
      -- | Optional. An optional URL tied to this manual approval result. This field is essentially the same as comment, except that it will be rendered by the UI differently. An example use case is a link to an external job that approved this Build.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult =
  ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
    { approvalTime = Core.Nothing
    , approverAccount = Core.Nothing
    , comment = Core.Nothing
    , decision = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
                   Core.<$>
                   (o Core..:? "approvalTime") Core.<*>
                     (o Core..:? "approverAccount")
                     Core.<*> (o Core..:? "comment")
                     Core.<*> (o Core..:? "decision")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult{..}
          = Core.object
              (Core.catMaybes
                 [("approvalTime" Core..=) Core.<$> approvalTime,
                  ("approverAccount" Core..=) Core.<$> approverAccount,
                  ("comment" Core..=) Core.<$> comment,
                  ("decision" Core..=) Core.<$> decision,
                  ("url" Core..=) Core.<$> url])


-- | Artifacts produced by a build that should be uploaded upon successful completion of all build steps.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts = ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
    {
      -- | A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account\'s credentials. The digests of the pushed images will be stored in the Build resource\'s results field. If any of the images fail to be pushed, the build is marked FAILURE.
      images :: (Core.Maybe [Core.Text])
      -- | A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account\'s credentials. If any artifacts fail to be pushed, the build is marked FAILURE.
    , mavenArtifacts :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact])
      -- | A list of npm packages to be uploaded to Artifact Registry upon successful completion of all build steps. Npm packages in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account\'s credentials. If any packages fail to be pushed, the build is marked FAILURE.
    , npmPackages :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage])
      -- | A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account\'s credentials. The location and generation of the uploaded objects will be stored in the Build resource\'s results field. If any objects fail to be pushed, the build is marked FAILURE.
    , objects :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects)
      -- | A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.
    , pythonPackages :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
newContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
    { images = Core.Nothing
    , mavenArtifacts = Core.Nothing
    , npmPackages = Core.Nothing
    , objects = Core.Nothing
    , pythonPackages = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
                   Core.<$>
                   (o Core..:? "images") Core.<*>
                     (o Core..:? "mavenArtifacts")
                     Core.<*> (o Core..:? "npmPackages")
                     Core.<*> (o Core..:? "objects")
                     Core.<*> (o Core..:? "pythonPackages"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts{..}
          = Core.object
              (Core.catMaybes
                 [("images" Core..=) Core.<$> images,
                  ("mavenArtifacts" Core..=) Core.<$> mavenArtifacts,
                  ("npmPackages" Core..=) Core.<$> npmPackages,
                  ("objects" Core..=) Core.<$> objects,
                  ("pythonPackages" Core..=) Core.<$> pythonPackages])


-- | Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects = ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
    {
      -- | Cloud Storage bucket and optional object path, in the form \"gs:\/\/bucket\/path\/to\/somewhere\/\". (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.
      location :: (Core.Maybe Core.Text)
      -- | Path globs used to match files in the build\'s workspace.
    , paths :: (Core.Maybe [Core.Text])
      -- | Output only. Stores timing information for pushing all artifact objects.
    , timing :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects =
  ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
    {location = Core.Nothing, paths = Core.Nothing, timing = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
                   Core.<$>
                   (o Core..:? "location") Core.<*> (o Core..:? "paths")
                     Core.<*> (o Core..:? "timing"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects{..}
          = Core.object
              (Core.catMaybes
                 [("location" Core..=) Core.<$> location,
                  ("paths" Core..=) Core.<$> paths,
                  ("timing" Core..=) Core.<$> timing])


-- | A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact = ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
    {
      -- | Maven @artifactId@ value used when uploading the artifact to Artifact Registry.
      artifactId :: (Core.Maybe Core.Text)
      -- | Maven @groupId@ value used when uploading the artifact to Artifact Registry.
    , groupId :: (Core.Maybe Core.Text)
      -- | Path to an artifact in the build\'s workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. \/workspace\/my-app\/target\/my-app-1.0.SNAPSHOT.jar or a relative path from \/workspace, e.g. my-app\/target\/my-app-1.0.SNAPSHOT.jar.
    , path :: (Core.Maybe Core.Text)
      -- | Artifact Registry repository, in the form \"https:\/\/$REGION-maven.pkg.dev\/$PROJECT\/$REPOSITORY\" Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix.
    , repository :: (Core.Maybe Core.Text)
      -- | Maven @version@ value used when uploading the artifact to Artifact Registry.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact =
  ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
    { artifactId = Core.Nothing
    , groupId = Core.Nothing
    , path = Core.Nothing
    , repository = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
                   Core.<$>
                   (o Core..:? "artifactId") Core.<*>
                     (o Core..:? "groupId")
                     Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "repository")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact{..}
          = Core.object
              (Core.catMaybes
                 [("artifactId" Core..=) Core.<$> artifactId,
                  ("groupId" Core..=) Core.<$> groupId,
                  ("path" Core..=) Core.<$> path,
                  ("repository" Core..=) Core.<$> repository,
                  ("version" Core..=) Core.<$> version])


-- | Npm package to upload to Artifact Registry upon successful completion of all build steps.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage = ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage
    {
      -- | Path to the package.json. e.g. workspace\/path\/to\/package
      packagePath :: (Core.Maybe Core.Text)
      -- | Artifact Registry repository, in the form \"https:\/\/$REGION-npm.pkg.dev\/$PROJECT\/$REPOSITORY\" Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix.
    , repository :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage
newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage =
  ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage
    {packagePath = Core.Nothing, repository = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage
                   Core.<$>
                   (o Core..:? "packagePath") Core.<*>
                     (o Core..:? "repository"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage{..}
          = Core.object
              (Core.catMaybes
                 [("packagePath" Core..=) Core.<$> packagePath,
                  ("repository" Core..=) Core.<$> repository])


-- | Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage = ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
    {
      -- | Path globs used to match files in the build\'s workspace. For Python\/ Twine, this is usually @dist\/*@, and sometimes additionally an @.asc@ file.
      paths :: (Core.Maybe [Core.Text])
      -- | Artifact Registry repository, in the form \"https:\/\/$REGION-python.pkg.dev\/$PROJECT\/$REPOSITORY\" Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix.
    , repository :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage =
  ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
    {paths = Core.Nothing, repository = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
                   Core.<$>
                   (o Core..:? "paths") Core.<*>
                     (o Core..:? "repository"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage{..}
          = Core.object
              (Core.catMaybes
                 [("paths" Core..=) Core.<$> paths,
                  ("repository" Core..=) Core.<$> repository])


-- | A build resource in the Cloud Build API. At a high level, a @Build@ describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT/ID: the project ID of the build. - $PROJECT/NUMBER: the project number of the build. - $LOCATION: the location\/region of the build. - $BUILD/ID: the autogenerated ID of the build. - $REPO/NAME: the source repository name specified by RepoSource. - $BRANCH/NAME: the branch name specified by RepoSource. - $TAG/NAME: the tag name specified by RepoSource. - $REVISION/ID or $COMMIT/SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT/SHA: first 7 characters of $REVISION/ID or $COMMIT_SHA.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Build' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1Build = ContaineranalysisGoogleDevtoolsCloudbuildV1Build
    {
      -- | Output only. Describes this build\'s approval configuration, status, and result.
      approval :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval)
      -- | Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
    , artifacts :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts)
      -- | Secrets and secret environment variables.
    , availableSecrets :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets)
      -- | Output only. The ID of the @BuildTrigger@ that triggered this build, if it was triggered automatically.
    , buildTriggerId :: (Core.Maybe Core.Text)
      -- | Output only. Time at which the request to create the build was received.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Contains information about the build when status=FAILURE.
    , failureInfo :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo)
      -- | Output only. Time at which execution of the build was finished. The difference between finish/time and start/time is the duration of the build\'s execution.
    , finishTime :: (Core.Maybe Core.DateTime)
      -- | Optional. Configuration for git operations.
    , gitConfig :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig)
      -- | Output only. Unique identifier of the build.
    , id :: (Core.Maybe Core.Text)
      -- | A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account\'s credentials. The digests of the pushed images will be stored in the @Build@ resource\'s results field. If any of the images fail to be pushed, the build status is marked @FAILURE@.
    , images :: (Core.Maybe [Core.Text])
      -- | Output only. URL to logs for this build in Google Cloud Console.
    , logUrl :: (Core.Maybe Core.Text)
      -- | Cloud Storage bucket where logs should be written (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>). Logs file names will be of the format @${logs_bucket}\/log-${build_id}.txt@.
    , logsBucket :: (Core.Maybe Core.Text)
      -- | Output only. The \'Build\' name with format: @projects\/{project}\/locations\/{location}\/builds\/{build}@, where {build} is a unique identifier generated by the service.
    , name :: (Core.Maybe Core.Text)
      -- | Special options for this build.
    , options :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions)
      -- | Output only. ID of the project.
    , projectId :: (Core.Maybe Core.Text)
      -- | TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be @EXPIRED@. The TTL starts ticking from create_time.
    , queueTtl :: (Core.Maybe Core.Duration)
      -- | Output only. Results of the build.
    , results :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1Results)
      -- | Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use @available_secrets@ to configure builds to access secrets from Secret Manager. For instructions, see: https:\/\/cloud.google.com\/cloud-build\/docs\/securing-builds\/use-secrets
    , secrets :: (Core.Maybe [ContaineranalysisGoogleDevtoolsCloudbuildV1Secret])
      -- | IAM service account whose credentials will be used at build runtime. Must be of the format @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. ACCOUNT can be email address or uniqueId of the service account.
    , serviceAccount :: (Core.Maybe Core.Text)
      -- | Optional. The location of the source files to build.
    , source :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1Source)
      -- | Output only. A permanent fixed identifier for source.
    , sourceProvenance :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance)
      -- | Output only. Time at which execution of the build was started.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Status of the build.
    , status :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status)
      -- | Output only. Customer-readable message about the current status.
    , statusDetail :: (Core.Maybe Core.Text)
      -- | Required. The operations to be performed on the workspace.
    , steps :: (Core.Maybe [ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep])
      -- | Substitutions data for @Build@ resource.
    , substitutions :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions)
      -- | Tags for annotation of a @Build@. These are not docker tags.
    , tags :: (Core.Maybe [Core.Text])
      -- | Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be @TIMEOUT@. @timeout@ starts ticking from @startTime@. Default time is 60 minutes.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all artifacts including docker images and non docker artifacts. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included.
    , timing :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing)
      -- | Output only. Non-fatal problems encountered during the execution of the build.
    , warnings :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Build' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Build 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1Build
newContaineranalysisGoogleDevtoolsCloudbuildV1Build =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build
    { approval = Core.Nothing
    , artifacts = Core.Nothing
    , availableSecrets = Core.Nothing
    , buildTriggerId = Core.Nothing
    , createTime = Core.Nothing
    , failureInfo = Core.Nothing
    , finishTime = Core.Nothing
    , gitConfig = Core.Nothing
    , id = Core.Nothing
    , images = Core.Nothing
    , logUrl = Core.Nothing
    , logsBucket = Core.Nothing
    , name = Core.Nothing
    , options = Core.Nothing
    , projectId = Core.Nothing
    , queueTtl = Core.Nothing
    , results = Core.Nothing
    , secrets = Core.Nothing
    , serviceAccount = Core.Nothing
    , source = Core.Nothing
    , sourceProvenance = Core.Nothing
    , startTime = Core.Nothing
    , status = Core.Nothing
    , statusDetail = Core.Nothing
    , steps = Core.Nothing
    , substitutions = Core.Nothing
    , tags = Core.Nothing
    , timeout = Core.Nothing
    , timing = Core.Nothing
    , warnings = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Build
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Build"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Build
                   Core.<$>
                   (o Core..:? "approval") Core.<*>
                     (o Core..:? "artifacts")
                     Core.<*> (o Core..:? "availableSecrets")
                     Core.<*> (o Core..:? "buildTriggerId")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "failureInfo")
                     Core.<*> (o Core..:? "finishTime")
                     Core.<*> (o Core..:? "gitConfig")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "images")
                     Core.<*> (o Core..:? "logUrl")
                     Core.<*> (o Core..:? "logsBucket")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "options")
                     Core.<*> (o Core..:? "projectId")
                     Core.<*> (o Core..:? "queueTtl")
                     Core.<*> (o Core..:? "results")
                     Core.<*> (o Core..:? "secrets")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "source")
                     Core.<*> (o Core..:? "sourceProvenance")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "statusDetail")
                     Core.<*> (o Core..:? "steps")
                     Core.<*> (o Core..:? "substitutions")
                     Core.<*> (o Core..:? "tags")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "timing")
                     Core.<*> (o Core..:? "warnings"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Build
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Build{..}
          = Core.object
              (Core.catMaybes
                 [("approval" Core..=) Core.<$> approval,
                  ("artifacts" Core..=) Core.<$> artifacts,
                  ("availableSecrets" Core..=) Core.<$>
                    availableSecrets,
                  ("buildTriggerId" Core..=) Core.<$> buildTriggerId,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("failureInfo" Core..=) Core.<$> failureInfo,
                  ("finishTime" Core..=) Core.<$> finishTime,
                  ("gitConfig" Core..=) Core.<$> gitConfig,
                  ("id" Core..=) Core.<$> id,
                  ("images" Core..=) Core.<$> images,
                  ("logUrl" Core..=) Core.<$> logUrl,
                  ("logsBucket" Core..=) Core.<$> logsBucket,
                  ("name" Core..=) Core.<$> name,
                  ("options" Core..=) Core.<$> options,
                  ("projectId" Core..=) Core.<$> projectId,
                  ("queueTtl" Core..=) Core.<$> queueTtl,
                  ("results" Core..=) Core.<$> results,
                  ("secrets" Core..=) Core.<$> secrets,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("source" Core..=) Core.<$> source,
                  ("sourceProvenance" Core..=) Core.<$>
                    sourceProvenance,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("status" Core..=) Core.<$> status,
                  ("statusDetail" Core..=) Core.<$> statusDetail,
                  ("steps" Core..=) Core.<$> steps,
                  ("substitutions" Core..=) Core.<$> substitutions,
                  ("tags" Core..=) Core.<$> tags,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("timing" Core..=) Core.<$> timing,
                  ("warnings" Core..=) Core.<$> warnings])


-- | Substitutions data for @Build@ resource.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions additional =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
    {additional = additional}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions{..}
          = Core.toJSON additional


-- | Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all artifacts including docker images and non docker artifacts. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
    {
      -- | 
      additional :: (Core.HashMap Core.Text
   ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing 
    ::  Core.HashMap Core.Text ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
       -- ^  See 'additional'.
    -> ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing additional =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
    {additional = additional}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing{..}
          = Core.toJSON additional


-- | BuildApproval describes a build\'s approval configuration, state, and result.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
    {
      -- | Output only. Configuration for manual approval of this build.
      config :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig)
      -- | Output only. Result of manual approval for this Build.
    , result :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult)
      -- | Output only. The state of this build\'s approval.
    , state :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval =
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
    {config = Core.Nothing, result = Core.Nothing, state = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
                   Core.<$>
                   (o Core..:? "config") Core.<*> (o Core..:? "result")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval{..}
          = Core.object
              (Core.catMaybes
                 [("config" Core..=) Core.<$> config,
                  ("result" Core..=) Core.<$> result,
                  ("state" Core..=) Core.<$> state])


-- | A fatal problem encountered during the execution of the build.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
    {
      -- | Explains the failure issue in more detail using hard-coded text.
      detail :: (Core.Maybe Core.Text)
      -- | The name of the failure.
    , type' :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo =
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
    {detail = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
                   Core.<$>
                   (o Core..:? "detail") Core.<*> (o Core..:? "type"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo{..}
          = Core.object
              (Core.catMaybes
                 [("detail" Core..=) Core.<$> detail,
                  ("type" Core..=) Core.<$> type'])


-- | Optional arguments to enable specific features of builds.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
    {
      -- | Option to include built-in and custom substitutions as env variables for all build steps.
      automapSubstitutions :: (Core.Maybe Core.Bool)
      -- | Optional. Option to specify how default logs buckets are setup.
    , defaultLogsBucketBehavior :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior)
      -- | Requested disk size for the VM that runs the build. Note that this is /NOT/ \"disk free\"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 4000GB; builds that request more than the maximum are rejected with an error.
    , diskSizeGb :: (Core.Maybe Core.Int64)
      -- | Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
    , dynamicSubstitutions :: (Core.Maybe Core.Bool)
      -- | A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".
    , env :: (Core.Maybe [Core.Text])
      -- | Option to define build log streaming behavior to Cloud Storage.
    , logStreamingOption :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption)
      -- | Option to specify the logging mode, which determines if and where build logs are stored.
    , logging :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging)
      -- | Compute Engine machine type on which to run the build.
    , machineType :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType)
      -- | Optional. Specification for execution on a @WorkerPool@. See <https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool running builds in a private pool> for more information.
    , pool :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption)
      -- | Requested verifiability options.
    , requestedVerifyOption :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption)
      -- | A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build\'s @Secret@. These variables will be available to all build steps in this build.
    , secretEnv :: (Core.Maybe [Core.Text])
      -- | Requested hash for SourceProvenance.
    , sourceProvenanceHash :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem])
      -- | Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
    , substitutionOption :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption)
      -- | Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
    , volumes :: (Core.Maybe [ContaineranalysisGoogleDevtoolsCloudbuildV1Volume])
      -- | This field deprecated; please use @pool.name@ instead.
    , workerPool :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions =
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
    { automapSubstitutions = Core.Nothing
    , defaultLogsBucketBehavior = Core.Nothing
    , diskSizeGb = Core.Nothing
    , dynamicSubstitutions = Core.Nothing
    , env = Core.Nothing
    , logStreamingOption = Core.Nothing
    , logging = Core.Nothing
    , machineType = Core.Nothing
    , pool = Core.Nothing
    , requestedVerifyOption = Core.Nothing
    , secretEnv = Core.Nothing
    , sourceProvenanceHash = Core.Nothing
    , substitutionOption = Core.Nothing
    , volumes = Core.Nothing
    , workerPool = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
                   Core.<$>
                   (o Core..:? "automapSubstitutions") Core.<*>
                     (o Core..:? "defaultLogsBucketBehavior")
                     Core.<*>
                     (o Core..:? "diskSizeGb" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "dynamicSubstitutions")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "logStreamingOption")
                     Core.<*> (o Core..:? "logging")
                     Core.<*> (o Core..:? "machineType")
                     Core.<*> (o Core..:? "pool")
                     Core.<*> (o Core..:? "requestedVerifyOption")
                     Core.<*> (o Core..:? "secretEnv")
                     Core.<*> (o Core..:? "sourceProvenanceHash")
                     Core.<*> (o Core..:? "substitutionOption")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "workerPool"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions{..}
          = Core.object
              (Core.catMaybes
                 [("automapSubstitutions" Core..=) Core.<$>
                    automapSubstitutions,
                  ("defaultLogsBucketBehavior" Core..=) Core.<$>
                    defaultLogsBucketBehavior,
                  ("diskSizeGb" Core..=) Core.. Core.AsText Core.<$>
                    diskSizeGb,
                  ("dynamicSubstitutions" Core..=) Core.<$>
                    dynamicSubstitutions,
                  ("env" Core..=) Core.<$> env,
                  ("logStreamingOption" Core..=) Core.<$>
                    logStreamingOption,
                  ("logging" Core..=) Core.<$> logging,
                  ("machineType" Core..=) Core.<$> machineType,
                  ("pool" Core..=) Core.<$> pool,
                  ("requestedVerifyOption" Core..=) Core.<$>
                    requestedVerifyOption,
                  ("secretEnv" Core..=) Core.<$> secretEnv,
                  ("sourceProvenanceHash" Core..=) Core.<$>
                    sourceProvenanceHash,
                  ("substitutionOption" Core..=) Core.<$>
                    substitutionOption,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("workerPool" Core..=) Core.<$> workerPool])


-- | Details about how a build should be executed on a @WorkerPool@. See <https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool running builds in a private pool> for more information.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
    {
      -- | The @WorkerPool@ resource to execute the build on. You must have @cloudbuild.workerpools.use@ on the project hosting the WorkerPool. Format projects\/{project}\/locations\/{location}\/workerPools\/{workerPoolId}
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption =
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
    {name = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
                   Core.<$> (o Core..:? "name"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | A step in the build pipeline.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
    {
      -- | Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence.
      allowExitCodes :: (Core.Maybe [Core.Int32])
      -- | Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field.
    , allowFailure :: (Core.Maybe Core.Bool)
      -- | A list of arguments that will be presented to the step when it is started. If the image used to run the step\'s container has an entrypoint, the @args@ are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.
    , args :: (Core.Maybe [Core.Text])
      -- | Option to include built-in and custom substitutions as env variables for this build step. This option will override the global option in BuildOption.
    , automapSubstitutions :: (Core.Maybe Core.Bool)
      -- | Working directory to use when running this step\'s container. If this value is a relative path, it is relative to the build\'s working directory. If this value is absolute, it may be outside the build\'s working directory, in which case the contents of the path may not be persisted across build step executions, unless a @volume@ for that path is specified. If the build specifies a @RepoSource@ with @dir@ and a step with a @dir@, which specifies an absolute path, the @RepoSource@ @dir@ is ignored for the step\'s execution.
    , dir :: (Core.Maybe Core.Text)
      -- | Entrypoint to be used instead of the build step image\'s default entrypoint. If unset, the image\'s default entrypoint is used.
    , entrypoint :: (Core.Maybe Core.Text)
      -- | A list of environment variable definitions to be used when running a step. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".
    , env :: (Core.Maybe [Core.Text])
      -- | Output only. Return code from running the step.
    , exitCode :: (Core.Maybe Core.Int32)
      -- | Unique identifier for this build step, used in @wait_for@ to reference this build step as a dependency.
    , id :: (Core.Maybe Core.Text)
      -- | Required. The name of the container image that will run this particular build step. If the image is available in the host\'s Docker daemon\'s cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account\'s credentials if necessary. The Docker daemon\'s cache will already have the latest versions of all of the officially supported build steps (<https://github.com/GoogleCloudPlatform/cloud-builders>). The Docker daemon will also have cached many of the layers for some popular images, like \"ubuntu\", \"debian\", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host\'s Docker daemon\'s cache and is available to use as the name for a later build step.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Stores timing information for pulling this build step\'s builder image only.
    , pullTiming :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
      -- | A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.
    , script :: (Core.Maybe Core.Text)
      -- | A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build\'s @Secret@.
    , secretEnv :: (Core.Maybe [Core.Text])
      -- | Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
    , status :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status)
      -- | Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.
    , timeout :: (Core.Maybe Core.Duration)
      -- | Output only. Stores timing information for executing this build step.
    , timing :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
      -- | List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.
    , volumes :: (Core.Maybe [ContaineranalysisGoogleDevtoolsCloudbuildV1Volume])
      -- | The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in @wait_for@ have completed successfully. If @wait_for@ is empty, this build step will start when all previous build steps in the @Build.Steps@ list have completed successfully.
    , waitFor :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep =
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
    { allowExitCodes = Core.Nothing
    , allowFailure = Core.Nothing
    , args = Core.Nothing
    , automapSubstitutions = Core.Nothing
    , dir = Core.Nothing
    , entrypoint = Core.Nothing
    , env = Core.Nothing
    , exitCode = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , pullTiming = Core.Nothing
    , script = Core.Nothing
    , secretEnv = Core.Nothing
    , status = Core.Nothing
    , timeout = Core.Nothing
    , timing = Core.Nothing
    , volumes = Core.Nothing
    , waitFor = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
                   Core.<$>
                   (o Core..:? "allowExitCodes") Core.<*>
                     (o Core..:? "allowFailure")
                     Core.<*> (o Core..:? "args")
                     Core.<*> (o Core..:? "automapSubstitutions")
                     Core.<*> (o Core..:? "dir")
                     Core.<*> (o Core..:? "entrypoint")
                     Core.<*> (o Core..:? "env")
                     Core.<*> (o Core..:? "exitCode")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "pullTiming")
                     Core.<*> (o Core..:? "script")
                     Core.<*> (o Core..:? "secretEnv")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "timeout")
                     Core.<*> (o Core..:? "timing")
                     Core.<*> (o Core..:? "volumes")
                     Core.<*> (o Core..:? "waitFor"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep{..}
          = Core.object
              (Core.catMaybes
                 [("allowExitCodes" Core..=) Core.<$> allowExitCodes,
                  ("allowFailure" Core..=) Core.<$> allowFailure,
                  ("args" Core..=) Core.<$> args,
                  ("automapSubstitutions" Core..=) Core.<$>
                    automapSubstitutions,
                  ("dir" Core..=) Core.<$> dir,
                  ("entrypoint" Core..=) Core.<$> entrypoint,
                  ("env" Core..=) Core.<$> env,
                  ("exitCode" Core..=) Core.<$> exitCode,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("pullTiming" Core..=) Core.<$> pullTiming,
                  ("script" Core..=) Core.<$> script,
                  ("secretEnv" Core..=) Core.<$> secretEnv,
                  ("status" Core..=) Core.<$> status,
                  ("timeout" Core..=) Core.<$> timeout,
                  ("timing" Core..=) Core.<$> timing,
                  ("volumes" Core..=) Core.<$> volumes,
                  ("waitFor" Core..=) Core.<$> waitFor])


-- | A non-fatal problem encountered during the execution of the build.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
    {
      -- | The priority for this warning.
      priority :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority)
      -- | Explanation of the warning generated.
    , text :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
newContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning =
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
    {priority = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
                   Core.<$>
                   (o Core..:? "priority") Core.<*> (o Core..:? "text"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning{..}
          = Core.object
              (Core.catMaybes
                 [("priority" Core..=) Core.<$> priority,
                  ("text" Core..=) Core.<$> text])


-- | An image built by the pipeline.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage = ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
    {
      -- | Docker Registry 2.0 digest.
      digest :: (Core.Maybe Core.Text)
      -- | Name used to push the container image to Google Container Registry, as presented to @docker push@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Stores timing information for pushing the specified image.
    , pushTiming :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
newContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage =
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
    {digest = Core.Nothing, name = Core.Nothing, pushTiming = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
                   Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "pushTiming"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("name" Core..=) Core.<$> name,
                  ("pushTiming" Core..=) Core.<$> pushTiming])


-- | Location of the source in a 2nd-gen Google Cloud Build repository resource.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository = ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
    {
      -- | Optional. Directory, relative to the source root, in which to run the build.
      dir :: (Core.Maybe Core.Text)
      -- | Required. Name of the Google Cloud Build repository, formatted as @projects\/*\/locations\/*\/connections\/*\/repositories\/*@.
    , repository :: (Core.Maybe Core.Text)
      -- | Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
    , revision :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
newContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository =
  ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
    {dir = Core.Nothing, repository = Core.Nothing, revision = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
                   Core.<$>
                   (o Core..:? "dir") Core.<*> (o Core..:? "repository")
                     Core.<*> (o Core..:? "revision"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository{..}
          = Core.object
              (Core.catMaybes
                 [("dir" Core..=) Core.<$> dir,
                  ("repository" Core..=) Core.<$> repository,
                  ("revision" Core..=) Core.<$> revision])


-- | This config defines the location of a source through Developer Connect.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig = ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig
    {
      -- | Required. Directory, relative to the source root, in which to run the build.
      dir :: (Core.Maybe Core.Text)
      -- | Required. The Developer Connect Git repository link, formatted as @projects\/*\/locations\/*\/connections\/*\/gitRepositoryLink\/*@.
    , gitRepositoryLink :: (Core.Maybe Core.Text)
      -- | Required. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
    , revision :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig
newContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig =
  ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig
    { dir = Core.Nothing
    , gitRepositoryLink = Core.Nothing
    , revision = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig
                   Core.<$>
                   (o Core..:? "dir") Core.<*>
                     (o Core..:? "gitRepositoryLink")
                     Core.<*> (o Core..:? "revision"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig{..}
          = Core.object
              (Core.catMaybes
                 [("dir" Core..=) Core.<$> dir,
                  ("gitRepositoryLink" Core..=) Core.<$>
                    gitRepositoryLink,
                  ("revision" Core..=) Core.<$> revision])


-- | Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes = ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
    {
      -- | Collection of file hashes.
      fileHash :: (Core.Maybe [ContaineranalysisGoogleDevtoolsCloudbuildV1Hash])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
newContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes =
  ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
    {fileHash = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
                   Core.<$> (o Core..:? "fileHash"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes{..}
          = Core.object
              (Core.catMaybes
                 [("fileHash" Core..=) Core.<$> fileHash])


-- | GitConfig is a configuration for git operations.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig = ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig
    {
      -- | Configuration for HTTP related git operations.
      http :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig
newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig =
  ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig {http = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig
                   Core.<$> (o Core..:? "http"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig{..}
          = Core.object
              (Core.catMaybes [("http" Core..=) Core.<$> http])


-- | HttpConfig is a configuration for HTTP related git operations.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig = ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig
    {
      -- | SecretVersion resource of the HTTP proxy URL. The Service Account used in the build (either the default Service Account or user-specified Service Account) should have @secretmanager.versions.access@ permissions on this secret. The proxy URL should be in format @protocol:\/\/\@]proxyhost[:port]@.
      proxySecretVersionName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig
newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig =
  ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig
    {proxySecretVersionName = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig
                   Core.<$> (o Core..:? "proxySecretVersionName"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig{..}
          = Core.object
              (Core.catMaybes
                 [("proxySecretVersionName" Core..=) Core.<$>
                    proxySecretVersionName])


-- | Location of the source in any accessible Git repository.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1GitSource' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource = ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
    {
      -- | Optional. Directory, relative to the source root, in which to run the build. This must be a relative path. If a step\'s @dir@ is specified and is an absolute path, this value is ignored for that step\'s execution.
      dir :: (Core.Maybe Core.Text)
      -- | Optional. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. Cloud Build uses @git fetch@ to fetch the revision from the Git repository; therefore make sure that the string you provide for @revision@ is parsable by the command. For information on string values accepted by @git fetch@, see https:\/\/git-scm.com\/docs\/gitrevisions#/specifying/revisions. For information on @git fetch@, see https:\/\/git-scm.com\/docs\/git-fetch.
    , revision :: (Core.Maybe Core.Text)
      -- | Required. Location of the Git repo to build. This will be used as a @git remote@, see https:\/\/git-scm.com\/docs\/git-remote.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1GitSource 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
newContaineranalysisGoogleDevtoolsCloudbuildV1GitSource =
  ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
    {dir = Core.Nothing, revision = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
                   Core.<$>
                   (o Core..:? "dir") Core.<*> (o Core..:? "revision")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource{..}
          = Core.object
              (Core.catMaybes
                 [("dir" Core..=) Core.<$> dir,
                  ("revision" Core..=) Core.<$> revision,
                  ("url" Core..=) Core.<$> url])


-- | Container message for hash values.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Hash' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1Hash = ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
    {
      -- | The type of hash that was performed.
      type' :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type)
      -- | The hash value.
    , value :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Hash' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Hash 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
newContaineranalysisGoogleDevtoolsCloudbuildV1Hash =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
    {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Hash"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
                   Core.<$>
                   (o Core..:? "type") Core.<*> (o Core..:? "value"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Hash{..}
          = Core.object
              (Core.catMaybes
                 [("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


-- | Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret = ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
    {
      -- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
      envMap :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap)
      -- | Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects\//\/locations\//\/keyRings\//\/cryptoKeys\//
    , kmsKeyName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret =
  ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
    {envMap = Core.Nothing, kmsKeyName = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
                   Core.<$>
                   (o Core..:? "envMap") Core.<*>
                     (o Core..:? "kmsKeyName"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret{..}
          = Core.object
              (Core.catMaybes
                 [("envMap" Core..=) Core.<$> envMap,
                  ("kmsKeyName" Core..=) Core.<$> kmsKeyName])


-- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap = ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap 
    ::  Core.HashMap Core.Text Core.Base64
       -- ^  See 'additional'.
    -> ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap additional =
  ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
    {additional = additional}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap{..}
          = Core.toJSON additional


-- | Location of the source in a Google Cloud Source Repository.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource = ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
    {
      -- | Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
      branchName :: (Core.Maybe Core.Text)
      -- | Explicit commit SHA to build.
    , commitSha :: (Core.Maybe Core.Text)
      -- | Optional. Directory, relative to the source root, in which to run the build. This must be a relative path. If a step\'s @dir@ is specified and is an absolute path, this value is ignored for that step\'s execution.
    , dir :: (Core.Maybe Core.Text)
      -- | Optional. Only trigger a build if the revision regex does NOT match the revision regex.
    , invertRegex :: (Core.Maybe Core.Bool)
      -- | Optional. ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
    , projectId :: (Core.Maybe Core.Text)
      -- | Required. Name of the Cloud Source Repository.
    , repoName :: (Core.Maybe Core.Text)
      -- | Optional. Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
    , substitutions :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions)
      -- | Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    , tagName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource =
  ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
    { branchName = Core.Nothing
    , commitSha = Core.Nothing
    , dir = Core.Nothing
    , invertRegex = Core.Nothing
    , projectId = Core.Nothing
    , repoName = Core.Nothing
    , substitutions = Core.Nothing
    , tagName = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
                   Core.<$>
                   (o Core..:? "branchName") Core.<*>
                     (o Core..:? "commitSha")
                     Core.<*> (o Core..:? "dir")
                     Core.<*> (o Core..:? "invertRegex")
                     Core.<*> (o Core..:? "projectId")
                     Core.<*> (o Core..:? "repoName")
                     Core.<*> (o Core..:? "substitutions")
                     Core.<*> (o Core..:? "tagName"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource{..}
          = Core.object
              (Core.catMaybes
                 [("branchName" Core..=) Core.<$> branchName,
                  ("commitSha" Core..=) Core.<$> commitSha,
                  ("dir" Core..=) Core.<$> dir,
                  ("invertRegex" Core..=) Core.<$> invertRegex,
                  ("projectId" Core..=) Core.<$> projectId,
                  ("repoName" Core..=) Core.<$> repoName,
                  ("substitutions" Core..=) Core.<$> substitutions,
                  ("tagName" Core..=) Core.<$> tagName])


-- | Optional. Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions = ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions additional =
  ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
    {additional = additional}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions{..}
          = Core.toJSON additional


-- | Artifacts created by the build pipeline.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Results' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1Results = ContaineranalysisGoogleDevtoolsCloudbuildV1Results
    {
      -- | Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
      artifactManifest :: (Core.Maybe Core.Text)
      -- | Time to push all non-container artifacts to Cloud Storage.
    , artifactTiming :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
      -- | List of build step digests, in the order corresponding to build step indices.
    , buildStepImages :: (Core.Maybe [Core.Text])
      -- | List of build step outputs, produced by builder images, in the order corresponding to build step indices. <https://cloud.google.com/cloud-build/docs/cloud-builders Cloud Builders> can produce this output by writing to @$BUILDER_OUTPUT\/output@. Only the first 50KB of data is stored. Note that the @$BUILDER_OUTPUT@ variable is read-only and can\'t be substituted.
    , buildStepOutputs :: (Core.Maybe [Core.Base64])
      -- | Container images that were built as a part of the build.
    , images :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage])
      -- | Maven artifacts uploaded to Artifact Registry at the end of the build.
    , mavenArtifacts :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact])
      -- | Npm packages uploaded to Artifact Registry at the end of the build.
    , npmPackages :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage])
      -- | Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
    , numArtifacts :: (Core.Maybe Core.Int64)
      -- | Python artifacts uploaded to Artifact Registry at the end of the build.
    , pythonPackages :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Results' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Results 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1Results
newContaineranalysisGoogleDevtoolsCloudbuildV1Results =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Results
    { artifactManifest = Core.Nothing
    , artifactTiming = Core.Nothing
    , buildStepImages = Core.Nothing
    , buildStepOutputs = Core.Nothing
    , images = Core.Nothing
    , mavenArtifacts = Core.Nothing
    , npmPackages = Core.Nothing
    , numArtifacts = Core.Nothing
    , pythonPackages = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Results
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Results"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Results
                   Core.<$>
                   (o Core..:? "artifactManifest") Core.<*>
                     (o Core..:? "artifactTiming")
                     Core.<*> (o Core..:? "buildStepImages")
                     Core.<*> (o Core..:? "buildStepOutputs")
                     Core.<*> (o Core..:? "images")
                     Core.<*> (o Core..:? "mavenArtifacts")
                     Core.<*> (o Core..:? "npmPackages")
                     Core.<*>
                     (o Core..:? "numArtifacts" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "pythonPackages"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Results
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Results{..}
          = Core.object
              (Core.catMaybes
                 [("artifactManifest" Core..=) Core.<$>
                    artifactManifest,
                  ("artifactTiming" Core..=) Core.<$> artifactTiming,
                  ("buildStepImages" Core..=) Core.<$> buildStepImages,
                  ("buildStepOutputs" Core..=) Core.<$>
                    buildStepOutputs,
                  ("images" Core..=) Core.<$> images,
                  ("mavenArtifacts" Core..=) Core.<$> mavenArtifacts,
                  ("npmPackages" Core..=) Core.<$> npmPackages,
                  ("numArtifacts" Core..=) Core.. Core.AsText Core.<$>
                    numArtifacts,
                  ("pythonPackages" Core..=) Core.<$> pythonPackages])


-- | Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use @kmsKeyName@ with @available_secrets@ instead of using @kmsKeyName@ with @secret@. For instructions see: https:\/\/cloud.google.com\/cloud-build\/docs\/securing-builds\/use-encrypted-credentials.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Secret' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1Secret = ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
    {
      -- | Cloud KMS key name to use to decrypt these envs.
      kmsKeyName :: (Core.Maybe Core.Text)
      -- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
    , secretEnv :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Secret' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Secret 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
newContaineranalysisGoogleDevtoolsCloudbuildV1Secret =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
    {kmsKeyName = Core.Nothing, secretEnv = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Secret"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
                   Core.<$>
                   (o Core..:? "kmsKeyName") Core.<*>
                     (o Core..:? "secretEnv"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Secret{..}
          = Core.object
              (Core.catMaybes
                 [("kmsKeyName" Core..=) Core.<$> kmsKeyName,
                  ("secretEnv" Core..=) Core.<$> secretEnv])


-- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv = ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv 
    ::  Core.HashMap Core.Text Core.Base64
       -- ^  See 'additional'.
    -> ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
newContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv additional =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
    {additional = additional}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv{..}
          = Core.toJSON additional


-- | Pairs a secret environment variable with a SecretVersion in Secret Manager.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret = ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
    {
      -- | Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step.
      env :: (Core.Maybe Core.Text)
      -- | Resource name of the SecretVersion. In format: projects\//\/secrets\//\/versions\/*
    , versionName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
newContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret =
  ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
    {env = Core.Nothing, versionName = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
                   Core.<$>
                   (o Core..:? "env") Core.<*>
                     (o Core..:? "versionName"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret{..}
          = Core.object
              (Core.catMaybes
                 [("env" Core..=) Core.<$> env,
                  ("versionName" Core..=) Core.<$> versionName])


-- | Secrets and secret environment variables.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Secrets' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets = ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
    {
      -- | Secrets encrypted with KMS key and the associated secret environment variable.
      inline :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret])
      -- | Secrets in Secret Manager and associated secret environment variable.
    , secretManager :: (Core.Maybe
   [ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Secrets 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
newContaineranalysisGoogleDevtoolsCloudbuildV1Secrets =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
    {inline = Core.Nothing, secretManager = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
                   Core.<$>
                   (o Core..:? "inline") Core.<*>
                     (o Core..:? "secretManager"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets{..}
          = Core.object
              (Core.catMaybes
                 [("inline" Core..=) Core.<$> inline,
                  ("secretManager" Core..=) Core.<$> secretManager])


-- | Location of the source in a supported storage service.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Source' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1Source = ContaineranalysisGoogleDevtoolsCloudbuildV1Source
    {
      -- | Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
      connectedRepository :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository)
      -- | If provided, get the source from this Developer Connect config.
    , developerConnectConfig :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig)
      -- | If provided, get the source from this Git repository.
    , gitSource :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource)
      -- | If provided, get the source from this location in a Cloud Source Repository.
    , repoSource :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource)
      -- | If provided, get the source from this location in Cloud Storage.
    , storageSource :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource)
      -- | If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description <https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher here>.
    , storageSourceManifest :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Source' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Source 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1Source
newContaineranalysisGoogleDevtoolsCloudbuildV1Source =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Source
    { connectedRepository = Core.Nothing
    , developerConnectConfig = Core.Nothing
    , gitSource = Core.Nothing
    , repoSource = Core.Nothing
    , storageSource = Core.Nothing
    , storageSourceManifest = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Source
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Source"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Source
                   Core.<$>
                   (o Core..:? "connectedRepository") Core.<*>
                     (o Core..:? "developerConnectConfig")
                     Core.<*> (o Core..:? "gitSource")
                     Core.<*> (o Core..:? "repoSource")
                     Core.<*> (o Core..:? "storageSource")
                     Core.<*> (o Core..:? "storageSourceManifest"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Source
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Source{..}
          = Core.object
              (Core.catMaybes
                 [("connectedRepository" Core..=) Core.<$>
                    connectedRepository,
                  ("developerConnectConfig" Core..=) Core.<$>
                    developerConnectConfig,
                  ("gitSource" Core..=) Core.<$> gitSource,
                  ("repoSource" Core..=) Core.<$> repoSource,
                  ("storageSource" Core..=) Core.<$> storageSource,
                  ("storageSourceManifest" Core..=) Core.<$>
                    storageSourceManifest])


-- | Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance = ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
    {
      -- | Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that @FileHashes@ will only be populated if @BuildOptions@ has requested a @SourceProvenanceHash@. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (@.tar.gz@), the @FileHash@ will be for the single path to that file.
      fileHashes :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes)
      -- | Output only. A copy of the build\'s @source.connected_repository@, if exists, with any revisions resolved.
    , resolvedConnectedRepository :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository)
      -- | Output only. A copy of the build\'s @source.git_source@, if exists, with any revisions resolved.
    , resolvedGitSource :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource)
      -- | A copy of the build\'s @source.repo_source@, if exists, with any revisions resolved.
    , resolvedRepoSource :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource)
      -- | A copy of the build\'s @source.storage_source@, if exists, with any generations resolved.
    , resolvedStorageSource :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource)
      -- | A copy of the build\'s @source.storage_source_manifest@, if exists, with any revisions resolved. This feature is in Preview.
    , resolvedStorageSourceManifest :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance =
  ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
    { fileHashes = Core.Nothing
    , resolvedConnectedRepository = Core.Nothing
    , resolvedGitSource = Core.Nothing
    , resolvedRepoSource = Core.Nothing
    , resolvedStorageSource = Core.Nothing
    , resolvedStorageSourceManifest = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
                   Core.<$>
                   (o Core..:? "fileHashes") Core.<*>
                     (o Core..:? "resolvedConnectedRepository")
                     Core.<*> (o Core..:? "resolvedGitSource")
                     Core.<*> (o Core..:? "resolvedRepoSource")
                     Core.<*> (o Core..:? "resolvedStorageSource")
                     Core.<*>
                     (o Core..:? "resolvedStorageSourceManifest"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance{..}
          = Core.object
              (Core.catMaybes
                 [("fileHashes" Core..=) Core.<$> fileHashes,
                  ("resolvedConnectedRepository" Core..=) Core.<$>
                    resolvedConnectedRepository,
                  ("resolvedGitSource" Core..=) Core.<$>
                    resolvedGitSource,
                  ("resolvedRepoSource" Core..=) Core.<$>
                    resolvedRepoSource,
                  ("resolvedStorageSource" Core..=) Core.<$>
                    resolvedStorageSource,
                  ("resolvedStorageSourceManifest" Core..=) Core.<$>
                    resolvedStorageSourceManifest])


-- | Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that @FileHashes@ will only be populated if @BuildOptions@ has requested a @SourceProvenanceHash@. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (@.tar.gz@), the @FileHash@ will be for the single path to that file.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes' smart constructor.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes = ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    {
      -- | 
      additional :: (Core.HashMap Core.Text
   ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes 
    ::  Core.HashMap Core.Text ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
       -- ^  See 'additional'.
    -> ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes additional =
  ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    {additional = additional}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes{..}
          = Core.toJSON additional


-- | Location of the source in an archive file in Cloud Storage.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource = ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
    {
      -- | Cloud Storage bucket containing the source (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>).
      bucket :: (Core.Maybe Core.Text)
      -- | Optional. Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
    , generation :: (Core.Maybe Core.Int64)
      -- | Required. Cloud Storage object containing the source. This object must be a zipped (@.zip@) or gzipped archive file (@.tar.gz@) containing source to build.
    , object :: (Core.Maybe Core.Text)
      -- | Optional. Option to specify the tool to fetch the source file for the build.
    , sourceFetcher :: (Core.Maybe
   ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource =
  ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
    { bucket = Core.Nothing
    , generation = Core.Nothing
    , object = Core.Nothing
    , sourceFetcher = Core.Nothing
    }

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
                   Core.<$>
                   (o Core..:? "bucket") Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "object")
                     Core.<*> (o Core..:? "sourceFetcher"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource{..}
          = Core.object
              (Core.catMaybes
                 [("bucket" Core..=) Core.<$> bucket,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("object" Core..=) Core.<$> object,
                  ("sourceFetcher" Core..=) Core.<$> sourceFetcher])


-- | Location of the source manifest in Cloud Storage. This feature is in Preview; see description <https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher here>.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest = ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
    {
      -- | Required. Cloud Storage bucket containing the source manifest (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>).
      bucket :: (Core.Maybe Core.Text)
      -- | Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
    , generation :: (Core.Maybe Core.Int64)
      -- | Required. Cloud Storage object containing the source manifest. This object must be a JSON file.
    , object :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest =
  ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
    {bucket = Core.Nothing, generation = Core.Nothing, object = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
                   Core.<$>
                   (o Core..:? "bucket") Core.<*>
                     (o Core..:? "generation" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "object"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest{..}
          = Core.object
              (Core.catMaybes
                 [("bucket" Core..=) Core.<$> bucket,
                  ("generation" Core..=) Core.. Core.AsText Core.<$>
                    generation,
                  ("object" Core..=) Core.<$> object])


-- | Start and end times for a build execution phase.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan = ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
    {
      -- | End of time span.
      endTime :: (Core.Maybe Core.DateTime)
      -- | Start of time span.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
newContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan =
  ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
    {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
                   Core.<$>
                   (o Core..:? "endTime") Core.<*>
                     (o Core..:? "startTime"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("startTime" Core..=) Core.<$> startTime])


-- | A Maven artifact uploaded using the MavenArtifact directive.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact = ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
    {
      -- | Hash types and values of the Maven Artifact.
      fileHashes :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes)
      -- | Output only. Stores timing information for pushing the specified artifact.
    , pushTiming :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
      -- | URI of the uploaded artifact.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact =
  ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
    {fileHashes = Core.Nothing, pushTiming = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
                   Core.<$>
                   (o Core..:? "fileHashes") Core.<*>
                     (o Core..:? "pushTiming")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact{..}
          = Core.object
              (Core.catMaybes
                 [("fileHashes" Core..=) Core.<$> fileHashes,
                  ("pushTiming" Core..=) Core.<$> pushTiming,
                  ("uri" Core..=) Core.<$> uri])


-- | An npm package uploaded to Artifact Registry using the NpmPackage directive.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage = ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage
    {
      -- | Hash types and values of the npm package.
      fileHashes :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes)
      -- | Output only. Stores timing information for pushing the specified artifact.
    , pushTiming :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
      -- | URI of the uploaded npm package.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage
newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage =
  ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage
    {fileHashes = Core.Nothing, pushTiming = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage
                   Core.<$>
                   (o Core..:? "fileHashes") Core.<*>
                     (o Core..:? "pushTiming")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage{..}
          = Core.object
              (Core.catMaybes
                 [("fileHashes" Core..=) Core.<$> fileHashes,
                  ("pushTiming" Core..=) Core.<$> pushTiming,
                  ("uri" Core..=) Core.<$> uri])


-- | Artifact uploaded using the PythonPackage directive.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage = ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
    {
      -- | Hash types and values of the Python Artifact.
      fileHashes :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes)
      -- | Output only. Stores timing information for pushing the specified artifact.
    , pushTiming :: (Core.Maybe ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan)
      -- | URI of the uploaded artifact.
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage =
  ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
    {fileHashes = Core.Nothing, pushTiming = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
                   Core.<$>
                   (o Core..:? "fileHashes") Core.<*>
                     (o Core..:? "pushTiming")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage{..}
          = Core.object
              (Core.catMaybes
                 [("fileHashes" Core..=) Core.<$> fileHashes,
                  ("pushTiming" Core..=) Core.<$> pushTiming,
                  ("uri" Core..=) Core.<$> uri])


-- | Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.
--
-- /See:/ 'newContaineranalysisGoogleDevtoolsCloudbuildV1Volume' smart constructor.
data ContaineranalysisGoogleDevtoolsCloudbuildV1Volume = ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
    {
      -- | Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.
      name :: (Core.Maybe Core.Text)
      -- | Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContaineranalysisGoogleDevtoolsCloudbuildV1Volume' with the minimum fields required to make a request.
newContaineranalysisGoogleDevtoolsCloudbuildV1Volume 
    ::  ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
newContaineranalysisGoogleDevtoolsCloudbuildV1Volume =
  ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
    {name = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
         where
        parseJSON
          = Core.withObject
              "ContaineranalysisGoogleDevtoolsCloudbuildV1Volume"
              (\ o ->
                 ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
                   Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "path"))

instance Core.ToJSON
           ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
         where
        toJSON
          ContaineranalysisGoogleDevtoolsCloudbuildV1Volume{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path])


--
-- /See:/ 'newDSSEAttestationNote' smart constructor.
newtype DSSEAttestationNote = DSSEAttestationNote
    {
      -- | DSSEHint hints at the purpose of the attestation authority.
      hint :: (Core.Maybe DSSEHint)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DSSEAttestationNote' with the minimum fields required to make a request.
newDSSEAttestationNote 
    ::  DSSEAttestationNote
newDSSEAttestationNote = DSSEAttestationNote {hint = Core.Nothing}

instance Core.FromJSON DSSEAttestationNote where
        parseJSON
          = Core.withObject "DSSEAttestationNote"
              (\ o ->
                 DSSEAttestationNote Core.<$> (o Core..:? "hint"))

instance Core.ToJSON DSSEAttestationNote where
        toJSON DSSEAttestationNote{..}
          = Core.object
              (Core.catMaybes [("hint" Core..=) Core.<$> hint])


-- | Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.
--
-- /See:/ 'newDSSEAttestationOccurrence' smart constructor.
data DSSEAttestationOccurrence = DSSEAttestationOccurrence
    {
      -- | If doing something security critical, make sure to verify the signatures in this metadata.
      envelope :: (Core.Maybe Envelope)
      -- | 
    , statement :: (Core.Maybe InTotoStatement)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DSSEAttestationOccurrence' with the minimum fields required to make a request.
newDSSEAttestationOccurrence 
    ::  DSSEAttestationOccurrence
newDSSEAttestationOccurrence =
  DSSEAttestationOccurrence {envelope = Core.Nothing, statement = Core.Nothing}

instance Core.FromJSON DSSEAttestationOccurrence
         where
        parseJSON
          = Core.withObject "DSSEAttestationOccurrence"
              (\ o ->
                 DSSEAttestationOccurrence Core.<$>
                   (o Core..:? "envelope") Core.<*>
                     (o Core..:? "statement"))

instance Core.ToJSON DSSEAttestationOccurrence where
        toJSON DSSEAttestationOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("envelope" Core..=) Core.<$> envelope,
                  ("statement" Core..=) Core.<$> statement])


-- | This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from \"readable\" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.
--
-- /See:/ 'newDSSEHint' smart constructor.
newtype DSSEHint = DSSEHint
    {
      -- | Required. The human readable name of this attestation authority, for example \"cloudbuild-prod\".
      humanReadableName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DSSEHint' with the minimum fields required to make a request.
newDSSEHint 
    ::  DSSEHint
newDSSEHint = DSSEHint {humanReadableName = Core.Nothing}

instance Core.FromJSON DSSEHint where
        parseJSON
          = Core.withObject "DSSEHint"
              (\ o ->
                 DSSEHint Core.<$> (o Core..:? "humanReadableName"))

instance Core.ToJSON DSSEHint where
        toJSON DSSEHint{..}
          = Core.object
              (Core.catMaybes
                 [("humanReadableName" Core..=) Core.<$>
                    humanReadableName])


-- | An artifact that can be deployed in some runtime.
--
-- /See:/ 'newDeploymentNote' smart constructor.
newtype DeploymentNote = DeploymentNote
    {
      -- | Required. Resource URI for the artifact being deployed.
      resourceUri :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentNote' with the minimum fields required to make a request.
newDeploymentNote 
    ::  DeploymentNote
newDeploymentNote = DeploymentNote {resourceUri = Core.Nothing}

instance Core.FromJSON DeploymentNote where
        parseJSON
          = Core.withObject "DeploymentNote"
              (\ o ->
                 DeploymentNote Core.<$> (o Core..:? "resourceUri"))

instance Core.ToJSON DeploymentNote where
        toJSON DeploymentNote{..}
          = Core.object
              (Core.catMaybes
                 [("resourceUri" Core..=) Core.<$> resourceUri])


-- | The period during which some deployable was active in a runtime.
--
-- /See:/ 'newDeploymentOccurrence' smart constructor.
data DeploymentOccurrence = DeploymentOccurrence
    {
      -- | Address of the runtime element hosting this deployment.
      address :: (Core.Maybe Core.Text)
      -- | Configuration used to create this deployment.
    , config :: (Core.Maybe Core.Text)
      -- | Required. Beginning of the lifetime of this deployment.
    , deployTime :: (Core.Maybe Core.DateTime)
      -- | Platform hosting this deployment.
    , platform :: (Core.Maybe DeploymentOccurrence_Platform)
      -- | Output only. Resource URI for the artifact being deployed taken from the deployable field with the same name.
    , resourceUri :: (Core.Maybe [Core.Text])
      -- | End of the lifetime of this deployment.
    , undeployTime :: (Core.Maybe Core.DateTime)
      -- | Identity of the user that triggered this deployment.
    , userEmail :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentOccurrence' with the minimum fields required to make a request.
newDeploymentOccurrence 
    ::  DeploymentOccurrence
newDeploymentOccurrence =
  DeploymentOccurrence
    { address = Core.Nothing
    , config = Core.Nothing
    , deployTime = Core.Nothing
    , platform = Core.Nothing
    , resourceUri = Core.Nothing
    , undeployTime = Core.Nothing
    , userEmail = Core.Nothing
    }

instance Core.FromJSON DeploymentOccurrence where
        parseJSON
          = Core.withObject "DeploymentOccurrence"
              (\ o ->
                 DeploymentOccurrence Core.<$>
                   (o Core..:? "address") Core.<*> (o Core..:? "config")
                     Core.<*> (o Core..:? "deployTime")
                     Core.<*> (o Core..:? "platform")
                     Core.<*> (o Core..:? "resourceUri")
                     Core.<*> (o Core..:? "undeployTime")
                     Core.<*> (o Core..:? "userEmail"))

instance Core.ToJSON DeploymentOccurrence where
        toJSON DeploymentOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("config" Core..=) Core.<$> config,
                  ("deployTime" Core..=) Core.<$> deployTime,
                  ("platform" Core..=) Core.<$> platform,
                  ("resourceUri" Core..=) Core.<$> resourceUri,
                  ("undeployTime" Core..=) Core.<$> undeployTime,
                  ("userEmail" Core..=) Core.<$> userEmail])


-- | A detail for a distro and package affected by this vulnerability and its associated fix (if one is available).
--
-- /See:/ 'newDetail' smart constructor.
data Detail = Detail
    {
      -- | Required. The <https://cpe.mitre.org/specification/ CPE URI> this vulnerability affects.
      affectedCpeUri :: (Core.Maybe Core.Text)
      -- | Required. The package this vulnerability affects.
    , affectedPackage :: (Core.Maybe Core.Text)
      -- | The version number at the end of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected/version/start and affected/version/end will be the same in that Detail.
    , affectedVersionEnd :: (Core.Maybe Version)
      -- | The version number at the start of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected/version/start and affected/version/end will be the same in that Detail.
    , affectedVersionStart :: (Core.Maybe Version)
      -- | A vendor-specific description of this vulnerability.
    , description :: (Core.Maybe Core.Text)
      -- | The distro recommended <https://cpe.mitre.org/specification/ CPE URI> to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected/cpe/uri.
    , fixedCpeUri :: (Core.Maybe Core.Text)
      -- | The distro recommended package to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_package.
    , fixedPackage :: (Core.Maybe Core.Text)
      -- | The distro recommended version to update to that contains a fix for this vulnerability. Setting this to VersionKind.MAXIMUM means no such version is yet available.
    , fixedVersion :: (Core.Maybe Version)
      -- | Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
    , isObsolete :: (Core.Maybe Core.Bool)
      -- | The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
    , packageType :: (Core.Maybe Core.Text)
      -- | The distro assigned severity of this vulnerability.
    , severityName :: (Core.Maybe Core.Text)
      -- | The source from which the information in this Detail was obtained.
    , source :: (Core.Maybe Core.Text)
      -- | The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
    , sourceUpdateTime :: (Core.Maybe Core.DateTime)
      -- | The name of the vendor of the product.
    , vendor :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Detail' with the minimum fields required to make a request.
newDetail 
    ::  Detail
newDetail =
  Detail
    { affectedCpeUri = Core.Nothing
    , affectedPackage = Core.Nothing
    , affectedVersionEnd = Core.Nothing
    , affectedVersionStart = Core.Nothing
    , description = Core.Nothing
    , fixedCpeUri = Core.Nothing
    , fixedPackage = Core.Nothing
    , fixedVersion = Core.Nothing
    , isObsolete = Core.Nothing
    , packageType = Core.Nothing
    , severityName = Core.Nothing
    , source = Core.Nothing
    , sourceUpdateTime = Core.Nothing
    , vendor = Core.Nothing
    }

instance Core.FromJSON Detail where
        parseJSON
          = Core.withObject "Detail"
              (\ o ->
                 Detail Core.<$>
                   (o Core..:? "affectedCpeUri") Core.<*>
                     (o Core..:? "affectedPackage")
                     Core.<*> (o Core..:? "affectedVersionEnd")
                     Core.<*> (o Core..:? "affectedVersionStart")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "fixedCpeUri")
                     Core.<*> (o Core..:? "fixedPackage")
                     Core.<*> (o Core..:? "fixedVersion")
                     Core.<*> (o Core..:? "isObsolete")
                     Core.<*> (o Core..:? "packageType")
                     Core.<*> (o Core..:? "severityName")
                     Core.<*> (o Core..:? "source")
                     Core.<*> (o Core..:? "sourceUpdateTime")
                     Core.<*> (o Core..:? "vendor"))

instance Core.ToJSON Detail where
        toJSON Detail{..}
          = Core.object
              (Core.catMaybes
                 [("affectedCpeUri" Core..=) Core.<$> affectedCpeUri,
                  ("affectedPackage" Core..=) Core.<$> affectedPackage,
                  ("affectedVersionEnd" Core..=) Core.<$>
                    affectedVersionEnd,
                  ("affectedVersionStart" Core..=) Core.<$>
                    affectedVersionStart,
                  ("description" Core..=) Core.<$> description,
                  ("fixedCpeUri" Core..=) Core.<$> fixedCpeUri,
                  ("fixedPackage" Core..=) Core.<$> fixedPackage,
                  ("fixedVersion" Core..=) Core.<$> fixedVersion,
                  ("isObsolete" Core..=) Core.<$> isObsolete,
                  ("packageType" Core..=) Core.<$> packageType,
                  ("severityName" Core..=) Core.<$> severityName,
                  ("source" Core..=) Core.<$> source,
                  ("sourceUpdateTime" Core..=) Core.<$>
                    sourceUpdateTime,
                  ("vendor" Core..=) Core.<$> vendor])


-- | Digest information.
--
-- /See:/ 'newDigest' smart constructor.
data Digest = Digest
    {
      -- | @SHA1@, @SHA512@ etc.
      algo :: (Core.Maybe Core.Text)
      -- | Value of the digest.
    , digestBytes :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Digest' with the minimum fields required to make a request.
newDigest 
    ::  Digest
newDigest = Digest {algo = Core.Nothing, digestBytes = Core.Nothing}

instance Core.FromJSON Digest where
        parseJSON
          = Core.withObject "Digest"
              (\ o ->
                 Digest Core.<$>
                   (o Core..:? "algo") Core.<*>
                     (o Core..:? "digestBytes"))

instance Core.ToJSON Digest where
        toJSON Digest{..}
          = Core.object
              (Core.catMaybes
                 [("algo" Core..=) Core.<$> algo,
                  ("digestBytes" Core..=) Core.<$> digestBytes])


-- | A note that indicates a type of analysis a provider would perform. This note exists in a provider\'s project. A @Discovery@ occurrence is created in a consumer\'s project at the start of analysis.
--
-- /See:/ 'newDiscoveryNote' smart constructor.
newtype DiscoveryNote = DiscoveryNote
    {
      -- | Required. Immutable. The kind of analysis that is handled by this discovery.
      analysisKind :: (Core.Maybe DiscoveryNote_AnalysisKind)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiscoveryNote' with the minimum fields required to make a request.
newDiscoveryNote 
    ::  DiscoveryNote
newDiscoveryNote = DiscoveryNote {analysisKind = Core.Nothing}

instance Core.FromJSON DiscoveryNote where
        parseJSON
          = Core.withObject "DiscoveryNote"
              (\ o ->
                 DiscoveryNote Core.<$> (o Core..:? "analysisKind"))

instance Core.ToJSON DiscoveryNote where
        toJSON DiscoveryNote{..}
          = Core.object
              (Core.catMaybes
                 [("analysisKind" Core..=) Core.<$> analysisKind])


-- | Provides information about the analysis status of a discovered resource.
--
-- /See:/ 'newDiscoveryOccurrence' smart constructor.
data DiscoveryOccurrence = DiscoveryOccurrence
    {
      -- | 
      analysisCompleted :: (Core.Maybe AnalysisCompleted)
      -- | Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
    , analysisError :: (Core.Maybe [Status])
      -- | The status of discovery for the resource.
    , analysisStatus :: (Core.Maybe DiscoveryOccurrence_AnalysisStatus)
      -- | When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.
    , analysisStatusError :: (Core.Maybe Status)
      -- | Output only. The time occurrences related to this discovery occurrence were archived.
    , archiveTime :: (Core.Maybe Core.DateTime)
      -- | Whether the resource is continuously analyzed.
    , continuousAnalysis :: (Core.Maybe DiscoveryOccurrence_ContinuousAnalysis)
      -- | The CPE of the resource being scanned.
    , cpe :: (Core.Maybe Core.Text)
      -- | The last time this resource was scanned.
    , lastScanTime :: (Core.Maybe Core.DateTime)
      -- | The status of an SBOM generation.
    , sbomStatus :: (Core.Maybe SBOMStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiscoveryOccurrence' with the minimum fields required to make a request.
newDiscoveryOccurrence 
    ::  DiscoveryOccurrence
newDiscoveryOccurrence =
  DiscoveryOccurrence
    { analysisCompleted = Core.Nothing
    , analysisError = Core.Nothing
    , analysisStatus = Core.Nothing
    , analysisStatusError = Core.Nothing
    , archiveTime = Core.Nothing
    , continuousAnalysis = Core.Nothing
    , cpe = Core.Nothing
    , lastScanTime = Core.Nothing
    , sbomStatus = Core.Nothing
    }

instance Core.FromJSON DiscoveryOccurrence where
        parseJSON
          = Core.withObject "DiscoveryOccurrence"
              (\ o ->
                 DiscoveryOccurrence Core.<$>
                   (o Core..:? "analysisCompleted") Core.<*>
                     (o Core..:? "analysisError")
                     Core.<*> (o Core..:? "analysisStatus")
                     Core.<*> (o Core..:? "analysisStatusError")
                     Core.<*> (o Core..:? "archiveTime")
                     Core.<*> (o Core..:? "continuousAnalysis")
                     Core.<*> (o Core..:? "cpe")
                     Core.<*> (o Core..:? "lastScanTime")
                     Core.<*> (o Core..:? "sbomStatus"))

instance Core.ToJSON DiscoveryOccurrence where
        toJSON DiscoveryOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("analysisCompleted" Core..=) Core.<$>
                    analysisCompleted,
                  ("analysisError" Core..=) Core.<$> analysisError,
                  ("analysisStatus" Core..=) Core.<$> analysisStatus,
                  ("analysisStatusError" Core..=) Core.<$>
                    analysisStatusError,
                  ("archiveTime" Core..=) Core.<$> archiveTime,
                  ("continuousAnalysis" Core..=) Core.<$>
                    continuousAnalysis,
                  ("cpe" Core..=) Core.<$> cpe,
                  ("lastScanTime" Core..=) Core.<$> lastScanTime,
                  ("sbomStatus" Core..=) Core.<$> sbomStatus])


-- | This represents a particular channel of distribution for a given package. E.g., Debian\'s jessie-backports dpkg mirror.
--
-- /See:/ 'newDistribution' smart constructor.
data Distribution = Distribution
    {
      -- | The CPU architecture for which packages in this distribution channel were built.
      architecture :: (Core.Maybe Distribution_Architecture)
      -- | Required. The cpe_uri in <https://cpe.mitre.org/specification/ CPE format> denoting the package manager version distributing a package.
    , cpeUri :: (Core.Maybe Core.Text)
      -- | The distribution channel-specific description of this package.
    , description :: (Core.Maybe Core.Text)
      -- | The latest available version of this package in this distribution channel.
    , latestVersion :: (Core.Maybe Version)
      -- | A freeform string denoting the maintainer of this package.
    , maintainer :: (Core.Maybe Core.Text)
      -- | The distribution channel-specific homepage for this package.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Distribution' with the minimum fields required to make a request.
newDistribution 
    ::  Distribution
newDistribution =
  Distribution
    { architecture = Core.Nothing
    , cpeUri = Core.Nothing
    , description = Core.Nothing
    , latestVersion = Core.Nothing
    , maintainer = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON Distribution where
        parseJSON
          = Core.withObject "Distribution"
              (\ o ->
                 Distribution Core.<$>
                   (o Core..:? "architecture") Core.<*>
                     (o Core..:? "cpeUri")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "latestVersion")
                     Core.<*> (o Core..:? "maintainer")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON Distribution where
        toJSON Distribution{..}
          = Core.object
              (Core.catMaybes
                 [("architecture" Core..=) Core.<$> architecture,
                  ("cpeUri" Core..=) Core.<$> cpeUri,
                  ("description" Core..=) Core.<$> description,
                  ("latestVersion" Core..=) Core.<$> latestVersion,
                  ("maintainer" Core..=) Core.<$> maintainer,
                  ("url" Core..=) Core.<$> url])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
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


-- | MUST match https:\/\/github.com\/secure-systems-lab\/dsse\/blob\/master\/envelope.proto. An authenticated message of arbitrary type.
--
-- /See:/ 'newEnvelope' smart constructor.
data Envelope = Envelope
    {
      -- | 
      payload :: (Core.Maybe Core.Base64)
      -- | 
    , payloadType :: (Core.Maybe Core.Text)
      -- | 
    , signatures :: (Core.Maybe [EnvelopeSignature])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Envelope' with the minimum fields required to make a request.
newEnvelope 
    ::  Envelope
newEnvelope =
  Envelope
    { payload = Core.Nothing
    , payloadType = Core.Nothing
    , signatures = Core.Nothing
    }

instance Core.FromJSON Envelope where
        parseJSON
          = Core.withObject "Envelope"
              (\ o ->
                 Envelope Core.<$>
                   (o Core..:? "payload") Core.<*>
                     (o Core..:? "payloadType")
                     Core.<*> (o Core..:? "signatures"))

instance Core.ToJSON Envelope where
        toJSON Envelope{..}
          = Core.object
              (Core.catMaybes
                 [("payload" Core..=) Core.<$> payload,
                  ("payloadType" Core..=) Core.<$> payloadType,
                  ("signatures" Core..=) Core.<$> signatures])


--
-- /See:/ 'newEnvelopeSignature' smart constructor.
data EnvelopeSignature = EnvelopeSignature
    {
      -- | 
      keyid :: (Core.Maybe Core.Text)
      -- | 
    , sig :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnvelopeSignature' with the minimum fields required to make a request.
newEnvelopeSignature 
    ::  EnvelopeSignature
newEnvelopeSignature =
  EnvelopeSignature {keyid = Core.Nothing, sig = Core.Nothing}

instance Core.FromJSON EnvelopeSignature where
        parseJSON
          = Core.withObject "EnvelopeSignature"
              (\ o ->
                 EnvelopeSignature Core.<$>
                   (o Core..:? "keyid") Core.<*> (o Core..:? "sig"))

instance Core.ToJSON EnvelopeSignature where
        toJSON EnvelopeSignature{..}
          = Core.object
              (Core.catMaybes
                 [("keyid" Core..=) Core.<$> keyid,
                  ("sig" Core..=) Core.<$> sig])


-- | The request to generate and export SBOM. Target must be specified for the request.
--
-- /See:/ 'newExportSBOMRequest' smart constructor.
newtype ExportSBOMRequest = ExportSBOMRequest
    {
      -- | Empty placeholder to denote that this is a Google Cloud Storage export request.
      cloudStorageLocation :: (Core.Maybe CloudStorageLocation)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportSBOMRequest' with the minimum fields required to make a request.
newExportSBOMRequest 
    ::  ExportSBOMRequest
newExportSBOMRequest = ExportSBOMRequest {cloudStorageLocation = Core.Nothing}

instance Core.FromJSON ExportSBOMRequest where
        parseJSON
          = Core.withObject "ExportSBOMRequest"
              (\ o ->
                 ExportSBOMRequest Core.<$>
                   (o Core..:? "cloudStorageLocation"))

instance Core.ToJSON ExportSBOMRequest where
        toJSON ExportSBOMRequest{..}
          = Core.object
              (Core.catMaybes
                 [("cloudStorageLocation" Core..=) Core.<$>
                    cloudStorageLocation])


-- | The response from a call to ExportSBOM.
--
-- /See:/ 'newExportSBOMResponse' smart constructor.
newtype ExportSBOMResponse = ExportSBOMResponse
    {
      -- | The name of the discovery occurrence in the form \"projects\/{project/id}\/occurrences\/{OCCURRENCE/ID} It can be used to track the progress of the SBOM export.
      discoveryOccurrence :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportSBOMResponse' with the minimum fields required to make a request.
newExportSBOMResponse 
    ::  ExportSBOMResponse
newExportSBOMResponse = ExportSBOMResponse {discoveryOccurrence = Core.Nothing}

instance Core.FromJSON ExportSBOMResponse where
        parseJSON
          = Core.withObject "ExportSBOMResponse"
              (\ o ->
                 ExportSBOMResponse Core.<$>
                   (o Core..:? "discoveryOccurrence"))

instance Core.ToJSON ExportSBOMResponse where
        toJSON ExportSBOMResponse{..}
          = Core.object
              (Core.catMaybes
                 [("discoveryOccurrence" Core..=) Core.<$>
                    discoveryOccurrence])


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


-- | Container message for hashes of byte content of files, used in source messages to verify integrity of source input to the build.
--
-- /See:/ 'newFileHashes' smart constructor.
newtype FileHashes = FileHashes
    {
      -- | Required. Collection of file hashes.
      fileHash :: (Core.Maybe [Hash])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileHashes' with the minimum fields required to make a request.
newFileHashes 
    ::  FileHashes
newFileHashes = FileHashes {fileHash = Core.Nothing}

instance Core.FromJSON FileHashes where
        parseJSON
          = Core.withObject "FileHashes"
              (\ o -> FileHashes Core.<$> (o Core..:? "fileHash"))

instance Core.ToJSON FileHashes where
        toJSON FileHashes{..}
          = Core.object
              (Core.catMaybes
                 [("fileHash" Core..=) Core.<$> fileHash])


-- | A set of properties that uniquely identify a given Docker image.
--
-- /See:/ 'newFingerprint' smart constructor.
data Fingerprint = Fingerprint
    {
      -- | Required. The layer ID of the final layer in the Docker image\'s v1 representation.
      v1Name :: (Core.Maybe Core.Text)
      -- | Required. The ordered list of v2 blobs that represent a given image.
    , v2Blob :: (Core.Maybe [Core.Text])
      -- | Output only. The name of the image\'s v2 blobs computed via: [bottom] := v2/blobbottom := sha256(v2/blob[N] + \" \" + v2_name[N+1]) Only the name of the final blob is kept.
    , v2Name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Fingerprint' with the minimum fields required to make a request.
newFingerprint 
    ::  Fingerprint
newFingerprint =
  Fingerprint
    {v1Name = Core.Nothing, v2Blob = Core.Nothing, v2Name = Core.Nothing}

instance Core.FromJSON Fingerprint where
        parseJSON
          = Core.withObject "Fingerprint"
              (\ o ->
                 Fingerprint Core.<$>
                   (o Core..:? "v1Name") Core.<*> (o Core..:? "v2Blob")
                     Core.<*> (o Core..:? "v2Name"))

instance Core.ToJSON Fingerprint where
        toJSON Fingerprint{..}
          = Core.object
              (Core.catMaybes
                 [("v1Name" Core..=) Core.<$> v1Name,
                  ("v2Blob" Core..=) Core.<$> v2Blob,
                  ("v2Name" Core..=) Core.<$> v2Name])


-- | Per resource and severity counts of fixable and total vulnerabilities.
--
-- /See:/ 'newFixableTotalByDigest' smart constructor.
data FixableTotalByDigest = FixableTotalByDigest
    {
      -- | The number of fixable vulnerabilities associated with this resource.
      fixableCount :: (Core.Maybe Core.Int64)
      -- | The affected resource.
    , resourceUri :: (Core.Maybe Core.Text)
      -- | The severity for this count. SEVERITY_UNSPECIFIED indicates total across all severities.
    , severity :: (Core.Maybe FixableTotalByDigest_Severity)
      -- | The total number of vulnerabilities associated with this resource.
    , totalCount :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FixableTotalByDigest' with the minimum fields required to make a request.
newFixableTotalByDigest 
    ::  FixableTotalByDigest
newFixableTotalByDigest =
  FixableTotalByDigest
    { fixableCount = Core.Nothing
    , resourceUri = Core.Nothing
    , severity = Core.Nothing
    , totalCount = Core.Nothing
    }

instance Core.FromJSON FixableTotalByDigest where
        parseJSON
          = Core.withObject "FixableTotalByDigest"
              (\ o ->
                 FixableTotalByDigest Core.<$>
                   (o Core..:? "fixableCount" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "resourceUri")
                     Core.<*> (o Core..:? "severity")
                     Core.<*>
                     (o Core..:? "totalCount" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON FixableTotalByDigest where
        toJSON FixableTotalByDigest{..}
          = Core.object
              (Core.catMaybes
                 [("fixableCount" Core..=) Core.. Core.AsText Core.<$>
                    fixableCount,
                  ("resourceUri" Core..=) Core.<$> resourceUri,
                  ("severity" Core..=) Core.<$> severity,
                  ("totalCount" Core..=) Core.. Core.AsText Core.<$>
                    totalCount])


-- | A SourceContext referring to a Gerrit project.
--
-- /See:/ 'newGerritSourceContext' smart constructor.
data GerritSourceContext = GerritSourceContext
    {
      -- | An alias, which may be a branch or tag.
      aliasContext :: (Core.Maybe AliasContext)
      -- | The full project name within the host. Projects may be nested, so \"project\/subproject\" is a valid project name. The \"repo name\" is the hostURI\/project.
    , gerritProject :: (Core.Maybe Core.Text)
      -- | The URI of a running Gerrit instance.
    , hostUri :: (Core.Maybe Core.Text)
      -- | A revision (commit) ID.
    , revisionId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GerritSourceContext' with the minimum fields required to make a request.
newGerritSourceContext 
    ::  GerritSourceContext
newGerritSourceContext =
  GerritSourceContext
    { aliasContext = Core.Nothing
    , gerritProject = Core.Nothing
    , hostUri = Core.Nothing
    , revisionId = Core.Nothing
    }

instance Core.FromJSON GerritSourceContext where
        parseJSON
          = Core.withObject "GerritSourceContext"
              (\ o ->
                 GerritSourceContext Core.<$>
                   (o Core..:? "aliasContext") Core.<*>
                     (o Core..:? "gerritProject")
                     Core.<*> (o Core..:? "hostUri")
                     Core.<*> (o Core..:? "revisionId"))

instance Core.ToJSON GerritSourceContext where
        toJSON GerritSourceContext{..}
          = Core.object
              (Core.catMaybes
                 [("aliasContext" Core..=) Core.<$> aliasContext,
                  ("gerritProject" Core..=) Core.<$> gerritProject,
                  ("hostUri" Core..=) Core.<$> hostUri,
                  ("revisionId" Core..=) Core.<$> revisionId])


-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
    {
      -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
      options :: (Core.Maybe GetPolicyOptions)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest 
    ::  GetIamPolicyRequest
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
        parseJSON
          = Core.withObject "GetIamPolicyRequest"
              (\ o ->
                 GetIamPolicyRequest Core.<$> (o Core..:? "options"))

instance Core.ToJSON GetIamPolicyRequest where
        toJSON GetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("options" Core..=) Core.<$> options])


-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
    {
      -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      requestedPolicyVersion :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions 
    ::  GetPolicyOptions
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
        parseJSON
          = Core.withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions Core.<$>
                   (o Core..:? "requestedPolicyVersion"))

instance Core.ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions{..}
          = Core.object
              (Core.catMaybes
                 [("requestedPolicyVersion" Core..=) Core.<$>
                    requestedPolicyVersion])


-- | A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).
--
-- /See:/ 'newGitSourceContext' smart constructor.
data GitSourceContext = GitSourceContext
    {
      -- | Git commit hash.
      revisionId :: (Core.Maybe Core.Text)
      -- | Git repository URL.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GitSourceContext' with the minimum fields required to make a request.
newGitSourceContext 
    ::  GitSourceContext
newGitSourceContext =
  GitSourceContext {revisionId = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON GitSourceContext where
        parseJSON
          = Core.withObject "GitSourceContext"
              (\ o ->
                 GitSourceContext Core.<$>
                   (o Core..:? "revisionId") Core.<*>
                     (o Core..:? "url"))

instance Core.ToJSON GitSourceContext where
        toJSON GitSourceContext{..}
          = Core.object
              (Core.catMaybes
                 [("revisionId" Core..=) Core.<$> revisionId,
                  ("url" Core..=) Core.<$> url])


-- | Metadata for all operations used and required for all operations that created by Container Analysis Providers
--
-- /See:/ 'newGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata' smart constructor.
data GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata = GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    {
      -- | Output only. The time this operation was created.
      createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The time that this operation was marked completed or failed.
    , endTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata' with the minimum fields required to make a request.
newGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata 
    ::  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
newGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata =
  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    {createTime = Core.Nothing, endTime = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata"
              (\ o ->
                 GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
                   Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "endTime"))

instance Core.ToJSON
           GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
         where
        toJSON
          GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("endTime" Core..=) Core.<$> endTime])


-- | Indicates the location at which a package was found.
--
-- /See:/ 'newGrafeasV1FileLocation' smart constructor.
newtype GrafeasV1FileLocation = GrafeasV1FileLocation
    {
      -- | For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
      filePath :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1FileLocation' with the minimum fields required to make a request.
newGrafeasV1FileLocation 
    ::  GrafeasV1FileLocation
newGrafeasV1FileLocation = GrafeasV1FileLocation {filePath = Core.Nothing}

instance Core.FromJSON GrafeasV1FileLocation where
        parseJSON
          = Core.withObject "GrafeasV1FileLocation"
              (\ o ->
                 GrafeasV1FileLocation Core.<$>
                   (o Core..:? "filePath"))

instance Core.ToJSON GrafeasV1FileLocation where
        toJSON GrafeasV1FileLocation{..}
          = Core.object
              (Core.catMaybes
                 [("filePath" Core..=) Core.<$> filePath])


-- | Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.
--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder' smart constructor.
newtype GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder = GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
    {
      -- | 
      id :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder 
    ::  GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
newGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder =
  GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder {id = Core.Nothing}

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder Core.<$>
                   (o Core..:? "id"))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
         where
        toJSON GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder{..}
          = Core.object
              (Core.catMaybes [("id" Core..=) Core.<$> id])


-- | Indicates that the builder claims certain fields in this message to be complete.
--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness' smart constructor.
data GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness = GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
    {
      -- | 
      environment :: (Core.Maybe Core.Bool)
      -- | 
    , materials :: (Core.Maybe Core.Bool)
      -- | 
    , parameters :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness 
    ::  GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
newGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness =
  GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
    { environment = Core.Nothing
    , materials = Core.Nothing
    , parameters = Core.Nothing
    }

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
                   Core.<$>
                   (o Core..:? "environment") Core.<*>
                     (o Core..:? "materials")
                     Core.<*> (o Core..:? "parameters"))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
         where
        toJSON
          GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness{..}
          = Core.object
              (Core.catMaybes
                 [("environment" Core..=) Core.<$> environment,
                  ("materials" Core..=) Core.<$> materials,
                  ("parameters" Core..=) Core.<$> parameters])


-- | Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.
--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource' smart constructor.
data GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource = GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
    {
      -- | 
      digest :: (Core.Maybe GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest)
      -- | 
    , entryPoint :: (Core.Maybe Core.Text)
      -- | 
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource 
    ::  GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource =
  GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
    {digest = Core.Nothing, entryPoint = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
                   Core.<$>
                   (o Core..:? "digest") Core.<*>
                     (o Core..:? "entryPoint")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
         where
        toJSON
          GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("entryPoint" Core..=) Core.<$> entryPoint,
                  ("uri" Core..=) Core.<$> uri])


--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest' smart constructor.
newtype GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest = GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest
newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest additional =
  GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest
    {additional = additional}

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest
         where
        toJSON
          GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest{..}
          = Core.toJSON additional


-- | Identifies the event that kicked off the build.
--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation' smart constructor.
data GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation = GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
    {
      -- | 
      configSource :: (Core.Maybe GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource)
      -- | 
    , environment :: (Core.Maybe
   GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment)
      -- | 
    , parameters :: (Core.Maybe
   GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation 
    ::  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation =
  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
    { configSource = Core.Nothing
    , environment = Core.Nothing
    , parameters = Core.Nothing
    }

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation Core.<$>
                   (o Core..:? "configSource") Core.<*>
                     (o Core..:? "environment")
                     Core.<*> (o Core..:? "parameters"))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
         where
        toJSON
          GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation{..}
          = Core.object
              (Core.catMaybes
                 [("configSource" Core..=) Core.<$> configSource,
                  ("environment" Core..=) Core.<$> environment,
                  ("parameters" Core..=) Core.<$> parameters])


--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment' smart constructor.
newtype GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment = GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment
newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment additional =
  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment
    {additional = additional}

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment
         where
        toJSON
          GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment{..}
          = Core.toJSON additional


--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters' smart constructor.
newtype GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters = GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters
newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters additional =
  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters
    {additional = additional}

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters
         where
        toJSON
          GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters{..}
          = Core.toJSON additional


-- | The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial' smart constructor.
data GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial = GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
    {
      -- | 
      digest :: (Core.Maybe GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest)
      -- | 
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial 
    ::  GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial =
  GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
    {digest = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "uri"))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
         where
        toJSON GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("uri" Core..=) Core.<$> uri])


--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest' smart constructor.
newtype GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest = GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest
newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest additional =
  GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest {additional = additional}

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest
         where
        toJSON
          GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest{..}
          = Core.toJSON additional


-- | Other properties of the build.
--
-- /See:/ 'newGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata' smart constructor.
data GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata = GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
    {
      -- | 
      buildFinishedOn :: (Core.Maybe Core.DateTime)
      -- | 
    , buildInvocationId :: (Core.Maybe Core.Text)
      -- | 
    , buildStartedOn :: (Core.Maybe Core.DateTime)
      -- | 
    , completeness :: (Core.Maybe GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness)
      -- | 
    , reproducible :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata' with the minimum fields required to make a request.
newGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata 
    ::  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
newGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata =
  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
    { buildFinishedOn = Core.Nothing
    , buildInvocationId = Core.Nothing
    , buildStartedOn = Core.Nothing
    , completeness = Core.Nothing
    , reproducible = Core.Nothing
    }

instance Core.FromJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
         where
        parseJSON
          = Core.withObject
              "GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata"
              (\ o ->
                 GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata Core.<$>
                   (o Core..:? "buildFinishedOn") Core.<*>
                     (o Core..:? "buildInvocationId")
                     Core.<*> (o Core..:? "buildStartedOn")
                     Core.<*> (o Core..:? "completeness")
                     Core.<*> (o Core..:? "reproducible"))

instance Core.ToJSON
           GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
         where
        toJSON GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("buildFinishedOn" Core..=) Core.<$>
                    buildFinishedOn,
                  ("buildInvocationId" Core..=) Core.<$>
                    buildInvocationId,
                  ("buildStartedOn" Core..=) Core.<$> buildStartedOn,
                  ("completeness" Core..=) Core.<$> completeness,
                  ("reproducible" Core..=) Core.<$> reproducible])


-- | Container message for hash values.
--
-- /See:/ 'newHash' smart constructor.
data Hash = Hash
    {
      -- | Required. The type of hash that was performed, e.g. \"SHA-256\".
      type' :: (Core.Maybe Core.Text)
      -- | Required. The hash value.
    , value :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hash' with the minimum fields required to make a request.
newHash 
    ::  Hash
newHash = Hash {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Hash where
        parseJSON
          = Core.withObject "Hash"
              (\ o ->
                 Hash Core.<$>
                   (o Core..:? "type") Core.<*> (o Core..:? "value"))

instance Core.ToJSON Hash where
        toJSON Hash{..}
          = Core.object
              (Core.catMaybes
                 [("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


-- | This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from \"readable\" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.
--
-- /See:/ 'newHint' smart constructor.
newtype Hint = Hint
    {
      -- | Required. The human readable name of this attestation authority, for example \"qa\".
      humanReadableName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hint' with the minimum fields required to make a request.
newHint 
    ::  Hint
newHint = Hint {humanReadableName = Core.Nothing}

instance Core.FromJSON Hint where
        parseJSON
          = Core.withObject "Hint"
              (\ o ->
                 Hint Core.<$> (o Core..:? "humanReadableName"))

instance Core.ToJSON Hint where
        toJSON Hint{..}
          = Core.object
              (Core.catMaybes
                 [("humanReadableName" Core..=) Core.<$>
                    humanReadableName])


-- | The unique identifier of the update.
--
-- /See:/ 'newIdentity' smart constructor.
data Identity = Identity
    {
      -- | The revision number of the update.
      revision :: (Core.Maybe Core.Int32)
      -- | The revision independent identifier of the update.
    , updateId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Identity' with the minimum fields required to make a request.
newIdentity 
    ::  Identity
newIdentity = Identity {revision = Core.Nothing, updateId = Core.Nothing}

instance Core.FromJSON Identity where
        parseJSON
          = Core.withObject "Identity"
              (\ o ->
                 Identity Core.<$>
                   (o Core..:? "revision") Core.<*>
                     (o Core..:? "updateId"))

instance Core.ToJSON Identity where
        toJSON Identity{..}
          = Core.object
              (Core.catMaybes
                 [("revision" Core..=) Core.<$> revision,
                  ("updateId" Core..=) Core.<$> updateId])


-- | Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g., a tag of the resource_url.
--
-- /See:/ 'newImageNote' smart constructor.
data ImageNote = ImageNote
    {
      -- | Required. Immutable. The fingerprint of the base image.
      fingerprint :: (Core.Maybe Fingerprint)
      -- | Required. Immutable. The resource_url for the resource representing the basis of associated occurrence images.
    , resourceUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageNote' with the minimum fields required to make a request.
newImageNote 
    ::  ImageNote
newImageNote =
  ImageNote {fingerprint = Core.Nothing, resourceUrl = Core.Nothing}

instance Core.FromJSON ImageNote where
        parseJSON
          = Core.withObject "ImageNote"
              (\ o ->
                 ImageNote Core.<$>
                   (o Core..:? "fingerprint") Core.<*>
                     (o Core..:? "resourceUrl"))

instance Core.ToJSON ImageNote where
        toJSON ImageNote{..}
          = Core.object
              (Core.catMaybes
                 [("fingerprint" Core..=) Core.<$> fingerprint,
                  ("resourceUrl" Core..=) Core.<$> resourceUrl])


-- | Details of the derived image portion of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
--
-- /See:/ 'newImageOccurrence' smart constructor.
data ImageOccurrence = ImageOccurrence
    {
      -- | Output only. This contains the base image URL for the derived image occurrence.
      baseResourceUrl :: (Core.Maybe Core.Text)
      -- | Output only. The number of layers by which this image differs from the associated image basis.
    , distance :: (Core.Maybe Core.Int32)
      -- | Required. The fingerprint of the derived image.
    , fingerprint :: (Core.Maybe Fingerprint)
      -- | This contains layer-specific metadata, if populated it has length \"distance\" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
    , layerInfo :: (Core.Maybe [Layer])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageOccurrence' with the minimum fields required to make a request.
newImageOccurrence 
    ::  ImageOccurrence
newImageOccurrence =
  ImageOccurrence
    { baseResourceUrl = Core.Nothing
    , distance = Core.Nothing
    , fingerprint = Core.Nothing
    , layerInfo = Core.Nothing
    }

instance Core.FromJSON ImageOccurrence where
        parseJSON
          = Core.withObject "ImageOccurrence"
              (\ o ->
                 ImageOccurrence Core.<$>
                   (o Core..:? "baseResourceUrl") Core.<*>
                     (o Core..:? "distance")
                     Core.<*> (o Core..:? "fingerprint")
                     Core.<*> (o Core..:? "layerInfo"))

instance Core.ToJSON ImageOccurrence where
        toJSON ImageOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("baseResourceUrl" Core..=) Core.<$>
                    baseResourceUrl,
                  ("distance" Core..=) Core.<$> distance,
                  ("fingerprint" Core..=) Core.<$> fingerprint,
                  ("layerInfo" Core..=) Core.<$> layerInfo])


--
-- /See:/ 'newInTotoProvenance' smart constructor.
data InTotoProvenance = InTotoProvenance
    {
      -- | required
      builderConfig :: (Core.Maybe BuilderConfig)
      -- | The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
    , materials :: (Core.Maybe [Core.Text])
      -- | 
    , metadata :: (Core.Maybe Metadata)
      -- | Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
    , recipe :: (Core.Maybe Recipe)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InTotoProvenance' with the minimum fields required to make a request.
newInTotoProvenance 
    ::  InTotoProvenance
newInTotoProvenance =
  InTotoProvenance
    { builderConfig = Core.Nothing
    , materials = Core.Nothing
    , metadata = Core.Nothing
    , recipe = Core.Nothing
    }

instance Core.FromJSON InTotoProvenance where
        parseJSON
          = Core.withObject "InTotoProvenance"
              (\ o ->
                 InTotoProvenance Core.<$>
                   (o Core..:? "builderConfig") Core.<*>
                     (o Core..:? "materials")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "recipe"))

instance Core.ToJSON InTotoProvenance where
        toJSON InTotoProvenance{..}
          = Core.object
              (Core.catMaybes
                 [("builderConfig" Core..=) Core.<$> builderConfig,
                  ("materials" Core..=) Core.<$> materials,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("recipe" Core..=) Core.<$> recipe])


--
-- /See:/ 'newInTotoSlsaProvenanceV1' smart constructor.
data InTotoSlsaProvenanceV1 = InTotoSlsaProvenanceV1
    {
      -- | InToto spec defined at https:\/\/github.com\/in-toto\/attestation\/tree\/main\/spec#statement
      type' :: (Core.Maybe Core.Text)
      -- | 
    , predicate :: (Core.Maybe SlsaProvenanceV1)
      -- | 
    , predicateType :: (Core.Maybe Core.Text)
      -- | 
    , subject :: (Core.Maybe [Subject])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InTotoSlsaProvenanceV1' with the minimum fields required to make a request.
newInTotoSlsaProvenanceV1 
    ::  InTotoSlsaProvenanceV1
newInTotoSlsaProvenanceV1 =
  InTotoSlsaProvenanceV1
    { type' = Core.Nothing
    , predicate = Core.Nothing
    , predicateType = Core.Nothing
    , subject = Core.Nothing
    }

instance Core.FromJSON InTotoSlsaProvenanceV1 where
        parseJSON
          = Core.withObject "InTotoSlsaProvenanceV1"
              (\ o ->
                 InTotoSlsaProvenanceV1 Core.<$>
                   (o Core..:? "_type") Core.<*>
                     (o Core..:? "predicate")
                     Core.<*> (o Core..:? "predicateType")
                     Core.<*> (o Core..:? "subject"))

instance Core.ToJSON InTotoSlsaProvenanceV1 where
        toJSON InTotoSlsaProvenanceV1{..}
          = Core.object
              (Core.catMaybes
                 [("_type" Core..=) Core.<$> type',
                  ("predicate" Core..=) Core.<$> predicate,
                  ("predicateType" Core..=) Core.<$> predicateType,
                  ("subject" Core..=) Core.<$> subject])


-- | Spec defined at https:\/\/github.com\/in-toto\/attestation\/tree\/main\/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always \"application\/vnd.in-toto+json\".
--
-- /See:/ 'newInTotoStatement' smart constructor.
data InTotoStatement = InTotoStatement
    {
      -- | Always @https:\/\/in-toto.io\/Statement\/v0.1@.
      type' :: (Core.Maybe Core.Text)
      -- | @https:\/\/slsa.dev\/provenance\/v0.1@ for SlsaProvenance.
    , predicateType :: (Core.Maybe Core.Text)
      -- | 
    , provenance :: (Core.Maybe InTotoProvenance)
      -- | 
    , slsaProvenance :: (Core.Maybe SlsaProvenance)
      -- | 
    , slsaProvenanceZeroTwo :: (Core.Maybe SlsaProvenanceZeroTwo)
      -- | 
    , subject :: (Core.Maybe [Subject])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InTotoStatement' with the minimum fields required to make a request.
newInTotoStatement 
    ::  InTotoStatement
newInTotoStatement =
  InTotoStatement
    { type' = Core.Nothing
    , predicateType = Core.Nothing
    , provenance = Core.Nothing
    , slsaProvenance = Core.Nothing
    , slsaProvenanceZeroTwo = Core.Nothing
    , subject = Core.Nothing
    }

instance Core.FromJSON InTotoStatement where
        parseJSON
          = Core.withObject "InTotoStatement"
              (\ o ->
                 InTotoStatement Core.<$>
                   (o Core..:? "_type") Core.<*>
                     (o Core..:? "predicateType")
                     Core.<*> (o Core..:? "provenance")
                     Core.<*> (o Core..:? "slsaProvenance")
                     Core.<*> (o Core..:? "slsaProvenanceZeroTwo")
                     Core.<*> (o Core..:? "subject"))

instance Core.ToJSON InTotoStatement where
        toJSON InTotoStatement{..}
          = Core.object
              (Core.catMaybes
                 [("_type" Core..=) Core.<$> type',
                  ("predicateType" Core..=) Core.<$> predicateType,
                  ("provenance" Core..=) Core.<$> provenance,
                  ("slsaProvenance" Core..=) Core.<$> slsaProvenance,
                  ("slsaProvenanceZeroTwo" Core..=) Core.<$>
                    slsaProvenanceZeroTwo,
                  ("subject" Core..=) Core.<$> subject])


-- | Justification provides the justification when the state of the assessment if NOT_AFFECTED.
--
-- /See:/ 'newJustification' smart constructor.
data Justification = Justification
    {
      -- | Additional details on why this justification was chosen.
      details :: (Core.Maybe Core.Text)
      -- | The justification type for this vulnerability.
    , justificationType :: (Core.Maybe Justification_JustificationType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Justification' with the minimum fields required to make a request.
newJustification 
    ::  Justification
newJustification =
  Justification {details = Core.Nothing, justificationType = Core.Nothing}

instance Core.FromJSON Justification where
        parseJSON
          = Core.withObject "Justification"
              (\ o ->
                 Justification Core.<$>
                   (o Core..:? "details") Core.<*>
                     (o Core..:? "justificationType"))

instance Core.ToJSON Justification where
        toJSON Justification{..}
          = Core.object
              (Core.catMaybes
                 [("details" Core..=) Core.<$> details,
                  ("justificationType" Core..=) Core.<$>
                    justificationType])


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


--
-- /See:/ 'newKnowledgeBase' smart constructor.
data KnowledgeBase = KnowledgeBase
    {
      -- | The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
      name :: (Core.Maybe Core.Text)
      -- | A link to the KB in the [Windows update catalog] (https:\/\/www.catalog.update.microsoft.com\/).
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KnowledgeBase' with the minimum fields required to make a request.
newKnowledgeBase 
    ::  KnowledgeBase
newKnowledgeBase = KnowledgeBase {name = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON KnowledgeBase where
        parseJSON
          = Core.withObject "KnowledgeBase"
              (\ o ->
                 KnowledgeBase Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "url"))

instance Core.ToJSON KnowledgeBase where
        toJSON KnowledgeBase{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("url" Core..=) Core.<$> url])


-- | Layer holds metadata specific to a layer of a Docker image.
--
-- /See:/ 'newLayer' smart constructor.
data Layer = Layer
    {
      -- | The recovered arguments to the Dockerfile directive.
      arguments :: (Core.Maybe Core.Text)
      -- | Required. The recovered Dockerfile directive used to construct this layer. See https:\/\/docs.docker.com\/engine\/reference\/builder\/ for more information.
    , directive :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Layer' with the minimum fields required to make a request.
newLayer 
    ::  Layer
newLayer = Layer {arguments = Core.Nothing, directive = Core.Nothing}

instance Core.FromJSON Layer where
        parseJSON
          = Core.withObject "Layer"
              (\ o ->
                 Layer Core.<$>
                   (o Core..:? "arguments") Core.<*>
                     (o Core..:? "directive"))

instance Core.ToJSON Layer where
        toJSON Layer{..}
          = Core.object
              (Core.catMaybes
                 [("arguments" Core..=) Core.<$> arguments,
                  ("directive" Core..=) Core.<$> directive])


-- | License information.
--
-- /See:/ 'newLicense' smart constructor.
data License = License
    {
      -- | Comments
      comments :: (Core.Maybe Core.Text)
      -- | Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: \"LGPL-2.1-only OR MIT\", \"LGPL-2.1-only AND MIT\", \"GPL-2.0-or-later WITH Bison-exception-2.2\".
    , expression :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'License' with the minimum fields required to make a request.
newLicense 
    ::  License
newLicense = License {comments = Core.Nothing, expression = Core.Nothing}

instance Core.FromJSON License where
        parseJSON
          = Core.withObject "License"
              (\ o ->
                 License Core.<$>
                   (o Core..:? "comments") Core.<*>
                     (o Core..:? "expression"))

instance Core.ToJSON License where
        toJSON License{..}
          = Core.object
              (Core.catMaybes
                 [("comments" Core..=) Core.<$> comments,
                  ("expression" Core..=) Core.<$> expression])


-- | Response for listing occurrences for a note.
--
-- /See:/ 'newListNoteOccurrencesResponse' smart constructor.
data ListNoteOccurrencesResponse = ListNoteOccurrencesResponse
    {
      -- | Token to provide to skip to a particular spot in the list.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The occurrences attached to the specified note.
    , occurrences :: (Core.Maybe [Occurrence])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNoteOccurrencesResponse' with the minimum fields required to make a request.
newListNoteOccurrencesResponse 
    ::  ListNoteOccurrencesResponse
newListNoteOccurrencesResponse =
  ListNoteOccurrencesResponse
    {nextPageToken = Core.Nothing, occurrences = Core.Nothing}

instance Core.FromJSON ListNoteOccurrencesResponse
         where
        parseJSON
          = Core.withObject "ListNoteOccurrencesResponse"
              (\ o ->
                 ListNoteOccurrencesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "occurrences"))

instance Core.ToJSON ListNoteOccurrencesResponse
         where
        toJSON ListNoteOccurrencesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("occurrences" Core..=) Core.<$> occurrences])


-- | Response for listing notes.
--
-- /See:/ 'newListNotesResponse' smart constructor.
data ListNotesResponse = ListNotesResponse
    {
      -- | The next pagination token in the list response. It should be used as @page_token@ for the following request. An empty value means no more results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The notes requested.
    , notes :: (Core.Maybe [Note])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNotesResponse' with the minimum fields required to make a request.
newListNotesResponse 
    ::  ListNotesResponse
newListNotesResponse =
  ListNotesResponse {nextPageToken = Core.Nothing, notes = Core.Nothing}

instance Core.FromJSON ListNotesResponse where
        parseJSON
          = Core.withObject "ListNotesResponse"
              (\ o ->
                 ListNotesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "notes"))

instance Core.ToJSON ListNotesResponse where
        toJSON ListNotesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("notes" Core..=) Core.<$> notes])


-- | Response for listing occurrences.
--
-- /See:/ 'newListOccurrencesResponse' smart constructor.
data ListOccurrencesResponse = ListOccurrencesResponse
    {
      -- | The next pagination token in the list response. It should be used as @page_token@ for the following request. An empty value means no more results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The occurrences requested.
    , occurrences :: (Core.Maybe [Occurrence])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOccurrencesResponse' with the minimum fields required to make a request.
newListOccurrencesResponse 
    ::  ListOccurrencesResponse
newListOccurrencesResponse =
  ListOccurrencesResponse
    {nextPageToken = Core.Nothing, occurrences = Core.Nothing}

instance Core.FromJSON ListOccurrencesResponse where
        parseJSON
          = Core.withObject "ListOccurrencesResponse"
              (\ o ->
                 ListOccurrencesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "occurrences"))

instance Core.ToJSON ListOccurrencesResponse where
        toJSON ListOccurrencesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("occurrences" Core..=) Core.<$> occurrences])


-- | An occurrence of a particular package installation found within a system\'s filesystem. E.g., glibc was found in @\/var\/lib\/dpkg\/status@.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
    {
      -- | Deprecated. The CPE URI in <https://cpe.mitre.org/specification/ CPE format>
      cpeUri :: (Core.Maybe Core.Text)
      -- | The path from which we gathered that this package\/version is installed.
    , path :: (Core.Maybe Core.Text)
      -- | Deprecated. The version installed at this location.
    , version :: (Core.Maybe Version)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation 
    ::  Location
newLocation =
  Location {cpeUri = Core.Nothing, path = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Location where
        parseJSON
          = Core.withObject "Location"
              (\ o ->
                 Location Core.<$>
                   (o Core..:? "cpeUri") Core.<*> (o Core..:? "path")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON Location where
        toJSON Location{..}
          = Core.object
              (Core.catMaybes
                 [("cpeUri" Core..=) Core.<$> cpeUri,
                  ("path" Core..=) Core.<$> path,
                  ("version" Core..=) Core.<$> version])


--
-- /See:/ 'newMaterial' smart constructor.
data Material = Material
    {
      -- | 
      digest :: (Core.Maybe Material_Digest)
      -- | 
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Material' with the minimum fields required to make a request.
newMaterial 
    ::  Material
newMaterial = Material {digest = Core.Nothing, uri = Core.Nothing}

instance Core.FromJSON Material where
        parseJSON
          = Core.withObject "Material"
              (\ o ->
                 Material Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "uri"))

instance Core.ToJSON Material where
        toJSON Material{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("uri" Core..=) Core.<$> uri])


--
-- /See:/ 'newMaterial_Digest' smart constructor.
newtype Material_Digest = Material_Digest
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Material_Digest' with the minimum fields required to make a request.
newMaterial_Digest 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Material_Digest
newMaterial_Digest additional = Material_Digest {additional = additional}

instance Core.FromJSON Material_Digest where
        parseJSON
          = Core.withObject "Material_Digest"
              (\ o ->
                 Material_Digest Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Material_Digest where
        toJSON Material_Digest{..} = Core.toJSON additional


-- | Other properties of the build.
--
-- /See:/ 'newMetadata' smart constructor.
data Metadata = Metadata
    {
      -- | The timestamp of when the build completed.
      buildFinishedOn :: (Core.Maybe Core.DateTime)
      -- | Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
    , buildInvocationId :: (Core.Maybe Core.Text)
      -- | The timestamp of when the build started.
    , buildStartedOn :: (Core.Maybe Core.DateTime)
      -- | Indicates that the builder claims certain fields in this message to be complete.
    , completeness :: (Core.Maybe Completeness)
      -- | If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
    , reproducible :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata 
    ::  Metadata
newMetadata =
  Metadata
    { buildFinishedOn = Core.Nothing
    , buildInvocationId = Core.Nothing
    , buildStartedOn = Core.Nothing
    , completeness = Core.Nothing
    , reproducible = Core.Nothing
    }

instance Core.FromJSON Metadata where
        parseJSON
          = Core.withObject "Metadata"
              (\ o ->
                 Metadata Core.<$>
                   (o Core..:? "buildFinishedOn") Core.<*>
                     (o Core..:? "buildInvocationId")
                     Core.<*> (o Core..:? "buildStartedOn")
                     Core.<*> (o Core..:? "completeness")
                     Core.<*> (o Core..:? "reproducible"))

instance Core.ToJSON Metadata where
        toJSON Metadata{..}
          = Core.object
              (Core.catMaybes
                 [("buildFinishedOn" Core..=) Core.<$>
                    buildFinishedOn,
                  ("buildInvocationId" Core..=) Core.<$>
                    buildInvocationId,
                  ("buildStartedOn" Core..=) Core.<$> buildStartedOn,
                  ("completeness" Core..=) Core.<$> completeness,
                  ("reproducible" Core..=) Core.<$> reproducible])


-- | Details about files that caused a compliance check to fail. display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using \'path\'.
--
-- /See:/ 'newNonCompliantFile' smart constructor.
data NonCompliantFile = NonCompliantFile
    {
      -- | Command to display the non-compliant files.
      displayCommand :: (Core.Maybe Core.Text)
      -- | Empty if @display_command@ is set.
    , path :: (Core.Maybe Core.Text)
      -- | Explains why a file is non compliant for a CIS check.
    , reason :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NonCompliantFile' with the minimum fields required to make a request.
newNonCompliantFile 
    ::  NonCompliantFile
newNonCompliantFile =
  NonCompliantFile
    {displayCommand = Core.Nothing, path = Core.Nothing, reason = Core.Nothing}

instance Core.FromJSON NonCompliantFile where
        parseJSON
          = Core.withObject "NonCompliantFile"
              (\ o ->
                 NonCompliantFile Core.<$>
                   (o Core..:? "displayCommand") Core.<*>
                     (o Core..:? "path")
                     Core.<*> (o Core..:? "reason"))

instance Core.ToJSON NonCompliantFile where
        toJSON NonCompliantFile{..}
          = Core.object
              (Core.catMaybes
                 [("displayCommand" Core..=) Core.<$> displayCommand,
                  ("path" Core..=) Core.<$> path,
                  ("reason" Core..=) Core.<$> reason])


-- | A type of analysis that can be done for a resource.
--
-- /See:/ 'newNote' smart constructor.
data Note = Note
    {
      -- | A note describing an attestation role.
      attestation :: (Core.Maybe AttestationNote)
      -- | A note describing build provenance for a verifiable build.
    , build :: (Core.Maybe BuildNote)
      -- | A note describing a compliance check.
    , compliance :: (Core.Maybe ComplianceNote)
      -- | Output only. The time this note was created. This field can be used as a filter in list requests.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | A note describing something that can be deployed.
    , deployment :: (Core.Maybe DeploymentNote)
      -- | A note describing the initial analysis of a resource.
    , discovery :: (Core.Maybe DiscoveryNote)
      -- | A note describing a dsse attestation note.
    , dsseAttestation :: (Core.Maybe DSSEAttestationNote)
      -- | Time of expiration for this note. Empty if note does not expire.
    , expirationTime :: (Core.Maybe Core.DateTime)
      -- | A note describing a base image.
    , image :: (Core.Maybe ImageNote)
      -- | Output only. The type of analysis. This field can be used as a filter in list requests.
    , kind :: (Core.Maybe Note_Kind)
      -- | A detailed description of this note.
    , longDescription :: (Core.Maybe Core.Text)
      -- | Output only. The name of the note in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@.
    , name :: (Core.Maybe Core.Text)
      -- | A note describing a package hosted by various package managers.
    , package :: (Core.Maybe PackageNote)
      -- | Other notes related to this note.
    , relatedNoteNames :: (Core.Maybe [Core.Text])
      -- | URLs associated with this note.
    , relatedUrl :: (Core.Maybe [RelatedUrl])
      -- | A note describing an SBOM reference.
    , sbomReference :: (Core.Maybe SBOMReferenceNote)
      -- | A one sentence description of this note.
    , shortDescription :: (Core.Maybe Core.Text)
      -- | Output only. The time this note was last updated. This field can be used as a filter in list requests.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | A note describing available package upgrades.
    , upgrade :: (Core.Maybe UpgradeNote)
      -- | A note describing a package vulnerability.
    , vulnerability :: (Core.Maybe VulnerabilityNote)
      -- | A note describing a vulnerability assessment.
    , vulnerabilityAssessment :: (Core.Maybe VulnerabilityAssessmentNote)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Note' with the minimum fields required to make a request.
newNote 
    ::  Note
newNote =
  Note
    { attestation = Core.Nothing
    , build = Core.Nothing
    , compliance = Core.Nothing
    , createTime = Core.Nothing
    , deployment = Core.Nothing
    , discovery = Core.Nothing
    , dsseAttestation = Core.Nothing
    , expirationTime = Core.Nothing
    , image = Core.Nothing
    , kind = Core.Nothing
    , longDescription = Core.Nothing
    , name = Core.Nothing
    , package = Core.Nothing
    , relatedNoteNames = Core.Nothing
    , relatedUrl = Core.Nothing
    , sbomReference = Core.Nothing
    , shortDescription = Core.Nothing
    , updateTime = Core.Nothing
    , upgrade = Core.Nothing
    , vulnerability = Core.Nothing
    , vulnerabilityAssessment = Core.Nothing
    }

instance Core.FromJSON Note where
        parseJSON
          = Core.withObject "Note"
              (\ o ->
                 Note Core.<$>
                   (o Core..:? "attestation") Core.<*>
                     (o Core..:? "build")
                     Core.<*> (o Core..:? "compliance")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deployment")
                     Core.<*> (o Core..:? "discovery")
                     Core.<*> (o Core..:? "dsseAttestation")
                     Core.<*> (o Core..:? "expirationTime")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "longDescription")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "package")
                     Core.<*> (o Core..:? "relatedNoteNames")
                     Core.<*> (o Core..:? "relatedUrl")
                     Core.<*> (o Core..:? "sbomReference")
                     Core.<*> (o Core..:? "shortDescription")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "upgrade")
                     Core.<*> (o Core..:? "vulnerability")
                     Core.<*> (o Core..:? "vulnerabilityAssessment"))

instance Core.ToJSON Note where
        toJSON Note{..}
          = Core.object
              (Core.catMaybes
                 [("attestation" Core..=) Core.<$> attestation,
                  ("build" Core..=) Core.<$> build,
                  ("compliance" Core..=) Core.<$> compliance,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deployment" Core..=) Core.<$> deployment,
                  ("discovery" Core..=) Core.<$> discovery,
                  ("dsseAttestation" Core..=) Core.<$> dsseAttestation,
                  ("expirationTime" Core..=) Core.<$> expirationTime,
                  ("image" Core..=) Core.<$> image,
                  ("kind" Core..=) Core.<$> kind,
                  ("longDescription" Core..=) Core.<$> longDescription,
                  ("name" Core..=) Core.<$> name,
                  ("package" Core..=) Core.<$> package,
                  ("relatedNoteNames" Core..=) Core.<$>
                    relatedNoteNames,
                  ("relatedUrl" Core..=) Core.<$> relatedUrl,
                  ("sbomReference" Core..=) Core.<$> sbomReference,
                  ("shortDescription" Core..=) Core.<$>
                    shortDescription,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("upgrade" Core..=) Core.<$> upgrade,
                  ("vulnerability" Core..=) Core.<$> vulnerability,
                  ("vulnerabilityAssessment" Core..=) Core.<$>
                    vulnerabilityAssessment])


-- | An instance of an analysis type that has been found on a resource.
--
-- /See:/ 'newOccurrence' smart constructor.
data Occurrence = Occurrence
    {
      -- | Describes an attestation of an artifact.
      attestation :: (Core.Maybe AttestationOccurrence)
      -- | Describes a verifiable build.
    , build :: (Core.Maybe BuildOccurrence)
      -- | Describes a compliance violation on a linked resource.
    , compliance :: (Core.Maybe ComplianceOccurrence)
      -- | Output only. The time this occurrence was created.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Describes the deployment of an artifact on a runtime.
    , deployment :: (Core.Maybe DeploymentOccurrence)
      -- | Describes when a resource was discovered.
    , discovery :: (Core.Maybe DiscoveryOccurrence)
      -- | Describes an attestation of an artifact using dsse.
    , dsseAttestation :: (Core.Maybe DSSEAttestationOccurrence)
      -- | https:\/\/github.com\/secure-systems-lab\/dsse
    , envelope :: (Core.Maybe Envelope)
      -- | Describes how this resource derives from the basis in the associated note.
    , image :: (Core.Maybe ImageOccurrence)
      -- | Output only. This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
    , kind :: (Core.Maybe Occurrence_Kind)
      -- | Output only. The name of the occurrence in the form of @projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]@.
    , name :: (Core.Maybe Core.Text)
      -- | Required. Immutable. The analysis note associated with this occurrence, in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@. This field can be used as a filter in list requests.
    , noteName :: (Core.Maybe Core.Text)
      -- | Describes the installation of a package on the linked resource.
    , package :: (Core.Maybe PackageOccurrence)
      -- | A description of actions that can be taken to remedy the note.
    , remediation :: (Core.Maybe Core.Text)
      -- | Required. Immutable. A URI that represents the resource for which the occurrence applies. For example, @https:\/\/gcr.io\/project\/image\@sha256:123abc@ for a Docker image.
    , resourceUri :: (Core.Maybe Core.Text)
      -- | Describes a specific SBOM reference occurrences.
    , sbomReference :: (Core.Maybe SBOMReferenceOccurrence)
      -- | Output only. The time this occurrence was last updated.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | Describes an available package upgrade on the linked resource.
    , upgrade :: (Core.Maybe UpgradeOccurrence)
      -- | Describes a security vulnerability.
    , vulnerability :: (Core.Maybe VulnerabilityOccurrence)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Occurrence' with the minimum fields required to make a request.
newOccurrence 
    ::  Occurrence
newOccurrence =
  Occurrence
    { attestation = Core.Nothing
    , build = Core.Nothing
    , compliance = Core.Nothing
    , createTime = Core.Nothing
    , deployment = Core.Nothing
    , discovery = Core.Nothing
    , dsseAttestation = Core.Nothing
    , envelope = Core.Nothing
    , image = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , noteName = Core.Nothing
    , package = Core.Nothing
    , remediation = Core.Nothing
    , resourceUri = Core.Nothing
    , sbomReference = Core.Nothing
    , updateTime = Core.Nothing
    , upgrade = Core.Nothing
    , vulnerability = Core.Nothing
    }

instance Core.FromJSON Occurrence where
        parseJSON
          = Core.withObject "Occurrence"
              (\ o ->
                 Occurrence Core.<$>
                   (o Core..:? "attestation") Core.<*>
                     (o Core..:? "build")
                     Core.<*> (o Core..:? "compliance")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "deployment")
                     Core.<*> (o Core..:? "discovery")
                     Core.<*> (o Core..:? "dsseAttestation")
                     Core.<*> (o Core..:? "envelope")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "noteName")
                     Core.<*> (o Core..:? "package")
                     Core.<*> (o Core..:? "remediation")
                     Core.<*> (o Core..:? "resourceUri")
                     Core.<*> (o Core..:? "sbomReference")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "upgrade")
                     Core.<*> (o Core..:? "vulnerability"))

instance Core.ToJSON Occurrence where
        toJSON Occurrence{..}
          = Core.object
              (Core.catMaybes
                 [("attestation" Core..=) Core.<$> attestation,
                  ("build" Core..=) Core.<$> build,
                  ("compliance" Core..=) Core.<$> compliance,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("deployment" Core..=) Core.<$> deployment,
                  ("discovery" Core..=) Core.<$> discovery,
                  ("dsseAttestation" Core..=) Core.<$> dsseAttestation,
                  ("envelope" Core..=) Core.<$> envelope,
                  ("image" Core..=) Core.<$> image,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("noteName" Core..=) Core.<$> noteName,
                  ("package" Core..=) Core.<$> package,
                  ("remediation" Core..=) Core.<$> remediation,
                  ("resourceUri" Core..=) Core.<$> resourceUri,
                  ("sbomReference" Core..=) Core.<$> sbomReference,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("upgrade" Core..=) Core.<$> upgrade,
                  ("vulnerability" Core..=) Core.<$> vulnerability])


-- | A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).
--
-- /See:/ 'newPackageIssue' smart constructor.
data PackageIssue = PackageIssue
    {
      -- | Required. The <https://cpe.mitre.org/specification/ CPE URI> this vulnerability was found in.
      affectedCpeUri :: (Core.Maybe Core.Text)
      -- | Required. The package this vulnerability was found in.
    , affectedPackage :: (Core.Maybe Core.Text)
      -- | Required. The version of the package that is installed on the resource affected by this vulnerability.
    , affectedVersion :: (Core.Maybe Version)
      -- | Output only. The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
    , effectiveSeverity :: (Core.Maybe PackageIssue_EffectiveSeverity)
      -- | The location at which this package was found.
    , fileLocation :: (Core.Maybe [GrafeasV1FileLocation])
      -- | Output only. Whether a fix is available for this package.
    , fixAvailable :: (Core.Maybe Core.Bool)
      -- | The <https://cpe.mitre.org/specification/ CPE URI> this vulnerability was fixed in. It is possible for this to be different from the affected/cpe/uri.
    , fixedCpeUri :: (Core.Maybe Core.Text)
      -- | The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
    , fixedPackage :: (Core.Maybe Core.Text)
      -- | Required. The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
    , fixedVersion :: (Core.Maybe Version)
      -- | The type of package (e.g. OS, MAVEN, GO).
    , packageType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PackageIssue' with the minimum fields required to make a request.
newPackageIssue 
    ::  PackageIssue
newPackageIssue =
  PackageIssue
    { affectedCpeUri = Core.Nothing
    , affectedPackage = Core.Nothing
    , affectedVersion = Core.Nothing
    , effectiveSeverity = Core.Nothing
    , fileLocation = Core.Nothing
    , fixAvailable = Core.Nothing
    , fixedCpeUri = Core.Nothing
    , fixedPackage = Core.Nothing
    , fixedVersion = Core.Nothing
    , packageType = Core.Nothing
    }

instance Core.FromJSON PackageIssue where
        parseJSON
          = Core.withObject "PackageIssue"
              (\ o ->
                 PackageIssue Core.<$>
                   (o Core..:? "affectedCpeUri") Core.<*>
                     (o Core..:? "affectedPackage")
                     Core.<*> (o Core..:? "affectedVersion")
                     Core.<*> (o Core..:? "effectiveSeverity")
                     Core.<*> (o Core..:? "fileLocation")
                     Core.<*> (o Core..:? "fixAvailable")
                     Core.<*> (o Core..:? "fixedCpeUri")
                     Core.<*> (o Core..:? "fixedPackage")
                     Core.<*> (o Core..:? "fixedVersion")
                     Core.<*> (o Core..:? "packageType"))

instance Core.ToJSON PackageIssue where
        toJSON PackageIssue{..}
          = Core.object
              (Core.catMaybes
                 [("affectedCpeUri" Core..=) Core.<$> affectedCpeUri,
                  ("affectedPackage" Core..=) Core.<$> affectedPackage,
                  ("affectedVersion" Core..=) Core.<$> affectedVersion,
                  ("effectiveSeverity" Core..=) Core.<$>
                    effectiveSeverity,
                  ("fileLocation" Core..=) Core.<$> fileLocation,
                  ("fixAvailable" Core..=) Core.<$> fixAvailable,
                  ("fixedCpeUri" Core..=) Core.<$> fixedCpeUri,
                  ("fixedPackage" Core..=) Core.<$> fixedPackage,
                  ("fixedVersion" Core..=) Core.<$> fixedVersion,
                  ("packageType" Core..=) Core.<$> packageType])


-- | PackageNote represents a particular package version.
--
-- /See:/ 'newPackageNote' smart constructor.
data PackageNote = PackageNote
    {
      -- | The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
      architecture :: (Core.Maybe PackageNote_Architecture)
      -- | The cpe/uri in <https://cpe.mitre.org/specification/ CPE format> denoting the package manager version distributing a package. The cpe/uri will be blank for language packages.
    , cpeUri :: (Core.Maybe Core.Text)
      -- | The description of this package.
    , description :: (Core.Maybe Core.Text)
      -- | Hash value, typically a file digest, that allows unique identification a specific package.
    , digest :: (Core.Maybe [Digest])
      -- | Deprecated. The various channels by which a package is distributed.
    , distribution :: (Core.Maybe [Distribution])
      -- | Licenses that have been declared by the authors of the package.
    , license :: (Core.Maybe License)
      -- | A freeform text denoting the maintainer of this package.
    , maintainer :: (Core.Maybe Core.Text)
      -- | Required. Immutable. The name of the package.
    , name :: (Core.Maybe Core.Text)
      -- | The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
    , packageType :: (Core.Maybe Core.Text)
      -- | The homepage for this package.
    , url :: (Core.Maybe Core.Text)
      -- | The version of the package.
    , version :: (Core.Maybe Version)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PackageNote' with the minimum fields required to make a request.
newPackageNote 
    ::  PackageNote
newPackageNote =
  PackageNote
    { architecture = Core.Nothing
    , cpeUri = Core.Nothing
    , description = Core.Nothing
    , digest = Core.Nothing
    , distribution = Core.Nothing
    , license = Core.Nothing
    , maintainer = Core.Nothing
    , name = Core.Nothing
    , packageType = Core.Nothing
    , url = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PackageNote where
        parseJSON
          = Core.withObject "PackageNote"
              (\ o ->
                 PackageNote Core.<$>
                   (o Core..:? "architecture") Core.<*>
                     (o Core..:? "cpeUri")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "digest")
                     Core.<*> (o Core..:? "distribution")
                     Core.<*> (o Core..:? "license")
                     Core.<*> (o Core..:? "maintainer")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "packageType")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PackageNote where
        toJSON PackageNote{..}
          = Core.object
              (Core.catMaybes
                 [("architecture" Core..=) Core.<$> architecture,
                  ("cpeUri" Core..=) Core.<$> cpeUri,
                  ("description" Core..=) Core.<$> description,
                  ("digest" Core..=) Core.<$> digest,
                  ("distribution" Core..=) Core.<$> distribution,
                  ("license" Core..=) Core.<$> license,
                  ("maintainer" Core..=) Core.<$> maintainer,
                  ("name" Core..=) Core.<$> name,
                  ("packageType" Core..=) Core.<$> packageType,
                  ("url" Core..=) Core.<$> url,
                  ("version" Core..=) Core.<$> version])


-- | Details on how a particular software package was installed on a system.
--
-- /See:/ 'newPackageOccurrence' smart constructor.
data PackageOccurrence = PackageOccurrence
    {
      -- | Output only. The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
      architecture :: (Core.Maybe PackageOccurrence_Architecture)
      -- | Output only. The cpe/uri in <https://cpe.mitre.org/specification/ CPE format> denoting the package manager version distributing a package. The cpe/uri will be blank for language packages.
    , cpeUri :: (Core.Maybe Core.Text)
      -- | Licenses that have been declared by the authors of the package.
    , license :: (Core.Maybe License)
      -- | All of the places within the filesystem versions of this package have been found.
    , location :: (Core.Maybe [Location])
      -- | Required. Output only. The name of the installed package.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
    , packageType :: (Core.Maybe Core.Text)
      -- | Output only. The version of the package.
    , version :: (Core.Maybe Version)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PackageOccurrence' with the minimum fields required to make a request.
newPackageOccurrence 
    ::  PackageOccurrence
newPackageOccurrence =
  PackageOccurrence
    { architecture = Core.Nothing
    , cpeUri = Core.Nothing
    , license = Core.Nothing
    , location = Core.Nothing
    , name = Core.Nothing
    , packageType = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON PackageOccurrence where
        parseJSON
          = Core.withObject "PackageOccurrence"
              (\ o ->
                 PackageOccurrence Core.<$>
                   (o Core..:? "architecture") Core.<*>
                     (o Core..:? "cpeUri")
                     Core.<*> (o Core..:? "license")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "packageType")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON PackageOccurrence where
        toJSON PackageOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("architecture" Core..=) Core.<$> architecture,
                  ("cpeUri" Core..=) Core.<$> cpeUri,
                  ("license" Core..=) Core.<$> license,
                  ("location" Core..=) Core.<$> location,
                  ("name" Core..=) Core.<$> name,
                  ("packageType" Core..=) Core.<$> packageType,
                  ("version" Core..=) Core.<$> version])


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
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

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy 
    ::  Policy
newPolicy =
  Policy {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Policy where
        parseJSON
          = Core.withObject "Policy"
              (\ o ->
                 Policy Core.<$>
                   (o Core..:? "bindings") Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON Policy where
        toJSON Policy{..}
          = Core.object
              (Core.catMaybes
                 [("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


-- | Product contains information about a product and how to uniquely identify it.
--
-- /See:/ 'newProduct' smart constructor.
data Product = Product
    {
      -- | Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
      genericUri :: (Core.Maybe Core.Text)
      -- | Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
    , id :: (Core.Maybe Core.Text)
      -- | Name of the product.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
newProduct 
    ::  Product
newProduct =
  Product {genericUri = Core.Nothing, id = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Product where
        parseJSON
          = Core.withObject "Product"
              (\ o ->
                 Product Core.<$>
                   (o Core..:? "genericUri") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Product where
        toJSON Product{..}
          = Core.object
              (Core.catMaybes
                 [("genericUri" Core..=) Core.<$> genericUri,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name])


-- | Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.
--
-- /See:/ 'newProjectRepoId' smart constructor.
data ProjectRepoId = ProjectRepoId
    {
      -- | The ID of the project.
      projectId :: (Core.Maybe Core.Text)
      -- | The name of the repo. Leave empty for the default repo.
    , repoName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectRepoId' with the minimum fields required to make a request.
newProjectRepoId 
    ::  ProjectRepoId
newProjectRepoId =
  ProjectRepoId {projectId = Core.Nothing, repoName = Core.Nothing}

instance Core.FromJSON ProjectRepoId where
        parseJSON
          = Core.withObject "ProjectRepoId"
              (\ o ->
                 ProjectRepoId Core.<$>
                   (o Core..:? "projectId") Core.<*>
                     (o Core..:? "repoName"))

instance Core.ToJSON ProjectRepoId where
        toJSON ProjectRepoId{..}
          = Core.object
              (Core.catMaybes
                 [("projectId" Core..=) Core.<$> projectId,
                  ("repoName" Core..=) Core.<$> repoName])


--
-- /See:/ 'newProvenanceBuilder' smart constructor.
data ProvenanceBuilder = ProvenanceBuilder
    {
      -- | 
      builderDependencies :: (Core.Maybe [ResourceDescriptor])
      -- | 
    , id :: (Core.Maybe Core.Text)
      -- | 
    , version :: (Core.Maybe ProvenanceBuilder_Version)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProvenanceBuilder' with the minimum fields required to make a request.
newProvenanceBuilder 
    ::  ProvenanceBuilder
newProvenanceBuilder =
  ProvenanceBuilder
    { builderDependencies = Core.Nothing
    , id = Core.Nothing
    , version = Core.Nothing
    }

instance Core.FromJSON ProvenanceBuilder where
        parseJSON
          = Core.withObject "ProvenanceBuilder"
              (\ o ->
                 ProvenanceBuilder Core.<$>
                   (o Core..:? "builderDependencies") Core.<*>
                     (o Core..:? "id")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON ProvenanceBuilder where
        toJSON ProvenanceBuilder{..}
          = Core.object
              (Core.catMaybes
                 [("builderDependencies" Core..=) Core.<$>
                    builderDependencies,
                  ("id" Core..=) Core.<$> id,
                  ("version" Core..=) Core.<$> version])


--
-- /See:/ 'newProvenanceBuilder_Version' smart constructor.
newtype ProvenanceBuilder_Version = ProvenanceBuilder_Version
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProvenanceBuilder_Version' with the minimum fields required to make a request.
newProvenanceBuilder_Version 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> ProvenanceBuilder_Version
newProvenanceBuilder_Version additional =
  ProvenanceBuilder_Version {additional = additional}

instance Core.FromJSON ProvenanceBuilder_Version
         where
        parseJSON
          = Core.withObject "ProvenanceBuilder_Version"
              (\ o ->
                 ProvenanceBuilder_Version Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON ProvenanceBuilder_Version where
        toJSON ProvenanceBuilder_Version{..}
          = Core.toJSON additional


-- | Publisher contains information about the publisher of this Note.
--
-- /See:/ 'newPublisher' smart constructor.
data Publisher = Publisher
    {
      -- | Provides information about the authority of the issuing party to release the document, in particular, the party\'s constituency and responsibilities or other obligations.
      issuingAuthority :: (Core.Maybe Core.Text)
      -- | Name of the publisher. Examples: \'Google\', \'Google Cloud Platform\'.
    , name :: (Core.Maybe Core.Text)
      -- | The context or namespace. Contains a URL which is under control of the issuing party and can be used as a globally unique identifier for that issuing party. Example: https:\/\/csaf.io
    , publisherNamespace :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Publisher' with the minimum fields required to make a request.
newPublisher 
    ::  Publisher
newPublisher =
  Publisher
    { issuingAuthority = Core.Nothing
    , name = Core.Nothing
    , publisherNamespace = Core.Nothing
    }

instance Core.FromJSON Publisher where
        parseJSON
          = Core.withObject "Publisher"
              (\ o ->
                 Publisher Core.<$>
                   (o Core..:? "issuingAuthority") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "publisherNamespace"))

instance Core.ToJSON Publisher where
        toJSON Publisher{..}
          = Core.object
              (Core.catMaybes
                 [("issuingAuthority" Core..=) Core.<$>
                    issuingAuthority,
                  ("name" Core..=) Core.<$> name,
                  ("publisherNamespace" Core..=) Core.<$>
                    publisherNamespace])


-- | Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.
--
-- /See:/ 'newRecipe' smart constructor.
data Recipe = Recipe
    {
      -- | Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were \"make\", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Since the arguments field can greatly vary in structure, depending on the builder and recipe type, this is of form \"Any\".
      arguments :: (Core.Maybe [Recipe_ArgumentsItem])
      -- | Index in materials containing the recipe steps that are not implied by recipe.type. For example, if the recipe type were \"make\", then this would point to the source containing the Makefile, not the make program itself. Set to -1 if the recipe doesn\'t come from a material, as zero is default unset value for int64.
    , definedInMaterial :: (Core.Maybe Core.Int64)
      -- | String identifying the entry point into the build. This is often a path to a configuration file and\/or a target label within that file. The syntax and meaning are defined by recipe.type. For example, if the recipe type were \"make\", then this would reference the directory in which to run make as well as which target to use.
    , entryPoint :: (Core.Maybe Core.Text)
      -- | Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Since the environment field can greatly vary in structure, depending on the builder and recipe type, this is of form \"Any\".
    , environment :: (Core.Maybe [Recipe_EnvironmentItem])
      -- | URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and materials.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Recipe' with the minimum fields required to make a request.
newRecipe 
    ::  Recipe
newRecipe =
  Recipe
    { arguments = Core.Nothing
    , definedInMaterial = Core.Nothing
    , entryPoint = Core.Nothing
    , environment = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Recipe where
        parseJSON
          = Core.withObject "Recipe"
              (\ o ->
                 Recipe Core.<$>
                   (o Core..:? "arguments") Core.<*>
                     (o Core..:? "definedInMaterial" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "entryPoint")
                     Core.<*> (o Core..:? "environment")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Recipe where
        toJSON Recipe{..}
          = Core.object
              (Core.catMaybes
                 [("arguments" Core..=) Core.<$> arguments,
                  ("definedInMaterial" Core..=) Core.. Core.AsText
                    Core.<$> definedInMaterial,
                  ("entryPoint" Core..=) Core.<$> entryPoint,
                  ("environment" Core..=) Core.<$> environment,
                  ("type" Core..=) Core.<$> type'])


--
-- /See:/ 'newRecipe_ArgumentsItem' smart constructor.
newtype Recipe_ArgumentsItem = Recipe_ArgumentsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Recipe_ArgumentsItem' with the minimum fields required to make a request.
newRecipe_ArgumentsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Recipe_ArgumentsItem
newRecipe_ArgumentsItem additional =
  Recipe_ArgumentsItem {additional = additional}

instance Core.FromJSON Recipe_ArgumentsItem where
        parseJSON
          = Core.withObject "Recipe_ArgumentsItem"
              (\ o ->
                 Recipe_ArgumentsItem Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Recipe_ArgumentsItem where
        toJSON Recipe_ArgumentsItem{..}
          = Core.toJSON additional


--
-- /See:/ 'newRecipe_EnvironmentItem' smart constructor.
newtype Recipe_EnvironmentItem = Recipe_EnvironmentItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Recipe_EnvironmentItem' with the minimum fields required to make a request.
newRecipe_EnvironmentItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Recipe_EnvironmentItem
newRecipe_EnvironmentItem additional =
  Recipe_EnvironmentItem {additional = additional}

instance Core.FromJSON Recipe_EnvironmentItem where
        parseJSON
          = Core.withObject "Recipe_EnvironmentItem"
              (\ o ->
                 Recipe_EnvironmentItem Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Recipe_EnvironmentItem where
        toJSON Recipe_EnvironmentItem{..}
          = Core.toJSON additional


-- | Metadata for any related URL information.
--
-- /See:/ 'newRelatedUrl' smart constructor.
data RelatedUrl = RelatedUrl
    {
      -- | Label to describe usage of the URL.
      label :: (Core.Maybe Core.Text)
      -- | Specific URL associated with the resource.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RelatedUrl' with the minimum fields required to make a request.
newRelatedUrl 
    ::  RelatedUrl
newRelatedUrl = RelatedUrl {label = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON RelatedUrl where
        parseJSON
          = Core.withObject "RelatedUrl"
              (\ o ->
                 RelatedUrl Core.<$>
                   (o Core..:? "label") Core.<*> (o Core..:? "url"))

instance Core.ToJSON RelatedUrl where
        toJSON RelatedUrl{..}
          = Core.object
              (Core.catMaybes
                 [("label" Core..=) Core.<$> label,
                  ("url" Core..=) Core.<$> url])


-- | Specifies details on how to handle (and presumably, fix) a vulnerability.
--
-- /See:/ 'newRemediation' smart constructor.
data Remediation = Remediation
    {
      -- | Contains a comprehensive human-readable discussion of the remediation.
      details :: (Core.Maybe Core.Text)
      -- | The type of remediation that can be applied.
    , remediationType :: (Core.Maybe Remediation_RemediationType)
      -- | Contains the URL where to obtain the remediation.
    , remediationUri :: (Core.Maybe RelatedUrl)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Remediation' with the minimum fields required to make a request.
newRemediation 
    ::  Remediation
newRemediation =
  Remediation
    { details = Core.Nothing
    , remediationType = Core.Nothing
    , remediationUri = Core.Nothing
    }

instance Core.FromJSON Remediation where
        parseJSON
          = Core.withObject "Remediation"
              (\ o ->
                 Remediation Core.<$>
                   (o Core..:? "details") Core.<*>
                     (o Core..:? "remediationType")
                     Core.<*> (o Core..:? "remediationUri"))

instance Core.ToJSON Remediation where
        toJSON Remediation{..}
          = Core.object
              (Core.catMaybes
                 [("details" Core..=) Core.<$> details,
                  ("remediationType" Core..=) Core.<$> remediationType,
                  ("remediationUri" Core..=) Core.<$> remediationUri])


-- | A unique identifier for a Cloud Repo.
--
-- /See:/ 'newRepoId' smart constructor.
data RepoId = RepoId
    {
      -- | A combination of a project ID and a repo name.
      projectRepoId :: (Core.Maybe ProjectRepoId)
      -- | A server-assigned, globally unique identifier.
    , uid :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepoId' with the minimum fields required to make a request.
newRepoId 
    ::  RepoId
newRepoId = RepoId {projectRepoId = Core.Nothing, uid = Core.Nothing}

instance Core.FromJSON RepoId where
        parseJSON
          = Core.withObject "RepoId"
              (\ o ->
                 RepoId Core.<$>
                   (o Core..:? "projectRepoId") Core.<*>
                     (o Core..:? "uid"))

instance Core.ToJSON RepoId where
        toJSON RepoId{..}
          = Core.object
              (Core.catMaybes
                 [("projectRepoId" Core..=) Core.<$> projectRepoId,
                  ("uid" Core..=) Core.<$> uid])


--
-- /See:/ 'newResourceDescriptor' smart constructor.
data ResourceDescriptor = ResourceDescriptor
    {
      -- | 
      annotations :: (Core.Maybe ResourceDescriptor_Annotations)
      -- | 
    , content :: (Core.Maybe Core.Base64)
      -- | 
    , digest :: (Core.Maybe ResourceDescriptor_Digest)
      -- | 
    , downloadLocation :: (Core.Maybe Core.Text)
      -- | 
    , mediaType :: (Core.Maybe Core.Text)
      -- | 
    , name :: (Core.Maybe Core.Text)
      -- | 
    , uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceDescriptor' with the minimum fields required to make a request.
newResourceDescriptor 
    ::  ResourceDescriptor
newResourceDescriptor =
  ResourceDescriptor
    { annotations = Core.Nothing
    , content = Core.Nothing
    , digest = Core.Nothing
    , downloadLocation = Core.Nothing
    , mediaType = Core.Nothing
    , name = Core.Nothing
    , uri = Core.Nothing
    }

instance Core.FromJSON ResourceDescriptor where
        parseJSON
          = Core.withObject "ResourceDescriptor"
              (\ o ->
                 ResourceDescriptor Core.<$>
                   (o Core..:? "annotations") Core.<*>
                     (o Core..:? "content")
                     Core.<*> (o Core..:? "digest")
                     Core.<*> (o Core..:? "downloadLocation")
                     Core.<*> (o Core..:? "mediaType")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "uri"))

instance Core.ToJSON ResourceDescriptor where
        toJSON ResourceDescriptor{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("content" Core..=) Core.<$> content,
                  ("digest" Core..=) Core.<$> digest,
                  ("downloadLocation" Core..=) Core.<$>
                    downloadLocation,
                  ("mediaType" Core..=) Core.<$> mediaType,
                  ("name" Core..=) Core.<$> name,
                  ("uri" Core..=) Core.<$> uri])


--
-- /See:/ 'newResourceDescriptor_Annotations' smart constructor.
newtype ResourceDescriptor_Annotations = ResourceDescriptor_Annotations
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceDescriptor_Annotations' with the minimum fields required to make a request.
newResourceDescriptor_Annotations 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  See 'additional'.
    -> ResourceDescriptor_Annotations
newResourceDescriptor_Annotations additional =
  ResourceDescriptor_Annotations {additional = additional}

instance Core.FromJSON ResourceDescriptor_Annotations
         where
        parseJSON
          = Core.withObject "ResourceDescriptor_Annotations"
              (\ o ->
                 ResourceDescriptor_Annotations Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON ResourceDescriptor_Annotations
         where
        toJSON ResourceDescriptor_Annotations{..}
          = Core.toJSON additional


--
-- /See:/ 'newResourceDescriptor_Digest' smart constructor.
newtype ResourceDescriptor_Digest = ResourceDescriptor_Digest
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceDescriptor_Digest' with the minimum fields required to make a request.
newResourceDescriptor_Digest 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> ResourceDescriptor_Digest
newResourceDescriptor_Digest additional =
  ResourceDescriptor_Digest {additional = additional}

instance Core.FromJSON ResourceDescriptor_Digest
         where
        parseJSON
          = Core.withObject "ResourceDescriptor_Digest"
              (\ o ->
                 ResourceDescriptor_Digest Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON ResourceDescriptor_Digest where
        toJSON ResourceDescriptor_Digest{..}
          = Core.toJSON additional


--
-- /See:/ 'newRunDetails' smart constructor.
data RunDetails = RunDetails
    {
      -- | 
      builder :: (Core.Maybe ProvenanceBuilder)
      -- | 
    , byproducts :: (Core.Maybe [ResourceDescriptor])
      -- | 
    , metadata :: (Core.Maybe BuildMetadata)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunDetails' with the minimum fields required to make a request.
newRunDetails 
    ::  RunDetails
newRunDetails =
  RunDetails
    {builder = Core.Nothing, byproducts = Core.Nothing, metadata = Core.Nothing}

instance Core.FromJSON RunDetails where
        parseJSON
          = Core.withObject "RunDetails"
              (\ o ->
                 RunDetails Core.<$>
                   (o Core..:? "builder") Core.<*>
                     (o Core..:? "byproducts")
                     Core.<*> (o Core..:? "metadata"))

instance Core.ToJSON RunDetails where
        toJSON RunDetails{..}
          = Core.object
              (Core.catMaybes
                 [("builder" Core..=) Core.<$> builder,
                  ("byproducts" Core..=) Core.<$> byproducts,
                  ("metadata" Core..=) Core.<$> metadata])


-- | The note representing an SBOM reference.
--
-- /See:/ 'newSBOMReferenceNote' smart constructor.
data SBOMReferenceNote = SBOMReferenceNote
    {
      -- | The format that SBOM takes. E.g. may be spdx, cyclonedx, etc...
      format :: (Core.Maybe Core.Text)
      -- | The version of the format that the SBOM takes. E.g. if the format is spdx, the version may be 2.3.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SBOMReferenceNote' with the minimum fields required to make a request.
newSBOMReferenceNote 
    ::  SBOMReferenceNote
newSBOMReferenceNote =
  SBOMReferenceNote {format = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON SBOMReferenceNote where
        parseJSON
          = Core.withObject "SBOMReferenceNote"
              (\ o ->
                 SBOMReferenceNote Core.<$>
                   (o Core..:? "format") Core.<*>
                     (o Core..:? "version"))

instance Core.ToJSON SBOMReferenceNote where
        toJSON SBOMReferenceNote{..}
          = Core.object
              (Core.catMaybes
                 [("format" Core..=) Core.<$> format,
                  ("version" Core..=) Core.<$> version])


-- | The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https:\/\/github.com\/secure-systems-lab\/dsse\/blob\/master\/envelope.md for more details.
--
-- /See:/ 'newSBOMReferenceOccurrence' smart constructor.
data SBOMReferenceOccurrence = SBOMReferenceOccurrence
    {
      -- | The actual payload that contains the SBOM reference data.
      payload :: (Core.Maybe SbomReferenceIntotoPayload)
      -- | The kind of payload that SbomReferenceIntotoPayload takes. Since it\'s in the intoto format, this value is expected to be \'application\/vnd.in-toto+json\'.
    , payloadType :: (Core.Maybe Core.Text)
      -- | The signatures over the payload.
    , signatures :: (Core.Maybe [EnvelopeSignature])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SBOMReferenceOccurrence' with the minimum fields required to make a request.
newSBOMReferenceOccurrence 
    ::  SBOMReferenceOccurrence
newSBOMReferenceOccurrence =
  SBOMReferenceOccurrence
    { payload = Core.Nothing
    , payloadType = Core.Nothing
    , signatures = Core.Nothing
    }

instance Core.FromJSON SBOMReferenceOccurrence where
        parseJSON
          = Core.withObject "SBOMReferenceOccurrence"
              (\ o ->
                 SBOMReferenceOccurrence Core.<$>
                   (o Core..:? "payload") Core.<*>
                     (o Core..:? "payloadType")
                     Core.<*> (o Core..:? "signatures"))

instance Core.ToJSON SBOMReferenceOccurrence where
        toJSON SBOMReferenceOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("payload" Core..=) Core.<$> payload,
                  ("payloadType" Core..=) Core.<$> payloadType,
                  ("signatures" Core..=) Core.<$> signatures])


-- | The status of an SBOM generation.
--
-- /See:/ 'newSBOMStatus' smart constructor.
data SBOMStatus = SBOMStatus
    {
      -- | If there was an error generating an SBOM, this will indicate what that error was.
      error :: (Core.Maybe Core.Text)
      -- | The progress of the SBOM generation.
    , sbomState :: (Core.Maybe SBOMStatus_SbomState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SBOMStatus' with the minimum fields required to make a request.
newSBOMStatus 
    ::  SBOMStatus
newSBOMStatus = SBOMStatus {error = Core.Nothing, sbomState = Core.Nothing}

instance Core.FromJSON SBOMStatus where
        parseJSON
          = Core.withObject "SBOMStatus"
              (\ o ->
                 SBOMStatus Core.<$>
                   (o Core..:? "error") Core.<*>
                     (o Core..:? "sbomState"))

instance Core.ToJSON SBOMStatus where
        toJSON SBOMStatus{..}
          = Core.object
              (Core.catMaybes
                 [("error" Core..=) Core.<$> error,
                  ("sbomState" Core..=) Core.<$> sbomState])


-- | The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https:\/\/github.com\/in-toto\/attestation\/blob\/main\/spec\/v1.0\/statement.md for more details.
--
-- /See:/ 'newSbomReferenceIntotoPayload' smart constructor.
data SbomReferenceIntotoPayload = SbomReferenceIntotoPayload
    {
      -- | Identifier for the schema of the Statement.
      type' :: (Core.Maybe Core.Text)
      -- | Additional parameters of the Predicate. Includes the actual data about the SBOM.
    , predicate :: (Core.Maybe SbomReferenceIntotoPredicate)
      -- | URI identifying the type of the Predicate.
    , predicateType :: (Core.Maybe Core.Text)
      -- | Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
    , subject :: (Core.Maybe [Subject])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SbomReferenceIntotoPayload' with the minimum fields required to make a request.
newSbomReferenceIntotoPayload 
    ::  SbomReferenceIntotoPayload
newSbomReferenceIntotoPayload =
  SbomReferenceIntotoPayload
    { type' = Core.Nothing
    , predicate = Core.Nothing
    , predicateType = Core.Nothing
    , subject = Core.Nothing
    }

instance Core.FromJSON SbomReferenceIntotoPayload
         where
        parseJSON
          = Core.withObject "SbomReferenceIntotoPayload"
              (\ o ->
                 SbomReferenceIntotoPayload Core.<$>
                   (o Core..:? "_type") Core.<*>
                     (o Core..:? "predicate")
                     Core.<*> (o Core..:? "predicateType")
                     Core.<*> (o Core..:? "subject"))

instance Core.ToJSON SbomReferenceIntotoPayload where
        toJSON SbomReferenceIntotoPayload{..}
          = Core.object
              (Core.catMaybes
                 [("_type" Core..=) Core.<$> type',
                  ("predicate" Core..=) Core.<$> predicate,
                  ("predicateType" Core..=) Core.<$> predicateType,
                  ("subject" Core..=) Core.<$> subject])


-- | A predicate which describes the SBOM being referenced.
--
-- /See:/ 'newSbomReferenceIntotoPredicate' smart constructor.
data SbomReferenceIntotoPredicate = SbomReferenceIntotoPredicate
    {
      -- | A map of algorithm to digest of the contents of the SBOM.
      digest :: (Core.Maybe SbomReferenceIntotoPredicate_Digest)
      -- | The location of the SBOM.
    , location :: (Core.Maybe Core.Text)
      -- | The mime type of the SBOM.
    , mimeType :: (Core.Maybe Core.Text)
      -- | The person or system referring this predicate to the consumer.
    , referrerId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SbomReferenceIntotoPredicate' with the minimum fields required to make a request.
newSbomReferenceIntotoPredicate 
    ::  SbomReferenceIntotoPredicate
newSbomReferenceIntotoPredicate =
  SbomReferenceIntotoPredicate
    { digest = Core.Nothing
    , location = Core.Nothing
    , mimeType = Core.Nothing
    , referrerId = Core.Nothing
    }

instance Core.FromJSON SbomReferenceIntotoPredicate
         where
        parseJSON
          = Core.withObject "SbomReferenceIntotoPredicate"
              (\ o ->
                 SbomReferenceIntotoPredicate Core.<$>
                   (o Core..:? "digest") Core.<*>
                     (o Core..:? "location")
                     Core.<*> (o Core..:? "mimeType")
                     Core.<*> (o Core..:? "referrerId"))

instance Core.ToJSON SbomReferenceIntotoPredicate
         where
        toJSON SbomReferenceIntotoPredicate{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("location" Core..=) Core.<$> location,
                  ("mimeType" Core..=) Core.<$> mimeType,
                  ("referrerId" Core..=) Core.<$> referrerId])


-- | A map of algorithm to digest of the contents of the SBOM.
--
-- /See:/ 'newSbomReferenceIntotoPredicate_Digest' smart constructor.
newtype SbomReferenceIntotoPredicate_Digest = SbomReferenceIntotoPredicate_Digest
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SbomReferenceIntotoPredicate_Digest' with the minimum fields required to make a request.
newSbomReferenceIntotoPredicate_Digest 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> SbomReferenceIntotoPredicate_Digest
newSbomReferenceIntotoPredicate_Digest additional =
  SbomReferenceIntotoPredicate_Digest {additional = additional}

instance Core.FromJSON
           SbomReferenceIntotoPredicate_Digest
         where
        parseJSON
          = Core.withObject
              "SbomReferenceIntotoPredicate_Digest"
              (\ o ->
                 SbomReferenceIntotoPredicate_Digest Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           SbomReferenceIntotoPredicate_Digest
         where
        toJSON SbomReferenceIntotoPredicate_Digest{..}
          = Core.toJSON additional


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
      policy :: (Core.Maybe Policy)
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


--
-- /See:/ 'newSlsaBuilder' smart constructor.
newtype SlsaBuilder = SlsaBuilder
    {
      -- | 
      id :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaBuilder' with the minimum fields required to make a request.
newSlsaBuilder 
    ::  SlsaBuilder
newSlsaBuilder = SlsaBuilder {id = Core.Nothing}

instance Core.FromJSON SlsaBuilder where
        parseJSON
          = Core.withObject "SlsaBuilder"
              (\ o -> SlsaBuilder Core.<$> (o Core..:? "id"))

instance Core.ToJSON SlsaBuilder where
        toJSON SlsaBuilder{..}
          = Core.object
              (Core.catMaybes [("id" Core..=) Core.<$> id])


-- | Indicates that the builder claims certain fields in this message to be complete.
--
-- /See:/ 'newSlsaCompleteness' smart constructor.
data SlsaCompleteness = SlsaCompleteness
    {
      -- | If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
      arguments :: (Core.Maybe Core.Bool)
      -- | If true, the builder claims that recipe.environment is claimed to be complete.
    , environment :: (Core.Maybe Core.Bool)
      -- | If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called \"hermetic\".
    , materials :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaCompleteness' with the minimum fields required to make a request.
newSlsaCompleteness 
    ::  SlsaCompleteness
newSlsaCompleteness =
  SlsaCompleteness
    { arguments = Core.Nothing
    , environment = Core.Nothing
    , materials = Core.Nothing
    }

instance Core.FromJSON SlsaCompleteness where
        parseJSON
          = Core.withObject "SlsaCompleteness"
              (\ o ->
                 SlsaCompleteness Core.<$>
                   (o Core..:? "arguments") Core.<*>
                     (o Core..:? "environment")
                     Core.<*> (o Core..:? "materials"))

instance Core.ToJSON SlsaCompleteness where
        toJSON SlsaCompleteness{..}
          = Core.object
              (Core.catMaybes
                 [("arguments" Core..=) Core.<$> arguments,
                  ("environment" Core..=) Core.<$> environment,
                  ("materials" Core..=) Core.<$> materials])


-- | Other properties of the build.
--
-- /See:/ 'newSlsaMetadata' smart constructor.
data SlsaMetadata = SlsaMetadata
    {
      -- | The timestamp of when the build completed.
      buildFinishedOn :: (Core.Maybe Core.DateTime)
      -- | Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.
    , buildInvocationId :: (Core.Maybe Core.Text)
      -- | The timestamp of when the build started.
    , buildStartedOn :: (Core.Maybe Core.DateTime)
      -- | Indicates that the builder claims certain fields in this message to be complete.
    , completeness :: (Core.Maybe SlsaCompleteness)
      -- | If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.
    , reproducible :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaMetadata' with the minimum fields required to make a request.
newSlsaMetadata 
    ::  SlsaMetadata
newSlsaMetadata =
  SlsaMetadata
    { buildFinishedOn = Core.Nothing
    , buildInvocationId = Core.Nothing
    , buildStartedOn = Core.Nothing
    , completeness = Core.Nothing
    , reproducible = Core.Nothing
    }

instance Core.FromJSON SlsaMetadata where
        parseJSON
          = Core.withObject "SlsaMetadata"
              (\ o ->
                 SlsaMetadata Core.<$>
                   (o Core..:? "buildFinishedOn") Core.<*>
                     (o Core..:? "buildInvocationId")
                     Core.<*> (o Core..:? "buildStartedOn")
                     Core.<*> (o Core..:? "completeness")
                     Core.<*> (o Core..:? "reproducible"))

instance Core.ToJSON SlsaMetadata where
        toJSON SlsaMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("buildFinishedOn" Core..=) Core.<$>
                    buildFinishedOn,
                  ("buildInvocationId" Core..=) Core.<$>
                    buildInvocationId,
                  ("buildStartedOn" Core..=) Core.<$> buildStartedOn,
                  ("completeness" Core..=) Core.<$> completeness,
                  ("reproducible" Core..=) Core.<$> reproducible])


--
-- /See:/ 'newSlsaProvenance' smart constructor.
data SlsaProvenance = SlsaProvenance
    {
      -- | required
      builder :: (Core.Maybe SlsaBuilder)
      -- | The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
    , materials :: (Core.Maybe [Material])
      -- | 
    , metadata :: (Core.Maybe SlsaMetadata)
      -- | Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
    , recipe :: (Core.Maybe SlsaRecipe)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaProvenance' with the minimum fields required to make a request.
newSlsaProvenance 
    ::  SlsaProvenance
newSlsaProvenance =
  SlsaProvenance
    { builder = Core.Nothing
    , materials = Core.Nothing
    , metadata = Core.Nothing
    , recipe = Core.Nothing
    }

instance Core.FromJSON SlsaProvenance where
        parseJSON
          = Core.withObject "SlsaProvenance"
              (\ o ->
                 SlsaProvenance Core.<$>
                   (o Core..:? "builder") Core.<*>
                     (o Core..:? "materials")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "recipe"))

instance Core.ToJSON SlsaProvenance where
        toJSON SlsaProvenance{..}
          = Core.object
              (Core.catMaybes
                 [("builder" Core..=) Core.<$> builder,
                  ("materials" Core..=) Core.<$> materials,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("recipe" Core..=) Core.<$> recipe])


-- | Keep in sync with schema at https:\/\/github.com\/slsa-framework\/slsa\/blob\/main\/docs\/provenance\/schema\/v1\/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
--
-- /See:/ 'newSlsaProvenanceV1' smart constructor.
data SlsaProvenanceV1 = SlsaProvenanceV1
    {
      -- | 
      buildDefinition :: (Core.Maybe BuildDefinition)
      -- | 
    , runDetails :: (Core.Maybe RunDetails)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaProvenanceV1' with the minimum fields required to make a request.
newSlsaProvenanceV1 
    ::  SlsaProvenanceV1
newSlsaProvenanceV1 =
  SlsaProvenanceV1 {buildDefinition = Core.Nothing, runDetails = Core.Nothing}

instance Core.FromJSON SlsaProvenanceV1 where
        parseJSON
          = Core.withObject "SlsaProvenanceV1"
              (\ o ->
                 SlsaProvenanceV1 Core.<$>
                   (o Core..:? "buildDefinition") Core.<*>
                     (o Core..:? "runDetails"))

instance Core.ToJSON SlsaProvenanceV1 where
        toJSON SlsaProvenanceV1{..}
          = Core.object
              (Core.catMaybes
                 [("buildDefinition" Core..=) Core.<$>
                    buildDefinition,
                  ("runDetails" Core..=) Core.<$> runDetails])


-- | See full explanation of fields at slsa.dev\/provenance\/v0.2.
--
-- /See:/ 'newSlsaProvenanceZeroTwo' smart constructor.
data SlsaProvenanceZeroTwo = SlsaProvenanceZeroTwo
    {
      -- | 
      buildConfig :: (Core.Maybe SlsaProvenanceZeroTwo_BuildConfig)
      -- | 
    , buildType :: (Core.Maybe Core.Text)
      -- | 
    , builder :: (Core.Maybe GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder)
      -- | 
    , invocation :: (Core.Maybe GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation)
      -- | 
    , materials :: (Core.Maybe [GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial])
      -- | 
    , metadata :: (Core.Maybe GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaProvenanceZeroTwo' with the minimum fields required to make a request.
newSlsaProvenanceZeroTwo 
    ::  SlsaProvenanceZeroTwo
newSlsaProvenanceZeroTwo =
  SlsaProvenanceZeroTwo
    { buildConfig = Core.Nothing
    , buildType = Core.Nothing
    , builder = Core.Nothing
    , invocation = Core.Nothing
    , materials = Core.Nothing
    , metadata = Core.Nothing
    }

instance Core.FromJSON SlsaProvenanceZeroTwo where
        parseJSON
          = Core.withObject "SlsaProvenanceZeroTwo"
              (\ o ->
                 SlsaProvenanceZeroTwo Core.<$>
                   (o Core..:? "buildConfig") Core.<*>
                     (o Core..:? "buildType")
                     Core.<*> (o Core..:? "builder")
                     Core.<*> (o Core..:? "invocation")
                     Core.<*> (o Core..:? "materials")
                     Core.<*> (o Core..:? "metadata"))

instance Core.ToJSON SlsaProvenanceZeroTwo where
        toJSON SlsaProvenanceZeroTwo{..}
          = Core.object
              (Core.catMaybes
                 [("buildConfig" Core..=) Core.<$> buildConfig,
                  ("buildType" Core..=) Core.<$> buildType,
                  ("builder" Core..=) Core.<$> builder,
                  ("invocation" Core..=) Core.<$> invocation,
                  ("materials" Core..=) Core.<$> materials,
                  ("metadata" Core..=) Core.<$> metadata])


--
-- /See:/ 'newSlsaProvenanceZeroTwo_BuildConfig' smart constructor.
newtype SlsaProvenanceZeroTwo_BuildConfig = SlsaProvenanceZeroTwo_BuildConfig
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaProvenanceZeroTwo_BuildConfig' with the minimum fields required to make a request.
newSlsaProvenanceZeroTwo_BuildConfig 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> SlsaProvenanceZeroTwo_BuildConfig
newSlsaProvenanceZeroTwo_BuildConfig additional =
  SlsaProvenanceZeroTwo_BuildConfig {additional = additional}

instance Core.FromJSON
           SlsaProvenanceZeroTwo_BuildConfig
         where
        parseJSON
          = Core.withObject "SlsaProvenanceZeroTwo_BuildConfig"
              (\ o ->
                 SlsaProvenanceZeroTwo_BuildConfig Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           SlsaProvenanceZeroTwo_BuildConfig
         where
        toJSON SlsaProvenanceZeroTwo_BuildConfig{..}
          = Core.toJSON additional


-- | Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.
--
-- /See:/ 'newSlsaRecipe' smart constructor.
data SlsaRecipe = SlsaRecipe
    {
      -- | Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were \"make\", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Depending on the recipe Type, the structure may be different.
      arguments :: (Core.Maybe SlsaRecipe_Arguments)
      -- | Index in materials containing the recipe steps that are not implied by recipe.type. For example, if the recipe type were \"make\", then this would point to the source containing the Makefile, not the make program itself. Set to -1 if the recipe doesn\'t come from a material, as zero is default unset value for int64.
    , definedInMaterial :: (Core.Maybe Core.Int64)
      -- | String identifying the entry point into the build. This is often a path to a configuration file and\/or a target label within that file. The syntax and meaning are defined by recipe.type. For example, if the recipe type were \"make\", then this would reference the directory in which to run make as well as which target to use.
    , entryPoint :: (Core.Maybe Core.Text)
      -- | Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Depending on the recipe Type, the structure may be different.
    , environment :: (Core.Maybe SlsaRecipe_Environment)
      -- | URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and materials.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaRecipe' with the minimum fields required to make a request.
newSlsaRecipe 
    ::  SlsaRecipe
newSlsaRecipe =
  SlsaRecipe
    { arguments = Core.Nothing
    , definedInMaterial = Core.Nothing
    , entryPoint = Core.Nothing
    , environment = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON SlsaRecipe where
        parseJSON
          = Core.withObject "SlsaRecipe"
              (\ o ->
                 SlsaRecipe Core.<$>
                   (o Core..:? "arguments") Core.<*>
                     (o Core..:? "definedInMaterial" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "entryPoint")
                     Core.<*> (o Core..:? "environment")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON SlsaRecipe where
        toJSON SlsaRecipe{..}
          = Core.object
              (Core.catMaybes
                 [("arguments" Core..=) Core.<$> arguments,
                  ("definedInMaterial" Core..=) Core.. Core.AsText
                    Core.<$> definedInMaterial,
                  ("entryPoint" Core..=) Core.<$> entryPoint,
                  ("environment" Core..=) Core.<$> environment,
                  ("type" Core..=) Core.<$> type'])


-- | Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were \"make\", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Depending on the recipe Type, the structure may be different.
--
-- /See:/ 'newSlsaRecipe_Arguments' smart constructor.
newtype SlsaRecipe_Arguments = SlsaRecipe_Arguments
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaRecipe_Arguments' with the minimum fields required to make a request.
newSlsaRecipe_Arguments 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> SlsaRecipe_Arguments
newSlsaRecipe_Arguments additional =
  SlsaRecipe_Arguments {additional = additional}

instance Core.FromJSON SlsaRecipe_Arguments where
        parseJSON
          = Core.withObject "SlsaRecipe_Arguments"
              (\ o ->
                 SlsaRecipe_Arguments Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON SlsaRecipe_Arguments where
        toJSON SlsaRecipe_Arguments{..}
          = Core.toJSON additional


-- | Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Depending on the recipe Type, the structure may be different.
--
-- /See:/ 'newSlsaRecipe_Environment' smart constructor.
newtype SlsaRecipe_Environment = SlsaRecipe_Environment
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaRecipe_Environment' with the minimum fields required to make a request.
newSlsaRecipe_Environment 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> SlsaRecipe_Environment
newSlsaRecipe_Environment additional =
  SlsaRecipe_Environment {additional = additional}

instance Core.FromJSON SlsaRecipe_Environment where
        parseJSON
          = Core.withObject "SlsaRecipe_Environment"
              (\ o ->
                 SlsaRecipe_Environment Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON SlsaRecipe_Environment where
        toJSON SlsaRecipe_Environment{..}
          = Core.toJSON additional


-- | Source describes the location of the source used for the build.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source
    {
      -- | If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
      additionalContexts :: (Core.Maybe [SourceContext])
      -- | If provided, the input binary artifacts for the build came from this location.
    , artifactStorageSourceUri :: (Core.Maybe Core.Text)
      -- | If provided, the source code used for the build came from this location.
    , context :: (Core.Maybe SourceContext)
      -- | Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
    , fileHashes :: (Core.Maybe Source_FileHashes)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource 
    ::  Source
newSource =
  Source
    { additionalContexts = Core.Nothing
    , artifactStorageSourceUri = Core.Nothing
    , context = Core.Nothing
    , fileHashes = Core.Nothing
    }

instance Core.FromJSON Source where
        parseJSON
          = Core.withObject "Source"
              (\ o ->
                 Source Core.<$>
                   (o Core..:? "additionalContexts") Core.<*>
                     (o Core..:? "artifactStorageSourceUri")
                     Core.<*> (o Core..:? "context")
                     Core.<*> (o Core..:? "fileHashes"))

instance Core.ToJSON Source where
        toJSON Source{..}
          = Core.object
              (Core.catMaybes
                 [("additionalContexts" Core..=) Core.<$>
                    additionalContexts,
                  ("artifactStorageSourceUri" Core..=) Core.<$>
                    artifactStorageSourceUri,
                  ("context" Core..=) Core.<$> context,
                  ("fileHashes" Core..=) Core.<$> fileHashes])


-- | Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
--
-- /See:/ 'newSource_FileHashes' smart constructor.
newtype Source_FileHashes = Source_FileHashes
    {
      -- | 
      additional :: (Core.HashMap Core.Text FileHashes)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source_FileHashes' with the minimum fields required to make a request.
newSource_FileHashes 
    ::  Core.HashMap Core.Text FileHashes
       -- ^  See 'additional'.
    -> Source_FileHashes
newSource_FileHashes additional = Source_FileHashes {additional = additional}

instance Core.FromJSON Source_FileHashes where
        parseJSON
          = Core.withObject "Source_FileHashes"
              (\ o ->
                 Source_FileHashes Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Source_FileHashes where
        toJSON Source_FileHashes{..} = Core.toJSON additional


-- | A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
--
-- /See:/ 'newSourceContext' smart constructor.
data SourceContext = SourceContext
    {
      -- | A SourceContext referring to a revision in a Google Cloud Source Repo.
      cloudRepo :: (Core.Maybe CloudRepoSourceContext)
      -- | A SourceContext referring to a Gerrit project.
    , gerrit :: (Core.Maybe GerritSourceContext)
      -- | A SourceContext referring to any third party Git repo (e.g., GitHub).
    , git :: (Core.Maybe GitSourceContext)
      -- | Labels with user defined metadata.
    , labels :: (Core.Maybe SourceContext_Labels)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
newSourceContext 
    ::  SourceContext
newSourceContext =
  SourceContext
    { cloudRepo = Core.Nothing
    , gerrit = Core.Nothing
    , git = Core.Nothing
    , labels = Core.Nothing
    }

instance Core.FromJSON SourceContext where
        parseJSON
          = Core.withObject "SourceContext"
              (\ o ->
                 SourceContext Core.<$>
                   (o Core..:? "cloudRepo") Core.<*>
                     (o Core..:? "gerrit")
                     Core.<*> (o Core..:? "git")
                     Core.<*> (o Core..:? "labels"))

instance Core.ToJSON SourceContext where
        toJSON SourceContext{..}
          = Core.object
              (Core.catMaybes
                 [("cloudRepo" Core..=) Core.<$> cloudRepo,
                  ("gerrit" Core..=) Core.<$> gerrit,
                  ("git" Core..=) Core.<$> git,
                  ("labels" Core..=) Core.<$> labels])


-- | Labels with user defined metadata.
--
-- /See:/ 'newSourceContext_Labels' smart constructor.
newtype SourceContext_Labels = SourceContext_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceContext_Labels' with the minimum fields required to make a request.
newSourceContext_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> SourceContext_Labels
newSourceContext_Labels additional =
  SourceContext_Labels {additional = additional}

instance Core.FromJSON SourceContext_Labels where
        parseJSON
          = Core.withObject "SourceContext_Labels"
              (\ o ->
                 SourceContext_Labels Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON SourceContext_Labels where
        toJSON SourceContext_Labels{..}
          = Core.toJSON additional


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


--
-- /See:/ 'newSubject' smart constructor.
data Subject = Subject
    {
      -- | @\"\": \"\"@ Algorithms can be e.g. sha256, sha512 See https:\/\/github.com\/in-toto\/attestation\/blob\/main\/spec\/field_types.md#DigestSet
      digest :: (Core.Maybe Subject_Digest)
      -- | 
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subject' with the minimum fields required to make a request.
newSubject 
    ::  Subject
newSubject = Subject {digest = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Subject where
        parseJSON
          = Core.withObject "Subject"
              (\ o ->
                 Subject Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "name"))

instance Core.ToJSON Subject where
        toJSON Subject{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("name" Core..=) Core.<$> name])


-- | @\"\": \"\"@ Algorithms can be e.g. sha256, sha512 See https:\/\/github.com\/in-toto\/attestation\/blob\/main\/spec\/field_types.md#DigestSet
--
-- /See:/ 'newSubject_Digest' smart constructor.
newtype Subject_Digest = Subject_Digest
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subject_Digest' with the minimum fields required to make a request.
newSubject_Digest 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Subject_Digest
newSubject_Digest additional = Subject_Digest {additional = additional}

instance Core.FromJSON Subject_Digest where
        parseJSON
          = Core.withObject "Subject_Digest"
              (\ o ->
                 Subject_Digest Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Subject_Digest where
        toJSON Subject_Digest{..} = Core.toJSON additional


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
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
                   (o Core..:? "permissions"))

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
                   (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsResponse where
        toJSON TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Start and end times for a build execution phase. Next ID: 3
--
-- /See:/ 'newTimeSpan' smart constructor.
data TimeSpan = TimeSpan
    {
      -- | End of time span.
      endTime :: (Core.Maybe Core.DateTime)
      -- | Start of time span.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeSpan' with the minimum fields required to make a request.
newTimeSpan 
    ::  TimeSpan
newTimeSpan = TimeSpan {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimeSpan where
        parseJSON
          = Core.withObject "TimeSpan"
              (\ o ->
                 TimeSpan Core.<$>
                   (o Core..:? "endTime") Core.<*>
                     (o Core..:? "startTime"))

instance Core.ToJSON TimeSpan where
        toJSON TimeSpan{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("startTime" Core..=) Core.<$> startTime])


-- | The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.
--
-- /See:/ 'newUpgradeDistribution' smart constructor.
data UpgradeDistribution = UpgradeDistribution
    {
      -- | The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed. For Windows the classification is one of the category_ids listed at https:\/\/docs.microsoft.com\/en-us\/previous-versions\/windows\/desktop\/ff357803(v=vs.85)
      classification :: (Core.Maybe Core.Text)
      -- | Required - The specific operating system this metadata applies to. See https:\/\/cpe.mitre.org\/specification\/.
    , cpeUri :: (Core.Maybe Core.Text)
      -- | The cve tied to this Upgrade.
    , cve :: (Core.Maybe [Core.Text])
      -- | The severity as specified by the upstream operating system.
    , severity :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeDistribution' with the minimum fields required to make a request.
newUpgradeDistribution 
    ::  UpgradeDistribution
newUpgradeDistribution =
  UpgradeDistribution
    { classification = Core.Nothing
    , cpeUri = Core.Nothing
    , cve = Core.Nothing
    , severity = Core.Nothing
    }

instance Core.FromJSON UpgradeDistribution where
        parseJSON
          = Core.withObject "UpgradeDistribution"
              (\ o ->
                 UpgradeDistribution Core.<$>
                   (o Core..:? "classification") Core.<*>
                     (o Core..:? "cpeUri")
                     Core.<*> (o Core..:? "cve")
                     Core.<*> (o Core..:? "severity"))

instance Core.ToJSON UpgradeDistribution where
        toJSON UpgradeDistribution{..}
          = Core.object
              (Core.catMaybes
                 [("classification" Core..=) Core.<$> classification,
                  ("cpeUri" Core..=) Core.<$> cpeUri,
                  ("cve" Core..=) Core.<$> cve,
                  ("severity" Core..=) Core.<$> severity])


-- | An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be an Upgrade Note. For Windows, windows_update field represents the information related to the update.
--
-- /See:/ 'newUpgradeNote' smart constructor.
data UpgradeNote = UpgradeNote
    {
      -- | Metadata about the upgrade for each specific operating system.
      distributions :: (Core.Maybe [UpgradeDistribution])
      -- | Required for non-Windows OS. The package this Upgrade is for.
    , package :: (Core.Maybe Core.Text)
      -- | Required for non-Windows OS. The version of the package in machine + human readable form.
    , version :: (Core.Maybe Version)
      -- | Required for Windows OS. Represents the metadata about the Windows update.
    , windowsUpdate :: (Core.Maybe WindowsUpdate)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeNote' with the minimum fields required to make a request.
newUpgradeNote 
    ::  UpgradeNote
newUpgradeNote =
  UpgradeNote
    { distributions = Core.Nothing
    , package = Core.Nothing
    , version = Core.Nothing
    , windowsUpdate = Core.Nothing
    }

instance Core.FromJSON UpgradeNote where
        parseJSON
          = Core.withObject "UpgradeNote"
              (\ o ->
                 UpgradeNote Core.<$>
                   (o Core..:? "distributions") Core.<*>
                     (o Core..:? "package")
                     Core.<*> (o Core..:? "version")
                     Core.<*> (o Core..:? "windowsUpdate"))

instance Core.ToJSON UpgradeNote where
        toJSON UpgradeNote{..}
          = Core.object
              (Core.catMaybes
                 [("distributions" Core..=) Core.<$> distributions,
                  ("package" Core..=) Core.<$> package,
                  ("version" Core..=) Core.<$> version,
                  ("windowsUpdate" Core..=) Core.<$> windowsUpdate])


-- | An Upgrade Occurrence represents that a specific resource/url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability). For Windows, both distribution and windows/update contain information for the Windows update.
--
-- /See:/ 'newUpgradeOccurrence' smart constructor.
data UpgradeOccurrence = UpgradeOccurrence
    {
      -- | Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.
      distribution :: (Core.Maybe UpgradeDistribution)
      -- | Required for non-Windows OS. The package this Upgrade is for.
    , package :: (Core.Maybe Core.Text)
      -- | Required for non-Windows OS. The version of the package in a machine + human readable form.
    , parsedVersion :: (Core.Maybe Version)
      -- | Required for Windows OS. Represents the metadata about the Windows update.
    , windowsUpdate :: (Core.Maybe WindowsUpdate)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeOccurrence' with the minimum fields required to make a request.
newUpgradeOccurrence 
    ::  UpgradeOccurrence
newUpgradeOccurrence =
  UpgradeOccurrence
    { distribution = Core.Nothing
    , package = Core.Nothing
    , parsedVersion = Core.Nothing
    , windowsUpdate = Core.Nothing
    }

instance Core.FromJSON UpgradeOccurrence where
        parseJSON
          = Core.withObject "UpgradeOccurrence"
              (\ o ->
                 UpgradeOccurrence Core.<$>
                   (o Core..:? "distribution") Core.<*>
                     (o Core..:? "package")
                     Core.<*> (o Core..:? "parsedVersion")
                     Core.<*> (o Core..:? "windowsUpdate"))

instance Core.ToJSON UpgradeOccurrence where
        toJSON UpgradeOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("distribution" Core..=) Core.<$> distribution,
                  ("package" Core..=) Core.<$> package,
                  ("parsedVersion" Core..=) Core.<$> parsedVersion,
                  ("windowsUpdate" Core..=) Core.<$> windowsUpdate])


-- | Version contains structured information about the version of a package.
--
-- /See:/ 'newVersion' smart constructor.
data Version = Version
    {
      -- | Used to correct mistakes in the version numbering scheme.
      epoch :: (Core.Maybe Core.Int32)
      -- | Human readable version string. This string is of the form :- and is only set when kind is NORMAL.
    , fullName :: (Core.Maybe Core.Text)
      -- | Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
    , inclusive :: (Core.Maybe Core.Bool)
      -- | Required. Distinguishes between sentinel MIN\/MAX versions and normal versions.
    , kind :: (Core.Maybe Version_Kind)
      -- | Required only when version kind is NORMAL. The main part of the version name.
    , name :: (Core.Maybe Core.Text)
      -- | The iteration of the package build from the above version.
    , revision :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Version' with the minimum fields required to make a request.
newVersion 
    ::  Version
newVersion =
  Version
    { epoch = Core.Nothing
    , fullName = Core.Nothing
    , inclusive = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , revision = Core.Nothing
    }

instance Core.FromJSON Version where
        parseJSON
          = Core.withObject "Version"
              (\ o ->
                 Version Core.<$>
                   (o Core..:? "epoch") Core.<*> (o Core..:? "fullName")
                     Core.<*> (o Core..:? "inclusive")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "revision"))

instance Core.ToJSON Version where
        toJSON Version{..}
          = Core.object
              (Core.catMaybes
                 [("epoch" Core..=) Core.<$> epoch,
                  ("fullName" Core..=) Core.<$> fullName,
                  ("inclusive" Core..=) Core.<$> inclusive,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("revision" Core..=) Core.<$> revision])


-- | VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
--
-- /See:/ 'newVexAssessment' smart constructor.
data VexAssessment = VexAssessment
    {
      -- | Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
      cve :: (Core.Maybe Core.Text)
      -- | Contains information about the impact of this vulnerability, this will change with time.
    , impacts :: (Core.Maybe [Core.Text])
      -- | Justification provides the justification when the state of the assessment if NOT_AFFECTED.
    , justification :: (Core.Maybe Justification)
      -- | The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: @projects\/[PROJECT_ID]\/notes\/[NOTE_ID]@.
    , noteName :: (Core.Maybe Core.Text)
      -- | Holds a list of references associated with this vulnerability item and assessment.
    , relatedUris :: (Core.Maybe [RelatedUrl])
      -- | Specifies details on how to handle (and presumably, fix) a vulnerability.
    , remediations :: (Core.Maybe [Remediation])
      -- | Provides the state of this Vulnerability assessment.
    , state :: (Core.Maybe VexAssessment_State)
      -- | The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
    , vulnerabilityId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VexAssessment' with the minimum fields required to make a request.
newVexAssessment 
    ::  VexAssessment
newVexAssessment =
  VexAssessment
    { cve = Core.Nothing
    , impacts = Core.Nothing
    , justification = Core.Nothing
    , noteName = Core.Nothing
    , relatedUris = Core.Nothing
    , remediations = Core.Nothing
    , state = Core.Nothing
    , vulnerabilityId = Core.Nothing
    }

instance Core.FromJSON VexAssessment where
        parseJSON
          = Core.withObject "VexAssessment"
              (\ o ->
                 VexAssessment Core.<$>
                   (o Core..:? "cve") Core.<*> (o Core..:? "impacts")
                     Core.<*> (o Core..:? "justification")
                     Core.<*> (o Core..:? "noteName")
                     Core.<*> (o Core..:? "relatedUris")
                     Core.<*> (o Core..:? "remediations")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "vulnerabilityId"))

instance Core.ToJSON VexAssessment where
        toJSON VexAssessment{..}
          = Core.object
              (Core.catMaybes
                 [("cve" Core..=) Core.<$> cve,
                  ("impacts" Core..=) Core.<$> impacts,
                  ("justification" Core..=) Core.<$> justification,
                  ("noteName" Core..=) Core.<$> noteName,
                  ("relatedUris" Core..=) Core.<$> relatedUris,
                  ("remediations" Core..=) Core.<$> remediations,
                  ("state" Core..=) Core.<$> state,
                  ("vulnerabilityId" Core..=) Core.<$>
                    vulnerabilityId])


-- | Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution. Next ID: 3
--
-- /See:/ 'newVolume' smart constructor.
data Volume = Volume
    {
      -- | Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.
      name :: (Core.Maybe Core.Text)
      -- | Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
newVolume 
    ::  Volume
newVolume = Volume {name = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON Volume where
        parseJSON
          = Core.withObject "Volume"
              (\ o ->
                 Volume Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "path"))

instance Core.ToJSON Volume where
        toJSON Volume{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("path" Core..=) Core.<$> path])


-- | A single VulnerabilityAssessmentNote represents one particular product\'s vulnerability assessment for one CVE.
--
-- /See:/ 'newVulnerabilityAssessmentNote' smart constructor.
data VulnerabilityAssessmentNote = VulnerabilityAssessmentNote
    {
      -- | Represents a vulnerability assessment for the product.
      assessment :: (Core.Maybe Assessment)
      -- | Identifies the language used by this document, corresponding to IETF BCP 47 \/ RFC 5646.
    , languageCode :: (Core.Maybe Core.Text)
      -- | A detailed description of this Vex.
    , longDescription :: (Core.Maybe Core.Text)
      -- | The product affected by this vex.
    , product :: (Core.Maybe Product)
      -- | Publisher details of this Note.
    , publisher :: (Core.Maybe Publisher)
      -- | A one sentence description of this Vex.
    , shortDescription :: (Core.Maybe Core.Text)
      -- | The title of the note. E.g. @Vex-Debian-11.4@
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VulnerabilityAssessmentNote' with the minimum fields required to make a request.
newVulnerabilityAssessmentNote 
    ::  VulnerabilityAssessmentNote
newVulnerabilityAssessmentNote =
  VulnerabilityAssessmentNote
    { assessment = Core.Nothing
    , languageCode = Core.Nothing
    , longDescription = Core.Nothing
    , product = Core.Nothing
    , publisher = Core.Nothing
    , shortDescription = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON VulnerabilityAssessmentNote
         where
        parseJSON
          = Core.withObject "VulnerabilityAssessmentNote"
              (\ o ->
                 VulnerabilityAssessmentNote Core.<$>
                   (o Core..:? "assessment") Core.<*>
                     (o Core..:? "languageCode")
                     Core.<*> (o Core..:? "longDescription")
                     Core.<*> (o Core..:? "product")
                     Core.<*> (o Core..:? "publisher")
                     Core.<*> (o Core..:? "shortDescription")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON VulnerabilityAssessmentNote
         where
        toJSON VulnerabilityAssessmentNote{..}
          = Core.object
              (Core.catMaybes
                 [("assessment" Core..=) Core.<$> assessment,
                  ("languageCode" Core..=) Core.<$> languageCode,
                  ("longDescription" Core..=) Core.<$> longDescription,
                  ("product" Core..=) Core.<$> product,
                  ("publisher" Core..=) Core.<$> publisher,
                  ("shortDescription" Core..=) Core.<$>
                    shortDescription,
                  ("title" Core..=) Core.<$> title])


-- | A security vulnerability that can be found in resources.
--
-- /See:/ 'newVulnerabilityNote' smart constructor.
data VulnerabilityNote = VulnerabilityNote
    {
      -- | The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10 indicates high severity.
      cvssScore :: (Core.Maybe Core.Double)
      -- | The full description of the v2 CVSS for this vulnerability.
    , cvssV2 :: (Core.Maybe CVSS)
      -- | The full description of the CVSSv3 for this vulnerability.
    , cvssV3 :: (Core.Maybe CVSSv3)
      -- | CVSS version used to populate cvss_score and severity.
    , cvssVersion :: (Core.Maybe VulnerabilityNote_CvssVersion)
      -- | Details of all known distros and packages affected by this vulnerability.
    , details :: (Core.Maybe [Detail])
      -- | The note provider assigned severity of this vulnerability.
    , severity :: (Core.Maybe VulnerabilityNote_Severity)
      -- | The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
    , sourceUpdateTime :: (Core.Maybe Core.DateTime)
      -- | Windows details get their own format because the information format and model don\'t match a normal detail. Specifically Windows updates are done as patches, thus Windows vulnerabilities really are a missing package, rather than a package being at an incorrect version.
    , windowsDetails :: (Core.Maybe [WindowsDetail])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VulnerabilityNote' with the minimum fields required to make a request.
newVulnerabilityNote 
    ::  VulnerabilityNote
newVulnerabilityNote =
  VulnerabilityNote
    { cvssScore = Core.Nothing
    , cvssV2 = Core.Nothing
    , cvssV3 = Core.Nothing
    , cvssVersion = Core.Nothing
    , details = Core.Nothing
    , severity = Core.Nothing
    , sourceUpdateTime = Core.Nothing
    , windowsDetails = Core.Nothing
    }

instance Core.FromJSON VulnerabilityNote where
        parseJSON
          = Core.withObject "VulnerabilityNote"
              (\ o ->
                 VulnerabilityNote Core.<$>
                   (o Core..:? "cvssScore") Core.<*>
                     (o Core..:? "cvssV2")
                     Core.<*> (o Core..:? "cvssV3")
                     Core.<*> (o Core..:? "cvssVersion")
                     Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "severity")
                     Core.<*> (o Core..:? "sourceUpdateTime")
                     Core.<*> (o Core..:? "windowsDetails"))

instance Core.ToJSON VulnerabilityNote where
        toJSON VulnerabilityNote{..}
          = Core.object
              (Core.catMaybes
                 [("cvssScore" Core..=) Core.<$> cvssScore,
                  ("cvssV2" Core..=) Core.<$> cvssV2,
                  ("cvssV3" Core..=) Core.<$> cvssV3,
                  ("cvssVersion" Core..=) Core.<$> cvssVersion,
                  ("details" Core..=) Core.<$> details,
                  ("severity" Core..=) Core.<$> severity,
                  ("sourceUpdateTime" Core..=) Core.<$>
                    sourceUpdateTime,
                  ("windowsDetails" Core..=) Core.<$> windowsDetails])


-- | An occurrence of a severity vulnerability on a resource.
--
-- /See:/ 'newVulnerabilityOccurrence' smart constructor.
data VulnerabilityOccurrence = VulnerabilityOccurrence
    {
      -- | Output only. The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10 indicates high severity.
      cvssScore :: (Core.Maybe Core.Double)
      -- | The cvss v2 score for the vulnerability.
    , cvssV2 :: (Core.Maybe CVSS)
      -- | Output only. CVSS version used to populate cvss_score and severity.
    , cvssVersion :: (Core.Maybe VulnerabilityOccurrence_CvssVersion)
      -- | The cvss v3 score for the vulnerability.
    , cvssv3 :: (Core.Maybe CVSS)
      -- | The distro assigned severity for this vulnerability when it is available, otherwise this is the note provider assigned severity. When there are multiple PackageIssues for this vulnerability, they can have different effective severities because some might be provided by the distro while others are provided by the language ecosystem for a language pack. For this reason, it is advised to use the effective severity on the PackageIssue level. In the case where multiple PackageIssues have differing effective severities, this field should be the highest severity for any of the PackageIssues.
    , effectiveSeverity :: (Core.Maybe VulnerabilityOccurrence_EffectiveSeverity)
      -- | Occurrence-specific extra details about the vulnerability.
    , extraDetails :: (Core.Maybe Core.Text)
      -- | Output only. Whether at least one of the affected packages has a fix available.
    , fixAvailable :: (Core.Maybe Core.Bool)
      -- | Output only. A detailed description of this vulnerability.
    , longDescription :: (Core.Maybe Core.Text)
      -- | Required. The set of affected locations and their fixes (if available) within the associated resource.
    , packageIssue :: (Core.Maybe [PackageIssue])
      -- | Output only. URLs related to this vulnerability.
    , relatedUrls :: (Core.Maybe [RelatedUrl])
      -- | Output only. The note provider assigned severity of this vulnerability.
    , severity :: (Core.Maybe VulnerabilityOccurrence_Severity)
      -- | Output only. A one sentence description of this vulnerability.
    , shortDescription :: (Core.Maybe Core.Text)
      -- | The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
    , type' :: (Core.Maybe Core.Text)
      -- | 
    , vexAssessment :: (Core.Maybe VexAssessment)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VulnerabilityOccurrence' with the minimum fields required to make a request.
newVulnerabilityOccurrence 
    ::  VulnerabilityOccurrence
newVulnerabilityOccurrence =
  VulnerabilityOccurrence
    { cvssScore = Core.Nothing
    , cvssV2 = Core.Nothing
    , cvssVersion = Core.Nothing
    , cvssv3 = Core.Nothing
    , effectiveSeverity = Core.Nothing
    , extraDetails = Core.Nothing
    , fixAvailable = Core.Nothing
    , longDescription = Core.Nothing
    , packageIssue = Core.Nothing
    , relatedUrls = Core.Nothing
    , severity = Core.Nothing
    , shortDescription = Core.Nothing
    , type' = Core.Nothing
    , vexAssessment = Core.Nothing
    }

instance Core.FromJSON VulnerabilityOccurrence where
        parseJSON
          = Core.withObject "VulnerabilityOccurrence"
              (\ o ->
                 VulnerabilityOccurrence Core.<$>
                   (o Core..:? "cvssScore") Core.<*>
                     (o Core..:? "cvssV2")
                     Core.<*> (o Core..:? "cvssVersion")
                     Core.<*> (o Core..:? "cvssv3")
                     Core.<*> (o Core..:? "effectiveSeverity")
                     Core.<*> (o Core..:? "extraDetails")
                     Core.<*> (o Core..:? "fixAvailable")
                     Core.<*> (o Core..:? "longDescription")
                     Core.<*> (o Core..:? "packageIssue")
                     Core.<*> (o Core..:? "relatedUrls")
                     Core.<*> (o Core..:? "severity")
                     Core.<*> (o Core..:? "shortDescription")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "vexAssessment"))

instance Core.ToJSON VulnerabilityOccurrence where
        toJSON VulnerabilityOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("cvssScore" Core..=) Core.<$> cvssScore,
                  ("cvssV2" Core..=) Core.<$> cvssV2,
                  ("cvssVersion" Core..=) Core.<$> cvssVersion,
                  ("cvssv3" Core..=) Core.<$> cvssv3,
                  ("effectiveSeverity" Core..=) Core.<$>
                    effectiveSeverity,
                  ("extraDetails" Core..=) Core.<$> extraDetails,
                  ("fixAvailable" Core..=) Core.<$> fixAvailable,
                  ("longDescription" Core..=) Core.<$> longDescription,
                  ("packageIssue" Core..=) Core.<$> packageIssue,
                  ("relatedUrls" Core..=) Core.<$> relatedUrls,
                  ("severity" Core..=) Core.<$> severity,
                  ("shortDescription" Core..=) Core.<$>
                    shortDescription,
                  ("type" Core..=) Core.<$> type',
                  ("vexAssessment" Core..=) Core.<$> vexAssessment])


-- | A summary of how many vulnerability occurrences there are per resource and severity type.
--
-- /See:/ 'newVulnerabilityOccurrencesSummary' smart constructor.
newtype VulnerabilityOccurrencesSummary = VulnerabilityOccurrencesSummary
    {
      -- | A listing by resource of the number of fixable and total vulnerabilities.
      counts :: (Core.Maybe [FixableTotalByDigest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VulnerabilityOccurrencesSummary' with the minimum fields required to make a request.
newVulnerabilityOccurrencesSummary 
    ::  VulnerabilityOccurrencesSummary
newVulnerabilityOccurrencesSummary =
  VulnerabilityOccurrencesSummary {counts = Core.Nothing}

instance Core.FromJSON
           VulnerabilityOccurrencesSummary
         where
        parseJSON
          = Core.withObject "VulnerabilityOccurrencesSummary"
              (\ o ->
                 VulnerabilityOccurrencesSummary Core.<$>
                   (o Core..:? "counts"))

instance Core.ToJSON VulnerabilityOccurrencesSummary
         where
        toJSON VulnerabilityOccurrencesSummary{..}
          = Core.object
              (Core.catMaybes [("counts" Core..=) Core.<$> counts])


--
-- /See:/ 'newWindowsDetail' smart constructor.
data WindowsDetail = WindowsDetail
    {
      -- | Required. The <https://cpe.mitre.org/specification/ CPE URI> this vulnerability affects.
      cpeUri :: (Core.Maybe Core.Text)
      -- | The description of this vulnerability.
    , description :: (Core.Maybe Core.Text)
      -- | Required. The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.
    , fixingKbs :: (Core.Maybe [KnowledgeBase])
      -- | Required. The name of this vulnerability.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WindowsDetail' with the minimum fields required to make a request.
newWindowsDetail 
    ::  WindowsDetail
newWindowsDetail =
  WindowsDetail
    { cpeUri = Core.Nothing
    , description = Core.Nothing
    , fixingKbs = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON WindowsDetail where
        parseJSON
          = Core.withObject "WindowsDetail"
              (\ o ->
                 WindowsDetail Core.<$>
                   (o Core..:? "cpeUri") Core.<*>
                     (o Core..:? "description")
                     Core.<*> (o Core..:? "fixingKbs")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON WindowsDetail where
        toJSON WindowsDetail{..}
          = Core.object
              (Core.catMaybes
                 [("cpeUri" Core..=) Core.<$> cpeUri,
                  ("description" Core..=) Core.<$> description,
                  ("fixingKbs" Core..=) Core.<$> fixingKbs,
                  ("name" Core..=) Core.<$> name])


-- | Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https:\/\/docs.microsoft.com\/en-us\/windows\/win32\/api\/wuapi\/nn-wuapi-iupdate.
--
-- /See:/ 'newWindowsUpdate' smart constructor.
data WindowsUpdate = WindowsUpdate
    {
      -- | The list of categories to which the update belongs.
      categories :: (Core.Maybe [Category])
      -- | The localized description of the update.
    , description :: (Core.Maybe Core.Text)
      -- | Required - The unique identifier for the update.
    , identity :: (Core.Maybe Identity)
      -- | The Microsoft Knowledge Base article IDs that are associated with the update.
    , kbArticleIds :: (Core.Maybe [Core.Text])
      -- | The last published timestamp of the update.
    , lastPublishedTimestamp :: (Core.Maybe Core.DateTime)
      -- | The hyperlink to the support information for the update.
    , supportUrl :: (Core.Maybe Core.Text)
      -- | The localized title of the update.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WindowsUpdate' with the minimum fields required to make a request.
newWindowsUpdate 
    ::  WindowsUpdate
newWindowsUpdate =
  WindowsUpdate
    { categories = Core.Nothing
    , description = Core.Nothing
    , identity = Core.Nothing
    , kbArticleIds = Core.Nothing
    , lastPublishedTimestamp = Core.Nothing
    , supportUrl = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON WindowsUpdate where
        parseJSON
          = Core.withObject "WindowsUpdate"
              (\ o ->
                 WindowsUpdate Core.<$>
                   (o Core..:? "categories") Core.<*>
                     (o Core..:? "description")
                     Core.<*> (o Core..:? "identity")
                     Core.<*> (o Core..:? "kbArticleIds")
                     Core.<*> (o Core..:? "lastPublishedTimestamp")
                     Core.<*> (o Core..:? "supportUrl")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON WindowsUpdate where
        toJSON WindowsUpdate{..}
          = Core.object
              (Core.catMaybes
                 [("categories" Core..=) Core.<$> categories,
                  ("description" Core..=) Core.<$> description,
                  ("identity" Core..=) Core.<$> identity,
                  ("kbArticleIds" Core..=) Core.<$> kbArticleIds,
                  ("lastPublishedTimestamp" Core..=) Core.<$>
                    lastPublishedTimestamp,
                  ("supportUrl" Core..=) Core.<$> supportUrl,
                  ("title" Core..=) Core.<$> title])

