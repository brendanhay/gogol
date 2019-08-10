{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerAnalysis.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ContainerAnalysis.Types.Product where

import           Network.Google.ContainerAnalysis.Types.Sum
import           Network.Google.Prelude

-- | This represents how a particular software package may be installed on a
-- system.
--
-- /See:/ 'installation' smart constructor.
data Installation =
  Installation'
    { _iLocation :: !(Maybe [Location])
    , _iName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Installation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iLocation'
--
-- * 'iName'
installation
    :: Installation
installation = Installation' {_iLocation = Nothing, _iName = Nothing}


-- | Required. All of the places within the filesystem versions of this
-- package have been found.
iLocation :: Lens' Installation [Location]
iLocation
  = lens _iLocation (\ s a -> s{_iLocation = a}) .
      _Default
      . _Coerce

-- | Output only. The name of the installed package.
iName :: Lens' Installation (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

instance FromJSON Installation where
        parseJSON
          = withObject "Installation"
              (\ o ->
                 Installation' <$>
                   (o .:? "location" .!= mempty) <*> (o .:? "name"))

instance ToJSON Installation where
        toJSON Installation'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _iLocation,
                  ("name" .=) <$> _iName])

-- | Verifiers (e.g. Kritis implementations) MUST verify signatures with
-- respect to the trust anchors defined in policy (e.g. a Kritis policy).
-- Typically this means that the verifier has been configured with a map
-- from \`public_key_id\` to public key material (and any required
-- parameters, e.g. signing algorithm). In particular, verification
-- implementations MUST NOT treat the signature \`public_key_id\` as
-- anything more than a key lookup hint. The \`public_key_id\` DOES NOT
-- validate or authenticate a public key; it only provides a mechanism for
-- quickly selecting a public key ALREADY CONFIGURED on the verifier
-- through a trusted channel. Verification implementations MUST reject
-- signatures in any of the following circumstances: * The
-- \`public_key_id\` is not recognized by the verifier. * The public key
-- that \`public_key_id\` refers to does not verify the signature with
-- respect to the payload. The \`signature\` contents SHOULD NOT be
-- \"attached\" (where the payload is included with the serialized
-- \`signature\` bytes). Verifiers MUST ignore any \"attached\" payload and
-- only verify signatures with respect to explicitly provided payload (e.g.
-- a \`payload\` field on the proto message that holds this Signature, or
-- the canonical serialization of the proto message that holds this
-- signature).
--
-- /See:/ 'signature' smart constructor.
data Signature =
  Signature'
    { _sSignature   :: !(Maybe Bytes)
    , _sPublicKeyId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Signature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSignature'
--
-- * 'sPublicKeyId'
signature
    :: Signature
signature = Signature' {_sSignature = Nothing, _sPublicKeyId = Nothing}


-- | The content of the signature, an opaque bytestring. The payload that
-- this signature verifies MUST be unambiguously provided with the
-- Signature during verification. A wrapper message might provide the
-- payload explicitly. Alternatively, a message might have a canonical
-- serialization that can always be unambiguously computed to derive the
-- payload.
sSignature :: Lens' Signature (Maybe ByteString)
sSignature
  = lens _sSignature (\ s a -> s{_sSignature = a}) .
      mapping _Bytes

-- | The identifier for the public key that verifies this signature. * The
-- \`public_key_id\` is required. * The \`public_key_id\` MUST be an
-- RFC3986 conformant URI. * When possible, the \`public_key_id\` SHOULD be
-- an immutable reference, such as a cryptographic digest. Examples of
-- valid \`public_key_id\`s: OpenPGP V4 public key fingerprint: *
-- \"openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA\" See
-- https:\/\/www.iana.org\/assignments\/uri-schemes\/prov\/openpgp4fpr for
-- more details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo
-- (digest of the DER serialization): *
-- \"ni:\/\/\/sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU\" *
-- \"nih:\/\/\/sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5\"
sPublicKeyId :: Lens' Signature (Maybe Text)
sPublicKeyId
  = lens _sPublicKeyId (\ s a -> s{_sPublicKeyId = a})

instance FromJSON Signature where
        parseJSON
          = withObject "Signature"
              (\ o ->
                 Signature' <$>
                   (o .:? "signature") <*> (o .:? "publicKeyId"))

instance ToJSON Signature where
        toJSON Signature'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _sSignature,
                  ("publicKeyId" .=) <$> _sPublicKeyId])

-- | Vulnerability provides metadata about a security vulnerability in a
-- Note.
--
-- /See:/ 'vulnerability' smart constructor.
data Vulnerability =
  Vulnerability'
    { _vCvssScore      :: !(Maybe (Textual Double))
    , _vCvssV3         :: !(Maybe CVSSv3)
    , _vSeverity       :: !(Maybe VulnerabilitySeverity)
    , _vDetails        :: !(Maybe [Detail])
    , _vWindowsDetails :: !(Maybe [WindowsDetail])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Vulnerability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vCvssScore'
--
-- * 'vCvssV3'
--
-- * 'vSeverity'
--
-- * 'vDetails'
--
-- * 'vWindowsDetails'
vulnerability
    :: Vulnerability
vulnerability =
  Vulnerability'
    { _vCvssScore = Nothing
    , _vCvssV3 = Nothing
    , _vSeverity = Nothing
    , _vDetails = Nothing
    , _vWindowsDetails = Nothing
    }


-- | The CVSS score for this vulnerability.
vCvssScore :: Lens' Vulnerability (Maybe Double)
vCvssScore
  = lens _vCvssScore (\ s a -> s{_vCvssScore = a}) .
      mapping _Coerce

-- | The full description of the CVSSv3.
vCvssV3 :: Lens' Vulnerability (Maybe CVSSv3)
vCvssV3 = lens _vCvssV3 (\ s a -> s{_vCvssV3 = a})

-- | Note provider assigned impact of the vulnerability.
vSeverity :: Lens' Vulnerability (Maybe VulnerabilitySeverity)
vSeverity
  = lens _vSeverity (\ s a -> s{_vSeverity = a})

-- | All information about the package to specifically identify this
-- vulnerability. One entry per (version range and cpe_uri) the package
-- vulnerability has manifested in.
vDetails :: Lens' Vulnerability [Detail]
vDetails
  = lens _vDetails (\ s a -> s{_vDetails = a}) .
      _Default
      . _Coerce

-- | Windows details get their own format because the information format and
-- model don\'t match a normal detail. Specifically Windows updates are
-- done as patches, thus Windows vulnerabilities really are a missing
-- package, rather than a package being at an incorrect version.
vWindowsDetails :: Lens' Vulnerability [WindowsDetail]
vWindowsDetails
  = lens _vWindowsDetails
      (\ s a -> s{_vWindowsDetails = a})
      . _Default
      . _Coerce

instance FromJSON Vulnerability where
        parseJSON
          = withObject "Vulnerability"
              (\ o ->
                 Vulnerability' <$>
                   (o .:? "cvssScore") <*> (o .:? "cvssV3") <*>
                     (o .:? "severity")
                     <*> (o .:? "details" .!= mempty)
                     <*> (o .:? "windowsDetails" .!= mempty))

instance ToJSON Vulnerability where
        toJSON Vulnerability'{..}
          = object
              (catMaybes
                 [("cvssScore" .=) <$> _vCvssScore,
                  ("cvssV3" .=) <$> _vCvssV3,
                  ("severity" .=) <$> _vSeverity,
                  ("details" .=) <$> _vDetails,
                  ("windowsDetails" .=) <$> _vWindowsDetails])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | A summary of how many vulnerability occurrences there are per resource
-- and severity type.
--
-- /See:/ 'vulnerabilityOccurrencesSummary' smart constructor.
newtype VulnerabilityOccurrencesSummary =
  VulnerabilityOccurrencesSummary'
    { _vosCounts :: Maybe [FixableTotalByDigest]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VulnerabilityOccurrencesSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vosCounts'
vulnerabilityOccurrencesSummary
    :: VulnerabilityOccurrencesSummary
vulnerabilityOccurrencesSummary =
  VulnerabilityOccurrencesSummary' {_vosCounts = Nothing}


-- | A listing by resource of the number of fixable and total
-- vulnerabilities.
vosCounts :: Lens' VulnerabilityOccurrencesSummary [FixableTotalByDigest]
vosCounts
  = lens _vosCounts (\ s a -> s{_vosCounts = a}) .
      _Default
      . _Coerce

instance FromJSON VulnerabilityOccurrencesSummary
         where
        parseJSON
          = withObject "VulnerabilityOccurrencesSummary"
              (\ o ->
                 VulnerabilityOccurrencesSummary' <$>
                   (o .:? "counts" .!= mempty))

instance ToJSON VulnerabilityOccurrencesSummary where
        toJSON VulnerabilityOccurrencesSummary'{..}
          = object (catMaybes [("counts" .=) <$> _vosCounts])

-- | Provenance of a build. Contains all information needed to verify the
-- full details about the build from source to completion.
--
-- /See:/ 'buildProvenance' smart constructor.
data BuildProvenance =
  BuildProvenance'
    { _bpCreator          :: !(Maybe Text)
    , _bpSourceProvenance :: !(Maybe Source)
    , _bpCommands         :: !(Maybe [Command])
    , _bpTriggerId        :: !(Maybe Text)
    , _bpStartTime        :: !(Maybe DateTime')
    , _bpBuilderVersion   :: !(Maybe Text)
    , _bpEndTime          :: !(Maybe DateTime')
    , _bpId               :: !(Maybe Text)
    , _bpProjectId        :: !(Maybe Text)
    , _bpBuiltArtifacts   :: !(Maybe [Artifact])
    , _bpBuildOptions     :: !(Maybe BuildProvenanceBuildOptions)
    , _bpCreateTime       :: !(Maybe DateTime')
    , _bpLogsURI          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildProvenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpCreator'
--
-- * 'bpSourceProvenance'
--
-- * 'bpCommands'
--
-- * 'bpTriggerId'
--
-- * 'bpStartTime'
--
-- * 'bpBuilderVersion'
--
-- * 'bpEndTime'
--
-- * 'bpId'
--
-- * 'bpProjectId'
--
-- * 'bpBuiltArtifacts'
--
-- * 'bpBuildOptions'
--
-- * 'bpCreateTime'
--
-- * 'bpLogsURI'
buildProvenance
    :: BuildProvenance
buildProvenance =
  BuildProvenance'
    { _bpCreator = Nothing
    , _bpSourceProvenance = Nothing
    , _bpCommands = Nothing
    , _bpTriggerId = Nothing
    , _bpStartTime = Nothing
    , _bpBuilderVersion = Nothing
    , _bpEndTime = Nothing
    , _bpId = Nothing
    , _bpProjectId = Nothing
    , _bpBuiltArtifacts = Nothing
    , _bpBuildOptions = Nothing
    , _bpCreateTime = Nothing
    , _bpLogsURI = Nothing
    }


-- | E-mail address of the user who initiated this build. Note that this was
-- the user\'s e-mail address at the time the build was initiated; this
-- address may not represent the same end-user for all time.
bpCreator :: Lens' BuildProvenance (Maybe Text)
bpCreator
  = lens _bpCreator (\ s a -> s{_bpCreator = a})

-- | Details of the Source input to the build.
bpSourceProvenance :: Lens' BuildProvenance (Maybe Source)
bpSourceProvenance
  = lens _bpSourceProvenance
      (\ s a -> s{_bpSourceProvenance = a})

-- | Commands requested by the build.
bpCommands :: Lens' BuildProvenance [Command]
bpCommands
  = lens _bpCommands (\ s a -> s{_bpCommands = a}) .
      _Default
      . _Coerce

-- | Trigger identifier if the build was triggered automatically; empty if
-- not.
bpTriggerId :: Lens' BuildProvenance (Maybe Text)
bpTriggerId
  = lens _bpTriggerId (\ s a -> s{_bpTriggerId = a})

-- | Time at which execution of the build was started.
bpStartTime :: Lens' BuildProvenance (Maybe UTCTime)
bpStartTime
  = lens _bpStartTime (\ s a -> s{_bpStartTime = a}) .
      mapping _DateTime

-- | Version string of the builder at the time this build was executed.
bpBuilderVersion :: Lens' BuildProvenance (Maybe Text)
bpBuilderVersion
  = lens _bpBuilderVersion
      (\ s a -> s{_bpBuilderVersion = a})

-- | Time at which execution of the build was finished.
bpEndTime :: Lens' BuildProvenance (Maybe UTCTime)
bpEndTime
  = lens _bpEndTime (\ s a -> s{_bpEndTime = a}) .
      mapping _DateTime

-- | Required. Unique identifier of the build.
bpId :: Lens' BuildProvenance (Maybe Text)
bpId = lens _bpId (\ s a -> s{_bpId = a})

-- | ID of the project.
bpProjectId :: Lens' BuildProvenance (Maybe Text)
bpProjectId
  = lens _bpProjectId (\ s a -> s{_bpProjectId = a})

-- | Output of the build.
bpBuiltArtifacts :: Lens' BuildProvenance [Artifact]
bpBuiltArtifacts
  = lens _bpBuiltArtifacts
      (\ s a -> s{_bpBuiltArtifacts = a})
      . _Default
      . _Coerce

-- | Special options applied to this build. This is a catch-all field where
-- build providers can enter any desired additional details.
bpBuildOptions :: Lens' BuildProvenance (Maybe BuildProvenanceBuildOptions)
bpBuildOptions
  = lens _bpBuildOptions
      (\ s a -> s{_bpBuildOptions = a})

-- | Time at which the build was created.
bpCreateTime :: Lens' BuildProvenance (Maybe UTCTime)
bpCreateTime
  = lens _bpCreateTime (\ s a -> s{_bpCreateTime = a})
      . mapping _DateTime

-- | URI where any logs for this provenance were written.
bpLogsURI :: Lens' BuildProvenance (Maybe Text)
bpLogsURI
  = lens _bpLogsURI (\ s a -> s{_bpLogsURI = a})

instance FromJSON BuildProvenance where
        parseJSON
          = withObject "BuildProvenance"
              (\ o ->
                 BuildProvenance' <$>
                   (o .:? "creator") <*> (o .:? "sourceProvenance") <*>
                     (o .:? "commands" .!= mempty)
                     <*> (o .:? "triggerId")
                     <*> (o .:? "startTime")
                     <*> (o .:? "builderVersion")
                     <*> (o .:? "endTime")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "builtArtifacts" .!= mempty)
                     <*> (o .:? "buildOptions")
                     <*> (o .:? "createTime")
                     <*> (o .:? "logsUri"))

instance ToJSON BuildProvenance where
        toJSON BuildProvenance'{..}
          = object
              (catMaybes
                 [("creator" .=) <$> _bpCreator,
                  ("sourceProvenance" .=) <$> _bpSourceProvenance,
                  ("commands" .=) <$> _bpCommands,
                  ("triggerId" .=) <$> _bpTriggerId,
                  ("startTime" .=) <$> _bpStartTime,
                  ("builderVersion" .=) <$> _bpBuilderVersion,
                  ("endTime" .=) <$> _bpEndTime, ("id" .=) <$> _bpId,
                  ("projectId" .=) <$> _bpProjectId,
                  ("builtArtifacts" .=) <$> _bpBuiltArtifacts,
                  ("buildOptions" .=) <$> _bpBuildOptions,
                  ("createTime" .=) <$> _bpCreateTime,
                  ("logsUri" .=) <$> _bpLogsURI])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\" \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", }, { \"log_type\": \"ADMIN_READ\", } ] }, { \"service\":
-- \"fooservice.googleapis.com\" \"audit_log_configs\": [ { \"log_type\":
-- \"DATA_READ\", }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\":
-- [ \"user:bar\'gmail.com\" ] } ] } ] } For fooservice, this policy
-- enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts
-- foo\'gmail.com from DATA_READ logging, and bar\'gmail.com from
-- DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService         :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

-- | An instance of an analysis type that has been found on a resource.
--
-- /See:/ 'occurrence' smart constructor.
data Occurrence =
  Occurrence'
    { _oInstallation  :: !(Maybe GrafeasV1beta1PackageDetails)
    , _oVulnerability :: !(Maybe GrafeasV1beta1VulnerabilityDetails)
    , _oDerivedImage  :: !(Maybe GrafeasV1beta1ImageDetails)
    , _oKind          :: !(Maybe OccurrenceKind)
    , _oBuild         :: !(Maybe GrafeasV1beta1BuildDetails)
    , _oAttestation   :: !(Maybe Details)
    , _oUpdateTime    :: !(Maybe DateTime')
    , _oName          :: !(Maybe Text)
    , _oNoteName      :: !(Maybe Text)
    , _oRemediation   :: !(Maybe Text)
    , _oResource      :: !(Maybe Resource)
    , _oDiscovered    :: !(Maybe GrafeasV1beta1DiscoveryDetails)
    , _oCreateTime    :: !(Maybe DateTime')
    , _oDeployment    :: !(Maybe GrafeasV1beta1DeploymentDetails)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Occurrence' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oInstallation'
--
-- * 'oVulnerability'
--
-- * 'oDerivedImage'
--
-- * 'oKind'
--
-- * 'oBuild'
--
-- * 'oAttestation'
--
-- * 'oUpdateTime'
--
-- * 'oName'
--
-- * 'oNoteName'
--
-- * 'oRemediation'
--
-- * 'oResource'
--
-- * 'oDiscovered'
--
-- * 'oCreateTime'
--
-- * 'oDeployment'
occurrence
    :: Occurrence
occurrence =
  Occurrence'
    { _oInstallation = Nothing
    , _oVulnerability = Nothing
    , _oDerivedImage = Nothing
    , _oKind = Nothing
    , _oBuild = Nothing
    , _oAttestation = Nothing
    , _oUpdateTime = Nothing
    , _oName = Nothing
    , _oNoteName = Nothing
    , _oRemediation = Nothing
    , _oResource = Nothing
    , _oDiscovered = Nothing
    , _oCreateTime = Nothing
    , _oDeployment = Nothing
    }


-- | Describes the installation of a package on the linked resource.
oInstallation :: Lens' Occurrence (Maybe GrafeasV1beta1PackageDetails)
oInstallation
  = lens _oInstallation
      (\ s a -> s{_oInstallation = a})

-- | Describes a security vulnerability.
oVulnerability :: Lens' Occurrence (Maybe GrafeasV1beta1VulnerabilityDetails)
oVulnerability
  = lens _oVulnerability
      (\ s a -> s{_oVulnerability = a})

-- | Describes how this resource derives from the basis in the associated
-- note.
oDerivedImage :: Lens' Occurrence (Maybe GrafeasV1beta1ImageDetails)
oDerivedImage
  = lens _oDerivedImage
      (\ s a -> s{_oDerivedImage = a})

-- | Output only. This explicitly denotes which of the occurrence details are
-- specified. This field can be used as a filter in list requests.
oKind :: Lens' Occurrence (Maybe OccurrenceKind)
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | Describes a verifiable build.
oBuild :: Lens' Occurrence (Maybe GrafeasV1beta1BuildDetails)
oBuild = lens _oBuild (\ s a -> s{_oBuild = a})

-- | Describes an attestation of an artifact.
oAttestation :: Lens' Occurrence (Maybe Details)
oAttestation
  = lens _oAttestation (\ s a -> s{_oAttestation = a})

-- | Output only. The time this occurrence was last updated.
oUpdateTime :: Lens' Occurrence (Maybe UTCTime)
oUpdateTime
  = lens _oUpdateTime (\ s a -> s{_oUpdateTime = a}) .
      mapping _DateTime

-- | Output only. The name of the occurrence in the form of
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\`.
oName :: Lens' Occurrence (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Required. Immutable. The analysis note associated with this occurrence,
-- in the form of \`projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]\`. This field
-- can be used as a filter in list requests.
oNoteName :: Lens' Occurrence (Maybe Text)
oNoteName
  = lens _oNoteName (\ s a -> s{_oNoteName = a})

-- | A description of actions that can be taken to remedy the note.
oRemediation :: Lens' Occurrence (Maybe Text)
oRemediation
  = lens _oRemediation (\ s a -> s{_oRemediation = a})

-- | Required. Immutable. The resource for which the occurrence applies.
oResource :: Lens' Occurrence (Maybe Resource)
oResource
  = lens _oResource (\ s a -> s{_oResource = a})

-- | Describes when a resource was discovered.
oDiscovered :: Lens' Occurrence (Maybe GrafeasV1beta1DiscoveryDetails)
oDiscovered
  = lens _oDiscovered (\ s a -> s{_oDiscovered = a})

-- | Output only. The time this occurrence was created.
oCreateTime :: Lens' Occurrence (Maybe UTCTime)
oCreateTime
  = lens _oCreateTime (\ s a -> s{_oCreateTime = a}) .
      mapping _DateTime

-- | Describes the deployment of an artifact on a runtime.
oDeployment :: Lens' Occurrence (Maybe GrafeasV1beta1DeploymentDetails)
oDeployment
  = lens _oDeployment (\ s a -> s{_oDeployment = a})

instance FromJSON Occurrence where
        parseJSON
          = withObject "Occurrence"
              (\ o ->
                 Occurrence' <$>
                   (o .:? "installation") <*> (o .:? "vulnerability")
                     <*> (o .:? "derivedImage")
                     <*> (o .:? "kind")
                     <*> (o .:? "build")
                     <*> (o .:? "attestation")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "noteName")
                     <*> (o .:? "remediation")
                     <*> (o .:? "resource")
                     <*> (o .:? "discovered")
                     <*> (o .:? "createTime")
                     <*> (o .:? "deployment"))

instance ToJSON Occurrence where
        toJSON Occurrence'{..}
          = object
              (catMaybes
                 [("installation" .=) <$> _oInstallation,
                  ("vulnerability" .=) <$> _oVulnerability,
                  ("derivedImage" .=) <$> _oDerivedImage,
                  ("kind" .=) <$> _oKind, ("build" .=) <$> _oBuild,
                  ("attestation" .=) <$> _oAttestation,
                  ("updateTime" .=) <$> _oUpdateTime,
                  ("name" .=) <$> _oName,
                  ("noteName" .=) <$> _oNoteName,
                  ("remediation" .=) <$> _oRemediation,
                  ("resource" .=) <$> _oResource,
                  ("discovered" .=) <$> _oDiscovered,
                  ("createTime" .=) <$> _oCreateTime,
                  ("deployment" .=) <$> _oDeployment])

-- | Details of a vulnerability Occurrence.
--
-- /See:/ 'grafeasV1beta1VulnerabilityDetails' smart constructor.
data GrafeasV1beta1VulnerabilityDetails =
  GrafeasV1beta1VulnerabilityDetails'
    { _gvvdLongDescription   :: !(Maybe Text)
    , _gvvdRelatedURLs       :: !(Maybe [RelatedURL])
    , _gvvdCvssScore         :: !(Maybe (Textual Double))
    , _gvvdPackageIssue      :: !(Maybe [PackageIssue])
    , _gvvdSeverity          :: !(Maybe GrafeasV1beta1VulnerabilityDetailsSeverity)
    , _gvvdEffectiveSeverity :: !(Maybe GrafeasV1beta1VulnerabilityDetailsEffectiveSeverity)
    , _gvvdShortDescription  :: !(Maybe Text)
    , _gvvdType              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrafeasV1beta1VulnerabilityDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvvdLongDescription'
--
-- * 'gvvdRelatedURLs'
--
-- * 'gvvdCvssScore'
--
-- * 'gvvdPackageIssue'
--
-- * 'gvvdSeverity'
--
-- * 'gvvdEffectiveSeverity'
--
-- * 'gvvdShortDescription'
--
-- * 'gvvdType'
grafeasV1beta1VulnerabilityDetails
    :: GrafeasV1beta1VulnerabilityDetails
grafeasV1beta1VulnerabilityDetails =
  GrafeasV1beta1VulnerabilityDetails'
    { _gvvdLongDescription = Nothing
    , _gvvdRelatedURLs = Nothing
    , _gvvdCvssScore = Nothing
    , _gvvdPackageIssue = Nothing
    , _gvvdSeverity = Nothing
    , _gvvdEffectiveSeverity = Nothing
    , _gvvdShortDescription = Nothing
    , _gvvdType = Nothing
    }


-- | Output only. A detailed description of this vulnerability.
gvvdLongDescription :: Lens' GrafeasV1beta1VulnerabilityDetails (Maybe Text)
gvvdLongDescription
  = lens _gvvdLongDescription
      (\ s a -> s{_gvvdLongDescription = a})

-- | Output only. URLs related to this vulnerability.
gvvdRelatedURLs :: Lens' GrafeasV1beta1VulnerabilityDetails [RelatedURL]
gvvdRelatedURLs
  = lens _gvvdRelatedURLs
      (\ s a -> s{_gvvdRelatedURLs = a})
      . _Default
      . _Coerce

-- | Output only. The CVSS score of this vulnerability. CVSS score is on a
-- scale of 0-10 where 0 indicates low severity and 10 indicates high
-- severity.
gvvdCvssScore :: Lens' GrafeasV1beta1VulnerabilityDetails (Maybe Double)
gvvdCvssScore
  = lens _gvvdCvssScore
      (\ s a -> s{_gvvdCvssScore = a})
      . mapping _Coerce

-- | Required. The set of affected locations and their fixes (if available)
-- within the associated resource.
gvvdPackageIssue :: Lens' GrafeasV1beta1VulnerabilityDetails [PackageIssue]
gvvdPackageIssue
  = lens _gvvdPackageIssue
      (\ s a -> s{_gvvdPackageIssue = a})
      . _Default
      . _Coerce

-- | Output only. The note provider assigned Severity of the vulnerability.
gvvdSeverity :: Lens' GrafeasV1beta1VulnerabilityDetails (Maybe GrafeasV1beta1VulnerabilityDetailsSeverity)
gvvdSeverity
  = lens _gvvdSeverity (\ s a -> s{_gvvdSeverity = a})

-- | The distro assigned severity for this vulnerability when it is
-- available, and note provider assigned severity when distro has not yet
-- assigned a severity for this vulnerability.
gvvdEffectiveSeverity :: Lens' GrafeasV1beta1VulnerabilityDetails (Maybe GrafeasV1beta1VulnerabilityDetailsEffectiveSeverity)
gvvdEffectiveSeverity
  = lens _gvvdEffectiveSeverity
      (\ s a -> s{_gvvdEffectiveSeverity = a})

-- | Output only. A one sentence description of this vulnerability.
gvvdShortDescription :: Lens' GrafeasV1beta1VulnerabilityDetails (Maybe Text)
gvvdShortDescription
  = lens _gvvdShortDescription
      (\ s a -> s{_gvvdShortDescription = a})

-- | The type of package; whether native or non native(ruby gems, node.js
-- packages etc)
gvvdType :: Lens' GrafeasV1beta1VulnerabilityDetails (Maybe Text)
gvvdType = lens _gvvdType (\ s a -> s{_gvvdType = a})

instance FromJSON GrafeasV1beta1VulnerabilityDetails
         where
        parseJSON
          = withObject "GrafeasV1beta1VulnerabilityDetails"
              (\ o ->
                 GrafeasV1beta1VulnerabilityDetails' <$>
                   (o .:? "longDescription") <*>
                     (o .:? "relatedUrls" .!= mempty)
                     <*> (o .:? "cvssScore")
                     <*> (o .:? "packageIssue" .!= mempty)
                     <*> (o .:? "severity")
                     <*> (o .:? "effectiveSeverity")
                     <*> (o .:? "shortDescription")
                     <*> (o .:? "type"))

instance ToJSON GrafeasV1beta1VulnerabilityDetails
         where
        toJSON GrafeasV1beta1VulnerabilityDetails'{..}
          = object
              (catMaybes
                 [("longDescription" .=) <$> _gvvdLongDescription,
                  ("relatedUrls" .=) <$> _gvvdRelatedURLs,
                  ("cvssScore" .=) <$> _gvvdCvssScore,
                  ("packageIssue" .=) <$> _gvvdPackageIssue,
                  ("severity" .=) <$> _gvvdSeverity,
                  ("effectiveSeverity" .=) <$> _gvvdEffectiveSeverity,
                  ("shortDescription" .=) <$> _gvvdShortDescription,
                  ("type" .=) <$> _gvvdType])

-- | Hash(es) of the build source, which can be used to verify that the
-- original source integrity was maintained in the build. The keys to this
-- map are file paths used as build source and the values contain the hash
-- values for those files. If the build source came in a single package
-- such as a gzipped tarfile (.tar.gz), the FileHash will be for the single
-- path to that file.
--
-- /See:/ 'sourceFileHashes' smart constructor.
newtype SourceFileHashes =
  SourceFileHashes'
    { _sfhAddtional :: HashMap Text FileHashes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceFileHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfhAddtional'
sourceFileHashes
    :: HashMap Text FileHashes -- ^ 'sfhAddtional'
    -> SourceFileHashes
sourceFileHashes pSfhAddtional_ =
  SourceFileHashes' {_sfhAddtional = _Coerce # pSfhAddtional_}


sfhAddtional :: Lens' SourceFileHashes (HashMap Text FileHashes)
sfhAddtional
  = lens _sfhAddtional (\ s a -> s{_sfhAddtional = a})
      . _Coerce

instance FromJSON SourceFileHashes where
        parseJSON
          = withObject "SourceFileHashes"
              (\ o -> SourceFileHashes' <$> (parseJSONObject o))

instance ToJSON SourceFileHashes where
        toJSON = toJSON . _sfhAddtional

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | Command describes a step performed as part of the build pipeline.
--
-- /See:/ 'command' smart constructor.
data Command =
  Command'
    { _cDir     :: !(Maybe Text)
    , _cArgs    :: !(Maybe [Text])
    , _cEnv     :: !(Maybe [Text])
    , _cWaitFor :: !(Maybe [Text])
    , _cName    :: !(Maybe Text)
    , _cId      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Command' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDir'
--
-- * 'cArgs'
--
-- * 'cEnv'
--
-- * 'cWaitFor'
--
-- * 'cName'
--
-- * 'cId'
command
    :: Command
command =
  Command'
    { _cDir = Nothing
    , _cArgs = Nothing
    , _cEnv = Nothing
    , _cWaitFor = Nothing
    , _cName = Nothing
    , _cId = Nothing
    }


-- | Working directory (relative to project source root) used when running
-- this command.
cDir :: Lens' Command (Maybe Text)
cDir = lens _cDir (\ s a -> s{_cDir = a})

-- | Command-line arguments used when executing this command.
cArgs :: Lens' Command [Text]
cArgs
  = lens _cArgs (\ s a -> s{_cArgs = a}) . _Default .
      _Coerce

-- | Environment variables set before running this command.
cEnv :: Lens' Command [Text]
cEnv
  = lens _cEnv (\ s a -> s{_cEnv = a}) . _Default .
      _Coerce

-- | The ID(s) of the command(s) that this command depends on.
cWaitFor :: Lens' Command [Text]
cWaitFor
  = lens _cWaitFor (\ s a -> s{_cWaitFor = a}) .
      _Default
      . _Coerce

-- | Required. Name of the command, as presented on the command line, or if
-- the command is packaged as a Docker container, as presented to \`docker
-- pull\`.
cName :: Lens' Command (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Optional unique identifier for this command, used in wait_for to
-- reference this command as a dependency.
cId :: Lens' Command (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

instance FromJSON Command where
        parseJSON
          = withObject "Command"
              (\ o ->
                 Command' <$>
                   (o .:? "dir") <*> (o .:? "args" .!= mempty) <*>
                     (o .:? "env" .!= mempty)
                     <*> (o .:? "waitFor" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Command where
        toJSON Command'{..}
          = object
              (catMaybes
                 [("dir" .=) <$> _cDir, ("args" .=) <$> _cArgs,
                  ("env" .=) <$> _cEnv, ("waitFor" .=) <$> _cWaitFor,
                  ("name" .=) <$> _cName, ("id" .=) <$> _cId])

--
-- /See:/ 'knowledgeBase' smart constructor.
data KnowledgeBase =
  KnowledgeBase'
    { _kbURL  :: !(Maybe Text)
    , _kbName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KnowledgeBase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kbURL'
--
-- * 'kbName'
knowledgeBase
    :: KnowledgeBase
knowledgeBase = KnowledgeBase' {_kbURL = Nothing, _kbName = Nothing}


-- | A link to the KB in the Windows update catalog -
-- https:\/\/www.catalog.update.microsoft.com\/
kbURL :: Lens' KnowledgeBase (Maybe Text)
kbURL = lens _kbURL (\ s a -> s{_kbURL = a})

-- | The KB name (generally of the form KB[0-9]+ i.e. KB123456).
kbName :: Lens' KnowledgeBase (Maybe Text)
kbName = lens _kbName (\ s a -> s{_kbName = a})

instance FromJSON KnowledgeBase where
        parseJSON
          = withObject "KnowledgeBase"
              (\ o ->
                 KnowledgeBase' <$> (o .:? "url") <*> (o .:? "name"))

instance ToJSON KnowledgeBase where
        toJSON KnowledgeBase'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _kbURL, ("name" .=) <$> _kbName])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
data GetIAMPolicyRequest =
  GetIAMPolicyRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest'


instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest')

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | A note that indicates a type of analysis a provider would perform. This
-- note exists in a provider\'s project. A \`Discovery\` occurrence is
-- created in a consumer\'s project at the start of analysis.
--
-- /See:/ 'discovery' smart constructor.
newtype Discovery =
  Discovery'
    { _dAnalysisKind :: Maybe DiscoveryAnalysisKind
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Discovery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAnalysisKind'
discovery
    :: Discovery
discovery = Discovery' {_dAnalysisKind = Nothing}


-- | Required. Immutable. The kind of analysis that is handled by this
-- discovery.
dAnalysisKind :: Lens' Discovery (Maybe DiscoveryAnalysisKind)
dAnalysisKind
  = lens _dAnalysisKind
      (\ s a -> s{_dAnalysisKind = a})

instance FromJSON Discovery where
        parseJSON
          = withObject "Discovery"
              (\ o -> Discovery' <$> (o .:? "analysisKind"))

instance ToJSON Discovery where
        toJSON Discovery'{..}
          = object
              (catMaybes [("analysisKind" .=) <$> _dAnalysisKind])

-- | Container message for hash values.
--
-- /See:/ 'hash' smart constructor.
data Hash =
  Hash'
    { _hValue :: !(Maybe Bytes)
    , _hType  :: !(Maybe HashType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hValue'
--
-- * 'hType'
hash
    :: Hash
hash = Hash' {_hValue = Nothing, _hType = Nothing}


-- | Required. The hash value.
hValue :: Lens' Hash (Maybe ByteString)
hValue
  = lens _hValue (\ s a -> s{_hValue = a}) .
      mapping _Bytes

-- | Required. The type of hash that was performed.
hType :: Lens' Hash (Maybe HashType)
hType = lens _hType (\ s a -> s{_hType = a})

instance FromJSON Hash where
        parseJSON
          = withObject "Hash"
              (\ o -> Hash' <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON Hash where
        toJSON Hash'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _hValue, ("type" .=) <$> _hType])

-- | Basis describes the base image portion (Note) of the DockerImage
-- relationship. Linked occurrences are derived from this or an equivalent
-- image via: FROM Or an equivalent reference, e.g. a tag of the
-- resource_url.
--
-- /See:/ 'basis' smart constructor.
data Basis =
  Basis'
    { _bFingerprint :: !(Maybe Fingerprint)
    , _bResourceURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Basis' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bFingerprint'
--
-- * 'bResourceURL'
basis
    :: Basis
basis = Basis' {_bFingerprint = Nothing, _bResourceURL = Nothing}


-- | Required. Immutable. The fingerprint of the base image.
bFingerprint :: Lens' Basis (Maybe Fingerprint)
bFingerprint
  = lens _bFingerprint (\ s a -> s{_bFingerprint = a})

-- | Required. Immutable. The resource_url for the resource representing the
-- basis of associated occurrence images.
bResourceURL :: Lens' Basis (Maybe Text)
bResourceURL
  = lens _bResourceURL (\ s a -> s{_bResourceURL = a})

instance FromJSON Basis where
        parseJSON
          = withObject "Basis"
              (\ o ->
                 Basis' <$>
                   (o .:? "fingerprint") <*> (o .:? "resourceUrl"))

instance ToJSON Basis where
        toJSON Basis'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _bFingerprint,
                  ("resourceUrl" .=) <$> _bResourceURL])

-- | Request to create notes in batch.
--
-- /See:/ 'batchCreateNotesRequest' smart constructor.
newtype BatchCreateNotesRequest =
  BatchCreateNotesRequest'
    { _bcnrNotes :: Maybe BatchCreateNotesRequestNotes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateNotesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcnrNotes'
batchCreateNotesRequest
    :: BatchCreateNotesRequest
batchCreateNotesRequest = BatchCreateNotesRequest' {_bcnrNotes = Nothing}


-- | The notes to create. Max allowed length is 1000.
bcnrNotes :: Lens' BatchCreateNotesRequest (Maybe BatchCreateNotesRequestNotes)
bcnrNotes
  = lens _bcnrNotes (\ s a -> s{_bcnrNotes = a})

instance FromJSON BatchCreateNotesRequest where
        parseJSON
          = withObject "BatchCreateNotesRequest"
              (\ o -> BatchCreateNotesRequest' <$> (o .:? "notes"))

instance ToJSON BatchCreateNotesRequest where
        toJSON BatchCreateNotesRequest'{..}
          = object (catMaybes [("notes" .=) <$> _bcnrNotes])

-- | A SourceContext is a reference to a tree of files. A SourceContext
-- together with a path point to a unique revision of a single file or
-- directory.
--
-- /See:/ 'sourceContext' smart constructor.
data SourceContext =
  SourceContext'
    { _scCloudRepo :: !(Maybe CloudRepoSourceContext)
    , _scGerrit    :: !(Maybe GerritSourceContext)
    , _scGit       :: !(Maybe GitSourceContext)
    , _scLabels    :: !(Maybe SourceContextLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCloudRepo'
--
-- * 'scGerrit'
--
-- * 'scGit'
--
-- * 'scLabels'
sourceContext
    :: SourceContext
sourceContext =
  SourceContext'
    { _scCloudRepo = Nothing
    , _scGerrit = Nothing
    , _scGit = Nothing
    , _scLabels = Nothing
    }


-- | A SourceContext referring to a revision in a Google Cloud Source Repo.
scCloudRepo :: Lens' SourceContext (Maybe CloudRepoSourceContext)
scCloudRepo
  = lens _scCloudRepo (\ s a -> s{_scCloudRepo = a})

-- | A SourceContext referring to a Gerrit project.
scGerrit :: Lens' SourceContext (Maybe GerritSourceContext)
scGerrit = lens _scGerrit (\ s a -> s{_scGerrit = a})

-- | A SourceContext referring to any third party Git repo (e.g., GitHub).
scGit :: Lens' SourceContext (Maybe GitSourceContext)
scGit = lens _scGit (\ s a -> s{_scGit = a})

-- | Labels with user defined metadata.
scLabels :: Lens' SourceContext (Maybe SourceContextLabels)
scLabels = lens _scLabels (\ s a -> s{_scLabels = a})

instance FromJSON SourceContext where
        parseJSON
          = withObject "SourceContext"
              (\ o ->
                 SourceContext' <$>
                   (o .:? "cloudRepo") <*> (o .:? "gerrit") <*>
                     (o .:? "git")
                     <*> (o .:? "labels"))

instance ToJSON SourceContext where
        toJSON SourceContext'{..}
          = object
              (catMaybes
                 [("cloudRepo" .=) <$> _scCloudRepo,
                  ("gerrit" .=) <$> _scGerrit, ("git" .=) <$> _scGit,
                  ("labels" .=) <$> _scLabels])

-- | This represents a particular channel of distribution for a given
-- package. E.g., Debian\'s jessie-backports dpkg mirror.
--
-- /See:/ 'distribution' smart constructor.
data Distribution =
  Distribution'
    { _dURL           :: !(Maybe Text)
    , _dMaintainer    :: !(Maybe Text)
    , _dArchitecture  :: !(Maybe DistributionArchitecture)
    , _dCpeURI        :: !(Maybe Text)
    , _dDescription   :: !(Maybe Text)
    , _dLatestVersion :: !(Maybe Version)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Distribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dURL'
--
-- * 'dMaintainer'
--
-- * 'dArchitecture'
--
-- * 'dCpeURI'
--
-- * 'dDescription'
--
-- * 'dLatestVersion'
distribution
    :: Distribution
distribution =
  Distribution'
    { _dURL = Nothing
    , _dMaintainer = Nothing
    , _dArchitecture = Nothing
    , _dCpeURI = Nothing
    , _dDescription = Nothing
    , _dLatestVersion = Nothing
    }


-- | The distribution channel-specific homepage for this package.
dURL :: Lens' Distribution (Maybe Text)
dURL = lens _dURL (\ s a -> s{_dURL = a})

-- | A freeform string denoting the maintainer of this package.
dMaintainer :: Lens' Distribution (Maybe Text)
dMaintainer
  = lens _dMaintainer (\ s a -> s{_dMaintainer = a})

-- | The CPU architecture for which packages in this distribution channel
-- were built.
dArchitecture :: Lens' Distribution (Maybe DistributionArchitecture)
dArchitecture
  = lens _dArchitecture
      (\ s a -> s{_dArchitecture = a})

-- | Required. The cpe_uri in [CPE
-- format](https:\/\/cpe.mitre.org\/specification\/) denoting the package
-- manager version distributing a package.
dCpeURI :: Lens' Distribution (Maybe Text)
dCpeURI = lens _dCpeURI (\ s a -> s{_dCpeURI = a})

-- | The distribution channel-specific description of this package.
dDescription :: Lens' Distribution (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | The latest available version of this package in this distribution
-- channel.
dLatestVersion :: Lens' Distribution (Maybe Version)
dLatestVersion
  = lens _dLatestVersion
      (\ s a -> s{_dLatestVersion = a})

instance FromJSON Distribution where
        parseJSON
          = withObject "Distribution"
              (\ o ->
                 Distribution' <$>
                   (o .:? "url") <*> (o .:? "maintainer") <*>
                     (o .:? "architecture")
                     <*> (o .:? "cpeUri")
                     <*> (o .:? "description")
                     <*> (o .:? "latestVersion"))

instance ToJSON Distribution where
        toJSON Distribution'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dURL,
                  ("maintainer" .=) <$> _dMaintainer,
                  ("architecture" .=) <$> _dArchitecture,
                  ("cpeUri" .=) <$> _dCpeURI,
                  ("description" .=) <$> _dDescription,
                  ("latestVersion" .=) <$> _dLatestVersion])

-- | Request to create occurrences in batch.
--
-- /See:/ 'batchCreateOccurrencesRequest' smart constructor.
newtype BatchCreateOccurrencesRequest =
  BatchCreateOccurrencesRequest'
    { _bcorOccurrences :: Maybe [Occurrence]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateOccurrencesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcorOccurrences'
batchCreateOccurrencesRequest
    :: BatchCreateOccurrencesRequest
batchCreateOccurrencesRequest =
  BatchCreateOccurrencesRequest' {_bcorOccurrences = Nothing}


-- | The occurrences to create. Max allowed length is 1000.
bcorOccurrences :: Lens' BatchCreateOccurrencesRequest [Occurrence]
bcorOccurrences
  = lens _bcorOccurrences
      (\ s a -> s{_bcorOccurrences = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreateOccurrencesRequest where
        parseJSON
          = withObject "BatchCreateOccurrencesRequest"
              (\ o ->
                 BatchCreateOccurrencesRequest' <$>
                   (o .:? "occurrences" .!= mempty))

instance ToJSON BatchCreateOccurrencesRequest where
        toJSON BatchCreateOccurrencesRequest'{..}
          = object
              (catMaybes [("occurrences" .=) <$> _bcorOccurrences])

-- | Response for listing occurrences.
--
-- /See:/ 'listOccurrencesResponse' smart constructor.
data ListOccurrencesResponse =
  ListOccurrencesResponse'
    { _lorOccurrences   :: !(Maybe [Occurrence])
    , _lorNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOccurrencesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorOccurrences'
--
-- * 'lorNextPageToken'
listOccurrencesResponse
    :: ListOccurrencesResponse
listOccurrencesResponse =
  ListOccurrencesResponse'
    {_lorOccurrences = Nothing, _lorNextPageToken = Nothing}


-- | The occurrences requested.
lorOccurrences :: Lens' ListOccurrencesResponse [Occurrence]
lorOccurrences
  = lens _lorOccurrences
      (\ s a -> s{_lorOccurrences = a})
      . _Default
      . _Coerce

-- | The next pagination token in the list response. It should be used as
-- \`page_token\` for the following request. An empty value means no more
-- results.
lorNextPageToken :: Lens' ListOccurrencesResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

instance FromJSON ListOccurrencesResponse where
        parseJSON
          = withObject "ListOccurrencesResponse"
              (\ o ->
                 ListOccurrencesResponse' <$>
                   (o .:? "occurrences" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListOccurrencesResponse where
        toJSON ListOccurrencesResponse'{..}
          = object
              (catMaybes
                 [("occurrences" .=) <$> _lorOccurrences,
                  ("nextPageToken" .=) <$> _lorNextPageToken])

-- | An occurrence of a particular package installation found within a
-- system\'s filesystem. E.g., glibc was found in
-- \`\/var\/lib\/dpkg\/status\`.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lPath    :: !(Maybe Text)
    , _lVersion :: !(Maybe Version)
    , _lCpeURI  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lPath'
--
-- * 'lVersion'
--
-- * 'lCpeURI'
location
    :: Location
location = Location' {_lPath = Nothing, _lVersion = Nothing, _lCpeURI = Nothing}


-- | The path from which we gathered that this package\/version is installed.
lPath :: Lens' Location (Maybe Text)
lPath = lens _lPath (\ s a -> s{_lPath = a})

-- | The version installed at this location.
lVersion :: Lens' Location (Maybe Version)
lVersion = lens _lVersion (\ s a -> s{_lVersion = a})

-- | Required. The CPE URI in [CPE
-- format](https:\/\/cpe.mitre.org\/specification\/) denoting the package
-- manager version distributing a package.
lCpeURI :: Lens' Location (Maybe Text)
lCpeURI = lens _lCpeURI (\ s a -> s{_lCpeURI = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "path") <*> (o .:? "version") <*>
                     (o .:? "cpeUri"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _lPath,
                  ("version" .=) <$> _lVersion,
                  ("cpeUri" .=) <$> _lCpeURI])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | A SourceContext referring to a Gerrit project.
--
-- /See:/ 'gerritSourceContext' smart constructor.
data GerritSourceContext =
  GerritSourceContext'
    { _gscGerritProject :: !(Maybe Text)
    , _gscRevisionId    :: !(Maybe Text)
    , _gscHostURI       :: !(Maybe Text)
    , _gscAliasContext  :: !(Maybe AliasContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GerritSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscGerritProject'
--
-- * 'gscRevisionId'
--
-- * 'gscHostURI'
--
-- * 'gscAliasContext'
gerritSourceContext
    :: GerritSourceContext
gerritSourceContext =
  GerritSourceContext'
    { _gscGerritProject = Nothing
    , _gscRevisionId = Nothing
    , _gscHostURI = Nothing
    , _gscAliasContext = Nothing
    }


-- | The full project name within the host. Projects may be nested, so
-- \"project\/subproject\" is a valid project name. The \"repo name\" is
-- the hostURI\/project.
gscGerritProject :: Lens' GerritSourceContext (Maybe Text)
gscGerritProject
  = lens _gscGerritProject
      (\ s a -> s{_gscGerritProject = a})

-- | A revision (commit) ID.
gscRevisionId :: Lens' GerritSourceContext (Maybe Text)
gscRevisionId
  = lens _gscRevisionId
      (\ s a -> s{_gscRevisionId = a})

-- | The URI of a running Gerrit instance.
gscHostURI :: Lens' GerritSourceContext (Maybe Text)
gscHostURI
  = lens _gscHostURI (\ s a -> s{_gscHostURI = a})

-- | An alias, which may be a branch or tag.
gscAliasContext :: Lens' GerritSourceContext (Maybe AliasContext)
gscAliasContext
  = lens _gscAliasContext
      (\ s a -> s{_gscAliasContext = a})

instance FromJSON GerritSourceContext where
        parseJSON
          = withObject "GerritSourceContext"
              (\ o ->
                 GerritSourceContext' <$>
                   (o .:? "gerritProject") <*> (o .:? "revisionId") <*>
                     (o .:? "hostUri")
                     <*> (o .:? "aliasContext"))

instance ToJSON GerritSourceContext where
        toJSON GerritSourceContext'{..}
          = object
              (catMaybes
                 [("gerritProject" .=) <$> _gscGerritProject,
                  ("revisionId" .=) <$> _gscRevisionId,
                  ("hostUri" .=) <$> _gscHostURI,
                  ("aliasContext" .=) <$> _gscAliasContext])

-- | A unique identifier for a Cloud Repo.
--
-- /See:/ 'repoId' smart constructor.
data RepoId =
  RepoId'
    { _riUid           :: !(Maybe Text)
    , _riProjectRepoId :: !(Maybe ProjectRepoId)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepoId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riUid'
--
-- * 'riProjectRepoId'
repoId
    :: RepoId
repoId = RepoId' {_riUid = Nothing, _riProjectRepoId = Nothing}


-- | A server-assigned, globally unique identifier.
riUid :: Lens' RepoId (Maybe Text)
riUid = lens _riUid (\ s a -> s{_riUid = a})

-- | A combination of a project ID and a repo name.
riProjectRepoId :: Lens' RepoId (Maybe ProjectRepoId)
riProjectRepoId
  = lens _riProjectRepoId
      (\ s a -> s{_riProjectRepoId = a})

instance FromJSON RepoId where
        parseJSON
          = withObject "RepoId"
              (\ o ->
                 RepoId' <$>
                   (o .:? "uid") <*> (o .:? "projectRepoId"))

instance ToJSON RepoId where
        toJSON RepoId'{..}
          = object
              (catMaybes
                 [("uid" .=) <$> _riUid,
                  ("projectRepoId" .=) <$> _riProjectRepoId])

-- | Response for listing occurrences for a note.
--
-- /See:/ 'listNoteOccurrencesResponse' smart constructor.
data ListNoteOccurrencesResponse =
  ListNoteOccurrencesResponse'
    { _lnorOccurrences   :: !(Maybe [Occurrence])
    , _lnorNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListNoteOccurrencesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnorOccurrences'
--
-- * 'lnorNextPageToken'
listNoteOccurrencesResponse
    :: ListNoteOccurrencesResponse
listNoteOccurrencesResponse =
  ListNoteOccurrencesResponse'
    {_lnorOccurrences = Nothing, _lnorNextPageToken = Nothing}


-- | The occurrences attached to the specified note.
lnorOccurrences :: Lens' ListNoteOccurrencesResponse [Occurrence]
lnorOccurrences
  = lens _lnorOccurrences
      (\ s a -> s{_lnorOccurrences = a})
      . _Default
      . _Coerce

-- | Token to provide to skip to a particular spot in the list.
lnorNextPageToken :: Lens' ListNoteOccurrencesResponse (Maybe Text)
lnorNextPageToken
  = lens _lnorNextPageToken
      (\ s a -> s{_lnorNextPageToken = a})

instance FromJSON ListNoteOccurrencesResponse where
        parseJSON
          = withObject "ListNoteOccurrencesResponse"
              (\ o ->
                 ListNoteOccurrencesResponse' <$>
                   (o .:? "occurrences" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListNoteOccurrencesResponse where
        toJSON ListNoteOccurrencesResponse'{..}
          = object
              (catMaybes
                 [("occurrences" .=) <$> _lnorOccurrences,
                  ("nextPageToken" .=) <$> _lnorNextPageToken])

-- | A type of analysis that can be done for a resource.
--
-- /See:/ 'note' smart constructor.
data Note =
  Note'
    { _nVulnerability        :: !(Maybe Vulnerability)
    , _nLongDescription      :: !(Maybe Text)
    , _nAttestationAuthority :: !(Maybe Authority)
    , _nDiscovery            :: !(Maybe Discovery)
    , _nKind                 :: !(Maybe NoteKind)
    , _nRelatedNoteNames     :: !(Maybe [Text])
    , _nBuild                :: !(Maybe Build)
    , _nDeployable           :: !(Maybe Deployable)
    , _nRelatedURL           :: !(Maybe [RelatedURL])
    , _nUpdateTime           :: !(Maybe DateTime')
    , _nShortDescription     :: !(Maybe Text)
    , _nName                 :: !(Maybe Text)
    , _nBaseImage            :: !(Maybe Basis)
    , _nPackage              :: !(Maybe Package)
    , _nExpirationTime       :: !(Maybe DateTime')
    , _nCreateTime           :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Note' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nVulnerability'
--
-- * 'nLongDescription'
--
-- * 'nAttestationAuthority'
--
-- * 'nDiscovery'
--
-- * 'nKind'
--
-- * 'nRelatedNoteNames'
--
-- * 'nBuild'
--
-- * 'nDeployable'
--
-- * 'nRelatedURL'
--
-- * 'nUpdateTime'
--
-- * 'nShortDescription'
--
-- * 'nName'
--
-- * 'nBaseImage'
--
-- * 'nPackage'
--
-- * 'nExpirationTime'
--
-- * 'nCreateTime'
note
    :: Note
note =
  Note'
    { _nVulnerability = Nothing
    , _nLongDescription = Nothing
    , _nAttestationAuthority = Nothing
    , _nDiscovery = Nothing
    , _nKind = Nothing
    , _nRelatedNoteNames = Nothing
    , _nBuild = Nothing
    , _nDeployable = Nothing
    , _nRelatedURL = Nothing
    , _nUpdateTime = Nothing
    , _nShortDescription = Nothing
    , _nName = Nothing
    , _nBaseImage = Nothing
    , _nPackage = Nothing
    , _nExpirationTime = Nothing
    , _nCreateTime = Nothing
    }


-- | A note describing a package vulnerability.
nVulnerability :: Lens' Note (Maybe Vulnerability)
nVulnerability
  = lens _nVulnerability
      (\ s a -> s{_nVulnerability = a})

-- | A detailed description of this note.
nLongDescription :: Lens' Note (Maybe Text)
nLongDescription
  = lens _nLongDescription
      (\ s a -> s{_nLongDescription = a})

-- | A note describing an attestation role.
nAttestationAuthority :: Lens' Note (Maybe Authority)
nAttestationAuthority
  = lens _nAttestationAuthority
      (\ s a -> s{_nAttestationAuthority = a})

-- | A note describing the initial analysis of a resource.
nDiscovery :: Lens' Note (Maybe Discovery)
nDiscovery
  = lens _nDiscovery (\ s a -> s{_nDiscovery = a})

-- | Output only. The type of analysis. This field can be used as a filter in
-- list requests.
nKind :: Lens' Note (Maybe NoteKind)
nKind = lens _nKind (\ s a -> s{_nKind = a})

-- | Other notes related to this note.
nRelatedNoteNames :: Lens' Note [Text]
nRelatedNoteNames
  = lens _nRelatedNoteNames
      (\ s a -> s{_nRelatedNoteNames = a})
      . _Default
      . _Coerce

-- | A note describing build provenance for a verifiable build.
nBuild :: Lens' Note (Maybe Build)
nBuild = lens _nBuild (\ s a -> s{_nBuild = a})

-- | A note describing something that can be deployed.
nDeployable :: Lens' Note (Maybe Deployable)
nDeployable
  = lens _nDeployable (\ s a -> s{_nDeployable = a})

-- | URLs associated with this note.
nRelatedURL :: Lens' Note [RelatedURL]
nRelatedURL
  = lens _nRelatedURL (\ s a -> s{_nRelatedURL = a}) .
      _Default
      . _Coerce

-- | Output only. The time this note was last updated. This field can be used
-- as a filter in list requests.
nUpdateTime :: Lens' Note (Maybe UTCTime)
nUpdateTime
  = lens _nUpdateTime (\ s a -> s{_nUpdateTime = a}) .
      mapping _DateTime

-- | A one sentence description of this note.
nShortDescription :: Lens' Note (Maybe Text)
nShortDescription
  = lens _nShortDescription
      (\ s a -> s{_nShortDescription = a})

-- | Output only. The name of the note in the form of
-- \`projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]\`.
nName :: Lens' Note (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

-- | A note describing a base image.
nBaseImage :: Lens' Note (Maybe Basis)
nBaseImage
  = lens _nBaseImage (\ s a -> s{_nBaseImage = a})

-- | A note describing a package hosted by various package managers.
nPackage :: Lens' Note (Maybe Package)
nPackage = lens _nPackage (\ s a -> s{_nPackage = a})

-- | Time of expiration for this note. Empty if note does not expire.
nExpirationTime :: Lens' Note (Maybe UTCTime)
nExpirationTime
  = lens _nExpirationTime
      (\ s a -> s{_nExpirationTime = a})
      . mapping _DateTime

-- | Output only. The time this note was created. This field can be used as a
-- filter in list requests.
nCreateTime :: Lens' Note (Maybe UTCTime)
nCreateTime
  = lens _nCreateTime (\ s a -> s{_nCreateTime = a}) .
      mapping _DateTime

instance FromJSON Note where
        parseJSON
          = withObject "Note"
              (\ o ->
                 Note' <$>
                   (o .:? "vulnerability") <*> (o .:? "longDescription")
                     <*> (o .:? "attestationAuthority")
                     <*> (o .:? "discovery")
                     <*> (o .:? "kind")
                     <*> (o .:? "relatedNoteNames" .!= mempty)
                     <*> (o .:? "build")
                     <*> (o .:? "deployable")
                     <*> (o .:? "relatedUrl" .!= mempty)
                     <*> (o .:? "updateTime")
                     <*> (o .:? "shortDescription")
                     <*> (o .:? "name")
                     <*> (o .:? "baseImage")
                     <*> (o .:? "package")
                     <*> (o .:? "expirationTime")
                     <*> (o .:? "createTime"))

instance ToJSON Note where
        toJSON Note'{..}
          = object
              (catMaybes
                 [("vulnerability" .=) <$> _nVulnerability,
                  ("longDescription" .=) <$> _nLongDescription,
                  ("attestationAuthority" .=) <$>
                    _nAttestationAuthority,
                  ("discovery" .=) <$> _nDiscovery,
                  ("kind" .=) <$> _nKind,
                  ("relatedNoteNames" .=) <$> _nRelatedNoteNames,
                  ("build" .=) <$> _nBuild,
                  ("deployable" .=) <$> _nDeployable,
                  ("relatedUrl" .=) <$> _nRelatedURL,
                  ("updateTime" .=) <$> _nUpdateTime,
                  ("shortDescription" .=) <$> _nShortDescription,
                  ("name" .=) <$> _nName,
                  ("baseImage" .=) <$> _nBaseImage,
                  ("package" .=) <$> _nPackage,
                  ("expirationTime" .=) <$> _nExpirationTime,
                  ("createTime" .=) <$> _nCreateTime])

-- | Common Vulnerability Scoring System version 3. For details, see
-- https:\/\/www.first.org\/cvss\/specification-document
--
-- /See:/ 'cVSSv3' smart constructor.
data CVSSv3 =
  CVSSv3'
    { _cvssAttackComplexity      :: !(Maybe CVSSv3AttackComplexity)
    , _cvssIntegrityImpact       :: !(Maybe CVSSv3IntegrityImpact)
    , _cvssPrivilegesRequired    :: !(Maybe CVSSv3PrivilegesRequired)
    , _cvssUserInteraction       :: !(Maybe CVSSv3UserInteraction)
    , _cvssAttackVector          :: !(Maybe CVSSv3AttackVector)
    , _cvssConfidentialityImpact :: !(Maybe CVSSv3ConfidentialityImpact)
    , _cvssScope                 :: !(Maybe CVSSv3Scope)
    , _cvssImpactScore           :: !(Maybe (Textual Double))
    , _cvssBaseScore             :: !(Maybe (Textual Double))
    , _cvssAvailabilityImpact    :: !(Maybe CVSSv3AvailabilityImpact)
    , _cvssExploitabilityScore   :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CVSSv3' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvssAttackComplexity'
--
-- * 'cvssIntegrityImpact'
--
-- * 'cvssPrivilegesRequired'
--
-- * 'cvssUserInteraction'
--
-- * 'cvssAttackVector'
--
-- * 'cvssConfidentialityImpact'
--
-- * 'cvssScope'
--
-- * 'cvssImpactScore'
--
-- * 'cvssBaseScore'
--
-- * 'cvssAvailabilityImpact'
--
-- * 'cvssExploitabilityScore'
cVSSv3
    :: CVSSv3
cVSSv3 =
  CVSSv3'
    { _cvssAttackComplexity = Nothing
    , _cvssIntegrityImpact = Nothing
    , _cvssPrivilegesRequired = Nothing
    , _cvssUserInteraction = Nothing
    , _cvssAttackVector = Nothing
    , _cvssConfidentialityImpact = Nothing
    , _cvssScope = Nothing
    , _cvssImpactScore = Nothing
    , _cvssBaseScore = Nothing
    , _cvssAvailabilityImpact = Nothing
    , _cvssExploitabilityScore = Nothing
    }


cvssAttackComplexity :: Lens' CVSSv3 (Maybe CVSSv3AttackComplexity)
cvssAttackComplexity
  = lens _cvssAttackComplexity
      (\ s a -> s{_cvssAttackComplexity = a})

cvssIntegrityImpact :: Lens' CVSSv3 (Maybe CVSSv3IntegrityImpact)
cvssIntegrityImpact
  = lens _cvssIntegrityImpact
      (\ s a -> s{_cvssIntegrityImpact = a})

cvssPrivilegesRequired :: Lens' CVSSv3 (Maybe CVSSv3PrivilegesRequired)
cvssPrivilegesRequired
  = lens _cvssPrivilegesRequired
      (\ s a -> s{_cvssPrivilegesRequired = a})

cvssUserInteraction :: Lens' CVSSv3 (Maybe CVSSv3UserInteraction)
cvssUserInteraction
  = lens _cvssUserInteraction
      (\ s a -> s{_cvssUserInteraction = a})

-- | Base Metrics Represents the intrinsic characteristics of a vulnerability
-- that are constant over time and across user environments.
cvssAttackVector :: Lens' CVSSv3 (Maybe CVSSv3AttackVector)
cvssAttackVector
  = lens _cvssAttackVector
      (\ s a -> s{_cvssAttackVector = a})

cvssConfidentialityImpact :: Lens' CVSSv3 (Maybe CVSSv3ConfidentialityImpact)
cvssConfidentialityImpact
  = lens _cvssConfidentialityImpact
      (\ s a -> s{_cvssConfidentialityImpact = a})

cvssScope :: Lens' CVSSv3 (Maybe CVSSv3Scope)
cvssScope
  = lens _cvssScope (\ s a -> s{_cvssScope = a})

cvssImpactScore :: Lens' CVSSv3 (Maybe Double)
cvssImpactScore
  = lens _cvssImpactScore
      (\ s a -> s{_cvssImpactScore = a})
      . mapping _Coerce

-- | The base score is a function of the base metric scores.
cvssBaseScore :: Lens' CVSSv3 (Maybe Double)
cvssBaseScore
  = lens _cvssBaseScore
      (\ s a -> s{_cvssBaseScore = a})
      . mapping _Coerce

cvssAvailabilityImpact :: Lens' CVSSv3 (Maybe CVSSv3AvailabilityImpact)
cvssAvailabilityImpact
  = lens _cvssAvailabilityImpact
      (\ s a -> s{_cvssAvailabilityImpact = a})

cvssExploitabilityScore :: Lens' CVSSv3 (Maybe Double)
cvssExploitabilityScore
  = lens _cvssExploitabilityScore
      (\ s a -> s{_cvssExploitabilityScore = a})
      . mapping _Coerce

instance FromJSON CVSSv3 where
        parseJSON
          = withObject "CVSSv3"
              (\ o ->
                 CVSSv3' <$>
                   (o .:? "attackComplexity") <*>
                     (o .:? "integrityImpact")
                     <*> (o .:? "privilegesRequired")
                     <*> (o .:? "userInteraction")
                     <*> (o .:? "attackVector")
                     <*> (o .:? "confidentialityImpact")
                     <*> (o .:? "scope")
                     <*> (o .:? "impactScore")
                     <*> (o .:? "baseScore")
                     <*> (o .:? "availabilityImpact")
                     <*> (o .:? "exploitabilityScore"))

instance ToJSON CVSSv3 where
        toJSON CVSSv3'{..}
          = object
              (catMaybes
                 [("attackComplexity" .=) <$> _cvssAttackComplexity,
                  ("integrityImpact" .=) <$> _cvssIntegrityImpact,
                  ("privilegesRequired" .=) <$>
                    _cvssPrivilegesRequired,
                  ("userInteraction" .=) <$> _cvssUserInteraction,
                  ("attackVector" .=) <$> _cvssAttackVector,
                  ("confidentialityImpact" .=) <$>
                    _cvssConfidentialityImpact,
                  ("scope" .=) <$> _cvssScope,
                  ("impactScore" .=) <$> _cvssImpactScore,
                  ("baseScore" .=) <$> _cvssBaseScore,
                  ("availabilityImpact" .=) <$>
                    _cvssAvailabilityImpact,
                  ("exploitabilityScore" .=) <$>
                    _cvssExploitabilityScore])

-- | Response for creating notes in batch.
--
-- /See:/ 'batchCreateNotesResponse' smart constructor.
newtype BatchCreateNotesResponse =
  BatchCreateNotesResponse'
    { _bNotes :: Maybe [Note]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateNotesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bNotes'
batchCreateNotesResponse
    :: BatchCreateNotesResponse
batchCreateNotesResponse = BatchCreateNotesResponse' {_bNotes = Nothing}


-- | The notes that were created.
bNotes :: Lens' BatchCreateNotesResponse [Note]
bNotes
  = lens _bNotes (\ s a -> s{_bNotes = a}) . _Default .
      _Coerce

instance FromJSON BatchCreateNotesResponse where
        parseJSON
          = withObject "BatchCreateNotesResponse"
              (\ o ->
                 BatchCreateNotesResponse' <$>
                   (o .:? "notes" .!= mempty))

instance ToJSON BatchCreateNotesResponse where
        toJSON BatchCreateNotesResponse'{..}
          = object (catMaybes [("notes" .=) <$> _bNotes])

-- | Selects a repo using a Google Cloud Platform project ID (e.g.,
-- winged-cargo-31) and a repo name within that project.
--
-- /See:/ 'projectRepoId' smart constructor.
data ProjectRepoId =
  ProjectRepoId'
    { _priRepoName  :: !(Maybe Text)
    , _priProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectRepoId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'priRepoName'
--
-- * 'priProjectId'
projectRepoId
    :: ProjectRepoId
projectRepoId = ProjectRepoId' {_priRepoName = Nothing, _priProjectId = Nothing}


-- | The name of the repo. Leave empty for the default repo.
priRepoName :: Lens' ProjectRepoId (Maybe Text)
priRepoName
  = lens _priRepoName (\ s a -> s{_priRepoName = a})

-- | The ID of the project.
priProjectId :: Lens' ProjectRepoId (Maybe Text)
priProjectId
  = lens _priProjectId (\ s a -> s{_priProjectId = a})

instance FromJSON ProjectRepoId where
        parseJSON
          = withObject "ProjectRepoId"
              (\ o ->
                 ProjectRepoId' <$>
                   (o .:? "repoName") <*> (o .:? "projectId"))

instance ToJSON ProjectRepoId where
        toJSON ProjectRepoId'{..}
          = object
              (catMaybes
                 [("repoName" .=) <$> _priRepoName,
                  ("projectId" .=) <$> _priProjectId])

-- | A set of properties that uniquely identify a given Docker image.
--
-- /See:/ 'fingerprint' smart constructor.
data Fingerprint =
  Fingerprint'
    { _fV2Name :: !(Maybe Text)
    , _fV2Blob :: !(Maybe [Text])
    , _fV1Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Fingerprint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fV2Name'
--
-- * 'fV2Blob'
--
-- * 'fV1Name'
fingerprint
    :: Fingerprint
fingerprint =
  Fingerprint' {_fV2Name = Nothing, _fV2Blob = Nothing, _fV1Name = Nothing}


-- | Output only. The name of the image\'s v2 blobs computed via: [bottom] :=
-- v2_blobbottom := sha256(v2_blob[N] + \" \" + v2_name[N+1]) Only the name
-- of the final blob is kept.
fV2Name :: Lens' Fingerprint (Maybe Text)
fV2Name = lens _fV2Name (\ s a -> s{_fV2Name = a})

-- | Required. The ordered list of v2 blobs that represent a given image.
fV2Blob :: Lens' Fingerprint [Text]
fV2Blob
  = lens _fV2Blob (\ s a -> s{_fV2Blob = a}) . _Default
      . _Coerce

-- | Required. The layer ID of the final layer in the Docker image\'s v1
-- representation.
fV1Name :: Lens' Fingerprint (Maybe Text)
fV1Name = lens _fV1Name (\ s a -> s{_fV1Name = a})

instance FromJSON Fingerprint where
        parseJSON
          = withObject "Fingerprint"
              (\ o ->
                 Fingerprint' <$>
                   (o .:? "v2Name") <*> (o .:? "v2Blob" .!= mempty) <*>
                     (o .:? "v1Name"))

instance ToJSON Fingerprint where
        toJSON Fingerprint'{..}
          = object
              (catMaybes
                 [("v2Name" .=) <$> _fV2Name,
                  ("v2Blob" .=) <$> _fV2Blob,
                  ("v1Name" .=) <$> _fV1Name])

-- | This submessage provides human-readable hints about the purpose of the
-- authority. Because the name of a note acts as its resource reference, it
-- is important to disambiguate the canonical name of the Note (which might
-- be a UUID for security purposes) from \"readable\" names more suitable
-- for debug output. Note that these hints should not be used to look up
-- authorities in security sensitive contexts, such as when looking up
-- attestations to verify.
--
-- /See:/ 'hint' smart constructor.
newtype Hint =
  Hint'
    { _hHumanReadableName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Hint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hHumanReadableName'
hint
    :: Hint
hint = Hint' {_hHumanReadableName = Nothing}


-- | Required. The human readable name of this attestation authority, for
-- example \"qa\".
hHumanReadableName :: Lens' Hint (Maybe Text)
hHumanReadableName
  = lens _hHumanReadableName
      (\ s a -> s{_hHumanReadableName = a})

instance FromJSON Hint where
        parseJSON
          = withObject "Hint"
              (\ o -> Hint' <$> (o .:? "humanReadableName"))

instance ToJSON Hint where
        toJSON Hint'{..}
          = object
              (catMaybes
                 [("humanReadableName" .=) <$> _hHumanReadableName])

-- | This message wraps a location affected by a vulnerability and its
-- associated fix (if one is available).
--
-- /See:/ 'packageIssue' smart constructor.
data PackageIssue =
  PackageIssue'
    { _piAffectedLocation :: !(Maybe VulnerabilityLocation)
    , _piFixedLocation    :: !(Maybe VulnerabilityLocation)
    , _piSeverityName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PackageIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piAffectedLocation'
--
-- * 'piFixedLocation'
--
-- * 'piSeverityName'
packageIssue
    :: PackageIssue
packageIssue =
  PackageIssue'
    { _piAffectedLocation = Nothing
    , _piFixedLocation = Nothing
    , _piSeverityName = Nothing
    }


-- | Required. The location of the vulnerability.
piAffectedLocation :: Lens' PackageIssue (Maybe VulnerabilityLocation)
piAffectedLocation
  = lens _piAffectedLocation
      (\ s a -> s{_piAffectedLocation = a})

-- | The location of the available fix for vulnerability.
piFixedLocation :: Lens' PackageIssue (Maybe VulnerabilityLocation)
piFixedLocation
  = lens _piFixedLocation
      (\ s a -> s{_piFixedLocation = a})

-- | Deprecated, use Details.effective_severity instead The severity (e.g.,
-- distro assigned severity) for this vulnerability.
piSeverityName :: Lens' PackageIssue (Maybe Text)
piSeverityName
  = lens _piSeverityName
      (\ s a -> s{_piSeverityName = a})

instance FromJSON PackageIssue where
        parseJSON
          = withObject "PackageIssue"
              (\ o ->
                 PackageIssue' <$>
                   (o .:? "affectedLocation") <*>
                     (o .:? "fixedLocation")
                     <*> (o .:? "severityName"))

instance ToJSON PackageIssue where
        toJSON PackageIssue'{..}
          = object
              (catMaybes
                 [("affectedLocation" .=) <$> _piAffectedLocation,
                  ("fixedLocation" .=) <$> _piFixedLocation,
                  ("severityName" .=) <$> _piSeverityName])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Note holding the version of the provider\'s builder and the signature of
-- the provenance message in the build details occurrence.
--
-- /See:/ 'build' smart constructor.
data Build =
  Build'
    { _bSignature      :: !(Maybe BuildSignature)
    , _bBuilderVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Build' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bSignature'
--
-- * 'bBuilderVersion'
build
    :: Build
build = Build' {_bSignature = Nothing, _bBuilderVersion = Nothing}


-- | Signature of the build in occurrences pointing to this build note
-- containing build details.
bSignature :: Lens' Build (Maybe BuildSignature)
bSignature
  = lens _bSignature (\ s a -> s{_bSignature = a})

-- | Required. Immutable. Version of the builder which produced this build.
bBuilderVersion :: Lens' Build (Maybe Text)
bBuilderVersion
  = lens _bBuilderVersion
      (\ s a -> s{_bBuilderVersion = a})

instance FromJSON Build where
        parseJSON
          = withObject "Build"
              (\ o ->
                 Build' <$>
                   (o .:? "signature") <*> (o .:? "builderVersion"))

instance ToJSON Build where
        toJSON Build'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _bSignature,
                  ("builderVersion" .=) <$> _bBuilderVersion])

-- | Occurrence that represents a single \"attestation\". The authenticity of
-- an attestation can be verified using the attached signature. If the
-- verifier trusts the public key of the signer, then verifying the
-- signature is sufficient to establish trust. In this circumstance, the
-- authority to which this attestation is attached is primarily useful for
-- look-up (how to find this attestation if you already know the authority
-- and artifact to be verified) and intent (which authority was this
-- attestation intended to sign for).
--
-- /See:/ 'attestation' smart constructor.
data Attestation =
  Attestation'
    { _aGenericSignedAttestation :: !(Maybe GenericSignedAttestation)
    , _aPgpSignedAttestation     :: !(Maybe PgpSignedAttestation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Attestation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aGenericSignedAttestation'
--
-- * 'aPgpSignedAttestation'
attestation
    :: Attestation
attestation =
  Attestation'
    {_aGenericSignedAttestation = Nothing, _aPgpSignedAttestation = Nothing}


aGenericSignedAttestation :: Lens' Attestation (Maybe GenericSignedAttestation)
aGenericSignedAttestation
  = lens _aGenericSignedAttestation
      (\ s a -> s{_aGenericSignedAttestation = a})

-- | A PGP signed attestation.
aPgpSignedAttestation :: Lens' Attestation (Maybe PgpSignedAttestation)
aPgpSignedAttestation
  = lens _aPgpSignedAttestation
      (\ s a -> s{_aPgpSignedAttestation = a})

instance FromJSON Attestation where
        parseJSON
          = withObject "Attestation"
              (\ o ->
                 Attestation' <$>
                   (o .:? "genericSignedAttestation") <*>
                     (o .:? "pgpSignedAttestation"))

instance ToJSON Attestation where
        toJSON Attestation'{..}
          = object
              (catMaybes
                 [("genericSignedAttestation" .=) <$>
                    _aGenericSignedAttestation,
                  ("pgpSignedAttestation" .=) <$>
                    _aPgpSignedAttestation])

-- | Artifact describes a build product.
--
-- /See:/ 'artifact' smart constructor.
data Artifact =
  Artifact'
    { _aChecksum :: !(Maybe Text)
    , _aNames    :: !(Maybe [Text])
    , _aId       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Artifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aChecksum'
--
-- * 'aNames'
--
-- * 'aId'
artifact
    :: Artifact
artifact = Artifact' {_aChecksum = Nothing, _aNames = Nothing, _aId = Nothing}


-- | Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
-- container.
aChecksum :: Lens' Artifact (Maybe Text)
aChecksum
  = lens _aChecksum (\ s a -> s{_aChecksum = a})

-- | Related artifact names. This may be the path to a binary or jar file, or
-- in the case of a container build, the name used to push the container
-- image to Google Container Registry, as presented to \`docker push\`.
-- Note that a single Artifact ID can have multiple names, for example if
-- two tags are applied to one image.
aNames :: Lens' Artifact [Text]
aNames
  = lens _aNames (\ s a -> s{_aNames = a}) . _Default .
      _Coerce

-- | Artifact ID, if any; for container images, this will be a URL by digest
-- like \`gcr.io\/projectID\/imagename\'sha256:123456\`.
aId :: Lens' Artifact (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

instance FromJSON Artifact where
        parseJSON
          = withObject "Artifact"
              (\ o ->
                 Artifact' <$>
                   (o .:? "checksum") <*> (o .:? "names" .!= mempty) <*>
                     (o .:? "id"))

instance ToJSON Artifact where
        toJSON Artifact'{..}
          = object
              (catMaybes
                 [("checksum" .=) <$> _aChecksum,
                  ("names" .=) <$> _aNames, ("id" .=) <$> _aId])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy     :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprUpdateMask'
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
  SetIAMPolicyRequest' {_siprUpdateMask = Nothing, _siprPolicy = Nothing}


-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: paths: \"bindings, etag\" This field
-- is only used by Cloud IAM.
siprUpdateMask :: Lens' SetIAMPolicyRequest (Maybe GFieldMask)
siprUpdateMask
  = lens _siprUpdateMask
      (\ s a -> s{_siprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o ->
                 SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _siprUpdateMask,
                  ("policy" .=) <$> _siprPolicy])

-- | Special options applied to this build. This is a catch-all field where
-- build providers can enter any desired additional details.
--
-- /See:/ 'buildProvenanceBuildOptions' smart constructor.
newtype BuildProvenanceBuildOptions =
  BuildProvenanceBuildOptions'
    { _bpboAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildProvenanceBuildOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpboAddtional'
buildProvenanceBuildOptions
    :: HashMap Text Text -- ^ 'bpboAddtional'
    -> BuildProvenanceBuildOptions
buildProvenanceBuildOptions pBpboAddtional_ =
  BuildProvenanceBuildOptions' {_bpboAddtional = _Coerce # pBpboAddtional_}


bpboAddtional :: Lens' BuildProvenanceBuildOptions (HashMap Text Text)
bpboAddtional
  = lens _bpboAddtional
      (\ s a -> s{_bpboAddtional = a})
      . _Coerce

instance FromJSON BuildProvenanceBuildOptions where
        parseJSON
          = withObject "BuildProvenanceBuildOptions"
              (\ o ->
                 BuildProvenanceBuildOptions' <$> (parseJSONObject o))

instance ToJSON BuildProvenanceBuildOptions where
        toJSON = toJSON . _bpboAddtional

-- | An artifact that can be deployed in some runtime.
--
-- /See:/ 'deployable' smart constructor.
newtype Deployable =
  Deployable'
    { _dResourceURI :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Deployable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dResourceURI'
deployable
    :: Deployable
deployable = Deployable' {_dResourceURI = Nothing}


-- | Required. Resource URI for the artifact being deployed.
dResourceURI :: Lens' Deployable [Text]
dResourceURI
  = lens _dResourceURI (\ s a -> s{_dResourceURI = a})
      . _Default
      . _Coerce

instance FromJSON Deployable where
        parseJSON
          = withObject "Deployable"
              (\ o ->
                 Deployable' <$> (o .:? "resourceUri" .!= mempty))

instance ToJSON Deployable where
        toJSON Deployable'{..}
          = object
              (catMaybes [("resourceUri" .=) <$> _dResourceURI])

-- | Details of a discovery occurrence.
--
-- /See:/ 'grafeasV1beta1DiscoveryDetails' smart constructor.
newtype GrafeasV1beta1DiscoveryDetails =
  GrafeasV1beta1DiscoveryDetails'
    { _gvddDiscovered :: Maybe Discovered
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrafeasV1beta1DiscoveryDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvddDiscovered'
grafeasV1beta1DiscoveryDetails
    :: GrafeasV1beta1DiscoveryDetails
grafeasV1beta1DiscoveryDetails =
  GrafeasV1beta1DiscoveryDetails' {_gvddDiscovered = Nothing}


-- | Required. Analysis status for the discovered resource.
gvddDiscovered :: Lens' GrafeasV1beta1DiscoveryDetails (Maybe Discovered)
gvddDiscovered
  = lens _gvddDiscovered
      (\ s a -> s{_gvddDiscovered = a})

instance FromJSON GrafeasV1beta1DiscoveryDetails
         where
        parseJSON
          = withObject "GrafeasV1beta1DiscoveryDetails"
              (\ o ->
                 GrafeasV1beta1DiscoveryDetails' <$>
                   (o .:? "discovered"))

instance ToJSON GrafeasV1beta1DiscoveryDetails where
        toJSON GrafeasV1beta1DiscoveryDetails'{..}
          = object
              (catMaybes [("discovered" .=) <$> _gvddDiscovered])

-- | The location of the vulnerability.
--
-- /See:/ 'vulnerabilityLocation' smart constructor.
data VulnerabilityLocation =
  VulnerabilityLocation'
    { _vlVersion :: !(Maybe Version)
    , _vlPackage :: !(Maybe Text)
    , _vlCpeURI  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VulnerabilityLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlVersion'
--
-- * 'vlPackage'
--
-- * 'vlCpeURI'
vulnerabilityLocation
    :: VulnerabilityLocation
vulnerabilityLocation =
  VulnerabilityLocation'
    {_vlVersion = Nothing, _vlPackage = Nothing, _vlCpeURI = Nothing}


-- | Required. The version of the package being described.
vlVersion :: Lens' VulnerabilityLocation (Maybe Version)
vlVersion
  = lens _vlVersion (\ s a -> s{_vlVersion = a})

-- | Required. The package being described.
vlPackage :: Lens' VulnerabilityLocation (Maybe Text)
vlPackage
  = lens _vlPackage (\ s a -> s{_vlPackage = a})

-- | Required. The CPE URI in [cpe
-- format](https:\/\/cpe.mitre.org\/specification\/) format. Examples
-- include distro or storage location for vulnerable jar.
vlCpeURI :: Lens' VulnerabilityLocation (Maybe Text)
vlCpeURI = lens _vlCpeURI (\ s a -> s{_vlCpeURI = a})

instance FromJSON VulnerabilityLocation where
        parseJSON
          = withObject "VulnerabilityLocation"
              (\ o ->
                 VulnerabilityLocation' <$>
                   (o .:? "version") <*> (o .:? "package") <*>
                     (o .:? "cpeUri"))

instance ToJSON VulnerabilityLocation where
        toJSON VulnerabilityLocation'{..}
          = object
              (catMaybes
                 [("version" .=) <$> _vlVersion,
                  ("package" .=) <$> _vlPackage,
                  ("cpeUri" .=) <$> _vlCpeURI])

-- | Per resource and severity counts of fixable and total vulnerabilities.
--
-- /See:/ 'fixableTotalByDigest' smart constructor.
data FixableTotalByDigest =
  FixableTotalByDigest'
    { _ftbdSeverity     :: !(Maybe FixableTotalByDigestSeverity)
    , _ftbdFixableCount :: !(Maybe (Textual Int64))
    , _ftbdResource     :: !(Maybe Resource)
    , _ftbdTotalCount   :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FixableTotalByDigest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftbdSeverity'
--
-- * 'ftbdFixableCount'
--
-- * 'ftbdResource'
--
-- * 'ftbdTotalCount'
fixableTotalByDigest
    :: FixableTotalByDigest
fixableTotalByDigest =
  FixableTotalByDigest'
    { _ftbdSeverity = Nothing
    , _ftbdFixableCount = Nothing
    , _ftbdResource = Nothing
    , _ftbdTotalCount = Nothing
    }


-- | The severity for this count. SEVERITY_UNSPECIFIED indicates total across
-- all severities.
ftbdSeverity :: Lens' FixableTotalByDigest (Maybe FixableTotalByDigestSeverity)
ftbdSeverity
  = lens _ftbdSeverity (\ s a -> s{_ftbdSeverity = a})

-- | The number of fixable vulnerabilities associated with this resource.
ftbdFixableCount :: Lens' FixableTotalByDigest (Maybe Int64)
ftbdFixableCount
  = lens _ftbdFixableCount
      (\ s a -> s{_ftbdFixableCount = a})
      . mapping _Coerce

-- | The affected resource.
ftbdResource :: Lens' FixableTotalByDigest (Maybe Resource)
ftbdResource
  = lens _ftbdResource (\ s a -> s{_ftbdResource = a})

-- | The total number of vulnerabilities associated with this resource.
ftbdTotalCount :: Lens' FixableTotalByDigest (Maybe Int64)
ftbdTotalCount
  = lens _ftbdTotalCount
      (\ s a -> s{_ftbdTotalCount = a})
      . mapping _Coerce

instance FromJSON FixableTotalByDigest where
        parseJSON
          = withObject "FixableTotalByDigest"
              (\ o ->
                 FixableTotalByDigest' <$>
                   (o .:? "severity") <*> (o .:? "fixableCount") <*>
                     (o .:? "resource")
                     <*> (o .:? "totalCount"))

instance ToJSON FixableTotalByDigest where
        toJSON FixableTotalByDigest'{..}
          = object
              (catMaybes
                 [("severity" .=) <$> _ftbdSeverity,
                  ("fixableCount" .=) <$> _ftbdFixableCount,
                  ("resource" .=) <$> _ftbdResource,
                  ("totalCount" .=) <$> _ftbdTotalCount])

-- | Metadata for any related URL information.
--
-- /See:/ 'relatedURL' smart constructor.
data RelatedURL =
  RelatedURL'
    { _ruURL   :: !(Maybe Text)
    , _ruLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelatedURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruURL'
--
-- * 'ruLabel'
relatedURL
    :: RelatedURL
relatedURL = RelatedURL' {_ruURL = Nothing, _ruLabel = Nothing}


-- | Specific URL associated with the resource.
ruURL :: Lens' RelatedURL (Maybe Text)
ruURL = lens _ruURL (\ s a -> s{_ruURL = a})

-- | Label to describe usage of the URL.
ruLabel :: Lens' RelatedURL (Maybe Text)
ruLabel = lens _ruLabel (\ s a -> s{_ruLabel = a})

instance FromJSON RelatedURL where
        parseJSON
          = withObject "RelatedURL"
              (\ o ->
                 RelatedURL' <$> (o .:? "url") <*> (o .:? "label"))

instance ToJSON RelatedURL where
        toJSON RelatedURL'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ruURL, ("label" .=) <$> _ruLabel])

-- | Details of an image occurrence.
--
-- /See:/ 'grafeasV1beta1ImageDetails' smart constructor.
newtype GrafeasV1beta1ImageDetails =
  GrafeasV1beta1ImageDetails'
    { _gvidDerivedImage :: Maybe Derived
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrafeasV1beta1ImageDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvidDerivedImage'
grafeasV1beta1ImageDetails
    :: GrafeasV1beta1ImageDetails
grafeasV1beta1ImageDetails =
  GrafeasV1beta1ImageDetails' {_gvidDerivedImage = Nothing}


-- | Required. Immutable. The child image derived from the base image.
gvidDerivedImage :: Lens' GrafeasV1beta1ImageDetails (Maybe Derived)
gvidDerivedImage
  = lens _gvidDerivedImage
      (\ s a -> s{_gvidDerivedImage = a})

instance FromJSON GrafeasV1beta1ImageDetails where
        parseJSON
          = withObject "GrafeasV1beta1ImageDetails"
              (\ o ->
                 GrafeasV1beta1ImageDetails' <$>
                   (o .:? "derivedImage"))

instance ToJSON GrafeasV1beta1ImageDetails where
        toJSON GrafeasV1beta1ImageDetails'{..}
          = object
              (catMaybes
                 [("derivedImage" .=) <$> _gvidDerivedImage])

-- | Response for creating occurrences in batch.
--
-- /See:/ 'batchCreateOccurrencesResponse' smart constructor.
newtype BatchCreateOccurrencesResponse =
  BatchCreateOccurrencesResponse'
    { _bOccurrences :: Maybe [Occurrence]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateOccurrencesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bOccurrences'
batchCreateOccurrencesResponse
    :: BatchCreateOccurrencesResponse
batchCreateOccurrencesResponse =
  BatchCreateOccurrencesResponse' {_bOccurrences = Nothing}


-- | The occurrences that were created.
bOccurrences :: Lens' BatchCreateOccurrencesResponse [Occurrence]
bOccurrences
  = lens _bOccurrences (\ s a -> s{_bOccurrences = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreateOccurrencesResponse
         where
        parseJSON
          = withObject "BatchCreateOccurrencesResponse"
              (\ o ->
                 BatchCreateOccurrencesResponse' <$>
                   (o .:? "occurrences" .!= mempty))

instance ToJSON BatchCreateOccurrencesResponse where
        toJSON BatchCreateOccurrencesResponse'{..}
          = object
              (catMaybes [("occurrences" .=) <$> _bOccurrences])

-- | Labels with user defined metadata.
--
-- /See:/ 'sourceContextLabels' smart constructor.
newtype SourceContextLabels =
  SourceContextLabels'
    { _sclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceContextLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclAddtional'
sourceContextLabels
    :: HashMap Text Text -- ^ 'sclAddtional'
    -> SourceContextLabels
sourceContextLabels pSclAddtional_ =
  SourceContextLabels' {_sclAddtional = _Coerce # pSclAddtional_}


sclAddtional :: Lens' SourceContextLabels (HashMap Text Text)
sclAddtional
  = lens _sclAddtional (\ s a -> s{_sclAddtional = a})
      . _Coerce

instance FromJSON SourceContextLabels where
        parseJSON
          = withObject "SourceContextLabels"
              (\ o -> SourceContextLabels' <$> (parseJSONObject o))

instance ToJSON SourceContextLabels where
        toJSON = toJSON . _sclAddtional

-- | Response for listing scan configurations.
--
-- /See:/ 'listScanConfigsResponse' smart constructor.
data ListScanConfigsResponse =
  ListScanConfigsResponse'
    { _lscrNextPageToken :: !(Maybe Text)
    , _lscrScanConfigs   :: !(Maybe [ScanConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListScanConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscrNextPageToken'
--
-- * 'lscrScanConfigs'
listScanConfigsResponse
    :: ListScanConfigsResponse
listScanConfigsResponse =
  ListScanConfigsResponse'
    {_lscrNextPageToken = Nothing, _lscrScanConfigs = Nothing}


-- | The next pagination token in the list response. It should be used as
-- \`page_token\` for the following request. An empty value means no more
-- results.
lscrNextPageToken :: Lens' ListScanConfigsResponse (Maybe Text)
lscrNextPageToken
  = lens _lscrNextPageToken
      (\ s a -> s{_lscrNextPageToken = a})

-- | The scan configurations requested.
lscrScanConfigs :: Lens' ListScanConfigsResponse [ScanConfig]
lscrScanConfigs
  = lens _lscrScanConfigs
      (\ s a -> s{_lscrScanConfigs = a})
      . _Default
      . _Coerce

instance FromJSON ListScanConfigsResponse where
        parseJSON
          = withObject "ListScanConfigsResponse"
              (\ o ->
                 ListScanConfigsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "scanConfigs" .!= mempty))

instance ToJSON ListScanConfigsResponse where
        toJSON ListScanConfigsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lscrNextPageToken,
                  ("scanConfigs" .=) <$> _lscrScanConfigs])

-- | Version contains structured information about the version of a package.
--
-- /See:/ 'version' smart constructor.
data Version =
  Version'
    { _vKind     :: !(Maybe VersionKind)
    , _vName     :: !(Maybe Text)
    , _vRevision :: !(Maybe Text)
    , _vEpoch    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vKind'
--
-- * 'vName'
--
-- * 'vRevision'
--
-- * 'vEpoch'
version
    :: Version
version =
  Version'
    { _vKind = Nothing
    , _vName = Nothing
    , _vRevision = Nothing
    , _vEpoch = Nothing
    }


-- | Required. Distinguishes between sentinel MIN\/MAX versions and normal
-- versions.
vKind :: Lens' Version (Maybe VersionKind)
vKind = lens _vKind (\ s a -> s{_vKind = a})

-- | Required only when version kind is NORMAL. The main part of the version
-- name.
vName :: Lens' Version (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

-- | The iteration of the package build from the above version.
vRevision :: Lens' Version (Maybe Text)
vRevision
  = lens _vRevision (\ s a -> s{_vRevision = a})

-- | Used to correct mistakes in the version numbering scheme.
vEpoch :: Lens' Version (Maybe Int32)
vEpoch
  = lens _vEpoch (\ s a -> s{_vEpoch = a}) .
      mapping _Coerce

instance FromJSON Version where
        parseJSON
          = withObject "Version"
              (\ o ->
                 Version' <$>
                   (o .:? "kind") <*> (o .:? "name") <*>
                     (o .:? "revision")
                     <*> (o .:? "epoch"))

instance ToJSON Version where
        toJSON Version'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _vKind, ("name" .=) <$> _vName,
                  ("revision" .=) <$> _vRevision,
                  ("epoch" .=) <$> _vEpoch])

-- | Container message for hashes of byte content of files, used in source
-- messages to verify integrity of source input to the build.
--
-- /See:/ 'fileHashes' smart constructor.
newtype FileHashes =
  FileHashes'
    { _fhFileHash :: Maybe [Hash]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileHashes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fhFileHash'
fileHashes
    :: FileHashes
fileHashes = FileHashes' {_fhFileHash = Nothing}


-- | Required. Collection of file hashes.
fhFileHash :: Lens' FileHashes [Hash]
fhFileHash
  = lens _fhFileHash (\ s a -> s{_fhFileHash = a}) .
      _Default
      . _Coerce

instance FromJSON FileHashes where
        parseJSON
          = withObject "FileHashes"
              (\ o ->
                 FileHashes' <$> (o .:? "fileHash" .!= mempty))

instance ToJSON FileHashes where
        toJSON FileHashes'{..}
          = object
              (catMaybes [("fileHash" .=) <$> _fhFileHash])

-- | An entity that can have metadata. For example, a Docker image.
--
-- /See:/ 'resource' smart constructor.
data Resource =
  Resource'
    { _rContentHash :: !(Maybe Hash)
    , _rURI         :: !(Maybe Text)
    , _rName        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rContentHash'
--
-- * 'rURI'
--
-- * 'rName'
resource
    :: Resource
resource =
  Resource' {_rContentHash = Nothing, _rURI = Nothing, _rName = Nothing}


-- | The hash of the resource content. For example, the Docker digest.
rContentHash :: Lens' Resource (Maybe Hash)
rContentHash
  = lens _rContentHash (\ s a -> s{_rContentHash = a})

-- | Required. The unique URI of the resource. For example,
-- \`https:\/\/gcr.io\/project\/image\'sha256:foo\` for a Docker image.
rURI :: Lens' Resource (Maybe Text)
rURI = lens _rURI (\ s a -> s{_rURI = a})

-- | The name of the resource. For example, the name of a Docker image -
-- \"Debian\".
rName :: Lens' Resource (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

instance FromJSON Resource where
        parseJSON
          = withObject "Resource"
              (\ o ->
                 Resource' <$>
                   (o .:? "contentHash") <*> (o .:? "uri") <*>
                     (o .:? "name"))

instance ToJSON Resource where
        toJSON Resource'{..}
          = object
              (catMaybes
                 [("contentHash" .=) <$> _rContentHash,
                  ("uri" .=) <$> _rURI, ("name" .=) <$> _rName])

-- | Details of a deployment occurrence.
--
-- /See:/ 'grafeasV1beta1DeploymentDetails' smart constructor.
newtype GrafeasV1beta1DeploymentDetails =
  GrafeasV1beta1DeploymentDetails'
    { _gvddDeployment :: Maybe Deployment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrafeasV1beta1DeploymentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvddDeployment'
grafeasV1beta1DeploymentDetails
    :: GrafeasV1beta1DeploymentDetails
grafeasV1beta1DeploymentDetails =
  GrafeasV1beta1DeploymentDetails' {_gvddDeployment = Nothing}


-- | Required. Deployment history for the resource.
gvddDeployment :: Lens' GrafeasV1beta1DeploymentDetails (Maybe Deployment)
gvddDeployment
  = lens _gvddDeployment
      (\ s a -> s{_gvddDeployment = a})

instance FromJSON GrafeasV1beta1DeploymentDetails
         where
        parseJSON
          = withObject "GrafeasV1beta1DeploymentDetails"
              (\ o ->
                 GrafeasV1beta1DeploymentDetails' <$>
                   (o .:? "deployment"))

instance ToJSON GrafeasV1beta1DeploymentDetails where
        toJSON GrafeasV1beta1DeploymentDetails'{..}
          = object
              (catMaybes [("deployment" .=) <$> _gvddDeployment])

-- | Metadata for all operations used and required for all operations that
-- created by Container Analysis Providers
--
-- /See:/ 'googleDevtoolsContaineranalysisV1alpha1OperationMetadata' smart constructor.
data GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata =
  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata'
    { _gdcvomEndTime    :: !(Maybe DateTime')
    , _gdcvomCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcvomEndTime'
--
-- * 'gdcvomCreateTime'
googleDevtoolsContaineranalysisV1alpha1OperationMetadata
    :: GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
googleDevtoolsContaineranalysisV1alpha1OperationMetadata =
  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata'
    {_gdcvomEndTime = Nothing, _gdcvomCreateTime = Nothing}


-- | Output only. The time that this operation was marked completed or
-- failed.
gdcvomEndTime :: Lens' GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata (Maybe UTCTime)
gdcvomEndTime
  = lens _gdcvomEndTime
      (\ s a -> s{_gdcvomEndTime = a})
      . mapping _DateTime

-- | Output only. The time this operation was created.
gdcvomCreateTime :: Lens' GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata (Maybe UTCTime)
gdcvomCreateTime
  = lens _gdcvomCreateTime
      (\ s a -> s{_gdcvomCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
         where
        parseJSON
          = withObject
              "GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata"
              (\ o ->
                 GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata'
                   <$> (o .:? "endTime") <*> (o .:? "createTime"))

instance ToJSON
           GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
         where
        toJSON
          GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata'{..}
          = object
              (catMaybes
                 [("endTime" .=) <$> _gdcvomEndTime,
                  ("createTime" .=) <$> _gdcvomCreateTime])

-- | Details of an attestation occurrence.
--
-- /See:/ 'details' smart constructor.
newtype Details =
  Details'
    { _dAttestation :: Maybe Attestation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Details' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAttestation'
details
    :: Details
details = Details' {_dAttestation = Nothing}


-- | Required. Attestation for the resource.
dAttestation :: Lens' Details (Maybe Attestation)
dAttestation
  = lens _dAttestation (\ s a -> s{_dAttestation = a})

instance FromJSON Details where
        parseJSON
          = withObject "Details"
              (\ o -> Details' <$> (o .:? "attestation"))

instance ToJSON Details where
        toJSON Details'{..}
          = object
              (catMaybes [("attestation" .=) <$> _dAttestation])

-- | This represents a particular package that is distributed over various
-- channels. E.g., glibc (aka libc6) is distributed by many, at various
-- versions.
--
-- /See:/ 'package' smart constructor.
data Package =
  Package'
    { _pDistribution :: !(Maybe [Distribution])
    , _pName         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Package' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pDistribution'
--
-- * 'pName'
package
    :: Package
package = Package' {_pDistribution = Nothing, _pName = Nothing}


-- | The various channels by which a package is distributed.
pDistribution :: Lens' Package [Distribution]
pDistribution
  = lens _pDistribution
      (\ s a -> s{_pDistribution = a})
      . _Default
      . _Coerce

-- | Required. Immutable. The name of the package.
pName :: Lens' Package (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

instance FromJSON Package where
        parseJSON
          = withObject "Package"
              (\ o ->
                 Package' <$>
                   (o .:? "distribution" .!= mempty) <*> (o .:? "name"))

instance ToJSON Package where
        toJSON Package'{..}
          = object
              (catMaybes
                 [("distribution" .=) <$> _pDistribution,
                  ("name" .=) <$> _pName])

-- | Response for listing notes.
--
-- /See:/ 'listNotesResponse' smart constructor.
data ListNotesResponse =
  ListNotesResponse'
    { _lnrNextPageToken :: !(Maybe Text)
    , _lnrNotes         :: !(Maybe [Note])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListNotesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnrNextPageToken'
--
-- * 'lnrNotes'
listNotesResponse
    :: ListNotesResponse
listNotesResponse =
  ListNotesResponse' {_lnrNextPageToken = Nothing, _lnrNotes = Nothing}


-- | The next pagination token in the list response. It should be used as
-- \`page_token\` for the following request. An empty value means no more
-- results.
lnrNextPageToken :: Lens' ListNotesResponse (Maybe Text)
lnrNextPageToken
  = lens _lnrNextPageToken
      (\ s a -> s{_lnrNextPageToken = a})

-- | The notes requested.
lnrNotes :: Lens' ListNotesResponse [Note]
lnrNotes
  = lens _lnrNotes (\ s a -> s{_lnrNotes = a}) .
      _Default
      . _Coerce

instance FromJSON ListNotesResponse where
        parseJSON
          = withObject "ListNotesResponse"
              (\ o ->
                 ListNotesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "notes" .!= mempty))

instance ToJSON ListNotesResponse where
        toJSON ListNotesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lnrNextPageToken,
                  ("notes" .=) <$> _lnrNotes])

-- | Message encapsulating the signature of the verified build.
--
-- /See:/ 'buildSignature' smart constructor.
data BuildSignature =
  BuildSignature'
    { _bsSignature :: !(Maybe Bytes)
    , _bsKeyType   :: !(Maybe BuildSignatureKeyType)
    , _bsKeyId     :: !(Maybe Text)
    , _bsPublicKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildSignature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsSignature'
--
-- * 'bsKeyType'
--
-- * 'bsKeyId'
--
-- * 'bsPublicKey'
buildSignature
    :: BuildSignature
buildSignature =
  BuildSignature'
    { _bsSignature = Nothing
    , _bsKeyType = Nothing
    , _bsKeyId = Nothing
    , _bsPublicKey = Nothing
    }


-- | Required. Signature of the related \`BuildProvenance\`. In JSON, this is
-- base-64 encoded.
bsSignature :: Lens' BuildSignature (Maybe ByteString)
bsSignature
  = lens _bsSignature (\ s a -> s{_bsSignature = a}) .
      mapping _Bytes

-- | The type of the key, either stored in \`public_key\` or referenced in
-- \`key_id\`.
bsKeyType :: Lens' BuildSignature (Maybe BuildSignatureKeyType)
bsKeyType
  = lens _bsKeyType (\ s a -> s{_bsKeyType = a})

-- | An ID for the key used to sign. This could be either an ID for the key
-- stored in \`public_key\` (such as the ID or fingerprint for a PGP key,
-- or the CN for a cert), or a reference to an external key (such as a
-- reference to a key in Cloud Key Management Service).
bsKeyId :: Lens' BuildSignature (Maybe Text)
bsKeyId = lens _bsKeyId (\ s a -> s{_bsKeyId = a})

-- | Public key of the builder which can be used to verify that the related
-- findings are valid and unchanged. If \`key_type\` is empty, this
-- defaults to PEM encoded public keys. This field may be empty if
-- \`key_id\` references an external key. For Cloud Build based signatures,
-- this is a PEM encoded public key. To verify the Cloud Build signature,
-- place the contents of this field into a file (public.pem). The signature
-- field is base64-decoded into its binary representation in signature.bin,
-- and the provenance bytes from \`BuildDetails\` are base64-decoded into a
-- binary representation in signed.bin. OpenSSL can then verify the
-- signature: \`openssl sha256 -verify public.pem -signature signature.bin
-- signed.bin\`
bsPublicKey :: Lens' BuildSignature (Maybe Text)
bsPublicKey
  = lens _bsPublicKey (\ s a -> s{_bsPublicKey = a})

instance FromJSON BuildSignature where
        parseJSON
          = withObject "BuildSignature"
              (\ o ->
                 BuildSignature' <$>
                   (o .:? "signature") <*> (o .:? "keyType") <*>
                     (o .:? "keyId")
                     <*> (o .:? "publicKey"))

instance ToJSON BuildSignature where
        toJSON BuildSignature'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _bsSignature,
                  ("keyType" .=) <$> _bsKeyType,
                  ("keyId" .=) <$> _bsKeyId,
                  ("publicKey" .=) <$> _bsPublicKey])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Provides information about the analysis status of a discovered resource.
--
-- /See:/ 'discovered' smart constructor.
data Discovered =
  Discovered'
    { _dLastAnalysisTime    :: !(Maybe DateTime')
    , _dAnalysisStatusError :: !(Maybe Status)
    , _dAnalysisStatus      :: !(Maybe DiscoveredAnalysisStatus)
    , _dContinuousAnalysis  :: !(Maybe DiscoveredContinuousAnalysis)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Discovered' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dLastAnalysisTime'
--
-- * 'dAnalysisStatusError'
--
-- * 'dAnalysisStatus'
--
-- * 'dContinuousAnalysis'
discovered
    :: Discovered
discovered =
  Discovered'
    { _dLastAnalysisTime = Nothing
    , _dAnalysisStatusError = Nothing
    , _dAnalysisStatus = Nothing
    , _dContinuousAnalysis = Nothing
    }


-- | The last time continuous analysis was done for this resource.
-- Deprecated, do not use.
dLastAnalysisTime :: Lens' Discovered (Maybe UTCTime)
dLastAnalysisTime
  = lens _dLastAnalysisTime
      (\ s a -> s{_dLastAnalysisTime = a})
      . mapping _DateTime

-- | When an error is encountered this will contain a LocalizedMessage under
-- details to show to the user. The LocalizedMessage is output only and
-- populated by the API.
dAnalysisStatusError :: Lens' Discovered (Maybe Status)
dAnalysisStatusError
  = lens _dAnalysisStatusError
      (\ s a -> s{_dAnalysisStatusError = a})

-- | The status of discovery for the resource.
dAnalysisStatus :: Lens' Discovered (Maybe DiscoveredAnalysisStatus)
dAnalysisStatus
  = lens _dAnalysisStatus
      (\ s a -> s{_dAnalysisStatus = a})

-- | Whether the resource is continuously analyzed.
dContinuousAnalysis :: Lens' Discovered (Maybe DiscoveredContinuousAnalysis)
dContinuousAnalysis
  = lens _dContinuousAnalysis
      (\ s a -> s{_dContinuousAnalysis = a})

instance FromJSON Discovered where
        parseJSON
          = withObject "Discovered"
              (\ o ->
                 Discovered' <$>
                   (o .:? "lastAnalysisTime") <*>
                     (o .:? "analysisStatusError")
                     <*> (o .:? "analysisStatus")
                     <*> (o .:? "continuousAnalysis"))

instance ToJSON Discovered where
        toJSON Discovered'{..}
          = object
              (catMaybes
                 [("lastAnalysisTime" .=) <$> _dLastAnalysisTime,
                  ("analysisStatusError" .=) <$> _dAnalysisStatusError,
                  ("analysisStatus" .=) <$> _dAnalysisStatus,
                  ("continuousAnalysis" .=) <$> _dContinuousAnalysis])

-- | Derived describes the derived image portion (Occurrence) of the
-- DockerImage relationship. This image would be produced from a Dockerfile
-- with FROM .
--
-- /See:/ 'derived' smart constructor.
data Derived =
  Derived'
    { _dBaseResourceURL :: !(Maybe Text)
    , _dFingerprint     :: !(Maybe Fingerprint)
    , _dDistance        :: !(Maybe (Textual Int32))
    , _dLayerInfo       :: !(Maybe [Layer])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Derived' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dBaseResourceURL'
--
-- * 'dFingerprint'
--
-- * 'dDistance'
--
-- * 'dLayerInfo'
derived
    :: Derived
derived =
  Derived'
    { _dBaseResourceURL = Nothing
    , _dFingerprint = Nothing
    , _dDistance = Nothing
    , _dLayerInfo = Nothing
    }


-- | Output only. This contains the base image URL for the derived image
-- occurrence.
dBaseResourceURL :: Lens' Derived (Maybe Text)
dBaseResourceURL
  = lens _dBaseResourceURL
      (\ s a -> s{_dBaseResourceURL = a})

-- | Required. The fingerprint of the derived image.
dFingerprint :: Lens' Derived (Maybe Fingerprint)
dFingerprint
  = lens _dFingerprint (\ s a -> s{_dFingerprint = a})

-- | Output only. The number of layers by which this image differs from the
-- associated image basis.
dDistance :: Lens' Derived (Maybe Int32)
dDistance
  = lens _dDistance (\ s a -> s{_dDistance = a}) .
      mapping _Coerce

-- | This contains layer-specific metadata, if populated it has length
-- \"distance\" and is ordered with [distance] being the layer immediately
-- following the base image and [1] being the final layer.
dLayerInfo :: Lens' Derived [Layer]
dLayerInfo
  = lens _dLayerInfo (\ s a -> s{_dLayerInfo = a}) .
      _Default
      . _Coerce

instance FromJSON Derived where
        parseJSON
          = withObject "Derived"
              (\ o ->
                 Derived' <$>
                   (o .:? "baseResourceUrl") <*> (o .:? "fingerprint")
                     <*> (o .:? "distance")
                     <*> (o .:? "layerInfo" .!= mempty))

instance ToJSON Derived where
        toJSON Derived'{..}
          = object
              (catMaybes
                 [("baseResourceUrl" .=) <$> _dBaseResourceURL,
                  ("fingerprint" .=) <$> _dFingerprint,
                  ("distance" .=) <$> _dDistance,
                  ("layerInfo" .=) <$> _dLayerInfo])

-- | Details of a build occurrence.
--
-- /See:/ 'grafeasV1beta1BuildDetails' smart constructor.
data GrafeasV1beta1BuildDetails =
  GrafeasV1beta1BuildDetails'
    { _gvbdProvenanceBytes :: !(Maybe Text)
    , _gvbdProvenance      :: !(Maybe BuildProvenance)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrafeasV1beta1BuildDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvbdProvenanceBytes'
--
-- * 'gvbdProvenance'
grafeasV1beta1BuildDetails
    :: GrafeasV1beta1BuildDetails
grafeasV1beta1BuildDetails =
  GrafeasV1beta1BuildDetails'
    {_gvbdProvenanceBytes = Nothing, _gvbdProvenance = Nothing}


-- | Serialized JSON representation of the provenance, used in generating the
-- build signature in the corresponding build note. After verifying the
-- signature, \`provenance_bytes\` can be unmarshalled and compared to the
-- provenance to confirm that it is unchanged. A base64-encoded string
-- representation of the provenance bytes is used for the signature in
-- order to interoperate with openssl which expects this format for
-- signature verification. The serialized form is captured both to avoid
-- ambiguity in how the provenance is marshalled to json as well to prevent
-- incompatibilities with future changes.
gvbdProvenanceBytes :: Lens' GrafeasV1beta1BuildDetails (Maybe Text)
gvbdProvenanceBytes
  = lens _gvbdProvenanceBytes
      (\ s a -> s{_gvbdProvenanceBytes = a})

-- | Required. The actual provenance for the build.
gvbdProvenance :: Lens' GrafeasV1beta1BuildDetails (Maybe BuildProvenance)
gvbdProvenance
  = lens _gvbdProvenance
      (\ s a -> s{_gvbdProvenance = a})

instance FromJSON GrafeasV1beta1BuildDetails where
        parseJSON
          = withObject "GrafeasV1beta1BuildDetails"
              (\ o ->
                 GrafeasV1beta1BuildDetails' <$>
                   (o .:? "provenanceBytes") <*> (o .:? "provenance"))

instance ToJSON GrafeasV1beta1BuildDetails where
        toJSON GrafeasV1beta1BuildDetails'{..}
          = object
              (catMaybes
                 [("provenanceBytes" .=) <$> _gvbdProvenanceBytes,
                  ("provenance" .=) <$> _gvbdProvenance])

-- | Source describes the location of the source used for the build.
--
-- /See:/ 'source' smart constructor.
data Source =
  Source'
    { _sContext                  :: !(Maybe SourceContext)
    , _sAdditionalContexts       :: !(Maybe [SourceContext])
    , _sArtifactStorageSourceURI :: !(Maybe Text)
    , _sFileHashes               :: !(Maybe SourceFileHashes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sContext'
--
-- * 'sAdditionalContexts'
--
-- * 'sArtifactStorageSourceURI'
--
-- * 'sFileHashes'
source
    :: Source
source =
  Source'
    { _sContext = Nothing
    , _sAdditionalContexts = Nothing
    , _sArtifactStorageSourceURI = Nothing
    , _sFileHashes = Nothing
    }


-- | If provided, the source code used for the build came from this location.
sContext :: Lens' Source (Maybe SourceContext)
sContext = lens _sContext (\ s a -> s{_sContext = a})

-- | If provided, some of the source code used for the build may be found in
-- these locations, in the case where the source repository had multiple
-- remotes or submodules. This list will not include the context specified
-- in the context field.
sAdditionalContexts :: Lens' Source [SourceContext]
sAdditionalContexts
  = lens _sAdditionalContexts
      (\ s a -> s{_sAdditionalContexts = a})
      . _Default
      . _Coerce

-- | If provided, the input binary artifacts for the build came from this
-- location.
sArtifactStorageSourceURI :: Lens' Source (Maybe Text)
sArtifactStorageSourceURI
  = lens _sArtifactStorageSourceURI
      (\ s a -> s{_sArtifactStorageSourceURI = a})

-- | Hash(es) of the build source, which can be used to verify that the
-- original source integrity was maintained in the build. The keys to this
-- map are file paths used as build source and the values contain the hash
-- values for those files. If the build source came in a single package
-- such as a gzipped tarfile (.tar.gz), the FileHash will be for the single
-- path to that file.
sFileHashes :: Lens' Source (Maybe SourceFileHashes)
sFileHashes
  = lens _sFileHashes (\ s a -> s{_sFileHashes = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o ->
                 Source' <$>
                   (o .:? "context") <*>
                     (o .:? "additionalContexts" .!= mempty)
                     <*> (o .:? "artifactStorageSourceUri")
                     <*> (o .:? "fileHashes"))

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _sContext,
                  ("additionalContexts" .=) <$> _sAdditionalContexts,
                  ("artifactStorageSourceUri" .=) <$>
                    _sArtifactStorageSourceURI,
                  ("fileHashes" .=) <$> _sFileHashes])

-- | A scan configuration specifies whether Cloud components in a project
-- have a particular type of analysis being run. For example, it can
-- configure whether vulnerability scanning is being done on Docker images
-- or not.
--
-- /See:/ 'scanConfig' smart constructor.
data ScanConfig =
  ScanConfig'
    { _scEnabled     :: !(Maybe Bool)
    , _scUpdateTime  :: !(Maybe DateTime')
    , _scName        :: !(Maybe Text)
    , _scDescription :: !(Maybe Text)
    , _scCreateTime  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScanConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scEnabled'
--
-- * 'scUpdateTime'
--
-- * 'scName'
--
-- * 'scDescription'
--
-- * 'scCreateTime'
scanConfig
    :: ScanConfig
scanConfig =
  ScanConfig'
    { _scEnabled = Nothing
    , _scUpdateTime = Nothing
    , _scName = Nothing
    , _scDescription = Nothing
    , _scCreateTime = Nothing
    }


-- | Whether the scan is enabled.
scEnabled :: Lens' ScanConfig (Maybe Bool)
scEnabled
  = lens _scEnabled (\ s a -> s{_scEnabled = a})

-- | Output only. The time this scan config was last updated.
scUpdateTime :: Lens' ScanConfig (Maybe UTCTime)
scUpdateTime
  = lens _scUpdateTime (\ s a -> s{_scUpdateTime = a})
      . mapping _DateTime

-- | Output only. The name of the scan configuration in the form of
-- \`projects\/[PROJECT_ID]\/scanConfigs\/[SCAN_CONFIG_ID]\`.
scName :: Lens' ScanConfig (Maybe Text)
scName = lens _scName (\ s a -> s{_scName = a})

-- | Output only. A human-readable description of what the scan configuration
-- does.
scDescription :: Lens' ScanConfig (Maybe Text)
scDescription
  = lens _scDescription
      (\ s a -> s{_scDescription = a})

-- | Output only. The time this scan config was created.
scCreateTime :: Lens' ScanConfig (Maybe UTCTime)
scCreateTime
  = lens _scCreateTime (\ s a -> s{_scCreateTime = a})
      . mapping _DateTime

instance FromJSON ScanConfig where
        parseJSON
          = withObject "ScanConfig"
              (\ o ->
                 ScanConfig' <$>
                   (o .:? "enabled") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON ScanConfig where
        toJSON ScanConfig'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _scEnabled,
                  ("updateTime" .=) <$> _scUpdateTime,
                  ("name" .=) <$> _scName,
                  ("description" .=) <$> _scDescription,
                  ("createTime" .=) <$> _scCreateTime])

-- | An attestation wrapper that uses the Grafeas \`Signature\` message. This
-- attestation must define the \`serialized_payload\` that the
-- \`signatures\` verify and any metadata necessary to interpret that
-- plaintext. The signatures should always be over the
-- \`serialized_payload\` bytestring.
--
-- /See:/ 'genericSignedAttestation' smart constructor.
data GenericSignedAttestation =
  GenericSignedAttestation'
    { _gsaSerializedPayload :: !(Maybe Bytes)
    , _gsaSignatures        :: !(Maybe [Signature])
    , _gsaContentType       :: !(Maybe GenericSignedAttestationContentType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenericSignedAttestation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsaSerializedPayload'
--
-- * 'gsaSignatures'
--
-- * 'gsaContentType'
genericSignedAttestation
    :: GenericSignedAttestation
genericSignedAttestation =
  GenericSignedAttestation'
    { _gsaSerializedPayload = Nothing
    , _gsaSignatures = Nothing
    , _gsaContentType = Nothing
    }


-- | The serialized payload that is verified by one or more \`signatures\`.
-- The encoding and semantic meaning of this payload must match what is set
-- in \`content_type\`.
gsaSerializedPayload :: Lens' GenericSignedAttestation (Maybe ByteString)
gsaSerializedPayload
  = lens _gsaSerializedPayload
      (\ s a -> s{_gsaSerializedPayload = a})
      . mapping _Bytes

-- | One or more signatures over \`serialized_payload\`. Verifier
-- implementations should consider this attestation message verified if at
-- least one \`signature\` verifies \`serialized_payload\`. See
-- \`Signature\` in common.proto for more details on signature structure
-- and verification.
gsaSignatures :: Lens' GenericSignedAttestation [Signature]
gsaSignatures
  = lens _gsaSignatures
      (\ s a -> s{_gsaSignatures = a})
      . _Default
      . _Coerce

-- | Type (for example schema) of the attestation payload that was signed.
-- The verifier must ensure that the provided type is one that the verifier
-- supports, and that the attestation payload is a valid instantiation of
-- that type (for example by validating a JSON schema).
gsaContentType :: Lens' GenericSignedAttestation (Maybe GenericSignedAttestationContentType)
gsaContentType
  = lens _gsaContentType
      (\ s a -> s{_gsaContentType = a})

instance FromJSON GenericSignedAttestation where
        parseJSON
          = withObject "GenericSignedAttestation"
              (\ o ->
                 GenericSignedAttestation' <$>
                   (o .:? "serializedPayload") <*>
                     (o .:? "signatures" .!= mempty)
                     <*> (o .:? "contentType"))

instance ToJSON GenericSignedAttestation where
        toJSON GenericSignedAttestation'{..}
          = object
              (catMaybes
                 [("serializedPayload" .=) <$> _gsaSerializedPayload,
                  ("signatures" .=) <$> _gsaSignatures,
                  ("contentType" .=) <$> _gsaContentType])

-- | A GitSourceContext denotes a particular revision in a third party Git
-- repository (e.g., GitHub).
--
-- /See:/ 'gitSourceContext' smart constructor.
data GitSourceContext =
  GitSourceContext'
    { _gURL        :: !(Maybe Text)
    , _gRevisionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GitSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gURL'
--
-- * 'gRevisionId'
gitSourceContext
    :: GitSourceContext
gitSourceContext = GitSourceContext' {_gURL = Nothing, _gRevisionId = Nothing}


-- | Git repository URL.
gURL :: Lens' GitSourceContext (Maybe Text)
gURL = lens _gURL (\ s a -> s{_gURL = a})

-- | Git commit hash.
gRevisionId :: Lens' GitSourceContext (Maybe Text)
gRevisionId
  = lens _gRevisionId (\ s a -> s{_gRevisionId = a})

instance FromJSON GitSourceContext where
        parseJSON
          = withObject "GitSourceContext"
              (\ o ->
                 GitSourceContext' <$>
                   (o .:? "url") <*> (o .:? "revisionId"))

instance ToJSON GitSourceContext where
        toJSON GitSourceContext'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _gURL,
                  ("revisionId" .=) <$> _gRevisionId])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag         :: !(Maybe Bytes)
    , _pVersion      :: !(Maybe (Textual Int32))
    , _pBindings     :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Deprecated.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | Layer holds metadata specific to a layer of a Docker image.
--
-- /See:/ 'layer' smart constructor.
data Layer =
  Layer'
    { _lDirective :: !(Maybe LayerDirective)
    , _lArguments :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Layer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lDirective'
--
-- * 'lArguments'
layer
    :: Layer
layer = Layer' {_lDirective = Nothing, _lArguments = Nothing}


-- | Required. The recovered Dockerfile directive used to construct this
-- layer.
lDirective :: Lens' Layer (Maybe LayerDirective)
lDirective
  = lens _lDirective (\ s a -> s{_lDirective = a})

-- | The recovered arguments to the Dockerfile directive.
lArguments :: Lens' Layer (Maybe Text)
lArguments
  = lens _lArguments (\ s a -> s{_lArguments = a})

instance FromJSON Layer where
        parseJSON
          = withObject "Layer"
              (\ o ->
                 Layer' <$>
                   (o .:? "directive") <*> (o .:? "arguments"))

instance ToJSON Layer where
        toJSON Layer'{..}
          = object
              (catMaybes
                 [("directive" .=) <$> _lDirective,
                  ("arguments" .=) <$> _lArguments])

-- | A CloudRepoSourceContext denotes a particular revision in a Google Cloud
-- Source Repo.
--
-- /See:/ 'cloudRepoSourceContext' smart constructor.
data CloudRepoSourceContext =
  CloudRepoSourceContext'
    { _crscRepoId       :: !(Maybe RepoId)
    , _crscRevisionId   :: !(Maybe Text)
    , _crscAliasContext :: !(Maybe AliasContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudRepoSourceContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crscRepoId'
--
-- * 'crscRevisionId'
--
-- * 'crscAliasContext'
cloudRepoSourceContext
    :: CloudRepoSourceContext
cloudRepoSourceContext =
  CloudRepoSourceContext'
    { _crscRepoId = Nothing
    , _crscRevisionId = Nothing
    , _crscAliasContext = Nothing
    }


-- | The ID of the repo.
crscRepoId :: Lens' CloudRepoSourceContext (Maybe RepoId)
crscRepoId
  = lens _crscRepoId (\ s a -> s{_crscRepoId = a})

-- | A revision ID.
crscRevisionId :: Lens' CloudRepoSourceContext (Maybe Text)
crscRevisionId
  = lens _crscRevisionId
      (\ s a -> s{_crscRevisionId = a})

-- | An alias, which may be a branch or tag.
crscAliasContext :: Lens' CloudRepoSourceContext (Maybe AliasContext)
crscAliasContext
  = lens _crscAliasContext
      (\ s a -> s{_crscAliasContext = a})

instance FromJSON CloudRepoSourceContext where
        parseJSON
          = withObject "CloudRepoSourceContext"
              (\ o ->
                 CloudRepoSourceContext' <$>
                   (o .:? "repoId") <*> (o .:? "revisionId") <*>
                     (o .:? "aliasContext"))

instance ToJSON CloudRepoSourceContext where
        toJSON CloudRepoSourceContext'{..}
          = object
              (catMaybes
                 [("repoId" .=) <$> _crscRepoId,
                  ("revisionId" .=) <$> _crscRevisionId,
                  ("aliasContext" .=) <$> _crscAliasContext])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting foo\'gmail.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType         :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

-- | An attestation wrapper with a PGP-compatible signature. This message
-- only supports \`ATTACHED\` signatures, where the payload that is signed
-- is included alongside the signature itself in the same file.
--
-- /See:/ 'pgpSignedAttestation' smart constructor.
data PgpSignedAttestation =
  PgpSignedAttestation'
    { _psaSignature   :: !(Maybe Text)
    , _psaPgpKeyId    :: !(Maybe Text)
    , _psaContentType :: !(Maybe PgpSignedAttestationContentType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PgpSignedAttestation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psaSignature'
--
-- * 'psaPgpKeyId'
--
-- * 'psaContentType'
pgpSignedAttestation
    :: PgpSignedAttestation
pgpSignedAttestation =
  PgpSignedAttestation'
    {_psaSignature = Nothing, _psaPgpKeyId = Nothing, _psaContentType = Nothing}


-- | Required. The raw content of the signature, as output by GNU Privacy
-- Guard (GPG) or equivalent. Since this message only supports attached
-- signatures, the payload that was signed must be attached. While the
-- signature format supported is dependent on the verification
-- implementation, currently only ASCII-armored (\`--armor\` to gpg),
-- non-clearsigned (\`--sign\` rather than \`--clearsign\` to gpg) are
-- supported. Concretely, \`gpg --sign --armor --output=signature.gpg
-- payload.json\` will create the signature content expected in this field
-- in \`signature.gpg\` for the \`payload.json\` attestation payload.
psaSignature :: Lens' PgpSignedAttestation (Maybe Text)
psaSignature
  = lens _psaSignature (\ s a -> s{_psaSignature = a})

-- | The cryptographic fingerprint of the key used to generate the signature,
-- as output by, e.g. \`gpg --list-keys\`. This should be the version 4,
-- full 160-bit fingerprint, expressed as a 40 character hexidecimal
-- string. See https:\/\/tools.ietf.org\/html\/rfc4880#section-12.2 for
-- details. Implementations may choose to acknowledge \"LONG\", \"SHORT\",
-- or other abbreviated key IDs, but only the full fingerprint is
-- guaranteed to work. In gpg, the full fingerprint can be retrieved from
-- the \`fpr\` field returned when calling --list-keys with --with-colons.
-- For example: \`\`\` gpg --with-colons --with-fingerprint
-- --force-v4-certs \\ --list-keys attester\'example.com
-- tru::1:1513631572:0:3:1:5 pub:......
-- fpr:::::::::24FF6481B76AC91E66A00AC657A93A81EF3AE6FB: \`\`\` Above, the
-- fingerprint is \`24FF6481B76AC91E66A00AC657A93A81EF3AE6FB\`.
psaPgpKeyId :: Lens' PgpSignedAttestation (Maybe Text)
psaPgpKeyId
  = lens _psaPgpKeyId (\ s a -> s{_psaPgpKeyId = a})

-- | Type (for example schema) of the attestation payload that was signed.
-- The verifier must ensure that the provided type is one that the verifier
-- supports, and that the attestation payload is a valid instantiation of
-- that type (for example by validating a JSON schema).
psaContentType :: Lens' PgpSignedAttestation (Maybe PgpSignedAttestationContentType)
psaContentType
  = lens _psaContentType
      (\ s a -> s{_psaContentType = a})

instance FromJSON PgpSignedAttestation where
        parseJSON
          = withObject "PgpSignedAttestation"
              (\ o ->
                 PgpSignedAttestation' <$>
                   (o .:? "signature") <*> (o .:? "pgpKeyId") <*>
                     (o .:? "contentType"))

instance ToJSON PgpSignedAttestation where
        toJSON PgpSignedAttestation'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _psaSignature,
                  ("pgpKeyId" .=) <$> _psaPgpKeyId,
                  ("contentType" .=) <$> _psaContentType])

--
-- /See:/ 'windowsDetail' smart constructor.
data WindowsDetail =
  WindowsDetail'
    { _wdName        :: !(Maybe Text)
    , _wdFixingKbs   :: !(Maybe [KnowledgeBase])
    , _wdCpeURI      :: !(Maybe Text)
    , _wdDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WindowsDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wdName'
--
-- * 'wdFixingKbs'
--
-- * 'wdCpeURI'
--
-- * 'wdDescription'
windowsDetail
    :: WindowsDetail
windowsDetail =
  WindowsDetail'
    { _wdName = Nothing
    , _wdFixingKbs = Nothing
    , _wdCpeURI = Nothing
    , _wdDescription = Nothing
    }


-- | Required. The name of the vulnerability.
wdName :: Lens' WindowsDetail (Maybe Text)
wdName = lens _wdName (\ s a -> s{_wdName = a})

-- | Required. The names of the KBs which have hotfixes to mitigate this
-- vulnerability. Note that there may be multiple hotfixes (and thus
-- multiple KBs) that mitigate a given vulnerability. Currently any listed
-- kb\'s presence is considered a fix.
wdFixingKbs :: Lens' WindowsDetail [KnowledgeBase]
wdFixingKbs
  = lens _wdFixingKbs (\ s a -> s{_wdFixingKbs = a}) .
      _Default
      . _Coerce

-- | Required. The CPE URI in [cpe
-- format](https:\/\/cpe.mitre.org\/specification\/) in which the
-- vulnerability manifests. Examples include distro or storage location for
-- vulnerable jar.
wdCpeURI :: Lens' WindowsDetail (Maybe Text)
wdCpeURI = lens _wdCpeURI (\ s a -> s{_wdCpeURI = a})

-- | The description of the vulnerability.
wdDescription :: Lens' WindowsDetail (Maybe Text)
wdDescription
  = lens _wdDescription
      (\ s a -> s{_wdDescription = a})

instance FromJSON WindowsDetail where
        parseJSON
          = withObject "WindowsDetail"
              (\ o ->
                 WindowsDetail' <$>
                   (o .:? "name") <*> (o .:? "fixingKbs" .!= mempty) <*>
                     (o .:? "cpeUri")
                     <*> (o .:? "description"))

instance ToJSON WindowsDetail where
        toJSON WindowsDetail'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _wdName,
                  ("fixingKbs" .=) <$> _wdFixingKbs,
                  ("cpeUri" .=) <$> _wdCpeURI,
                  ("description" .=) <$> _wdDescription])

-- | The notes to create. Max allowed length is 1000.
--
-- /See:/ 'batchCreateNotesRequestNotes' smart constructor.
newtype BatchCreateNotesRequestNotes =
  BatchCreateNotesRequestNotes'
    { _bcnrnAddtional :: HashMap Text Note
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateNotesRequestNotes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcnrnAddtional'
batchCreateNotesRequestNotes
    :: HashMap Text Note -- ^ 'bcnrnAddtional'
    -> BatchCreateNotesRequestNotes
batchCreateNotesRequestNotes pBcnrnAddtional_ =
  BatchCreateNotesRequestNotes' {_bcnrnAddtional = _Coerce # pBcnrnAddtional_}


bcnrnAddtional :: Lens' BatchCreateNotesRequestNotes (HashMap Text Note)
bcnrnAddtional
  = lens _bcnrnAddtional
      (\ s a -> s{_bcnrnAddtional = a})
      . _Coerce

instance FromJSON BatchCreateNotesRequestNotes where
        parseJSON
          = withObject "BatchCreateNotesRequestNotes"
              (\ o ->
                 BatchCreateNotesRequestNotes' <$>
                   (parseJSONObject o))

instance ToJSON BatchCreateNotesRequestNotes where
        toJSON = toJSON . _bcnrnAddtional

-- | An alias to a repo revision.
--
-- /See:/ 'aliasContext' smart constructor.
data AliasContext =
  AliasContext'
    { _acKind :: !(Maybe AliasContextKind)
    , _acName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AliasContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acKind'
--
-- * 'acName'
aliasContext
    :: AliasContext
aliasContext = AliasContext' {_acKind = Nothing, _acName = Nothing}


-- | The alias kind.
acKind :: Lens' AliasContext (Maybe AliasContextKind)
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | The alias name.
acName :: Lens' AliasContext (Maybe Text)
acName = lens _acName (\ s a -> s{_acName = a})

instance FromJSON AliasContext where
        parseJSON
          = withObject "AliasContext"
              (\ o ->
                 AliasContext' <$> (o .:? "kind") <*> (o .:? "name"))

instance ToJSON AliasContext where
        toJSON AliasContext'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _acKind, ("name" .=) <$> _acName])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: The G Suite domain
-- (primary) that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. NOTE: An unsatisfied
-- condition will not allow user access via current binding. Different
-- bindings, including their conditions, are examined independently.
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])

-- | Identifies all appearances of this vulnerability in the package for a
-- specific distro\/location. For example: glibc in
-- cpe:\/o:debian:debian_linux:8 for versions 2.1 - 2.2
--
-- /See:/ 'detail' smart constructor.
data Detail =
  Detail'
    { _detMinAffectedVersion :: !(Maybe Version)
    , _detPackageType        :: !(Maybe Text)
    , _detIsObsolete         :: !(Maybe Bool)
    , _detFixedLocation      :: !(Maybe VulnerabilityLocation)
    , _detSeverityName       :: !(Maybe Text)
    , _detMaxAffectedVersion :: !(Maybe Version)
    , _detPackage            :: !(Maybe Text)
    , _detCpeURI             :: !(Maybe Text)
    , _detDescription        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Detail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detMinAffectedVersion'
--
-- * 'detPackageType'
--
-- * 'detIsObsolete'
--
-- * 'detFixedLocation'
--
-- * 'detSeverityName'
--
-- * 'detMaxAffectedVersion'
--
-- * 'detPackage'
--
-- * 'detCpeURI'
--
-- * 'detDescription'
detail
    :: Detail
detail =
  Detail'
    { _detMinAffectedVersion = Nothing
    , _detPackageType = Nothing
    , _detIsObsolete = Nothing
    , _detFixedLocation = Nothing
    , _detSeverityName = Nothing
    , _detMaxAffectedVersion = Nothing
    , _detPackage = Nothing
    , _detCpeURI = Nothing
    , _detDescription = Nothing
    }


-- | The min version of the package in which the vulnerability exists.
detMinAffectedVersion :: Lens' Detail (Maybe Version)
detMinAffectedVersion
  = lens _detMinAffectedVersion
      (\ s a -> s{_detMinAffectedVersion = a})

-- | The type of package; whether native or non native(ruby gems, node.js
-- packages etc).
detPackageType :: Lens' Detail (Maybe Text)
detPackageType
  = lens _detPackageType
      (\ s a -> s{_detPackageType = a})

-- | Whether this detail is obsolete. Occurrences are expected not to point
-- to obsolete details.
detIsObsolete :: Lens' Detail (Maybe Bool)
detIsObsolete
  = lens _detIsObsolete
      (\ s a -> s{_detIsObsolete = a})

-- | The fix for this specific package version.
detFixedLocation :: Lens' Detail (Maybe VulnerabilityLocation)
detFixedLocation
  = lens _detFixedLocation
      (\ s a -> s{_detFixedLocation = a})

-- | The severity (eg: distro assigned severity) for this vulnerability.
detSeverityName :: Lens' Detail (Maybe Text)
detSeverityName
  = lens _detSeverityName
      (\ s a -> s{_detSeverityName = a})

-- | The max version of the package in which the vulnerability exists.
detMaxAffectedVersion :: Lens' Detail (Maybe Version)
detMaxAffectedVersion
  = lens _detMaxAffectedVersion
      (\ s a -> s{_detMaxAffectedVersion = a})

-- | Required. The name of the package where the vulnerability was found.
detPackage :: Lens' Detail (Maybe Text)
detPackage
  = lens _detPackage (\ s a -> s{_detPackage = a})

-- | Required. The CPE URI in [cpe
-- format](https:\/\/cpe.mitre.org\/specification\/) in which the
-- vulnerability manifests. Examples include distro or storage location for
-- vulnerable jar.
detCpeURI :: Lens' Detail (Maybe Text)
detCpeURI
  = lens _detCpeURI (\ s a -> s{_detCpeURI = a})

-- | A vendor-specific description of this note.
detDescription :: Lens' Detail (Maybe Text)
detDescription
  = lens _detDescription
      (\ s a -> s{_detDescription = a})

instance FromJSON Detail where
        parseJSON
          = withObject "Detail"
              (\ o ->
                 Detail' <$>
                   (o .:? "minAffectedVersion") <*>
                     (o .:? "packageType")
                     <*> (o .:? "isObsolete")
                     <*> (o .:? "fixedLocation")
                     <*> (o .:? "severityName")
                     <*> (o .:? "maxAffectedVersion")
                     <*> (o .:? "package")
                     <*> (o .:? "cpeUri")
                     <*> (o .:? "description"))

instance ToJSON Detail where
        toJSON Detail'{..}
          = object
              (catMaybes
                 [("minAffectedVersion" .=) <$>
                    _detMinAffectedVersion,
                  ("packageType" .=) <$> _detPackageType,
                  ("isObsolete" .=) <$> _detIsObsolete,
                  ("fixedLocation" .=) <$> _detFixedLocation,
                  ("severityName" .=) <$> _detSeverityName,
                  ("maxAffectedVersion" .=) <$> _detMaxAffectedVersion,
                  ("package" .=) <$> _detPackage,
                  ("cpeUri" .=) <$> _detCpeURI,
                  ("description" .=) <$> _detDescription])

-- | Note kind that represents a logical attestation \"role\" or
-- \"authority\". For example, an organization might have one \`Authority\`
-- for \"QA\" and one for \"build\". This note is intended to act strictly
-- as a grouping mechanism for the attached occurrences (Attestations).
-- This grouping mechanism also provides a security boundary, since IAM
-- ACLs gate the ability for a principle to attach an occurrence to a given
-- note. It also provides a single point of lookup to find all attached
-- attestation occurrences, even if they don\'t all live in the same
-- project.
--
-- /See:/ 'authority' smart constructor.
newtype Authority =
  Authority'
    { _aHint :: Maybe Hint
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Authority' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aHint'
authority
    :: Authority
authority = Authority' {_aHint = Nothing}


-- | Hint hints at the purpose of the attestation authority.
aHint :: Lens' Authority (Maybe Hint)
aHint = lens _aHint (\ s a -> s{_aHint = a})

instance FromJSON Authority where
        parseJSON
          = withObject "Authority"
              (\ o -> Authority' <$> (o .:? "hint"))

instance ToJSON Authority where
        toJSON Authority'{..}
          = object (catMaybes [("hint" .=) <$> _aHint])

-- | Details of a package occurrence.
--
-- /See:/ 'grafeasV1beta1PackageDetails' smart constructor.
newtype GrafeasV1beta1PackageDetails =
  GrafeasV1beta1PackageDetails'
    { _gvpdInstallation :: Maybe Installation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrafeasV1beta1PackageDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvpdInstallation'
grafeasV1beta1PackageDetails
    :: GrafeasV1beta1PackageDetails
grafeasV1beta1PackageDetails =
  GrafeasV1beta1PackageDetails' {_gvpdInstallation = Nothing}


-- | Required. Where the package was installed.
gvpdInstallation :: Lens' GrafeasV1beta1PackageDetails (Maybe Installation)
gvpdInstallation
  = lens _gvpdInstallation
      (\ s a -> s{_gvpdInstallation = a})

instance FromJSON GrafeasV1beta1PackageDetails where
        parseJSON
          = withObject "GrafeasV1beta1PackageDetails"
              (\ o ->
                 GrafeasV1beta1PackageDetails' <$>
                   (o .:? "installation"))

instance ToJSON GrafeasV1beta1PackageDetails where
        toJSON GrafeasV1beta1PackageDetails'{..}
          = object
              (catMaybes
                 [("installation" .=) <$> _gvpdInstallation])

-- | The period during which some deployable was active in a runtime.
--
-- /See:/ 'deployment' smart constructor.
data Deployment =
  Deployment'
    { _depResourceURI  :: !(Maybe [Text])
    , _depPlatform     :: !(Maybe DeploymentPlatform)
    , _depConfig       :: !(Maybe Text)
    , _depUndeployTime :: !(Maybe DateTime')
    , _depDeployTime   :: !(Maybe DateTime')
    , _depAddress      :: !(Maybe Text)
    , _depUserEmail    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'depResourceURI'
--
-- * 'depPlatform'
--
-- * 'depConfig'
--
-- * 'depUndeployTime'
--
-- * 'depDeployTime'
--
-- * 'depAddress'
--
-- * 'depUserEmail'
deployment
    :: Deployment
deployment =
  Deployment'
    { _depResourceURI = Nothing
    , _depPlatform = Nothing
    , _depConfig = Nothing
    , _depUndeployTime = Nothing
    , _depDeployTime = Nothing
    , _depAddress = Nothing
    , _depUserEmail = Nothing
    }


-- | Output only. Resource URI for the artifact being deployed taken from the
-- deployable field with the same name.
depResourceURI :: Lens' Deployment [Text]
depResourceURI
  = lens _depResourceURI
      (\ s a -> s{_depResourceURI = a})
      . _Default
      . _Coerce

-- | Platform hosting this deployment.
depPlatform :: Lens' Deployment (Maybe DeploymentPlatform)
depPlatform
  = lens _depPlatform (\ s a -> s{_depPlatform = a})

-- | Configuration used to create this deployment.
depConfig :: Lens' Deployment (Maybe Text)
depConfig
  = lens _depConfig (\ s a -> s{_depConfig = a})

-- | End of the lifetime of this deployment.
depUndeployTime :: Lens' Deployment (Maybe UTCTime)
depUndeployTime
  = lens _depUndeployTime
      (\ s a -> s{_depUndeployTime = a})
      . mapping _DateTime

-- | Required. Beginning of the lifetime of this deployment.
depDeployTime :: Lens' Deployment (Maybe UTCTime)
depDeployTime
  = lens _depDeployTime
      (\ s a -> s{_depDeployTime = a})
      . mapping _DateTime

-- | Address of the runtime element hosting this deployment.
depAddress :: Lens' Deployment (Maybe Text)
depAddress
  = lens _depAddress (\ s a -> s{_depAddress = a})

-- | Identity of the user that triggered this deployment.
depUserEmail :: Lens' Deployment (Maybe Text)
depUserEmail
  = lens _depUserEmail (\ s a -> s{_depUserEmail = a})

instance FromJSON Deployment where
        parseJSON
          = withObject "Deployment"
              (\ o ->
                 Deployment' <$>
                   (o .:? "resourceUri" .!= mempty) <*>
                     (o .:? "platform")
                     <*> (o .:? "config")
                     <*> (o .:? "undeployTime")
                     <*> (o .:? "deployTime")
                     <*> (o .:? "address")
                     <*> (o .:? "userEmail"))

instance ToJSON Deployment where
        toJSON Deployment'{..}
          = object
              (catMaybes
                 [("resourceUri" .=) <$> _depResourceURI,
                  ("platform" .=) <$> _depPlatform,
                  ("config" .=) <$> _depConfig,
                  ("undeployTime" .=) <$> _depUndeployTime,
                  ("deployTime" .=) <$> _depDeployTime,
                  ("address" .=) <$> _depAddress,
                  ("userEmail" .=) <$> _depUserEmail])
