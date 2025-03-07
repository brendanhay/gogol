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
-- Module      : Gogol.ContainerAnalysis
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is a prerequisite for leveraging Artifact Analysis scanning capabilities in both Artifact Registry and with Advanced Vulnerability Insights (runtime scanning) in GKE. In addition, the Container Analysis API is an implementation of the Grafeas API, which enables storing, querying, and retrieval of critical metadata about all of your software artifacts.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference>
module Gogol.ContainerAnalysis
  ( -- * Configuration
    containerAnalysisService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** containeranalysis.projects.locations.notes.batchCreate
    ContainerAnalysisProjectsLocationsNotesBatchCreateResource,
    ContainerAnalysisProjectsLocationsNotesBatchCreate (..),
    newContainerAnalysisProjectsLocationsNotesBatchCreate,

    -- ** containeranalysis.projects.locations.notes.create
    ContainerAnalysisProjectsLocationsNotesCreateResource,
    ContainerAnalysisProjectsLocationsNotesCreate (..),
    newContainerAnalysisProjectsLocationsNotesCreate,

    -- ** containeranalysis.projects.locations.notes.delete
    ContainerAnalysisProjectsLocationsNotesDeleteResource,
    ContainerAnalysisProjectsLocationsNotesDelete (..),
    newContainerAnalysisProjectsLocationsNotesDelete,

    -- ** containeranalysis.projects.locations.notes.get
    ContainerAnalysisProjectsLocationsNotesGetResource,
    ContainerAnalysisProjectsLocationsNotesGet (..),
    newContainerAnalysisProjectsLocationsNotesGet,

    -- ** containeranalysis.projects.locations.notes.getIamPolicy
    ContainerAnalysisProjectsLocationsNotesGetIamPolicyResource,
    ContainerAnalysisProjectsLocationsNotesGetIamPolicy (..),
    newContainerAnalysisProjectsLocationsNotesGetIamPolicy,

    -- ** containeranalysis.projects.locations.notes.list
    ContainerAnalysisProjectsLocationsNotesListResource,
    ContainerAnalysisProjectsLocationsNotesList (..),
    newContainerAnalysisProjectsLocationsNotesList,

    -- ** containeranalysis.projects.locations.notes.occurrences.list
    ContainerAnalysisProjectsLocationsNotesOccurrencesListResource,
    ContainerAnalysisProjectsLocationsNotesOccurrencesList (..),
    newContainerAnalysisProjectsLocationsNotesOccurrencesList,

    -- ** containeranalysis.projects.locations.notes.patch
    ContainerAnalysisProjectsLocationsNotesPatchResource,
    ContainerAnalysisProjectsLocationsNotesPatch (..),
    newContainerAnalysisProjectsLocationsNotesPatch,

    -- ** containeranalysis.projects.locations.notes.setIamPolicy
    ContainerAnalysisProjectsLocationsNotesSetIamPolicyResource,
    ContainerAnalysisProjectsLocationsNotesSetIamPolicy (..),
    newContainerAnalysisProjectsLocationsNotesSetIamPolicy,

    -- ** containeranalysis.projects.locations.notes.testIamPermissions
    ContainerAnalysisProjectsLocationsNotesTestIamPermissionsResource,
    ContainerAnalysisProjectsLocationsNotesTestIamPermissions (..),
    newContainerAnalysisProjectsLocationsNotesTestIamPermissions,

    -- ** containeranalysis.projects.locations.occurrences.batchCreate
    ContainerAnalysisProjectsLocationsOccurrencesBatchCreateResource,
    ContainerAnalysisProjectsLocationsOccurrencesBatchCreate (..),
    newContainerAnalysisProjectsLocationsOccurrencesBatchCreate,

    -- ** containeranalysis.projects.locations.occurrences.create
    ContainerAnalysisProjectsLocationsOccurrencesCreateResource,
    ContainerAnalysisProjectsLocationsOccurrencesCreate (..),
    newContainerAnalysisProjectsLocationsOccurrencesCreate,

    -- ** containeranalysis.projects.locations.occurrences.delete
    ContainerAnalysisProjectsLocationsOccurrencesDeleteResource,
    ContainerAnalysisProjectsLocationsOccurrencesDelete (..),
    newContainerAnalysisProjectsLocationsOccurrencesDelete,

    -- ** containeranalysis.projects.locations.occurrences.get
    ContainerAnalysisProjectsLocationsOccurrencesGetResource,
    ContainerAnalysisProjectsLocationsOccurrencesGet (..),
    newContainerAnalysisProjectsLocationsOccurrencesGet,

    -- ** containeranalysis.projects.locations.occurrences.getIamPolicy
    ContainerAnalysisProjectsLocationsOccurrencesGetIamPolicyResource,
    ContainerAnalysisProjectsLocationsOccurrencesGetIamPolicy (..),
    newContainerAnalysisProjectsLocationsOccurrencesGetIamPolicy,

    -- ** containeranalysis.projects.locations.occurrences.getNotes
    ContainerAnalysisProjectsLocationsOccurrencesGetNotesResource,
    ContainerAnalysisProjectsLocationsOccurrencesGetNotes (..),
    newContainerAnalysisProjectsLocationsOccurrencesGetNotes,

    -- ** containeranalysis.projects.locations.occurrences.getVulnerabilitySummary
    ContainerAnalysisProjectsLocationsOccurrencesGetVulnerabilitySummaryResource,
    ContainerAnalysisProjectsLocationsOccurrencesGetVulnerabilitySummary (..),
    newContainerAnalysisProjectsLocationsOccurrencesGetVulnerabilitySummary,

    -- ** containeranalysis.projects.locations.occurrences.list
    ContainerAnalysisProjectsLocationsOccurrencesListResource,
    ContainerAnalysisProjectsLocationsOccurrencesList (..),
    newContainerAnalysisProjectsLocationsOccurrencesList,

    -- ** containeranalysis.projects.locations.occurrences.patch
    ContainerAnalysisProjectsLocationsOccurrencesPatchResource,
    ContainerAnalysisProjectsLocationsOccurrencesPatch (..),
    newContainerAnalysisProjectsLocationsOccurrencesPatch,

    -- ** containeranalysis.projects.locations.occurrences.setIamPolicy
    ContainerAnalysisProjectsLocationsOccurrencesSetIamPolicyResource,
    ContainerAnalysisProjectsLocationsOccurrencesSetIamPolicy (..),
    newContainerAnalysisProjectsLocationsOccurrencesSetIamPolicy,

    -- ** containeranalysis.projects.locations.occurrences.testIamPermissions
    ContainerAnalysisProjectsLocationsOccurrencesTestIamPermissionsResource,
    ContainerAnalysisProjectsLocationsOccurrencesTestIamPermissions (..),
    newContainerAnalysisProjectsLocationsOccurrencesTestIamPermissions,

    -- ** containeranalysis.projects.locations.resources.exportSBOM
    ContainerAnalysisProjectsLocationsResourcesExportSBOMResource,
    ContainerAnalysisProjectsLocationsResourcesExportSBOM (..),
    newContainerAnalysisProjectsLocationsResourcesExportSBOM,

    -- ** containeranalysis.projects.notes.batchCreate
    ContainerAnalysisProjectsNotesBatchCreateResource,
    ContainerAnalysisProjectsNotesBatchCreate (..),
    newContainerAnalysisProjectsNotesBatchCreate,

    -- ** containeranalysis.projects.notes.create
    ContainerAnalysisProjectsNotesCreateResource,
    ContainerAnalysisProjectsNotesCreate (..),
    newContainerAnalysisProjectsNotesCreate,

    -- ** containeranalysis.projects.notes.delete
    ContainerAnalysisProjectsNotesDeleteResource,
    ContainerAnalysisProjectsNotesDelete (..),
    newContainerAnalysisProjectsNotesDelete,

    -- ** containeranalysis.projects.notes.get
    ContainerAnalysisProjectsNotesGetResource,
    ContainerAnalysisProjectsNotesGet (..),
    newContainerAnalysisProjectsNotesGet,

    -- ** containeranalysis.projects.notes.getIamPolicy
    ContainerAnalysisProjectsNotesGetIamPolicyResource,
    ContainerAnalysisProjectsNotesGetIamPolicy (..),
    newContainerAnalysisProjectsNotesGetIamPolicy,

    -- ** containeranalysis.projects.notes.list
    ContainerAnalysisProjectsNotesListResource,
    ContainerAnalysisProjectsNotesList (..),
    newContainerAnalysisProjectsNotesList,

    -- ** containeranalysis.projects.notes.occurrences.list
    ContainerAnalysisProjectsNotesOccurrencesListResource,
    ContainerAnalysisProjectsNotesOccurrencesList (..),
    newContainerAnalysisProjectsNotesOccurrencesList,

    -- ** containeranalysis.projects.notes.patch
    ContainerAnalysisProjectsNotesPatchResource,
    ContainerAnalysisProjectsNotesPatch (..),
    newContainerAnalysisProjectsNotesPatch,

    -- ** containeranalysis.projects.notes.setIamPolicy
    ContainerAnalysisProjectsNotesSetIamPolicyResource,
    ContainerAnalysisProjectsNotesSetIamPolicy (..),
    newContainerAnalysisProjectsNotesSetIamPolicy,

    -- ** containeranalysis.projects.notes.testIamPermissions
    ContainerAnalysisProjectsNotesTestIamPermissionsResource,
    ContainerAnalysisProjectsNotesTestIamPermissions (..),
    newContainerAnalysisProjectsNotesTestIamPermissions,

    -- ** containeranalysis.projects.occurrences.batchCreate
    ContainerAnalysisProjectsOccurrencesBatchCreateResource,
    ContainerAnalysisProjectsOccurrencesBatchCreate (..),
    newContainerAnalysisProjectsOccurrencesBatchCreate,

    -- ** containeranalysis.projects.occurrences.create
    ContainerAnalysisProjectsOccurrencesCreateResource,
    ContainerAnalysisProjectsOccurrencesCreate (..),
    newContainerAnalysisProjectsOccurrencesCreate,

    -- ** containeranalysis.projects.occurrences.delete
    ContainerAnalysisProjectsOccurrencesDeleteResource,
    ContainerAnalysisProjectsOccurrencesDelete (..),
    newContainerAnalysisProjectsOccurrencesDelete,

    -- ** containeranalysis.projects.occurrences.get
    ContainerAnalysisProjectsOccurrencesGetResource,
    ContainerAnalysisProjectsOccurrencesGet (..),
    newContainerAnalysisProjectsOccurrencesGet,

    -- ** containeranalysis.projects.occurrences.getIamPolicy
    ContainerAnalysisProjectsOccurrencesGetIamPolicyResource,
    ContainerAnalysisProjectsOccurrencesGetIamPolicy (..),
    newContainerAnalysisProjectsOccurrencesGetIamPolicy,

    -- ** containeranalysis.projects.occurrences.getNotes
    ContainerAnalysisProjectsOccurrencesGetNotesResource,
    ContainerAnalysisProjectsOccurrencesGetNotes (..),
    newContainerAnalysisProjectsOccurrencesGetNotes,

    -- ** containeranalysis.projects.occurrences.getVulnerabilitySummary
    ContainerAnalysisProjectsOccurrencesGetVulnerabilitySummaryResource,
    ContainerAnalysisProjectsOccurrencesGetVulnerabilitySummary (..),
    newContainerAnalysisProjectsOccurrencesGetVulnerabilitySummary,

    -- ** containeranalysis.projects.occurrences.list
    ContainerAnalysisProjectsOccurrencesListResource,
    ContainerAnalysisProjectsOccurrencesList (..),
    newContainerAnalysisProjectsOccurrencesList,

    -- ** containeranalysis.projects.occurrences.patch
    ContainerAnalysisProjectsOccurrencesPatchResource,
    ContainerAnalysisProjectsOccurrencesPatch (..),
    newContainerAnalysisProjectsOccurrencesPatch,

    -- ** containeranalysis.projects.occurrences.setIamPolicy
    ContainerAnalysisProjectsOccurrencesSetIamPolicyResource,
    ContainerAnalysisProjectsOccurrencesSetIamPolicy (..),
    newContainerAnalysisProjectsOccurrencesSetIamPolicy,

    -- ** containeranalysis.projects.occurrences.testIamPermissions
    ContainerAnalysisProjectsOccurrencesTestIamPermissionsResource,
    ContainerAnalysisProjectsOccurrencesTestIamPermissions (..),
    newContainerAnalysisProjectsOccurrencesTestIamPermissions,

    -- ** containeranalysis.projects.resources.exportSBOM
    ContainerAnalysisProjectsResourcesExportSBOMResource,
    ContainerAnalysisProjectsResourcesExportSBOM (..),
    newContainerAnalysisProjectsResourcesExportSBOM,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AliasContext
    AliasContext (..),
    newAliasContext,

    -- ** AliasContext_Kind
    AliasContext_Kind (..),

    -- ** AnalysisCompleted
    AnalysisCompleted (..),
    newAnalysisCompleted,

    -- ** Artifact
    Artifact (..),
    newArtifact,

    -- ** Assessment
    Assessment (..),
    newAssessment,

    -- ** Assessment_State
    Assessment_State (..),

    -- ** AttestationNote
    AttestationNote (..),
    newAttestationNote,

    -- ** AttestationOccurrence
    AttestationOccurrence (..),
    newAttestationOccurrence,

    -- ** BatchCreateNotesRequest
    BatchCreateNotesRequest (..),
    newBatchCreateNotesRequest,

    -- ** BatchCreateNotesRequest_Notes
    BatchCreateNotesRequest_Notes (..),
    newBatchCreateNotesRequest_Notes,

    -- ** BatchCreateNotesResponse
    BatchCreateNotesResponse (..),
    newBatchCreateNotesResponse,

    -- ** BatchCreateOccurrencesRequest
    BatchCreateOccurrencesRequest (..),
    newBatchCreateOccurrencesRequest,

    -- ** BatchCreateOccurrencesResponse
    BatchCreateOccurrencesResponse (..),
    newBatchCreateOccurrencesResponse,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BuildDefinition
    BuildDefinition (..),
    newBuildDefinition,

    -- ** BuildDefinition_ExternalParameters
    BuildDefinition_ExternalParameters (..),
    newBuildDefinition_ExternalParameters,

    -- ** BuildDefinition_InternalParameters
    BuildDefinition_InternalParameters (..),
    newBuildDefinition_InternalParameters,

    -- ** BuildMetadata
    BuildMetadata (..),
    newBuildMetadata,

    -- ** BuildNote
    BuildNote (..),
    newBuildNote,

    -- ** BuildOccurrence
    BuildOccurrence (..),
    newBuildOccurrence,

    -- ** BuildProvenance
    BuildProvenance (..),
    newBuildProvenance,

    -- ** BuildProvenance_BuildOptions
    BuildProvenance_BuildOptions (..),
    newBuildProvenance_BuildOptions,

    -- ** BuildStep
    BuildStep (..),
    newBuildStep,

    -- ** BuildStep_Status
    BuildStep_Status (..),

    -- ** BuilderConfig
    BuilderConfig (..),
    newBuilderConfig,

    -- ** CVSS
    CVSS (..),
    newCVSS,

    -- ** CVSS_AttackComplexity
    CVSS_AttackComplexity (..),

    -- ** CVSS_AttackVector
    CVSS_AttackVector (..),

    -- ** CVSS_Authentication
    CVSS_Authentication (..),

    -- ** CVSS_AvailabilityImpact
    CVSS_AvailabilityImpact (..),

    -- ** CVSS_ConfidentialityImpact
    CVSS_ConfidentialityImpact (..),

    -- ** CVSS_IntegrityImpact
    CVSS_IntegrityImpact (..),

    -- ** CVSS_PrivilegesRequired
    CVSS_PrivilegesRequired (..),

    -- ** CVSS_Scope
    CVSS_Scope (..),

    -- ** CVSS_UserInteraction
    CVSS_UserInteraction (..),

    -- ** CVSSv3
    CVSSv3 (..),
    newCVSSv3,

    -- ** CVSSv3_AttackComplexity
    CVSSv3_AttackComplexity (..),

    -- ** CVSSv3_AttackVector
    CVSSv3_AttackVector (..),

    -- ** CVSSv3_AvailabilityImpact
    CVSSv3_AvailabilityImpact (..),

    -- ** CVSSv3_ConfidentialityImpact
    CVSSv3_ConfidentialityImpact (..),

    -- ** CVSSv3_IntegrityImpact
    CVSSv3_IntegrityImpact (..),

    -- ** CVSSv3_PrivilegesRequired
    CVSSv3_PrivilegesRequired (..),

    -- ** CVSSv3_Scope
    CVSSv3_Scope (..),

    -- ** CVSSv3_UserInteraction
    CVSSv3_UserInteraction (..),

    -- ** Category
    Category (..),
    newCategory,

    -- ** CisBenchmark
    CisBenchmark (..),
    newCisBenchmark,

    -- ** CisBenchmark_Severity
    CisBenchmark_Severity (..),

    -- ** CloudRepoSourceContext
    CloudRepoSourceContext (..),
    newCloudRepoSourceContext,

    -- ** CloudStorageLocation
    CloudStorageLocation (..),
    newCloudStorageLocation,

    -- ** Command
    Command (..),
    newCommand,

    -- ** Completeness
    Completeness (..),
    newCompleteness,

    -- ** ComplianceNote
    ComplianceNote (..),
    newComplianceNote,

    -- ** ComplianceOccurrence
    ComplianceOccurrence (..),
    newComplianceOccurrence,

    -- ** ComplianceVersion
    ComplianceVersion (..),
    newComplianceVersion,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
    ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
    ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision
    ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
    ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsNpmPackage,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Build
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Build,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Substitutions,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Build_Timing,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
    ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig
    ContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1DeveloperConnectConfig,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
    ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig
    ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfig,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig
    ContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1GitConfigHttpConfig,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
    ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1GitSource,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
    ContaineranalysisGoogleDevtoolsCloudbuildV1Hash (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Hash,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
    ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
    ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap
    ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret_EnvMap,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
    ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions
    ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource_Substitutions,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Results
    ContaineranalysisGoogleDevtoolsCloudbuildV1Results (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Results,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
    ContaineranalysisGoogleDevtoolsCloudbuildV1Secret (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Secret,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv
    ContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Secret_SecretEnv,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
    ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
    ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Secrets,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Source
    ContaineranalysisGoogleDevtoolsCloudbuildV1Source (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Source,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
    ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes
    ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance_FileHashes,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
    ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
    ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher (..),

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
    ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
    ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
    ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage
    ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedNpmPackage,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
    ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage,

    -- ** ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
    ContaineranalysisGoogleDevtoolsCloudbuildV1Volume (..),
    newContaineranalysisGoogleDevtoolsCloudbuildV1Volume,

    -- ** DSSEAttestationNote
    DSSEAttestationNote (..),
    newDSSEAttestationNote,

    -- ** DSSEAttestationOccurrence
    DSSEAttestationOccurrence (..),
    newDSSEAttestationOccurrence,

    -- ** DSSEHint
    DSSEHint (..),
    newDSSEHint,

    -- ** DeploymentNote
    DeploymentNote (..),
    newDeploymentNote,

    -- ** DeploymentOccurrence
    DeploymentOccurrence (..),
    newDeploymentOccurrence,

    -- ** DeploymentOccurrence_Platform
    DeploymentOccurrence_Platform (..),

    -- ** Detail
    Detail (..),
    newDetail,

    -- ** Digest
    Digest (..),
    newDigest,

    -- ** DiscoveryNote
    DiscoveryNote (..),
    newDiscoveryNote,

    -- ** DiscoveryNote_AnalysisKind
    DiscoveryNote_AnalysisKind (..),

    -- ** DiscoveryOccurrence
    DiscoveryOccurrence (..),
    newDiscoveryOccurrence,

    -- ** DiscoveryOccurrence_AnalysisStatus
    DiscoveryOccurrence_AnalysisStatus (..),

    -- ** DiscoveryOccurrence_ContinuousAnalysis
    DiscoveryOccurrence_ContinuousAnalysis (..),

    -- ** Distribution
    Distribution (..),
    newDistribution,

    -- ** Distribution_Architecture
    Distribution_Architecture (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Envelope
    Envelope (..),
    newEnvelope,

    -- ** EnvelopeSignature
    EnvelopeSignature (..),
    newEnvelopeSignature,

    -- ** ExportSBOMRequest
    ExportSBOMRequest (..),
    newExportSBOMRequest,

    -- ** ExportSBOMResponse
    ExportSBOMResponse (..),
    newExportSBOMResponse,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** FileHashes
    FileHashes (..),
    newFileHashes,

    -- ** Fingerprint
    Fingerprint (..),
    newFingerprint,

    -- ** FixableTotalByDigest
    FixableTotalByDigest (..),
    newFixableTotalByDigest,

    -- ** FixableTotalByDigest_Severity
    FixableTotalByDigest_Severity (..),

    -- ** GerritSourceContext
    GerritSourceContext (..),
    newGerritSourceContext,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** GitSourceContext
    GitSourceContext (..),
    newGitSourceContext,

    -- ** GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata (..),
    newGoogleDevtoolsContaineranalysisV1alpha1OperationMetadata,

    -- ** GrafeasV1FileLocation
    GrafeasV1FileLocation (..),
    newGrafeasV1FileLocation,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
    GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
    GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
    GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest
    GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource_Digest,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
    GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment
    GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Environment,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters
    GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation_Parameters,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
    GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest
    GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial_Digest,

    -- ** GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
    GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata (..),
    newGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata,

    -- ** Hash
    Hash (..),
    newHash,

    -- ** Hint
    Hint (..),
    newHint,

    -- ** Identity
    Identity (..),
    newIdentity,

    -- ** ImageNote
    ImageNote (..),
    newImageNote,

    -- ** ImageOccurrence
    ImageOccurrence (..),
    newImageOccurrence,

    -- ** InTotoProvenance
    InTotoProvenance (..),
    newInTotoProvenance,

    -- ** InTotoSlsaProvenanceV1
    InTotoSlsaProvenanceV1 (..),
    newInTotoSlsaProvenanceV1,

    -- ** InTotoStatement
    InTotoStatement (..),
    newInTotoStatement,

    -- ** Justification
    Justification (..),
    newJustification,

    -- ** Justification_JustificationType
    Justification_JustificationType (..),

    -- ** Jwt
    Jwt (..),
    newJwt,

    -- ** KnowledgeBase
    KnowledgeBase (..),
    newKnowledgeBase,

    -- ** Layer
    Layer (..),
    newLayer,

    -- ** License
    License (..),
    newLicense,

    -- ** ListNoteOccurrencesResponse
    ListNoteOccurrencesResponse (..),
    newListNoteOccurrencesResponse,

    -- ** ListNotesResponse
    ListNotesResponse (..),
    newListNotesResponse,

    -- ** ListOccurrencesResponse
    ListOccurrencesResponse (..),
    newListOccurrencesResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Material
    Material (..),
    newMaterial,

    -- ** Material_Digest
    Material_Digest (..),
    newMaterial_Digest,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** NonCompliantFile
    NonCompliantFile (..),
    newNonCompliantFile,

    -- ** Note
    Note (..),
    newNote,

    -- ** Note_Kind
    Note_Kind (..),

    -- ** Occurrence
    Occurrence (..),
    newOccurrence,

    -- ** Occurrence_Kind
    Occurrence_Kind (..),

    -- ** PackageIssue
    PackageIssue (..),
    newPackageIssue,

    -- ** PackageIssue_EffectiveSeverity
    PackageIssue_EffectiveSeverity (..),

    -- ** PackageNote
    PackageNote (..),
    newPackageNote,

    -- ** PackageNote_Architecture
    PackageNote_Architecture (..),

    -- ** PackageOccurrence
    PackageOccurrence (..),
    newPackageOccurrence,

    -- ** PackageOccurrence_Architecture
    PackageOccurrence_Architecture (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Product
    Product (..),
    newProduct,

    -- ** ProjectRepoId
    ProjectRepoId (..),
    newProjectRepoId,

    -- ** ProvenanceBuilder
    ProvenanceBuilder (..),
    newProvenanceBuilder,

    -- ** ProvenanceBuilder_Version
    ProvenanceBuilder_Version (..),
    newProvenanceBuilder_Version,

    -- ** Publisher
    Publisher (..),
    newPublisher,

    -- ** Recipe
    Recipe (..),
    newRecipe,

    -- ** Recipe_ArgumentsItem
    Recipe_ArgumentsItem (..),
    newRecipe_ArgumentsItem,

    -- ** Recipe_EnvironmentItem
    Recipe_EnvironmentItem (..),
    newRecipe_EnvironmentItem,

    -- ** RelatedUrl
    RelatedUrl (..),
    newRelatedUrl,

    -- ** Remediation
    Remediation (..),
    newRemediation,

    -- ** Remediation_RemediationType
    Remediation_RemediationType (..),

    -- ** RepoId
    RepoId (..),
    newRepoId,

    -- ** ResourceDescriptor
    ResourceDescriptor (..),
    newResourceDescriptor,

    -- ** ResourceDescriptor_Annotations
    ResourceDescriptor_Annotations (..),
    newResourceDescriptor_Annotations,

    -- ** ResourceDescriptor_Digest
    ResourceDescriptor_Digest (..),
    newResourceDescriptor_Digest,

    -- ** RunDetails
    RunDetails (..),
    newRunDetails,

    -- ** SBOMReferenceNote
    SBOMReferenceNote (..),
    newSBOMReferenceNote,

    -- ** SBOMReferenceOccurrence
    SBOMReferenceOccurrence (..),
    newSBOMReferenceOccurrence,

    -- ** SBOMStatus
    SBOMStatus (..),
    newSBOMStatus,

    -- ** SBOMStatus_SbomState
    SBOMStatus_SbomState (..),

    -- ** SbomReferenceIntotoPayload
    SbomReferenceIntotoPayload (..),
    newSbomReferenceIntotoPayload,

    -- ** SbomReferenceIntotoPredicate
    SbomReferenceIntotoPredicate (..),
    newSbomReferenceIntotoPredicate,

    -- ** SbomReferenceIntotoPredicate_Digest
    SbomReferenceIntotoPredicate_Digest (..),
    newSbomReferenceIntotoPredicate_Digest,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Signature
    Signature (..),
    newSignature,

    -- ** SlsaBuilder
    SlsaBuilder (..),
    newSlsaBuilder,

    -- ** SlsaCompleteness
    SlsaCompleteness (..),
    newSlsaCompleteness,

    -- ** SlsaMetadata
    SlsaMetadata (..),
    newSlsaMetadata,

    -- ** SlsaProvenance
    SlsaProvenance (..),
    newSlsaProvenance,

    -- ** SlsaProvenanceV1
    SlsaProvenanceV1 (..),
    newSlsaProvenanceV1,

    -- ** SlsaProvenanceZeroTwo
    SlsaProvenanceZeroTwo (..),
    newSlsaProvenanceZeroTwo,

    -- ** SlsaProvenanceZeroTwo_BuildConfig
    SlsaProvenanceZeroTwo_BuildConfig (..),
    newSlsaProvenanceZeroTwo_BuildConfig,

    -- ** SlsaRecipe
    SlsaRecipe (..),
    newSlsaRecipe,

    -- ** SlsaRecipe_Arguments
    SlsaRecipe_Arguments (..),
    newSlsaRecipe_Arguments,

    -- ** SlsaRecipe_Environment
    SlsaRecipe_Environment (..),
    newSlsaRecipe_Environment,

    -- ** Source
    Source (..),
    newSource,

    -- ** Source_FileHashes
    Source_FileHashes (..),
    newSource_FileHashes,

    -- ** SourceContext
    SourceContext (..),
    newSourceContext,

    -- ** SourceContext_Labels
    SourceContext_Labels (..),
    newSourceContext_Labels,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Subject
    Subject (..),
    newSubject,

    -- ** Subject_Digest
    Subject_Digest (..),
    newSubject_Digest,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TimeSpan
    TimeSpan (..),
    newTimeSpan,

    -- ** UpgradeDistribution
    UpgradeDistribution (..),
    newUpgradeDistribution,

    -- ** UpgradeNote
    UpgradeNote (..),
    newUpgradeNote,

    -- ** UpgradeOccurrence
    UpgradeOccurrence (..),
    newUpgradeOccurrence,

    -- ** Version
    Version (..),
    newVersion,

    -- ** Version_Kind
    Version_Kind (..),

    -- ** VexAssessment
    VexAssessment (..),
    newVexAssessment,

    -- ** VexAssessment_State
    VexAssessment_State (..),

    -- ** Volume
    Volume (..),
    newVolume,

    -- ** VulnerabilityAssessmentNote
    VulnerabilityAssessmentNote (..),
    newVulnerabilityAssessmentNote,

    -- ** VulnerabilityNote
    VulnerabilityNote (..),
    newVulnerabilityNote,

    -- ** VulnerabilityNote_CvssVersion
    VulnerabilityNote_CvssVersion (..),

    -- ** VulnerabilityNote_Severity
    VulnerabilityNote_Severity (..),

    -- ** VulnerabilityOccurrence
    VulnerabilityOccurrence (..),
    newVulnerabilityOccurrence,

    -- ** VulnerabilityOccurrence_CvssVersion
    VulnerabilityOccurrence_CvssVersion (..),

    -- ** VulnerabilityOccurrence_EffectiveSeverity
    VulnerabilityOccurrence_EffectiveSeverity (..),

    -- ** VulnerabilityOccurrence_Severity
    VulnerabilityOccurrence_Severity (..),

    -- ** VulnerabilityOccurrencesSummary
    VulnerabilityOccurrencesSummary (..),
    newVulnerabilityOccurrencesSummary,

    -- ** WindowsDetail
    WindowsDetail (..),
    newWindowsDetail,

    -- ** WindowsUpdate
    WindowsUpdate (..),
    newWindowsUpdate,
  )
where

import Gogol.ContainerAnalysis.Projects.Locations.Notes.BatchCreate
import Gogol.ContainerAnalysis.Projects.Locations.Notes.Create
import Gogol.ContainerAnalysis.Projects.Locations.Notes.Delete
import Gogol.ContainerAnalysis.Projects.Locations.Notes.Get
import Gogol.ContainerAnalysis.Projects.Locations.Notes.GetIamPolicy
import Gogol.ContainerAnalysis.Projects.Locations.Notes.List
import Gogol.ContainerAnalysis.Projects.Locations.Notes.Occurrences.List
import Gogol.ContainerAnalysis.Projects.Locations.Notes.Patch
import Gogol.ContainerAnalysis.Projects.Locations.Notes.SetIamPolicy
import Gogol.ContainerAnalysis.Projects.Locations.Notes.TestIamPermissions
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.BatchCreate
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.Create
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.Delete
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.Get
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.GetIamPolicy
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.GetNotes
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.GetVulnerabilitySummary
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.List
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.Patch
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.SetIamPolicy
import Gogol.ContainerAnalysis.Projects.Locations.Occurrences.TestIamPermissions
import Gogol.ContainerAnalysis.Projects.Locations.Resources.ExportSBOM
import Gogol.ContainerAnalysis.Projects.Notes.BatchCreate
import Gogol.ContainerAnalysis.Projects.Notes.Create
import Gogol.ContainerAnalysis.Projects.Notes.Delete
import Gogol.ContainerAnalysis.Projects.Notes.Get
import Gogol.ContainerAnalysis.Projects.Notes.GetIamPolicy
import Gogol.ContainerAnalysis.Projects.Notes.List
import Gogol.ContainerAnalysis.Projects.Notes.Occurrences.List
import Gogol.ContainerAnalysis.Projects.Notes.Patch
import Gogol.ContainerAnalysis.Projects.Notes.SetIamPolicy
import Gogol.ContainerAnalysis.Projects.Notes.TestIamPermissions
import Gogol.ContainerAnalysis.Projects.Occurrences.BatchCreate
import Gogol.ContainerAnalysis.Projects.Occurrences.Create
import Gogol.ContainerAnalysis.Projects.Occurrences.Delete
import Gogol.ContainerAnalysis.Projects.Occurrences.Get
import Gogol.ContainerAnalysis.Projects.Occurrences.GetIamPolicy
import Gogol.ContainerAnalysis.Projects.Occurrences.GetNotes
import Gogol.ContainerAnalysis.Projects.Occurrences.GetVulnerabilitySummary
import Gogol.ContainerAnalysis.Projects.Occurrences.List
import Gogol.ContainerAnalysis.Projects.Occurrences.Patch
import Gogol.ContainerAnalysis.Projects.Occurrences.SetIamPolicy
import Gogol.ContainerAnalysis.Projects.Occurrences.TestIamPermissions
import Gogol.ContainerAnalysis.Projects.Resources.ExportSBOM
import Gogol.ContainerAnalysis.Types
