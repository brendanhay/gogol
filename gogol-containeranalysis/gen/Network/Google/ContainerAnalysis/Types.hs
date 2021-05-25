{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerAnalysis.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ContainerAnalysis.Types
    (
    -- * Service Configuration
      containerAnalysisService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * SigningKey
    , SigningKey
    , signingKey
    , skKeyType
    , skKeyId
    , skKeyScheme
    , skPublicKeyValue

    -- * LayerDirective
    , LayerDirective (..)

    -- * CVSSv3AttackComplexity
    , CVSSv3AttackComplexity (..)

    -- * DiscoveredAnalysisStatus
    , DiscoveredAnalysisStatus (..)

    -- * Installation
    , Installation
    , installation
    , iLocation
    , iName

    -- * Signature
    , Signature
    , signature
    , sSignature
    , sPublicKeyId

    -- * Vulnerability
    , Vulnerability
    , vulnerability
    , vCvssScore
    , vCvssV3
    , vSeverity
    , vSourceUpdateTime
    , vDetails
    , vWindowsDetails

    -- * GrafeasV1beta1VulnerabilityDetailsSeverity
    , GrafeasV1beta1VulnerabilityDetailsSeverity (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * VulnerabilityOccurrencesSummary
    , VulnerabilityOccurrencesSummary
    , vulnerabilityOccurrencesSummary
    , vosCounts

    -- * OccurrenceKind
    , OccurrenceKind (..)

    -- * BuildProvenance
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

    -- * Occurrence
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

    -- * GrafeasV1beta1VulnerabilityDetails
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

    -- * VulnerabilitySeverity
    , VulnerabilitySeverity (..)

    -- * SourceFileHashes
    , SourceFileHashes
    , sourceFileHashes
    , sfhAddtional

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * Command
    , Command
    , command
    , cDir
    , cArgs
    , cEnv
    , cWaitFor
    , cName
    , cId

    -- * KnowledgeBase
    , KnowledgeBase
    , knowledgeBase
    , kbURL
    , kbName

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * Discovery
    , Discovery
    , discovery
    , dAnalysisKind

    -- * Hash
    , Hash
    , hash
    , hValue
    , hType

    -- * Basis
    , Basis
    , basis
    , bFingerprint
    , bResourceURL

    -- * GrafeasV1beta1IntotoSignature
    , GrafeasV1beta1IntotoSignature
    , grafeasV1beta1IntotoSignature
    , gvisKeyid
    , gvisSig

    -- * BatchCreateNotesRequest
    , BatchCreateNotesRequest
    , batchCreateNotesRequest
    , bcnrNotes

    -- * ArtifactHashes
    , ArtifactHashes
    , artifactHashes
    , ahSha256

    -- * SourceContext
    , SourceContext
    , sourceContext
    , scCloudRepo
    , scGerrit
    , scGit
    , scLabels

    -- * Distribution
    , Distribution
    , distribution
    , dURL
    , dMaintainer
    , dArchitecture
    , dCpeURI
    , dDescription
    , dLatestVersion

    -- * BatchCreateOccurrencesRequest
    , BatchCreateOccurrencesRequest
    , batchCreateOccurrencesRequest
    , bcorOccurrences

    -- * ListOccurrencesResponse
    , ListOccurrencesResponse
    , listOccurrencesResponse
    , lorOccurrences
    , lorNextPageToken

    -- * CVSSv3IntegrityImpact
    , CVSSv3IntegrityImpact (..)

    -- * Location
    , Location
    , location
    , lPath
    , lVersion
    , lCpeURI

    -- * Empty
    , Empty
    , empty

    -- * GerritSourceContext
    , GerritSourceContext
    , gerritSourceContext
    , gscGerritProject
    , gscRevisionId
    , gscHostURI
    , gscAliasContext

    -- * RepoId
    , RepoId
    , repoId
    , riUid
    , riProjectRepoId

    -- * DiscoveredContinuousAnalysis
    , DiscoveredContinuousAnalysis (..)

    -- * Environment
    , Environment
    , environment
    , eCustomValues

    -- * CVSSv3PrivilegesRequired
    , CVSSv3PrivilegesRequired (..)

    -- * ListNoteOccurrencesResponse
    , ListNoteOccurrencesResponse
    , listNoteOccurrencesResponse
    , lnorOccurrences
    , lnorNextPageToken

    -- * NoteKind
    , NoteKind (..)

    -- * Note
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

    -- * CVSSv3
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

    -- * Link
    , Link
    , link
    , lCommand
    , lEnvironment
    , lMaterials
    , lProducts
    , lByProducts

    -- * BatchCreateNotesResponse
    , BatchCreateNotesResponse
    , batchCreateNotesResponse
    , bNotes

    -- * ProjectRepoId
    , ProjectRepoId
    , projectRepoId
    , priRepoName
    , priProjectId

    -- * Fingerprint
    , Fingerprint
    , fingerprint
    , fV2Name
    , fV2Blob
    , fV1Name

    -- * ArtifactRule
    , ArtifactRule
    , artifactRule
    , arArtifactRule

    -- * CVSSv3UserInteraction
    , CVSSv3UserInteraction (..)

    -- * Hint
    , Hint
    , hint
    , hHumanReadableName

    -- * PackageIssue
    , PackageIssue
    , packageIssue
    , piAffectedLocation
    , piFixedLocation
    , piSeverityName

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * Build
    , Build
    , build
    , bSignature
    , bBuilderVersion

    -- * Attestation
    , Attestation
    , attestation
    , aGenericSignedAttestation
    , aPgpSignedAttestation

    -- * DeploymentPlatform
    , DeploymentPlatform (..)

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * Artifact
    , Artifact
    , artifact
    , aChecksum
    , aNames
    , aId

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * GrafeasV1beta1VulnerabilityDetailsEffectiveSeverity
    , GrafeasV1beta1VulnerabilityDetailsEffectiveSeverity (..)

    -- * BuildProvenanceBuildOptions
    , BuildProvenanceBuildOptions
    , buildProvenanceBuildOptions
    , bpboAddtional

    -- * Deployable
    , Deployable
    , deployable
    , dResourceURI

    -- * GrafeasV1beta1DiscoveryDetails
    , GrafeasV1beta1DiscoveryDetails
    , grafeasV1beta1DiscoveryDetails
    , gvddDiscovered

    -- * VulnerabilityLocation
    , VulnerabilityLocation
    , vulnerabilityLocation
    , vlVersion
    , vlPackage
    , vlCpeURI

    -- * CVSSv3AttackVector
    , CVSSv3AttackVector (..)

    -- * GenericSignedAttestationContentType
    , GenericSignedAttestationContentType (..)

    -- * CVSSv3ConfidentialityImpact
    , CVSSv3ConfidentialityImpact (..)

    -- * FixableTotalByDigest
    , FixableTotalByDigest
    , fixableTotalByDigest
    , ftbdSeverity
    , ftbdFixableCount
    , ftbdResource
    , ftbdTotalCount

    -- * RelatedURL
    , RelatedURL
    , relatedURL
    , ruURL
    , ruLabel

    -- * GrafeasV1beta1IntotoDetails
    , GrafeasV1beta1IntotoDetails
    , grafeasV1beta1IntotoDetails
    , gvidSigned
    , gvidSignatures

    -- * GrafeasV1beta1ImageDetails
    , GrafeasV1beta1ImageDetails
    , grafeasV1beta1ImageDetails
    , gvidDerivedImage

    -- * BatchCreateOccurrencesResponse
    , BatchCreateOccurrencesResponse
    , batchCreateOccurrencesResponse
    , bOccurrences

    -- * SourceContextLabels
    , SourceContextLabels
    , sourceContextLabels
    , sclAddtional

    -- * DistributionArchitecture
    , DistributionArchitecture (..)

    -- * ListScanConfigsResponse
    , ListScanConfigsResponse
    , listScanConfigsResponse
    , lscrNextPageToken
    , lscrScanConfigs

    -- * InToto
    , InToto
    , inToto
    , itStepName
    , itExpectedProducts
    , itExpectedCommand
    , itThreshold
    , itSigningKeys
    , itExpectedMaterials

    -- * FixableTotalByDigestSeverity
    , FixableTotalByDigestSeverity (..)

    -- * Version
    , Version
    , version
    , vInclusive
    , vKind
    , vName
    , vRevision
    , vEpoch

    -- * FileHashes
    , FileHashes
    , fileHashes
    , fhFileHash

    -- * Resource
    , Resource
    , resource
    , rContentHash
    , rURI
    , rName

    -- * GrafeasV1beta1DeploymentDetails
    , GrafeasV1beta1DeploymentDetails
    , grafeasV1beta1DeploymentDetails
    , gvddDeployment

    -- * GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    , GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
    , googleDevtoolsContaineranalysisV1alpha1OperationMetadata
    , gdcvomEndTime
    , gdcvomCreateTime

    -- * CVSSv3Scope
    , CVSSv3Scope (..)

    -- * PgpSignedAttestationContentType
    , PgpSignedAttestationContentType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * Details
    , Details
    , details
    , dAttestation

    -- * Package
    , Package
    , package
    , pDistribution
    , pName

    -- * ListNotesResponse
    , ListNotesResponse
    , listNotesResponse
    , lnrNextPageToken
    , lnrNotes

    -- * BuildSignature
    , BuildSignature
    , buildSignature
    , bsSignature
    , bsKeyType
    , bsKeyId
    , bsPublicKey

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * VersionKind
    , VersionKind (..)

    -- * HashType
    , HashType (..)

    -- * Discovered
    , Discovered
    , discovered
    , dLastAnalysisTime
    , dAnalysisStatusError
    , dAnalysisStatus
    , dContinuousAnalysis

    -- * BuildSignatureKeyType
    , BuildSignatureKeyType (..)

    -- * Derived
    , Derived
    , derived
    , dBaseResourceURL
    , dFingerprint
    , dDistance
    , dLayerInfo

    -- * GrafeasV1beta1BuildDetails
    , GrafeasV1beta1BuildDetails
    , grafeasV1beta1BuildDetails
    , gvbdProvenanceBytes
    , gvbdProvenance

    -- * Source
    , Source
    , source
    , sContext
    , sAdditionalContexts
    , sArtifactStorageSourceURI
    , sFileHashes

    -- * ScanConfig
    , ScanConfig
    , scanConfig
    , scEnabled
    , scUpdateTime
    , scName
    , scDescription
    , scCreateTime

    -- * GenericSignedAttestation
    , GenericSignedAttestation
    , genericSignedAttestation
    , gsaSerializedPayload
    , gsaSignatures
    , gsaContentType

    -- * GrafeasV1beta1IntotoArtifact
    , GrafeasV1beta1IntotoArtifact
    , grafeasV1beta1IntotoArtifact
    , gviaResourceURI
    , gviaHashes

    -- * GitSourceContext
    , GitSourceContext
    , gitSourceContext
    , gURL
    , gRevisionId

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ByProductsCustomValues
    , ByProductsCustomValues
    , byProductsCustomValues
    , bpcvAddtional

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * DiscoveryAnalysisKind
    , DiscoveryAnalysisKind (..)

    -- * Layer
    , Layer
    , layer
    , lDirective
    , lArguments

    -- * CloudRepoSourceContext
    , CloudRepoSourceContext
    , cloudRepoSourceContext
    , crscRepoId
    , crscRevisionId
    , crscAliasContext

    -- * PgpSignedAttestation
    , PgpSignedAttestation
    , pgpSignedAttestation
    , psaSignature
    , psaPgpKeyId
    , psaContentType

    -- * ByProducts
    , ByProducts
    , byProducts
    , bpCustomValues

    -- * CVSSv3AvailabilityImpact
    , CVSSv3AvailabilityImpact (..)

    -- * WindowsDetail
    , WindowsDetail
    , windowsDetail
    , wdName
    , wdFixingKbs
    , wdCpeURI
    , wdDescription

    -- * EnvironmentCustomValues
    , EnvironmentCustomValues
    , environmentCustomValues
    , ecvAddtional

    -- * BatchCreateNotesRequestNotes
    , BatchCreateNotesRequestNotes
    , batchCreateNotesRequestNotes
    , bcnrnAddtional

    -- * AliasContext
    , AliasContext
    , aliasContext
    , acKind
    , acName

    -- * AliasContextKind
    , AliasContextKind (..)

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * Detail
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

    -- * Authority
    , Authority
    , authority
    , aHint

    -- * GrafeasV1beta1PackageDetails
    , GrafeasV1beta1PackageDetails
    , grafeasV1beta1PackageDetails
    , gvpdInstallation

    -- * Deployment
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

import Network.Google.ContainerAnalysis.Types.Product
import Network.Google.ContainerAnalysis.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Container Analysis API. This contains the host and root path used as a starting point for constructing service requests.
containerAnalysisService :: ServiceConfig
containerAnalysisService
  = defaultService
      (ServiceId "containeranalysis:v1beta1")
      "containeranalysis.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
