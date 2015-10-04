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

data SearchAnnotationSetsRequestTypesItem
    = SASRTIGene
      -- ^ @GENE@
    | SASRTIGeneric
      -- ^ @GENERIC@
    | SASRTITranscript
      -- ^ @TRANSCRIPT@
    | SASRTIVariant
      -- ^ @VARIANT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchAnnotationSetsRequestTypesItem

instance FromText SearchAnnotationSetsRequestTypesItem where
    fromText = \case
        "GENE" -> Just SASRTIGene
        "GENERIC" -> Just SASRTIGeneric
        "TRANSCRIPT" -> Just SASRTITranscript
        "VARIANT" -> Just SASRTIVariant
        _ -> Nothing

instance ToText SearchAnnotationSetsRequestTypesItem where
    toText = \case
        SASRTIGene -> "GENE"
        SASRTIGeneric -> "GENERIC"
        SASRTITranscript -> "TRANSCRIPT"
        SASRTIVariant -> "VARIANT"

instance FromJSON SearchAnnotationSetsRequestTypesItem where
    parseJSON = parseJSONText "SearchAnnotationSetsRequestTypesItem"

instance ToJSON SearchAnnotationSetsRequestTypesItem where
    toJSON = toJSONText

-- | Effect of the variant on the coding sequence.
data VariantAnnotationEffect
    = EffectUnspecified
      -- ^ @EFFECT_UNSPECIFIED@
    | Frameshift
      -- ^ @FRAMESHIFT@
    | FramePreservingIndel
      -- ^ @FRAME_PRESERVING_INDEL@
    | NonsynonymousSnp
      -- ^ @NONSYNONYMOUS_SNP@
    | Other
      -- ^ @OTHER@
    | SpliceSiteDisruption
      -- ^ @SPLICE_SITE_DISRUPTION@
    | StopGain
      -- ^ @STOP_GAIN@
    | StopLoss
      -- ^ @STOP_LOSS@
    | SynonymousSnp
      -- ^ @SYNONYMOUS_SNP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VariantAnnotationEffect

instance FromText VariantAnnotationEffect where
    fromText = \case
        "EFFECT_UNSPECIFIED" -> Just EffectUnspecified
        "FRAMESHIFT" -> Just Frameshift
        "FRAME_PRESERVING_INDEL" -> Just FramePreservingIndel
        "NONSYNONYMOUS_SNP" -> Just NonsynonymousSnp
        "OTHER" -> Just Other
        "SPLICE_SITE_DISRUPTION" -> Just SpliceSiteDisruption
        "STOP_GAIN" -> Just StopGain
        "STOP_LOSS" -> Just StopLoss
        "SYNONYMOUS_SNP" -> Just SynonymousSnp
        _ -> Nothing

instance ToText VariantAnnotationEffect where
    toText = \case
        EffectUnspecified -> "EFFECT_UNSPECIFIED"
        Frameshift -> "FRAMESHIFT"
        FramePreservingIndel -> "FRAME_PRESERVING_INDEL"
        NonsynonymousSnp -> "NONSYNONYMOUS_SNP"
        Other -> "OTHER"
        SpliceSiteDisruption -> "SPLICE_SITE_DISRUPTION"
        StopGain -> "STOP_GAIN"
        StopLoss -> "STOP_LOSS"
        SynonymousSnp -> "SYNONYMOUS_SNP"

instance FromJSON VariantAnnotationEffect where
    parseJSON = parseJSONText "VariantAnnotationEffect"

instance ToJSON VariantAnnotationEffect where
    toJSON = toJSONText

-- | The type of data. Possible types include: Integer, Float, Flag,
-- Character, and String.
data MetadataType
    = Character
      -- ^ @CHARACTER@
    | Flag
      -- ^ @FLAG@
    | Float
      -- ^ @FLOAT@
    | Integer
      -- ^ @INTEGER@
    | String
      -- ^ @STRING@
    | UnknownType
      -- ^ @UNKNOWN_TYPE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MetadataType

instance FromText MetadataType where
    fromText = \case
        "CHARACTER" -> Just Character
        "FLAG" -> Just Flag
        "FLOAT" -> Just Float
        "INTEGER" -> Just Integer
        "STRING" -> Just String
        "UNKNOWN_TYPE" -> Just UnknownType
        _ -> Nothing

instance ToText MetadataType where
    toText = \case
        Character -> "CHARACTER"
        Flag -> "FLAG"
        Float -> "FLOAT"
        Integer -> "INTEGER"
        String -> "STRING"
        UnknownType -> "UNKNOWN_TYPE"

instance FromJSON MetadataType where
    parseJSON = parseJSONText "MetadataType"

instance ToJSON MetadataType where
    toJSON = toJSONText

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

-- | The partition strategy describes how read groups are partitioned into
-- read group sets.
data ImportReadGroupSetsRequestPartitionStrategy
    = MergeAll
      -- ^ @MERGE_ALL@
    | PerFilePerSample
      -- ^ @PER_FILE_PER_SAMPLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImportReadGroupSetsRequestPartitionStrategy

instance FromText ImportReadGroupSetsRequestPartitionStrategy where
    fromText = \case
        "MERGE_ALL" -> Just MergeAll
        "PER_FILE_PER_SAMPLE" -> Just PerFilePerSample
        _ -> Nothing

