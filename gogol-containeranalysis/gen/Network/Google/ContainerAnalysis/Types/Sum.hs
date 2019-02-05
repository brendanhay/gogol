{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerAnalysis.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ContainerAnalysis.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Required. The recovered Dockerfile directive used to construct this
-- layer.
data LayerDirective
    = DirectiveUnspecified
      -- ^ @DIRECTIVE_UNSPECIFIED@
      -- Default value for unsupported\/missing directive.
    | Maintainer
      -- ^ @MAINTAINER@
      -- https:\/\/docs.docker.com\/reference\/builder\/#maintainer
    | Run
      -- ^ @RUN@
      -- https:\/\/docs.docker.com\/reference\/builder\/#run
    | Cmd
      -- ^ @CMD@
      -- https:\/\/docs.docker.com\/reference\/builder\/#cmd
    | Label
      -- ^ @LABEL@
      -- https:\/\/docs.docker.com\/reference\/builder\/#label
    | Expose
      -- ^ @EXPOSE@
      -- https:\/\/docs.docker.com\/reference\/builder\/#expose
    | Env
      -- ^ @ENV@
      -- https:\/\/docs.docker.com\/reference\/builder\/#env
    | Add
      -- ^ @ADD@
      -- https:\/\/docs.docker.com\/reference\/builder\/#add
    | Copy
      -- ^ @COPY@
      -- https:\/\/docs.docker.com\/reference\/builder\/#copy
    | Entrypoint
      -- ^ @ENTRYPOINT@
      -- https:\/\/docs.docker.com\/reference\/builder\/#entrypoint
    | Volume
      -- ^ @VOLUME@
      -- https:\/\/docs.docker.com\/reference\/builder\/#volume
    | User
      -- ^ @USER@
      -- https:\/\/docs.docker.com\/reference\/builder\/#user
    | Workdir
      -- ^ @WORKDIR@
      -- https:\/\/docs.docker.com\/reference\/builder\/#workdir
    | Arg
      -- ^ @ARG@
      -- https:\/\/docs.docker.com\/reference\/builder\/#arg
    | Onbuild
      -- ^ @ONBUILD@
      -- https:\/\/docs.docker.com\/reference\/builder\/#onbuild
    | Stopsignal
      -- ^ @STOPSIGNAL@
      -- https:\/\/docs.docker.com\/reference\/builder\/#stopsignal
    | Healthcheck
      -- ^ @HEALTHCHECK@
      -- https:\/\/docs.docker.com\/reference\/builder\/#healthcheck
    | Shell
      -- ^ @SHELL@
      -- https:\/\/docs.docker.com\/reference\/builder\/#shell
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LayerDirective

instance FromHttpApiData LayerDirective where
    parseQueryParam = \case
        "DIRECTIVE_UNSPECIFIED" -> Right DirectiveUnspecified
        "MAINTAINER" -> Right Maintainer
        "RUN" -> Right Run
        "CMD" -> Right Cmd
        "LABEL" -> Right Label
        "EXPOSE" -> Right Expose
        "ENV" -> Right Env
        "ADD" -> Right Add
        "COPY" -> Right Copy
        "ENTRYPOINT" -> Right Entrypoint
        "VOLUME" -> Right Volume
        "USER" -> Right User
        "WORKDIR" -> Right Workdir
        "ARG" -> Right Arg
        "ONBUILD" -> Right Onbuild
        "STOPSIGNAL" -> Right Stopsignal
        "HEALTHCHECK" -> Right Healthcheck
        "SHELL" -> Right Shell
        x -> Left ("Unable to parse LayerDirective from: " <> x)

instance ToHttpApiData LayerDirective where
    toQueryParam = \case
        DirectiveUnspecified -> "DIRECTIVE_UNSPECIFIED"
        Maintainer -> "MAINTAINER"
        Run -> "RUN"
        Cmd -> "CMD"
        Label -> "LABEL"
        Expose -> "EXPOSE"
        Env -> "ENV"
        Add -> "ADD"
        Copy -> "COPY"
        Entrypoint -> "ENTRYPOINT"
        Volume -> "VOLUME"
        User -> "USER"
        Workdir -> "WORKDIR"
        Arg -> "ARG"
        Onbuild -> "ONBUILD"
        Stopsignal -> "STOPSIGNAL"
        Healthcheck -> "HEALTHCHECK"
        Shell -> "SHELL"

instance FromJSON LayerDirective where
    parseJSON = parseJSONText "LayerDirective"

instance ToJSON LayerDirective where
    toJSON = toJSONText

-- | The status of discovery for the resource.
data DiscoveredAnalysisStatus
    = AnalysisStatusUnspecified
      -- ^ @ANALYSIS_STATUS_UNSPECIFIED@
      -- Unknown.
    | Pending
      -- ^ @PENDING@
      -- Resource is known but no action has been taken yet.
    | Scanning
      -- ^ @SCANNING@
      -- Resource is being analyzed.
    | FinishedSuccess
      -- ^ @FINISHED_SUCCESS@
      -- Analysis has finished successfully.
    | FinishedFailed
      -- ^ @FINISHED_FAILED@
      -- Analysis has finished unsuccessfully, the analysis itself is in a bad
      -- state.
    | FinishedUnsupported
      -- ^ @FINISHED_UNSUPPORTED@
      -- The resource is known not to be supported
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiscoveredAnalysisStatus

instance FromHttpApiData DiscoveredAnalysisStatus where
    parseQueryParam = \case
        "ANALYSIS_STATUS_UNSPECIFIED" -> Right AnalysisStatusUnspecified
        "PENDING" -> Right Pending
        "SCANNING" -> Right Scanning
        "FINISHED_SUCCESS" -> Right FinishedSuccess
        "FINISHED_FAILED" -> Right FinishedFailed
        "FINISHED_UNSUPPORTED" -> Right FinishedUnsupported
        x -> Left ("Unable to parse DiscoveredAnalysisStatus from: " <> x)

instance ToHttpApiData DiscoveredAnalysisStatus where
    toQueryParam = \case
        AnalysisStatusUnspecified -> "ANALYSIS_STATUS_UNSPECIFIED"
        Pending -> "PENDING"
        Scanning -> "SCANNING"
        FinishedSuccess -> "FINISHED_SUCCESS"
        FinishedFailed -> "FINISHED_FAILED"
        FinishedUnsupported -> "FINISHED_UNSUPPORTED"

instance FromJSON DiscoveredAnalysisStatus where
    parseJSON = parseJSONText "DiscoveredAnalysisStatus"

instance ToJSON DiscoveredAnalysisStatus where
    toJSON = toJSONText

-- | Output only. The note provider assigned Severity of the vulnerability.
data GrafeasV1beta1VulnerabilityDetailsSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Unknown.
    | Minimal
      -- ^ @MINIMAL@
      -- Minimal severity.
    | Low
      -- ^ @LOW@
      -- Low severity.
    | Medium
      -- ^ @MEDIUM@
      -- Medium severity.
    | High
      -- ^ @HIGH@
      -- High severity.
    | Critical
      -- ^ @CRITICAL@
      -- Critical severity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GrafeasV1beta1VulnerabilityDetailsSeverity

instance FromHttpApiData GrafeasV1beta1VulnerabilityDetailsSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "MINIMAL" -> Right Minimal
        "LOW" -> Right Low
        "MEDIUM" -> Right Medium
        "HIGH" -> Right High
        "CRITICAL" -> Right Critical
        x -> Left ("Unable to parse GrafeasV1beta1VulnerabilityDetailsSeverity from: " <> x)

instance ToHttpApiData GrafeasV1beta1VulnerabilityDetailsSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        Minimal -> "MINIMAL"
        Low -> "LOW"
        Medium -> "MEDIUM"
        High -> "HIGH"
        Critical -> "CRITICAL"

instance FromJSON GrafeasV1beta1VulnerabilityDetailsSeverity where
    parseJSON = parseJSONText "GrafeasV1beta1VulnerabilityDetailsSeverity"

instance ToJSON GrafeasV1beta1VulnerabilityDetailsSeverity where
    toJSON = toJSONText

-- | Output only. This explicitly denotes which of the occurrence details are
-- specified. This field can be used as a filter in list requests.
data OccurrenceKind
    = OKNoteKindUnspecified
      -- ^ @NOTE_KIND_UNSPECIFIED@
      -- Unknown.
    | OKVulnerability
      -- ^ @VULNERABILITY@
      -- The note and occurrence represent a package vulnerability.
    | OKBuild
      -- ^ @BUILD@
      -- The note and occurrence assert build provenance.
    | OKImage
      -- ^ @IMAGE@
      -- This represents an image basis relationship.
    | OKPackage
      -- ^ @PACKAGE@
      -- This represents a package installed via a package manager.
    | OKDeployment
      -- ^ @DEPLOYMENT@
      -- The note and occurrence track deployment events.
    | OKDiscovery
      -- ^ @DISCOVERY@
      -- The note and occurrence track the initial discovery status of a
      -- resource.
    | OKAttestation
      -- ^ @ATTESTATION@
      -- This represents a logical \"role\" that can attest to artifacts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OccurrenceKind

instance FromHttpApiData OccurrenceKind where
    parseQueryParam = \case
        "NOTE_KIND_UNSPECIFIED" -> Right OKNoteKindUnspecified
        "VULNERABILITY" -> Right OKVulnerability
        "BUILD" -> Right OKBuild
        "IMAGE" -> Right OKImage
        "PACKAGE" -> Right OKPackage
        "DEPLOYMENT" -> Right OKDeployment
        "DISCOVERY" -> Right OKDiscovery
        "ATTESTATION" -> Right OKAttestation
        x -> Left ("Unable to parse OccurrenceKind from: " <> x)

instance ToHttpApiData OccurrenceKind where
    toQueryParam = \case
        OKNoteKindUnspecified -> "NOTE_KIND_UNSPECIFIED"
        OKVulnerability -> "VULNERABILITY"
        OKBuild -> "BUILD"
        OKImage -> "IMAGE"
        OKPackage -> "PACKAGE"
        OKDeployment -> "DEPLOYMENT"
        OKDiscovery -> "DISCOVERY"
        OKAttestation -> "ATTESTATION"

instance FromJSON OccurrenceKind where
    parseJSON = parseJSONText "OccurrenceKind"

instance ToJSON OccurrenceKind where
    toJSON = toJSONText

-- | Note provider assigned impact of the vulnerability.
data VulnerabilitySeverity
    = VSSeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Unknown.
    | VSMinimal
      -- ^ @MINIMAL@
      -- Minimal severity.
    | VSLow
      -- ^ @LOW@
      -- Low severity.
    | VSMedium
      -- ^ @MEDIUM@
      -- Medium severity.
    | VSHigh
      -- ^ @HIGH@
      -- High severity.
    | VSCritical
      -- ^ @CRITICAL@
      -- Critical severity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VulnerabilitySeverity

instance FromHttpApiData VulnerabilitySeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right VSSeverityUnspecified
        "MINIMAL" -> Right VSMinimal
        "LOW" -> Right VSLow
        "MEDIUM" -> Right VSMedium
        "HIGH" -> Right VSHigh
        "CRITICAL" -> Right VSCritical
        x -> Left ("Unable to parse VulnerabilitySeverity from: " <> x)

instance ToHttpApiData VulnerabilitySeverity where
    toQueryParam = \case
        VSSeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        VSMinimal -> "MINIMAL"
        VSLow -> "LOW"
        VSMedium -> "MEDIUM"
        VSHigh -> "HIGH"
        VSCritical -> "CRITICAL"

instance FromJSON VulnerabilitySeverity where
    parseJSON = parseJSONText "VulnerabilitySeverity"

instance ToJSON VulnerabilitySeverity where
    toJSON = toJSONText

-- | Whether the resource is continuously analyzed.
data DiscoveredContinuousAnalysis
    = ContinuousAnalysisUnspecified
      -- ^ @CONTINUOUS_ANALYSIS_UNSPECIFIED@
      -- Unknown.
    | Active
      -- ^ @ACTIVE@
      -- The resource is continuously analyzed.
    | Inactive
      -- ^ @INACTIVE@
      -- The resource is ignored for continuous analysis.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiscoveredContinuousAnalysis

instance FromHttpApiData DiscoveredContinuousAnalysis where
    parseQueryParam = \case
        "CONTINUOUS_ANALYSIS_UNSPECIFIED" -> Right ContinuousAnalysisUnspecified
        "ACTIVE" -> Right Active
        "INACTIVE" -> Right Inactive
        x -> Left ("Unable to parse DiscoveredContinuousAnalysis from: " <> x)

instance ToHttpApiData DiscoveredContinuousAnalysis where
    toQueryParam = \case
        ContinuousAnalysisUnspecified -> "CONTINUOUS_ANALYSIS_UNSPECIFIED"
        Active -> "ACTIVE"
        Inactive -> "INACTIVE"

instance FromJSON DiscoveredContinuousAnalysis where
    parseJSON = parseJSONText "DiscoveredContinuousAnalysis"

instance ToJSON DiscoveredContinuousAnalysis where
    toJSON = toJSONText

-- | Output only. The type of analysis. This field can be used as a filter in
-- list requests.
data NoteKind
    = NKNoteKindUnspecified
      -- ^ @NOTE_KIND_UNSPECIFIED@
      -- Unknown.
    | NKVulnerability
      -- ^ @VULNERABILITY@
      -- The note and occurrence represent a package vulnerability.
    | NKBuild
      -- ^ @BUILD@
      -- The note and occurrence assert build provenance.
    | NKImage
      -- ^ @IMAGE@
      -- This represents an image basis relationship.
    | NKPackage
      -- ^ @PACKAGE@
      -- This represents a package installed via a package manager.
    | NKDeployment
      -- ^ @DEPLOYMENT@
      -- The note and occurrence track deployment events.
    | NKDiscovery
      -- ^ @DISCOVERY@
      -- The note and occurrence track the initial discovery status of a
      -- resource.
    | NKAttestation
      -- ^ @ATTESTATION@
      -- This represents a logical \"role\" that can attest to artifacts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NoteKind

instance FromHttpApiData NoteKind where
    parseQueryParam = \case
        "NOTE_KIND_UNSPECIFIED" -> Right NKNoteKindUnspecified
        "VULNERABILITY" -> Right NKVulnerability
        "BUILD" -> Right NKBuild
        "IMAGE" -> Right NKImage
        "PACKAGE" -> Right NKPackage
        "DEPLOYMENT" -> Right NKDeployment
        "DISCOVERY" -> Right NKDiscovery
        "ATTESTATION" -> Right NKAttestation
        x -> Left ("Unable to parse NoteKind from: " <> x)

instance ToHttpApiData NoteKind where
    toQueryParam = \case
        NKNoteKindUnspecified -> "NOTE_KIND_UNSPECIFIED"
        NKVulnerability -> "VULNERABILITY"
        NKBuild -> "BUILD"
        NKImage -> "IMAGE"
        NKPackage -> "PACKAGE"
        NKDeployment -> "DEPLOYMENT"
        NKDiscovery -> "DISCOVERY"
        NKAttestation -> "ATTESTATION"

instance FromJSON NoteKind where
    parseJSON = parseJSONText "NoteKind"

instance ToJSON NoteKind where
    toJSON = toJSONText

-- | Platform hosting this deployment.
data DeploymentPlatform
    = PlatformUnspecified
      -- ^ @PLATFORM_UNSPECIFIED@
      -- Unknown.
    | Gke
      -- ^ @GKE@
      -- Google Container Engine.
    | Flex
      -- ^ @FLEX@
      -- Google App Engine: Flexible Environment.
    | Custom
      -- ^ @CUSTOM@
      -- Custom user-defined platform.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentPlatform

instance FromHttpApiData DeploymentPlatform where
    parseQueryParam = \case
        "PLATFORM_UNSPECIFIED" -> Right PlatformUnspecified
        "GKE" -> Right Gke
        "FLEX" -> Right Flex
        "CUSTOM" -> Right Custom
        x -> Left ("Unable to parse DeploymentPlatform from: " <> x)

instance ToHttpApiData DeploymentPlatform where
    toQueryParam = \case
        PlatformUnspecified -> "PLATFORM_UNSPECIFIED"
        Gke -> "GKE"
        Flex -> "FLEX"
        Custom -> "CUSTOM"

instance FromJSON DeploymentPlatform where
    parseJSON = parseJSONText "DeploymentPlatform"

instance ToJSON DeploymentPlatform where
    toJSON = toJSONText

-- | The CPU architecture for which packages in this distribution channel
-- were built.
data DistributionArchitecture
    = ArchitectureUnspecified
      -- ^ @ARCHITECTURE_UNSPECIFIED@
      -- Unknown architecture.
    | X86
      -- ^ @X86@
      -- X86 architecture.
    | X64
      -- ^ @X64@
      -- X64 architecture.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DistributionArchitecture

instance FromHttpApiData DistributionArchitecture where
    parseQueryParam = \case
        "ARCHITECTURE_UNSPECIFIED" -> Right ArchitectureUnspecified
        "X86" -> Right X86
        "X64" -> Right X64
        x -> Left ("Unable to parse DistributionArchitecture from: " <> x)

instance ToHttpApiData DistributionArchitecture where
    toQueryParam = \case
        ArchitectureUnspecified -> "ARCHITECTURE_UNSPECIFIED"
        X86 -> "X86"
        X64 -> "X64"

instance FromJSON DistributionArchitecture where
    parseJSON = parseJSONText "DistributionArchitecture"

instance ToJSON DistributionArchitecture where
    toJSON = toJSONText

-- | The severity for this count. SEVERITY_UNSPECIFIED indicates total across
-- all severities.
data FixableTotalByDigestSeverity
    = FTBDSSeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Unknown.
    | FTBDSMinimal
      -- ^ @MINIMAL@
      -- Minimal severity.
    | FTBDSLow
      -- ^ @LOW@
      -- Low severity.
    | FTBDSMedium
      -- ^ @MEDIUM@
      -- Medium severity.
    | FTBDSHigh
      -- ^ @HIGH@
      -- High severity.
    | FTBDSCritical
      -- ^ @CRITICAL@
      -- Critical severity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FixableTotalByDigestSeverity

instance FromHttpApiData FixableTotalByDigestSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right FTBDSSeverityUnspecified
        "MINIMAL" -> Right FTBDSMinimal
        "LOW" -> Right FTBDSLow
        "MEDIUM" -> Right FTBDSMedium
        "HIGH" -> Right FTBDSHigh
        "CRITICAL" -> Right FTBDSCritical
        x -> Left ("Unable to parse FixableTotalByDigestSeverity from: " <> x)

instance ToHttpApiData FixableTotalByDigestSeverity where
    toQueryParam = \case
        FTBDSSeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        FTBDSMinimal -> "MINIMAL"
        FTBDSLow -> "LOW"
        FTBDSMedium -> "MEDIUM"
        FTBDSHigh -> "HIGH"
        FTBDSCritical -> "CRITICAL"

instance FromJSON FixableTotalByDigestSeverity where
    parseJSON = parseJSONText "FixableTotalByDigestSeverity"

instance ToJSON FixableTotalByDigestSeverity where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
    toJSON = toJSONText

-- | Type (for example schema) of the attestation payload that was signed.
-- The verifier must ensure that the provided type is one that the verifier
-- supports, and that the attestation payload is a valid instantiation of
-- that type (for example by validating a JSON schema).
data PgpSignedAttestationContentType
    = ContentTypeUnspecified
      -- ^ @CONTENT_TYPE_UNSPECIFIED@
      -- \`ContentType\` is not set.
    | SimpleSigningJSON
      -- ^ @SIMPLE_SIGNING_JSON@
      -- Atomic format attestation signature. See
      -- https:\/\/github.com\/containers\/image\/blob\/8a5d2f82a6e3263290c8e0276c3e0f64e77723e7\/docs\/atomic-signature.md
      -- The payload extracted from \`signature\` is a JSON blob conforming to
      -- the linked schema.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PgpSignedAttestationContentType

instance FromHttpApiData PgpSignedAttestationContentType where
    parseQueryParam = \case
        "CONTENT_TYPE_UNSPECIFIED" -> Right ContentTypeUnspecified
        "SIMPLE_SIGNING_JSON" -> Right SimpleSigningJSON
        x -> Left ("Unable to parse PgpSignedAttestationContentType from: " <> x)

instance ToHttpApiData PgpSignedAttestationContentType where
    toQueryParam = \case
        ContentTypeUnspecified -> "CONTENT_TYPE_UNSPECIFIED"
        SimpleSigningJSON -> "SIMPLE_SIGNING_JSON"

instance FromJSON PgpSignedAttestationContentType where
    parseJSON = parseJSONText "PgpSignedAttestationContentType"

instance ToJSON PgpSignedAttestationContentType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Required. Distinguishes between sentinel MIN\/MAX versions and normal
-- versions.
data VersionKind
    = VersionKindUnspecified
      -- ^ @VERSION_KIND_UNSPECIFIED@
      -- Unknown.
    | Normal
      -- ^ @NORMAL@
      -- A standard package version.
    | Minimum
      -- ^ @MINIMUM@
      -- A special version representing negative infinity.
    | Maximum
      -- ^ @MAXIMUM@
      -- A special version representing positive infinity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VersionKind

instance FromHttpApiData VersionKind where
    parseQueryParam = \case
        "VERSION_KIND_UNSPECIFIED" -> Right VersionKindUnspecified
        "NORMAL" -> Right Normal
        "MINIMUM" -> Right Minimum
        "MAXIMUM" -> Right Maximum
        x -> Left ("Unable to parse VersionKind from: " <> x)

instance ToHttpApiData VersionKind where
    toQueryParam = \case
        VersionKindUnspecified -> "VERSION_KIND_UNSPECIFIED"
        Normal -> "NORMAL"
        Minimum -> "MINIMUM"
        Maximum -> "MAXIMUM"

instance FromJSON VersionKind where
    parseJSON = parseJSONText "VersionKind"

instance ToJSON VersionKind where
    toJSON = toJSONText

-- | Required. The type of hash that was performed.
data HashType
    = HashTypeUnspecified
      -- ^ @HASH_TYPE_UNSPECIFIED@
      -- Unknown.
    | SHA256
      -- ^ @SHA256@
      -- A SHA-256 hash.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HashType

instance FromHttpApiData HashType where
    parseQueryParam = \case
        "HASH_TYPE_UNSPECIFIED" -> Right HashTypeUnspecified
        "SHA256" -> Right SHA256
        x -> Left ("Unable to parse HashType from: " <> x)

instance ToHttpApiData HashType where
    toQueryParam = \case
        HashTypeUnspecified -> "HASH_TYPE_UNSPECIFIED"
        SHA256 -> "SHA256"

instance FromJSON HashType where
    parseJSON = parseJSONText "HashType"

instance ToJSON HashType where
    toJSON = toJSONText

-- | The type of the key, either stored in \`public_key\` or referenced in
-- \`key_id\`.
data BuildSignatureKeyType
    = KeyTypeUnspecified
      -- ^ @KEY_TYPE_UNSPECIFIED@
      -- \`KeyType\` is not set.
    | PgpAsciiArmored
      -- ^ @PGP_ASCII_ARMORED@
      -- \`PGP ASCII Armored\` public key.
    | PkixPem
      -- ^ @PKIX_PEM@
      -- \`PKIX PEM\` public key.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildSignatureKeyType

instance FromHttpApiData BuildSignatureKeyType where
    parseQueryParam = \case
        "KEY_TYPE_UNSPECIFIED" -> Right KeyTypeUnspecified
        "PGP_ASCII_ARMORED" -> Right PgpAsciiArmored
        "PKIX_PEM" -> Right PkixPem
        x -> Left ("Unable to parse BuildSignatureKeyType from: " <> x)

instance ToHttpApiData BuildSignatureKeyType where
    toQueryParam = \case
        KeyTypeUnspecified -> "KEY_TYPE_UNSPECIFIED"
        PgpAsciiArmored -> "PGP_ASCII_ARMORED"
        PkixPem -> "PKIX_PEM"

instance FromJSON BuildSignatureKeyType where
    parseJSON = parseJSONText "BuildSignatureKeyType"

instance ToJSON BuildSignatureKeyType where
    toJSON = toJSONText

-- | Required. Immutable. The kind of analysis that is handled by this
-- discovery.
data DiscoveryAnalysisKind
    = DAKNoteKindUnspecified
      -- ^ @NOTE_KIND_UNSPECIFIED@
      -- Unknown.
    | DAKVulnerability
      -- ^ @VULNERABILITY@
      -- The note and occurrence represent a package vulnerability.
    | DAKBuild
      -- ^ @BUILD@
      -- The note and occurrence assert build provenance.
    | DAKImage
      -- ^ @IMAGE@
      -- This represents an image basis relationship.
    | DAKPackage
      -- ^ @PACKAGE@
      -- This represents a package installed via a package manager.
    | DAKDeployment
      -- ^ @DEPLOYMENT@
      -- The note and occurrence track deployment events.
    | DAKDiscovery
      -- ^ @DISCOVERY@
      -- The note and occurrence track the initial discovery status of a
      -- resource.
    | DAKAttestation
      -- ^ @ATTESTATION@
      -- This represents a logical \"role\" that can attest to artifacts.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiscoveryAnalysisKind

instance FromHttpApiData DiscoveryAnalysisKind where
    parseQueryParam = \case
        "NOTE_KIND_UNSPECIFIED" -> Right DAKNoteKindUnspecified
        "VULNERABILITY" -> Right DAKVulnerability
        "BUILD" -> Right DAKBuild
        "IMAGE" -> Right DAKImage
        "PACKAGE" -> Right DAKPackage
        "DEPLOYMENT" -> Right DAKDeployment
        "DISCOVERY" -> Right DAKDiscovery
        "ATTESTATION" -> Right DAKAttestation
        x -> Left ("Unable to parse DiscoveryAnalysisKind from: " <> x)

instance ToHttpApiData DiscoveryAnalysisKind where
    toQueryParam = \case
        DAKNoteKindUnspecified -> "NOTE_KIND_UNSPECIFIED"
        DAKVulnerability -> "VULNERABILITY"
        DAKBuild -> "BUILD"
        DAKImage -> "IMAGE"
        DAKPackage -> "PACKAGE"
        DAKDeployment -> "DEPLOYMENT"
        DAKDiscovery -> "DISCOVERY"
        DAKAttestation -> "ATTESTATION"

instance FromJSON DiscoveryAnalysisKind where
    parseJSON = parseJSONText "DiscoveryAnalysisKind"

instance ToJSON DiscoveryAnalysisKind where
    toJSON = toJSONText

-- | The alias kind.
data AliasContextKind
    = KindUnspecified
      -- ^ @KIND_UNSPECIFIED@
      -- Unknown.
    | Fixed
      -- ^ @FIXED@
      -- Git tag.
    | Movable
      -- ^ @MOVABLE@
      -- Git branch.
    | Other
      -- ^ @OTHER@
      -- Used to specify non-standard aliases. For example, if a Git repo has a
      -- ref named \"refs\/foo\/bar\".
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AliasContextKind

instance FromHttpApiData AliasContextKind where
    parseQueryParam = \case
        "KIND_UNSPECIFIED" -> Right KindUnspecified
        "FIXED" -> Right Fixed
        "MOVABLE" -> Right Movable
        "OTHER" -> Right Other
        x -> Left ("Unable to parse AliasContextKind from: " <> x)

instance ToHttpApiData AliasContextKind where
    toQueryParam = \case
        KindUnspecified -> "KIND_UNSPECIFIED"
        Fixed -> "FIXED"
        Movable -> "MOVABLE"
        Other -> "OTHER"

instance FromJSON AliasContextKind where
    parseJSON = parseJSONText "AliasContextKind"

instance ToJSON AliasContextKind where
    toJSON = toJSONText
