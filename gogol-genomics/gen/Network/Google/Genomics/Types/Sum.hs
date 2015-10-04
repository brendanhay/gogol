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

-- | Effect of the variant on the coding sequence.
data Effect
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

instance Hashable Effect

instance FromText Effect where
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

instance ToText Effect where
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

instance FromJSON Effect where
    parseJSON = parseJSONText "Effect"

instance ToJSON Effect where
    toJSON = toJSONText

data Operation
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

instance Hashable Operation

instance FromText Operation where
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

instance ToText Operation where
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

instance FromJSON Operation where
    parseJSON = parseJSONText "Operation"

instance ToJSON Operation where
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

-- | Describes the clinical significance of a variant. It is adapted from the
-- ClinVar controlled vocabulary for clinical significance described at:
-- http:\/\/www.ncbi.nlm.nih.gov\/clinvar\/docs\/clinsig\/
data ClinicalSignificance
    = CSAssociation
      -- ^ @ASSOCIATION@
    | CSBenign
      -- ^ @BENIGN@
    | CSClinicalSignificanceUnspecified
      -- ^ @CLINICAL_SIGNIFICANCE_UNSPECIFIED@
    | CSConfersSensitivity
      -- ^ @CONFERS_SENSITIVITY@
    | CSDrugResponse
      -- ^ @DRUG_RESPONSE@
    | CSHistocompatibility
      -- ^ @HISTOCOMPATIBILITY@
    | CSLikelyBenign
      -- ^ @LIKELY_BENIGN@
    | CSLikelyPathogenic
      -- ^ @LIKELY_PATHOGENIC@
    | CSMultipleReported
      -- ^ @MULTIPLE_REPORTED@
    | CSOther
      -- ^ @OTHER@
    | CSPathogenic
      -- ^ @PATHOGENIC@
    | CSProtective
      -- ^ @PROTECTIVE@
    | CSRiskFactor
      -- ^ @RISK_FACTOR@
    | CSUncertain
      -- ^ @UNCERTAIN@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ClinicalSignificance

instance FromText ClinicalSignificance where
    fromText = \case
        "ASSOCIATION" -> Just CSAssociation
        "BENIGN" -> Just CSBenign
        "CLINICAL_SIGNIFICANCE_UNSPECIFIED" -> Just CSClinicalSignificanceUnspecified
        "CONFERS_SENSITIVITY" -> Just CSConfersSensitivity
        "DRUG_RESPONSE" -> Just CSDrugResponse
        "HISTOCOMPATIBILITY" -> Just CSHistocompatibility
        "LIKELY_BENIGN" -> Just CSLikelyBenign
        "LIKELY_PATHOGENIC" -> Just CSLikelyPathogenic
        "MULTIPLE_REPORTED" -> Just CSMultipleReported
        "OTHER" -> Just CSOther
        "PATHOGENIC" -> Just CSPathogenic
        "PROTECTIVE" -> Just CSProtective
        "RISK_FACTOR" -> Just CSRiskFactor
        "UNCERTAIN" -> Just CSUncertain
        _ -> Nothing

instance ToText ClinicalSignificance where
    toText = \case
        CSAssociation -> "ASSOCIATION"
        CSBenign -> "BENIGN"
        CSClinicalSignificanceUnspecified -> "CLINICAL_SIGNIFICANCE_UNSPECIFIED"
        CSConfersSensitivity -> "CONFERS_SENSITIVITY"
        CSDrugResponse -> "DRUG_RESPONSE"
        CSHistocompatibility -> "HISTOCOMPATIBILITY"
        CSLikelyBenign -> "LIKELY_BENIGN"
        CSLikelyPathogenic -> "LIKELY_PATHOGENIC"
        CSMultipleReported -> "MULTIPLE_REPORTED"
        CSOther -> "OTHER"
        CSPathogenic -> "PATHOGENIC"
        CSProtective -> "PROTECTIVE"
        CSRiskFactor -> "RISK_FACTOR"
        CSUncertain -> "UNCERTAIN"

instance FromJSON ClinicalSignificance where
    parseJSON = parseJSONText "ClinicalSignificance"

instance ToJSON ClinicalSignificance where
    toJSON = toJSONText

-- | The format for the exported data.
data Format
    = Bigquery
      -- ^ @BIGQUERY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Format

instance FromText Format where
    fromText = \case
        "BIGQUERY" -> Just Bigquery
        _ -> Nothing

instance ToText Format where
    toText = \case
        Bigquery -> "BIGQUERY"

instance FromJSON Format where
    parseJSON = parseJSONText "Format"

instance ToJSON Format where
    toJSON = toJSONText

data TypesItem
    = TIGene
      -- ^ @GENE@
    | TIGeneric
      -- ^ @GENERIC@
    | TITranscript
      -- ^ @TRANSCRIPT@
    | TIVariant
      -- ^ @VARIANT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TypesItem

instance FromText TypesItem where
    fromText = \case
        "GENE" -> Just TIGene
        "GENERIC" -> Just TIGeneric
        "TRANSCRIPT" -> Just TITranscript
        "VARIANT" -> Just TIVariant
        _ -> Nothing

instance ToText TypesItem where
    toText = \case
        TIGene -> "GENE"
        TIGeneric -> "GENERIC"
        TITranscript -> "TRANSCRIPT"
        TIVariant -> "VARIANT"

instance FromJSON TypesItem where
    parseJSON = parseJSONText "TypesItem"

instance ToJSON TypesItem where
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

-- | The data type for this annotation. Must match the containing annotation
-- set\'s type.
data Type
    = TGene
      -- ^ @GENE@
    | TGeneric
      -- ^ @GENERIC@
    | TTranscript
      -- ^ @TRANSCRIPT@
    | TVariant
      -- ^ @VARIANT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Type

instance FromText Type where
    fromText = \case
        "GENE" -> Just TGene
        "GENERIC" -> Just TGeneric
        "TRANSCRIPT" -> Just TTranscript
        "VARIANT" -> Just TVariant
        _ -> Nothing

instance ToText Type where
    toText = \case
        TGene -> "GENE"
        TGeneric -> "GENERIC"
        TTranscript -> "TRANSCRIPT"
        TVariant -> "VARIANT"

instance FromJSON Type where
    parseJSON = parseJSONText "Type"

instance ToJSON Type where
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

-- | The partition strategy describes how read groups are partitioned into
-- read group sets.
data PartitionStrategy
    = MergeAll
      -- ^ @MERGE_ALL@
    | PerFilePerSample
      -- ^ @PER_FILE_PER_SAMPLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PartitionStrategy

instance FromText PartitionStrategy where
    fromText = \case
        "MERGE_ALL" -> Just MergeAll
        "PER_FILE_PER_SAMPLE" -> Just PerFilePerSample
        _ -> Nothing

instance ToText PartitionStrategy where
    toText = \case
        MergeAll -> "MERGE_ALL"
        PerFilePerSample -> "PER_FILE_PER_SAMPLE"

instance FromJSON PartitionStrategy where
    parseJSON = parseJSONText "PartitionStrategy"

instance ToJSON PartitionStrategy where
    toJSON = toJSONText
