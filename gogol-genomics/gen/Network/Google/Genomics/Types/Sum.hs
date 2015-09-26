{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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

-- | The format for the exported data.
data ExportVariantSetRequestFormat
    = EVSRFBigquery
      -- ^ @BIGQUERY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ExportVariantSetRequestFormat

-- | The partition strategy describes how read groups are partitioned into
-- read group sets.
data ImportReadGroupSetsRequestPartitionStrategy
    = IRGSRPSMergeAll
      -- ^ @MERGE_ALL@
    | IRGSRPSPerFilePerSample
      -- ^ @PER_FILE_PER_SAMPLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImportReadGroupSetsRequestPartitionStrategy

-- | The format of the variant data being imported. If unspecified, defaults
-- to to \"VCF\".
data ImportVariantsRequestFormat
    = IVRFCompleteGenomics
      -- ^ @COMPLETE_GENOMICS@
    | IVRFVcf
      -- ^ @VCF@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImportVariantsRequestFormat

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
