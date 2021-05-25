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

    -- ** SigningKey
    , SigningKey
    , signingKey
    , skKeyType
    , skKeyId
    , skKeyScheme
    , skPublicKeyValue

    -- ** LayerDirective
    , LayerDirective (..)

    -- ** CVSSv3AttackComplexity
    , CVSSv3AttackComplexity (..)

    -- ** DiscoveredAnalysisStatus
    , DiscoveredAnalysisStatus (..)

    -- ** Installation
    , Installation
    , installation
    , iLocation
    , iName

    -- ** Signature
    , Signature
    , signature
    , sSignature
    , sPublicKeyId

    -- ** Vulnerability
    , Vulnerability
    , vulnerability
    , vCvssScore
    , vCvssV3
    , vSeverity
    , vSourceUpdateTime
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
    , oIntoto
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
    , gvvdEffectiveSeverity
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
    , giprOptions

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

    -- ** GrafeasV1beta1IntotoSignature
    , GrafeasV1beta1IntotoSignature
    , grafeasV1beta1IntotoSignature
    , gvisKeyid
    , gvisSig

    -- ** BatchCreateNotesRequest
    , BatchCreateNotesRequest
    , batchCreateNotesRequest
    , bcnrNotes

    -- ** ArtifactHashes
    , ArtifactHashes
    , artifactHashes
    , ahSha256

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

    -- ** CVSSv3IntegrityImpact
    , CVSSv3IntegrityImpact (..)

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

    -- ** Environment
    , Environment
    , environment
    , eCustomValues

    -- ** CVSSv3PrivilegesRequired
    , CVSSv3PrivilegesRequired (..)

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
    , nIntoto
    , nBaseImage
    , nPackage
    , nExpirationTime
    , nCreateTime

    -- ** CVSSv3
    , CVSSv3
    , cVSSv3
    , cvssAttackComplexity
    , cvssIntegrityImpact
    , cvssPrivilegesRequired
    , cvssUserInteraction
    , cvssAttackVector
    , cvssConfidentialityImpact
    , cvssScope
    , cvssImpactScore
    , cvssBaseScore
    , cvssAvailabilityImpact
    , cvssExploitabilityScore

    -- ** Link
    , Link
    , link
    , lCommand
    , lEnvironment
    , lMaterials
    , lProducts
    , lByProducts

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

    -- ** ArtifactRule
    , ArtifactRule
    , artifactRule
    , arArtifactRule

    -- ** CVSSv3UserInteraction
    , CVSSv3UserInteraction (..)

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
    , aGenericSignedAttestation
    , aPgpSignedAttestation

    -- ** DeploymentPlatform
    , DeploymentPlatform (..)

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** Artifact
    , Artifact
    , artifact
    , aChecksum
    , aNames
    , aId

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** GrafeasV1beta1VulnerabilityDetailsEffectiveSeverity
    , GrafeasV1beta1VulnerabilityDetailsEffectiveSeverity (..)

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

    -- ** CVSSv3AttackVector
    , CVSSv3AttackVector (..)

    -- ** GenericSignedAttestationContentType
    , GenericSignedAttestationContentType (..)

    -- ** CVSSv3ConfidentialityImpact
    , CVSSv3ConfidentialityImpact (..)

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

    -- ** GrafeasV1beta1IntotoDetails
    , GrafeasV1beta1IntotoDetails
    , grafeasV1beta1IntotoDetails
    , gvidSigned
    , gvidSignatures

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

    -- ** InToto
    , InToto
    , inToto
    , itStepName
    , itExpectedProducts
    , itExpectedCommand
    , itThreshold
    , itSigningKeys
    , itExpectedMaterials

    -- ** FixableTotalByDigestSeverity
    , FixableTotalByDigestSeverity (..)

    -- ** Version
    , Version
    , version
    , vInclusive
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

    -- ** CVSSv3Scope
    , CVSSv3Scope (..)

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

    -- ** GenericSignedAttestation
    , GenericSignedAttestation
    , genericSignedAttestation
    , gsaSerializedPayload
    , gsaSignatures
    , gsaContentType

    -- ** GrafeasV1beta1IntotoArtifact
    , GrafeasV1beta1IntotoArtifact
    , grafeasV1beta1IntotoArtifact
    , gviaResourceURI
    , gviaHashes

    -- ** GitSourceContext
    , GitSourceContext
    , gitSourceContext
    , gURL
    , gRevisionId

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** ByProductsCustomValues
    , ByProductsCustomValues
    , byProductsCustomValues
    , bpcvAddtional

    -- ** Policy
    , Policy
    , policy
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

    -- ** PgpSignedAttestation
    , PgpSignedAttestation
    , pgpSignedAttestation
    , psaSignature
    , psaPgpKeyId
    , psaContentType

    -- ** ByProducts
    , ByProducts
    , byProducts
    , bpCustomValues

    -- ** CVSSv3AvailabilityImpact
    , CVSSv3AvailabilityImpact (..)

    -- ** WindowsDetail
    , WindowsDetail
    , windowsDetail
    , wdName
    , wdFixingKbs
    , wdCpeURI
    , wdDescription

    -- ** EnvironmentCustomValues
    , EnvironmentCustomValues
    , environmentCustomValues
    , ecvAddtional

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
    , detVendor
    , detMinAffectedVersion
    , detPackageType
    , detIsObsolete
    , detFixedLocation
    , detSourceUpdateTime
    , detSeverityName
    , detMaxAffectedVersion
    , detPackage
    , detSource
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

import Network.Google.Prelude
import Network.Google.ContainerAnalysis.Types
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.BatchCreate
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.Create
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.Delete
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.Get
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.GetIAMPolicy
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.List
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.Occurrences.List
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.Patch
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.SetIAMPolicy
import Network.Google.Resource.ContainerAnalysis.Projects.Notes.TestIAMPermissions
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.BatchCreate
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Create
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Delete
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Get
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetIAMPolicy
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetNotes
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetVulnerabilitySummary
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.List
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.Patch
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.SetIAMPolicy
import Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.TestIAMPermissions
import Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Get
import Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.List
import Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Update

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
