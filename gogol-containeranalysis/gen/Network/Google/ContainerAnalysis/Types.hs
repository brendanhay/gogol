{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * LayerDirective
    , LayerDirective (..)

    -- * DiscoveredAnalysisStatus
    , DiscoveredAnalysisStatus (..)

    -- * Installation
    , Installation
    , installation
    , iLocation
    , iName

    -- * Vulnerability
    , Vulnerability
    , vulnerability
    , vCvssScore
    , vSeverity
    , vDetails

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

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

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

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

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

    -- * BatchCreateNotesRequest
    , BatchCreateNotesRequest
    , batchCreateNotesRequest
    , bcnrNotes

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
    , nBaseImage
    , nPackage
    , nExpirationTime
    , nCreateTime

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
    , aPgpSignedAttestation

    -- * DeploymentPlatform
    , DeploymentPlatform (..)

    -- * Artifact
    , Artifact
    , artifact
    , aChecksum
    , aNames
    , aId

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

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

    -- * FixableTotalByDigestSeverity
    , FixableTotalByDigestSeverity (..)

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Version
    , Version
    , version
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

    -- * GitSourceContext
    , GitSourceContext
    , gitSourceContext
    , gURL
    , gRevisionId

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
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

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * PgpSignedAttestation
    , PgpSignedAttestation
    , pgpSignedAttestation
    , psaSignature
    , psaPgpKeyId
    , psaContentType

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
    , detMinAffectedVersion
    , detPackageType
    , detIsObsolete
    , detFixedLocation
    , detSeverityName
    , detMaxAffectedVersion
    , detPackage
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

import           Network.Google.ContainerAnalysis.Types.Product
import           Network.Google.ContainerAnalysis.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Container Analysis API. This contains the host and root path used as a starting point for constructing service requests.
containerAnalysisService :: ServiceConfig
containerAnalysisService
  = defaultService
      (ServiceId "containeranalysis:v1beta1")
      "containeranalysis.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
