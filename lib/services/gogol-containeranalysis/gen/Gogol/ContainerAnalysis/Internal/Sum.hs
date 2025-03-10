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
-- Module      : Gogol.ContainerAnalysis.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ContainerAnalysis.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AliasContext_Kind
    AliasContext_Kind
      ( AliasContext_Kind_KINDUNSPECIFIED,
        AliasContext_Kind_Fixed,
        AliasContext_Kind_Movable,
        AliasContext_Kind_Other,
        ..
      ),

    -- * Assessment_State
    Assessment_State
      ( Assessment_State_STATEUNSPECIFIED,
        Assessment_State_Affected,
        Assessment_State_NOTAFFECTED,
        Assessment_State_Fixed,
        Assessment_State_UNDERINVESTIGATION,
        ..
      ),

    -- * BuildStep_Status
    BuildStep_Status
      ( BuildStep_Status_STATUSUNKNOWN,
        BuildStep_Status_Pending,
        BuildStep_Status_Queuing,
        BuildStep_Status_Queued,
        BuildStep_Status_Working,
        BuildStep_Status_Success,
        BuildStep_Status_Failure,
        BuildStep_Status_INTERNALERROR,
        BuildStep_Status_Timeout,
        BuildStep_Status_Cancelled,
        BuildStep_Status_Expired,
        ..
      ),

    -- * CVSS_AttackComplexity
    CVSS_AttackComplexity
      ( CVSS_AttackComplexity_ATTACKCOMPLEXITYUNSPECIFIED,
        CVSS_AttackComplexity_ATTACKCOMPLEXITYLOW,
        CVSS_AttackComplexity_ATTACKCOMPLEXITYHIGH,
        CVSS_AttackComplexity_ATTACKCOMPLEXITYMEDIUM,
        ..
      ),

    -- * CVSS_AttackVector
    CVSS_AttackVector
      ( CVSS_AttackVector_ATTACKVECTORUNSPECIFIED,
        CVSS_AttackVector_ATTACKVECTORNETWORK,
        CVSS_AttackVector_ATTACKVECTORADJACENT,
        CVSS_AttackVector_ATTACKVECTORLOCAL,
        CVSS_AttackVector_ATTACKVECTORPHYSICAL,
        ..
      ),

    -- * CVSS_Authentication
    CVSS_Authentication
      ( CVSS_Authentication_AUTHENTICATIONUNSPECIFIED,
        CVSS_Authentication_AUTHENTICATIONMULTIPLE,
        CVSS_Authentication_AUTHENTICATIONSINGLE,
        CVSS_Authentication_AUTHENTICATIONNONE,
        ..
      ),

    -- * CVSS_AvailabilityImpact
    CVSS_AvailabilityImpact
      ( CVSS_AvailabilityImpact_IMPACTUNSPECIFIED,
        CVSS_AvailabilityImpact_IMPACTHIGH,
        CVSS_AvailabilityImpact_IMPACTLOW,
        CVSS_AvailabilityImpact_IMPACTNONE,
        CVSS_AvailabilityImpact_IMPACTPARTIAL,
        CVSS_AvailabilityImpact_IMPACTCOMPLETE,
        ..
      ),

    -- * CVSS_ConfidentialityImpact
    CVSS_ConfidentialityImpact
      ( CVSS_ConfidentialityImpact_IMPACTUNSPECIFIED,
        CVSS_ConfidentialityImpact_IMPACTHIGH,
        CVSS_ConfidentialityImpact_IMPACTLOW,
        CVSS_ConfidentialityImpact_IMPACTNONE,
        CVSS_ConfidentialityImpact_IMPACTPARTIAL,
        CVSS_ConfidentialityImpact_IMPACTCOMPLETE,
        ..
      ),

    -- * CVSS_IntegrityImpact
    CVSS_IntegrityImpact
      ( CVSS_IntegrityImpact_IMPACTUNSPECIFIED,
        CVSS_IntegrityImpact_IMPACTHIGH,
        CVSS_IntegrityImpact_IMPACTLOW,
        CVSS_IntegrityImpact_IMPACTNONE,
        CVSS_IntegrityImpact_IMPACTPARTIAL,
        CVSS_IntegrityImpact_IMPACTCOMPLETE,
        ..
      ),

    -- * CVSS_PrivilegesRequired
    CVSS_PrivilegesRequired
      ( CVSS_PrivilegesRequired_PRIVILEGESREQUIREDUNSPECIFIED,
        CVSS_PrivilegesRequired_PRIVILEGESREQUIREDNONE,
        CVSS_PrivilegesRequired_PRIVILEGESREQUIREDLOW,
        CVSS_PrivilegesRequired_PRIVILEGESREQUIREDHIGH,
        ..
      ),

    -- * CVSS_Scope
    CVSS_Scope
      ( CVSS_Scope_SCOPEUNSPECIFIED,
        CVSS_Scope_SCOPEUNCHANGED,
        CVSS_Scope_SCOPECHANGED,
        ..
      ),

    -- * CVSS_UserInteraction
    CVSS_UserInteraction
      ( CVSS_UserInteraction_USERINTERACTIONUNSPECIFIED,
        CVSS_UserInteraction_USERINTERACTIONNONE,
        CVSS_UserInteraction_USERINTERACTIONREQUIRED,
        ..
      ),

    -- * CVSSv3_AttackComplexity
    CVSSv3_AttackComplexity
      ( CVSSv3_AttackComplexity_ATTACKCOMPLEXITYUNSPECIFIED,
        CVSSv3_AttackComplexity_ATTACKCOMPLEXITYLOW,
        CVSSv3_AttackComplexity_ATTACKCOMPLEXITYHIGH,
        ..
      ),

    -- * CVSSv3_AttackVector
    CVSSv3_AttackVector
      ( CVSSv3_AttackVector_ATTACKVECTORUNSPECIFIED,
        CVSSv3_AttackVector_ATTACKVECTORNETWORK,
        CVSSv3_AttackVector_ATTACKVECTORADJACENT,
        CVSSv3_AttackVector_ATTACKVECTORLOCAL,
        CVSSv3_AttackVector_ATTACKVECTORPHYSICAL,
        ..
      ),

    -- * CVSSv3_AvailabilityImpact
    CVSSv3_AvailabilityImpact
      ( CVSSv3_AvailabilityImpact_IMPACTUNSPECIFIED,
        CVSSv3_AvailabilityImpact_IMPACTHIGH,
        CVSSv3_AvailabilityImpact_IMPACTLOW,
        CVSSv3_AvailabilityImpact_IMPACTNONE,
        ..
      ),

    -- * CVSSv3_ConfidentialityImpact
    CVSSv3_ConfidentialityImpact
      ( CVSSv3_ConfidentialityImpact_IMPACTUNSPECIFIED,
        CVSSv3_ConfidentialityImpact_IMPACTHIGH,
        CVSSv3_ConfidentialityImpact_IMPACTLOW,
        CVSSv3_ConfidentialityImpact_IMPACTNONE,
        ..
      ),

    -- * CVSSv3_IntegrityImpact
    CVSSv3_IntegrityImpact
      ( CVSSv3_IntegrityImpact_IMPACTUNSPECIFIED,
        CVSSv3_IntegrityImpact_IMPACTHIGH,
        CVSSv3_IntegrityImpact_IMPACTLOW,
        CVSSv3_IntegrityImpact_IMPACTNONE,
        ..
      ),

    -- * CVSSv3_PrivilegesRequired
    CVSSv3_PrivilegesRequired
      ( CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDUNSPECIFIED,
        CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDNONE,
        CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDLOW,
        CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDHIGH,
        ..
      ),

    -- * CVSSv3_Scope
    CVSSv3_Scope
      ( CVSSv3_Scope_SCOPEUNSPECIFIED,
        CVSSv3_Scope_SCOPEUNCHANGED,
        CVSSv3_Scope_SCOPECHANGED,
        ..
      ),

    -- * CVSSv3_UserInteraction
    CVSSv3_UserInteraction
      ( CVSSv3_UserInteraction_USERINTERACTIONUNSPECIFIED,
        CVSSv3_UserInteraction_USERINTERACTIONNONE,
        CVSSv3_UserInteraction_USERINTERACTIONREQUIRED,
        ..
      ),

    -- * CisBenchmark_Severity
    CisBenchmark_Severity
      ( CisBenchmark_Severity_SEVERITYUNSPECIFIED,
        CisBenchmark_Severity_Minimal,
        CisBenchmark_Severity_Low,
        CisBenchmark_Severity_Medium,
        CisBenchmark_Severity_High,
        CisBenchmark_Severity_Critical,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision
    ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_DECISIONUNSPECIFIED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Approved,
        ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Rejected,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_STATUSUNKNOWN,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Pending,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Queued,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Working,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Success,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Failure,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_INTERNALERROR,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Timeout,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Cancelled,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Expired,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_STATEUNSPECIFIED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Pending,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Approved,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Rejected,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Cancelled,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_FAILURETYPEUNSPECIFIED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHFAILED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHIMAGENOTFOUND,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHNOTAUTHORIZED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_LOGGINGFAILURE,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_USERBUILDSTEP,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_FETCHSOURCEFAILED,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_DEFAULTLOGSBUCKETBEHAVIORUNSPECIFIED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_REGIONALUSEROWNEDBUCKET,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_LEGACYBUCKET,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMDEFAULT,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMON,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMOFF,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_LOGGINGUNSPECIFIED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_Legacy,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_GCSONLY,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_STACKDRIVERONLY,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_CLOUDLOGGINGONLY,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_None,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_Unspecified,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_8,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_32,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_8,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_32,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2MEDIUM,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_NOTVERIFIED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_Verified,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_None,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA256,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_MD5,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_GO_MODULE_H1,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA512,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_MUSTMATCH,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_ALLOWLOOSE,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_STATUSUNKNOWN,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Pending,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Queued,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Working,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Success,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Failure,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_INTERNALERROR,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Timeout,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Cancelled,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Expired,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_PRIORITYUNSPECIFIED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Info,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Warning,
        ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Alert,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
    ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_None,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_SHA256,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_MD5,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_GO_MODULE_H1,
        ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_SHA512,
        ..
      ),

    -- * ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
    ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
      ( ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_SOURCEFETCHERUNSPECIFIED,
        ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_Gsutil,
        ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_GCSFETCHER,
        ..
      ),

    -- * DeploymentOccurrence_Platform
    DeploymentOccurrence_Platform
      ( DeploymentOccurrence_Platform_PLATFORMUNSPECIFIED,
        DeploymentOccurrence_Platform_Gke,
        DeploymentOccurrence_Platform_Flex,
        DeploymentOccurrence_Platform_Custom,
        ..
      ),

    -- * DiscoveryNote_AnalysisKind
    DiscoveryNote_AnalysisKind
      ( DiscoveryNote_AnalysisKind_NOTEKINDUNSPECIFIED,
        DiscoveryNote_AnalysisKind_Vulnerability,
        DiscoveryNote_AnalysisKind_Build,
        DiscoveryNote_AnalysisKind_Image,
        DiscoveryNote_AnalysisKind_Package,
        DiscoveryNote_AnalysisKind_Deployment,
        DiscoveryNote_AnalysisKind_Discovery,
        DiscoveryNote_AnalysisKind_Attestation,
        DiscoveryNote_AnalysisKind_Upgrade,
        DiscoveryNote_AnalysisKind_Compliance,
        DiscoveryNote_AnalysisKind_DSSEATTESTATION,
        DiscoveryNote_AnalysisKind_VULNERABILITYASSESSMENT,
        DiscoveryNote_AnalysisKind_SBOMREFERENCE,
        ..
      ),

    -- * DiscoveryOccurrence_AnalysisStatus
    DiscoveryOccurrence_AnalysisStatus
      ( DiscoveryOccurrence_AnalysisStatus_ANALYSISSTATUSUNSPECIFIED,
        DiscoveryOccurrence_AnalysisStatus_Pending,
        DiscoveryOccurrence_AnalysisStatus_Scanning,
        DiscoveryOccurrence_AnalysisStatus_FINISHEDSUCCESS,
        DiscoveryOccurrence_AnalysisStatus_Complete,
        DiscoveryOccurrence_AnalysisStatus_FINISHEDFAILED,
        DiscoveryOccurrence_AnalysisStatus_FINISHEDUNSUPPORTED,
        ..
      ),

    -- * DiscoveryOccurrence_ContinuousAnalysis
    DiscoveryOccurrence_ContinuousAnalysis
      ( DiscoveryOccurrence_ContinuousAnalysis_CONTINUOUSANALYSISUNSPECIFIED,
        DiscoveryOccurrence_ContinuousAnalysis_Active,
        DiscoveryOccurrence_ContinuousAnalysis_Inactive,
        ..
      ),

    -- * Distribution_Architecture
    Distribution_Architecture
      ( Distribution_Architecture_ARCHITECTUREUNSPECIFIED,
        Distribution_Architecture_X86,
        Distribution_Architecture_X64,
        ..
      ),

    -- * FixableTotalByDigest_Severity
    FixableTotalByDigest_Severity
      ( FixableTotalByDigest_Severity_SEVERITYUNSPECIFIED,
        FixableTotalByDigest_Severity_Minimal,
        FixableTotalByDigest_Severity_Low,
        FixableTotalByDigest_Severity_Medium,
        FixableTotalByDigest_Severity_High,
        FixableTotalByDigest_Severity_Critical,
        ..
      ),

    -- * Justification_JustificationType
    Justification_JustificationType
      ( Justification_JustificationType_JUSTIFICATIONTYPEUNSPECIFIED,
        Justification_JustificationType_COMPONENTNOTPRESENT,
        Justification_JustificationType_VULNERABLECODENOTPRESENT,
        Justification_JustificationType_VULNERABLECODENOTINEXECUTEPATH,
        Justification_JustificationType_VULNERABLECODECANNOTBECONTROLLEDBYADVERSARY,
        Justification_JustificationType_INLINEMITIGATIONSALREADYEXIST,
        ..
      ),

    -- * Note_Kind
    Note_Kind
      ( Note_Kind_NOTEKINDUNSPECIFIED,
        Note_Kind_Vulnerability,
        Note_Kind_Build,
        Note_Kind_Image,
        Note_Kind_Package,
        Note_Kind_Deployment,
        Note_Kind_Discovery,
        Note_Kind_Attestation,
        Note_Kind_Upgrade,
        Note_Kind_Compliance,
        Note_Kind_DSSEATTESTATION,
        Note_Kind_VULNERABILITYASSESSMENT,
        Note_Kind_SBOMREFERENCE,
        ..
      ),

    -- * Occurrence_Kind
    Occurrence_Kind
      ( Occurrence_Kind_NOTEKINDUNSPECIFIED,
        Occurrence_Kind_Vulnerability,
        Occurrence_Kind_Build,
        Occurrence_Kind_Image,
        Occurrence_Kind_Package,
        Occurrence_Kind_Deployment,
        Occurrence_Kind_Discovery,
        Occurrence_Kind_Attestation,
        Occurrence_Kind_Upgrade,
        Occurrence_Kind_Compliance,
        Occurrence_Kind_DSSEATTESTATION,
        Occurrence_Kind_VULNERABILITYASSESSMENT,
        Occurrence_Kind_SBOMREFERENCE,
        ..
      ),

    -- * PackageIssue_EffectiveSeverity
    PackageIssue_EffectiveSeverity
      ( PackageIssue_EffectiveSeverity_SEVERITYUNSPECIFIED,
        PackageIssue_EffectiveSeverity_Minimal,
        PackageIssue_EffectiveSeverity_Low,
        PackageIssue_EffectiveSeverity_Medium,
        PackageIssue_EffectiveSeverity_High,
        PackageIssue_EffectiveSeverity_Critical,
        ..
      ),

    -- * PackageNote_Architecture
    PackageNote_Architecture
      ( PackageNote_Architecture_ARCHITECTUREUNSPECIFIED,
        PackageNote_Architecture_X86,
        PackageNote_Architecture_X64,
        ..
      ),

    -- * PackageOccurrence_Architecture
    PackageOccurrence_Architecture
      ( PackageOccurrence_Architecture_ARCHITECTUREUNSPECIFIED,
        PackageOccurrence_Architecture_X86,
        PackageOccurrence_Architecture_X64,
        ..
      ),

    -- * Remediation_RemediationType
    Remediation_RemediationType
      ( Remediation_RemediationType_REMEDIATIONTYPEUNSPECIFIED,
        Remediation_RemediationType_Mitigation,
        Remediation_RemediationType_NOFIXPLANNED,
        Remediation_RemediationType_NONEAVAILABLE,
        Remediation_RemediationType_VENDORFIX,
        Remediation_RemediationType_Workaround,
        ..
      ),

    -- * SBOMStatus_SbomState
    SBOMStatus_SbomState
      ( SBOMStatus_SbomState_SBOMSTATEUNSPECIFIED,
        SBOMStatus_SbomState_Pending,
        SBOMStatus_SbomState_Complete,
        ..
      ),

    -- * Version_Kind
    Version_Kind
      ( Version_Kind_VERSIONKINDUNSPECIFIED,
        Version_Kind_Normal,
        Version_Kind_Minimum,
        Version_Kind_Maximum,
        ..
      ),

    -- * VexAssessment_State
    VexAssessment_State
      ( VexAssessment_State_STATEUNSPECIFIED,
        VexAssessment_State_Affected,
        VexAssessment_State_NOTAFFECTED,
        VexAssessment_State_Fixed,
        VexAssessment_State_UNDERINVESTIGATION,
        ..
      ),

    -- * VulnerabilityNote_CvssVersion
    VulnerabilityNote_CvssVersion
      ( VulnerabilityNote_CvssVersion_CVSSVERSIONUNSPECIFIED,
        VulnerabilityNote_CvssVersion_CVSS_VERSION_2,
        VulnerabilityNote_CvssVersion_CVSS_VERSION_3,
        ..
      ),

    -- * VulnerabilityNote_Severity
    VulnerabilityNote_Severity
      ( VulnerabilityNote_Severity_SEVERITYUNSPECIFIED,
        VulnerabilityNote_Severity_Minimal,
        VulnerabilityNote_Severity_Low,
        VulnerabilityNote_Severity_Medium,
        VulnerabilityNote_Severity_High,
        VulnerabilityNote_Severity_Critical,
        ..
      ),

    -- * VulnerabilityOccurrence_CvssVersion
    VulnerabilityOccurrence_CvssVersion
      ( VulnerabilityOccurrence_CvssVersion_CVSSVERSIONUNSPECIFIED,
        VulnerabilityOccurrence_CvssVersion_CVSS_VERSION_2,
        VulnerabilityOccurrence_CvssVersion_CVSS_VERSION_3,
        ..
      ),

    -- * VulnerabilityOccurrence_EffectiveSeverity
    VulnerabilityOccurrence_EffectiveSeverity
      ( VulnerabilityOccurrence_EffectiveSeverity_SEVERITYUNSPECIFIED,
        VulnerabilityOccurrence_EffectiveSeverity_Minimal,
        VulnerabilityOccurrence_EffectiveSeverity_Low,
        VulnerabilityOccurrence_EffectiveSeverity_Medium,
        VulnerabilityOccurrence_EffectiveSeverity_High,
        VulnerabilityOccurrence_EffectiveSeverity_Critical,
        ..
      ),

    -- * VulnerabilityOccurrence_Severity
    VulnerabilityOccurrence_Severity
      ( VulnerabilityOccurrence_Severity_SEVERITYUNSPECIFIED,
        VulnerabilityOccurrence_Severity_Minimal,
        VulnerabilityOccurrence_Severity_Low,
        VulnerabilityOccurrence_Severity_Medium,
        VulnerabilityOccurrence_Severity_High,
        VulnerabilityOccurrence_Severity_Critical,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The alias kind.
newtype AliasContext_Kind = AliasContext_Kind {fromAliasContext_Kind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern AliasContext_Kind_KINDUNSPECIFIED :: AliasContext_Kind
pattern AliasContext_Kind_KINDUNSPECIFIED = AliasContext_Kind "KIND_UNSPECIFIED"

-- | Git tag.
pattern AliasContext_Kind_Fixed :: AliasContext_Kind
pattern AliasContext_Kind_Fixed = AliasContext_Kind "FIXED"

-- | Git branch.
pattern AliasContext_Kind_Movable :: AliasContext_Kind
pattern AliasContext_Kind_Movable = AliasContext_Kind "MOVABLE"

-- | Used to specify non-standard aliases. For example, if a Git repo has a ref named \"refs\/foo\/bar\".
pattern AliasContext_Kind_Other :: AliasContext_Kind
pattern AliasContext_Kind_Other = AliasContext_Kind "OTHER"

{-# COMPLETE
  AliasContext_Kind_KINDUNSPECIFIED,
  AliasContext_Kind_Fixed,
  AliasContext_Kind_Movable,
  AliasContext_Kind_Other,
  AliasContext_Kind
  #-}

-- | Provides the state of this Vulnerability assessment.
newtype Assessment_State = Assessment_State {fromAssessment_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No state is specified.
pattern Assessment_State_STATEUNSPECIFIED :: Assessment_State
pattern Assessment_State_STATEUNSPECIFIED = Assessment_State "STATE_UNSPECIFIED"

-- | This product is known to be affected by this vulnerability.
pattern Assessment_State_Affected :: Assessment_State
pattern Assessment_State_Affected = Assessment_State "AFFECTED"

-- | This product is known to be not affected by this vulnerability.
pattern Assessment_State_NOTAFFECTED :: Assessment_State
pattern Assessment_State_NOTAFFECTED = Assessment_State "NOT_AFFECTED"

-- | This product contains a fix for this vulnerability.
pattern Assessment_State_Fixed :: Assessment_State
pattern Assessment_State_Fixed = Assessment_State "FIXED"

-- | It is not known yet whether these versions are or are not affected by the vulnerability. However, it is still under investigation.
pattern Assessment_State_UNDERINVESTIGATION :: Assessment_State
pattern Assessment_State_UNDERINVESTIGATION = Assessment_State "UNDER_INVESTIGATION"

{-# COMPLETE
  Assessment_State_STATEUNSPECIFIED,
  Assessment_State_Affected,
  Assessment_State_NOTAFFECTED,
  Assessment_State_Fixed,
  Assessment_State_UNDERINVESTIGATION,
  Assessment_State
  #-}

-- | Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
newtype BuildStep_Status = BuildStep_Status {fromBuildStep_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Status of the build is unknown.
pattern BuildStep_Status_STATUSUNKNOWN :: BuildStep_Status
pattern BuildStep_Status_STATUSUNKNOWN = BuildStep_Status "STATUS_UNKNOWN"

-- | Build has been created and is pending execution and queuing. It has not been queued.
pattern BuildStep_Status_Pending :: BuildStep_Status
pattern BuildStep_Status_Pending = BuildStep_Status "PENDING"

-- | Build has been received and is being queued.
pattern BuildStep_Status_Queuing :: BuildStep_Status
pattern BuildStep_Status_Queuing = BuildStep_Status "QUEUING"

-- | Build or step is queued; work has not yet begun.
pattern BuildStep_Status_Queued :: BuildStep_Status
pattern BuildStep_Status_Queued = BuildStep_Status "QUEUED"

-- | Build or step is being executed.
pattern BuildStep_Status_Working :: BuildStep_Status
pattern BuildStep_Status_Working = BuildStep_Status "WORKING"

-- | Build or step finished successfully.
pattern BuildStep_Status_Success :: BuildStep_Status
pattern BuildStep_Status_Success = BuildStep_Status "SUCCESS"

-- | Build or step failed to complete successfully.
pattern BuildStep_Status_Failure :: BuildStep_Status
pattern BuildStep_Status_Failure = BuildStep_Status "FAILURE"

-- | Build or step failed due to an internal cause.
pattern BuildStep_Status_INTERNALERROR :: BuildStep_Status
pattern BuildStep_Status_INTERNALERROR = BuildStep_Status "INTERNAL_ERROR"

-- | Build or step took longer than was allowed.
pattern BuildStep_Status_Timeout :: BuildStep_Status
pattern BuildStep_Status_Timeout = BuildStep_Status "TIMEOUT"

-- | Build or step was canceled by a user.
pattern BuildStep_Status_Cancelled :: BuildStep_Status
pattern BuildStep_Status_Cancelled = BuildStep_Status "CANCELLED"

-- | Build was enqueued for longer than the value of @queue_ttl@.
pattern BuildStep_Status_Expired :: BuildStep_Status
pattern BuildStep_Status_Expired = BuildStep_Status "EXPIRED"

{-# COMPLETE
  BuildStep_Status_STATUSUNKNOWN,
  BuildStep_Status_Pending,
  BuildStep_Status_Queuing,
  BuildStep_Status_Queued,
  BuildStep_Status_Working,
  BuildStep_Status_Success,
  BuildStep_Status_Failure,
  BuildStep_Status_INTERNALERROR,
  BuildStep_Status_Timeout,
  BuildStep_Status_Cancelled,
  BuildStep_Status_Expired,
  BuildStep_Status
  #-}

newtype CVSS_AttackComplexity = CVSS_AttackComplexity {fromCVSS_AttackComplexity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_AttackComplexity_ATTACKCOMPLEXITYUNSPECIFIED :: CVSS_AttackComplexity
pattern CVSS_AttackComplexity_ATTACKCOMPLEXITYUNSPECIFIED = CVSS_AttackComplexity "ATTACK_COMPLEXITY_UNSPECIFIED"

pattern CVSS_AttackComplexity_ATTACKCOMPLEXITYLOW :: CVSS_AttackComplexity
pattern CVSS_AttackComplexity_ATTACKCOMPLEXITYLOW = CVSS_AttackComplexity "ATTACK_COMPLEXITY_LOW"

pattern CVSS_AttackComplexity_ATTACKCOMPLEXITYHIGH :: CVSS_AttackComplexity
pattern CVSS_AttackComplexity_ATTACKCOMPLEXITYHIGH = CVSS_AttackComplexity "ATTACK_COMPLEXITY_HIGH"

pattern CVSS_AttackComplexity_ATTACKCOMPLEXITYMEDIUM :: CVSS_AttackComplexity
pattern CVSS_AttackComplexity_ATTACKCOMPLEXITYMEDIUM = CVSS_AttackComplexity "ATTACK_COMPLEXITY_MEDIUM"

{-# COMPLETE
  CVSS_AttackComplexity_ATTACKCOMPLEXITYUNSPECIFIED,
  CVSS_AttackComplexity_ATTACKCOMPLEXITYLOW,
  CVSS_AttackComplexity_ATTACKCOMPLEXITYHIGH,
  CVSS_AttackComplexity_ATTACKCOMPLEXITYMEDIUM,
  CVSS_AttackComplexity
  #-}

-- | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
newtype CVSS_AttackVector = CVSS_AttackVector {fromCVSS_AttackVector :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_AttackVector_ATTACKVECTORUNSPECIFIED :: CVSS_AttackVector
pattern CVSS_AttackVector_ATTACKVECTORUNSPECIFIED = CVSS_AttackVector "ATTACK_VECTOR_UNSPECIFIED"

pattern CVSS_AttackVector_ATTACKVECTORNETWORK :: CVSS_AttackVector
pattern CVSS_AttackVector_ATTACKVECTORNETWORK = CVSS_AttackVector "ATTACK_VECTOR_NETWORK"

pattern CVSS_AttackVector_ATTACKVECTORADJACENT :: CVSS_AttackVector
pattern CVSS_AttackVector_ATTACKVECTORADJACENT = CVSS_AttackVector "ATTACK_VECTOR_ADJACENT"

pattern CVSS_AttackVector_ATTACKVECTORLOCAL :: CVSS_AttackVector
pattern CVSS_AttackVector_ATTACKVECTORLOCAL = CVSS_AttackVector "ATTACK_VECTOR_LOCAL"

pattern CVSS_AttackVector_ATTACKVECTORPHYSICAL :: CVSS_AttackVector
pattern CVSS_AttackVector_ATTACKVECTORPHYSICAL = CVSS_AttackVector "ATTACK_VECTOR_PHYSICAL"

{-# COMPLETE
  CVSS_AttackVector_ATTACKVECTORUNSPECIFIED,
  CVSS_AttackVector_ATTACKVECTORNETWORK,
  CVSS_AttackVector_ATTACKVECTORADJACENT,
  CVSS_AttackVector_ATTACKVECTORLOCAL,
  CVSS_AttackVector_ATTACKVECTORPHYSICAL,
  CVSS_AttackVector
  #-}

newtype CVSS_Authentication = CVSS_Authentication {fromCVSS_Authentication :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_Authentication_AUTHENTICATIONUNSPECIFIED :: CVSS_Authentication
pattern CVSS_Authentication_AUTHENTICATIONUNSPECIFIED = CVSS_Authentication "AUTHENTICATION_UNSPECIFIED"

pattern CVSS_Authentication_AUTHENTICATIONMULTIPLE :: CVSS_Authentication
pattern CVSS_Authentication_AUTHENTICATIONMULTIPLE = CVSS_Authentication "AUTHENTICATION_MULTIPLE"

pattern CVSS_Authentication_AUTHENTICATIONSINGLE :: CVSS_Authentication
pattern CVSS_Authentication_AUTHENTICATIONSINGLE = CVSS_Authentication "AUTHENTICATION_SINGLE"

pattern CVSS_Authentication_AUTHENTICATIONNONE :: CVSS_Authentication
pattern CVSS_Authentication_AUTHENTICATIONNONE = CVSS_Authentication "AUTHENTICATION_NONE"

{-# COMPLETE
  CVSS_Authentication_AUTHENTICATIONUNSPECIFIED,
  CVSS_Authentication_AUTHENTICATIONMULTIPLE,
  CVSS_Authentication_AUTHENTICATIONSINGLE,
  CVSS_Authentication_AUTHENTICATIONNONE,
  CVSS_Authentication
  #-}

newtype CVSS_AvailabilityImpact = CVSS_AvailabilityImpact {fromCVSS_AvailabilityImpact :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_AvailabilityImpact_IMPACTUNSPECIFIED :: CVSS_AvailabilityImpact
pattern CVSS_AvailabilityImpact_IMPACTUNSPECIFIED = CVSS_AvailabilityImpact "IMPACT_UNSPECIFIED"

pattern CVSS_AvailabilityImpact_IMPACTHIGH :: CVSS_AvailabilityImpact
pattern CVSS_AvailabilityImpact_IMPACTHIGH = CVSS_AvailabilityImpact "IMPACT_HIGH"

pattern CVSS_AvailabilityImpact_IMPACTLOW :: CVSS_AvailabilityImpact
pattern CVSS_AvailabilityImpact_IMPACTLOW = CVSS_AvailabilityImpact "IMPACT_LOW"

pattern CVSS_AvailabilityImpact_IMPACTNONE :: CVSS_AvailabilityImpact
pattern CVSS_AvailabilityImpact_IMPACTNONE = CVSS_AvailabilityImpact "IMPACT_NONE"

pattern CVSS_AvailabilityImpact_IMPACTPARTIAL :: CVSS_AvailabilityImpact
pattern CVSS_AvailabilityImpact_IMPACTPARTIAL = CVSS_AvailabilityImpact "IMPACT_PARTIAL"

pattern CVSS_AvailabilityImpact_IMPACTCOMPLETE :: CVSS_AvailabilityImpact
pattern CVSS_AvailabilityImpact_IMPACTCOMPLETE = CVSS_AvailabilityImpact "IMPACT_COMPLETE"

{-# COMPLETE
  CVSS_AvailabilityImpact_IMPACTUNSPECIFIED,
  CVSS_AvailabilityImpact_IMPACTHIGH,
  CVSS_AvailabilityImpact_IMPACTLOW,
  CVSS_AvailabilityImpact_IMPACTNONE,
  CVSS_AvailabilityImpact_IMPACTPARTIAL,
  CVSS_AvailabilityImpact_IMPACTCOMPLETE,
  CVSS_AvailabilityImpact
  #-}

newtype CVSS_ConfidentialityImpact = CVSS_ConfidentialityImpact {fromCVSS_ConfidentialityImpact :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_ConfidentialityImpact_IMPACTUNSPECIFIED :: CVSS_ConfidentialityImpact
pattern CVSS_ConfidentialityImpact_IMPACTUNSPECIFIED = CVSS_ConfidentialityImpact "IMPACT_UNSPECIFIED"

pattern CVSS_ConfidentialityImpact_IMPACTHIGH :: CVSS_ConfidentialityImpact
pattern CVSS_ConfidentialityImpact_IMPACTHIGH = CVSS_ConfidentialityImpact "IMPACT_HIGH"

pattern CVSS_ConfidentialityImpact_IMPACTLOW :: CVSS_ConfidentialityImpact
pattern CVSS_ConfidentialityImpact_IMPACTLOW = CVSS_ConfidentialityImpact "IMPACT_LOW"

pattern CVSS_ConfidentialityImpact_IMPACTNONE :: CVSS_ConfidentialityImpact
pattern CVSS_ConfidentialityImpact_IMPACTNONE = CVSS_ConfidentialityImpact "IMPACT_NONE"

pattern CVSS_ConfidentialityImpact_IMPACTPARTIAL :: CVSS_ConfidentialityImpact
pattern CVSS_ConfidentialityImpact_IMPACTPARTIAL = CVSS_ConfidentialityImpact "IMPACT_PARTIAL"

pattern CVSS_ConfidentialityImpact_IMPACTCOMPLETE :: CVSS_ConfidentialityImpact
pattern CVSS_ConfidentialityImpact_IMPACTCOMPLETE = CVSS_ConfidentialityImpact "IMPACT_COMPLETE"

{-# COMPLETE
  CVSS_ConfidentialityImpact_IMPACTUNSPECIFIED,
  CVSS_ConfidentialityImpact_IMPACTHIGH,
  CVSS_ConfidentialityImpact_IMPACTLOW,
  CVSS_ConfidentialityImpact_IMPACTNONE,
  CVSS_ConfidentialityImpact_IMPACTPARTIAL,
  CVSS_ConfidentialityImpact_IMPACTCOMPLETE,
  CVSS_ConfidentialityImpact
  #-}

newtype CVSS_IntegrityImpact = CVSS_IntegrityImpact {fromCVSS_IntegrityImpact :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_IntegrityImpact_IMPACTUNSPECIFIED :: CVSS_IntegrityImpact
pattern CVSS_IntegrityImpact_IMPACTUNSPECIFIED = CVSS_IntegrityImpact "IMPACT_UNSPECIFIED"

pattern CVSS_IntegrityImpact_IMPACTHIGH :: CVSS_IntegrityImpact
pattern CVSS_IntegrityImpact_IMPACTHIGH = CVSS_IntegrityImpact "IMPACT_HIGH"

pattern CVSS_IntegrityImpact_IMPACTLOW :: CVSS_IntegrityImpact
pattern CVSS_IntegrityImpact_IMPACTLOW = CVSS_IntegrityImpact "IMPACT_LOW"

pattern CVSS_IntegrityImpact_IMPACTNONE :: CVSS_IntegrityImpact
pattern CVSS_IntegrityImpact_IMPACTNONE = CVSS_IntegrityImpact "IMPACT_NONE"

pattern CVSS_IntegrityImpact_IMPACTPARTIAL :: CVSS_IntegrityImpact
pattern CVSS_IntegrityImpact_IMPACTPARTIAL = CVSS_IntegrityImpact "IMPACT_PARTIAL"

pattern CVSS_IntegrityImpact_IMPACTCOMPLETE :: CVSS_IntegrityImpact
pattern CVSS_IntegrityImpact_IMPACTCOMPLETE = CVSS_IntegrityImpact "IMPACT_COMPLETE"

{-# COMPLETE
  CVSS_IntegrityImpact_IMPACTUNSPECIFIED,
  CVSS_IntegrityImpact_IMPACTHIGH,
  CVSS_IntegrityImpact_IMPACTLOW,
  CVSS_IntegrityImpact_IMPACTNONE,
  CVSS_IntegrityImpact_IMPACTPARTIAL,
  CVSS_IntegrityImpact_IMPACTCOMPLETE,
  CVSS_IntegrityImpact
  #-}

newtype CVSS_PrivilegesRequired = CVSS_PrivilegesRequired {fromCVSS_PrivilegesRequired :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_PrivilegesRequired_PRIVILEGESREQUIREDUNSPECIFIED :: CVSS_PrivilegesRequired
pattern CVSS_PrivilegesRequired_PRIVILEGESREQUIREDUNSPECIFIED = CVSS_PrivilegesRequired "PRIVILEGES_REQUIRED_UNSPECIFIED"

pattern CVSS_PrivilegesRequired_PRIVILEGESREQUIREDNONE :: CVSS_PrivilegesRequired
pattern CVSS_PrivilegesRequired_PRIVILEGESREQUIREDNONE = CVSS_PrivilegesRequired "PRIVILEGES_REQUIRED_NONE"

pattern CVSS_PrivilegesRequired_PRIVILEGESREQUIREDLOW :: CVSS_PrivilegesRequired
pattern CVSS_PrivilegesRequired_PRIVILEGESREQUIREDLOW = CVSS_PrivilegesRequired "PRIVILEGES_REQUIRED_LOW"

pattern CVSS_PrivilegesRequired_PRIVILEGESREQUIREDHIGH :: CVSS_PrivilegesRequired
pattern CVSS_PrivilegesRequired_PRIVILEGESREQUIREDHIGH = CVSS_PrivilegesRequired "PRIVILEGES_REQUIRED_HIGH"

{-# COMPLETE
  CVSS_PrivilegesRequired_PRIVILEGESREQUIREDUNSPECIFIED,
  CVSS_PrivilegesRequired_PRIVILEGESREQUIREDNONE,
  CVSS_PrivilegesRequired_PRIVILEGESREQUIREDLOW,
  CVSS_PrivilegesRequired_PRIVILEGESREQUIREDHIGH,
  CVSS_PrivilegesRequired
  #-}

newtype CVSS_Scope = CVSS_Scope {fromCVSS_Scope :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_Scope_SCOPEUNSPECIFIED :: CVSS_Scope
pattern CVSS_Scope_SCOPEUNSPECIFIED = CVSS_Scope "SCOPE_UNSPECIFIED"

pattern CVSS_Scope_SCOPEUNCHANGED :: CVSS_Scope
pattern CVSS_Scope_SCOPEUNCHANGED = CVSS_Scope "SCOPE_UNCHANGED"

pattern CVSS_Scope_SCOPECHANGED :: CVSS_Scope
pattern CVSS_Scope_SCOPECHANGED = CVSS_Scope "SCOPE_CHANGED"

{-# COMPLETE
  CVSS_Scope_SCOPEUNSPECIFIED,
  CVSS_Scope_SCOPEUNCHANGED,
  CVSS_Scope_SCOPECHANGED,
  CVSS_Scope
  #-}

newtype CVSS_UserInteraction = CVSS_UserInteraction {fromCVSS_UserInteraction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSS_UserInteraction_USERINTERACTIONUNSPECIFIED :: CVSS_UserInteraction
pattern CVSS_UserInteraction_USERINTERACTIONUNSPECIFIED = CVSS_UserInteraction "USER_INTERACTION_UNSPECIFIED"

pattern CVSS_UserInteraction_USERINTERACTIONNONE :: CVSS_UserInteraction
pattern CVSS_UserInteraction_USERINTERACTIONNONE = CVSS_UserInteraction "USER_INTERACTION_NONE"

pattern CVSS_UserInteraction_USERINTERACTIONREQUIRED :: CVSS_UserInteraction
pattern CVSS_UserInteraction_USERINTERACTIONREQUIRED = CVSS_UserInteraction "USER_INTERACTION_REQUIRED"

{-# COMPLETE
  CVSS_UserInteraction_USERINTERACTIONUNSPECIFIED,
  CVSS_UserInteraction_USERINTERACTIONNONE,
  CVSS_UserInteraction_USERINTERACTIONREQUIRED,
  CVSS_UserInteraction
  #-}

newtype CVSSv3_AttackComplexity = CVSSv3_AttackComplexity {fromCVSSv3_AttackComplexity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSSv3_AttackComplexity_ATTACKCOMPLEXITYUNSPECIFIED :: CVSSv3_AttackComplexity
pattern CVSSv3_AttackComplexity_ATTACKCOMPLEXITYUNSPECIFIED = CVSSv3_AttackComplexity "ATTACK_COMPLEXITY_UNSPECIFIED"

pattern CVSSv3_AttackComplexity_ATTACKCOMPLEXITYLOW :: CVSSv3_AttackComplexity
pattern CVSSv3_AttackComplexity_ATTACKCOMPLEXITYLOW = CVSSv3_AttackComplexity "ATTACK_COMPLEXITY_LOW"

pattern CVSSv3_AttackComplexity_ATTACKCOMPLEXITYHIGH :: CVSSv3_AttackComplexity
pattern CVSSv3_AttackComplexity_ATTACKCOMPLEXITYHIGH = CVSSv3_AttackComplexity "ATTACK_COMPLEXITY_HIGH"

{-# COMPLETE
  CVSSv3_AttackComplexity_ATTACKCOMPLEXITYUNSPECIFIED,
  CVSSv3_AttackComplexity_ATTACKCOMPLEXITYLOW,
  CVSSv3_AttackComplexity_ATTACKCOMPLEXITYHIGH,
  CVSSv3_AttackComplexity
  #-}

-- | Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
newtype CVSSv3_AttackVector = CVSSv3_AttackVector {fromCVSSv3_AttackVector :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSSv3_AttackVector_ATTACKVECTORUNSPECIFIED :: CVSSv3_AttackVector
pattern CVSSv3_AttackVector_ATTACKVECTORUNSPECIFIED = CVSSv3_AttackVector "ATTACK_VECTOR_UNSPECIFIED"

pattern CVSSv3_AttackVector_ATTACKVECTORNETWORK :: CVSSv3_AttackVector
pattern CVSSv3_AttackVector_ATTACKVECTORNETWORK = CVSSv3_AttackVector "ATTACK_VECTOR_NETWORK"

pattern CVSSv3_AttackVector_ATTACKVECTORADJACENT :: CVSSv3_AttackVector
pattern CVSSv3_AttackVector_ATTACKVECTORADJACENT = CVSSv3_AttackVector "ATTACK_VECTOR_ADJACENT"

pattern CVSSv3_AttackVector_ATTACKVECTORLOCAL :: CVSSv3_AttackVector
pattern CVSSv3_AttackVector_ATTACKVECTORLOCAL = CVSSv3_AttackVector "ATTACK_VECTOR_LOCAL"

pattern CVSSv3_AttackVector_ATTACKVECTORPHYSICAL :: CVSSv3_AttackVector
pattern CVSSv3_AttackVector_ATTACKVECTORPHYSICAL = CVSSv3_AttackVector "ATTACK_VECTOR_PHYSICAL"

{-# COMPLETE
  CVSSv3_AttackVector_ATTACKVECTORUNSPECIFIED,
  CVSSv3_AttackVector_ATTACKVECTORNETWORK,
  CVSSv3_AttackVector_ATTACKVECTORADJACENT,
  CVSSv3_AttackVector_ATTACKVECTORLOCAL,
  CVSSv3_AttackVector_ATTACKVECTORPHYSICAL,
  CVSSv3_AttackVector
  #-}

newtype CVSSv3_AvailabilityImpact = CVSSv3_AvailabilityImpact {fromCVSSv3_AvailabilityImpact :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSSv3_AvailabilityImpact_IMPACTUNSPECIFIED :: CVSSv3_AvailabilityImpact
pattern CVSSv3_AvailabilityImpact_IMPACTUNSPECIFIED = CVSSv3_AvailabilityImpact "IMPACT_UNSPECIFIED"

pattern CVSSv3_AvailabilityImpact_IMPACTHIGH :: CVSSv3_AvailabilityImpact
pattern CVSSv3_AvailabilityImpact_IMPACTHIGH = CVSSv3_AvailabilityImpact "IMPACT_HIGH"

pattern CVSSv3_AvailabilityImpact_IMPACTLOW :: CVSSv3_AvailabilityImpact
pattern CVSSv3_AvailabilityImpact_IMPACTLOW = CVSSv3_AvailabilityImpact "IMPACT_LOW"

pattern CVSSv3_AvailabilityImpact_IMPACTNONE :: CVSSv3_AvailabilityImpact
pattern CVSSv3_AvailabilityImpact_IMPACTNONE = CVSSv3_AvailabilityImpact "IMPACT_NONE"

{-# COMPLETE
  CVSSv3_AvailabilityImpact_IMPACTUNSPECIFIED,
  CVSSv3_AvailabilityImpact_IMPACTHIGH,
  CVSSv3_AvailabilityImpact_IMPACTLOW,
  CVSSv3_AvailabilityImpact_IMPACTNONE,
  CVSSv3_AvailabilityImpact
  #-}

newtype CVSSv3_ConfidentialityImpact = CVSSv3_ConfidentialityImpact {fromCVSSv3_ConfidentialityImpact :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSSv3_ConfidentialityImpact_IMPACTUNSPECIFIED :: CVSSv3_ConfidentialityImpact
pattern CVSSv3_ConfidentialityImpact_IMPACTUNSPECIFIED = CVSSv3_ConfidentialityImpact "IMPACT_UNSPECIFIED"

pattern CVSSv3_ConfidentialityImpact_IMPACTHIGH :: CVSSv3_ConfidentialityImpact
pattern CVSSv3_ConfidentialityImpact_IMPACTHIGH = CVSSv3_ConfidentialityImpact "IMPACT_HIGH"

pattern CVSSv3_ConfidentialityImpact_IMPACTLOW :: CVSSv3_ConfidentialityImpact
pattern CVSSv3_ConfidentialityImpact_IMPACTLOW = CVSSv3_ConfidentialityImpact "IMPACT_LOW"

pattern CVSSv3_ConfidentialityImpact_IMPACTNONE :: CVSSv3_ConfidentialityImpact
pattern CVSSv3_ConfidentialityImpact_IMPACTNONE = CVSSv3_ConfidentialityImpact "IMPACT_NONE"

{-# COMPLETE
  CVSSv3_ConfidentialityImpact_IMPACTUNSPECIFIED,
  CVSSv3_ConfidentialityImpact_IMPACTHIGH,
  CVSSv3_ConfidentialityImpact_IMPACTLOW,
  CVSSv3_ConfidentialityImpact_IMPACTNONE,
  CVSSv3_ConfidentialityImpact
  #-}

newtype CVSSv3_IntegrityImpact = CVSSv3_IntegrityImpact {fromCVSSv3_IntegrityImpact :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSSv3_IntegrityImpact_IMPACTUNSPECIFIED :: CVSSv3_IntegrityImpact
pattern CVSSv3_IntegrityImpact_IMPACTUNSPECIFIED = CVSSv3_IntegrityImpact "IMPACT_UNSPECIFIED"

pattern CVSSv3_IntegrityImpact_IMPACTHIGH :: CVSSv3_IntegrityImpact
pattern CVSSv3_IntegrityImpact_IMPACTHIGH = CVSSv3_IntegrityImpact "IMPACT_HIGH"

pattern CVSSv3_IntegrityImpact_IMPACTLOW :: CVSSv3_IntegrityImpact
pattern CVSSv3_IntegrityImpact_IMPACTLOW = CVSSv3_IntegrityImpact "IMPACT_LOW"

pattern CVSSv3_IntegrityImpact_IMPACTNONE :: CVSSv3_IntegrityImpact
pattern CVSSv3_IntegrityImpact_IMPACTNONE = CVSSv3_IntegrityImpact "IMPACT_NONE"

{-# COMPLETE
  CVSSv3_IntegrityImpact_IMPACTUNSPECIFIED,
  CVSSv3_IntegrityImpact_IMPACTHIGH,
  CVSSv3_IntegrityImpact_IMPACTLOW,
  CVSSv3_IntegrityImpact_IMPACTNONE,
  CVSSv3_IntegrityImpact
  #-}

newtype CVSSv3_PrivilegesRequired = CVSSv3_PrivilegesRequired {fromCVSSv3_PrivilegesRequired :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDUNSPECIFIED :: CVSSv3_PrivilegesRequired
pattern CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDUNSPECIFIED = CVSSv3_PrivilegesRequired "PRIVILEGES_REQUIRED_UNSPECIFIED"

pattern CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDNONE :: CVSSv3_PrivilegesRequired
pattern CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDNONE = CVSSv3_PrivilegesRequired "PRIVILEGES_REQUIRED_NONE"

pattern CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDLOW :: CVSSv3_PrivilegesRequired
pattern CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDLOW = CVSSv3_PrivilegesRequired "PRIVILEGES_REQUIRED_LOW"

pattern CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDHIGH :: CVSSv3_PrivilegesRequired
pattern CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDHIGH = CVSSv3_PrivilegesRequired "PRIVILEGES_REQUIRED_HIGH"

{-# COMPLETE
  CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDUNSPECIFIED,
  CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDNONE,
  CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDLOW,
  CVSSv3_PrivilegesRequired_PRIVILEGESREQUIREDHIGH,
  CVSSv3_PrivilegesRequired
  #-}

newtype CVSSv3_Scope = CVSSv3_Scope {fromCVSSv3_Scope :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSSv3_Scope_SCOPEUNSPECIFIED :: CVSSv3_Scope
pattern CVSSv3_Scope_SCOPEUNSPECIFIED = CVSSv3_Scope "SCOPE_UNSPECIFIED"

pattern CVSSv3_Scope_SCOPEUNCHANGED :: CVSSv3_Scope
pattern CVSSv3_Scope_SCOPEUNCHANGED = CVSSv3_Scope "SCOPE_UNCHANGED"

pattern CVSSv3_Scope_SCOPECHANGED :: CVSSv3_Scope
pattern CVSSv3_Scope_SCOPECHANGED = CVSSv3_Scope "SCOPE_CHANGED"

{-# COMPLETE
  CVSSv3_Scope_SCOPEUNSPECIFIED,
  CVSSv3_Scope_SCOPEUNCHANGED,
  CVSSv3_Scope_SCOPECHANGED,
  CVSSv3_Scope
  #-}

newtype CVSSv3_UserInteraction = CVSSv3_UserInteraction {fromCVSSv3_UserInteraction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern CVSSv3_UserInteraction_USERINTERACTIONUNSPECIFIED :: CVSSv3_UserInteraction
pattern CVSSv3_UserInteraction_USERINTERACTIONUNSPECIFIED = CVSSv3_UserInteraction "USER_INTERACTION_UNSPECIFIED"

pattern CVSSv3_UserInteraction_USERINTERACTIONNONE :: CVSSv3_UserInteraction
pattern CVSSv3_UserInteraction_USERINTERACTIONNONE = CVSSv3_UserInteraction "USER_INTERACTION_NONE"

pattern CVSSv3_UserInteraction_USERINTERACTIONREQUIRED :: CVSSv3_UserInteraction
pattern CVSSv3_UserInteraction_USERINTERACTIONREQUIRED = CVSSv3_UserInteraction "USER_INTERACTION_REQUIRED"

{-# COMPLETE
  CVSSv3_UserInteraction_USERINTERACTIONUNSPECIFIED,
  CVSSv3_UserInteraction_USERINTERACTIONNONE,
  CVSSv3_UserInteraction_USERINTERACTIONREQUIRED,
  CVSSv3_UserInteraction
  #-}

newtype CisBenchmark_Severity = CisBenchmark_Severity {fromCisBenchmark_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern CisBenchmark_Severity_SEVERITYUNSPECIFIED :: CisBenchmark_Severity
pattern CisBenchmark_Severity_SEVERITYUNSPECIFIED = CisBenchmark_Severity "SEVERITY_UNSPECIFIED"

-- | Minimal severity.
pattern CisBenchmark_Severity_Minimal :: CisBenchmark_Severity
pattern CisBenchmark_Severity_Minimal = CisBenchmark_Severity "MINIMAL"

-- | Low severity.
pattern CisBenchmark_Severity_Low :: CisBenchmark_Severity
pattern CisBenchmark_Severity_Low = CisBenchmark_Severity "LOW"

-- | Medium severity.
pattern CisBenchmark_Severity_Medium :: CisBenchmark_Severity
pattern CisBenchmark_Severity_Medium = CisBenchmark_Severity "MEDIUM"

-- | High severity.
pattern CisBenchmark_Severity_High :: CisBenchmark_Severity
pattern CisBenchmark_Severity_High = CisBenchmark_Severity "HIGH"

-- | Critical severity.
pattern CisBenchmark_Severity_Critical :: CisBenchmark_Severity
pattern CisBenchmark_Severity_Critical = CisBenchmark_Severity "CRITICAL"

{-# COMPLETE
  CisBenchmark_Severity_SEVERITYUNSPECIFIED,
  CisBenchmark_Severity_Minimal,
  CisBenchmark_Severity_Low,
  CisBenchmark_Severity_Medium,
  CisBenchmark_Severity_High,
  CisBenchmark_Severity_Critical,
  CisBenchmark_Severity
  #-}

-- | Required. The decision of this manual approval.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision = ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision {fromContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default enum type. This should not be used.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_DECISIONUNSPECIFIED :: ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_DECISIONUNSPECIFIED = ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision "DECISION_UNSPECIFIED"

-- | Build is approved.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Approved :: ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Approved = ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision "APPROVED"

-- | Build is rejected.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Rejected :: ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Rejected = ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision "REJECTED"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_DECISIONUNSPECIFIED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Approved,
  ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Rejected,
  ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult_Decision
  #-}

-- | Output only. Status of the build.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status {fromContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Status of the build is unknown.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_STATUSUNKNOWN :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_STATUSUNKNOWN = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "STATUS_UNKNOWN"

-- | Build has been created and is pending execution and queuing. It has not been queued.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Pending :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Pending = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "PENDING"

-- | Build or step is queued; work has not yet begun.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Queued :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Queued = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "QUEUED"

-- | Build or step is being executed.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Working :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Working = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "WORKING"

-- | Build or step finished successfully.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Success :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Success = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "SUCCESS"

-- | Build or step failed to complete successfully.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Failure :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Failure = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "FAILURE"

-- | Build or step failed due to an internal cause.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_INTERNALERROR :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_INTERNALERROR = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "INTERNAL_ERROR"

-- | Build or step took longer than was allowed.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Timeout :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Timeout = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "TIMEOUT"

-- | Build or step was canceled by a user.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Cancelled :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Cancelled = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "CANCELLED"

-- | Build was enqueued for longer than the value of @queue_ttl@.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Expired :: ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Expired = ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status "EXPIRED"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_STATUSUNKNOWN,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Pending,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Queued,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Working,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Success,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Failure,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_INTERNALERROR,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Timeout,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Cancelled,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status_Expired,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Build_Status
  #-}

-- | Output only. The state of this build\'s approval.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default enum type. This should not be used.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_STATEUNSPECIFIED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_STATEUNSPECIFIED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State "STATE_UNSPECIFIED"

-- | Build approval is pending.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Pending :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Pending = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State "PENDING"

-- | Build approval has been approved.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Approved :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Approved = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State "APPROVED"

-- | Build approval has been rejected.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Rejected :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Rejected = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State "REJECTED"

-- | Build was cancelled while it was still pending approval.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Cancelled :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Cancelled = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State "CANCELLED"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_STATEUNSPECIFIED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Pending,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Approved,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Rejected,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State_Cancelled,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval_State
  #-}

-- | The name of the failure.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Type unspecified
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_FAILURETYPEUNSPECIFIED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_FAILURETYPEUNSPECIFIED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type "FAILURE_TYPE_UNSPECIFIED"

-- | Unable to push the image to the repository.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHFAILED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHFAILED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type "PUSH_FAILED"

-- | Final image not found.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHIMAGENOTFOUND :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHIMAGENOTFOUND = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type "PUSH_IMAGE_NOT_FOUND"

-- | Unauthorized push of the final image.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHNOTAUTHORIZED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHNOTAUTHORIZED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type "PUSH_NOT_AUTHORIZED"

-- | Backend logging failures. Should retry.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_LOGGINGFAILURE :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_LOGGINGFAILURE = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type "LOGGING_FAILURE"

-- | A build step has failed.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_USERBUILDSTEP :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_USERBUILDSTEP = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type "USER_BUILD_STEP"

-- | The source fetching has failed.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_FETCHSOURCEFAILED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_FETCHSOURCEFAILED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type "FETCH_SOURCE_FAILED"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_FAILURETYPEUNSPECIFIED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHFAILED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHIMAGENOTFOUND,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_PUSHNOTAUTHORIZED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_LOGGINGFAILURE,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_USERBUILDSTEP,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type_FETCHSOURCEFAILED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo_Type
  #-}

-- | Optional. Option to specify how default logs buckets are setup.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_DEFAULTLOGSBUCKETBEHAVIORUNSPECIFIED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_DEFAULTLOGSBUCKETBEHAVIORUNSPECIFIED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior "DEFAULT_LOGS_BUCKET_BEHAVIOR_UNSPECIFIED"

-- | Bucket is located in user-owned project in the same region as the build. The builder service account must have access to create and write to Cloud Storage buckets in the build project.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_REGIONALUSEROWNEDBUCKET :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_REGIONALUSEROWNEDBUCKET = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior "REGIONAL_USER_OWNED_BUCKET"

-- | Bucket is located in a Google-owned project and is not regionalized.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_LEGACYBUCKET :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_LEGACYBUCKET = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior "LEGACY_BUCKET"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_DEFAULTLOGSBUCKETBEHAVIORUNSPECIFIED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_REGIONALUSEROWNEDBUCKET,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_LEGACYBUCKET,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
  #-}

-- | Option to define build log streaming behavior to Cloud Storage.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Service may automatically determine build log streaming behavior.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMDEFAULT :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMDEFAULT = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption "STREAM_DEFAULT"

-- | Build logs should be streamed to Cloud Storage.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMON :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMON = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption "STREAM_ON"

-- | Build logs should not be streamed to Cloud Storage; they will be written when the build is completed.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMOFF :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMOFF = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption "STREAM_OFF"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMDEFAULT,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMON,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMOFF,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
  #-}

-- | Option to specify the logging mode, which determines if and where build logs are stored.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The service determines the logging mode. The default is @LEGACY@. Do not rely on the default logging behavior as it may change in the future.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_LOGGINGUNSPECIFIED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_LOGGINGUNSPECIFIED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging "LOGGING_UNSPECIFIED"

-- | Build logs are stored in Cloud Logging and Cloud Storage.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_Legacy :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_Legacy = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging "LEGACY"

-- | Build logs are stored in Cloud Storage.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_GCSONLY :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_GCSONLY = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging "GCS_ONLY"

-- | This option is the same as CLOUD/LOGGING/ONLY.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_STACKDRIVERONLY :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_STACKDRIVERONLY = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging "STACKDRIVER_ONLY"

-- | Build logs are stored in Cloud Logging. Selecting this option will not allow <https://cloud.google.com/sdk/gcloud/reference/builds/log logs streaming>.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_CLOUDLOGGINGONLY :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_CLOUDLOGGINGONLY = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging "CLOUD_LOGGING_ONLY"

-- | Turn off all logging. No build logs will be captured.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_None :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_None = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging "NONE"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_LOGGINGUNSPECIFIED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_Legacy,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_GCSONLY,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_STACKDRIVERONLY,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_CLOUDLOGGINGONLY,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging_None,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_Logging
  #-}

-- | Compute Engine machine type on which to run the build.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Standard machine type.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_Unspecified :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_Unspecified = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType "UNSPECIFIED"

-- | Highcpu machine with 8 CPUs.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_8 :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_8 = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType "N1_HIGHCPU_8"

-- | Highcpu machine with 32 CPUs.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_32 :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_32 = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType "N1_HIGHCPU_32"

-- | Highcpu e2 machine with 8 CPUs.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_8 :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_8 = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType "E2_HIGHCPU_8"

-- | Highcpu e2 machine with 32 CPUs.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_32 :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_32 = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType "E2_HIGHCPU_32"

-- | E2 machine with 1 CPU.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2MEDIUM :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2MEDIUM = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType "E2_MEDIUM"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_Unspecified,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_8,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_32,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_8,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_32,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2MEDIUM,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_MachineType
  #-}

-- | Requested verifiability options.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not a verifiable build (the default).
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_NOTVERIFIED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_NOTVERIFIED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption "NOT_VERIFIED"

-- | Build must be verified.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_Verified :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_Verified = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption "VERIFIED"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_NOTVERIFIED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_Verified,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
  #-}

newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No hash requested.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_None :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_None = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "NONE"

-- | Use a sha256 hash.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA256 :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA256 = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "SHA256"

-- | Use a md5 hash.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_MD5 :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_MD5 = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "MD5"

-- | Dirhash of a Go module\'s source code which is then hex-encoded.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_GO_MODULE_H1 :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_GO_MODULE_H1 = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "GO_MODULE_H1"

-- | Use a sha512 hash.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA512 :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA512 = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "SHA512"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_None,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA256,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_MD5,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_GO_MODULE_H1,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA512,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
  #-}

-- | Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Fails the build if error in substitutions checks, like missing a substitution in the template or in the map.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_MUSTMATCH :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_MUSTMATCH = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption "MUST_MATCH"

-- | Do not fail the build if error in substitutions checks.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_ALLOWLOOSE :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_ALLOWLOOSE = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption "ALLOW_LOOSE"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_MUSTMATCH,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_ALLOWLOOSE,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
  #-}

-- | Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Status of the build is unknown.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_STATUSUNKNOWN :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_STATUSUNKNOWN = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "STATUS_UNKNOWN"

-- | Build has been created and is pending execution and queuing. It has not been queued.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Pending :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Pending = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "PENDING"

-- | Build or step is queued; work has not yet begun.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Queued :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Queued = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "QUEUED"

-- | Build or step is being executed.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Working :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Working = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "WORKING"

-- | Build or step finished successfully.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Success :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Success = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "SUCCESS"

-- | Build or step failed to complete successfully.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Failure :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Failure = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "FAILURE"

-- | Build or step failed due to an internal cause.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_INTERNALERROR :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_INTERNALERROR = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "INTERNAL_ERROR"

-- | Build or step took longer than was allowed.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Timeout :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Timeout = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "TIMEOUT"

-- | Build or step was canceled by a user.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Cancelled :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Cancelled = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "CANCELLED"

-- | Build was enqueued for longer than the value of @queue_ttl@.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Expired :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Expired = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status "EXPIRED"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_STATUSUNKNOWN,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Pending,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Queued,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Working,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Success,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Failure,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_INTERNALERROR,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Timeout,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Cancelled,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status_Expired,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep_Status
  #-}

-- | The priority for this warning.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority {fromContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Should not be used.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_PRIORITYUNSPECIFIED :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_PRIORITYUNSPECIFIED = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority "PRIORITY_UNSPECIFIED"

-- | e.g. deprecation warnings and alternative feature highlights.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Info :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Info = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority "INFO"

-- | e.g. automated detection of possible issues with the build.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Warning :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Warning = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority "WARNING"

-- | e.g. alerts that a feature used in the build is pending removal
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Alert :: ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Alert = ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority "ALERT"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_PRIORITYUNSPECIFIED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Info,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Warning,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority_Alert,
  ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning_Priority
  #-}

-- | The type of hash that was performed.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type = ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type {fromContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No hash requested.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_None :: ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_None = ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type "NONE"

-- | Use a sha256 hash.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_SHA256 :: ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_SHA256 = ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type "SHA256"

-- | Use a md5 hash.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_MD5 :: ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_MD5 = ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type "MD5"

-- | Dirhash of a Go module\'s source code which is then hex-encoded.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_GO_MODULE_H1 :: ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_GO_MODULE_H1 = ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type "GO_MODULE_H1"

-- | Use a sha512 hash.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_SHA512 :: ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_SHA512 = ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type "SHA512"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_None,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_SHA256,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_MD5,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_GO_MODULE_H1,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type_SHA512,
  ContaineranalysisGoogleDevtoolsCloudbuildV1Hash_Type
  #-}

-- | Optional. Option to specify the tool to fetch the source file for the build.
newtype ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher = ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher {fromContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified defaults to GSUTIL.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_SOURCEFETCHERUNSPECIFIED :: ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_SOURCEFETCHERUNSPECIFIED = ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher "SOURCE_FETCHER_UNSPECIFIED"

-- | Use the \"gsutil\" tool to download the source file.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_Gsutil :: ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_Gsutil = ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher "GSUTIL"

-- | Use the Cloud Storage Fetcher tool to download the source file.
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_GCSFETCHER :: ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
pattern ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_GCSFETCHER = ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher "GCS_FETCHER"

{-# COMPLETE
  ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_SOURCEFETCHERUNSPECIFIED,
  ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_Gsutil,
  ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_GCSFETCHER,
  ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
  #-}

-- | Platform hosting this deployment.
newtype DeploymentOccurrence_Platform = DeploymentOccurrence_Platform {fromDeploymentOccurrence_Platform :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern DeploymentOccurrence_Platform_PLATFORMUNSPECIFIED :: DeploymentOccurrence_Platform
pattern DeploymentOccurrence_Platform_PLATFORMUNSPECIFIED = DeploymentOccurrence_Platform "PLATFORM_UNSPECIFIED"

-- | Google Container Engine.
pattern DeploymentOccurrence_Platform_Gke :: DeploymentOccurrence_Platform
pattern DeploymentOccurrence_Platform_Gke = DeploymentOccurrence_Platform "GKE"

-- | Google App Engine: Flexible Environment.
pattern DeploymentOccurrence_Platform_Flex :: DeploymentOccurrence_Platform
pattern DeploymentOccurrence_Platform_Flex = DeploymentOccurrence_Platform "FLEX"

-- | Custom user-defined platform.
pattern DeploymentOccurrence_Platform_Custom :: DeploymentOccurrence_Platform
pattern DeploymentOccurrence_Platform_Custom = DeploymentOccurrence_Platform "CUSTOM"

{-# COMPLETE
  DeploymentOccurrence_Platform_PLATFORMUNSPECIFIED,
  DeploymentOccurrence_Platform_Gke,
  DeploymentOccurrence_Platform_Flex,
  DeploymentOccurrence_Platform_Custom,
  DeploymentOccurrence_Platform
  #-}

-- | Required. Immutable. The kind of analysis that is handled by this discovery.
newtype DiscoveryNote_AnalysisKind = DiscoveryNote_AnalysisKind {fromDiscoveryNote_AnalysisKind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern DiscoveryNote_AnalysisKind_NOTEKINDUNSPECIFIED :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_NOTEKINDUNSPECIFIED = DiscoveryNote_AnalysisKind "NOTE_KIND_UNSPECIFIED"

-- | The note and occurrence represent a package vulnerability.
pattern DiscoveryNote_AnalysisKind_Vulnerability :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Vulnerability = DiscoveryNote_AnalysisKind "VULNERABILITY"

-- | The note and occurrence assert build provenance.
pattern DiscoveryNote_AnalysisKind_Build :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Build = DiscoveryNote_AnalysisKind "BUILD"

-- | This represents an image basis relationship.
pattern DiscoveryNote_AnalysisKind_Image :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Image = DiscoveryNote_AnalysisKind "IMAGE"

-- | This represents a package installed via a package manager.
pattern DiscoveryNote_AnalysisKind_Package :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Package = DiscoveryNote_AnalysisKind "PACKAGE"

-- | The note and occurrence track deployment events.
pattern DiscoveryNote_AnalysisKind_Deployment :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Deployment = DiscoveryNote_AnalysisKind "DEPLOYMENT"

-- | The note and occurrence track the initial discovery status of a resource.
pattern DiscoveryNote_AnalysisKind_Discovery :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Discovery = DiscoveryNote_AnalysisKind "DISCOVERY"

-- | This represents a logical \"role\" that can attest to artifacts.
pattern DiscoveryNote_AnalysisKind_Attestation :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Attestation = DiscoveryNote_AnalysisKind "ATTESTATION"

-- | This represents an available package upgrade.
pattern DiscoveryNote_AnalysisKind_Upgrade :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Upgrade = DiscoveryNote_AnalysisKind "UPGRADE"

-- | This represents a Compliance Note
pattern DiscoveryNote_AnalysisKind_Compliance :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_Compliance = DiscoveryNote_AnalysisKind "COMPLIANCE"

-- | This represents a DSSE attestation Note
pattern DiscoveryNote_AnalysisKind_DSSEATTESTATION :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_DSSEATTESTATION = DiscoveryNote_AnalysisKind "DSSE_ATTESTATION"

-- | This represents a Vulnerability Assessment.
pattern DiscoveryNote_AnalysisKind_VULNERABILITYASSESSMENT :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_VULNERABILITYASSESSMENT = DiscoveryNote_AnalysisKind "VULNERABILITY_ASSESSMENT"

-- | This represents an SBOM Reference.
pattern DiscoveryNote_AnalysisKind_SBOMREFERENCE :: DiscoveryNote_AnalysisKind
pattern DiscoveryNote_AnalysisKind_SBOMREFERENCE = DiscoveryNote_AnalysisKind "SBOM_REFERENCE"

{-# COMPLETE
  DiscoveryNote_AnalysisKind_NOTEKINDUNSPECIFIED,
  DiscoveryNote_AnalysisKind_Vulnerability,
  DiscoveryNote_AnalysisKind_Build,
  DiscoveryNote_AnalysisKind_Image,
  DiscoveryNote_AnalysisKind_Package,
  DiscoveryNote_AnalysisKind_Deployment,
  DiscoveryNote_AnalysisKind_Discovery,
  DiscoveryNote_AnalysisKind_Attestation,
  DiscoveryNote_AnalysisKind_Upgrade,
  DiscoveryNote_AnalysisKind_Compliance,
  DiscoveryNote_AnalysisKind_DSSEATTESTATION,
  DiscoveryNote_AnalysisKind_VULNERABILITYASSESSMENT,
  DiscoveryNote_AnalysisKind_SBOMREFERENCE,
  DiscoveryNote_AnalysisKind
  #-}

-- | The status of discovery for the resource.
newtype DiscoveryOccurrence_AnalysisStatus = DiscoveryOccurrence_AnalysisStatus {fromDiscoveryOccurrence_AnalysisStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern DiscoveryOccurrence_AnalysisStatus_ANALYSISSTATUSUNSPECIFIED :: DiscoveryOccurrence_AnalysisStatus
pattern DiscoveryOccurrence_AnalysisStatus_ANALYSISSTATUSUNSPECIFIED = DiscoveryOccurrence_AnalysisStatus "ANALYSIS_STATUS_UNSPECIFIED"

-- | Resource is known but no action has been taken yet.
pattern DiscoveryOccurrence_AnalysisStatus_Pending :: DiscoveryOccurrence_AnalysisStatus
pattern DiscoveryOccurrence_AnalysisStatus_Pending = DiscoveryOccurrence_AnalysisStatus "PENDING"

-- | Resource is being analyzed.
pattern DiscoveryOccurrence_AnalysisStatus_Scanning :: DiscoveryOccurrence_AnalysisStatus
pattern DiscoveryOccurrence_AnalysisStatus_Scanning = DiscoveryOccurrence_AnalysisStatus "SCANNING"

-- | Analysis has finished successfully.
pattern DiscoveryOccurrence_AnalysisStatus_FINISHEDSUCCESS :: DiscoveryOccurrence_AnalysisStatus
pattern DiscoveryOccurrence_AnalysisStatus_FINISHEDSUCCESS = DiscoveryOccurrence_AnalysisStatus "FINISHED_SUCCESS"

-- | Analysis has completed.
pattern DiscoveryOccurrence_AnalysisStatus_Complete :: DiscoveryOccurrence_AnalysisStatus
pattern DiscoveryOccurrence_AnalysisStatus_Complete = DiscoveryOccurrence_AnalysisStatus "COMPLETE"

-- | Analysis has finished unsuccessfully, the analysis itself is in a bad state.
pattern DiscoveryOccurrence_AnalysisStatus_FINISHEDFAILED :: DiscoveryOccurrence_AnalysisStatus
pattern DiscoveryOccurrence_AnalysisStatus_FINISHEDFAILED = DiscoveryOccurrence_AnalysisStatus "FINISHED_FAILED"

-- | The resource is known not to be supported.
pattern DiscoveryOccurrence_AnalysisStatus_FINISHEDUNSUPPORTED :: DiscoveryOccurrence_AnalysisStatus
pattern DiscoveryOccurrence_AnalysisStatus_FINISHEDUNSUPPORTED = DiscoveryOccurrence_AnalysisStatus "FINISHED_UNSUPPORTED"

{-# COMPLETE
  DiscoveryOccurrence_AnalysisStatus_ANALYSISSTATUSUNSPECIFIED,
  DiscoveryOccurrence_AnalysisStatus_Pending,
  DiscoveryOccurrence_AnalysisStatus_Scanning,
  DiscoveryOccurrence_AnalysisStatus_FINISHEDSUCCESS,
  DiscoveryOccurrence_AnalysisStatus_Complete,
  DiscoveryOccurrence_AnalysisStatus_FINISHEDFAILED,
  DiscoveryOccurrence_AnalysisStatus_FINISHEDUNSUPPORTED,
  DiscoveryOccurrence_AnalysisStatus
  #-}

-- | Whether the resource is continuously analyzed.
newtype DiscoveryOccurrence_ContinuousAnalysis = DiscoveryOccurrence_ContinuousAnalysis {fromDiscoveryOccurrence_ContinuousAnalysis :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern DiscoveryOccurrence_ContinuousAnalysis_CONTINUOUSANALYSISUNSPECIFIED :: DiscoveryOccurrence_ContinuousAnalysis
pattern DiscoveryOccurrence_ContinuousAnalysis_CONTINUOUSANALYSISUNSPECIFIED = DiscoveryOccurrence_ContinuousAnalysis "CONTINUOUS_ANALYSIS_UNSPECIFIED"

-- | The resource is continuously analyzed.
pattern DiscoveryOccurrence_ContinuousAnalysis_Active :: DiscoveryOccurrence_ContinuousAnalysis
pattern DiscoveryOccurrence_ContinuousAnalysis_Active = DiscoveryOccurrence_ContinuousAnalysis "ACTIVE"

-- | The resource is ignored for continuous analysis.
pattern DiscoveryOccurrence_ContinuousAnalysis_Inactive :: DiscoveryOccurrence_ContinuousAnalysis
pattern DiscoveryOccurrence_ContinuousAnalysis_Inactive = DiscoveryOccurrence_ContinuousAnalysis "INACTIVE"

{-# COMPLETE
  DiscoveryOccurrence_ContinuousAnalysis_CONTINUOUSANALYSISUNSPECIFIED,
  DiscoveryOccurrence_ContinuousAnalysis_Active,
  DiscoveryOccurrence_ContinuousAnalysis_Inactive,
  DiscoveryOccurrence_ContinuousAnalysis
  #-}

-- | The CPU architecture for which packages in this distribution channel were built.
newtype Distribution_Architecture = Distribution_Architecture {fromDistribution_Architecture :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown architecture.
pattern Distribution_Architecture_ARCHITECTUREUNSPECIFIED :: Distribution_Architecture
pattern Distribution_Architecture_ARCHITECTUREUNSPECIFIED = Distribution_Architecture "ARCHITECTURE_UNSPECIFIED"

-- | X86 architecture.
pattern Distribution_Architecture_X86 :: Distribution_Architecture
pattern Distribution_Architecture_X86 = Distribution_Architecture "X86"

-- | X64 architecture.
pattern Distribution_Architecture_X64 :: Distribution_Architecture
pattern Distribution_Architecture_X64 = Distribution_Architecture "X64"

{-# COMPLETE
  Distribution_Architecture_ARCHITECTUREUNSPECIFIED,
  Distribution_Architecture_X86,
  Distribution_Architecture_X64,
  Distribution_Architecture
  #-}

-- | The severity for this count. SEVERITY_UNSPECIFIED indicates total across all severities.
newtype FixableTotalByDigest_Severity = FixableTotalByDigest_Severity {fromFixableTotalByDigest_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern FixableTotalByDigest_Severity_SEVERITYUNSPECIFIED :: FixableTotalByDigest_Severity
pattern FixableTotalByDigest_Severity_SEVERITYUNSPECIFIED = FixableTotalByDigest_Severity "SEVERITY_UNSPECIFIED"

-- | Minimal severity.
pattern FixableTotalByDigest_Severity_Minimal :: FixableTotalByDigest_Severity
pattern FixableTotalByDigest_Severity_Minimal = FixableTotalByDigest_Severity "MINIMAL"

-- | Low severity.
pattern FixableTotalByDigest_Severity_Low :: FixableTotalByDigest_Severity
pattern FixableTotalByDigest_Severity_Low = FixableTotalByDigest_Severity "LOW"

-- | Medium severity.
pattern FixableTotalByDigest_Severity_Medium :: FixableTotalByDigest_Severity
pattern FixableTotalByDigest_Severity_Medium = FixableTotalByDigest_Severity "MEDIUM"

-- | High severity.
pattern FixableTotalByDigest_Severity_High :: FixableTotalByDigest_Severity
pattern FixableTotalByDigest_Severity_High = FixableTotalByDigest_Severity "HIGH"

-- | Critical severity.
pattern FixableTotalByDigest_Severity_Critical :: FixableTotalByDigest_Severity
pattern FixableTotalByDigest_Severity_Critical = FixableTotalByDigest_Severity "CRITICAL"

{-# COMPLETE
  FixableTotalByDigest_Severity_SEVERITYUNSPECIFIED,
  FixableTotalByDigest_Severity_Minimal,
  FixableTotalByDigest_Severity_Low,
  FixableTotalByDigest_Severity_Medium,
  FixableTotalByDigest_Severity_High,
  FixableTotalByDigest_Severity_Critical,
  FixableTotalByDigest_Severity
  #-}

-- | The justification type for this vulnerability.
newtype Justification_JustificationType = Justification_JustificationType {fromJustification_JustificationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | JUSTIFICATION/TYPE/UNSPECIFIED.
pattern Justification_JustificationType_JUSTIFICATIONTYPEUNSPECIFIED :: Justification_JustificationType
pattern Justification_JustificationType_JUSTIFICATIONTYPEUNSPECIFIED = Justification_JustificationType "JUSTIFICATION_TYPE_UNSPECIFIED"

-- | The vulnerable component is not present in the product.
pattern Justification_JustificationType_COMPONENTNOTPRESENT :: Justification_JustificationType
pattern Justification_JustificationType_COMPONENTNOTPRESENT = Justification_JustificationType "COMPONENT_NOT_PRESENT"

-- | The vulnerable code is not present. Typically this case occurs when source code is configured or built in a way that excludes the vulnerable code.
pattern Justification_JustificationType_VULNERABLECODENOTPRESENT :: Justification_JustificationType
pattern Justification_JustificationType_VULNERABLECODENOTPRESENT = Justification_JustificationType "VULNERABLE_CODE_NOT_PRESENT"

-- | The vulnerable code can not be executed. Typically this case occurs when the product includes the vulnerable code but does not call or use the vulnerable code.
pattern Justification_JustificationType_VULNERABLECODENOTINEXECUTEPATH :: Justification_JustificationType
pattern Justification_JustificationType_VULNERABLECODENOTINEXECUTEPATH = Justification_JustificationType "VULNERABLE_CODE_NOT_IN_EXECUTE_PATH"

-- | The vulnerable code cannot be controlled by an attacker to exploit the vulnerability.
pattern Justification_JustificationType_VULNERABLECODECANNOTBECONTROLLEDBYADVERSARY :: Justification_JustificationType
pattern Justification_JustificationType_VULNERABLECODECANNOTBECONTROLLEDBYADVERSARY = Justification_JustificationType "VULNERABLE_CODE_CANNOT_BE_CONTROLLED_BY_ADVERSARY"

-- | The product includes built-in protections or features that prevent exploitation of the vulnerability. These built-in protections cannot be subverted by the attacker and cannot be configured or disabled by the user. These mitigations completely prevent exploitation based on known attack vectors.
pattern Justification_JustificationType_INLINEMITIGATIONSALREADYEXIST :: Justification_JustificationType
pattern Justification_JustificationType_INLINEMITIGATIONSALREADYEXIST = Justification_JustificationType "INLINE_MITIGATIONS_ALREADY_EXIST"

{-# COMPLETE
  Justification_JustificationType_JUSTIFICATIONTYPEUNSPECIFIED,
  Justification_JustificationType_COMPONENTNOTPRESENT,
  Justification_JustificationType_VULNERABLECODENOTPRESENT,
  Justification_JustificationType_VULNERABLECODENOTINEXECUTEPATH,
  Justification_JustificationType_VULNERABLECODECANNOTBECONTROLLEDBYADVERSARY,
  Justification_JustificationType_INLINEMITIGATIONSALREADYEXIST,
  Justification_JustificationType
  #-}

-- | Output only. The type of analysis. This field can be used as a filter in list requests.
newtype Note_Kind = Note_Kind {fromNote_Kind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern Note_Kind_NOTEKINDUNSPECIFIED :: Note_Kind
pattern Note_Kind_NOTEKINDUNSPECIFIED = Note_Kind "NOTE_KIND_UNSPECIFIED"

-- | The note and occurrence represent a package vulnerability.
pattern Note_Kind_Vulnerability :: Note_Kind
pattern Note_Kind_Vulnerability = Note_Kind "VULNERABILITY"

-- | The note and occurrence assert build provenance.
pattern Note_Kind_Build :: Note_Kind
pattern Note_Kind_Build = Note_Kind "BUILD"

-- | This represents an image basis relationship.
pattern Note_Kind_Image :: Note_Kind
pattern Note_Kind_Image = Note_Kind "IMAGE"

-- | This represents a package installed via a package manager.
pattern Note_Kind_Package :: Note_Kind
pattern Note_Kind_Package = Note_Kind "PACKAGE"

-- | The note and occurrence track deployment events.
pattern Note_Kind_Deployment :: Note_Kind
pattern Note_Kind_Deployment = Note_Kind "DEPLOYMENT"

-- | The note and occurrence track the initial discovery status of a resource.
pattern Note_Kind_Discovery :: Note_Kind
pattern Note_Kind_Discovery = Note_Kind "DISCOVERY"

-- | This represents a logical \"role\" that can attest to artifacts.
pattern Note_Kind_Attestation :: Note_Kind
pattern Note_Kind_Attestation = Note_Kind "ATTESTATION"

-- | This represents an available package upgrade.
pattern Note_Kind_Upgrade :: Note_Kind
pattern Note_Kind_Upgrade = Note_Kind "UPGRADE"

-- | This represents a Compliance Note
pattern Note_Kind_Compliance :: Note_Kind
pattern Note_Kind_Compliance = Note_Kind "COMPLIANCE"

-- | This represents a DSSE attestation Note
pattern Note_Kind_DSSEATTESTATION :: Note_Kind
pattern Note_Kind_DSSEATTESTATION = Note_Kind "DSSE_ATTESTATION"

-- | This represents a Vulnerability Assessment.
pattern Note_Kind_VULNERABILITYASSESSMENT :: Note_Kind
pattern Note_Kind_VULNERABILITYASSESSMENT = Note_Kind "VULNERABILITY_ASSESSMENT"

-- | This represents an SBOM Reference.
pattern Note_Kind_SBOMREFERENCE :: Note_Kind
pattern Note_Kind_SBOMREFERENCE = Note_Kind "SBOM_REFERENCE"

{-# COMPLETE
  Note_Kind_NOTEKINDUNSPECIFIED,
  Note_Kind_Vulnerability,
  Note_Kind_Build,
  Note_Kind_Image,
  Note_Kind_Package,
  Note_Kind_Deployment,
  Note_Kind_Discovery,
  Note_Kind_Attestation,
  Note_Kind_Upgrade,
  Note_Kind_Compliance,
  Note_Kind_DSSEATTESTATION,
  Note_Kind_VULNERABILITYASSESSMENT,
  Note_Kind_SBOMREFERENCE,
  Note_Kind
  #-}

-- | Output only. This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
newtype Occurrence_Kind = Occurrence_Kind {fromOccurrence_Kind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern Occurrence_Kind_NOTEKINDUNSPECIFIED :: Occurrence_Kind
pattern Occurrence_Kind_NOTEKINDUNSPECIFIED = Occurrence_Kind "NOTE_KIND_UNSPECIFIED"

-- | The note and occurrence represent a package vulnerability.
pattern Occurrence_Kind_Vulnerability :: Occurrence_Kind
pattern Occurrence_Kind_Vulnerability = Occurrence_Kind "VULNERABILITY"

-- | The note and occurrence assert build provenance.
pattern Occurrence_Kind_Build :: Occurrence_Kind
pattern Occurrence_Kind_Build = Occurrence_Kind "BUILD"

-- | This represents an image basis relationship.
pattern Occurrence_Kind_Image :: Occurrence_Kind
pattern Occurrence_Kind_Image = Occurrence_Kind "IMAGE"

-- | This represents a package installed via a package manager.
pattern Occurrence_Kind_Package :: Occurrence_Kind
pattern Occurrence_Kind_Package = Occurrence_Kind "PACKAGE"

-- | The note and occurrence track deployment events.
pattern Occurrence_Kind_Deployment :: Occurrence_Kind
pattern Occurrence_Kind_Deployment = Occurrence_Kind "DEPLOYMENT"

-- | The note and occurrence track the initial discovery status of a resource.
pattern Occurrence_Kind_Discovery :: Occurrence_Kind
pattern Occurrence_Kind_Discovery = Occurrence_Kind "DISCOVERY"

-- | This represents a logical \"role\" that can attest to artifacts.
pattern Occurrence_Kind_Attestation :: Occurrence_Kind
pattern Occurrence_Kind_Attestation = Occurrence_Kind "ATTESTATION"

-- | This represents an available package upgrade.
pattern Occurrence_Kind_Upgrade :: Occurrence_Kind
pattern Occurrence_Kind_Upgrade = Occurrence_Kind "UPGRADE"

-- | This represents a Compliance Note
pattern Occurrence_Kind_Compliance :: Occurrence_Kind
pattern Occurrence_Kind_Compliance = Occurrence_Kind "COMPLIANCE"

-- | This represents a DSSE attestation Note
pattern Occurrence_Kind_DSSEATTESTATION :: Occurrence_Kind
pattern Occurrence_Kind_DSSEATTESTATION = Occurrence_Kind "DSSE_ATTESTATION"

-- | This represents a Vulnerability Assessment.
pattern Occurrence_Kind_VULNERABILITYASSESSMENT :: Occurrence_Kind
pattern Occurrence_Kind_VULNERABILITYASSESSMENT = Occurrence_Kind "VULNERABILITY_ASSESSMENT"

-- | This represents an SBOM Reference.
pattern Occurrence_Kind_SBOMREFERENCE :: Occurrence_Kind
pattern Occurrence_Kind_SBOMREFERENCE = Occurrence_Kind "SBOM_REFERENCE"

{-# COMPLETE
  Occurrence_Kind_NOTEKINDUNSPECIFIED,
  Occurrence_Kind_Vulnerability,
  Occurrence_Kind_Build,
  Occurrence_Kind_Image,
  Occurrence_Kind_Package,
  Occurrence_Kind_Deployment,
  Occurrence_Kind_Discovery,
  Occurrence_Kind_Attestation,
  Occurrence_Kind_Upgrade,
  Occurrence_Kind_Compliance,
  Occurrence_Kind_DSSEATTESTATION,
  Occurrence_Kind_VULNERABILITYASSESSMENT,
  Occurrence_Kind_SBOMREFERENCE,
  Occurrence_Kind
  #-}

-- | Output only. The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
newtype PackageIssue_EffectiveSeverity = PackageIssue_EffectiveSeverity {fromPackageIssue_EffectiveSeverity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern PackageIssue_EffectiveSeverity_SEVERITYUNSPECIFIED :: PackageIssue_EffectiveSeverity
pattern PackageIssue_EffectiveSeverity_SEVERITYUNSPECIFIED = PackageIssue_EffectiveSeverity "SEVERITY_UNSPECIFIED"

-- | Minimal severity.
pattern PackageIssue_EffectiveSeverity_Minimal :: PackageIssue_EffectiveSeverity
pattern PackageIssue_EffectiveSeverity_Minimal = PackageIssue_EffectiveSeverity "MINIMAL"

-- | Low severity.
pattern PackageIssue_EffectiveSeverity_Low :: PackageIssue_EffectiveSeverity
pattern PackageIssue_EffectiveSeverity_Low = PackageIssue_EffectiveSeverity "LOW"

-- | Medium severity.
pattern PackageIssue_EffectiveSeverity_Medium :: PackageIssue_EffectiveSeverity
pattern PackageIssue_EffectiveSeverity_Medium = PackageIssue_EffectiveSeverity "MEDIUM"

-- | High severity.
pattern PackageIssue_EffectiveSeverity_High :: PackageIssue_EffectiveSeverity
pattern PackageIssue_EffectiveSeverity_High = PackageIssue_EffectiveSeverity "HIGH"

-- | Critical severity.
pattern PackageIssue_EffectiveSeverity_Critical :: PackageIssue_EffectiveSeverity
pattern PackageIssue_EffectiveSeverity_Critical = PackageIssue_EffectiveSeverity "CRITICAL"

{-# COMPLETE
  PackageIssue_EffectiveSeverity_SEVERITYUNSPECIFIED,
  PackageIssue_EffectiveSeverity_Minimal,
  PackageIssue_EffectiveSeverity_Low,
  PackageIssue_EffectiveSeverity_Medium,
  PackageIssue_EffectiveSeverity_High,
  PackageIssue_EffectiveSeverity_Critical,
  PackageIssue_EffectiveSeverity
  #-}

-- | The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
newtype PackageNote_Architecture = PackageNote_Architecture {fromPackageNote_Architecture :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown architecture.
pattern PackageNote_Architecture_ARCHITECTUREUNSPECIFIED :: PackageNote_Architecture
pattern PackageNote_Architecture_ARCHITECTUREUNSPECIFIED = PackageNote_Architecture "ARCHITECTURE_UNSPECIFIED"

-- | X86 architecture.
pattern PackageNote_Architecture_X86 :: PackageNote_Architecture
pattern PackageNote_Architecture_X86 = PackageNote_Architecture "X86"

-- | X64 architecture.
pattern PackageNote_Architecture_X64 :: PackageNote_Architecture
pattern PackageNote_Architecture_X64 = PackageNote_Architecture "X64"

{-# COMPLETE
  PackageNote_Architecture_ARCHITECTUREUNSPECIFIED,
  PackageNote_Architecture_X86,
  PackageNote_Architecture_X64,
  PackageNote_Architecture
  #-}

-- | Output only. The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
newtype PackageOccurrence_Architecture = PackageOccurrence_Architecture {fromPackageOccurrence_Architecture :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown architecture.
pattern PackageOccurrence_Architecture_ARCHITECTUREUNSPECIFIED :: PackageOccurrence_Architecture
pattern PackageOccurrence_Architecture_ARCHITECTUREUNSPECIFIED = PackageOccurrence_Architecture "ARCHITECTURE_UNSPECIFIED"

-- | X86 architecture.
pattern PackageOccurrence_Architecture_X86 :: PackageOccurrence_Architecture
pattern PackageOccurrence_Architecture_X86 = PackageOccurrence_Architecture "X86"

-- | X64 architecture.
pattern PackageOccurrence_Architecture_X64 :: PackageOccurrence_Architecture
pattern PackageOccurrence_Architecture_X64 = PackageOccurrence_Architecture "X64"

{-# COMPLETE
  PackageOccurrence_Architecture_ARCHITECTUREUNSPECIFIED,
  PackageOccurrence_Architecture_X86,
  PackageOccurrence_Architecture_X64,
  PackageOccurrence_Architecture
  #-}

-- | The type of remediation that can be applied.
newtype Remediation_RemediationType = Remediation_RemediationType {fromRemediation_RemediationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No remediation type specified.
pattern Remediation_RemediationType_REMEDIATIONTYPEUNSPECIFIED :: Remediation_RemediationType
pattern Remediation_RemediationType_REMEDIATIONTYPEUNSPECIFIED = Remediation_RemediationType "REMEDIATION_TYPE_UNSPECIFIED"

-- | A MITIGATION is available.
pattern Remediation_RemediationType_Mitigation :: Remediation_RemediationType
pattern Remediation_RemediationType_Mitigation = Remediation_RemediationType "MITIGATION"

-- | No fix is planned.
pattern Remediation_RemediationType_NOFIXPLANNED :: Remediation_RemediationType
pattern Remediation_RemediationType_NOFIXPLANNED = Remediation_RemediationType "NO_FIX_PLANNED"

-- | Not available.
pattern Remediation_RemediationType_NONEAVAILABLE :: Remediation_RemediationType
pattern Remediation_RemediationType_NONEAVAILABLE = Remediation_RemediationType "NONE_AVAILABLE"

-- | A vendor fix is available.
pattern Remediation_RemediationType_VENDORFIX :: Remediation_RemediationType
pattern Remediation_RemediationType_VENDORFIX = Remediation_RemediationType "VENDOR_FIX"

-- | A workaround is available.
pattern Remediation_RemediationType_Workaround :: Remediation_RemediationType
pattern Remediation_RemediationType_Workaround = Remediation_RemediationType "WORKAROUND"

{-# COMPLETE
  Remediation_RemediationType_REMEDIATIONTYPEUNSPECIFIED,
  Remediation_RemediationType_Mitigation,
  Remediation_RemediationType_NOFIXPLANNED,
  Remediation_RemediationType_NONEAVAILABLE,
  Remediation_RemediationType_VENDORFIX,
  Remediation_RemediationType_Workaround,
  Remediation_RemediationType
  #-}

-- | The progress of the SBOM generation.
newtype SBOMStatus_SbomState = SBOMStatus_SbomState {fromSBOMStatus_SbomState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default unknown state.
pattern SBOMStatus_SbomState_SBOMSTATEUNSPECIFIED :: SBOMStatus_SbomState
pattern SBOMStatus_SbomState_SBOMSTATEUNSPECIFIED = SBOMStatus_SbomState "SBOM_STATE_UNSPECIFIED"

-- | SBOM scanning is pending.
pattern SBOMStatus_SbomState_Pending :: SBOMStatus_SbomState
pattern SBOMStatus_SbomState_Pending = SBOMStatus_SbomState "PENDING"

-- | SBOM scanning has completed.
pattern SBOMStatus_SbomState_Complete :: SBOMStatus_SbomState
pattern SBOMStatus_SbomState_Complete = SBOMStatus_SbomState "COMPLETE"

{-# COMPLETE
  SBOMStatus_SbomState_SBOMSTATEUNSPECIFIED,
  SBOMStatus_SbomState_Pending,
  SBOMStatus_SbomState_Complete,
  SBOMStatus_SbomState
  #-}

-- | Required. Distinguishes between sentinel MIN\/MAX versions and normal versions.
newtype Version_Kind = Version_Kind {fromVersion_Kind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern Version_Kind_VERSIONKINDUNSPECIFIED :: Version_Kind
pattern Version_Kind_VERSIONKINDUNSPECIFIED = Version_Kind "VERSION_KIND_UNSPECIFIED"

-- | A standard package version.
pattern Version_Kind_Normal :: Version_Kind
pattern Version_Kind_Normal = Version_Kind "NORMAL"

-- | A special version representing negative infinity.
pattern Version_Kind_Minimum :: Version_Kind
pattern Version_Kind_Minimum = Version_Kind "MINIMUM"

-- | A special version representing positive infinity.
pattern Version_Kind_Maximum :: Version_Kind
pattern Version_Kind_Maximum = Version_Kind "MAXIMUM"

{-# COMPLETE
  Version_Kind_VERSIONKINDUNSPECIFIED,
  Version_Kind_Normal,
  Version_Kind_Minimum,
  Version_Kind_Maximum,
  Version_Kind
  #-}

-- | Provides the state of this Vulnerability assessment.
newtype VexAssessment_State = VexAssessment_State {fromVexAssessment_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No state is specified.
pattern VexAssessment_State_STATEUNSPECIFIED :: VexAssessment_State
pattern VexAssessment_State_STATEUNSPECIFIED = VexAssessment_State "STATE_UNSPECIFIED"

-- | This product is known to be affected by this vulnerability.
pattern VexAssessment_State_Affected :: VexAssessment_State
pattern VexAssessment_State_Affected = VexAssessment_State "AFFECTED"

-- | This product is known to be not affected by this vulnerability.
pattern VexAssessment_State_NOTAFFECTED :: VexAssessment_State
pattern VexAssessment_State_NOTAFFECTED = VexAssessment_State "NOT_AFFECTED"

-- | This product contains a fix for this vulnerability.
pattern VexAssessment_State_Fixed :: VexAssessment_State
pattern VexAssessment_State_Fixed = VexAssessment_State "FIXED"

-- | It is not known yet whether these versions are or are not affected by the vulnerability. However, it is still under investigation.
pattern VexAssessment_State_UNDERINVESTIGATION :: VexAssessment_State
pattern VexAssessment_State_UNDERINVESTIGATION = VexAssessment_State "UNDER_INVESTIGATION"

{-# COMPLETE
  VexAssessment_State_STATEUNSPECIFIED,
  VexAssessment_State_Affected,
  VexAssessment_State_NOTAFFECTED,
  VexAssessment_State_Fixed,
  VexAssessment_State_UNDERINVESTIGATION,
  VexAssessment_State
  #-}

-- | CVSS version used to populate cvss_score and severity.
newtype VulnerabilityNote_CvssVersion = VulnerabilityNote_CvssVersion {fromVulnerabilityNote_CvssVersion :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VulnerabilityNote_CvssVersion_CVSSVERSIONUNSPECIFIED :: VulnerabilityNote_CvssVersion
pattern VulnerabilityNote_CvssVersion_CVSSVERSIONUNSPECIFIED = VulnerabilityNote_CvssVersion "CVSS_VERSION_UNSPECIFIED"

pattern VulnerabilityNote_CvssVersion_CVSS_VERSION_2 :: VulnerabilityNote_CvssVersion
pattern VulnerabilityNote_CvssVersion_CVSS_VERSION_2 = VulnerabilityNote_CvssVersion "CVSS_VERSION_2"

pattern VulnerabilityNote_CvssVersion_CVSS_VERSION_3 :: VulnerabilityNote_CvssVersion
pattern VulnerabilityNote_CvssVersion_CVSS_VERSION_3 = VulnerabilityNote_CvssVersion "CVSS_VERSION_3"

{-# COMPLETE
  VulnerabilityNote_CvssVersion_CVSSVERSIONUNSPECIFIED,
  VulnerabilityNote_CvssVersion_CVSS_VERSION_2,
  VulnerabilityNote_CvssVersion_CVSS_VERSION_3,
  VulnerabilityNote_CvssVersion
  #-}

-- | The note provider assigned severity of this vulnerability.
newtype VulnerabilityNote_Severity = VulnerabilityNote_Severity {fromVulnerabilityNote_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern VulnerabilityNote_Severity_SEVERITYUNSPECIFIED :: VulnerabilityNote_Severity
pattern VulnerabilityNote_Severity_SEVERITYUNSPECIFIED = VulnerabilityNote_Severity "SEVERITY_UNSPECIFIED"

-- | Minimal severity.
pattern VulnerabilityNote_Severity_Minimal :: VulnerabilityNote_Severity
pattern VulnerabilityNote_Severity_Minimal = VulnerabilityNote_Severity "MINIMAL"

-- | Low severity.
pattern VulnerabilityNote_Severity_Low :: VulnerabilityNote_Severity
pattern VulnerabilityNote_Severity_Low = VulnerabilityNote_Severity "LOW"

-- | Medium severity.
pattern VulnerabilityNote_Severity_Medium :: VulnerabilityNote_Severity
pattern VulnerabilityNote_Severity_Medium = VulnerabilityNote_Severity "MEDIUM"

-- | High severity.
pattern VulnerabilityNote_Severity_High :: VulnerabilityNote_Severity
pattern VulnerabilityNote_Severity_High = VulnerabilityNote_Severity "HIGH"

-- | Critical severity.
pattern VulnerabilityNote_Severity_Critical :: VulnerabilityNote_Severity
pattern VulnerabilityNote_Severity_Critical = VulnerabilityNote_Severity "CRITICAL"

{-# COMPLETE
  VulnerabilityNote_Severity_SEVERITYUNSPECIFIED,
  VulnerabilityNote_Severity_Minimal,
  VulnerabilityNote_Severity_Low,
  VulnerabilityNote_Severity_Medium,
  VulnerabilityNote_Severity_High,
  VulnerabilityNote_Severity_Critical,
  VulnerabilityNote_Severity
  #-}

-- | Output only. CVSS version used to populate cvss_score and severity.
newtype VulnerabilityOccurrence_CvssVersion = VulnerabilityOccurrence_CvssVersion {fromVulnerabilityOccurrence_CvssVersion :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern VulnerabilityOccurrence_CvssVersion_CVSSVERSIONUNSPECIFIED :: VulnerabilityOccurrence_CvssVersion
pattern VulnerabilityOccurrence_CvssVersion_CVSSVERSIONUNSPECIFIED = VulnerabilityOccurrence_CvssVersion "CVSS_VERSION_UNSPECIFIED"

pattern VulnerabilityOccurrence_CvssVersion_CVSS_VERSION_2 :: VulnerabilityOccurrence_CvssVersion
pattern VulnerabilityOccurrence_CvssVersion_CVSS_VERSION_2 = VulnerabilityOccurrence_CvssVersion "CVSS_VERSION_2"

pattern VulnerabilityOccurrence_CvssVersion_CVSS_VERSION_3 :: VulnerabilityOccurrence_CvssVersion
pattern VulnerabilityOccurrence_CvssVersion_CVSS_VERSION_3 = VulnerabilityOccurrence_CvssVersion "CVSS_VERSION_3"

{-# COMPLETE
  VulnerabilityOccurrence_CvssVersion_CVSSVERSIONUNSPECIFIED,
  VulnerabilityOccurrence_CvssVersion_CVSS_VERSION_2,
  VulnerabilityOccurrence_CvssVersion_CVSS_VERSION_3,
  VulnerabilityOccurrence_CvssVersion
  #-}

-- | The distro assigned severity for this vulnerability when it is available, otherwise this is the note provider assigned severity. When there are multiple PackageIssues for this vulnerability, they can have different effective severities because some might be provided by the distro while others are provided by the language ecosystem for a language pack. For this reason, it is advised to use the effective severity on the PackageIssue level. In the case where multiple PackageIssues have differing effective severities, this field should be the highest severity for any of the PackageIssues.
newtype VulnerabilityOccurrence_EffectiveSeverity = VulnerabilityOccurrence_EffectiveSeverity {fromVulnerabilityOccurrence_EffectiveSeverity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern VulnerabilityOccurrence_EffectiveSeverity_SEVERITYUNSPECIFIED :: VulnerabilityOccurrence_EffectiveSeverity
pattern VulnerabilityOccurrence_EffectiveSeverity_SEVERITYUNSPECIFIED = VulnerabilityOccurrence_EffectiveSeverity "SEVERITY_UNSPECIFIED"

-- | Minimal severity.
pattern VulnerabilityOccurrence_EffectiveSeverity_Minimal :: VulnerabilityOccurrence_EffectiveSeverity
pattern VulnerabilityOccurrence_EffectiveSeverity_Minimal = VulnerabilityOccurrence_EffectiveSeverity "MINIMAL"

-- | Low severity.
pattern VulnerabilityOccurrence_EffectiveSeverity_Low :: VulnerabilityOccurrence_EffectiveSeverity
pattern VulnerabilityOccurrence_EffectiveSeverity_Low = VulnerabilityOccurrence_EffectiveSeverity "LOW"

-- | Medium severity.
pattern VulnerabilityOccurrence_EffectiveSeverity_Medium :: VulnerabilityOccurrence_EffectiveSeverity
pattern VulnerabilityOccurrence_EffectiveSeverity_Medium = VulnerabilityOccurrence_EffectiveSeverity "MEDIUM"

-- | High severity.
pattern VulnerabilityOccurrence_EffectiveSeverity_High :: VulnerabilityOccurrence_EffectiveSeverity
pattern VulnerabilityOccurrence_EffectiveSeverity_High = VulnerabilityOccurrence_EffectiveSeverity "HIGH"

-- | Critical severity.
pattern VulnerabilityOccurrence_EffectiveSeverity_Critical :: VulnerabilityOccurrence_EffectiveSeverity
pattern VulnerabilityOccurrence_EffectiveSeverity_Critical = VulnerabilityOccurrence_EffectiveSeverity "CRITICAL"

{-# COMPLETE
  VulnerabilityOccurrence_EffectiveSeverity_SEVERITYUNSPECIFIED,
  VulnerabilityOccurrence_EffectiveSeverity_Minimal,
  VulnerabilityOccurrence_EffectiveSeverity_Low,
  VulnerabilityOccurrence_EffectiveSeverity_Medium,
  VulnerabilityOccurrence_EffectiveSeverity_High,
  VulnerabilityOccurrence_EffectiveSeverity_Critical,
  VulnerabilityOccurrence_EffectiveSeverity
  #-}

-- | Output only. The note provider assigned severity of this vulnerability.
newtype VulnerabilityOccurrence_Severity = VulnerabilityOccurrence_Severity {fromVulnerabilityOccurrence_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown.
pattern VulnerabilityOccurrence_Severity_SEVERITYUNSPECIFIED :: VulnerabilityOccurrence_Severity
pattern VulnerabilityOccurrence_Severity_SEVERITYUNSPECIFIED = VulnerabilityOccurrence_Severity "SEVERITY_UNSPECIFIED"

-- | Minimal severity.
pattern VulnerabilityOccurrence_Severity_Minimal :: VulnerabilityOccurrence_Severity
pattern VulnerabilityOccurrence_Severity_Minimal = VulnerabilityOccurrence_Severity "MINIMAL"

-- | Low severity.
pattern VulnerabilityOccurrence_Severity_Low :: VulnerabilityOccurrence_Severity
pattern VulnerabilityOccurrence_Severity_Low = VulnerabilityOccurrence_Severity "LOW"

-- | Medium severity.
pattern VulnerabilityOccurrence_Severity_Medium :: VulnerabilityOccurrence_Severity
pattern VulnerabilityOccurrence_Severity_Medium = VulnerabilityOccurrence_Severity "MEDIUM"

-- | High severity.
pattern VulnerabilityOccurrence_Severity_High :: VulnerabilityOccurrence_Severity
pattern VulnerabilityOccurrence_Severity_High = VulnerabilityOccurrence_Severity "HIGH"

-- | Critical severity.
pattern VulnerabilityOccurrence_Severity_Critical :: VulnerabilityOccurrence_Severity
pattern VulnerabilityOccurrence_Severity_Critical = VulnerabilityOccurrence_Severity "CRITICAL"

{-# COMPLETE
  VulnerabilityOccurrence_Severity_SEVERITYUNSPECIFIED,
  VulnerabilityOccurrence_Severity_Minimal,
  VulnerabilityOccurrence_Severity_Low,
  VulnerabilityOccurrence_Severity_Medium,
  VulnerabilityOccurrence_Severity_High,
  VulnerabilityOccurrence_Severity_Critical,
  VulnerabilityOccurrence_Severity
  #-}
