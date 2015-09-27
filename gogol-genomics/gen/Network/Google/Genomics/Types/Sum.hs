{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types.Sum where

import           Network.Google.Prelude

-- | The type of annotations contained within this set.
data AnnotationSetType
    = ASTGene
      -- ^ @GENE@
    | ASTGeneric
      -- ^ @GENERIC@
    | ASTTranscript
      -- ^ @TRANSCRIPT@
    | ASTVariant
      -- ^ @VARIANT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AnnotationSetType

instance FromText AnnotationSetType where
    fromText = \case
        "GENE" -> Just ASTGene
        "GENERIC" -> Just ASTGeneric
        "TRANSCRIPT" -> Just ASTTranscript
        "VARIANT" -> Just ASTVariant
        _ -> Nothing

instance ToText AnnotationSetType where
    toText = \case
        ASTGene -> "GENE"
        ASTGeneric -> "GENERIC"
        ASTTranscript -> "TRANSCRIPT"
        ASTVariant -> "VARIANT"

instance FromJSON AnnotationSetType where
    parseJSON = parseJSONText "AnnotationSetType"

instance ToJSON AnnotationSetType where
    toJSON = toJSONText

-- | The data type for this annotation. Must match the containing annotation
-- set\'s type.
data AnnotationType
    = ATGene
      -- ^ @GENE@
    | ATGeneric
      -- ^ @GENERIC@
    | ATTranscript
      -- ^ @TRANSCRIPT@
    | ATVariant
      -- ^ @VARIANT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AnnotationType

instance FromText AnnotationType where
    fromText = \case
        "GENE" -> Just ATGene
        "GENERIC" -> Just ATGeneric
        "TRANSCRIPT" -> Just ATTranscript
        "VARIANT" -> Just ATVariant
        _ -> Nothing

instance ToText AnnotationType where
    toText = \case
        ATGene -> "GENE"
        ATGeneric -> "GENERIC"
        ATTranscript -> "TRANSCRIPT"
        ATVariant -> "VARIANT"

instance FromJSON AnnotationType where
    parseJSON = parseJSONText "AnnotationType"

instance ToJSON AnnotationType where
    toJSON = toJSONText

data CigarUnitOperation
    = CUOAlignmentMatch
      -- ^ @ALIGNMENT_MATCH@
    | CUOClipHard
      -- ^ @CLIP_HARD@
    | CUOClipSoft
      -- ^ @CLIP_SOFT@
    | CUODelete
      -- ^ @DELETE@
    | CUOInsert
      -- ^ @INSERT@
    | CUOOperationUnspecified
      -- ^ @OPERATION_UNSPECIFIED@
    | CUOPad
      -- ^ @PAD@
    | CUOSequenceMatch
      -- ^ @SEQUENCE_MATCH@
    | CUOSequenceMismatch
      -- ^ @SEQUENCE_MISMATCH@
    | CUOSkip
      -- ^ @SKIP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CigarUnitOperation

instance FromText CigarUnitOperation where
    fromText = \case
        "ALIGNMENT_MATCH" -> Just CUOAlignmentMatch
        "CLIP_HARD" -> Just CUOClipHard
        "CLIP_SOFT" -> Just CUOClipSoft
        "DELETE" -> Just CUODelete
        "INSERT" -> Just CUOInsert
        "OPERATION_UNSPECIFIED" -> Just CUOOperationUnspecified
        "PAD" -> Just CUOPad
        "SEQUENCE_MATCH" -> Just CUOSequenceMatch
        "SEQUENCE_MISMATCH" -> Just CUOSequenceMismatch
        "SKIP" -> Just CUOSkip
        _ -> Nothing

instance ToText CigarUnitOperation where
    toText = \case
        CUOAlignmentMatch -> "ALIGNMENT_MATCH"
        CUOClipHard -> "CLIP_HARD"
        CUOClipSoft -> "CLIP_SOFT"
        CUODelete -> "DELETE"
        CUOInsert -> "INSERT"
        CUOOperationUnspecified -> "OPERATION_UNSPECIFIED"
        CUOPad -> "PAD"
        CUOSequenceMatch -> "SEQUENCE_MATCH"
        CUOSequenceMismatch -> "SEQUENCE_MISMATCH"
        CUOSkip -> "SKIP"

instance FromJSON CigarUnitOperation where
    parseJSON = parseJSONText "CigarUnitOperation"

instance ToJSON CigarUnitOperation where
    toJSON = toJSONText

-- | The format for the exported data.
data ExportVariantSetRequestFormat
    = EVSRFBigquery
      -- ^ @BIGQUERY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ExportVariantSetRequestFormat

instance FromText ExportVariantSetRequestFormat where
    fromText = \case
        "BIGQUERY" -> Just EVSRFBigquery
        _ -> Nothing

instance ToText ExportVariantSetRequestFormat where
    toText = \case
        EVSRFBigquery -> "BIGQUERY"

instance FromJSON ExportVariantSetRequestFormat where
    parseJSON = parseJSONText "ExportVariantSetRequestFormat"

instance ToJSON ExportVariantSetRequestFormat where
    toJSON = toJSONText

-- | The partition strategy describes how read groups are partitioned into
-- read group sets.
data ImportReadGroupSetsRequestPartitionStrategy
    = IRGSRPSMergeAll
      -- ^ @MERGE_ALL@
    | IRGSRPSPerFilePerSample
      -- ^ @PER_FILE_PER_SAMPLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImportReadGroupSetsRequestPartitionStrategy

instance FromText ImportReadGroupSetsRequestPartitionStrategy where
    fromText = \case
        "MERGE_ALL" -> Just IRGSRPSMergeAll
        "PER_FILE_PER_SAMPLE" -> Just IRGSRPSPerFilePerSample
        _ -> Nothing

instance ToText ImportReadGroupSetsRequestPartitionStrategy where
    toText = \case
        IRGSRPSMergeAll -> "MERGE_ALL"
        IRGSRPSPerFilePerSample -> "PER_FILE_PER_SAMPLE"

instance FromJSON ImportReadGroupSetsRequestPartitionStrategy where
    parseJSON = parseJSONText "ImportReadGroupSetsRequestPartitionStrategy"

instance ToJSON ImportReadGroupSetsRequestPartitionStrategy where
    toJSON = toJSONText

-- | The format of the variant data being imported. If unspecified, defaults
-- to to \"VCF\".
data ImportVariantsRequestFormat
    = IVRFCompleteGenomics
      -- ^ @COMPLETE_GENOMICS@
    | IVRFVcf
      -- ^ @VCF@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImportVariantsRequestFormat

instance FromText ImportVariantsRequestFormat where
    fromText = \case
        "COMPLETE_GENOMICS" -> Just IVRFCompleteGenomics
        "VCF" -> Just IVRFVcf
        _ -> Nothing

instance ToText ImportVariantsRequestFormat where
    toText = \case
        IVRFCompleteGenomics -> "COMPLETE_GENOMICS"
        IVRFVcf -> "VCF"

instance FromJSON ImportVariantsRequestFormat where
    parseJSON = parseJSONText "ImportVariantsRequestFormat"

instance ToJSON ImportVariantsRequestFormat where
    toJSON = toJSONText

-- | The original request type.
data JobRequestType
    = JRTAlignReadsets
      -- ^ @ALIGN_READSETS@
    | JRTCallReadsets
      -- ^ @CALL_READSETS@
    | JRTExperimentalCreateJob
      -- ^ @EXPERIMENTAL_CREATE_JOB@
    | JRTExportReadsets
      -- ^ @EXPORT_READSETS@
    | JRTExportVariants
      -- ^ @EXPORT_VARIANTS@
    | JRTImportReadsets
      -- ^ @IMPORT_READSETS@
    | JRTImportVariants
      -- ^ @IMPORT_VARIANTS@
    | JRTUnknownType
      -- ^ @UNKNOWN_TYPE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobRequestType

instance FromText JobRequestType where
    fromText = \case
        "ALIGN_READSETS" -> Just JRTAlignReadsets
        "CALL_READSETS" -> Just JRTCallReadsets
        "EXPERIMENTAL_CREATE_JOB" -> Just JRTExperimentalCreateJob
        "EXPORT_READSETS" -> Just JRTExportReadsets
        "EXPORT_VARIANTS" -> Just JRTExportVariants
        "IMPORT_READSETS" -> Just JRTImportReadsets
        "IMPORT_VARIANTS" -> Just JRTImportVariants
        "UNKNOWN_TYPE" -> Just JRTUnknownType
        _ -> Nothing

instance ToText JobRequestType where
    toText = \case
        JRTAlignReadsets -> "ALIGN_READSETS"
        JRTCallReadsets -> "CALL_READSETS"
        JRTExperimentalCreateJob -> "EXPERIMENTAL_CREATE_JOB"
        JRTExportReadsets -> "EXPORT_READSETS"
        JRTExportVariants -> "EXPORT_VARIANTS"
        JRTImportReadsets -> "IMPORT_READSETS"
        JRTImportVariants -> "IMPORT_VARIANTS"
        JRTUnknownType -> "UNKNOWN_TYPE"

instance FromJSON JobRequestType where
    parseJSON = parseJSONText "JobRequestType"

instance ToJSON JobRequestType where
    toJSON = toJSONText

-- | The status of this job.
data JobStatus
    = JSCanceled
      -- ^ @CANCELED@
    | JSFailure
      -- ^ @FAILURE@
    | JSNew
      -- ^ @NEW@
    | JSPending
      -- ^ @PENDING@
    | JSRunning
      -- ^ @RUNNING@
    | JSSuccess
      -- ^ @SUCCESS@
    | JSUnknownStatus
      -- ^ @UNKNOWN_STATUS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobStatus

instance FromText JobStatus where
    fromText = \case
        "CANCELED" -> Just JSCanceled
        "FAILURE" -> Just JSFailure
        "NEW" -> Just JSNew
        "PENDING" -> Just JSPending
        "RUNNING" -> Just JSRunning
        "SUCCESS" -> Just JSSuccess
        "UNKNOWN_STATUS" -> Just JSUnknownStatus
        _ -> Nothing

instance ToText JobStatus where
    toText = \case
        JSCanceled -> "CANCELED"
        JSFailure -> "FAILURE"
        JSNew -> "NEW"
        JSPending -> "PENDING"
        JSRunning -> "RUNNING"
        JSSuccess -> "SUCCESS"
        JSUnknownStatus -> "UNKNOWN_STATUS"

instance FromJSON JobStatus where
    parseJSON = parseJSONText "JobStatus"

instance ToJSON JobStatus where
    toJSON = toJSONText

-- | The type of data. Possible types include: Integer, Float, Flag,
-- Character, and String.
data MetadataType
    = MTCharacter
      -- ^ @CHARACTER@
    | MTFlag
      -- ^ @FLAG@
    | MTFloat
      -- ^ @FLOAT@
    | MTInteger
      -- ^ @INTEGER@
    | MTString
      -- ^ @STRING@
    | MTUnknownType
      -- ^ @UNKNOWN_TYPE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MetadataType

instance FromText MetadataType where
    fromText = \case
        "CHARACTER" -> Just MTCharacter
        "FLAG" -> Just MTFlag
        "FLOAT" -> Just MTFloat
        "INTEGER" -> Just MTInteger
        "STRING" -> Just MTString
        "UNKNOWN_TYPE" -> Just MTUnknownType
        _ -> Nothing

instance ToText MetadataType where
    toText = \case
        MTCharacter -> "CHARACTER"
        MTFlag -> "FLAG"
        MTFloat -> "FLOAT"
        MTInteger -> "INTEGER"
        MTString -> "STRING"
        MTUnknownType -> "UNKNOWN_TYPE"

instance FromJSON MetadataType where
    parseJSON = parseJSONText "MetadataType"

instance ToJSON MetadataType where
    toJSON = toJSONText

data SearchAnnotationSetsRequestItemTypes
    = SASRITGene
      -- ^ @GENE@
    | SASRITGeneric
      -- ^ @GENERIC@
    | SASRITTranscript
      -- ^ @TRANSCRIPT@
    | SASRITVariant
      -- ^ @VARIANT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchAnnotationSetsRequestItemTypes

instance FromText SearchAnnotationSetsRequestItemTypes where
    fromText = \case
        "GENE" -> Just SASRITGene
        "GENERIC" -> Just SASRITGeneric
        "TRANSCRIPT" -> Just SASRITTranscript
        "VARIANT" -> Just SASRITVariant
        _ -> Nothing

instance ToText SearchAnnotationSetsRequestItemTypes where
    toText = \case
        SASRITGene -> "GENE"
        SASRITGeneric -> "GENERIC"
        SASRITTranscript -> "TRANSCRIPT"
        SASRITVariant -> "VARIANT"

instance FromJSON SearchAnnotationSetsRequestItemTypes where
    parseJSON = parseJSONText "SearchAnnotationSetsRequestItemTypes"

instance ToJSON SearchAnnotationSetsRequestItemTypes where
    toJSON = toJSONText

data SearchJobsRequestItemStatus
    = SJRISCanceled
      -- ^ @CANCELED@
    | SJRISFailure
      -- ^ @FAILURE@
    | SJRISNew
      -- ^ @NEW@
    | SJRISPending
      -- ^ @PENDING@
    | SJRISRunning
      -- ^ @RUNNING@
    | SJRISSuccess
      -- ^ @SUCCESS@
    | SJRISUnknownStatus
      -- ^ @UNKNOWN_STATUS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchJobsRequestItemStatus

instance FromText SearchJobsRequestItemStatus where
    fromText = \case
        "CANCELED" -> Just SJRISCanceled
        "FAILURE" -> Just SJRISFailure
        "NEW" -> Just SJRISNew
        "PENDING" -> Just SJRISPending
        "RUNNING" -> Just SJRISRunning
        "SUCCESS" -> Just SJRISSuccess
        "UNKNOWN_STATUS" -> Just SJRISUnknownStatus
        _ -> Nothing

instance ToText SearchJobsRequestItemStatus where
    toText = \case
        SJRISCanceled -> "CANCELED"
        SJRISFailure -> "FAILURE"
        SJRISNew -> "NEW"
        SJRISPending -> "PENDING"
        SJRISRunning -> "RUNNING"
        SJRISSuccess -> "SUCCESS"
        SJRISUnknownStatus -> "UNKNOWN_STATUS"

instance FromJSON SearchJobsRequestItemStatus where
    parseJSON = parseJSONText "SearchJobsRequestItemStatus"

instance ToJSON SearchJobsRequestItemStatus where
    toJSON = toJSONText

-- | Describes the clinical significance of a variant. It is adapted from the
-- ClinVar controlled vocabulary for clinical significance described at:
-- http:\/\/www.ncbi.nlm.nih.gov\/clinvar\/docs\/clinsig\/
data VariantAnnotationClinicalSignificance
    = VACSAssociation
      -- ^ @ASSOCIATION@
    | VACSBenign
      -- ^ @BENIGN@
    | VACSClinicalSignificanceUnspecified
      -- ^ @CLINICAL_SIGNIFICANCE_UNSPECIFIED@
    | VACSConfersSensitivity
      -- ^ @CONFERS_SENSITIVITY@
    | VACSDrugResponse
      -- ^ @DRUG_RESPONSE@
    | VACSHistocompatibility
      -- ^ @HISTOCOMPATIBILITY@
    | VACSLikelyBenign
      -- ^ @LIKELY_BENIGN@
    | VACSLikelyPathogenic
      -- ^ @LIKELY_PATHOGENIC@
    | VACSMultipleReported
      -- ^ @MULTIPLE_REPORTED@
    | VACSOther
      -- ^ @OTHER@
    | VACSPathogenic
      -- ^ @PATHOGENIC@
    | VACSProtective
      -- ^ @PROTECTIVE@
    | VACSRiskFactor
      -- ^ @RISK_FACTOR@
    | VACSUncertain
      -- ^ @UNCERTAIN@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VariantAnnotationClinicalSignificance

instance FromText VariantAnnotationClinicalSignificance where
    fromText = \case
        "ASSOCIATION" -> Just VACSAssociation
        "BENIGN" -> Just VACSBenign
        "CLINICAL_SIGNIFICANCE_UNSPECIFIED" -> Just VACSClinicalSignificanceUnspecified
        "CONFERS_SENSITIVITY" -> Just VACSConfersSensitivity
        "DRUG_RESPONSE" -> Just VACSDrugResponse
        "HISTOCOMPATIBILITY" -> Just VACSHistocompatibility
        "LIKELY_BENIGN" -> Just VACSLikelyBenign
        "LIKELY_PATHOGENIC" -> Just VACSLikelyPathogenic
        "MULTIPLE_REPORTED" -> Just VACSMultipleReported
        "OTHER" -> Just VACSOther
        "PATHOGENIC" -> Just VACSPathogenic
        "PROTECTIVE" -> Just VACSProtective
        "RISK_FACTOR" -> Just VACSRiskFactor
        "UNCERTAIN" -> Just VACSUncertain
        _ -> Nothing

instance ToText VariantAnnotationClinicalSignificance where
    toText = \case
        VACSAssociation -> "ASSOCIATION"
        VACSBenign -> "BENIGN"
        VACSClinicalSignificanceUnspecified -> "CLINICAL_SIGNIFICANCE_UNSPECIFIED"
        VACSConfersSensitivity -> "CONFERS_SENSITIVITY"
        VACSDrugResponse -> "DRUG_RESPONSE"
        VACSHistocompatibility -> "HISTOCOMPATIBILITY"
        VACSLikelyBenign -> "LIKELY_BENIGN"
        VACSLikelyPathogenic -> "LIKELY_PATHOGENIC"
        VACSMultipleReported -> "MULTIPLE_REPORTED"
        VACSOther -> "OTHER"
        VACSPathogenic -> "PATHOGENIC"
        VACSProtective -> "PROTECTIVE"
        VACSRiskFactor -> "RISK_FACTOR"
        VACSUncertain -> "UNCERTAIN"

instance FromJSON VariantAnnotationClinicalSignificance where
    parseJSON = parseJSONText "VariantAnnotationClinicalSignificance"

instance ToJSON VariantAnnotationClinicalSignificance where
    toJSON = toJSONText

-- | Effect of the variant on the coding sequence.
data VariantAnnotationEffect
    = VAEEffectUnspecified
      -- ^ @EFFECT_UNSPECIFIED@
    | VAEFrameshift
      -- ^ @FRAMESHIFT@
    | VAEFramePreservingIndel
      -- ^ @FRAME_PRESERVING_INDEL@
    | VAENonsynonymousSnp
      -- ^ @NONSYNONYMOUS_SNP@
    | VAEOther
      -- ^ @OTHER@
    | VAESpliceSiteDisruption
      -- ^ @SPLICE_SITE_DISRUPTION@
    | VAEStopGain
      -- ^ @STOP_GAIN@
    | VAEStopLoss
      -- ^ @STOP_LOSS@
    | VAESynonymousSnp
      -- ^ @SYNONYMOUS_SNP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VariantAnnotationEffect

instance FromText VariantAnnotationEffect where
    fromText = \case
        "EFFECT_UNSPECIFIED" -> Just VAEEffectUnspecified
        "FRAMESHIFT" -> Just VAEFrameshift
        "FRAME_PRESERVING_INDEL" -> Just VAEFramePreservingIndel
        "NONSYNONYMOUS_SNP" -> Just VAENonsynonymousSnp
        "OTHER" -> Just VAEOther
        "SPLICE_SITE_DISRUPTION" -> Just VAESpliceSiteDisruption
        "STOP_GAIN" -> Just VAEStopGain
        "STOP_LOSS" -> Just VAEStopLoss
        "SYNONYMOUS_SNP" -> Just VAESynonymousSnp
        _ -> Nothing

instance ToText VariantAnnotationEffect where
    toText = \case
        VAEEffectUnspecified -> "EFFECT_UNSPECIFIED"
        VAEFrameshift -> "FRAMESHIFT"
        VAEFramePreservingIndel -> "FRAME_PRESERVING_INDEL"
        VAENonsynonymousSnp -> "NONSYNONYMOUS_SNP"
        VAEOther -> "OTHER"
        VAESpliceSiteDisruption -> "SPLICE_SITE_DISRUPTION"
        VAEStopGain -> "STOP_GAIN"
        VAEStopLoss -> "STOP_LOSS"
        VAESynonymousSnp -> "SYNONYMOUS_SNP"

instance FromJSON VariantAnnotationEffect where
    parseJSON = parseJSONText "VariantAnnotationEffect"

instance ToJSON VariantAnnotationEffect where
    toJSON = toJSONText

-- | Type has been adapted from ClinVar\'s list of variant types.
data VariantAnnotationType
    = VATCnv
      -- ^ @CNV@
    | VATDeletion
      -- ^ @DELETION@
    | VATInsertion
      -- ^ @INSERTION@
    | VATOther
      -- ^ @OTHER@
    | VATSnp
      -- ^ @SNP@
    | VATStructural
      -- ^ @STRUCTURAL@
    | VATSubstitution
      -- ^ @SUBSTITUTION@
    | VATTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VariantAnnotationType

instance FromText VariantAnnotationType where
    fromText = \case
        "CNV" -> Just VATCnv
        "DELETION" -> Just VATDeletion
        "INSERTION" -> Just VATInsertion
        "OTHER" -> Just VATOther
        "SNP" -> Just VATSnp
        "STRUCTURAL" -> Just VATStructural
        "SUBSTITUTION" -> Just VATSubstitution
        "TYPE_UNSPECIFIED" -> Just VATTypeUnspecified
        _ -> Nothing

instance ToText VariantAnnotationType where
    toText = \case
        VATCnv -> "CNV"
        VATDeletion -> "DELETION"
        VATInsertion -> "INSERTION"
        VATOther -> "OTHER"
        VATSnp -> "SNP"
        VATStructural -> "STRUCTURAL"
        VATSubstitution -> "SUBSTITUTION"
        VATTypeUnspecified -> "TYPE_UNSPECIFIED"

instance FromJSON VariantAnnotationType where
    parseJSON = parseJSONText "VariantAnnotationType"

instance ToJSON VariantAnnotationType where
    toJSON = toJSONText
