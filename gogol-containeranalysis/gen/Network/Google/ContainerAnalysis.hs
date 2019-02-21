{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ContainerAnalysis
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An implementation of the Grafeas API, which stores, and enables querying
-- and retrieval of critical metadata about all of your software artifacts.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference>
module Network.Google.ContainerAnalysis
    (
    -- * Service Configuration
      containerAnalysisService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ContainerAnalysisAPI

    -- * Resources

    -- ** containeranalysis.projects.notes.batchCreate
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.BatchCreate

    -- ** containeranalysis.projects.notes.create
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Create

    -- ** containeranalysis.projects.notes.delete
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Delete

    -- ** containeranalysis.projects.notes.get
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Get

    -- ** containeranalysis.projects.notes.getIamPolicy
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.GetIAMPolicy

    -- ** containeranalysis.projects.notes.list
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.List

    -- ** containeranalysis.projects.notes.occurrences.list
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Occurrences.List

    -- ** containeranalysis.projects.notes.patch
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Patch

    -- ** containeranalysis.projects.notes.setIamPolicy
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.SetIAMPolicy

    -- ** containeranalysis.projects.notes.testIamPermissions
    , module Network.Google.Resource.ContainerAnalysis.Projects.Notes.TestIAMPermissions

    -- ** containeranalysis.projects.occurrences.batchCreate
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.BatchCreate

    -- ** containeranalysis.projects.occurrences.create
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Create

    -- ** containeranalysis.projects.occurrences.delete
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Delete

    -- ** containeranalysis.projects.occurrences.get
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Get

    -- ** containeranalysis.projects.occurrences.getIamPolicy
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetIAMPolicy

    -- ** containeranalysis.projects.occurrences.getNotes
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetNotes

    -- ** containeranalysis.projects.occurrences.getVulnerabilitySummary
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetVulnerabilitySummary

    -- ** containeranalysis.projects.occurrences.list
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.List

    -- ** containeranalysis.projects.occurrences.patch
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Patch

    -- ** containeranalysis.projects.occurrences.setIamPolicy
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.SetIAMPolicy

    -- ** containeranalysis.projects.occurrences.testIamPermissions
    , module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.TestIAMPermissions

    -- ** containeranalysis.projects.scanConfigs.get
    , module Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Get

    -- ** containeranalysis.projects.scanConfigs.list
    , module Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.List

    -- ** containeranalysis.projects.scanConfigs.update
    , module Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Update

    -- * Types

    -- ** LayerDirective
    , LayerDirective (..)

    -- ** DiscoveredAnalysisStatus
    , DiscoveredAnalysisStatus (..)

    -- ** Installation
    , Installation
    , installation
    , iLocation
    , iName

    -- ** Vulnerability
    , Vulnerability
    , vulnerability
    , vCvssScore
    , vSeverity
    , vDetails
    , vWindowsDetails

    -- ** GrafeasV1beta1VulnerabilityDetailsSeverity
    , GrafeasV1beta1VulnerabilityDetailsSeverity (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** VulnerabilityOccurrencesSummary
    , VulnerabilityOccurrencesSummary
    , vulnerabilityOccurrencesSummary
    , vosCounts

    -- ** OccurrenceKind
    , OccurrenceKind (..)

    -- ** BuildProvenance
    , BuildProvenance
    , buildProvenance
    , bpCreator
    , bpSourceProvenance
    , bpCommands
    , bpTriggerId
    , bpStartTime
    , bpBuilderVersion
    , bpEndTime
    , bpId
    , bpProjectId
    , bpBuiltArtifacts
    , bpBuildOptions
    , bpCreateTime
    , bpLogsURI

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** Occurrence
    , Occurrence
    , occurrence
    , oInstallation
    , oVulnerability
    , oDerivedImage
    , oKind
    , oBuild
    , oAttestation
    , oUpdateTime
    , oName
    , oNoteName
    , oRemediation
    , oResource
    , oDiscovered
    , oCreateTime
    , oDeployment

    -- ** GrafeasV1beta1VulnerabilityDetails
    , GrafeasV1beta1VulnerabilityDetails
    , grafeasV1beta1VulnerabilityDetails
    , gvvdLongDescription
    , gvvdRelatedURLs
    , gvvdCvssScore
    , gvvdPackageIssue
    , gvvdSeverity
    , gvvdShortDescription
    , gvvdType

    -- ** VulnerabilitySeverity
    , VulnerabilitySeverity (..)

    -- ** SourceFileHashes
    , SourceFileHashes
    , sourceFileHashes
    , sfhAddtional

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** Command
    , Command
    , command
    , cDir
    , cArgs
    , cEnv
    , cWaitFor
    , cName
    , cId

    -- ** KnowledgeBase
    , KnowledgeBase
    , knowledgeBase
    , kbURL
    , kbName

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- ** Discovery
    , Discovery
    , discovery
    , dAnalysisKind

    -- ** Hash
    , Hash
    , hash
    , hValue
    , hType

    -- ** Basis
    , Basis
    , basis
    , bFingerprint
    , bResourceURL

    -- ** BatchCreateNotesRequest
    , BatchCreateNotesRequest
    , batchCreateNotesRequest
    , bcnrNotes

    -- ** SourceContext
    , SourceContext
    , sourceContext
    , scCloudRepo
    , scGerrit
    , scGit
    , scLabels

    -- ** Distribution
    , Distribution
    , distribution
    , dURL
    , dMaintainer
    , dArchitecture
    , dCpeURI
    , dDescription
    , dLatestVersion

    -- ** BatchCreateOccurrencesRequest
    , BatchCreateOccurrencesRequest
    , batchCreateOccurrencesRequest
    , bcorOccurrences

    -- ** ListOccurrencesResponse
    , ListOccurrencesResponse
    , listOccurrencesResponse
    , lorOccurrences
    , lorNextPageToken

    -- ** Location
    , Location
    , location
    , lPath
    , lVersion
    , lCpeURI

    -- ** Empty
    , Empty
    , empty

    -- ** GerritSourceContext
    , GerritSourceContext
    , gerritSourceContext
    , gscGerritProject
    , gscRevisionId
    , gscHostURI
    , gscAliasContext

    -- ** RepoId
    , RepoId
    , repoId
    , riUid
    , riProjectRepoId

    -- ** DiscoveredContinuousAnalysis
    , DiscoveredContinuousAnalysis (..)

    -- ** ListNoteOccurrencesResponse
    , ListNoteOccurrencesResponse
    , listNoteOccurrencesResponse
    , lnorOccurrences
    , lnorNextPageToken

    -- ** NoteKind
    , NoteKind (..)

    -- ** Note
    , Note
    , note
    , nVulnerability
    , nLongDescription
    , nAttestationAuthority
    , nDiscovery
    , nKind
    , nRelatedNoteNames
    , nBuild
    , nDeployable
    , nRelatedURL
    , nUpdateTime
    , nShortDescription
    , nName
    , nBaseImage
    , nPackage
    , nExpirationTime
    , nCreateTime

    -- ** BatchCreateNotesResponse
    , BatchCreateNotesResponse
    , batchCreateNotesResponse
    , bNotes

    -- ** ProjectRepoId
    , ProjectRepoId
    , projectRepoId
    , priRepoName
    , priProjectId

    -- ** Fingerprint
    , Fingerprint
    , fingerprint
    , fV2Name
    , fV2Blob
    , fV1Name

    -- ** Hint
    , Hint
    , hint
    , hHumanReadableName

    -- ** PackageIssue
    , PackageIssue
    , packageIssue
    , piAffectedLocation
    , piFixedLocation
    , piSeverityName

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** Build
    , Build
    , build
    , bSignature
    , bBuilderVersion

    -- ** Attestation
    , Attestation
    , attestation
    , aPgpSignedAttestation

    -- ** DeploymentPlatform
    , DeploymentPlatform (..)

    -- ** Artifact
    , Artifact
    , artifact
    , aChecksum
    , aNames
    , aId

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** BuildProvenanceBuildOptions
    , BuildProvenanceBuildOptions
    , buildProvenanceBuildOptions
    , bpboAddtional

    -- ** Deployable
    , Deployable
    , deployable
    , dResourceURI

    -- ** GrafeasV1beta1DiscoveryDetails
    , GrafeasV1beta1DiscoveryDetails
    , grafeasV1beta1DiscoveryDetails
    , gvddDiscovered

    -- ** VulnerabilityLocation
    , VulnerabilityLocation
    , vulnerabilityLocation
    , vlVersion
    , vlPackage
    , vlCpeURI

    -- ** FixableTotalByDigest
    , FixableTotalByDigest
    , fixableTotalByDigest
    , ftbdSeverity
    , ftbdFixableCount
    , ftbdResource
    , ftbdTotalCount

    -- ** RelatedURL
    , RelatedURL
    , relatedURL
    , ruURL
    , ruLabel

    -- ** GrafeasV1beta1ImageDetails
    , GrafeasV1beta1ImageDetails
    , grafeasV1beta1ImageDetails
    , gvidDerivedImage

    -- ** BatchCreateOccurrencesResponse
    , BatchCreateOccurrencesResponse
    , batchCreateOccurrencesResponse
    , bOccurrences

    -- ** SourceContextLabels
    , SourceContextLabels
    , sourceContextLabels
    , sclAddtional

    -- ** DistributionArchitecture
    , DistributionArchitecture (..)

    -- ** ListScanConfigsResponse
    , ListScanConfigsResponse
    , listScanConfigsResponse
    , lscrNextPageToken
    , lscrScanConfigs

    -- ** FixableTotalByDigestSeverity
    , FixableTotalByDigestSeverity (..)

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Version
    , Version
    , version
    , vKind
    , vName
    , vRevision
    , vEpoch

    -- ** FileHashes
    , FileHashes
    , fileHashes
    , fhFileHash

    -- ** Resource
    , Resource
    , resource
    , rContentHash
    , rURI
    , rName

    -- ** GrafeasV1beta1DeploymentDetails
    , GrafeasV1beta1DeploymentDetails
    , grafeasV1beta1DeploymentDetails
    , gvddDeployment

    -- ** GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    , GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    , googleDevtoolsContaineranalysisV1alpha1OperationMetadata
    , gdcvomEndTime
    , gdcvomCreateTime

    -- ** PgpSignedAttestationContentType
    , PgpSignedAttestationContentType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** Details
    , Details
    , details
    , dAttestation

    -- ** Package
    , Package
    , package
    , pDistribution
    , pName

    -- ** ListNotesResponse
    , ListNotesResponse
    , listNotesResponse
    , lnrNextPageToken
    , lnrNotes

    -- ** BuildSignature
    , BuildSignature
    , buildSignature
    , bsSignature
    , bsKeyType
    , bsKeyId
    , bsPublicKey

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** VersionKind
    , VersionKind (..)

    -- ** HashType
    , HashType (..)

    -- ** Discovered
    , Discovered
    , discovered
    , dLastAnalysisTime
    , dAnalysisStatusError
    , dAnalysisStatus
    , dContinuousAnalysis

    -- ** BuildSignatureKeyType
    , BuildSignatureKeyType (..)

    -- ** Derived
    , Derived
    , derived
    , dBaseResourceURL
    , dFingerprint
    , dDistance
    , dLayerInfo

    -- ** GrafeasV1beta1BuildDetails
    , GrafeasV1beta1BuildDetails
    , grafeasV1beta1BuildDetails
    , gvbdProvenanceBytes
    , gvbdProvenance

    -- ** Source
    , Source
    , source
    , sContext
    , sAdditionalContexts
    , sArtifactStorageSourceURI
    , sFileHashes

    -- ** ScanConfig
    , ScanConfig
    , scanConfig
    , scEnabled
    , scUpdateTime
    , scName
    , scDescription
    , scCreateTime

    -- ** GitSourceContext
    , GitSourceContext
    , gitSourceContext
    , gURL
    , gRevisionId

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** DiscoveryAnalysisKind
    , DiscoveryAnalysisKind (..)

    -- ** Layer
    , Layer
    , layer
    , lDirective
    , lArguments

    -- ** CloudRepoSourceContext
    , CloudRepoSourceContext
    , cloudRepoSourceContext
    , crscRepoId
    , crscRevisionId
    , crscAliasContext

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** PgpSignedAttestation
    , PgpSignedAttestation
    , pgpSignedAttestation
    , psaSignature
    , psaPgpKeyId
    , psaContentType

    -- ** WindowsDetail
    , WindowsDetail
    , windowsDetail
    , wdName
    , wdFixingKbs
    , wdCpeURI
    , wdDescription

    -- ** BatchCreateNotesRequestNotes
    , BatchCreateNotesRequestNotes
    , batchCreateNotesRequestNotes
    , bcnrnAddtional

    -- ** AliasContext
    , AliasContext
    , aliasContext
    , acKind
    , acName

    -- ** AliasContextKind
    , AliasContextKind (..)

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** Detail
    , Detail
    , detail
    , detMinAffectedVersion
    , detPackageType
    , detIsObsolete
    , detFixedLocation
    , detSeverityName
    , detMaxAffectedVersion
    , detPackage
    , detCpeURI
    , detDescription

    -- ** Authority
    , Authority
    , authority
    , aHint

    -- ** GrafeasV1beta1PackageDetails
    , GrafeasV1beta1PackageDetails
    , grafeasV1beta1PackageDetails
    , gvpdInstallation

    -- ** Deployment
    , Deployment
    , deployment
    , depResourceURI
    , depPlatform
    , depConfig
    , depUndeployTime
    , depDeployTime
    , depAddress
    , depUserEmail
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.BatchCreate
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.Create
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.Delete
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.Get
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.GetIAMPolicy
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.List
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.Occurrences.List
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.Patch
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.SetIAMPolicy
import           Network.Google.Resource.ContainerAnalysis.Projects.Notes.TestIAMPermissions
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.BatchCreate
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Create
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Delete
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Get
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetIAMPolicy
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetNotes
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetVulnerabilitySummary
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.List
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Patch
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.SetIAMPolicy
import           Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.TestIAMPermissions
import           Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Get
import           Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.List
import           Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Container Analysis API service.
type ContainerAnalysisAPI =
     ProjectsOccurrencesListResource :<|>
       ProjectsOccurrencesGetNotesResource
       :<|> ProjectsOccurrencesGetIAMPolicyResource
       :<|> ProjectsOccurrencesPatchResource
       :<|> ProjectsOccurrencesGetResource
       :<|>
       ProjectsOccurrencesGetVulnerabilitySummaryResource
       :<|> ProjectsOccurrencesCreateResource
       :<|> ProjectsOccurrencesSetIAMPolicyResource
       :<|> ProjectsOccurrencesBatchCreateResource
       :<|> ProjectsOccurrencesTestIAMPermissionsResource
       :<|> ProjectsOccurrencesDeleteResource
       :<|> ProjectsScanConfigsListResource
       :<|> ProjectsScanConfigsGetResource
       :<|> ProjectsScanConfigsUpdateResource
       :<|> ProjectsNotesOccurrencesListResource
       :<|> ProjectsNotesListResource
       :<|> ProjectsNotesGetIAMPolicyResource
       :<|> ProjectsNotesPatchResource
       :<|> ProjectsNotesGetResource
       :<|> ProjectsNotesCreateResource
       :<|> ProjectsNotesSetIAMPolicyResource
       :<|> ProjectsNotesBatchCreateResource
       :<|> ProjectsNotesTestIAMPermissionsResource
       :<|> ProjectsNotesDeleteResource
