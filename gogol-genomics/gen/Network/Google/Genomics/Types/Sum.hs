{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types.Sum where

import           Network.Google.Prelude

-- | Effect of the variant on the coding sequence.
data VariantAnnotationEffect
    = EffectUnspecified
      -- ^ @EFFECT_UNSPECIFIED@
    | EffectOther
      -- ^ @EFFECT_OTHER@
      -- \`EFFECT_OTHER\` should be used when no other Effect will suffice.
    | Frameshift
      -- ^ @FRAMESHIFT@
      -- \`FRAMESHIFT\` indicates a mutation in which the insertion or deletion
      -- of nucleotides resulted in a frameshift change.
    | FramePreservingIndel
      -- ^ @FRAME_PRESERVING_INDEL@
      -- \`FRAME_PRESERVING_INDEL\` indicates a mutation in which a multiple of
      -- three nucleotides has been inserted or deleted, resulting in no change
      -- to the reading frame of the coding sequence.
    | SynonymousSnp
      -- ^ @SYNONYMOUS_SNP@
      -- \`SYNONYMOUS_SNP\` indicates a single nucleotide polymorphism mutation
      -- that results in no amino acid change.
    | NonsynonymousSnp
      -- ^ @NONSYNONYMOUS_SNP@
      -- \`NONSYNONYMOUS_SNP\` indicates a single nucleotide polymorphism
      -- mutation that results in an amino acid change.
    | StopGain
      -- ^ @STOP_GAIN@
      -- \`STOP_GAIN\` indicates a mutation that leads to the creation of a stop
      -- codon at the variant site. Frameshift mutations creating downstream stop
      -- codons do not count as \`STOP_GAIN\`.
    | StopLoss
      -- ^ @STOP_LOSS@
      -- \`STOP_LOSS\` indicates a mutation that eliminates a stop codon at the
      -- variant site.
    | SpliceSiteDisruption
      -- ^ @SPLICE_SITE_DISRUPTION@
      -- \`SPLICE_SITE_DISRUPTION\` indicates that this variant is found in a
      -- splice site for the associated transcript, and alters the normal
      -- splicing pattern.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VariantAnnotationEffect

instance FromHttpApiData VariantAnnotationEffect where
    parseQueryParam = \case
        "EFFECT_UNSPECIFIED" -> Right EffectUnspecified
        "EFFECT_OTHER" -> Right EffectOther
        "FRAMESHIFT" -> Right Frameshift
        "FRAME_PRESERVING_INDEL" -> Right FramePreservingIndel
        "SYNONYMOUS_SNP" -> Right SynonymousSnp
        "NONSYNONYMOUS_SNP" -> Right NonsynonymousSnp
        "STOP_GAIN" -> Right StopGain
        "STOP_LOSS" -> Right StopLoss
        "SPLICE_SITE_DISRUPTION" -> Right SpliceSiteDisruption
        x -> Left ("Unable to parse VariantAnnotationEffect from: " <> x)

instance ToHttpApiData VariantAnnotationEffect where
    toQueryParam = \case
        EffectUnspecified -> "EFFECT_UNSPECIFIED"
        EffectOther -> "EFFECT_OTHER"
        Frameshift -> "FRAMESHIFT"
        FramePreservingIndel -> "FRAME_PRESERVING_INDEL"
        SynonymousSnp -> "SYNONYMOUS_SNP"
        NonsynonymousSnp -> "NONSYNONYMOUS_SNP"
        StopGain -> "STOP_GAIN"
        StopLoss -> "STOP_LOSS"
        SpliceSiteDisruption -> "SPLICE_SITE_DISRUPTION"

instance FromJSON VariantAnnotationEffect where
    parseJSON = parseJSONText "VariantAnnotationEffect"

instance ToJSON VariantAnnotationEffect where
    toJSON = toJSONText

-- | The type of annotations contained within this set.
data AnnotationSetType
    = ASTAnnotationTypeUnspecified
      -- ^ @ANNOTATION_TYPE_UNSPECIFIED@
    | ASTGeneric
      -- ^ @GENERIC@
      -- A \`GENERIC\` annotation type should be used when no other annotation
      -- type will suffice. This represents an untyped annotation of the
      -- reference genome.
    | ASTVariant
      -- ^ @VARIANT@
      -- A \`VARIANT\` annotation type.
    | ASTGene
      -- ^ @GENE@
      -- A \`GENE\` annotation type represents the existence of a gene at the
      -- associated reference coordinates. The start coordinate is typically the
      -- gene\'s transcription start site and the end is typically the end of the
      -- gene\'s last exon.
    | ASTTranscript
      -- ^ @TRANSCRIPT@
      -- A \`TRANSCRIPT\` annotation type represents the assertion that a
      -- particular region of the reference genome may be transcribed as RNA.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnnotationSetType

instance FromHttpApiData AnnotationSetType where
    parseQueryParam = \case
        "ANNOTATION_TYPE_UNSPECIFIED" -> Right ASTAnnotationTypeUnspecified
        "GENERIC" -> Right ASTGeneric
        "VARIANT" -> Right ASTVariant
        "GENE" -> Right ASTGene
        "TRANSCRIPT" -> Right ASTTranscript
        x -> Left ("Unable to parse AnnotationSetType from: " <> x)

instance ToHttpApiData AnnotationSetType where
    toQueryParam = \case
        ASTAnnotationTypeUnspecified -> "ANNOTATION_TYPE_UNSPECIFIED"
        ASTGeneric -> "GENERIC"
        ASTVariant -> "VARIANT"
        ASTGene -> "GENE"
        ASTTranscript -> "TRANSCRIPT"

instance FromJSON AnnotationSetType where
    parseJSON = parseJSONText "AnnotationSetType"

instance ToJSON AnnotationSetType where
    toJSON = toJSONText

-- | Describes the clinical significance of a variant. It is adapted from the
-- ClinVar controlled vocabulary for clinical significance described at:
-- http:\/\/www.ncbi.nlm.nih.gov\/clinvar\/docs\/clinsig\/
data VariantAnnotationClinicalSignificance
    = ClinicalSignificanceUnspecified
      -- ^ @CLINICAL_SIGNIFICANCE_UNSPECIFIED@
    | ClinicalSignificanceOther
      -- ^ @CLINICAL_SIGNIFICANCE_OTHER@
      -- \`OTHER\` should be used when no other clinical significance value will
      -- suffice.
    | Uncertain
      -- ^ @UNCERTAIN@
    | Benign
      -- ^ @BENIGN@
    | LikelyBenign
      -- ^ @LIKELY_BENIGN@
    | LikelyPathogenic
      -- ^ @LIKELY_PATHOGENIC@
    | Pathogenic
      -- ^ @PATHOGENIC@
    | DrugResponse
      -- ^ @DRUG_RESPONSE@
    | Histocompatibility
      -- ^ @HISTOCOMPATIBILITY@
    | ConfersSensitivity
      -- ^ @CONFERS_SENSITIVITY@
    | RiskFactor
      -- ^ @RISK_FACTOR@
    | Association
      -- ^ @ASSOCIATION@
    | Protective
      -- ^ @PROTECTIVE@
    | MultipleReported
      -- ^ @MULTIPLE_REPORTED@
      -- \`MULTIPLE_REPORTED\` should be used when multiple clinical signficances
      -- are reported for a variant. The original clinical significance values
      -- may be provided in the \`info\` field.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VariantAnnotationClinicalSignificance

instance FromHttpApiData VariantAnnotationClinicalSignificance where
    parseQueryParam = \case
        "CLINICAL_SIGNIFICANCE_UNSPECIFIED" -> Right ClinicalSignificanceUnspecified
        "CLINICAL_SIGNIFICANCE_OTHER" -> Right ClinicalSignificanceOther
        "UNCERTAIN" -> Right Uncertain
        "BENIGN" -> Right Benign
        "LIKELY_BENIGN" -> Right LikelyBenign
        "LIKELY_PATHOGENIC" -> Right LikelyPathogenic
        "PATHOGENIC" -> Right Pathogenic
        "DRUG_RESPONSE" -> Right DrugResponse
        "HISTOCOMPATIBILITY" -> Right Histocompatibility
        "CONFERS_SENSITIVITY" -> Right ConfersSensitivity
        "RISK_FACTOR" -> Right RiskFactor
        "ASSOCIATION" -> Right Association
        "PROTECTIVE" -> Right Protective
        "MULTIPLE_REPORTED" -> Right MultipleReported
        x -> Left ("Unable to parse VariantAnnotationClinicalSignificance from: " <> x)

instance ToHttpApiData VariantAnnotationClinicalSignificance where
    toQueryParam = \case
        ClinicalSignificanceUnspecified -> "CLINICAL_SIGNIFICANCE_UNSPECIFIED"
        ClinicalSignificanceOther -> "CLINICAL_SIGNIFICANCE_OTHER"
        Uncertain -> "UNCERTAIN"
        Benign -> "BENIGN"
        LikelyBenign -> "LIKELY_BENIGN"
        LikelyPathogenic -> "LIKELY_PATHOGENIC"
        Pathogenic -> "PATHOGENIC"
        DrugResponse -> "DRUG_RESPONSE"
        Histocompatibility -> "HISTOCOMPATIBILITY"
        ConfersSensitivity -> "CONFERS_SENSITIVITY"
        RiskFactor -> "RISK_FACTOR"
        Association -> "ASSOCIATION"
        Protective -> "PROTECTIVE"
        MultipleReported -> "MULTIPLE_REPORTED"

instance FromJSON VariantAnnotationClinicalSignificance where
    parseJSON = parseJSONText "VariantAnnotationClinicalSignificance"

instance ToJSON VariantAnnotationClinicalSignificance where
    toJSON = toJSONText

-- | The partition strategy describes how read groups are partitioned into
-- read group sets.
data ImportReadGroupSetsRequestPartitionStrategy
    = PartitionStrategyUnspecified
      -- ^ @PARTITION_STRATEGY_UNSPECIFIED@
    | PerFilePerSample
      -- ^ @PER_FILE_PER_SAMPLE@
      -- In most cases, this strategy yields one read group set per file. This is
      -- the default behavior. Allocate one read group set per file per sample.
      -- For BAM files, read groups are considered to share a sample if they have
      -- identical sample names. Furthermore, all reads for each file which do
      -- not belong to a read group, if any, will be grouped into a single read
      -- group set per-file.
    | MergeAll
      -- ^ @MERGE_ALL@
      -- Includes all read groups in all imported files into a single read group
      -- set. Requires that the headers for all imported files are equivalent.
      -- All reads which do not belong to a read group, if any, will be grouped
      -- into a separate read group set.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportReadGroupSetsRequestPartitionStrategy

instance FromHttpApiData ImportReadGroupSetsRequestPartitionStrategy where
    parseQueryParam = \case
        "PARTITION_STRATEGY_UNSPECIFIED" -> Right PartitionStrategyUnspecified
        "PER_FILE_PER_SAMPLE" -> Right PerFilePerSample
        "MERGE_ALL" -> Right MergeAll
        x -> Left ("Unable to parse ImportReadGroupSetsRequestPartitionStrategy from: " <> x)

instance ToHttpApiData ImportReadGroupSetsRequestPartitionStrategy where
    toQueryParam = \case
        PartitionStrategyUnspecified -> "PARTITION_STRATEGY_UNSPECIFIED"
        PerFilePerSample -> "PER_FILE_PER_SAMPLE"
        MergeAll -> "MERGE_ALL"

instance FromJSON ImportReadGroupSetsRequestPartitionStrategy where
    parseJSON = parseJSONText "ImportReadGroupSetsRequestPartitionStrategy"

instance ToJSON ImportReadGroupSetsRequestPartitionStrategy where
    toJSON = toJSONText

-- | The data type for this annotation. Must match the containing annotation
-- set\'s type.
data AnnotationType
    = ATAnnotationTypeUnspecified
      -- ^ @ANNOTATION_TYPE_UNSPECIFIED@
    | ATGeneric
      -- ^ @GENERIC@
      -- A \`GENERIC\` annotation type should be used when no other annotation
      -- type will suffice. This represents an untyped annotation of the
      -- reference genome.
    | ATVariant
      -- ^ @VARIANT@
      -- A \`VARIANT\` annotation type.
    | ATGene
      -- ^ @GENE@
      -- A \`GENE\` annotation type represents the existence of a gene at the
      -- associated reference coordinates. The start coordinate is typically the
      -- gene\'s transcription start site and the end is typically the end of the
      -- gene\'s last exon.
    | ATTranscript
      -- ^ @TRANSCRIPT@
      -- A \`TRANSCRIPT\` annotation type represents the assertion that a
      -- particular region of the reference genome may be transcribed as RNA.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnnotationType

instance FromHttpApiData AnnotationType where
    parseQueryParam = \case
        "ANNOTATION_TYPE_UNSPECIFIED" -> Right ATAnnotationTypeUnspecified
        "GENERIC" -> Right ATGeneric
        "VARIANT" -> Right ATVariant
        "GENE" -> Right ATGene
        "TRANSCRIPT" -> Right ATTranscript
        x -> Left ("Unable to parse AnnotationType from: " <> x)

instance ToHttpApiData AnnotationType where
    toQueryParam = \case
        ATAnnotationTypeUnspecified -> "ANNOTATION_TYPE_UNSPECIFIED"
        ATGeneric -> "GENERIC"
        ATVariant -> "VARIANT"
        ATGene -> "GENE"
        ATTranscript -> "TRANSCRIPT"

instance FromJSON AnnotationType where
    parseJSON = parseJSONText "AnnotationType"

instance ToJSON AnnotationType where
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

data CigarUnitOperation
    = OperationUnspecified
      -- ^ @OPERATION_UNSPECIFIED@
    | AlignmentMatch
      -- ^ @ALIGNMENT_MATCH@
      -- An alignment match indicates that a sequence can be aligned to the
      -- reference without evidence of an INDEL. Unlike the \`SEQUENCE_MATCH\`
      -- and \`SEQUENCE_MISMATCH\` operators, the \`ALIGNMENT_MATCH\` operator
      -- does not indicate whether the reference and read sequences are an exact
      -- match. This operator is equivalent to SAM\'s \`M\`.
    | Insert
      -- ^ @INSERT@
      -- The insert operator indicates that the read contains evidence of bases
      -- being inserted into the reference. This operator is equivalent to SAM\'s
      -- \`I\`.
    | Delete'
      -- ^ @DELETE@
      -- The delete operator indicates that the read contains evidence of bases
      -- being deleted from the reference. This operator is equivalent to SAM\'s
      -- \`D\`.
    | Skip
      -- ^ @SKIP@
      -- The skip operator indicates that this read skips a long segment of the
      -- reference, but the bases have not been deleted. This operator is
      -- commonly used when working with RNA-seq data, where reads may skip long
      -- segments of the reference between exons. This operator is equivalent to
      -- SAM\'s \`N\`.
    | ClipSoft
      -- ^ @CLIP_SOFT@
      -- The soft clip operator indicates that bases at the start\/end of a read
      -- have not been considered during alignment. This may occur if the
      -- majority of a read maps, except for low quality bases at the start\/end
      -- of a read. This operator is equivalent to SAM\'s \`S\`. Bases that are
      -- soft clipped will still be stored in the read.
    | ClipHard
      -- ^ @CLIP_HARD@
      -- The hard clip operator indicates that bases at the start\/end of a read
      -- have been omitted from this alignment. This may occur if this linear
      -- alignment is part of a chimeric alignment, or if the read has been
      -- trimmed (for example, during error correction or to trim poly-A tails
      -- for RNA-seq). This operator is equivalent to SAM\'s \`H\`.
    | Pad
      -- ^ @PAD@
      -- The pad operator indicates that there is padding in an alignment. This
      -- operator is equivalent to SAM\'s \`P\`.
    | SequenceMatch
      -- ^ @SEQUENCE_MATCH@
      -- This operator indicates that this portion of the aligned sequence
      -- exactly matches the reference. This operator is equivalent to SAM\'s
      -- \`=\`.
    | SequenceMismatch
      -- ^ @SEQUENCE_MISMATCH@
      -- This operator indicates that this portion of the aligned sequence is an
      -- alignment match to the reference, but a sequence mismatch. This can
      -- indicate a SNP or a read error. This operator is equivalent to SAM\'s
      -- \`X\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CigarUnitOperation

instance FromHttpApiData CigarUnitOperation where
    parseQueryParam = \case
        "OPERATION_UNSPECIFIED" -> Right OperationUnspecified
        "ALIGNMENT_MATCH" -> Right AlignmentMatch
        "INSERT" -> Right Insert
        "DELETE" -> Right Delete'
        "SKIP" -> Right Skip
        "CLIP_SOFT" -> Right ClipSoft
        "CLIP_HARD" -> Right ClipHard
        "PAD" -> Right Pad
        "SEQUENCE_MATCH" -> Right SequenceMatch
        "SEQUENCE_MISMATCH" -> Right SequenceMismatch
        x -> Left ("Unable to parse CigarUnitOperation from: " <> x)

instance ToHttpApiData CigarUnitOperation where
    toQueryParam = \case
        OperationUnspecified -> "OPERATION_UNSPECIFIED"
        AlignmentMatch -> "ALIGNMENT_MATCH"
        Insert -> "INSERT"
        Delete' -> "DELETE"
        Skip -> "SKIP"
        ClipSoft -> "CLIP_SOFT"
        ClipHard -> "CLIP_HARD"
        Pad -> "PAD"
        SequenceMatch -> "SEQUENCE_MATCH"
        SequenceMismatch -> "SEQUENCE_MISMATCH"

instance FromJSON CigarUnitOperation where
    parseJSON = parseJSONText "CigarUnitOperation"

instance ToJSON CigarUnitOperation where
    toJSON = toJSONText

-- | The type of data. Possible types include: Integer, Float, Flag,
-- Character, and String.
data VariantSetMetadataType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
    | Integer
      -- ^ @INTEGER@
    | Float
      -- ^ @FLOAT@
    | Flag
      -- ^ @FLAG@
    | Character
      -- ^ @CHARACTER@
    | String
      -- ^ @STRING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VariantSetMetadataType

instance FromHttpApiData VariantSetMetadataType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "INTEGER" -> Right Integer
        "FLOAT" -> Right Float
        "FLAG" -> Right Flag
        "CHARACTER" -> Right Character
        "STRING" -> Right String
        x -> Left ("Unable to parse VariantSetMetadataType from: " <> x)

instance ToHttpApiData VariantSetMetadataType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Integer -> "INTEGER"
        Float -> "FLOAT"
        Flag -> "FLAG"
        Character -> "CHARACTER"
        String -> "STRING"

instance FromJSON VariantSetMetadataType where
    parseJSON = parseJSONText "VariantSetMetadataType"

instance ToJSON VariantSetMetadataType where
    toJSON = toJSONText

-- | Type has been adapted from ClinVar\'s list of variant types.
data VariantAnnotationType
    = VATTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
    | VATTypeOther
      -- ^ @TYPE_OTHER@
      -- \`TYPE_OTHER\` should be used when no other Type will suffice. Further
      -- explanation of the variant type may be included in the info field.
    | VATInsertion
      -- ^ @INSERTION@
      -- \`INSERTION\` indicates an insertion.
    | VATDeletion
      -- ^ @DELETION@
      -- \`DELETION\` indicates a deletion.
    | VATSubstitution
      -- ^ @SUBSTITUTION@
      -- \`SUBSTITUTION\` indicates a block substitution of two or more
      -- nucleotides.
    | VATSnp
      -- ^ @SNP@
      -- \`SNP\` indicates a single nucleotide polymorphism.
    | VATStructural
      -- ^ @STRUCTURAL@
      -- \`STRUCTURAL\` indicates a large structural variant, including
      -- chromosomal fusions, inversions, etc.
    | VATCnv
      -- ^ @CNV@
      -- \`CNV\` indicates a variation in copy number.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VariantAnnotationType

instance FromHttpApiData VariantAnnotationType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right VATTypeUnspecified
        "TYPE_OTHER" -> Right VATTypeOther
        "INSERTION" -> Right VATInsertion
        "DELETION" -> Right VATDeletion
        "SUBSTITUTION" -> Right VATSubstitution
        "SNP" -> Right VATSnp
        "STRUCTURAL" -> Right VATStructural
        "CNV" -> Right VATCnv
        x -> Left ("Unable to parse VariantAnnotationType from: " <> x)

instance ToHttpApiData VariantAnnotationType where
    toQueryParam = \case
        VATTypeUnspecified -> "TYPE_UNSPECIFIED"
        VATTypeOther -> "TYPE_OTHER"
        VATInsertion -> "INSERTION"
        VATDeletion -> "DELETION"
        VATSubstitution -> "SUBSTITUTION"
        VATSnp -> "SNP"
        VATStructural -> "STRUCTURAL"
        VATCnv -> "CNV"

instance FromJSON VariantAnnotationType where
    parseJSON = parseJSONText "VariantAnnotationType"

instance ToJSON VariantAnnotationType where
    toJSON = toJSONText

-- | The format of the variant data being imported. If unspecified, defaults
-- to to \`VCF\`.
data ImportVariantsRequestFormat
    = FormatUnspecified
      -- ^ @FORMAT_UNSPECIFIED@
    | FormatVcf
      -- ^ @FORMAT_VCF@
      -- VCF (Variant Call Format). The VCF files may be gzip compressed. gVCF is
      -- also supported.
    | FormatCompleteGenomics
      -- ^ @FORMAT_COMPLETE_GENOMICS@
      -- Complete Genomics masterVarBeta format. The masterVarBeta files may be
      -- bzip2 compressed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportVariantsRequestFormat

instance FromHttpApiData ImportVariantsRequestFormat where
    parseQueryParam = \case
        "FORMAT_UNSPECIFIED" -> Right FormatUnspecified
        "FORMAT_VCF" -> Right FormatVcf
        "FORMAT_COMPLETE_GENOMICS" -> Right FormatCompleteGenomics
        x -> Left ("Unable to parse ImportVariantsRequestFormat from: " <> x)

instance ToHttpApiData ImportVariantsRequestFormat where
    toQueryParam = \case
        FormatUnspecified -> "FORMAT_UNSPECIFIED"
        FormatVcf -> "FORMAT_VCF"
        FormatCompleteGenomics -> "FORMAT_COMPLETE_GENOMICS"

instance FromJSON ImportVariantsRequestFormat where
    parseJSON = parseJSONText "ImportVariantsRequestFormat"

instance ToJSON ImportVariantsRequestFormat where
    toJSON = toJSONText

-- | The format for the exported data.
data ExportVariantSetRequestFormat
    = EVSRFFormatUnspecified
      -- ^ @FORMAT_UNSPECIFIED@
    | EVSRFFormatBigQuery
      -- ^ @FORMAT_BIGQUERY@
      -- Export the data to Google BigQuery.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ExportVariantSetRequestFormat

instance FromHttpApiData ExportVariantSetRequestFormat where
    parseQueryParam = \case
        "FORMAT_UNSPECIFIED" -> Right EVSRFFormatUnspecified
        "FORMAT_BIGQUERY" -> Right EVSRFFormatBigQuery
        x -> Left ("Unable to parse ExportVariantSetRequestFormat from: " <> x)

instance ToHttpApiData ExportVariantSetRequestFormat where
    toQueryParam = \case
        EVSRFFormatUnspecified -> "FORMAT_UNSPECIFIED"
        EVSRFFormatBigQuery -> "FORMAT_BIGQUERY"

instance FromJSON ExportVariantSetRequestFormat where
    parseJSON = parseJSONText "ExportVariantSetRequestFormat"

instance ToJSON ExportVariantSetRequestFormat where
    toJSON = toJSONText