instance ToText ImportReadGroupSetsRequestPartitionStrategy where
    toText = \case
        MergeAll -> "MERGE_ALL"
        PerFilePerSample -> "PER_FILE_PER_SAMPLE"

instance FromJSON ImportReadGroupSetsRequestPartitionStrategy where
    parseJSON = parseJSONText "ImportReadGroupSetsRequestPartitionStrategy"

instance ToJSON ImportReadGroupSetsRequestPartitionStrategy where
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

data SearchJobsRequestStatusItem
    = Canceled
      -- ^ @CANCELED@
    | Failure
      -- ^ @FAILURE@
    | New
      -- ^ @NEW@
    | Pending
      -- ^ @PENDING@
    | Running
      -- ^ @RUNNING@
    | Success
      -- ^ @SUCCESS@
    | UnknownStatus
      -- ^ @UNKNOWN_STATUS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SearchJobsRequestStatusItem

instance FromText SearchJobsRequestStatusItem where
    fromText = \case
        "CANCELED" -> Just Canceled
        "FAILURE" -> Just Failure
        "NEW" -> Just New
        "PENDING" -> Just Pending
        "RUNNING" -> Just Running
        "SUCCESS" -> Just Success
        "UNKNOWN_STATUS" -> Just UnknownStatus
        _ -> Nothing

instance ToText SearchJobsRequestStatusItem where
    toText = \case
        Canceled -> "CANCELED"
        Failure -> "FAILURE"
        New -> "NEW"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Success -> "SUCCESS"
        UnknownStatus -> "UNKNOWN_STATUS"

instance FromJSON SearchJobsRequestStatusItem where
    parseJSON = parseJSONText "SearchJobsRequestStatusItem"

instance ToJSON SearchJobsRequestStatusItem where
    toJSON = toJSONText

data CigarUnitOperation
    = AlignmentMatch
      -- ^ @ALIGNMENT_MATCH@
    | ClipHard
      -- ^ @CLIP_HARD@
    | ClipSoft
      -- ^ @CLIP_SOFT@
    | Delete
      -- ^ @DELETE@
    | Insert
      -- ^ @INSERT@
    | OperationUnspecified
      -- ^ @OPERATION_UNSPECIFIED@
    | Pad
      -- ^ @PAD@
    | SequenceMatch
      -- ^ @SEQUENCE_MATCH@
    | SequenceMismatch
      -- ^ @SEQUENCE_MISMATCH@
    | Skip
      -- ^ @SKIP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CigarUnitOperation

instance FromText CigarUnitOperation where
    fromText = \case
        "ALIGNMENT_MATCH" -> Just AlignmentMatch
        "CLIP_HARD" -> Just ClipHard
        "CLIP_SOFT" -> Just ClipSoft
        "DELETE" -> Just Delete
        "INSERT" -> Just Insert
        "OPERATION_UNSPECIFIED" -> Just OperationUnspecified
        "PAD" -> Just Pad
        "SEQUENCE_MATCH" -> Just SequenceMatch
        "SEQUENCE_MISMATCH" -> Just SequenceMismatch
        "SKIP" -> Just Skip
        _ -> Nothing

instance ToText CigarUnitOperation where
    toText = \case
        AlignmentMatch -> "ALIGNMENT_MATCH"
        ClipHard -> "CLIP_HARD"
        ClipSoft -> "CLIP_SOFT"
        Delete -> "DELETE"
        Insert -> "INSERT"
        OperationUnspecified -> "OPERATION_UNSPECIFIED"
        Pad -> "PAD"
        SequenceMatch -> "SEQUENCE_MATCH"
        SequenceMismatch -> "SEQUENCE_MISMATCH"
        Skip -> "SKIP"

instance FromJSON CigarUnitOperation where
    parseJSON = parseJSONText "CigarUnitOperation"

instance ToJSON CigarUnitOperation where
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

-- | The format of the variant data being imported. If unspecified, defaults
-- to to \"VCF\".
data ImportVariantsRequestFormat
    = CompleteGenomics
      -- ^ @COMPLETE_GENOMICS@
    | Vcf
      -- ^ @VCF@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImportVariantsRequestFormat

instance FromText ImportVariantsRequestFormat where
    fromText = \case
        "COMPLETE_GENOMICS" -> Just CompleteGenomics
        "VCF" -> Just Vcf
        _ -> Nothing

instance ToText ImportVariantsRequestFormat where
    toText = \case
        CompleteGenomics -> "COMPLETE_GENOMICS"
        Vcf -> "VCF"

instance FromJSON ImportVariantsRequestFormat where
    parseJSON = parseJSONText "ImportVariantsRequestFormat"

instance ToJSON ImportVariantsRequestFormat where
    toJSON = toJSONText

-- | The format for the exported data.
data ExportVariantSetRequestFormat
    = Bigquery
      -- ^ @BIGQUERY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ExportVariantSetRequestFormat

instance FromText ExportVariantSetRequestFormat where
    fromText = \case
        "BIGQUERY" -> Just Bigquery
        _ -> Nothing

instance ToText ExportVariantSetRequestFormat where
    toText = \case
        Bigquery -> "BIGQUERY"

instance FromJSON ExportVariantSetRequestFormat where
    parseJSON = parseJSONText "ExportVariantSetRequestFormat"

instance ToJSON ExportVariantSetRequestFormat where
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
