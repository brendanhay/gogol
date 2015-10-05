{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types.Product where

import           Network.Google.Genomics.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'fastqMetadata' smart constructor.
data FastqMetadata = FastqMetadata
    { _fmPlatformUnit  :: !(Maybe Text)
    , _fmReadGroupName :: !(Maybe Text)
    , _fmLibraryName   :: !(Maybe Text)
    , _fmPlatformName  :: !(Maybe Text)
    , _fmSampleName    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FastqMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmPlatformUnit'
--
-- * 'fmReadGroupName'
--
-- * 'fmLibraryName'
--
-- * 'fmPlatformName'
--
-- * 'fmSampleName'
fastqMetadata
    :: FastqMetadata
fastqMetadata =
    FastqMetadata
    { _fmPlatformUnit = Nothing
    , _fmReadGroupName = Nothing
    , _fmLibraryName = Nothing
    , _fmPlatformName = Nothing
    , _fmSampleName = Nothing
    }

-- | Optionally specifies the platform unit for alignment from FASTQ. For
-- example: flowcell-barcode.lane for Illumina or slide for SOLID.
fmPlatformUnit :: Lens' FastqMetadata (Maybe Text)
fmPlatformUnit
  = lens _fmPlatformUnit
      (\ s a -> s{_fmPlatformUnit = a})

-- | Optionally specifies the read group name for alignment from FASTQ.
fmReadGroupName :: Lens' FastqMetadata (Maybe Text)
fmReadGroupName
  = lens _fmReadGroupName
      (\ s a -> s{_fmReadGroupName = a})

-- | Optionally specifies the library name for alignment from FASTQ.
fmLibraryName :: Lens' FastqMetadata (Maybe Text)
fmLibraryName
  = lens _fmLibraryName
      (\ s a -> s{_fmLibraryName = a})

-- | Optionally specifies the platform name for alignment from FASTQ. For
-- example: CAPILLARY, LS454, ILLUMINA, SOLID, HELICOS, IONTORRENT, PACBIO.
fmPlatformName :: Lens' FastqMetadata (Maybe Text)
fmPlatformName
  = lens _fmPlatformName
      (\ s a -> s{_fmPlatformName = a})

-- | Optionally specifies the sample name for alignment from FASTQ.
fmSampleName :: Lens' FastqMetadata (Maybe Text)
fmSampleName
  = lens _fmSampleName (\ s a -> s{_fmSampleName = a})

instance FromJSON FastqMetadata where
        parseJSON
          = withObject "FastqMetadata"
              (\ o ->
                 FastqMetadata <$>
                   (o .:? "platformUnit") <*> (o .:? "readGroupName")
                     <*> (o .:? "libraryName")
                     <*> (o .:? "platformName")
                     <*> (o .:? "sampleName"))

instance ToJSON FastqMetadata where
        toJSON FastqMetadata{..}
          = object
              (catMaybes
                 [("platformUnit" .=) <$> _fmPlatformUnit,
                  ("readGroupName" .=) <$> _fmReadGroupName,
                  ("libraryName" .=) <$> _fmLibraryName,
                  ("platformName" .=) <$> _fmPlatformName,
                  ("sampleName" .=) <$> _fmSampleName])

-- | A string which maps to an array of values.
--
-- /See:/ 'callInfo' smart constructor.
data CallInfo =
    CallInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallInfo' with the minimum fields required to make a request.
--
callInfo
    :: CallInfo
callInfo = CallInfo

instance FromJSON CallInfo where
        parseJSON
          = withObject "CallInfo" (\ o -> pure CallInfo)

instance ToJSON CallInfo where
        toJSON = const emptyObject

-- | A string which maps to an array of values.
--
-- /See:/ 'readInfo' smart constructor.
data ReadInfo =
    ReadInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadInfo' with the minimum fields required to make a request.
--
readInfo
    :: ReadInfo
readInfo = ReadInfo

instance FromJSON ReadInfo where
        parseJSON
          = withObject "ReadInfo" (\ o -> pure ReadInfo)

instance ToJSON ReadInfo where
        toJSON = const emptyObject

--
-- /See:/ 'readGroupExperiment' smart constructor.
data ReadGroupExperiment = ReadGroupExperiment
    { _rgeInstrumentModel  :: !(Maybe Text)
    , _rgePlatformUnit     :: !(Maybe Text)
    , _rgeSequencingCenter :: !(Maybe Text)
    , _rgeLibraryId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupExperiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgeInstrumentModel'
--
-- * 'rgePlatformUnit'
--
-- * 'rgeSequencingCenter'
--
-- * 'rgeLibraryId'
readGroupExperiment
    :: ReadGroupExperiment
readGroupExperiment =
    ReadGroupExperiment
    { _rgeInstrumentModel = Nothing
    , _rgePlatformUnit = Nothing
    , _rgeSequencingCenter = Nothing
    , _rgeLibraryId = Nothing
    }

-- | The instrument model used as part of this experiment. This maps to
-- sequencing technology in BAM.
rgeInstrumentModel :: Lens' ReadGroupExperiment (Maybe Text)
rgeInstrumentModel
  = lens _rgeInstrumentModel
      (\ s a -> s{_rgeInstrumentModel = a})

-- | The platform unit used as part of this experiment e.g.
-- flowcell-barcode.lane for Illumina or slide for SOLiD. Corresponds to
-- the
rgePlatformUnit :: Lens' ReadGroupExperiment (Maybe Text)
rgePlatformUnit
  = lens _rgePlatformUnit
      (\ s a -> s{_rgePlatformUnit = a})

-- | The sequencing center used as part of this experiment.
rgeSequencingCenter :: Lens' ReadGroupExperiment (Maybe Text)
rgeSequencingCenter
  = lens _rgeSequencingCenter
      (\ s a -> s{_rgeSequencingCenter = a})

-- | The library used as part of this experiment. Note: This is not an actual
-- ID within this repository, but rather an identifier for a library which
-- may be meaningful to some external system.
rgeLibraryId :: Lens' ReadGroupExperiment (Maybe Text)
rgeLibraryId
  = lens _rgeLibraryId (\ s a -> s{_rgeLibraryId = a})

instance FromJSON ReadGroupExperiment where
        parseJSON
          = withObject "ReadGroupExperiment"
              (\ o ->
                 ReadGroupExperiment <$>
                   (o .:? "instrumentModel") <*> (o .:? "platformUnit")
                     <*> (o .:? "sequencingCenter")
                     <*> (o .:? "libraryId"))

instance ToJSON ReadGroupExperiment where
        toJSON ReadGroupExperiment{..}
          = object
              (catMaybes
                 [("instrumentModel" .=) <$> _rgeInstrumentModel,
                  ("platformUnit" .=) <$> _rgePlatformUnit,
                  ("sequencingCenter" .=) <$> _rgeSequencingCenter,
                  ("libraryId" .=) <$> _rgeLibraryId])

-- | Used to hold basic key value information.
--
-- /See:/ 'keyValue' smart constructor.
data KeyValue = KeyValue
    { _kvValue :: !(Maybe [Text])
    , _kvKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'KeyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kvValue'
--
-- * 'kvKey'
keyValue
    :: KeyValue
keyValue =
    KeyValue
    { _kvValue = Nothing
    , _kvKey = Nothing
    }

-- | The string values.
kvValue :: Lens' KeyValue [Text]
kvValue
  = lens _kvValue (\ s a -> s{_kvValue = a}) . _Default
      . _Coerce

-- | A string which maps to an array of values.
kvKey :: Lens' KeyValue (Maybe Text)
kvKey = lens _kvKey (\ s a -> s{_kvKey = a})

instance FromJSON KeyValue where
        parseJSON
          = withObject "KeyValue"
              (\ o ->
                 KeyValue <$>
                   (o .:? "value" .!= mempty) <*> (o .:? "key"))

instance ToJSON KeyValue where
        toJSON KeyValue{..}
          = object
              (catMaybes
                 [("value" .=) <$> _kvValue, ("key" .=) <$> _kvKey])

-- | A variant represents a change in DNA sequence relative to a reference
-- sequence. For example, a variant could represent a SNP or an insertion.
-- Variants belong to a variant set. Each of the calls on a variant
-- represent a determination of genotype with respect to that variant. For
-- example, a call might assign probability of 0.32 to the occurrence of a
-- SNP named rs1234 in a sample named NA12345. A call belongs to a call
-- set, which contains related calls typically from one sample.
--
-- /See:/ 'variant' smart constructor.
data Variant = Variant
    { _vVariantSetId   :: !(Maybe Text)
    , _vCreated        :: !(Maybe Int64)
    , _vStart          :: !(Maybe Int64)
    , _vAlternateBases :: !(Maybe [Text])
    , _vReferenceName  :: !(Maybe Text)
    , _vNames          :: !(Maybe [Text])
    , _vEnd            :: !(Maybe Int64)
    , _vReferenceBases :: !(Maybe Text)
    , _vId             :: !(Maybe Text)
    , _vQuality        :: !(Maybe Double)
    , _vFilter         :: !(Maybe [Text])
    , _vInfo           :: !(Maybe VariantInfo)
    , _vCalls          :: !(Maybe [Call])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Variant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vVariantSetId'
--
-- * 'vCreated'
--
-- * 'vStart'
--
-- * 'vAlternateBases'
--
-- * 'vReferenceName'
--
-- * 'vNames'
--
-- * 'vEnd'
--
-- * 'vReferenceBases'
--
-- * 'vId'
--
-- * 'vQuality'
--
-- * 'vFilter'
--
-- * 'vInfo'
--
-- * 'vCalls'
variant
    :: Variant
variant =
    Variant
    { _vVariantSetId = Nothing
    , _vCreated = Nothing
    , _vStart = Nothing
    , _vAlternateBases = Nothing
    , _vReferenceName = Nothing
    , _vNames = Nothing
    , _vEnd = Nothing
    , _vReferenceBases = Nothing
    , _vId = Nothing
    , _vQuality = Nothing
    , _vFilter = Nothing
    , _vInfo = Nothing
    , _vCalls = Nothing
    }

-- | The ID of the variant set this variant belongs to.
vVariantSetId :: Lens' Variant (Maybe Text)
vVariantSetId
  = lens _vVariantSetId
      (\ s a -> s{_vVariantSetId = a})

-- | The date this variant was created, in milliseconds from the epoch.
vCreated :: Lens' Variant (Maybe Int64)
vCreated = lens _vCreated (\ s a -> s{_vCreated = a})

-- | The position at which this variant occurs (0-based). This corresponds to
-- the first base of the string of reference bases.
vStart :: Lens' Variant (Maybe Int64)
vStart = lens _vStart (\ s a -> s{_vStart = a})

-- | The bases that appear instead of the reference bases.
vAlternateBases :: Lens' Variant [Text]
vAlternateBases
  = lens _vAlternateBases
      (\ s a -> s{_vAlternateBases = a})
      . _Default
      . _Coerce

-- | The reference on which this variant occurs. (such as chr20 or X)
vReferenceName :: Lens' Variant (Maybe Text)
vReferenceName
  = lens _vReferenceName
      (\ s a -> s{_vReferenceName = a})

-- | Names for the variant, for example a RefSNP ID.
vNames :: Lens' Variant [Text]
vNames
  = lens _vNames (\ s a -> s{_vNames = a}) . _Default .
      _Coerce

-- | The end position (0-based) of this variant. This corresponds to the
-- first base after the last base in the reference allele. So, the length
-- of the reference allele is (end - start). This is useful for variants
-- that don\'t explicitly give alternate bases, for example large
-- deletions.
vEnd :: Lens' Variant (Maybe Int64)
vEnd = lens _vEnd (\ s a -> s{_vEnd = a})

-- | The reference bases for this variant. They start at the given position.
vReferenceBases :: Lens' Variant (Maybe Text)
vReferenceBases
  = lens _vReferenceBases
      (\ s a -> s{_vReferenceBases = a})

-- | The Google generated ID of the variant, immutable.
vId :: Lens' Variant (Maybe Text)
vId = lens _vId (\ s a -> s{_vId = a})

-- | A measure of how likely this variant is to be real. A higher value is
-- better.
vQuality :: Lens' Variant (Maybe Double)
vQuality = lens _vQuality (\ s a -> s{_vQuality = a})

-- | A list of filters (normally quality filters) this variant has failed.
-- PASS indicates this variant has passed all filters.
vFilter :: Lens' Variant [Text]
vFilter
  = lens _vFilter (\ s a -> s{_vFilter = a}) . _Default
      . _Coerce

-- | A string which maps to an array of values.
vInfo :: Lens' Variant (Maybe VariantInfo)
vInfo = lens _vInfo (\ s a -> s{_vInfo = a})

-- | The variant calls for this particular variant. Each one represents the
-- determination of genotype with respect to this variant.
vCalls :: Lens' Variant [Call]
vCalls
  = lens _vCalls (\ s a -> s{_vCalls = a}) . _Default .
      _Coerce

instance FromJSON Variant where
        parseJSON
          = withObject "Variant"
              (\ o ->
                 Variant <$>
                   (o .:? "variantSetId") <*> (o .:? "created") <*>
                     (o .:? "start")
                     <*> (o .:? "alternateBases" .!= mempty)
                     <*> (o .:? "referenceName")
                     <*> (o .:? "names" .!= mempty)
                     <*> (o .:? "end")
                     <*> (o .:? "referenceBases")
                     <*> (o .:? "id")
                     <*> (o .:? "quality")
                     <*> (o .:? "filter" .!= mempty)
                     <*> (o .:? "info")
                     <*> (o .:? "calls" .!= mempty))

instance ToJSON Variant where
        toJSON Variant{..}
          = object
              (catMaybes
                 [("variantSetId" .=) <$> _vVariantSetId,
                  ("created" .=) <$> _vCreated,
                  ("start" .=) <$> _vStart,
                  ("alternateBases" .=) <$> _vAlternateBases,
                  ("referenceName" .=) <$> _vReferenceName,
                  ("names" .=) <$> _vNames, ("end" .=) <$> _vEnd,
                  ("referenceBases" .=) <$> _vReferenceBases,
                  ("id" .=) <$> _vId, ("quality" .=) <$> _vQuality,
                  ("filter" .=) <$> _vFilter, ("info" .=) <$> _vInfo,
                  ("calls" .=) <$> _vCalls])

-- | An annotation describes a region of reference genome. The value of an
-- annotation may be one of several canonical types, supplemented by
-- arbitrary info tags. A variant annotation is represented by one or more
-- of these canonical types. An annotation is not inherently associated
-- with a specific sample or individual (though a client could choose to
-- use annotations in this way). Example canonical annotation types are
-- \'Gene\' and \'Variant\'.
--
-- /See:/ 'annotation' smart constructor.
data Annotation = Annotation
    { _aVariant         :: !(Maybe VariantAnnotation)
    , _aAnnotationSetId :: !(Maybe Text)
    , _aName            :: !(Maybe Text)
    , _aId              :: !(Maybe Text)
    , _aType            :: !(Maybe AnnotationType)
    , _aTranscript      :: !(Maybe Transcript)
    , _aInfo            :: !(Maybe AnnotationInfo)
    , _aPosition        :: !(Maybe RangePosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aVariant'
--
-- * 'aAnnotationSetId'
--
-- * 'aName'
--
-- * 'aId'
--
-- * 'aType'
--
-- * 'aTranscript'
--
-- * 'aInfo'
--
-- * 'aPosition'
annotation
    :: Annotation
annotation =
    Annotation
    { _aVariant = Nothing
    , _aAnnotationSetId = Nothing
    , _aName = Nothing
    , _aId = Nothing
    , _aType = Nothing
    , _aTranscript = Nothing
    , _aInfo = Nothing
    , _aPosition = Nothing
    }

-- | A variant annotation, which describes the effect of a variant on the
-- genome, the coding sequence, and\/or higher level consequences at the
-- organism level e.g. pathogenicity. This field is only set for
-- annotations of type VARIANT.
aVariant :: Lens' Annotation (Maybe VariantAnnotation)
aVariant = lens _aVariant (\ s a -> s{_aVariant = a})

-- | The ID of the containing annotation set.
aAnnotationSetId :: Lens' Annotation (Maybe Text)
aAnnotationSetId
  = lens _aAnnotationSetId
      (\ s a -> s{_aAnnotationSetId = a})

-- | The display name of this annotation.
aName :: Lens' Annotation (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The generated unique ID for this annotation.
aId :: Lens' Annotation (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | The data type for this annotation. Must match the containing annotation
-- set\'s type.
aType :: Lens' Annotation (Maybe AnnotationType)
aType = lens _aType (\ s a -> s{_aType = a})

-- | A transcript value represents the assertion that a particular region of
-- the reference genome may be transcribed as RNA. An alternative splicing
-- pattern would be represented as a separate transcript object. This field
-- is only set for annotations of type TRANSCRIPT.
aTranscript :: Lens' Annotation (Maybe Transcript)
aTranscript
  = lens _aTranscript (\ s a -> s{_aTranscript = a})

-- | A string which maps to an array of values.
aInfo :: Lens' Annotation (Maybe AnnotationInfo)
aInfo = lens _aInfo (\ s a -> s{_aInfo = a})

-- | The position of this annotation on the reference sequence.
aPosition :: Lens' Annotation (Maybe RangePosition)
aPosition
  = lens _aPosition (\ s a -> s{_aPosition = a})

instance FromJSON Annotation where
        parseJSON
          = withObject "Annotation"
              (\ o ->
                 Annotation <$>
                   (o .:? "variant") <*> (o .:? "annotationSetId") <*>
                     (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "transcript")
                     <*> (o .:? "info")
                     <*> (o .:? "position"))

instance ToJSON Annotation where
        toJSON Annotation{..}
          = object
              (catMaybes
                 [("variant" .=) <$> _aVariant,
                  ("annotationSetId" .=) <$> _aAnnotationSetId,
                  ("name" .=) <$> _aName, ("id" .=) <$> _aId,
                  ("type" .=) <$> _aType,
                  ("transcript" .=) <$> _aTranscript,
                  ("info" .=) <$> _aInfo,
                  ("position" .=) <$> _aPosition])

-- | Describes an interleaved FASTQ file source for alignment.
--
-- /See:/ 'interleavedFastqSource' smart constructor.
data InterleavedFastqSource = InterleavedFastqSource
    { _ifsMetadata   :: !(Maybe FastqMetadata)
    , _ifsSourceURIs :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InterleavedFastqSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifsMetadata'
--
-- * 'ifsSourceURIs'
interleavedFastqSource
    :: InterleavedFastqSource
interleavedFastqSource =
    InterleavedFastqSource
    { _ifsMetadata = Nothing
    , _ifsSourceURIs = Nothing
    }

-- | Optionally specifies the metadata to be associated with the final
-- aligned read group set.
ifsMetadata :: Lens' InterleavedFastqSource (Maybe FastqMetadata)
ifsMetadata
  = lens _ifsMetadata (\ s a -> s{_ifsMetadata = a})

-- | A list of URIs pointing at interleaved FASTQ files in Google Cloud
-- Storage which will be aligned. The caller must have READ permissions for
-- these files.
ifsSourceURIs :: Lens' InterleavedFastqSource [Text]
ifsSourceURIs
  = lens _ifsSourceURIs
      (\ s a -> s{_ifsSourceURIs = a})
      . _Default
      . _Coerce

instance FromJSON InterleavedFastqSource where
        parseJSON
          = withObject "InterleavedFastqSource"
              (\ o ->
                 InterleavedFastqSource <$>
                   (o .:? "metadata") <*>
                     (o .:? "sourceUris" .!= mempty))

instance ToJSON InterleavedFastqSource where
        toJSON InterleavedFastqSource{..}
          = object
              (catMaybes
                 [("metadata" .=) <$> _ifsMetadata,
                  ("sourceUris" .=) <$> _ifsSourceURIs])

-- | The read group set call request.
--
-- /See:/ 'callReadGroupSetsRequest' smart constructor.
data CallReadGroupSetsRequest = CallReadGroupSetsRequest
    { _crgsrReadGroupSetId :: !(Maybe Text)
    , _crgsrDatasetId      :: !(Maybe Text)
    , _crgsrSourceURIs     :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallReadGroupSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crgsrReadGroupSetId'
--
-- * 'crgsrDatasetId'
--
-- * 'crgsrSourceURIs'
callReadGroupSetsRequest
    :: CallReadGroupSetsRequest
callReadGroupSetsRequest =
    CallReadGroupSetsRequest
    { _crgsrReadGroupSetId = Nothing
    , _crgsrDatasetId = Nothing
    , _crgsrSourceURIs = Nothing
    }

-- | The IDs of the read group sets which will be called. The caller must
-- have READ permissions for these read group sets. One of readGroupSetId
-- or sourceUris must be provided.
crgsrReadGroupSetId :: Lens' CallReadGroupSetsRequest (Maybe Text)
crgsrReadGroupSetId
  = lens _crgsrReadGroupSetId
      (\ s a -> s{_crgsrReadGroupSetId = a})

-- | Required. The ID of the dataset the called variants will belong to. The
-- caller must have WRITE permissions to this dataset.
crgsrDatasetId :: Lens' CallReadGroupSetsRequest (Maybe Text)
crgsrDatasetId
  = lens _crgsrDatasetId
      (\ s a -> s{_crgsrDatasetId = a})

-- | A list of URIs pointing at BAM files in Google Cloud Storage which will
-- be called. FASTQ files are not allowed. The caller must have READ
-- permissions for these files. One of readGroupSetId or sourceUris must be
-- provided.
crgsrSourceURIs :: Lens' CallReadGroupSetsRequest [Text]
crgsrSourceURIs
  = lens _crgsrSourceURIs
      (\ s a -> s{_crgsrSourceURIs = a})
      . _Default
      . _Coerce

instance FromJSON CallReadGroupSetsRequest where
        parseJSON
          = withObject "CallReadGroupSetsRequest"
              (\ o ->
                 CallReadGroupSetsRequest <$>
                   (o .:? "readGroupSetId") <*> (o .:? "datasetId") <*>
                     (o .:? "sourceUris" .!= mempty))

instance ToJSON CallReadGroupSetsRequest where
        toJSON CallReadGroupSetsRequest{..}
          = object
              (catMaybes
                 [("readGroupSetId" .=) <$> _crgsrReadGroupSetId,
                  ("datasetId" .=) <$> _crgsrDatasetId,
                  ("sourceUris" .=) <$> _crgsrSourceURIs])

--
-- /See:/ 'batchAnnotationsResponseEntry' smart constructor.
data BatchAnnotationsResponseEntry = BatchAnnotationsResponseEntry
    { _bareStatus     :: !(Maybe BatchAnnotationsResponseEntryStatus)
    , _bareAnnotation :: !(Maybe Annotation)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchAnnotationsResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bareStatus'
--
-- * 'bareAnnotation'
batchAnnotationsResponseEntry
    :: BatchAnnotationsResponseEntry
batchAnnotationsResponseEntry =
    BatchAnnotationsResponseEntry
    { _bareStatus = Nothing
    , _bareAnnotation = Nothing
    }

-- | The resulting status for this annotation operation.
bareStatus :: Lens' BatchAnnotationsResponseEntry (Maybe BatchAnnotationsResponseEntryStatus)
bareStatus
  = lens _bareStatus (\ s a -> s{_bareStatus = a})

-- | The annotation, if any.
bareAnnotation :: Lens' BatchAnnotationsResponseEntry (Maybe Annotation)
bareAnnotation
  = lens _bareAnnotation
      (\ s a -> s{_bareAnnotation = a})

instance FromJSON BatchAnnotationsResponseEntry where
        parseJSON
          = withObject "BatchAnnotationsResponseEntry"
              (\ o ->
                 BatchAnnotationsResponseEntry <$>
                   (o .:? "status") <*> (o .:? "annotation"))

instance ToJSON BatchAnnotationsResponseEntry where
        toJSON BatchAnnotationsResponseEntry{..}
          = object
              (catMaybes
                 [("status" .=) <$> _bareStatus,
                  ("annotation" .=) <$> _bareAnnotation])

--
-- /See:/ 'listBasesResponse' smart constructor.
data ListBasesResponse = ListBasesResponse
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrOffset        :: !(Maybe Int64)
    , _lbrSequence      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextPageToken'
--
-- * 'lbrOffset'
--
-- * 'lbrSequence'
listBasesResponse
    :: ListBasesResponse
listBasesResponse =
    ListBasesResponse
    { _lbrNextPageToken = Nothing
    , _lbrOffset = Nothing
    , _lbrSequence = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
lbrNextPageToken :: Lens' ListBasesResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | The offset position (0-based) of the given sequence from the start of
-- this Reference. This value will differ for each page in a paginated
-- request.
lbrOffset :: Lens' ListBasesResponse (Maybe Int64)
lbrOffset
  = lens _lbrOffset (\ s a -> s{_lbrOffset = a})

-- | A substring of the bases that make up this reference.
lbrSequence :: Lens' ListBasesResponse (Maybe Text)
lbrSequence
  = lens _lbrSequence (\ s a -> s{_lbrSequence = a})

instance FromJSON ListBasesResponse where
        parseJSON
          = withObject "ListBasesResponse"
              (\ o ->
                 ListBasesResponse <$>
                   (o .:? "nextPageToken") <*> (o .:? "offset") <*>
                     (o .:? "sequence"))

instance ToJSON ListBasesResponse where
        toJSON ListBasesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("offset" .=) <$> _lbrOffset,
                  ("sequence" .=) <$> _lbrSequence])

-- | A Dataset is a collection of genomic data.
--
-- /See:/ 'dataset' smart constructor.
data Dataset = Dataset
    { _dIsPublic      :: !(Maybe Bool)
    , _dProjectNumber :: !(Maybe Int64)
    , _dName          :: !(Maybe Text)
    , _dId            :: !(Maybe Text)
    , _dCreateTime    :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Dataset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dIsPublic'
--
-- * 'dProjectNumber'
--
-- * 'dName'
--
-- * 'dId'
--
-- * 'dCreateTime'
dataset
    :: Dataset
dataset =
    Dataset
    { _dIsPublic = Nothing
    , _dProjectNumber = Nothing
    , _dName = Nothing
    , _dId = Nothing
    , _dCreateTime = Nothing
    }

-- | Flag indicating whether or not a dataset is publicly viewable. If a
-- dataset is not public, it inherits viewing permissions from its project.
dIsPublic :: Lens' Dataset (Maybe Bool)
dIsPublic
  = lens _dIsPublic (\ s a -> s{_dIsPublic = a})

-- | The Google Developers Console project number that this dataset belongs
-- to.
dProjectNumber :: Lens' Dataset (Maybe Int64)
dProjectNumber
  = lens _dProjectNumber
      (\ s a -> s{_dProjectNumber = a})

-- | The dataset name.
dName :: Lens' Dataset (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The Google generated ID of the dataset, immutable.
dId :: Lens' Dataset (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

-- | The time this dataset was created, in seconds from the epoch.
dCreateTime :: Lens' Dataset (Maybe Int64)
dCreateTime
  = lens _dCreateTime (\ s a -> s{_dCreateTime = a})

instance FromJSON Dataset where
        parseJSON
          = withObject "Dataset"
              (\ o ->
                 Dataset <$>
                   (o .:? "isPublic") <*> (o .:? "projectNumber") <*>
                     (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "createTime"))

instance ToJSON Dataset where
        toJSON Dataset{..}
          = object
              (catMaybes
                 [("isPublic" .=) <$> _dIsPublic,
                  ("projectNumber" .=) <$> _dProjectNumber,
                  ("name" .=) <$> _dName, ("id" .=) <$> _dId,
                  ("createTime" .=) <$> _dCreateTime])

-- | A read alignment describes a linear alignment of a string of DNA to a
-- reference sequence, in addition to metadata about the fragment (the
-- molecule of DNA sequenced) and the read (the bases which were read by
-- the sequencer). A read is equivalent to a line in a SAM file. A read
-- belongs to exactly one read group and exactly one read group set.
-- Generating a reference-aligned sequence string When interacting with
-- mapped reads, it\'s often useful to produce a string representing the
-- local alignment of the read to reference. The following pseudocode
-- demonstrates one way of doing this: out = \"\" offset = 0 for c in
-- read.alignment.cigar { switch c.operation { case \"ALIGNMENT_MATCH\",
-- \"SEQUENCE_MATCH\", \"SEQUENCE_MISMATCH\": out +=
-- read.alignedSequence[offset:offset+c.operationLength] offset +=
-- c.operationLength break case \"CLIP_SOFT\", \"INSERT\": offset +=
-- c.operationLength break case \"PAD\": out += repeat(\"*\",
-- c.operationLength) break case \"DELETE\": out += repeat(\"-\",
-- c.operationLength) break case \"SKIP\": out += repeat(\" \",
-- c.operationLength) break case \"CLIP_HARD\": break } } return out
-- Converting to SAM\'s CIGAR string The following pseudocode generates a
-- SAM CIGAR string from the cigar field. Note that this is a lossy
-- conversion (cigar.referenceSequence is lost). cigarMap = {
-- \"ALIGNMENT_MATCH\": \"M\", \"INSERT\": \"I\", \"DELETE\": \"D\",
-- \"SKIP\": \"N\", \"CLIP_SOFT\": \"S\", \"CLIP_HARD\": \"H\", \"PAD\":
-- \"P\", \"SEQUENCE_MATCH\": \"=\", \"SEQUENCE_MISMATCH\": \"X\", }
-- cigarStr = \"\" for c in read.alignment.cigar { cigarStr +=
-- c.operationLength + cigarMap[c.operation] } return cigarStr
--
-- /See:/ 'read'' smart constructor.
data Read' = Read'
    { _rFragmentLength            :: !(Maybe Int32)
    , _rDuplicateFragment         :: !(Maybe Bool)
    , _rReadGroupSetId            :: !(Maybe Text)
    , _rNextMatePosition          :: !(Maybe Position)
    , _rFailedVendorQualityChecks :: !(Maybe Bool)
    , _rAlignment                 :: !(Maybe LinearAlignment)
    , _rFragmentName              :: !(Maybe Text)
    , _rNumberReads               :: !(Maybe Int32)
    , _rId                        :: !(Maybe Text)
    , _rSecondaryAlignment        :: !(Maybe Bool)
    , _rReadGroupId               :: !(Maybe Text)
    , _rSupplementaryAlignment    :: !(Maybe Bool)
    , _rAlignedSequence           :: !(Maybe Text)
    , _rProperPlacement           :: !(Maybe Bool)
    , _rInfo                      :: !(Maybe ReadInfo)
    , _rReadNumber                :: !(Maybe Int32)
    , _rAlignedQuality            :: !(Maybe [Int32])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Read' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rFragmentLength'
--
-- * 'rDuplicateFragment'
--
-- * 'rReadGroupSetId'
--
-- * 'rNextMatePosition'
--
-- * 'rFailedVendorQualityChecks'
--
-- * 'rAlignment'
--
-- * 'rFragmentName'
--
-- * 'rNumberReads'
--
-- * 'rId'
--
-- * 'rSecondaryAlignment'
--
-- * 'rReadGroupId'
--
-- * 'rSupplementaryAlignment'
--
-- * 'rAlignedSequence'
--
-- * 'rProperPlacement'
--
-- * 'rInfo'
--
-- * 'rReadNumber'
--
-- * 'rAlignedQuality'
read'
    :: Read'
read' =
    Read'
    { _rFragmentLength = Nothing
    , _rDuplicateFragment = Nothing
    , _rReadGroupSetId = Nothing
    , _rNextMatePosition = Nothing
    , _rFailedVendorQualityChecks = Nothing
    , _rAlignment = Nothing
    , _rFragmentName = Nothing
    , _rNumberReads = Nothing
    , _rId = Nothing
    , _rSecondaryAlignment = Nothing
    , _rReadGroupId = Nothing
    , _rSupplementaryAlignment = Nothing
    , _rAlignedSequence = Nothing
    , _rProperPlacement = Nothing
    , _rInfo = Nothing
    , _rReadNumber = Nothing
    , _rAlignedQuality = Nothing
    }

-- | The observed length of the fragment, equivalent to TLEN in SAM.
rFragmentLength :: Lens' Read' (Maybe Int32)
rFragmentLength
  = lens _rFragmentLength
      (\ s a -> s{_rFragmentLength = a})

-- | The fragment is a PCR or optical duplicate (SAM flag 0x400)
rDuplicateFragment :: Lens' Read' (Maybe Bool)
rDuplicateFragment
  = lens _rDuplicateFragment
      (\ s a -> s{_rDuplicateFragment = a})

-- | The ID of the read group set this read belongs to. (Every read must
-- belong to exactly one read group set.)
rReadGroupSetId :: Lens' Read' (Maybe Text)
rReadGroupSetId
  = lens _rReadGroupSetId
      (\ s a -> s{_rReadGroupSetId = a})

-- | The position of the primary alignment of the (readNumber+1)%numberReads
-- read in the fragment. It replaces mate position and mate strand in SAM.
-- This field will be unset if that read is unmapped or if the fragment
-- only has a single read.
rNextMatePosition :: Lens' Read' (Maybe Position)
rNextMatePosition
  = lens _rNextMatePosition
      (\ s a -> s{_rNextMatePosition = a})

-- | SAM flag 0x200
rFailedVendorQualityChecks :: Lens' Read' (Maybe Bool)
rFailedVendorQualityChecks
  = lens _rFailedVendorQualityChecks
      (\ s a -> s{_rFailedVendorQualityChecks = a})

-- | The linear alignment for this alignment record. This field will be unset
-- if the read is unmapped.
rAlignment :: Lens' Read' (Maybe LinearAlignment)
rAlignment
  = lens _rAlignment (\ s a -> s{_rAlignment = a})

-- | The fragment name. Equivalent to QNAME (query template name) in SAM.
rFragmentName :: Lens' Read' (Maybe Text)
rFragmentName
  = lens _rFragmentName
      (\ s a -> s{_rFragmentName = a})

-- | The number of reads in the fragment (extension to SAM flag 0x1).
rNumberReads :: Lens' Read' (Maybe Int32)
rNumberReads
  = lens _rNumberReads (\ s a -> s{_rNumberReads = a})

-- | The unique ID for this read. This is a generated unique ID, not to be
-- confused with fragmentName.
rId :: Lens' Read' (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | Whether this alignment is secondary. Equivalent to SAM flag 0x100. A
-- secondary alignment represents an alternative to the primary alignment
-- for this read. Aligners may return secondary alignments if a read can
-- map ambiguously to multiple coordinates in the genome. By convention,
-- each read has one and only one alignment where both secondaryAlignment
-- and supplementaryAlignment are false.
rSecondaryAlignment :: Lens' Read' (Maybe Bool)
rSecondaryAlignment
  = lens _rSecondaryAlignment
      (\ s a -> s{_rSecondaryAlignment = a})

-- | The ID of the read group this read belongs to. (Every read must belong
-- to exactly one read group.)
rReadGroupId :: Lens' Read' (Maybe Text)
rReadGroupId
  = lens _rReadGroupId (\ s a -> s{_rReadGroupId = a})

-- | Whether this alignment is supplementary. Equivalent to SAM flag 0x800.
-- Supplementary alignments are used in the representation of a chimeric
-- alignment. In a chimeric alignment, a read is split into multiple linear
-- alignments that map to different reference contigs. The first linear
-- alignment in the read will be designated as the representative
-- alignment; the remaining linear alignments will be designated as
-- supplementary alignments. These alignments may have different mapping
-- quality scores. In each linear alignment in a chimeric alignment, the
-- read will be hard clipped. The alignedSequence and alignedQuality fields
-- in the alignment record will only represent the bases for its respective
-- linear alignment.
rSupplementaryAlignment :: Lens' Read' (Maybe Bool)
rSupplementaryAlignment
  = lens _rSupplementaryAlignment
      (\ s a -> s{_rSupplementaryAlignment = a})

-- | The bases of the read sequence contained in this alignment record,
-- without CIGAR operations applied. alignedSequence and alignedQuality may
-- be shorter than the full read sequence and quality. This will occur if
-- the alignment is part of a chimeric alignment, or if the read was
-- trimmed. When this occurs, the CIGAR for this read will begin\/end with
-- a hard clip operator that will indicate the length of the excised
-- sequence.
rAlignedSequence :: Lens' Read' (Maybe Text)
rAlignedSequence
  = lens _rAlignedSequence
      (\ s a -> s{_rAlignedSequence = a})

-- | The orientation and the distance between reads from the fragment are
-- consistent with the sequencing protocol (SAM flag 0x2)
rProperPlacement :: Lens' Read' (Maybe Bool)
rProperPlacement
  = lens _rProperPlacement
      (\ s a -> s{_rProperPlacement = a})

-- | A string which maps to an array of values.
rInfo :: Lens' Read' (Maybe ReadInfo)
rInfo = lens _rInfo (\ s a -> s{_rInfo = a})

-- | The read number in sequencing. 0-based and less than numberReads. This
-- field replaces SAM flag 0x40 and 0x80.
rReadNumber :: Lens' Read' (Maybe Int32)
rReadNumber
  = lens _rReadNumber (\ s a -> s{_rReadNumber = a})

-- | The quality of the read sequence contained in this alignment record.
-- alignedSequence and alignedQuality may be shorter than the full read
-- sequence and quality. This will occur if the alignment is part of a
-- chimeric alignment, or if the read was trimmed. When this occurs, the
-- CIGAR for this read will begin\/end with a hard clip operator that will
-- indicate the length of the excised sequence.
rAlignedQuality :: Lens' Read' [Int32]
rAlignedQuality
  = lens _rAlignedQuality
      (\ s a -> s{_rAlignedQuality = a})
      . _Default
      . _Coerce

instance FromJSON Read' where
        parseJSON
          = withObject "Read"
              (\ o ->
                 Read' <$>
                   (o .:? "fragmentLength") <*>
                     (o .:? "duplicateFragment")
                     <*> (o .:? "readGroupSetId")
                     <*> (o .:? "nextMatePosition")
                     <*> (o .:? "failedVendorQualityChecks")
                     <*> (o .:? "alignment")
                     <*> (o .:? "fragmentName")
                     <*> (o .:? "numberReads")
                     <*> (o .:? "id")
                     <*> (o .:? "secondaryAlignment")
                     <*> (o .:? "readGroupId")
                     <*> (o .:? "supplementaryAlignment")
                     <*> (o .:? "alignedSequence")
                     <*> (o .:? "properPlacement")
                     <*> (o .:? "info")
                     <*> (o .:? "readNumber")
                     <*> (o .:? "alignedQuality" .!= mempty))

instance ToJSON Read' where
        toJSON Read'{..}
          = object
              (catMaybes
                 [("fragmentLength" .=) <$> _rFragmentLength,
                  ("duplicateFragment" .=) <$> _rDuplicateFragment,
                  ("readGroupSetId" .=) <$> _rReadGroupSetId,
                  ("nextMatePosition" .=) <$> _rNextMatePosition,
                  ("failedVendorQualityChecks" .=) <$>
                    _rFailedVendorQualityChecks,
                  ("alignment" .=) <$> _rAlignment,
                  ("fragmentName" .=) <$> _rFragmentName,
                  ("numberReads" .=) <$> _rNumberReads,
                  ("id" .=) <$> _rId,
                  ("secondaryAlignment" .=) <$> _rSecondaryAlignment,
                  ("readGroupId" .=) <$> _rReadGroupId,
                  ("supplementaryAlignment" .=) <$>
                    _rSupplementaryAlignment,
                  ("alignedSequence" .=) <$> _rAlignedSequence,
                  ("properPlacement" .=) <$> _rProperPlacement,
                  ("info" .=) <$> _rInfo,
                  ("readNumber" .=) <$> _rReadNumber,
                  ("alignedQuality" .=) <$> _rAlignedQuality])

--
-- /See:/ 'transcriptExon' smart constructor.
data TranscriptExon = TranscriptExon
    { _teStart :: !(Maybe Int64)
    , _teEnd   :: !(Maybe Int64)
    , _teFrame :: !(Maybe Int32Value)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranscriptExon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teStart'
--
-- * 'teEnd'
--
-- * 'teFrame'
transcriptExon
    :: TranscriptExon
transcriptExon =
    TranscriptExon
    { _teStart = Nothing
    , _teEnd = Nothing
    , _teFrame = Nothing
    }

-- | The start position of the exon on this annotation\'s reference sequence,
-- 0-based inclusive. Note that this is relative to the reference start,
-- and not the containing annotation start.
teStart :: Lens' TranscriptExon (Maybe Int64)
teStart = lens _teStart (\ s a -> s{_teStart = a})

-- | The end position of the exon on this annotation\'s reference sequence,
-- 0-based exclusive. Note that this is relative to the reference start,
-- and not the containing annotation start.
teEnd :: Lens' TranscriptExon (Maybe Int64)
teEnd = lens _teEnd (\ s a -> s{_teEnd = a})

-- | The frame of this exon. Contains a value of 0, 1, or 2, which indicates
-- the offset of the first coding base of the exon within the reading frame
-- of the coding DNA sequence, if any. This field is dependent on the
-- strandedness of this annotation (see Annotation.position.reverseStrand).
-- For forward stranded annotations, this offset is relative to the
-- exon.start. For reverse strand annotations, this offset is relative to
-- the exon.end-1. Unset if this exon does not intersect the coding
-- sequence. Upon creation of a transcript, the frame must be populated for
-- all or none of the coding exons.
teFrame :: Lens' TranscriptExon (Maybe Int32Value)
teFrame = lens _teFrame (\ s a -> s{_teFrame = a})

instance FromJSON TranscriptExon where
        parseJSON
          = withObject "TranscriptExon"
              (\ o ->
                 TranscriptExon <$>
                   (o .:? "start") <*> (o .:? "end") <*>
                     (o .:? "frame"))

instance ToJSON TranscriptExon where
        toJSON TranscriptExon{..}
          = object
              (catMaybes
                 [("start" .=) <$> _teStart, ("end" .=) <$> _teEnd,
                  ("frame" .=) <$> _teFrame])

-- | A call represents the determination of genotype with respect to a
-- particular variant. It may include associated information such as
-- quality and phasing. For example, a call might assign a probability of
-- 0.32 to the occurrence of a SNP named rs1234 in a call set with the name
-- NA12345.
--
-- /See:/ 'call' smart constructor.
data Call = Call
    { _cGenotypeLikelihood :: !(Maybe [Double])
    , _cCallSetName        :: !(Maybe Text)
    , _cPhaseset           :: !(Maybe Text)
    , _cCallSetId          :: !(Maybe Text)
    , _cGenotype           :: !(Maybe [Int32])
    , _cInfo               :: !(Maybe CallInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Call' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cGenotypeLikelihood'
--
-- * 'cCallSetName'
--
-- * 'cPhaseset'
--
-- * 'cCallSetId'
--
-- * 'cGenotype'
--
-- * 'cInfo'
call
    :: Call
call =
    Call
    { _cGenotypeLikelihood = Nothing
    , _cCallSetName = Nothing
    , _cPhaseset = Nothing
    , _cCallSetId = Nothing
    , _cGenotype = Nothing
    , _cInfo = Nothing
    }

-- | The genotype likelihoods for this variant call. Each array entry
-- represents how likely a specific genotype is for this call. The value
-- ordering is defined by the GL tag in the VCF spec. If Phred-scaled
-- genotype likelihood scores (PL) are available and log10(P) genotype
-- likelihood scores (GL) are not, PL scores are converted to GL scores. If
-- both are available, PL scores are stored in info.
cGenotypeLikelihood :: Lens' Call [Double]
cGenotypeLikelihood
  = lens _cGenotypeLikelihood
      (\ s a -> s{_cGenotypeLikelihood = a})
      . _Default
      . _Coerce

-- | The name of the call set this variant call belongs to.
cCallSetName :: Lens' Call (Maybe Text)
cCallSetName
  = lens _cCallSetName (\ s a -> s{_cCallSetName = a})

-- | If this field is present, this variant call\'s genotype ordering implies
-- the phase of the bases and is consistent with any other variant calls in
-- the same reference sequence which have the same phaseset value. When
-- importing data from VCF, if the genotype data was phased but no phase
-- set was specified this field will be set to *.
cPhaseset :: Lens' Call (Maybe Text)
cPhaseset
  = lens _cPhaseset (\ s a -> s{_cPhaseset = a})

-- | The ID of the call set this variant call belongs to.
cCallSetId :: Lens' Call (Maybe Text)
cCallSetId
  = lens _cCallSetId (\ s a -> s{_cCallSetId = a})

-- | The genotype of this variant call. Each value represents either the
-- value of the referenceBases field or a 1-based index into
-- alternateBases. If a variant had a referenceBases value of T and an
-- alternateBases value of [\"A\", \"C\"], and the genotype was [2, 1],
-- that would mean the call represented the heterozygous value CA for this
-- variant. If the genotype was instead [0, 1], the represented value would
-- be TA. Ordering of the genotype values is important if the phaseset is
-- present. If a genotype is not called (that is, a . is present in the GT
-- string) -1 is returned.
cGenotype :: Lens' Call [Int32]
cGenotype
  = lens _cGenotype (\ s a -> s{_cGenotype = a}) .
      _Default
      . _Coerce

-- | A string which maps to an array of values.
cInfo :: Lens' Call (Maybe CallInfo)
cInfo = lens _cInfo (\ s a -> s{_cInfo = a})

instance FromJSON Call where
        parseJSON
          = withObject "Call"
              (\ o ->
                 Call <$>
                   (o .:? "genotypeLikelihood" .!= mempty) <*>
                     (o .:? "callSetName")
                     <*> (o .:? "phaseset")
                     <*> (o .:? "callSetId")
                     <*> (o .:? "genotype" .!= mempty)
                     <*> (o .:? "info"))

instance ToJSON Call where
        toJSON Call{..}
          = object
              (catMaybes
                 [("genotypeLikelihood" .=) <$> _cGenotypeLikelihood,
                  ("callSetName" .=) <$> _cCallSetName,
                  ("phaseset" .=) <$> _cPhaseset,
                  ("callSetId" .=) <$> _cCallSetId,
                  ("genotype" .=) <$> _cGenotype,
                  ("info" .=) <$> _cInfo])

-- | A 0-based half-open genomic coordinate range for search requests.
--
-- /See:/ 'queryRange' smart constructor.
data QueryRange = QueryRange
    { _qrStart         :: !(Maybe Int64)
    , _qrReferenceId   :: !(Maybe Text)
    , _qrReferenceName :: !(Maybe Text)
    , _qrEnd           :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueryRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrStart'
--
-- * 'qrReferenceId'
--
-- * 'qrReferenceName'
--
-- * 'qrEnd'
queryRange
    :: QueryRange
queryRange =
    QueryRange
    { _qrStart = Nothing
    , _qrReferenceId = Nothing
    , _qrReferenceName = Nothing
    , _qrEnd = Nothing
    }

-- | The start position of the range on the reference, 0-based inclusive. If
-- specified, referenceId or referenceName must also be specified. Defaults
-- to 0.
qrStart :: Lens' QueryRange (Maybe Int64)
qrStart = lens _qrStart (\ s a -> s{_qrStart = a})

-- | The ID of the reference to query. At most one of referenceId and
-- referenceName should be specified.
qrReferenceId :: Lens' QueryRange (Maybe Text)
qrReferenceId
  = lens _qrReferenceId
      (\ s a -> s{_qrReferenceId = a})

-- | The name of the reference to query, within the reference set associated
-- with this query. At most one of referenceId and referenceName pshould be
-- specified.
qrReferenceName :: Lens' QueryRange (Maybe Text)
qrReferenceName
  = lens _qrReferenceName
      (\ s a -> s{_qrReferenceName = a})

-- | The end position of the range on the reference, 0-based exclusive. If
-- specified, referenceId or referenceName must also be specified. If unset
-- or 0, defaults to the length of the reference.
qrEnd :: Lens' QueryRange (Maybe Int64)
qrEnd = lens _qrEnd (\ s a -> s{_qrEnd = a})

instance FromJSON QueryRange where
        parseJSON
          = withObject "QueryRange"
              (\ o ->
                 QueryRange <$>
                   (o .:? "start") <*> (o .:? "referenceId") <*>
                     (o .:? "referenceName")
                     <*> (o .:? "end"))

instance ToJSON QueryRange where
        toJSON QueryRange{..}
          = object
              (catMaybes
                 [("start" .=) <$> _qrStart,
                  ("referenceId" .=) <$> _qrReferenceId,
                  ("referenceName" .=) <$> _qrReferenceName,
                  ("end" .=) <$> _qrEnd])

--
-- /See:/ 'batchCreateAnnotationsRequest' smart constructor.
newtype BatchCreateAnnotationsRequest = BatchCreateAnnotationsRequest
    { _bcarAnnotations :: Maybe [Annotation]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchCreateAnnotationsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcarAnnotations'
batchCreateAnnotationsRequest
    :: BatchCreateAnnotationsRequest
batchCreateAnnotationsRequest =
    BatchCreateAnnotationsRequest
    { _bcarAnnotations = Nothing
    }

-- | The annotations to be created. At most 4096 can be specified in a single
-- request.
bcarAnnotations :: Lens' BatchCreateAnnotationsRequest [Annotation]
bcarAnnotations
  = lens _bcarAnnotations
      (\ s a -> s{_bcarAnnotations = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreateAnnotationsRequest where
        parseJSON
          = withObject "BatchCreateAnnotationsRequest"
              (\ o ->
                 BatchCreateAnnotationsRequest <$>
                   (o .:? "annotations" .!= mempty))

instance ToJSON BatchCreateAnnotationsRequest where
        toJSON BatchCreateAnnotationsRequest{..}
          = object
              (catMaybes [("annotations" .=) <$> _bcarAnnotations])

--
-- /See:/ 'mergeVariantsRequest' smart constructor.
newtype MergeVariantsRequest = MergeVariantsRequest
    { _mvrVariants :: Maybe [Variant]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MergeVariantsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvrVariants'
mergeVariantsRequest
    :: MergeVariantsRequest
mergeVariantsRequest =
    MergeVariantsRequest
    { _mvrVariants = Nothing
    }

-- | The variants to be merged with existing variants.
mvrVariants :: Lens' MergeVariantsRequest [Variant]
mvrVariants
  = lens _mvrVariants (\ s a -> s{_mvrVariants = a}) .
      _Default
      . _Coerce

instance FromJSON MergeVariantsRequest where
        parseJSON
          = withObject "MergeVariantsRequest"
              (\ o ->
                 MergeVariantsRequest <$>
                   (o .:? "variants" .!= mempty))

instance ToJSON MergeVariantsRequest where
        toJSON MergeVariantsRequest{..}
          = object
              (catMaybes [("variants" .=) <$> _mvrVariants])

-- | A read group is all the data that\'s processed the same way by the
-- sequencer.
--
-- /See:/ 'readGroup' smart constructor.
data ReadGroup = ReadGroup
    { _rgReferenceSetId      :: !(Maybe Text)
    , _rgPrograms            :: !(Maybe [ReadGroupProgram])
    , _rgExperiment          :: !(Maybe ReadGroupExperiment)
    , _rgName                :: !(Maybe Text)
    , _rgDatasetId           :: !(Maybe Text)
    , _rgId                  :: !(Maybe Text)
    , _rgSampleId            :: !(Maybe Text)
    , _rgPredictedInsertSize :: !(Maybe Int32)
    , _rgDescription         :: !(Maybe Text)
    , _rgInfo                :: !(Maybe ReadGroupInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgReferenceSetId'
--
-- * 'rgPrograms'
--
-- * 'rgExperiment'
--
-- * 'rgName'
--
-- * 'rgDatasetId'
--
-- * 'rgId'
--
-- * 'rgSampleId'
--
-- * 'rgPredictedInsertSize'
--
-- * 'rgDescription'
--
-- * 'rgInfo'
readGroup
    :: ReadGroup
readGroup =
    ReadGroup
    { _rgReferenceSetId = Nothing
    , _rgPrograms = Nothing
    , _rgExperiment = Nothing
    , _rgName = Nothing
    , _rgDatasetId = Nothing
    , _rgId = Nothing
    , _rgSampleId = Nothing
    , _rgPredictedInsertSize = Nothing
    , _rgDescription = Nothing
    , _rgInfo = Nothing
    }

-- | The reference set the reads in this read group are aligned to. Required
-- if there are any read alignments.
rgReferenceSetId :: Lens' ReadGroup (Maybe Text)
rgReferenceSetId
  = lens _rgReferenceSetId
      (\ s a -> s{_rgReferenceSetId = a})

-- | The programs used to generate this read group. Programs are always
-- identical for all read groups within a read group set. For this reason,
-- only the first read group in a returned set will have this field
-- populated.
rgPrograms :: Lens' ReadGroup [ReadGroupProgram]
rgPrograms
  = lens _rgPrograms (\ s a -> s{_rgPrograms = a}) .
      _Default
      . _Coerce

-- | The experiment used to generate this read group.
rgExperiment :: Lens' ReadGroup (Maybe ReadGroupExperiment)
rgExperiment
  = lens _rgExperiment (\ s a -> s{_rgExperiment = a})

-- | The read group name. This corresponds to the \'RG ID field in the SAM
-- spec.
rgName :: Lens' ReadGroup (Maybe Text)
rgName = lens _rgName (\ s a -> s{_rgName = a})

-- | The ID of the dataset this read group belongs to.
rgDatasetId :: Lens' ReadGroup (Maybe Text)
rgDatasetId
  = lens _rgDatasetId (\ s a -> s{_rgDatasetId = a})

-- | The generated unique read group ID. Note: This is different than the
-- \'RG ID field in the SAM spec. For that value, see the name field.
rgId :: Lens' ReadGroup (Maybe Text)
rgId = lens _rgId (\ s a -> s{_rgId = a})

-- | The sample this read group\'s data was generated from. Note: This is not
-- an actual ID within this repository, but rather an identifier for a
-- sample which may be meaningful to some external system.
rgSampleId :: Lens' ReadGroup (Maybe Text)
rgSampleId
  = lens _rgSampleId (\ s a -> s{_rgSampleId = a})

-- | The predicted insert size of this read group. The insert size is the
-- length the sequenced DNA fragment from end-to-end, not including the
-- adapters.
rgPredictedInsertSize :: Lens' ReadGroup (Maybe Int32)
rgPredictedInsertSize
  = lens _rgPredictedInsertSize
      (\ s a -> s{_rgPredictedInsertSize = a})

-- | A free-form text description of this read group.
rgDescription :: Lens' ReadGroup (Maybe Text)
rgDescription
  = lens _rgDescription
      (\ s a -> s{_rgDescription = a})

-- | A string which maps to an array of values.
rgInfo :: Lens' ReadGroup (Maybe ReadGroupInfo)
rgInfo = lens _rgInfo (\ s a -> s{_rgInfo = a})

instance FromJSON ReadGroup where
        parseJSON
          = withObject "ReadGroup"
              (\ o ->
                 ReadGroup <$>
                   (o .:? "referenceSetId") <*>
                     (o .:? "programs" .!= mempty)
                     <*> (o .:? "experiment")
                     <*> (o .:? "name")
                     <*> (o .:? "datasetId")
                     <*> (o .:? "id")
                     <*> (o .:? "sampleId")
                     <*> (o .:? "predictedInsertSize")
                     <*> (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON ReadGroup where
        toJSON ReadGroup{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _rgReferenceSetId,
                  ("programs" .=) <$> _rgPrograms,
                  ("experiment" .=) <$> _rgExperiment,
                  ("name" .=) <$> _rgName,
                  ("datasetId" .=) <$> _rgDatasetId,
                  ("id" .=) <$> _rgId, ("sampleId" .=) <$> _rgSampleId,
                  ("predictedInsertSize" .=) <$>
                    _rgPredictedInsertSize,
                  ("description" .=) <$> _rgDescription,
                  ("info" .=) <$> _rgInfo])

-- |
--
-- /See:/ 'searchReferenceSetsRequest' smart constructor.
data SearchReferenceSetsRequest = SearchReferenceSetsRequest
    { _srsrMD5checksums :: !(Maybe [Text])
    , _srsrAccessions   :: !(Maybe [Text])
    , _srsrPageToken    :: !(Maybe Text)
    , _srsrAssemblyId   :: !(Maybe Text)
    , _srsrPageSize     :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReferenceSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsrMD5checksums'
--
-- * 'srsrAccessions'
--
-- * 'srsrPageToken'
--
-- * 'srsrAssemblyId'
--
-- * 'srsrPageSize'
searchReferenceSetsRequest
    :: SearchReferenceSetsRequest
searchReferenceSetsRequest =
    SearchReferenceSetsRequest
    { _srsrMD5checksums = Nothing
    , _srsrAccessions = Nothing
    , _srsrPageToken = Nothing
    , _srsrAssemblyId = Nothing
    , _srsrPageSize = Nothing
    }

-- | If present, return references for which the md5checksum matches. See
-- ReferenceSet.md5checksum for details.
srsrMD5checksums :: Lens' SearchReferenceSetsRequest [Text]
srsrMD5checksums
  = lens _srsrMD5checksums
      (\ s a -> s{_srsrMD5checksums = a})
      . _Default
      . _Coerce

-- | If present, return references for which the accession matches any of
-- these strings. Best to give a version number, for example
-- GCF_000001405.26. If only the main accession number is given then all
-- records with that main accession will be returned, whichever version.
-- Note that different versions will have different sequences.
srsrAccessions :: Lens' SearchReferenceSetsRequest [Text]
srsrAccessions
  = lens _srsrAccessions
      (\ s a -> s{_srsrAccessions = a})
      . _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
srsrPageToken :: Lens' SearchReferenceSetsRequest (Maybe Text)
srsrPageToken
  = lens _srsrPageToken
      (\ s a -> s{_srsrPageToken = a})

-- | If present, return reference sets for which a substring of their
-- assemblyId matches this string (case insensitive).
srsrAssemblyId :: Lens' SearchReferenceSetsRequest (Maybe Text)
srsrAssemblyId
  = lens _srsrAssemblyId
      (\ s a -> s{_srsrAssemblyId = a})

-- | Specifies the maximum number of results to return in a single page.
srsrPageSize :: Lens' SearchReferenceSetsRequest (Maybe Int32)
srsrPageSize
  = lens _srsrPageSize (\ s a -> s{_srsrPageSize = a})

instance FromJSON SearchReferenceSetsRequest where
        parseJSON
          = withObject "SearchReferenceSetsRequest"
              (\ o ->
                 SearchReferenceSetsRequest <$>
                   (o .:? "md5checksums" .!= mempty) <*>
                     (o .:? "accessions" .!= mempty)
                     <*> (o .:? "pageToken")
                     <*> (o .:? "assemblyId")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchReferenceSetsRequest where
        toJSON SearchReferenceSetsRequest{..}
          = object
              (catMaybes
                 [("md5checksums" .=) <$> _srsrMD5checksums,
                  ("accessions" .=) <$> _srsrAccessions,
                  ("pageToken" .=) <$> _srsrPageToken,
                  ("assemblyId" .=) <$> _srsrAssemblyId,
                  ("pageSize" .=) <$> _srsrPageSize])

--
-- /See:/ 'searchReferencesResponse' smart constructor.
data SearchReferencesResponse = SearchReferencesResponse
    { _srrNextPageToken :: !(Maybe Text)
    , _srrReferences    :: !(Maybe [Reference])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReferencesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrNextPageToken'
--
-- * 'srrReferences'
searchReferencesResponse
    :: SearchReferencesResponse
searchReferencesResponse =
    SearchReferencesResponse
    { _srrNextPageToken = Nothing
    , _srrReferences = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
srrNextPageToken :: Lens' SearchReferencesResponse (Maybe Text)
srrNextPageToken
  = lens _srrNextPageToken
      (\ s a -> s{_srrNextPageToken = a})

-- | The matching references.
srrReferences :: Lens' SearchReferencesResponse [Reference]
srrReferences
  = lens _srrReferences
      (\ s a -> s{_srrReferences = a})
      . _Default
      . _Coerce

instance FromJSON SearchReferencesResponse where
        parseJSON
          = withObject "SearchReferencesResponse"
              (\ o ->
                 SearchReferencesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "references" .!= mempty))

instance ToJSON SearchReferencesResponse where
        toJSON SearchReferencesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _srrNextPageToken,
                  ("references" .=) <$> _srrReferences])

-- | A call set is a collection of variant calls, typically for one sample.
-- It belongs to a variant set.
--
-- /See:/ 'callSet' smart constructor.
data CallSet = CallSet
    { _csCreated       :: !(Maybe Int64)
    , _csName          :: !(Maybe Text)
    , _csId            :: !(Maybe Text)
    , _csSampleId      :: !(Maybe Text)
    , _csVariantSetIds :: !(Maybe [Text])
    , _csInfo          :: !(Maybe CallSetInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csCreated'
--
-- * 'csName'
--
-- * 'csId'
--
-- * 'csSampleId'
--
-- * 'csVariantSetIds'
--
-- * 'csInfo'
callSet
    :: CallSet
callSet =
    CallSet
    { _csCreated = Nothing
    , _csName = Nothing
    , _csId = Nothing
    , _csSampleId = Nothing
    , _csVariantSetIds = Nothing
    , _csInfo = Nothing
    }

-- | The date this call set was created in milliseconds from the epoch.
csCreated :: Lens' CallSet (Maybe Int64)
csCreated
  = lens _csCreated (\ s a -> s{_csCreated = a})

-- | The call set name.
csName :: Lens' CallSet (Maybe Text)
csName = lens _csName (\ s a -> s{_csName = a})

-- | The Google generated ID of the call set, immutable.
csId :: Lens' CallSet (Maybe Text)
csId = lens _csId (\ s a -> s{_csId = a})

-- | The sample ID this call set corresponds to.
csSampleId :: Lens' CallSet (Maybe Text)
csSampleId
  = lens _csSampleId (\ s a -> s{_csSampleId = a})

-- | The IDs of the variant sets this call set belongs to.
csVariantSetIds :: Lens' CallSet [Text]
csVariantSetIds
  = lens _csVariantSetIds
      (\ s a -> s{_csVariantSetIds = a})
      . _Default
      . _Coerce

-- | A string which maps to an array of values.
csInfo :: Lens' CallSet (Maybe CallSetInfo)
csInfo = lens _csInfo (\ s a -> s{_csInfo = a})

instance FromJSON CallSet where
        parseJSON
          = withObject "CallSet"
              (\ o ->
                 CallSet <$>
                   (o .:? "created") <*> (o .:? "name") <*> (o .:? "id")
                     <*> (o .:? "sampleId")
                     <*> (o .:? "variantSetIds" .!= mempty)
                     <*> (o .:? "info"))

instance ToJSON CallSet where
        toJSON CallSet{..}
          = object
              (catMaybes
                 [("created" .=) <$> _csCreated,
                  ("name" .=) <$> _csName, ("id" .=) <$> _csId,
                  ("sampleId" .=) <$> _csSampleId,
                  ("variantSetIds" .=) <$> _csVariantSetIds,
                  ("info" .=) <$> _csInfo])

-- | A bucket over which read coverage has been precomputed. A bucket
-- corresponds to a specific range of the reference sequence.
--
-- /See:/ 'coverageBucket' smart constructor.
data CoverageBucket = CoverageBucket
    { _cbRange        :: !(Maybe Range)
    , _cbMeanCoverage :: !(Maybe Float)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoverageBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbRange'
--
-- * 'cbMeanCoverage'
coverageBucket
    :: CoverageBucket
coverageBucket =
    CoverageBucket
    { _cbRange = Nothing
    , _cbMeanCoverage = Nothing
    }

-- | The genomic coordinate range spanned by this bucket.
cbRange :: Lens' CoverageBucket (Maybe Range)
cbRange = lens _cbRange (\ s a -> s{_cbRange = a})

-- | The average number of reads which are aligned to each individual
-- reference base in this bucket.
cbMeanCoverage :: Lens' CoverageBucket (Maybe Float)
cbMeanCoverage
  = lens _cbMeanCoverage
      (\ s a -> s{_cbMeanCoverage = a})

instance FromJSON CoverageBucket where
        parseJSON
          = withObject "CoverageBucket"
              (\ o ->
                 CoverageBucket <$>
                   (o .:? "range") <*> (o .:? "meanCoverage"))

instance ToJSON CoverageBucket where
        toJSON CoverageBucket{..}
          = object
              (catMaybes
                 [("range" .=) <$> _cbRange,
                  ("meanCoverage" .=) <$> _cbMeanCoverage])

-- | A Variant annotation.
--
-- /See:/ 'variantAnnotation' smart constructor.
data VariantAnnotation = VariantAnnotation
    { _vaEffect               :: !(Maybe VariantAnnotationEffect)
    , _vaClinicalSignificance :: !(Maybe VariantAnnotationClinicalSignificance)
    , _vaAlternateBases       :: !(Maybe Text)
    , _vaGeneId               :: !(Maybe Text)
    , _vaConditions           :: !(Maybe [VariantAnnotationCondition])
    , _vaType                 :: !(Maybe VariantAnnotationType)
    , _vaTranscriptIds        :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vaEffect'
--
-- * 'vaClinicalSignificance'
--
-- * 'vaAlternateBases'
--
-- * 'vaGeneId'
--
-- * 'vaConditions'
--
-- * 'vaType'
--
-- * 'vaTranscriptIds'
variantAnnotation
    :: VariantAnnotation
variantAnnotation =
    VariantAnnotation
    { _vaEffect = Nothing
    , _vaClinicalSignificance = Nothing
    , _vaAlternateBases = Nothing
    , _vaGeneId = Nothing
    , _vaConditions = Nothing
    , _vaType = Nothing
    , _vaTranscriptIds = Nothing
    }

-- | Effect of the variant on the coding sequence.
vaEffect :: Lens' VariantAnnotation (Maybe VariantAnnotationEffect)
vaEffect = lens _vaEffect (\ s a -> s{_vaEffect = a})

-- | Describes the clinical significance of a variant. It is adapted from the
-- ClinVar controlled vocabulary for clinical significance described at:
-- http:\/\/www.ncbi.nlm.nih.gov\/clinvar\/docs\/clinsig\/
vaClinicalSignificance :: Lens' VariantAnnotation (Maybe VariantAnnotationClinicalSignificance)
vaClinicalSignificance
  = lens _vaClinicalSignificance
      (\ s a -> s{_vaClinicalSignificance = a})

-- | The alternate allele for this variant. If multiple alternate alleles
-- exist at this location, create a separate variant for each one, as they
-- may represent distinct conditions.
vaAlternateBases :: Lens' VariantAnnotation (Maybe Text)
vaAlternateBases
  = lens _vaAlternateBases
      (\ s a -> s{_vaAlternateBases = a})

-- | Google annotation ID of the gene affected by this variant. This should
-- be provided when the variant is created.
vaGeneId :: Lens' VariantAnnotation (Maybe Text)
vaGeneId = lens _vaGeneId (\ s a -> s{_vaGeneId = a})

-- | The set of conditions associated with this variant. A condition
-- describes the way a variant influences human health.
vaConditions :: Lens' VariantAnnotation [VariantAnnotationCondition]
vaConditions
  = lens _vaConditions (\ s a -> s{_vaConditions = a})
      . _Default
      . _Coerce

-- | Type has been adapted from ClinVar\'s list of variant types.
vaType :: Lens' VariantAnnotation (Maybe VariantAnnotationType)
vaType = lens _vaType (\ s a -> s{_vaType = a})

-- | Google annotation IDs of the transcripts affected by this variant. These
-- should be provided when the variant is created.
vaTranscriptIds :: Lens' VariantAnnotation [Text]
vaTranscriptIds
  = lens _vaTranscriptIds
      (\ s a -> s{_vaTranscriptIds = a})
      . _Default
      . _Coerce

instance FromJSON VariantAnnotation where
        parseJSON
          = withObject "VariantAnnotation"
              (\ o ->
                 VariantAnnotation <$>
                   (o .:? "effect") <*> (o .:? "clinicalSignificance")
                     <*> (o .:? "alternateBases")
                     <*> (o .:? "geneId")
                     <*> (o .:? "conditions" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "transcriptIds" .!= mempty))

instance ToJSON VariantAnnotation where
        toJSON VariantAnnotation{..}
          = object
              (catMaybes
                 [("effect" .=) <$> _vaEffect,
                  ("clinicalSignificance" .=) <$>
                    _vaClinicalSignificance,
                  ("alternateBases" .=) <$> _vaAlternateBases,
                  ("geneId" .=) <$> _vaGeneId,
                  ("conditions" .=) <$> _vaConditions,
                  ("type" .=) <$> _vaType,
                  ("transcriptIds" .=) <$> _vaTranscriptIds])

-- | The read group set search request.
--
-- /See:/ 'searchReadGroupSetsRequest' smart constructor.
data SearchReadGroupSetsRequest = SearchReadGroupSetsRequest
    { _srgsrDatasetIds :: !(Maybe [Text])
    , _srgsrName       :: !(Maybe Text)
    , _srgsrPageToken  :: !(Maybe Text)
    , _srgsrPageSize   :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReadGroupSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srgsrDatasetIds'
--
-- * 'srgsrName'
--
-- * 'srgsrPageToken'
--
-- * 'srgsrPageSize'
searchReadGroupSetsRequest
    :: SearchReadGroupSetsRequest
searchReadGroupSetsRequest =
    SearchReadGroupSetsRequest
    { _srgsrDatasetIds = Nothing
    , _srgsrName = Nothing
    , _srgsrPageToken = Nothing
    , _srgsrPageSize = Nothing
    }

-- | Restricts this query to read group sets within the given datasets. At
-- least one ID must be provided.
srgsrDatasetIds :: Lens' SearchReadGroupSetsRequest [Text]
srgsrDatasetIds
  = lens _srgsrDatasetIds
      (\ s a -> s{_srgsrDatasetIds = a})
      . _Default
      . _Coerce

-- | Only return read group sets for which a substring of the name matches
-- this string.
srgsrName :: Lens' SearchReadGroupSetsRequest (Maybe Text)
srgsrName
  = lens _srgsrName (\ s a -> s{_srgsrName = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
srgsrPageToken :: Lens' SearchReadGroupSetsRequest (Maybe Text)
srgsrPageToken
  = lens _srgsrPageToken
      (\ s a -> s{_srgsrPageToken = a})

-- | Specifies number of results to return in a single page. If unspecified,
-- it will default to 256. The maximum value is 1024.
srgsrPageSize :: Lens' SearchReadGroupSetsRequest (Maybe Int32)
srgsrPageSize
  = lens _srgsrPageSize
      (\ s a -> s{_srgsrPageSize = a})

instance FromJSON SearchReadGroupSetsRequest where
        parseJSON
          = withObject "SearchReadGroupSetsRequest"
              (\ o ->
                 SearchReadGroupSetsRequest <$>
                   (o .:? "datasetIds" .!= mempty) <*> (o .:? "name")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchReadGroupSetsRequest where
        toJSON SearchReadGroupSetsRequest{..}
          = object
              (catMaybes
                 [("datasetIds" .=) <$> _srgsrDatasetIds,
                  ("name" .=) <$> _srgsrName,
                  ("pageToken" .=) <$> _srgsrPageToken,
                  ("pageSize" .=) <$> _srgsrPageSize])

-- |
--
-- /See:/ 'batchAnnotationsResponseEntryStatus' smart constructor.
data BatchAnnotationsResponseEntryStatus = BatchAnnotationsResponseEntryStatus
    { _baresCode    :: !(Maybe Int32)
    , _baresMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchAnnotationsResponseEntryStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baresCode'
--
-- * 'baresMessage'
batchAnnotationsResponseEntryStatus
    :: BatchAnnotationsResponseEntryStatus
batchAnnotationsResponseEntryStatus =
    BatchAnnotationsResponseEntryStatus
    { _baresCode = Nothing
    , _baresMessage = Nothing
    }

-- | The HTTP status code for this operation.
baresCode :: Lens' BatchAnnotationsResponseEntryStatus (Maybe Int32)
baresCode
  = lens _baresCode (\ s a -> s{_baresCode = a})

-- | Error message for this status, if any.
baresMessage :: Lens' BatchAnnotationsResponseEntryStatus (Maybe Text)
baresMessage
  = lens _baresMessage (\ s a -> s{_baresMessage = a})

instance FromJSON BatchAnnotationsResponseEntryStatus
         where
        parseJSON
          = withObject "BatchAnnotationsResponseEntryStatus"
              (\ o ->
                 BatchAnnotationsResponseEntryStatus <$>
                   (o .:? "code") <*> (o .:? "message"))

instance ToJSON BatchAnnotationsResponseEntryStatus
         where
        toJSON BatchAnnotationsResponseEntryStatus{..}
          = object
              (catMaybes
                 [("code" .=) <$> _baresCode,
                  ("message" .=) <$> _baresMessage])

-- | A reference is a canonical assembled DNA sequence, intended to act as a
-- reference coordinate space for other genomic annotations. A single
-- reference might represent the human chromosome 1 or mitochandrial DNA,
-- for instance. A reference belongs to one or more reference sets.
--
-- /See:/ 'reference' smart constructor.
data Reference = Reference
    { _refLength           :: !(Maybe Int64)
    , _refSourceAccessions :: !(Maybe [Text])
    , _refMD5checksum      :: !(Maybe Text)
    , _refName             :: !(Maybe Text)
    , _refNcbiTaxonId      :: !(Maybe Int32)
    , _refId               :: !(Maybe Text)
    , _refSourceURI        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Reference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'refLength'
--
-- * 'refSourceAccessions'
--
-- * 'refMD5checksum'
--
-- * 'refName'
--
-- * 'refNcbiTaxonId'
--
-- * 'refId'
--
-- * 'refSourceURI'
reference
    :: Reference
reference =
    Reference
    { _refLength = Nothing
    , _refSourceAccessions = Nothing
    , _refMD5checksum = Nothing
    , _refName = Nothing
    , _refNcbiTaxonId = Nothing
    , _refId = Nothing
    , _refSourceURI = Nothing
    }

-- | The length of this reference\'s sequence.
refLength :: Lens' Reference (Maybe Int64)
refLength
  = lens _refLength (\ s a -> s{_refLength = a})

-- | All known corresponding accession IDs in INSDC (GenBank\/ENA\/DDBJ)
-- ideally with a version number, for example GCF_000001405.26.
refSourceAccessions :: Lens' Reference [Text]
refSourceAccessions
  = lens _refSourceAccessions
      (\ s a -> s{_refSourceAccessions = a})
      . _Default
      . _Coerce

-- | MD5 of the upper-case sequence excluding all whitespace characters (this
-- is equivalent to SQ:M5 in SAM). This value is represented in lower case
-- hexadecimal format.
refMD5checksum :: Lens' Reference (Maybe Text)
refMD5checksum
  = lens _refMD5checksum
      (\ s a -> s{_refMD5checksum = a})

-- | The name of this reference, for example 22.
refName :: Lens' Reference (Maybe Text)
refName = lens _refName (\ s a -> s{_refName = a})

-- | ID from http:\/\/www.ncbi.nlm.nih.gov\/taxonomy (e.g. 9606->human) if
-- not specified by the containing reference set.
refNcbiTaxonId :: Lens' Reference (Maybe Int32)
refNcbiTaxonId
  = lens _refNcbiTaxonId
      (\ s a -> s{_refNcbiTaxonId = a})

-- | The Google generated immutable ID of the reference.
refId :: Lens' Reference (Maybe Text)
refId = lens _refId (\ s a -> s{_refId = a})

-- | The URI from which the sequence was obtained. Specifies a FASTA format
-- file\/string with one name, sequence pair.
refSourceURI :: Lens' Reference (Maybe Text)
refSourceURI
  = lens _refSourceURI (\ s a -> s{_refSourceURI = a})

instance FromJSON Reference where
        parseJSON
          = withObject "Reference"
              (\ o ->
                 Reference <$>
                   (o .:? "length") <*>
                     (o .:? "sourceAccessions" .!= mempty)
                     <*> (o .:? "md5checksum")
                     <*> (o .:? "name")
                     <*> (o .:? "ncbiTaxonId")
                     <*> (o .:? "id")
                     <*> (o .:? "sourceURI"))

instance ToJSON Reference where
        toJSON Reference{..}
          = object
              (catMaybes
                 [("length" .=) <$> _refLength,
                  ("sourceAccessions" .=) <$> _refSourceAccessions,
                  ("md5checksum" .=) <$> _refMD5checksum,
                  ("name" .=) <$> _refName,
                  ("ncbiTaxonId" .=) <$> _refNcbiTaxonId,
                  ("id" .=) <$> _refId,
                  ("sourceURI" .=) <$> _refSourceURI])

--
-- /See:/ 'batchAnnotationsResponse' smart constructor.
newtype BatchAnnotationsResponse = BatchAnnotationsResponse
    { _barEntries :: Maybe [BatchAnnotationsResponseEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchAnnotationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'barEntries'
batchAnnotationsResponse
    :: BatchAnnotationsResponse
batchAnnotationsResponse =
    BatchAnnotationsResponse
    { _barEntries = Nothing
    }

-- | The resulting per-annotation entries, ordered consistently with the
-- original request.
barEntries :: Lens' BatchAnnotationsResponse [BatchAnnotationsResponseEntry]
barEntries
  = lens _barEntries (\ s a -> s{_barEntries = a}) .
      _Default
      . _Coerce

instance FromJSON BatchAnnotationsResponse where
        parseJSON
          = withObject "BatchAnnotationsResponse"
              (\ o ->
                 BatchAnnotationsResponse <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON BatchAnnotationsResponse where
        toJSON BatchAnnotationsResponse{..}
          = object (catMaybes [("entries" .=) <$> _barEntries])

-- | A string which maps to an array of values.
--
-- /See:/ 'readGroupInfo' smart constructor.
data ReadGroupInfo =
    ReadGroupInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupInfo' with the minimum fields required to make a request.
--
readGroupInfo
    :: ReadGroupInfo
readGroupInfo = ReadGroupInfo

instance FromJSON ReadGroupInfo where
        parseJSON
          = withObject "ReadGroupInfo"
              (\ o -> pure ReadGroupInfo)

instance ToJSON ReadGroupInfo where
        toJSON = const emptyObject

-- | The jobs search request.
--
-- /See:/ 'searchJobsRequest' smart constructor.
data SearchJobsRequest = SearchJobsRequest
    { _sjrCreatedAfter  :: !(Maybe Int64)
    , _sjrStatus        :: !(Maybe [SearchJobsRequestStatusItem])
    , _sjrProjectNumber :: !(Maybe Int64)
    , _sjrPageToken     :: !(Maybe Text)
    , _sjrPageSize      :: !(Maybe Int32)
    , _sjrCreatedBefore :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchJobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrCreatedAfter'
--
-- * 'sjrStatus'
--
-- * 'sjrProjectNumber'
--
-- * 'sjrPageToken'
--
-- * 'sjrPageSize'
--
-- * 'sjrCreatedBefore'
searchJobsRequest
    :: SearchJobsRequest
searchJobsRequest =
    SearchJobsRequest
    { _sjrCreatedAfter = Nothing
    , _sjrStatus = Nothing
    , _sjrProjectNumber = Nothing
    , _sjrPageToken = Nothing
    , _sjrPageSize = Nothing
    , _sjrCreatedBefore = Nothing
    }

-- | If specified, only jobs created on or after this date, given in
-- milliseconds since Unix epoch, will be returned.
sjrCreatedAfter :: Lens' SearchJobsRequest (Maybe Int64)
sjrCreatedAfter
  = lens _sjrCreatedAfter
      (\ s a -> s{_sjrCreatedAfter = a})

-- | Only return jobs which have a matching status.
sjrStatus :: Lens' SearchJobsRequest [SearchJobsRequestStatusItem]
sjrStatus
  = lens _sjrStatus (\ s a -> s{_sjrStatus = a}) .
      _Default
      . _Coerce

-- | Required. Only return jobs which belong to this Google Developers
-- Console project.
sjrProjectNumber :: Lens' SearchJobsRequest (Maybe Int64)
sjrProjectNumber
  = lens _sjrProjectNumber
      (\ s a -> s{_sjrProjectNumber = a})

-- | The continuation token which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of the
-- nextPageToken from the previous response.
sjrPageToken :: Lens' SearchJobsRequest (Maybe Text)
sjrPageToken
  = lens _sjrPageToken (\ s a -> s{_sjrPageToken = a})

-- | Specifies the number of results to return in a single page. Defaults to
-- 128. The maximum value is 256.
sjrPageSize :: Lens' SearchJobsRequest (Maybe Int32)
sjrPageSize
  = lens _sjrPageSize (\ s a -> s{_sjrPageSize = a})

-- | If specified, only jobs created prior to this date, given in
-- milliseconds since Unix epoch, will be returned.
sjrCreatedBefore :: Lens' SearchJobsRequest (Maybe Int64)
sjrCreatedBefore
  = lens _sjrCreatedBefore
      (\ s a -> s{_sjrCreatedBefore = a})

instance FromJSON SearchJobsRequest where
        parseJSON
          = withObject "SearchJobsRequest"
              (\ o ->
                 SearchJobsRequest <$>
                   (o .:? "createdAfter") <*>
                     (o .:? "status" .!= mempty)
                     <*> (o .:? "projectNumber")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "createdBefore"))

instance ToJSON SearchJobsRequest where
        toJSON SearchJobsRequest{..}
          = object
              (catMaybes
                 [("createdAfter" .=) <$> _sjrCreatedAfter,
                  ("status" .=) <$> _sjrStatus,
                  ("projectNumber" .=) <$> _sjrProjectNumber,
                  ("pageToken" .=) <$> _sjrPageToken,
                  ("pageSize" .=) <$> _sjrPageSize,
                  ("createdBefore" .=) <$> _sjrCreatedBefore])

-- | The call set search response.
--
-- /See:/ 'searchCallSetsResponse' smart constructor.
data SearchCallSetsResponse = SearchCallSetsResponse
    { _scsrNextPageToken :: !(Maybe Text)
    , _scsrCallSets      :: !(Maybe [CallSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchCallSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrNextPageToken'
--
-- * 'scsrCallSets'
searchCallSetsResponse
    :: SearchCallSetsResponse
searchCallSetsResponse =
    SearchCallSetsResponse
    { _scsrNextPageToken = Nothing
    , _scsrCallSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
scsrNextPageToken :: Lens' SearchCallSetsResponse (Maybe Text)
scsrNextPageToken
  = lens _scsrNextPageToken
      (\ s a -> s{_scsrNextPageToken = a})

-- | The list of matching call sets.
scsrCallSets :: Lens' SearchCallSetsResponse [CallSet]
scsrCallSets
  = lens _scsrCallSets (\ s a -> s{_scsrCallSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchCallSetsResponse where
        parseJSON
          = withObject "SearchCallSetsResponse"
              (\ o ->
                 SearchCallSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "callSets" .!= mempty))

instance ToJSON SearchCallSetsResponse where
        toJSON SearchCallSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _scsrNextPageToken,
                  ("callSets" .=) <$> _scsrCallSets])

-- | The job creation request.
--
-- /See:/ 'experimentalCreateJobRequest' smart constructor.
data ExperimentalCreateJobRequest = ExperimentalCreateJobRequest
    { _ecjrGcsOutputPath    :: !(Maybe Text)
    , _ecjrProjectNumber    :: !(Maybe Int64)
    , _ecjrAlign            :: !(Maybe Bool)
    , _ecjrSourceURIs       :: !(Maybe [Text])
    , _ecjrPairedSourceURIs :: !(Maybe [Text])
    , _ecjrCallVariants     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentalCreateJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecjrGcsOutputPath'
--
-- * 'ecjrProjectNumber'
--
-- * 'ecjrAlign'
--
-- * 'ecjrSourceURIs'
--
-- * 'ecjrPairedSourceURIs'
--
-- * 'ecjrCallVariants'
experimentalCreateJobRequest
    :: ExperimentalCreateJobRequest
experimentalCreateJobRequest =
    ExperimentalCreateJobRequest
    { _ecjrGcsOutputPath = Nothing
    , _ecjrProjectNumber = Nothing
    , _ecjrAlign = Nothing
    , _ecjrSourceURIs = Nothing
    , _ecjrPairedSourceURIs = Nothing
    , _ecjrCallVariants = Nothing
    }

-- | Specifies where to copy the results of certain pipelines. This should be
-- in the form of gs:\/\/bucket\/path.
ecjrGcsOutputPath :: Lens' ExperimentalCreateJobRequest (Maybe Text)
ecjrGcsOutputPath
  = lens _ecjrGcsOutputPath
      (\ s a -> s{_ecjrGcsOutputPath = a})

-- | Required. The Google Cloud Project ID with which to associate the
-- request.
ecjrProjectNumber :: Lens' ExperimentalCreateJobRequest (Maybe Int64)
ecjrProjectNumber
  = lens _ecjrProjectNumber
      (\ s a -> s{_ecjrProjectNumber = a})

-- | Specifies whether or not to run the alignment pipeline. Either align or
-- callVariants must be set.
ecjrAlign :: Lens' ExperimentalCreateJobRequest (Maybe Bool)
ecjrAlign
  = lens _ecjrAlign (\ s a -> s{_ecjrAlign = a})

-- | A list of Google Cloud Storage URIs of data files to operate upon. These
-- can be .bam, interleaved .fastq, or paired .fastq. If specifying paired
-- .fastq files, the first of each pair of files should be listed here, and
-- the second of each pair should be listed in pairedSourceUris.
ecjrSourceURIs :: Lens' ExperimentalCreateJobRequest [Text]
ecjrSourceURIs
  = lens _ecjrSourceURIs
      (\ s a -> s{_ecjrSourceURIs = a})
      . _Default
      . _Coerce

-- | A list of Google Cloud Storage URIs of paired end .fastq files to
-- operate upon. If specified, this represents the second file of each
-- paired .fastq file. The first file of each pair should be specified in
-- sourceUris.
ecjrPairedSourceURIs :: Lens' ExperimentalCreateJobRequest [Text]
ecjrPairedSourceURIs
  = lens _ecjrPairedSourceURIs
      (\ s a -> s{_ecjrPairedSourceURIs = a})
      . _Default
      . _Coerce

-- | Specifies whether or not to run the variant calling pipeline. Either
-- align or callVariants must be set.
ecjrCallVariants :: Lens' ExperimentalCreateJobRequest (Maybe Bool)
ecjrCallVariants
  = lens _ecjrCallVariants
      (\ s a -> s{_ecjrCallVariants = a})

instance FromJSON ExperimentalCreateJobRequest where
        parseJSON
          = withObject "ExperimentalCreateJobRequest"
              (\ o ->
                 ExperimentalCreateJobRequest <$>
                   (o .:? "gcsOutputPath") <*> (o .:? "projectNumber")
                     <*> (o .:? "align")
                     <*> (o .:? "sourceUris" .!= mempty)
                     <*> (o .:? "pairedSourceUris" .!= mempty)
                     <*> (o .:? "callVariants"))

instance ToJSON ExperimentalCreateJobRequest where
        toJSON ExperimentalCreateJobRequest{..}
          = object
              (catMaybes
                 [("gcsOutputPath" .=) <$> _ecjrGcsOutputPath,
                  ("projectNumber" .=) <$> _ecjrProjectNumber,
                  ("align" .=) <$> _ecjrAlign,
                  ("sourceUris" .=) <$> _ecjrSourceURIs,
                  ("pairedSourceUris" .=) <$> _ecjrPairedSourceURIs,
                  ("callVariants" .=) <$> _ecjrCallVariants])

-- | A summary representation of the service request that spawned the job.
--
-- /See:/ 'jobRequest' smart constructor.
data JobRequest = JobRequest
    { _jrDestination :: !(Maybe [Text])
    , _jrSource      :: !(Maybe [Text])
    , _jrType        :: !(Maybe JobRequestType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrDestination'
--
-- * 'jrSource'
--
-- * 'jrType'
jobRequest
    :: JobRequest
jobRequest =
    JobRequest
    { _jrDestination = Nothing
    , _jrSource = Nothing
    , _jrType = Nothing
    }

-- | The data destination of the request, for example, a Google BigQuery
-- Table or Dataset ID.
jrDestination :: Lens' JobRequest [Text]
jrDestination
  = lens _jrDestination
      (\ s a -> s{_jrDestination = a})
      . _Default
      . _Coerce

-- | The data source of the request, for example, a Google Cloud Storage
-- object path or Readset ID.
jrSource :: Lens' JobRequest [Text]
jrSource
  = lens _jrSource (\ s a -> s{_jrSource = a}) .
      _Default
      . _Coerce

-- | The original request type.
jrType :: Lens' JobRequest (Maybe JobRequestType)
jrType = lens _jrType (\ s a -> s{_jrType = a})

instance FromJSON JobRequest where
        parseJSON
          = withObject "JobRequest"
              (\ o ->
                 JobRequest <$>
                   (o .:? "destination" .!= mempty) <*>
                     (o .:? "source" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON JobRequest where
        toJSON JobRequest{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _jrDestination,
                  ("source" .=) <$> _jrSource,
                  ("type" .=) <$> _jrType])

-- | The read search request.
--
-- /See:/ 'searchReadsRequest' smart constructor.
data SearchReadsRequest = SearchReadsRequest
    { _srrStart           :: !(Maybe Int64)
    , _srrReadGroupIds    :: !(Maybe [Text])
    , _srrReferenceName   :: !(Maybe Text)
    , _srrEnd             :: !(Maybe Int64)
    , _srrPageToken       :: !(Maybe Text)
    , _srrPageSize        :: !(Maybe Int32)
    , _srrReadGroupSetIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReadsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrStart'
--
-- * 'srrReadGroupIds'
--
-- * 'srrReferenceName'
--
-- * 'srrEnd'
--
-- * 'srrPageToken'
--
-- * 'srrPageSize'
--
-- * 'srrReadGroupSetIds'
searchReadsRequest
    :: SearchReadsRequest
searchReadsRequest =
    SearchReadsRequest
    { _srrStart = Nothing
    , _srrReadGroupIds = Nothing
    , _srrReferenceName = Nothing
    , _srrEnd = Nothing
    , _srrPageToken = Nothing
    , _srrPageSize = Nothing
    , _srrReadGroupSetIds = Nothing
    }

-- | The start position of the range on the reference, 0-based inclusive. If
-- specified, referenceName must also be specified.
srrStart :: Lens' SearchReadsRequest (Maybe Int64)
srrStart = lens _srrStart (\ s a -> s{_srrStart = a})

-- | The IDs of the read groups within which to search for reads. All
-- specified read groups must belong to the same read group sets. Must
-- specify one of readGroupSetIds or readGroupIds.
srrReadGroupIds :: Lens' SearchReadsRequest [Text]
srrReadGroupIds
  = lens _srrReadGroupIds
      (\ s a -> s{_srrReadGroupIds = a})
      . _Default
      . _Coerce

-- | The reference sequence name, for example chr1, 1, or chrX. If set to *,
-- only unmapped reads are returned.
srrReferenceName :: Lens' SearchReadsRequest (Maybe Text)
srrReferenceName
  = lens _srrReferenceName
      (\ s a -> s{_srrReferenceName = a})

-- | The end position of the range on the reference, 0-based exclusive. If
-- specified, referenceName must also be specified.
srrEnd :: Lens' SearchReadsRequest (Maybe Int64)
srrEnd = lens _srrEnd (\ s a -> s{_srrEnd = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
srrPageToken :: Lens' SearchReadsRequest (Maybe Text)
srrPageToken
  = lens _srrPageToken (\ s a -> s{_srrPageToken = a})

-- | Specifies number of results to return in a single page. If unspecified,
-- it will default to 256. The maximum value is 2048.
srrPageSize :: Lens' SearchReadsRequest (Maybe Int32)
srrPageSize
  = lens _srrPageSize (\ s a -> s{_srrPageSize = a})

-- | The IDs of the read groups sets within which to search for reads. All
-- specified read group sets must be aligned against a common set of
-- reference sequences; this defines the genomic coordinates for the query.
-- Must specify one of readGroupSetIds or readGroupIds.
srrReadGroupSetIds :: Lens' SearchReadsRequest [Text]
srrReadGroupSetIds
  = lens _srrReadGroupSetIds
      (\ s a -> s{_srrReadGroupSetIds = a})
      . _Default
      . _Coerce

instance FromJSON SearchReadsRequest where
        parseJSON
          = withObject "SearchReadsRequest"
              (\ o ->
                 SearchReadsRequest <$>
                   (o .:? "start") <*> (o .:? "readGroupIds" .!= mempty)
                     <*> (o .:? "referenceName")
                     <*> (o .:? "end")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "readGroupSetIds" .!= mempty))

instance ToJSON SearchReadsRequest where
        toJSON SearchReadsRequest{..}
          = object
              (catMaybes
                 [("start" .=) <$> _srrStart,
                  ("readGroupIds" .=) <$> _srrReadGroupIds,
                  ("referenceName" .=) <$> _srrReferenceName,
                  ("end" .=) <$> _srrEnd,
                  ("pageToken" .=) <$> _srrPageToken,
                  ("pageSize" .=) <$> _srrPageSize,
                  ("readGroupSetIds" .=) <$> _srrReadGroupSetIds])

-- | A string which maps to an array of values.
--
-- /See:/ 'variantInfo' smart constructor.
data VariantInfo =
    VariantInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantInfo' with the minimum fields required to make a request.
--
variantInfo
    :: VariantInfo
variantInfo = VariantInfo

instance FromJSON VariantInfo where
        parseJSON
          = withObject "VariantInfo" (\ o -> pure VariantInfo)

instance ToJSON VariantInfo where
        toJSON = const emptyObject

-- | The search variant sets request.
--
-- /See:/ 'searchVariantSetsRequest' smart constructor.
data SearchVariantSetsRequest = SearchVariantSetsRequest
    { _svsrDatasetIds :: !(Maybe [Text])
    , _svsrPageToken  :: !(Maybe Text)
    , _svsrPageSize   :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchVariantSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svsrDatasetIds'
--
-- * 'svsrPageToken'
--
-- * 'svsrPageSize'
searchVariantSetsRequest
    :: SearchVariantSetsRequest
searchVariantSetsRequest =
    SearchVariantSetsRequest
    { _svsrDatasetIds = Nothing
    , _svsrPageToken = Nothing
    , _svsrPageSize = Nothing
    }

-- | Exactly one dataset ID must be provided here. Only variant sets which
-- belong to this dataset will be returned.
svsrDatasetIds :: Lens' SearchVariantSetsRequest [Text]
svsrDatasetIds
  = lens _svsrDatasetIds
      (\ s a -> s{_svsrDatasetIds = a})
      . _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
svsrPageToken :: Lens' SearchVariantSetsRequest (Maybe Text)
svsrPageToken
  = lens _svsrPageToken
      (\ s a -> s{_svsrPageToken = a})

-- | The maximum number of variant sets to return in a request.
svsrPageSize :: Lens' SearchVariantSetsRequest (Maybe Int32)
svsrPageSize
  = lens _svsrPageSize (\ s a -> s{_svsrPageSize = a})

instance FromJSON SearchVariantSetsRequest where
        parseJSON
          = withObject "SearchVariantSetsRequest"
              (\ o ->
                 SearchVariantSetsRequest <$>
                   (o .:? "datasetIds" .!= mempty) <*>
                     (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchVariantSetsRequest where
        toJSON SearchVariantSetsRequest{..}
          = object
              (catMaybes
                 [("datasetIds" .=) <$> _svsrDatasetIds,
                  ("pageToken" .=) <$> _svsrPageToken,
                  ("pageSize" .=) <$> _svsrPageSize])

--
-- /See:/ 'readGroupProgram' smart constructor.
data ReadGroupProgram = ReadGroupProgram
    { _rgpPrevProgramId :: !(Maybe Text)
    , _rgpName          :: !(Maybe Text)
    , _rgpVersion       :: !(Maybe Text)
    , _rgpId            :: !(Maybe Text)
    , _rgpCommandLine   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupProgram' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgpPrevProgramId'
--
-- * 'rgpName'
--
-- * 'rgpVersion'
--
-- * 'rgpId'
--
-- * 'rgpCommandLine'
readGroupProgram
    :: ReadGroupProgram
readGroupProgram =
    ReadGroupProgram
    { _rgpPrevProgramId = Nothing
    , _rgpName = Nothing
    , _rgpVersion = Nothing
    , _rgpId = Nothing
    , _rgpCommandLine = Nothing
    }

-- | The ID of the program run before this one.
rgpPrevProgramId :: Lens' ReadGroupProgram (Maybe Text)
rgpPrevProgramId
  = lens _rgpPrevProgramId
      (\ s a -> s{_rgpPrevProgramId = a})

-- | The name of the program.
rgpName :: Lens' ReadGroupProgram (Maybe Text)
rgpName = lens _rgpName (\ s a -> s{_rgpName = a})

-- | The version of the program run.
rgpVersion :: Lens' ReadGroupProgram (Maybe Text)
rgpVersion
  = lens _rgpVersion (\ s a -> s{_rgpVersion = a})

-- | The user specified locally unique ID of the program. Used along with
-- prevProgramId to define an ordering between programs.
rgpId :: Lens' ReadGroupProgram (Maybe Text)
rgpId = lens _rgpId (\ s a -> s{_rgpId = a})

-- | The command line used to run this program.
rgpCommandLine :: Lens' ReadGroupProgram (Maybe Text)
rgpCommandLine
  = lens _rgpCommandLine
      (\ s a -> s{_rgpCommandLine = a})

instance FromJSON ReadGroupProgram where
        parseJSON
          = withObject "ReadGroupProgram"
              (\ o ->
                 ReadGroupProgram <$>
                   (o .:? "prevProgramId") <*> (o .:? "name") <*>
                     (o .:? "version")
                     <*> (o .:? "id")
                     <*> (o .:? "commandLine"))

instance ToJSON ReadGroupProgram where
        toJSON ReadGroupProgram{..}
          = object
              (catMaybes
                 [("prevProgramId" .=) <$> _rgpPrevProgramId,
                  ("name" .=) <$> _rgpName,
                  ("version" .=) <$> _rgpVersion, ("id" .=) <$> _rgpId,
                  ("commandLine" .=) <$> _rgpCommandLine])

-- | Wrapper message for \`int32\`. The JSON representation for
-- \`Int32Value\` is JSON number.
--
-- /See:/ 'int32Value' smart constructor.
newtype Int32Value = Int32Value
    { _ivValue :: Maybe Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Int32Value' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivValue'
int32Value
    :: Int32Value
int32Value =
    Int32Value
    { _ivValue = Nothing
    }

-- | The int32 value.
ivValue :: Lens' Int32Value (Maybe Int32)
ivValue = lens _ivValue (\ s a -> s{_ivValue = a})

instance FromJSON Int32Value where
        parseJSON
          = withObject "Int32Value"
              (\ o -> Int32Value <$> (o .:? "value"))

instance ToJSON Int32Value where
        toJSON Int32Value{..}
          = object (catMaybes [("value" .=) <$> _ivValue])

-- | A string which maps to an array of values.
--
-- /See:/ 'annotationInfo' smart constructor.
data AnnotationInfo =
    AnnotationInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationInfo' with the minimum fields required to make a request.
--
annotationInfo
    :: AnnotationInfo
annotationInfo = AnnotationInfo

instance FromJSON AnnotationInfo where
        parseJSON
          = withObject "AnnotationInfo"
              (\ o -> pure AnnotationInfo)

instance ToJSON AnnotationInfo where
        toJSON = const emptyObject

-- | The read group set export request.
--
-- /See:/ 'exportReadGroupSetsRequest' smart constructor.
data ExportReadGroupSetsRequest = ExportReadGroupSetsRequest
    { _ergsrReferenceNames  :: !(Maybe [Text])
    , _ergsrProjectNumber   :: !(Maybe Int64)
    , _ergsrExportURI       :: !(Maybe Text)
    , _ergsrReadGroupSetIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportReadGroupSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ergsrReferenceNames'
--
-- * 'ergsrProjectNumber'
--
-- * 'ergsrExportURI'
--
-- * 'ergsrReadGroupSetIds'
exportReadGroupSetsRequest
    :: ExportReadGroupSetsRequest
exportReadGroupSetsRequest =
    ExportReadGroupSetsRequest
    { _ergsrReferenceNames = Nothing
    , _ergsrProjectNumber = Nothing
    , _ergsrExportURI = Nothing
    , _ergsrReadGroupSetIds = Nothing
    }

-- | The reference names to export. If this is not specified, all reference
-- sequences, including unmapped reads, are exported. Use * to export only
-- unmapped reads.
ergsrReferenceNames :: Lens' ExportReadGroupSetsRequest [Text]
ergsrReferenceNames
  = lens _ergsrReferenceNames
      (\ s a -> s{_ergsrReferenceNames = a})
      . _Default
      . _Coerce

-- | Required. The Google Developers Console project number that owns this
-- export.
ergsrProjectNumber :: Lens' ExportReadGroupSetsRequest (Maybe Int64)
ergsrProjectNumber
  = lens _ergsrProjectNumber
      (\ s a -> s{_ergsrProjectNumber = a})

-- | Required. A Google Cloud Storage URI for the exported BAM file. The
-- currently authenticated user must have write access to the new file. An
-- error will be returned if the URI already contains data.
ergsrExportURI :: Lens' ExportReadGroupSetsRequest (Maybe Text)
ergsrExportURI
  = lens _ergsrExportURI
      (\ s a -> s{_ergsrExportURI = a})

-- | Required. The IDs of the read group sets to export.
ergsrReadGroupSetIds :: Lens' ExportReadGroupSetsRequest [Text]
ergsrReadGroupSetIds
  = lens _ergsrReadGroupSetIds
      (\ s a -> s{_ergsrReadGroupSetIds = a})
      . _Default
      . _Coerce

instance FromJSON ExportReadGroupSetsRequest where
        parseJSON
          = withObject "ExportReadGroupSetsRequest"
              (\ o ->
                 ExportReadGroupSetsRequest <$>
                   (o .:? "referenceNames" .!= mempty) <*>
                     (o .:? "projectNumber")
                     <*> (o .:? "exportUri")
                     <*> (o .:? "readGroupSetIds" .!= mempty))

instance ToJSON ExportReadGroupSetsRequest where
        toJSON ExportReadGroupSetsRequest{..}
          = object
              (catMaybes
                 [("referenceNames" .=) <$> _ergsrReferenceNames,
                  ("projectNumber" .=) <$> _ergsrProjectNumber,
                  ("exportUri" .=) <$> _ergsrExportURI,
                  ("readGroupSetIds" .=) <$> _ergsrReadGroupSetIds])

--
-- /See:/ 'searchAnnotationsResponse' smart constructor.
data SearchAnnotationsResponse = SearchAnnotationsResponse
    { _sarAnnotations   :: !(Maybe [Annotation])
    , _sarNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchAnnotationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sarAnnotations'
--
-- * 'sarNextPageToken'
searchAnnotationsResponse
    :: SearchAnnotationsResponse
searchAnnotationsResponse =
    SearchAnnotationsResponse
    { _sarAnnotations = Nothing
    , _sarNextPageToken = Nothing
    }

-- | The matching annotations.
sarAnnotations :: Lens' SearchAnnotationsResponse [Annotation]
sarAnnotations
  = lens _sarAnnotations
      (\ s a -> s{_sarAnnotations = a})
      . _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
sarNextPageToken :: Lens' SearchAnnotationsResponse (Maybe Text)
sarNextPageToken
  = lens _sarNextPageToken
      (\ s a -> s{_sarNextPageToken = a})

instance FromJSON SearchAnnotationsResponse where
        parseJSON
          = withObject "SearchAnnotationsResponse"
              (\ o ->
                 SearchAnnotationsResponse <$>
                   (o .:? "annotations" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON SearchAnnotationsResponse where
        toJSON SearchAnnotationsResponse{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _sarAnnotations,
                  ("nextPageToken" .=) <$> _sarNextPageToken])

--
-- /See:/ 'searchAnnotationSetsRequest' smart constructor.
data SearchAnnotationSetsRequest = SearchAnnotationSetsRequest
    { _sasrReferenceSetId :: !(Maybe Text)
    , _sasrTypes          :: !(Maybe [SearchAnnotationSetsRequestTypesItem])
    , _sasrDatasetIds     :: !(Maybe [Text])
    , _sasrName           :: !(Maybe Text)
    , _sasrPageToken      :: !(Maybe Text)
    , _sasrPageSize       :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchAnnotationSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasrReferenceSetId'
--
-- * 'sasrTypes'
--
-- * 'sasrDatasetIds'
--
-- * 'sasrName'
--
-- * 'sasrPageToken'
--
-- * 'sasrPageSize'
searchAnnotationSetsRequest
    :: SearchAnnotationSetsRequest
searchAnnotationSetsRequest =
    SearchAnnotationSetsRequest
    { _sasrReferenceSetId = Nothing
    , _sasrTypes = Nothing
    , _sasrDatasetIds = Nothing
    , _sasrName = Nothing
    , _sasrPageToken = Nothing
    , _sasrPageSize = Nothing
    }

-- | If specified, only annotation sets associated with the given reference
-- set are returned.
sasrReferenceSetId :: Lens' SearchAnnotationSetsRequest (Maybe Text)
sasrReferenceSetId
  = lens _sasrReferenceSetId
      (\ s a -> s{_sasrReferenceSetId = a})

-- | If specified, only annotation sets that have any of these types are
-- returned.
sasrTypes :: Lens' SearchAnnotationSetsRequest [SearchAnnotationSetsRequestTypesItem]
sasrTypes
  = lens _sasrTypes (\ s a -> s{_sasrTypes = a}) .
      _Default
      . _Coerce

-- | The dataset IDs to search within. Caller must have READ access to these
-- datasets.
sasrDatasetIds :: Lens' SearchAnnotationSetsRequest [Text]
sasrDatasetIds
  = lens _sasrDatasetIds
      (\ s a -> s{_sasrDatasetIds = a})
      . _Default
      . _Coerce

-- | Only return annotations sets for which a substring of the name matches
-- this string (case insensitive).
sasrName :: Lens' SearchAnnotationSetsRequest (Maybe Text)
sasrName = lens _sasrName (\ s a -> s{_sasrName = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
sasrPageToken :: Lens' SearchAnnotationSetsRequest (Maybe Text)
sasrPageToken
  = lens _sasrPageToken
      (\ s a -> s{_sasrPageToken = a})

-- | Specifies number of results to return in a single page. If unspecified,
-- it will default to 128. The maximum value is 1024.
sasrPageSize :: Lens' SearchAnnotationSetsRequest (Maybe Int32)
sasrPageSize
  = lens _sasrPageSize (\ s a -> s{_sasrPageSize = a})

instance FromJSON SearchAnnotationSetsRequest where
        parseJSON
          = withObject "SearchAnnotationSetsRequest"
              (\ o ->
                 SearchAnnotationSetsRequest <$>
                   (o .:? "referenceSetId") <*>
                     (o .:? "types" .!= mempty)
                     <*> (o .:? "datasetIds" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchAnnotationSetsRequest where
        toJSON SearchAnnotationSetsRequest{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _sasrReferenceSetId,
                  ("types" .=) <$> _sasrTypes,
                  ("datasetIds" .=) <$> _sasrDatasetIds,
                  ("name" .=) <$> _sasrName,
                  ("pageToken" .=) <$> _sasrPageToken,
                  ("pageSize" .=) <$> _sasrPageSize])

-- | The variant search response.
--
-- /See:/ 'searchVariantsResponse' smart constructor.
data SearchVariantsResponse = SearchVariantsResponse
    { _svrVariants      :: !(Maybe [Variant])
    , _svrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchVariantsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svrVariants'
--
-- * 'svrNextPageToken'
searchVariantsResponse
    :: SearchVariantsResponse
searchVariantsResponse =
    SearchVariantsResponse
    { _svrVariants = Nothing
    , _svrNextPageToken = Nothing
    }

-- | The list of matching Variants.
svrVariants :: Lens' SearchVariantsResponse [Variant]
svrVariants
  = lens _svrVariants (\ s a -> s{_svrVariants = a}) .
      _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
svrNextPageToken :: Lens' SearchVariantsResponse (Maybe Text)
svrNextPageToken
  = lens _svrNextPageToken
      (\ s a -> s{_svrNextPageToken = a})

instance FromJSON SearchVariantsResponse where
        parseJSON
          = withObject "SearchVariantsResponse"
              (\ o ->
                 SearchVariantsResponse <$>
                   (o .:? "variants" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON SearchVariantsResponse where
        toJSON SearchVariantsResponse{..}
          = object
              (catMaybes
                 [("variants" .=) <$> _svrVariants,
                  ("nextPageToken" .=) <$> _svrNextPageToken])

-- | The job creation response.
--
-- /See:/ 'experimentalCreateJobResponse' smart constructor.
newtype ExperimentalCreateJobResponse = ExperimentalCreateJobResponse
    { _ecjrJobId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentalCreateJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecjrJobId'
experimentalCreateJobResponse
    :: ExperimentalCreateJobResponse
experimentalCreateJobResponse =
    ExperimentalCreateJobResponse
    { _ecjrJobId = Nothing
    }

-- | A job ID that can be used to get status information.
ecjrJobId :: Lens' ExperimentalCreateJobResponse (Maybe Text)
ecjrJobId
  = lens _ecjrJobId (\ s a -> s{_ecjrJobId = a})

instance FromJSON ExperimentalCreateJobResponse where
        parseJSON
          = withObject "ExperimentalCreateJobResponse"
              (\ o ->
                 ExperimentalCreateJobResponse <$> (o .:? "jobId"))

instance ToJSON ExperimentalCreateJobResponse where
        toJSON ExperimentalCreateJobResponse{..}
          = object (catMaybes [("jobId" .=) <$> _ecjrJobId])

-- | The call set search request.
--
-- /See:/ 'searchCallSetsRequest' smart constructor.
data SearchCallSetsRequest = SearchCallSetsRequest
    { _scsrName          :: !(Maybe Text)
    , _scsrPageToken     :: !(Maybe Text)
    , _scsrVariantSetIds :: !(Maybe [Text])
    , _scsrPageSize      :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchCallSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrName'
--
-- * 'scsrPageToken'
--
-- * 'scsrVariantSetIds'
--
-- * 'scsrPageSize'
searchCallSetsRequest
    :: SearchCallSetsRequest
searchCallSetsRequest =
    SearchCallSetsRequest
    { _scsrName = Nothing
    , _scsrPageToken = Nothing
    , _scsrVariantSetIds = Nothing
    , _scsrPageSize = Nothing
    }

-- | Only return call sets for which a substring of the name matches this
-- string.
scsrName :: Lens' SearchCallSetsRequest (Maybe Text)
scsrName = lens _scsrName (\ s a -> s{_scsrName = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
scsrPageToken :: Lens' SearchCallSetsRequest (Maybe Text)
scsrPageToken
  = lens _scsrPageToken
      (\ s a -> s{_scsrPageToken = a})

-- | Restrict the query to call sets within the given variant sets. At least
-- one ID must be provided.
scsrVariantSetIds :: Lens' SearchCallSetsRequest [Text]
scsrVariantSetIds
  = lens _scsrVariantSetIds
      (\ s a -> s{_scsrVariantSetIds = a})
      . _Default
      . _Coerce

-- | The maximum number of call sets to return. If unspecified, defaults to
-- 1000.
scsrPageSize :: Lens' SearchCallSetsRequest (Maybe Int32)
scsrPageSize
  = lens _scsrPageSize (\ s a -> s{_scsrPageSize = a})

instance FromJSON SearchCallSetsRequest where
        parseJSON
          = withObject "SearchCallSetsRequest"
              (\ o ->
                 SearchCallSetsRequest <$>
                   (o .:? "name") <*> (o .:? "pageToken") <*>
                     (o .:? "variantSetIds" .!= mempty)
                     <*> (o .:? "pageSize"))

instance ToJSON SearchCallSetsRequest where
        toJSON SearchCallSetsRequest{..}
          = object
              (catMaybes
                 [("name" .=) <$> _scsrName,
                  ("pageToken" .=) <$> _scsrPageToken,
                  ("variantSetIds" .=) <$> _scsrVariantSetIds,
                  ("pageSize" .=) <$> _scsrPageSize])

-- | The read search response.
--
-- /See:/ 'searchReadsResponse' smart constructor.
data SearchReadsResponse = SearchReadsResponse
    { _sNextPageToken :: !(Maybe Text)
    , _sAlignments    :: !(Maybe [Read'])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReadsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNextPageToken'
--
-- * 'sAlignments'
searchReadsResponse
    :: SearchReadsResponse
searchReadsResponse =
    SearchReadsResponse
    { _sNextPageToken = Nothing
    , _sAlignments = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
sNextPageToken :: Lens' SearchReadsResponse (Maybe Text)
sNextPageToken
  = lens _sNextPageToken
      (\ s a -> s{_sNextPageToken = a})

-- | The list of matching alignments sorted by mapped genomic coordinate, if
-- any, ascending in position within the same reference. Unmapped reads,
-- which have no position, are returned contiguously and are sorted in
-- ascending lexicographic order by fragment name.
sAlignments :: Lens' SearchReadsResponse [Read']
sAlignments
  = lens _sAlignments (\ s a -> s{_sAlignments = a}) .
      _Default
      . _Coerce

instance FromJSON SearchReadsResponse where
        parseJSON
          = withObject "SearchReadsResponse"
              (\ o ->
                 SearchReadsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "alignments" .!= mempty))

instance ToJSON SearchReadsResponse where
        toJSON SearchReadsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sNextPageToken,
                  ("alignments" .=) <$> _sAlignments])

-- | Describes a paired-end FASTQ file source for alignment.
--
-- /See:/ 'pairedFastqSource' smart constructor.
data PairedFastqSource = PairedFastqSource
    { _pfsFirstSourceURIs  :: !(Maybe [Text])
    , _pfsMetadata         :: !(Maybe FastqMetadata)
    , _pfsSecondSourceURIs :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PairedFastqSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfsFirstSourceURIs'
--
-- * 'pfsMetadata'
--
-- * 'pfsSecondSourceURIs'
pairedFastqSource
    :: PairedFastqSource
pairedFastqSource =
    PairedFastqSource
    { _pfsFirstSourceURIs = Nothing
    , _pfsMetadata = Nothing
    , _pfsSecondSourceURIs = Nothing
    }

-- | A list of URIs pointing at paired end FASTQ files in Google Cloud
-- Storage which will be aligned. The first of each paired file should be
-- specified here, in an order that matches the second of each paired file
-- specified in secondSourceUris. For example: firstSourceUris:
-- [file1_1.fq, file2_1.fq], secondSourceUris: [file1_2.fq, file2_2.fq].
-- The caller must have READ permissions for these files.
pfsFirstSourceURIs :: Lens' PairedFastqSource [Text]
pfsFirstSourceURIs
  = lens _pfsFirstSourceURIs
      (\ s a -> s{_pfsFirstSourceURIs = a})
      . _Default
      . _Coerce

-- | Optionally specifies the metadata to be associated with the final
-- aligned read group set.
pfsMetadata :: Lens' PairedFastqSource (Maybe FastqMetadata)
pfsMetadata
  = lens _pfsMetadata (\ s a -> s{_pfsMetadata = a})

-- | A list of URIs pointing at paired end FASTQ files in Google Cloud
-- Storage which will be aligned. The second of each paired file should be
-- specified here, in an order that matches the first of each paired file
-- specified in firstSourceUris. For example: firstSourceUris: [file1_1.fq,
-- file2_1.fq], secondSourceUris: [file1_2.fq, file2_2.fq]. The caller must
-- have READ permissions for these files.
pfsSecondSourceURIs :: Lens' PairedFastqSource [Text]
pfsSecondSourceURIs
  = lens _pfsSecondSourceURIs
      (\ s a -> s{_pfsSecondSourceURIs = a})
      . _Default
      . _Coerce

instance FromJSON PairedFastqSource where
        parseJSON
          = withObject "PairedFastqSource"
              (\ o ->
                 PairedFastqSource <$>
                   (o .:? "firstSourceUris" .!= mempty) <*>
                     (o .:? "metadata")
                     <*> (o .:? "secondSourceUris" .!= mempty))

instance ToJSON PairedFastqSource where
        toJSON PairedFastqSource{..}
          = object
              (catMaybes
                 [("firstSourceUris" .=) <$> _pfsFirstSourceURIs,
                  ("metadata" .=) <$> _pfsMetadata,
                  ("secondSourceUris" .=) <$> _pfsSecondSourceURIs])

-- |
--
-- /See:/ 'searchReferencesRequest' smart constructor.
data SearchReferencesRequest = SearchReferencesRequest
    { _sReferenceSetId :: !(Maybe Text)
    , _sMD5checksums   :: !(Maybe [Text])
    , _sAccessions     :: !(Maybe [Text])
    , _sPageToken      :: !(Maybe Text)
    , _sPageSize       :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReferencesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sReferenceSetId'
--
-- * 'sMD5checksums'
--
-- * 'sAccessions'
--
-- * 'sPageToken'
--
-- * 'sPageSize'
searchReferencesRequest
    :: SearchReferencesRequest
searchReferencesRequest =
    SearchReferencesRequest
    { _sReferenceSetId = Nothing
    , _sMD5checksums = Nothing
    , _sAccessions = Nothing
    , _sPageToken = Nothing
    , _sPageSize = Nothing
    }

-- | If present, return only references which belong to this reference set.
sReferenceSetId :: Lens' SearchReferencesRequest (Maybe Text)
sReferenceSetId
  = lens _sReferenceSetId
      (\ s a -> s{_sReferenceSetId = a})

-- | If present, return references for which the md5checksum matches. See
-- Reference.md5checksum for construction details.
sMD5checksums :: Lens' SearchReferencesRequest [Text]
sMD5checksums
  = lens _sMD5checksums
      (\ s a -> s{_sMD5checksums = a})
      . _Default
      . _Coerce

-- | If present, return references for which the accession matches this
-- string. Best to give a version number, for example GCF_000001405.26. If
-- only the main accession number is given then all records with that main
-- accession will be returned, whichever version. Note that different
-- versions will have different sequences.
sAccessions :: Lens' SearchReferencesRequest [Text]
sAccessions
  = lens _sAccessions (\ s a -> s{_sAccessions = a}) .
      _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
sPageToken :: Lens' SearchReferencesRequest (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | Specifies the maximum number of results to return in a single page.
sPageSize :: Lens' SearchReferencesRequest (Maybe Int32)
sPageSize
  = lens _sPageSize (\ s a -> s{_sPageSize = a})

instance FromJSON SearchReferencesRequest where
        parseJSON
          = withObject "SearchReferencesRequest"
              (\ o ->
                 SearchReferencesRequest <$>
                   (o .:? "referenceSetId") <*>
                     (o .:? "md5checksums" .!= mempty)
                     <*> (o .:? "accessions" .!= mempty)
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchReferencesRequest where
        toJSON SearchReferencesRequest{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _sReferenceSetId,
                  ("md5checksums" .=) <$> _sMD5checksums,
                  ("accessions" .=) <$> _sAccessions,
                  ("pageToken" .=) <$> _sPageToken,
                  ("pageSize" .=) <$> _sPageSize])

--
-- /See:/ 'searchReferenceSetsResponse' smart constructor.
data SearchReferenceSetsResponse = SearchReferenceSetsResponse
    { _srsrNextPageToken :: !(Maybe Text)
    , _srsrReferenceSets :: !(Maybe [ReferenceSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReferenceSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsrNextPageToken'
--
-- * 'srsrReferenceSets'
searchReferenceSetsResponse
    :: SearchReferenceSetsResponse
searchReferenceSetsResponse =
    SearchReferenceSetsResponse
    { _srsrNextPageToken = Nothing
    , _srsrReferenceSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
srsrNextPageToken :: Lens' SearchReferenceSetsResponse (Maybe Text)
srsrNextPageToken
  = lens _srsrNextPageToken
      (\ s a -> s{_srsrNextPageToken = a})

-- | The matching references sets.
srsrReferenceSets :: Lens' SearchReferenceSetsResponse [ReferenceSet]
srsrReferenceSets
  = lens _srsrReferenceSets
      (\ s a -> s{_srsrReferenceSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchReferenceSetsResponse where
        parseJSON
          = withObject "SearchReferenceSetsResponse"
              (\ o ->
                 SearchReferenceSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "referenceSets" .!= mempty))

instance ToJSON SearchReferenceSetsResponse where
        toJSON SearchReferenceSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _srsrNextPageToken,
                  ("referenceSets" .=) <$> _srsrReferenceSets])

-- | A 0-based half-open genomic coordinate range over a reference sequence.
--
-- /See:/ 'range' smart constructor.
data Range = Range
    { _rStart         :: !(Maybe Int64)
    , _rReferenceName :: !(Maybe Text)
    , _rEnd           :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStart'
--
-- * 'rReferenceName'
--
-- * 'rEnd'
range
    :: Range
range =
    Range
    { _rStart = Nothing
    , _rReferenceName = Nothing
    , _rEnd = Nothing
    }

-- | The start position of the range on the reference, 0-based inclusive. If
-- specified, referenceName must also be specified.
rStart :: Lens' Range (Maybe Int64)
rStart = lens _rStart (\ s a -> s{_rStart = a})

-- | The reference sequence name, for example chr1, 1, or chrX.
rReferenceName :: Lens' Range (Maybe Text)
rReferenceName
  = lens _rReferenceName
      (\ s a -> s{_rReferenceName = a})

-- | The end position of the range on the reference, 0-based exclusive. If
-- specified, referenceName must also be specified.
rEnd :: Lens' Range (Maybe Int64)
rEnd = lens _rEnd (\ s a -> s{_rEnd = a})

instance FromJSON Range where
        parseJSON
          = withObject "Range"
              (\ o ->
                 Range <$>
                   (o .:? "start") <*> (o .:? "referenceName") <*>
                     (o .:? "end"))

instance ToJSON Range where
        toJSON Range{..}
          = object
              (catMaybes
                 [("start" .=) <$> _rStart,
                  ("referenceName" .=) <$> _rReferenceName,
                  ("end" .=) <$> _rEnd])

-- | A read group set is a logical collection of read groups, which are
-- collections of reads produced by a sequencer. A read group set typically
-- models reads corresponding to one sample, sequenced one way, and aligned
-- one way. - A read group set belongs to one dataset. - A read group
-- belongs to one read group set. - A read belongs to one read group.
--
-- /See:/ 'readGroupSet' smart constructor.
data ReadGroupSet = ReadGroupSet
    { _rgsReferenceSetId :: !(Maybe Text)
    , _rgsName           :: !(Maybe Text)
    , _rgsDatasetId      :: !(Maybe Text)
    , _rgsId             :: !(Maybe Text)
    , _rgsInfo           :: !(Maybe ReadGroupSetInfo)
    , _rgsReadGroups     :: !(Maybe [ReadGroup])
    , _rgsFilename       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgsReferenceSetId'
--
-- * 'rgsName'
--
-- * 'rgsDatasetId'
--
-- * 'rgsId'
--
-- * 'rgsInfo'
--
-- * 'rgsReadGroups'
--
-- * 'rgsFilename'
readGroupSet
    :: ReadGroupSet
readGroupSet =
    ReadGroupSet
    { _rgsReferenceSetId = Nothing
    , _rgsName = Nothing
    , _rgsDatasetId = Nothing
    , _rgsId = Nothing
    , _rgsInfo = Nothing
    , _rgsReadGroups = Nothing
    , _rgsFilename = Nothing
    }

-- | The reference set the reads in this read group set are aligned to.
rgsReferenceSetId :: Lens' ReadGroupSet (Maybe Text)
rgsReferenceSetId
  = lens _rgsReferenceSetId
      (\ s a -> s{_rgsReferenceSetId = a})

-- | The read group set name. By default this will be initialized to the
-- sample name of the sequenced data contained in this set.
rgsName :: Lens' ReadGroupSet (Maybe Text)
rgsName = lens _rgsName (\ s a -> s{_rgsName = a})

-- | The dataset ID.
rgsDatasetId :: Lens' ReadGroupSet (Maybe Text)
rgsDatasetId
  = lens _rgsDatasetId (\ s a -> s{_rgsDatasetId = a})

-- | The read group set ID.
rgsId :: Lens' ReadGroupSet (Maybe Text)
rgsId = lens _rgsId (\ s a -> s{_rgsId = a})

-- | A string which maps to an array of values.
rgsInfo :: Lens' ReadGroupSet (Maybe ReadGroupSetInfo)
rgsInfo = lens _rgsInfo (\ s a -> s{_rgsInfo = a})

-- | The read groups in this set. There are typically 1-10 read groups in a
-- read group set.
rgsReadGroups :: Lens' ReadGroupSet [ReadGroup]
rgsReadGroups
  = lens _rgsReadGroups
      (\ s a -> s{_rgsReadGroups = a})
      . _Default
      . _Coerce

-- | The filename of the original source file for this read group set, if
-- any.
rgsFilename :: Lens' ReadGroupSet (Maybe Text)
rgsFilename
  = lens _rgsFilename (\ s a -> s{_rgsFilename = a})

instance FromJSON ReadGroupSet where
        parseJSON
          = withObject "ReadGroupSet"
              (\ o ->
                 ReadGroupSet <$>
                   (o .:? "referenceSetId") <*> (o .:? "name") <*>
                     (o .:? "datasetId")
                     <*> (o .:? "id")
                     <*> (o .:? "info")
                     <*> (o .:? "readGroups" .!= mempty)
                     <*> (o .:? "filename"))

instance ToJSON ReadGroupSet where
        toJSON ReadGroupSet{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _rgsReferenceSetId,
                  ("name" .=) <$> _rgsName,
                  ("datasetId" .=) <$> _rgsDatasetId,
                  ("id" .=) <$> _rgsId, ("info" .=) <$> _rgsInfo,
                  ("readGroups" .=) <$> _rgsReadGroups,
                  ("filename" .=) <$> _rgsFilename])

-- | A Job represents an ongoing process that can be monitored for status
-- information.
--
-- /See:/ 'job' smart constructor.
data Job = Job
    { _jDetailedStatus :: !(Maybe Text)
    , _jStatus         :: !(Maybe JobStatus)
    , _jCreated        :: !(Maybe Int64)
    , _jProjectNumber  :: !(Maybe Int64)
    , _jWarnings       :: !(Maybe [Text])
    , _jImportedIds    :: !(Maybe [Text])
    , _jId             :: !(Maybe Text)
    , _jErrors         :: !(Maybe [Text])
    , _jRequest        :: !(Maybe JobRequest)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jDetailedStatus'
--
-- * 'jStatus'
--
-- * 'jCreated'
--
-- * 'jProjectNumber'
--
-- * 'jWarnings'
--
-- * 'jImportedIds'
--
-- * 'jId'
--
-- * 'jErrors'
--
-- * 'jRequest'
job
    :: Job
job =
    Job
    { _jDetailedStatus = Nothing
    , _jStatus = Nothing
    , _jCreated = Nothing
    , _jProjectNumber = Nothing
    , _jWarnings = Nothing
    , _jImportedIds = Nothing
    , _jId = Nothing
    , _jErrors = Nothing
    , _jRequest = Nothing
    }

-- | A more detailed description of this job\'s current status.
jDetailedStatus :: Lens' Job (Maybe Text)
jDetailedStatus
  = lens _jDetailedStatus
      (\ s a -> s{_jDetailedStatus = a})

-- | The status of this job.
jStatus :: Lens' Job (Maybe JobStatus)
jStatus = lens _jStatus (\ s a -> s{_jStatus = a})

-- | The date this job was created, in milliseconds from the epoch.
jCreated :: Lens' Job (Maybe Int64)
jCreated = lens _jCreated (\ s a -> s{_jCreated = a})

-- | The Google Developers Console project number to which this job belongs.
jProjectNumber :: Lens' Job (Maybe Int64)
jProjectNumber
  = lens _jProjectNumber
      (\ s a -> s{_jProjectNumber = a})

-- | Any warnings that occurred during processing.
jWarnings :: Lens' Job [Text]
jWarnings
  = lens _jWarnings (\ s a -> s{_jWarnings = a}) .
      _Default
      . _Coerce

-- | If this Job represents an import, this field will contain the IDs of the
-- objects that were successfully imported.
jImportedIds :: Lens' Job [Text]
jImportedIds
  = lens _jImportedIds (\ s a -> s{_jImportedIds = a})
      . _Default
      . _Coerce

-- | The job ID.
jId :: Lens' Job (Maybe Text)
jId = lens _jId (\ s a -> s{_jId = a})

-- | Any errors that occurred during processing.
jErrors :: Lens' Job [Text]
jErrors
  = lens _jErrors (\ s a -> s{_jErrors = a}) . _Default
      . _Coerce

-- | A summarized representation of the original service request.
jRequest :: Lens' Job (Maybe JobRequest)
jRequest = lens _jRequest (\ s a -> s{_jRequest = a})

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job <$>
                   (o .:? "detailedStatus") <*> (o .:? "status") <*>
                     (o .:? "created")
                     <*> (o .:? "projectNumber")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "importedIds" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "request"))

instance ToJSON Job where
        toJSON Job{..}
          = object
              (catMaybes
                 [("detailedStatus" .=) <$> _jDetailedStatus,
                  ("status" .=) <$> _jStatus,
                  ("created" .=) <$> _jCreated,
                  ("projectNumber" .=) <$> _jProjectNumber,
                  ("warnings" .=) <$> _jWarnings,
                  ("importedIds" .=) <$> _jImportedIds,
                  ("id" .=) <$> _jId, ("errors" .=) <$> _jErrors,
                  ("request" .=) <$> _jRequest])

-- | The variant data export response.
--
-- /See:/ 'exportVariantSetResponse' smart constructor.
newtype ExportVariantSetResponse = ExportVariantSetResponse
    { _evsrJobId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportVariantSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evsrJobId'
exportVariantSetResponse
    :: ExportVariantSetResponse
exportVariantSetResponse =
    ExportVariantSetResponse
    { _evsrJobId = Nothing
    }

-- | A job ID that can be used to get status information.
evsrJobId :: Lens' ExportVariantSetResponse (Maybe Text)
evsrJobId
  = lens _evsrJobId (\ s a -> s{_evsrJobId = a})

instance FromJSON ExportVariantSetResponse where
        parseJSON
          = withObject "ExportVariantSetResponse"
              (\ o -> ExportVariantSetResponse <$> (o .:? "jobId"))

instance ToJSON ExportVariantSetResponse where
        toJSON ExportVariantSetResponse{..}
          = object (catMaybes [("jobId" .=) <$> _evsrJobId])

-- | The read group set align response.
--
-- /See:/ 'alignReadGroupSetsResponse' smart constructor.
newtype AlignReadGroupSetsResponse = AlignReadGroupSetsResponse
    { _argsrJobId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlignReadGroupSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'argsrJobId'
alignReadGroupSetsResponse
    :: AlignReadGroupSetsResponse
alignReadGroupSetsResponse =
    AlignReadGroupSetsResponse
    { _argsrJobId = Nothing
    }

-- | A job ID that can be used to get status information.
argsrJobId :: Lens' AlignReadGroupSetsResponse (Maybe Text)
argsrJobId
  = lens _argsrJobId (\ s a -> s{_argsrJobId = a})

instance FromJSON AlignReadGroupSetsResponse where
        parseJSON
          = withObject "AlignReadGroupSetsResponse"
              (\ o ->
                 AlignReadGroupSetsResponse <$> (o .:? "jobId"))

instance ToJSON AlignReadGroupSetsResponse where
        toJSON AlignReadGroupSetsResponse{..}
          = object (catMaybes [("jobId" .=) <$> _argsrJobId])

-- | The variant data import response.
--
-- /See:/ 'importVariantsResponse' smart constructor.
newtype ImportVariantsResponse = ImportVariantsResponse
    { _ivrJobId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportVariantsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivrJobId'
importVariantsResponse
    :: ImportVariantsResponse
importVariantsResponse =
    ImportVariantsResponse
    { _ivrJobId = Nothing
    }

-- | A job ID that can be used to get status information.
ivrJobId :: Lens' ImportVariantsResponse (Maybe Text)
ivrJobId = lens _ivrJobId (\ s a -> s{_ivrJobId = a})

instance FromJSON ImportVariantsResponse where
        parseJSON
          = withObject "ImportVariantsResponse"
              (\ o -> ImportVariantsResponse <$> (o .:? "jobId"))

instance ToJSON ImportVariantsResponse where
        toJSON ImportVariantsResponse{..}
          = object (catMaybes [("jobId" .=) <$> _ivrJobId])

--
-- /See:/ 'listCoverageBucketsResponse' smart constructor.
data ListCoverageBucketsResponse = ListCoverageBucketsResponse
    { _lcbrNextPageToken   :: !(Maybe Text)
    , _lcbrBucketWidth     :: !(Maybe Int64)
    , _lcbrCoverageBuckets :: !(Maybe [CoverageBucket])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListCoverageBucketsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbrNextPageToken'
--
-- * 'lcbrBucketWidth'
--
-- * 'lcbrCoverageBuckets'
listCoverageBucketsResponse
    :: ListCoverageBucketsResponse
listCoverageBucketsResponse =
    ListCoverageBucketsResponse
    { _lcbrNextPageToken = Nothing
    , _lcbrBucketWidth = Nothing
    , _lcbrCoverageBuckets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
lcbrNextPageToken :: Lens' ListCoverageBucketsResponse (Maybe Text)
lcbrNextPageToken
  = lens _lcbrNextPageToken
      (\ s a -> s{_lcbrNextPageToken = a})

-- | The length of each coverage bucket in base pairs. Note that buckets at
-- the end of a reference sequence may be shorter. This value is omitted if
-- the bucket width is infinity (the default behaviour, with no range or
-- targetBucketWidth).
lcbrBucketWidth :: Lens' ListCoverageBucketsResponse (Maybe Int64)
lcbrBucketWidth
  = lens _lcbrBucketWidth
      (\ s a -> s{_lcbrBucketWidth = a})

-- | The coverage buckets. The list of buckets is sparse; a bucket with 0
-- overlapping reads is not returned. A bucket never crosses more than one
-- reference sequence. Each bucket has width bucketWidth, unless its end is
-- the end of the reference sequence.
lcbrCoverageBuckets :: Lens' ListCoverageBucketsResponse [CoverageBucket]
lcbrCoverageBuckets
  = lens _lcbrCoverageBuckets
      (\ s a -> s{_lcbrCoverageBuckets = a})
      . _Default
      . _Coerce

instance FromJSON ListCoverageBucketsResponse where
        parseJSON
          = withObject "ListCoverageBucketsResponse"
              (\ o ->
                 ListCoverageBucketsResponse <$>
                   (o .:? "nextPageToken") <*> (o .:? "bucketWidth") <*>
                     (o .:? "coverageBuckets" .!= mempty))

instance ToJSON ListCoverageBucketsResponse where
        toJSON ListCoverageBucketsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcbrNextPageToken,
                  ("bucketWidth" .=) <$> _lcbrBucketWidth,
                  ("coverageBuckets" .=) <$> _lcbrCoverageBuckets])

-- | The read group set import response.
--
-- /See:/ 'importReadGroupSetsResponse' smart constructor.
newtype ImportReadGroupSetsResponse = ImportReadGroupSetsResponse
    { _irgsrJobId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportReadGroupSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irgsrJobId'
importReadGroupSetsResponse
    :: ImportReadGroupSetsResponse
importReadGroupSetsResponse =
    ImportReadGroupSetsResponse
    { _irgsrJobId = Nothing
    }

-- | A job ID that can be used to get status information.
irgsrJobId :: Lens' ImportReadGroupSetsResponse (Maybe Text)
irgsrJobId
  = lens _irgsrJobId (\ s a -> s{_irgsrJobId = a})

instance FromJSON ImportReadGroupSetsResponse where
        parseJSON
          = withObject "ImportReadGroupSetsResponse"
              (\ o ->
                 ImportReadGroupSetsResponse <$> (o .:? "jobId"))

instance ToJSON ImportReadGroupSetsResponse where
        toJSON ImportReadGroupSetsResponse{..}
          = object (catMaybes [("jobId" .=) <$> _irgsrJobId])

-- | A linear alignment can be represented by one CIGAR string. Describes the
-- mapped position and local alignment of the read to the reference.
--
-- /See:/ 'linearAlignment' smart constructor.
data LinearAlignment = LinearAlignment
    { _laCigar          :: !(Maybe [CigarUnit])
    , _laMAppingQuality :: !(Maybe Int32)
    , _laPosition       :: !(Maybe Position)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinearAlignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laCigar'
--
-- * 'laMAppingQuality'
--
-- * 'laPosition'
linearAlignment
    :: LinearAlignment
linearAlignment =
    LinearAlignment
    { _laCigar = Nothing
    , _laMAppingQuality = Nothing
    , _laPosition = Nothing
    }

-- | Represents the local alignment of this sequence (alignment matches,
-- indels, etc) against the reference.
laCigar :: Lens' LinearAlignment [CigarUnit]
laCigar
  = lens _laCigar (\ s a -> s{_laCigar = a}) . _Default
      . _Coerce

-- | The mapping quality of this alignment. Represents how likely the read
-- maps to this position as opposed to other locations.
laMAppingQuality :: Lens' LinearAlignment (Maybe Int32)
laMAppingQuality
  = lens _laMAppingQuality
      (\ s a -> s{_laMAppingQuality = a})

-- | The position of this alignment.
laPosition :: Lens' LinearAlignment (Maybe Position)
laPosition
  = lens _laPosition (\ s a -> s{_laPosition = a})

instance FromJSON LinearAlignment where
        parseJSON
          = withObject "LinearAlignment"
              (\ o ->
                 LinearAlignment <$>
                   (o .:? "cigar" .!= mempty) <*>
                     (o .:? "mappingQuality")
                     <*> (o .:? "position"))

instance ToJSON LinearAlignment where
        toJSON LinearAlignment{..}
          = object
              (catMaybes
                 [("cigar" .=) <$> _laCigar,
                  ("mappingQuality" .=) <$> _laMAppingQuality,
                  ("position" .=) <$> _laPosition])

-- | Metadata describes a single piece of variant call metadata. These data
-- include a top level key and either a single value string (value) or a
-- list of key-value pairs (info.) Value and info are mutually exclusive.
--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata
    { _mValue       :: !(Maybe Text)
    , _mKey         :: !(Maybe Text)
    , _mId          :: !(Maybe Text)
    , _mType        :: !(Maybe MetadataType)
    , _mNumber      :: !(Maybe Text)
    , _mDescription :: !(Maybe Text)
    , _mInfo        :: !(Maybe MetadataInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mValue'
--
-- * 'mKey'
--
-- * 'mId'
--
-- * 'mType'
--
-- * 'mNumber'
--
-- * 'mDescription'
--
-- * 'mInfo'
metadata
    :: Metadata
metadata =
    Metadata
    { _mValue = Nothing
    , _mKey = Nothing
    , _mId = Nothing
    , _mType = Nothing
    , _mNumber = Nothing
    , _mDescription = Nothing
    , _mInfo = Nothing
    }

-- | The value field for simple metadata
mValue :: Lens' Metadata (Maybe Text)
mValue = lens _mValue (\ s a -> s{_mValue = a})

-- | The top-level key.
mKey :: Lens' Metadata (Maybe Text)
mKey = lens _mKey (\ s a -> s{_mKey = a})

-- | User-provided ID field, not enforced by this API. Two or more pieces of
-- structured metadata with identical id and key fields are considered
-- equivalent.
mId :: Lens' Metadata (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | The type of data. Possible types include: Integer, Float, Flag,
-- Character, and String.
mType :: Lens' Metadata (Maybe MetadataType)
mType = lens _mType (\ s a -> s{_mType = a})

-- | The number of values that can be included in a field described by this
-- metadata.
mNumber :: Lens' Metadata (Maybe Text)
mNumber = lens _mNumber (\ s a -> s{_mNumber = a})

-- | A textual description of this metadata.
mDescription :: Lens' Metadata (Maybe Text)
mDescription
  = lens _mDescription (\ s a -> s{_mDescription = a})

-- | A string which maps to an array of values.
mInfo :: Lens' Metadata (Maybe MetadataInfo)
mInfo = lens _mInfo (\ s a -> s{_mInfo = a})

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata"
              (\ o ->
                 Metadata <$>
                   (o .:? "value") <*> (o .:? "key") <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "number")
                     <*> (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON Metadata where
        toJSON Metadata{..}
          = object
              (catMaybes
                 [("value" .=) <$> _mValue, ("key" .=) <$> _mKey,
                  ("id" .=) <$> _mId, ("type" .=) <$> _mType,
                  ("number" .=) <$> _mNumber,
                  ("description" .=) <$> _mDescription,
                  ("info" .=) <$> _mInfo])

-- | The read group set call response.
--
-- /See:/ 'callReadGroupSetsResponse' smart constructor.
newtype CallReadGroupSetsResponse = CallReadGroupSetsResponse
    { _crgsrJobId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallReadGroupSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crgsrJobId'
callReadGroupSetsResponse
    :: CallReadGroupSetsResponse
callReadGroupSetsResponse =
    CallReadGroupSetsResponse
    { _crgsrJobId = Nothing
    }

-- | A job ID that can be used to get status information.
crgsrJobId :: Lens' CallReadGroupSetsResponse (Maybe Text)
crgsrJobId
  = lens _crgsrJobId (\ s a -> s{_crgsrJobId = a})

instance FromJSON CallReadGroupSetsResponse where
        parseJSON
          = withObject "CallReadGroupSetsResponse"
              (\ o ->
                 CallReadGroupSetsResponse <$> (o .:? "jobId"))

instance ToJSON CallReadGroupSetsResponse where
        toJSON CallReadGroupSetsResponse{..}
          = object (catMaybes [("jobId" .=) <$> _crgsrJobId])

-- | An annotation set is a logical grouping of annotations that share
-- consistent type information and provenance. Examples of annotation sets
-- include \'all genes from refseq\', and \'all variant annotations from
-- ClinVar\'.
--
-- /See:/ 'annotationSet' smart constructor.
data AnnotationSet = AnnotationSet
    { _asReferenceSetId :: !(Maybe Text)
    , _asName           :: !(Maybe Text)
    , _asDatasetId      :: !(Maybe Text)
    , _asId             :: !(Maybe Text)
    , _asType           :: !(Maybe AnnotationSetType)
    , _asSourceURI      :: !(Maybe Text)
    , _asInfo           :: !(Maybe AnnotationSetInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asReferenceSetId'
--
-- * 'asName'
--
-- * 'asDatasetId'
--
-- * 'asId'
--
-- * 'asType'
--
-- * 'asSourceURI'
--
-- * 'asInfo'
annotationSet
    :: AnnotationSet
annotationSet =
    AnnotationSet
    { _asReferenceSetId = Nothing
    , _asName = Nothing
    , _asDatasetId = Nothing
    , _asId = Nothing
    , _asType = Nothing
    , _asSourceURI = Nothing
    , _asInfo = Nothing
    }

-- | The ID of the reference set that defines the coordinate space for this
-- set\'s annotations.
asReferenceSetId :: Lens' AnnotationSet (Maybe Text)
asReferenceSetId
  = lens _asReferenceSetId
      (\ s a -> s{_asReferenceSetId = a})

-- | The display name for this annotation set.
asName :: Lens' AnnotationSet (Maybe Text)
asName = lens _asName (\ s a -> s{_asName = a})

-- | The ID of the containing dataset.
asDatasetId :: Lens' AnnotationSet (Maybe Text)
asDatasetId
  = lens _asDatasetId (\ s a -> s{_asDatasetId = a})

-- | The generated unique ID for this annotation set.
asId :: Lens' AnnotationSet (Maybe Text)
asId = lens _asId (\ s a -> s{_asId = a})

-- | The type of annotations contained within this set.
asType :: Lens' AnnotationSet (Maybe AnnotationSetType)
asType = lens _asType (\ s a -> s{_asType = a})

-- | The source URI describing the file from which this annotation set was
-- generated, if any.
asSourceURI :: Lens' AnnotationSet (Maybe Text)
asSourceURI
  = lens _asSourceURI (\ s a -> s{_asSourceURI = a})

-- | A string which maps to an array of values.
asInfo :: Lens' AnnotationSet (Maybe AnnotationSetInfo)
asInfo = lens _asInfo (\ s a -> s{_asInfo = a})

instance FromJSON AnnotationSet where
        parseJSON
          = withObject "AnnotationSet"
              (\ o ->
                 AnnotationSet <$>
                   (o .:? "referenceSetId") <*> (o .:? "name") <*>
                     (o .:? "datasetId")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "sourceUri")
                     <*> (o .:? "info"))

instance ToJSON AnnotationSet where
        toJSON AnnotationSet{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _asReferenceSetId,
                  ("name" .=) <$> _asName,
                  ("datasetId" .=) <$> _asDatasetId,
                  ("id" .=) <$> _asId, ("type" .=) <$> _asType,
                  ("sourceUri" .=) <$> _asSourceURI,
                  ("info" .=) <$> _asInfo])

-- | A variant set is a collection of call sets and variants. It contains
-- summary statistics of those contents. A variant set belongs to a
-- dataset.
--
-- /See:/ 'variantSet' smart constructor.
data VariantSet = VariantSet
    { _vsDatasetId       :: !(Maybe Text)
    , _vsReferenceBounds :: !(Maybe [ReferenceBound])
    , _vsMetadata        :: !(Maybe [Metadata])
    , _vsId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsDatasetId'
--
-- * 'vsReferenceBounds'
--
-- * 'vsMetadata'
--
-- * 'vsId'
variantSet
    :: VariantSet
variantSet =
    VariantSet
    { _vsDatasetId = Nothing
    , _vsReferenceBounds = Nothing
    , _vsMetadata = Nothing
    , _vsId = Nothing
    }

-- | The dataset to which this variant set belongs. Immutable.
vsDatasetId :: Lens' VariantSet (Maybe Text)
vsDatasetId
  = lens _vsDatasetId (\ s a -> s{_vsDatasetId = a})

-- | A list of all references used by the variants in a variant set with
-- associated coordinate upper bounds for each one.
vsReferenceBounds :: Lens' VariantSet [ReferenceBound]
vsReferenceBounds
  = lens _vsReferenceBounds
      (\ s a -> s{_vsReferenceBounds = a})
      . _Default
      . _Coerce

-- | The metadata associated with this variant set.
vsMetadata :: Lens' VariantSet [Metadata]
vsMetadata
  = lens _vsMetadata (\ s a -> s{_vsMetadata = a}) .
      _Default
      . _Coerce

-- | The Google-generated ID of the variant set. Immutable.
vsId :: Lens' VariantSet (Maybe Text)
vsId = lens _vsId (\ s a -> s{_vsId = a})

instance FromJSON VariantSet where
        parseJSON
          = withObject "VariantSet"
              (\ o ->
                 VariantSet <$>
                   (o .:? "datasetId") <*>
                     (o .:? "referenceBounds" .!= mempty)
                     <*> (o .:? "metadata" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON VariantSet where
        toJSON VariantSet{..}
          = object
              (catMaybes
                 [("datasetId" .=) <$> _vsDatasetId,
                  ("referenceBounds" .=) <$> _vsReferenceBounds,
                  ("metadata" .=) <$> _vsMetadata,
                  ("id" .=) <$> _vsId])

-- | The dataset list response.
--
-- /See:/ 'listDatasetsResponse' smart constructor.
data ListDatasetsResponse = ListDatasetsResponse
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDatasets      :: !(Maybe [Dataset])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListDatasetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrNextPageToken'
--
-- * 'ldrDatasets'
listDatasetsResponse
    :: ListDatasetsResponse
listDatasetsResponse =
    ListDatasetsResponse
    { _ldrNextPageToken = Nothing
    , _ldrDatasets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
ldrNextPageToken :: Lens' ListDatasetsResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | The list of matching Datasets.
ldrDatasets :: Lens' ListDatasetsResponse [Dataset]
ldrDatasets
  = lens _ldrDatasets (\ s a -> s{_ldrDatasets = a}) .
      _Default
      . _Coerce

instance FromJSON ListDatasetsResponse where
        parseJSON
          = withObject "ListDatasetsResponse"
              (\ o ->
                 ListDatasetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "datasets" .!= mempty))

instance ToJSON ListDatasetsResponse where
        toJSON ListDatasetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("datasets" .=) <$> _ldrDatasets])

-- | The read group set import request.
--
-- /See:/ 'importReadGroupSetsRequest' smart constructor.
data ImportReadGroupSetsRequest = ImportReadGroupSetsRequest
    { _irgsrReferenceSetId    :: !(Maybe Text)
    , _irgsrDatasetId         :: !(Maybe Text)
    , _irgsrSourceURIs        :: !(Maybe [Text])
    , _irgsrPartitionStrategy :: !(Maybe ImportReadGroupSetsRequestPartitionStrategy)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportReadGroupSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irgsrReferenceSetId'
--
-- * 'irgsrDatasetId'
--
-- * 'irgsrSourceURIs'
--
-- * 'irgsrPartitionStrategy'
importReadGroupSetsRequest
    :: ImportReadGroupSetsRequest
importReadGroupSetsRequest =
    ImportReadGroupSetsRequest
    { _irgsrReferenceSetId = Nothing
    , _irgsrDatasetId = Nothing
    , _irgsrSourceURIs = Nothing
    , _irgsrPartitionStrategy = Nothing
    }

-- | The reference set to which the imported read group sets are aligned to,
-- if any. The reference names of this reference set must be a superset of
-- those found in the imported file headers. If no reference set id is
-- provided, a best effort is made to associate with a matching reference
-- set.
irgsrReferenceSetId :: Lens' ImportReadGroupSetsRequest (Maybe Text)
irgsrReferenceSetId
  = lens _irgsrReferenceSetId
      (\ s a -> s{_irgsrReferenceSetId = a})

-- | Required. The ID of the dataset these read group sets will belong to.
-- The caller must have WRITE permissions to this dataset.
irgsrDatasetId :: Lens' ImportReadGroupSetsRequest (Maybe Text)
irgsrDatasetId
  = lens _irgsrDatasetId
      (\ s a -> s{_irgsrDatasetId = a})

-- | A list of URIs pointing at BAM files in Google Cloud Storage.
irgsrSourceURIs :: Lens' ImportReadGroupSetsRequest [Text]
irgsrSourceURIs
  = lens _irgsrSourceURIs
      (\ s a -> s{_irgsrSourceURIs = a})
      . _Default
      . _Coerce

-- | The partition strategy describes how read groups are partitioned into
-- read group sets.
irgsrPartitionStrategy :: Lens' ImportReadGroupSetsRequest (Maybe ImportReadGroupSetsRequestPartitionStrategy)
irgsrPartitionStrategy
  = lens _irgsrPartitionStrategy
      (\ s a -> s{_irgsrPartitionStrategy = a})

instance FromJSON ImportReadGroupSetsRequest where
        parseJSON
          = withObject "ImportReadGroupSetsRequest"
              (\ o ->
                 ImportReadGroupSetsRequest <$>
                   (o .:? "referenceSetId") <*> (o .:? "datasetId") <*>
                     (o .:? "sourceUris" .!= mempty)
                     <*> (o .:? "partitionStrategy"))

instance ToJSON ImportReadGroupSetsRequest where
        toJSON ImportReadGroupSetsRequest{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _irgsrReferenceSetId,
                  ("datasetId" .=) <$> _irgsrDatasetId,
                  ("sourceUris" .=) <$> _irgsrSourceURIs,
                  ("partitionStrategy" .=) <$>
                    _irgsrPartitionStrategy])

-- | The variant data import request.
--
-- /See:/ 'importVariantsRequest' smart constructor.
data ImportVariantsRequest = ImportVariantsRequest
    { _ivrFormat                  :: !(Maybe ImportVariantsRequestFormat)
    , _ivrNormalizeReferenceNames :: !(Maybe Bool)
    , _ivrSourceURIs              :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportVariantsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivrFormat'
--
-- * 'ivrNormalizeReferenceNames'
--
-- * 'ivrSourceURIs'
importVariantsRequest
    :: ImportVariantsRequest
importVariantsRequest =
    ImportVariantsRequest
    { _ivrFormat = Nothing
    , _ivrNormalizeReferenceNames = Nothing
    , _ivrSourceURIs = Nothing
    }

-- | The format of the variant data being imported. If unspecified, defaults
-- to to \"VCF\".
ivrFormat :: Lens' ImportVariantsRequest (Maybe ImportVariantsRequestFormat)
ivrFormat
  = lens _ivrFormat (\ s a -> s{_ivrFormat = a})

-- | Convert reference names to the canonical representation. hg19
-- haploytypes (those reference names containing \"_hap\") are not modified
-- in any way. All other reference names are modified according to the
-- following rules: The reference name is capitalized. The \"chr\" prefix
-- is dropped for all autosomes and sex chromsomes. For example \"chr17\"
-- becomes \"17\" and \"chrX\" becomes \"X\". All mitochondrial chromosomes
-- (\"chrM\", \"chrMT\", etc) become \"MT\".
ivrNormalizeReferenceNames :: Lens' ImportVariantsRequest (Maybe Bool)
ivrNormalizeReferenceNames
  = lens _ivrNormalizeReferenceNames
      (\ s a -> s{_ivrNormalizeReferenceNames = a})

-- | A list of URIs referencing variant files in Google Cloud Storage. URIs
-- can include wildcards as described here. Note that recursive wildcards
-- (\'**\') are not supported.
ivrSourceURIs :: Lens' ImportVariantsRequest [Text]
ivrSourceURIs
  = lens _ivrSourceURIs
      (\ s a -> s{_ivrSourceURIs = a})
      . _Default
      . _Coerce

instance FromJSON ImportVariantsRequest where
        parseJSON
          = withObject "ImportVariantsRequest"
              (\ o ->
                 ImportVariantsRequest <$>
                   (o .:? "format") <*>
                     (o .:? "normalizeReferenceNames")
                     <*> (o .:? "sourceUris" .!= mempty))

instance ToJSON ImportVariantsRequest where
        toJSON ImportVariantsRequest{..}
          = object
              (catMaybes
                 [("format" .=) <$> _ivrFormat,
                  ("normalizeReferenceNames" .=) <$>
                    _ivrNormalizeReferenceNames,
                  ("sourceUris" .=) <$> _ivrSourceURIs])

-- |
--
-- /See:/ 'externalId' smart constructor.
data ExternalId = ExternalId
    { _eiSourceName :: !(Maybe Text)
    , _eiId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExternalId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiSourceName'
--
-- * 'eiId'
externalId
    :: ExternalId
externalId =
    ExternalId
    { _eiSourceName = Nothing
    , _eiId = Nothing
    }

-- | The name of the source of this data.
eiSourceName :: Lens' ExternalId (Maybe Text)
eiSourceName
  = lens _eiSourceName (\ s a -> s{_eiSourceName = a})

-- | The id used by the source of this data.
eiId :: Lens' ExternalId (Maybe Text)
eiId = lens _eiId (\ s a -> s{_eiId = a})

instance FromJSON ExternalId where
        parseJSON
          = withObject "ExternalId"
              (\ o ->
                 ExternalId <$> (o .:? "sourceName") <*> (o .:? "id"))

instance ToJSON ExternalId where
        toJSON ExternalId{..}
          = object
              (catMaybes
                 [("sourceName" .=) <$> _eiSourceName,
                  ("id" .=) <$> _eiId])

-- | A single CIGAR operation.
--
-- /See:/ 'cigarUnit' smart constructor.
data CigarUnit = CigarUnit
    { _cuOperation         :: !(Maybe CigarUnitOperation)
    , _cuOperationLength   :: !(Maybe Int64)
    , _cuReferenceSequence :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CigarUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuOperation'
--
-- * 'cuOperationLength'
--
-- * 'cuReferenceSequence'
cigarUnit
    :: CigarUnit
cigarUnit =
    CigarUnit
    { _cuOperation = Nothing
    , _cuOperationLength = Nothing
    , _cuReferenceSequence = Nothing
    }

cuOperation :: Lens' CigarUnit (Maybe CigarUnitOperation)
cuOperation
  = lens _cuOperation (\ s a -> s{_cuOperation = a})

-- | The number of bases that the operation runs for. Required.
cuOperationLength :: Lens' CigarUnit (Maybe Int64)
cuOperationLength
  = lens _cuOperationLength
      (\ s a -> s{_cuOperationLength = a})

-- | referenceSequence is only used at mismatches (SEQUENCE_MISMATCH) and
-- deletions (DELETE). Filling this field replaces SAM\'s MD tag. If the
-- relevant information is not available, this field is unset.
cuReferenceSequence :: Lens' CigarUnit (Maybe Text)
cuReferenceSequence
  = lens _cuReferenceSequence
      (\ s a -> s{_cuReferenceSequence = a})

instance FromJSON CigarUnit where
        parseJSON
          = withObject "CigarUnit"
              (\ o ->
                 CigarUnit <$>
                   (o .:? "operation") <*> (o .:? "operationLength") <*>
                     (o .:? "referenceSequence"))

instance ToJSON CigarUnit where
        toJSON CigarUnit{..}
          = object
              (catMaybes
                 [("operation" .=) <$> _cuOperation,
                  ("operationLength" .=) <$> _cuOperationLength,
                  ("referenceSequence" .=) <$> _cuReferenceSequence])

-- | The read group set align request.
--
-- /See:/ 'alignReadGroupSetsRequest' smart constructor.
data AlignReadGroupSetsRequest = AlignReadGroupSetsRequest
    { _argsrInterleavedFastqSource :: !(Maybe InterleavedFastqSource)
    , _argsrReadGroupSetId         :: !(Maybe Text)
    , _argsrBamSourceURIs          :: !(Maybe [Text])
    , _argsrPairedFastqSource      :: !(Maybe PairedFastqSource)
    , _argsrDatasetId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlignReadGroupSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'argsrInterleavedFastqSource'
--
-- * 'argsrReadGroupSetId'
--
-- * 'argsrBamSourceURIs'
--
-- * 'argsrPairedFastqSource'
--
-- * 'argsrDatasetId'
alignReadGroupSetsRequest
    :: AlignReadGroupSetsRequest
alignReadGroupSetsRequest =
    AlignReadGroupSetsRequest
    { _argsrInterleavedFastqSource = Nothing
    , _argsrReadGroupSetId = Nothing
    , _argsrBamSourceURIs = Nothing
    , _argsrPairedFastqSource = Nothing
    , _argsrDatasetId = Nothing
    }

-- | The interleaved FASTQ source files for alignment, where both members of
-- each pair of reads are found on consecutive records within the same
-- FASTQ file. Exactly one of readGroupSetId, bamSourceUris,
-- interleavedFastqSource or pairedFastqSource must be provided.
argsrInterleavedFastqSource :: Lens' AlignReadGroupSetsRequest (Maybe InterleavedFastqSource)
argsrInterleavedFastqSource
  = lens _argsrInterleavedFastqSource
      (\ s a -> s{_argsrInterleavedFastqSource = a})

-- | The ID of the read group set which will be aligned. A new read group set
-- will be generated to hold the aligned data, the originals will not be
-- modified. The caller must have READ permissions for this read group set.
-- Exactly one of readGroupSetId, bamSourceUris, interleavedFastqSource or
-- pairedFastqSource must be provided.
argsrReadGroupSetId :: Lens' AlignReadGroupSetsRequest (Maybe Text)
argsrReadGroupSetId
  = lens _argsrReadGroupSetId
      (\ s a -> s{_argsrReadGroupSetId = a})

-- | The BAM source files for alignment. Exactly one of readGroupSetId,
-- bamSourceUris, interleavedFastqSource or pairedFastqSource must be
-- provided. The caller must have READ permissions for these files.
argsrBamSourceURIs :: Lens' AlignReadGroupSetsRequest [Text]
argsrBamSourceURIs
  = lens _argsrBamSourceURIs
      (\ s a -> s{_argsrBamSourceURIs = a})
      . _Default
      . _Coerce

-- | The paired end FASTQ source files for alignment, where each member of a
-- pair of reads are found in separate files. Exactly one of
-- readGroupSetId, bamSourceUris, interleavedFastqSource or
-- pairedFastqSource must be provided.
argsrPairedFastqSource :: Lens' AlignReadGroupSetsRequest (Maybe PairedFastqSource)
argsrPairedFastqSource
  = lens _argsrPairedFastqSource
      (\ s a -> s{_argsrPairedFastqSource = a})

-- | Required. The ID of the dataset the newly aligned read group sets will
-- belong to. The caller must have WRITE permissions to this dataset.
argsrDatasetId :: Lens' AlignReadGroupSetsRequest (Maybe Text)
argsrDatasetId
  = lens _argsrDatasetId
      (\ s a -> s{_argsrDatasetId = a})

instance FromJSON AlignReadGroupSetsRequest where
        parseJSON
          = withObject "AlignReadGroupSetsRequest"
              (\ o ->
                 AlignReadGroupSetsRequest <$>
                   (o .:? "interleavedFastqSource") <*>
                     (o .:? "readGroupSetId")
                     <*> (o .:? "bamSourceUris" .!= mempty)
                     <*> (o .:? "pairedFastqSource")
                     <*> (o .:? "datasetId"))

instance ToJSON AlignReadGroupSetsRequest where
        toJSON AlignReadGroupSetsRequest{..}
          = object
              (catMaybes
                 [("interleavedFastqSource" .=) <$>
                    _argsrInterleavedFastqSource,
                  ("readGroupSetId" .=) <$> _argsrReadGroupSetId,
                  ("bamSourceUris" .=) <$> _argsrBamSourceURIs,
                  ("pairedFastqSource" .=) <$> _argsrPairedFastqSource,
                  ("datasetId" .=) <$> _argsrDatasetId])

-- | The variant data export request.
--
-- /See:/ 'exportVariantSetRequest' smart constructor.
data ExportVariantSetRequest = ExportVariantSetRequest
    { _evsrBigqueryDataset :: !(Maybe Text)
    , _evsrBigqueryTable   :: !(Maybe Text)
    , _evsrFormat          :: !(Maybe ExportVariantSetRequestFormat)
    , _evsrProjectNumber   :: !(Maybe Int64)
    , _evsrCallSetIds      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportVariantSetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evsrBigqueryDataset'
--
-- * 'evsrBigqueryTable'
--
-- * 'evsrFormat'
--
-- * 'evsrProjectNumber'
--
-- * 'evsrCallSetIds'
exportVariantSetRequest
    :: ExportVariantSetRequest
exportVariantSetRequest =
    ExportVariantSetRequest
    { _evsrBigqueryDataset = Nothing
    , _evsrBigqueryTable = Nothing
    , _evsrFormat = Nothing
    , _evsrProjectNumber = Nothing
    , _evsrCallSetIds = Nothing
    }

-- | Required. The BigQuery dataset to export data to. This dataset must
-- already exist. Note that this is distinct from the Genomics concept of
-- \"dataset\".
evsrBigqueryDataset :: Lens' ExportVariantSetRequest (Maybe Text)
evsrBigqueryDataset
  = lens _evsrBigqueryDataset
      (\ s a -> s{_evsrBigqueryDataset = a})

-- | Required. The BigQuery table to export data to. If the table doesn\'t
-- exist, it will be created. If it already exists, it will be overwritten.
evsrBigqueryTable :: Lens' ExportVariantSetRequest (Maybe Text)
evsrBigqueryTable
  = lens _evsrBigqueryTable
      (\ s a -> s{_evsrBigqueryTable = a})

-- | The format for the exported data.
evsrFormat :: Lens' ExportVariantSetRequest (Maybe ExportVariantSetRequestFormat)
evsrFormat
  = lens _evsrFormat (\ s a -> s{_evsrFormat = a})

-- | Required. The Google Cloud project number that owns the destination
-- BigQuery dataset. The caller must have WRITE access to this project.
-- This project will also own the resulting export job.
evsrProjectNumber :: Lens' ExportVariantSetRequest (Maybe Int64)
evsrProjectNumber
  = lens _evsrProjectNumber
      (\ s a -> s{_evsrProjectNumber = a})

-- | If provided, only variant call information from the specified call sets
-- will be exported. By default all variant calls are exported.
evsrCallSetIds :: Lens' ExportVariantSetRequest [Text]
evsrCallSetIds
  = lens _evsrCallSetIds
      (\ s a -> s{_evsrCallSetIds = a})
      . _Default
      . _Coerce

instance FromJSON ExportVariantSetRequest where
        parseJSON
          = withObject "ExportVariantSetRequest"
              (\ o ->
                 ExportVariantSetRequest <$>
                   (o .:? "bigqueryDataset") <*> (o .:? "bigqueryTable")
                     <*> (o .:? "format")
                     <*> (o .:? "projectNumber")
                     <*> (o .:? "callSetIds" .!= mempty))

instance ToJSON ExportVariantSetRequest where
        toJSON ExportVariantSetRequest{..}
          = object
              (catMaybes
                 [("bigqueryDataset" .=) <$> _evsrBigqueryDataset,
                  ("bigqueryTable" .=) <$> _evsrBigqueryTable,
                  ("format" .=) <$> _evsrFormat,
                  ("projectNumber" .=) <$> _evsrProjectNumber,
                  ("callSetIds" .=) <$> _evsrCallSetIds])

-- | The read group set export response.
--
-- /See:/ 'exportReadGroupSetsResponse' smart constructor.
newtype ExportReadGroupSetsResponse = ExportReadGroupSetsResponse
    { _ergsrJobId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportReadGroupSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ergsrJobId'
exportReadGroupSetsResponse
    :: ExportReadGroupSetsResponse
exportReadGroupSetsResponse =
    ExportReadGroupSetsResponse
    { _ergsrJobId = Nothing
    }

-- | A job ID that can be used to get status information.
ergsrJobId :: Lens' ExportReadGroupSetsResponse (Maybe Text)
ergsrJobId
  = lens _ergsrJobId (\ s a -> s{_ergsrJobId = a})

instance FromJSON ExportReadGroupSetsResponse where
        parseJSON
          = withObject "ExportReadGroupSetsResponse"
              (\ o ->
                 ExportReadGroupSetsResponse <$> (o .:? "jobId"))

instance ToJSON ExportReadGroupSetsResponse where
        toJSON ExportReadGroupSetsResponse{..}
          = object (catMaybes [("jobId" .=) <$> _ergsrJobId])

--
-- /See:/ 'searchAnnotationsRequest' smart constructor.
data SearchAnnotationsRequest = SearchAnnotationsRequest
    { _sarRange            :: !(Maybe QueryRange)
    , _sarPageToken        :: !(Maybe Text)
    , _sarAnnotationSetIds :: !(Maybe [Text])
    , _sarPageSize         :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchAnnotationsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sarRange'
--
-- * 'sarPageToken'
--
-- * 'sarAnnotationSetIds'
--
-- * 'sarPageSize'
searchAnnotationsRequest
    :: SearchAnnotationsRequest
searchAnnotationsRequest =
    SearchAnnotationsRequest
    { _sarRange = Nothing
    , _sarPageToken = Nothing
    , _sarAnnotationSetIds = Nothing
    , _sarPageSize = Nothing
    }

-- | If specified, this query matches only annotations that overlap this
-- range.
sarRange :: Lens' SearchAnnotationsRequest (Maybe QueryRange)
sarRange = lens _sarRange (\ s a -> s{_sarRange = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
sarPageToken :: Lens' SearchAnnotationsRequest (Maybe Text)
sarPageToken
  = lens _sarPageToken (\ s a -> s{_sarPageToken = a})

-- | The annotation sets to search within. The caller must have READ access
-- to these annotation sets. Required. All queried annotation sets must
-- have the same type.
sarAnnotationSetIds :: Lens' SearchAnnotationsRequest [Text]
sarAnnotationSetIds
  = lens _sarAnnotationSetIds
      (\ s a -> s{_sarAnnotationSetIds = a})
      . _Default
      . _Coerce

-- | Specifies number of results to return in a single page. If unspecified,
-- it will default to 256. The maximum value is 2048.
sarPageSize :: Lens' SearchAnnotationsRequest (Maybe Int32)
sarPageSize
  = lens _sarPageSize (\ s a -> s{_sarPageSize = a})

instance FromJSON SearchAnnotationsRequest where
        parseJSON
          = withObject "SearchAnnotationsRequest"
              (\ o ->
                 SearchAnnotationsRequest <$>
                   (o .:? "range") <*> (o .:? "pageToken") <*>
                     (o .:? "annotationSetIds" .!= mempty)
                     <*> (o .:? "pageSize"))

instance ToJSON SearchAnnotationsRequest where
        toJSON SearchAnnotationsRequest{..}
          = object
              (catMaybes
                 [("range" .=) <$> _sarRange,
                  ("pageToken" .=) <$> _sarPageToken,
                  ("annotationSetIds" .=) <$> _sarAnnotationSetIds,
                  ("pageSize" .=) <$> _sarPageSize])

-- | A string which maps to an array of values.
--
-- /See:/ 'metadataInfo' smart constructor.
data MetadataInfo =
    MetadataInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataInfo' with the minimum fields required to make a request.
--
metadataInfo
    :: MetadataInfo
metadataInfo = MetadataInfo

instance FromJSON MetadataInfo where
        parseJSON
          = withObject "MetadataInfo"
              (\ o -> pure MetadataInfo)

instance ToJSON MetadataInfo where
        toJSON = const emptyObject

-- | The search variant sets response.
--
-- /See:/ 'searchVariantSetsResponse' smart constructor.
data SearchVariantSetsResponse = SearchVariantSetsResponse
    { _svsrNextPageToken :: !(Maybe Text)
    , _svsrVariantSets   :: !(Maybe [VariantSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchVariantSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svsrNextPageToken'
--
-- * 'svsrVariantSets'
searchVariantSetsResponse
    :: SearchVariantSetsResponse
searchVariantSetsResponse =
    SearchVariantSetsResponse
    { _svsrNextPageToken = Nothing
    , _svsrVariantSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
svsrNextPageToken :: Lens' SearchVariantSetsResponse (Maybe Text)
svsrNextPageToken
  = lens _svsrNextPageToken
      (\ s a -> s{_svsrNextPageToken = a})

-- | The variant sets belonging to the requested dataset.
svsrVariantSets :: Lens' SearchVariantSetsResponse [VariantSet]
svsrVariantSets
  = lens _svsrVariantSets
      (\ s a -> s{_svsrVariantSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchVariantSetsResponse where
        parseJSON
          = withObject "SearchVariantSetsResponse"
              (\ o ->
                 SearchVariantSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "variantSets" .!= mempty))

instance ToJSON SearchVariantSetsResponse where
        toJSON SearchVariantSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _svsrNextPageToken,
                  ("variantSets" .=) <$> _svsrVariantSets])

-- | The variant search request.
--
-- /See:/ 'searchVariantsRequest' smart constructor.
data SearchVariantsRequest = SearchVariantsRequest
    { _svrStart         :: !(Maybe Int64)
    , _svrCallSetIds    :: !(Maybe [Text])
    , _svrReferenceName :: !(Maybe Text)
    , _svrEnd           :: !(Maybe Int64)
    , _svrMaxCalls      :: !(Maybe Int32)
    , _svrPageToken     :: !(Maybe Text)
    , _svrVariantName   :: !(Maybe Text)
    , _svrVariantSetIds :: !(Maybe [Text])
    , _svrPageSize      :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchVariantsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svrStart'
--
-- * 'svrCallSetIds'
--
-- * 'svrReferenceName'
--
-- * 'svrEnd'
--
-- * 'svrMaxCalls'
--
-- * 'svrPageToken'
--
-- * 'svrVariantName'
--
-- * 'svrVariantSetIds'
--
-- * 'svrPageSize'
searchVariantsRequest
    :: SearchVariantsRequest
searchVariantsRequest =
    SearchVariantsRequest
    { _svrStart = Nothing
    , _svrCallSetIds = Nothing
    , _svrReferenceName = Nothing
    , _svrEnd = Nothing
    , _svrMaxCalls = Nothing
    , _svrPageToken = Nothing
    , _svrVariantName = Nothing
    , _svrVariantSetIds = Nothing
    , _svrPageSize = Nothing
    }

-- | The beginning of the window (0-based, inclusive) for which overlapping
-- variants should be returned. If unspecified, defaults to 0.
svrStart :: Lens' SearchVariantsRequest (Maybe Int64)
svrStart = lens _svrStart (\ s a -> s{_svrStart = a})

-- | Only return variant calls which belong to call sets with these ids.
-- Leaving this blank returns all variant calls. If a variant has no calls
-- belonging to any of these call sets, it won\'t be returned at all.
-- Currently, variants with no calls from any call set will never be
-- returned.
svrCallSetIds :: Lens' SearchVariantsRequest [Text]
svrCallSetIds
  = lens _svrCallSetIds
      (\ s a -> s{_svrCallSetIds = a})
      . _Default
      . _Coerce

-- | Required. Only return variants in this reference sequence.
svrReferenceName :: Lens' SearchVariantsRequest (Maybe Text)
svrReferenceName
  = lens _svrReferenceName
      (\ s a -> s{_svrReferenceName = a})

-- | The end of the window, 0-based exclusive. If unspecified or 0, defaults
-- to the length of the reference.
svrEnd :: Lens' SearchVariantsRequest (Maybe Int64)
svrEnd = lens _svrEnd (\ s a -> s{_svrEnd = a})

-- | The maximum number of calls to return. However, at least one variant
-- will always be returned, even if it has more calls than this limit. If
-- unspecified, defaults to 5000.
svrMaxCalls :: Lens' SearchVariantsRequest (Maybe Int32)
svrMaxCalls
  = lens _svrMaxCalls (\ s a -> s{_svrMaxCalls = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
svrPageToken :: Lens' SearchVariantsRequest (Maybe Text)
svrPageToken
  = lens _svrPageToken (\ s a -> s{_svrPageToken = a})

-- | Only return variants which have exactly this name.
svrVariantName :: Lens' SearchVariantsRequest (Maybe Text)
svrVariantName
  = lens _svrVariantName
      (\ s a -> s{_svrVariantName = a})

-- | At most one variant set ID must be provided. Only variants from this
-- variant set will be returned. If omitted, a call set id must be included
-- in the request.
svrVariantSetIds :: Lens' SearchVariantsRequest [Text]
svrVariantSetIds
  = lens _svrVariantSetIds
      (\ s a -> s{_svrVariantSetIds = a})
      . _Default
      . _Coerce

-- | The maximum number of variants to return. If unspecified, defaults to
-- 5000.
svrPageSize :: Lens' SearchVariantsRequest (Maybe Int32)
svrPageSize
  = lens _svrPageSize (\ s a -> s{_svrPageSize = a})

instance FromJSON SearchVariantsRequest where
        parseJSON
          = withObject "SearchVariantsRequest"
              (\ o ->
                 SearchVariantsRequest <$>
                   (o .:? "start") <*> (o .:? "callSetIds" .!= mempty)
                     <*> (o .:? "referenceName")
                     <*> (o .:? "end")
                     <*> (o .:? "maxCalls")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "variantName")
                     <*> (o .:? "variantSetIds" .!= mempty)
                     <*> (o .:? "pageSize"))

instance ToJSON SearchVariantsRequest where
        toJSON SearchVariantsRequest{..}
          = object
              (catMaybes
                 [("start" .=) <$> _svrStart,
                  ("callSetIds" .=) <$> _svrCallSetIds,
                  ("referenceName" .=) <$> _svrReferenceName,
                  ("end" .=) <$> _svrEnd,
                  ("maxCalls" .=) <$> _svrMaxCalls,
                  ("pageToken" .=) <$> _svrPageToken,
                  ("variantName" .=) <$> _svrVariantName,
                  ("variantSetIds" .=) <$> _svrVariantSetIds,
                  ("pageSize" .=) <$> _svrPageSize])

-- | A string which maps to an array of values.
--
-- /See:/ 'annotationSetInfo' smart constructor.
data AnnotationSetInfo =
    AnnotationSetInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetInfo' with the minimum fields required to make a request.
--
annotationSetInfo
    :: AnnotationSetInfo
annotationSetInfo = AnnotationSetInfo

instance FromJSON AnnotationSetInfo where
        parseJSON
          = withObject "AnnotationSetInfo"
              (\ o -> pure AnnotationSetInfo)

instance ToJSON AnnotationSetInfo where
        toJSON = const emptyObject

-- |
--
-- /See:/ 'variantAnnotationCondition' smart constructor.
data VariantAnnotationCondition = VariantAnnotationCondition
    { _vacExternalIds :: !(Maybe [ExternalId])
    , _vacNames       :: !(Maybe [Text])
    , _vacConceptId   :: !(Maybe Text)
    , _vacOmimId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantAnnotationCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vacExternalIds'
--
-- * 'vacNames'
--
-- * 'vacConceptId'
--
-- * 'vacOmimId'
variantAnnotationCondition
    :: VariantAnnotationCondition
variantAnnotationCondition =
    VariantAnnotationCondition
    { _vacExternalIds = Nothing
    , _vacNames = Nothing
    , _vacConceptId = Nothing
    , _vacOmimId = Nothing
    }

-- | The set of external IDs for this condition.
vacExternalIds :: Lens' VariantAnnotationCondition [ExternalId]
vacExternalIds
  = lens _vacExternalIds
      (\ s a -> s{_vacExternalIds = a})
      . _Default
      . _Coerce

-- | A set of names for the condition.
vacNames :: Lens' VariantAnnotationCondition [Text]
vacNames
  = lens _vacNames (\ s a -> s{_vacNames = a}) .
      _Default
      . _Coerce

-- | The MedGen concept id associated with this gene. Search for these IDs at
-- http:\/\/www.ncbi.nlm.nih.gov\/medgen\/
vacConceptId :: Lens' VariantAnnotationCondition (Maybe Text)
vacConceptId
  = lens _vacConceptId (\ s a -> s{_vacConceptId = a})

-- | The OMIM id for this condition. Search for these IDs at
-- http:\/\/omim.org\/
vacOmimId :: Lens' VariantAnnotationCondition (Maybe Text)
vacOmimId
  = lens _vacOmimId (\ s a -> s{_vacOmimId = a})

instance FromJSON VariantAnnotationCondition where
        parseJSON
          = withObject "VariantAnnotationCondition"
              (\ o ->
                 VariantAnnotationCondition <$>
                   (o .:? "externalIds" .!= mempty) <*>
                     (o .:? "names" .!= mempty)
                     <*> (o .:? "conceptId")
                     <*> (o .:? "omimId"))

instance ToJSON VariantAnnotationCondition where
        toJSON VariantAnnotationCondition{..}
          = object
              (catMaybes
                 [("externalIds" .=) <$> _vacExternalIds,
                  ("names" .=) <$> _vacNames,
                  ("conceptId" .=) <$> _vacConceptId,
                  ("omimId" .=) <$> _vacOmimId])

--
-- /See:/ 'searchAnnotationSetsResponse' smart constructor.
data SearchAnnotationSetsResponse = SearchAnnotationSetsResponse
    { _sasrNextPageToken  :: !(Maybe Text)
    , _sasrAnnotationSets :: !(Maybe [AnnotationSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchAnnotationSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasrNextPageToken'
--
-- * 'sasrAnnotationSets'
searchAnnotationSetsResponse
    :: SearchAnnotationSetsResponse
searchAnnotationSetsResponse =
    SearchAnnotationSetsResponse
    { _sasrNextPageToken = Nothing
    , _sasrAnnotationSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
sasrNextPageToken :: Lens' SearchAnnotationSetsResponse (Maybe Text)
sasrNextPageToken
  = lens _sasrNextPageToken
      (\ s a -> s{_sasrNextPageToken = a})

-- | The matching annotation sets.
sasrAnnotationSets :: Lens' SearchAnnotationSetsResponse [AnnotationSet]
sasrAnnotationSets
  = lens _sasrAnnotationSets
      (\ s a -> s{_sasrAnnotationSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchAnnotationSetsResponse where
        parseJSON
          = withObject "SearchAnnotationSetsResponse"
              (\ o ->
                 SearchAnnotationSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "annotationSets" .!= mempty))

instance ToJSON SearchAnnotationSetsResponse where
        toJSON SearchAnnotationSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sasrNextPageToken,
                  ("annotationSets" .=) <$> _sasrAnnotationSets])

-- | A string which maps to an array of values.
--
-- /See:/ 'callSetInfo' smart constructor.
data CallSetInfo =
    CallSetInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSetInfo' with the minimum fields required to make a request.
--
callSetInfo
    :: CallSetInfo
callSetInfo = CallSetInfo

instance FromJSON CallSetInfo where
        parseJSON
          = withObject "CallSetInfo" (\ o -> pure CallSetInfo)

instance ToJSON CallSetInfo where
        toJSON = const emptyObject

-- | A 0-based half-open genomic coordinate range over a reference sequence,
-- for representing the position of a genomic resource.
--
-- /See:/ 'rangePosition' smart constructor.
data RangePosition = RangePosition
    { _rpStart         :: !(Maybe Int64)
    , _rpReverseStrand :: !(Maybe Bool)
    , _rpReferenceId   :: !(Maybe Text)
    , _rpReferenceName :: !(Maybe Text)
    , _rpEnd           :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RangePosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpStart'
--
-- * 'rpReverseStrand'
--
-- * 'rpReferenceId'
--
-- * 'rpReferenceName'
--
-- * 'rpEnd'
rangePosition
    :: RangePosition
rangePosition =
    RangePosition
    { _rpStart = Nothing
    , _rpReverseStrand = Nothing
    , _rpReferenceId = Nothing
    , _rpReferenceName = Nothing
    , _rpEnd = Nothing
    }

-- | The start position of the range on the reference, 0-based inclusive.
rpStart :: Lens' RangePosition (Maybe Int64)
rpStart = lens _rpStart (\ s a -> s{_rpStart = a})

-- | Whether this range refers to the reverse strand, as opposed to the
-- forward strand. Note that regardless of this field, the start\/end
-- position of the range always refer to the forward strand.
rpReverseStrand :: Lens' RangePosition (Maybe Bool)
rpReverseStrand
  = lens _rpReverseStrand
      (\ s a -> s{_rpReverseStrand = a})

-- | The ID of the Google Genomics reference associated with this range.
rpReferenceId :: Lens' RangePosition (Maybe Text)
rpReferenceId
  = lens _rpReferenceId
      (\ s a -> s{_rpReferenceId = a})

-- | The display name corresponding to the reference specified by
-- referenceId, for example chr1, 1, or chrX.
rpReferenceName :: Lens' RangePosition (Maybe Text)
rpReferenceName
  = lens _rpReferenceName
      (\ s a -> s{_rpReferenceName = a})

-- | The end position of the range on the reference, 0-based exclusive.
rpEnd :: Lens' RangePosition (Maybe Int64)
rpEnd = lens _rpEnd (\ s a -> s{_rpEnd = a})

instance FromJSON RangePosition where
        parseJSON
          = withObject "RangePosition"
              (\ o ->
                 RangePosition <$>
                   (o .:? "start") <*> (o .:? "reverseStrand") <*>
                     (o .:? "referenceId")
                     <*> (o .:? "referenceName")
                     <*> (o .:? "end"))

instance ToJSON RangePosition where
        toJSON RangePosition{..}
          = object
              (catMaybes
                 [("start" .=) <$> _rpStart,
                  ("reverseStrand" .=) <$> _rpReverseStrand,
                  ("referenceId" .=) <$> _rpReferenceId,
                  ("referenceName" .=) <$> _rpReferenceName,
                  ("end" .=) <$> _rpEnd])

-- | A transcript represents the assertion that a particular region of the
-- reference genome may be transcribed as RNA.
--
-- /See:/ 'transcript' smart constructor.
data Transcript = Transcript
    { _tGeneId         :: !(Maybe Text)
    , _tCodingSequence :: !(Maybe TranscriptCodingSequence)
    , _tExons          :: !(Maybe [TranscriptExon])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Transcript' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tGeneId'
--
-- * 'tCodingSequence'
--
-- * 'tExons'
transcript
    :: Transcript
transcript =
    Transcript
    { _tGeneId = Nothing
    , _tCodingSequence = Nothing
    , _tExons = Nothing
    }

-- | The annotation ID of the gene from which this transcript is transcribed.
tGeneId :: Lens' Transcript (Maybe Text)
tGeneId = lens _tGeneId (\ s a -> s{_tGeneId = a})

-- | The range of the coding sequence for this transcript, if any. To
-- determine the exact ranges of coding sequence, intersect this range with
-- those of the exons, if any. If there are any exons, the codingSequence
-- must start and end within them. Note that in some cases, the reference
-- genome will not exactly match the observed mRNA transcript e.g. due to
-- variance in the source genome from reference. In these cases, exon.frame
-- will not necessarily match the expected reference reading frame and
-- coding exon reference bases cannot necessarily be concatenated to
-- produce the original transcript mRNA.
tCodingSequence :: Lens' Transcript (Maybe TranscriptCodingSequence)
tCodingSequence
  = lens _tCodingSequence
      (\ s a -> s{_tCodingSequence = a})

-- | The exons that compose this transcript. This field should be unset for
-- genomes where transcript splicing does not occur, for example
-- prokaryotes. Introns are regions of the transcript that are not included
-- in the spliced RNA product. Though not explicitly modeled here, intron
-- ranges can be deduced; all regions of this transcript that are not exons
-- are introns. Exonic sequences do not necessarily code for a
-- translational product (amino acids). Only the regions of exons bounded
-- by the codingSequence correspond to coding DNA sequence. Exons are
-- ordered by start position and may not overlap.
tExons :: Lens' Transcript [TranscriptExon]
tExons
  = lens _tExons (\ s a -> s{_tExons = a}) . _Default .
      _Coerce

instance FromJSON Transcript where
        parseJSON
          = withObject "Transcript"
              (\ o ->
                 Transcript <$>
                   (o .:? "geneId") <*> (o .:? "codingSequence") <*>
                     (o .:? "exons" .!= mempty))

instance ToJSON Transcript where
        toJSON Transcript{..}
          = object
              (catMaybes
                 [("geneId" .=) <$> _tGeneId,
                  ("codingSequence" .=) <$> _tCodingSequence,
                  ("exons" .=) <$> _tExons])

--
-- /See:/ 'transcriptCodingSequence' smart constructor.
data TranscriptCodingSequence = TranscriptCodingSequence
    { _tcsStart :: !(Maybe Int64)
    , _tcsEnd   :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranscriptCodingSequence' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsStart'
--
-- * 'tcsEnd'
transcriptCodingSequence
    :: TranscriptCodingSequence
transcriptCodingSequence =
    TranscriptCodingSequence
    { _tcsStart = Nothing
    , _tcsEnd = Nothing
    }

-- | The start of the coding sequence on this annotation\'s reference
-- sequence, 0-based inclusive. Note that this position is relative to the
-- reference start, and not the containing annotation start.
tcsStart :: Lens' TranscriptCodingSequence (Maybe Int64)
tcsStart = lens _tcsStart (\ s a -> s{_tcsStart = a})

-- | The end of the coding sequence on this annotation\'s reference sequence,
-- 0-based exclusive. Note that this position is relative to the reference
-- start, and not the containing annotation start.
tcsEnd :: Lens' TranscriptCodingSequence (Maybe Int64)
tcsEnd = lens _tcsEnd (\ s a -> s{_tcsEnd = a})

instance FromJSON TranscriptCodingSequence where
        parseJSON
          = withObject "TranscriptCodingSequence"
              (\ o ->
                 TranscriptCodingSequence <$>
                   (o .:? "start") <*> (o .:? "end"))

instance ToJSON TranscriptCodingSequence where
        toJSON TranscriptCodingSequence{..}
          = object
              (catMaybes
                 [("start" .=) <$> _tcsStart, ("end" .=) <$> _tcsEnd])

-- | The job search response.
--
-- /See:/ 'searchJobsResponse' smart constructor.
data SearchJobsResponse = SearchJobsResponse
    { _sjrNextPageToken :: !(Maybe Text)
    , _sjrJobs          :: !(Maybe [Job])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrNextPageToken'
--
-- * 'sjrJobs'
searchJobsResponse
    :: SearchJobsResponse
searchJobsResponse =
    SearchJobsResponse
    { _sjrNextPageToken = Nothing
    , _sjrJobs = Nothing
    }

-- | The continuation token which is used to page through large result sets.
-- Provide this value is a subsequent request to return the next page of
-- results. This field will be empty if there are no more results.
sjrNextPageToken :: Lens' SearchJobsResponse (Maybe Text)
sjrNextPageToken
  = lens _sjrNextPageToken
      (\ s a -> s{_sjrNextPageToken = a})

-- | The list of jobs results, ordered newest to oldest.
sjrJobs :: Lens' SearchJobsResponse [Job]
sjrJobs
  = lens _sjrJobs (\ s a -> s{_sjrJobs = a}) . _Default
      . _Coerce

instance FromJSON SearchJobsResponse where
        parseJSON
          = withObject "SearchJobsResponse"
              (\ o ->
                 SearchJobsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobs" .!= mempty))

instance ToJSON SearchJobsResponse where
        toJSON SearchJobsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sjrNextPageToken,
                  ("jobs" .=) <$> _sjrJobs])

-- | ReferenceBound records an upper bound for the starting coordinate of
-- variants in a particular reference.
--
-- /See:/ 'referenceBound' smart constructor.
data ReferenceBound = ReferenceBound
    { _rbUpperBound    :: !(Maybe Int64)
    , _rbReferenceName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferenceBound' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbUpperBound'
--
-- * 'rbReferenceName'
referenceBound
    :: ReferenceBound
referenceBound =
    ReferenceBound
    { _rbUpperBound = Nothing
    , _rbReferenceName = Nothing
    }

-- | An upper bound (inclusive) on the starting coordinate of any variant in
-- the reference sequence.
rbUpperBound :: Lens' ReferenceBound (Maybe Int64)
rbUpperBound
  = lens _rbUpperBound (\ s a -> s{_rbUpperBound = a})

-- | The reference the bound is associate with.
rbReferenceName :: Lens' ReferenceBound (Maybe Text)
rbReferenceName
  = lens _rbReferenceName
      (\ s a -> s{_rbReferenceName = a})

instance FromJSON ReferenceBound where
        parseJSON
          = withObject "ReferenceBound"
              (\ o ->
                 ReferenceBound <$>
                   (o .:? "upperBound") <*> (o .:? "referenceName"))

instance ToJSON ReferenceBound where
        toJSON ReferenceBound{..}
          = object
              (catMaybes
                 [("upperBound" .=) <$> _rbUpperBound,
                  ("referenceName" .=) <$> _rbReferenceName])

-- | An abstraction for referring to a genomic position, in relation to some
-- already known reference. For now, represents a genomic position as a
-- reference name, a base number on that reference (0-based), and a
-- determination of forward or reverse strand.
--
-- /See:/ 'position' smart constructor.
data Position = Position
    { _pReverseStrand :: !(Maybe Bool)
    , _pReferenceName :: !(Maybe Text)
    , _pPosition      :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pReverseStrand'
--
-- * 'pReferenceName'
--
-- * 'pPosition'
position
    :: Position
position =
    Position
    { _pReverseStrand = Nothing
    , _pReferenceName = Nothing
    , _pPosition = Nothing
    }

-- | Whether this position is on the reverse strand, as opposed to the
-- forward strand.
pReverseStrand :: Lens' Position (Maybe Bool)
pReverseStrand
  = lens _pReverseStrand
      (\ s a -> s{_pReverseStrand = a})

-- | The name of the reference in whatever reference set is being used.
pReferenceName :: Lens' Position (Maybe Text)
pReferenceName
  = lens _pReferenceName
      (\ s a -> s{_pReferenceName = a})

-- | The 0-based offset from the start of the forward strand for that
-- reference.
pPosition :: Lens' Position (Maybe Int64)
pPosition
  = lens _pPosition (\ s a -> s{_pPosition = a})

instance FromJSON Position where
        parseJSON
          = withObject "Position"
              (\ o ->
                 Position <$>
                   (o .:? "reverseStrand") <*> (o .:? "referenceName")
                     <*> (o .:? "position"))

instance ToJSON Position where
        toJSON Position{..}
          = object
              (catMaybes
                 [("reverseStrand" .=) <$> _pReverseStrand,
                  ("referenceName" .=) <$> _pReferenceName,
                  ("position" .=) <$> _pPosition])

-- | The read group set search response.
--
-- /See:/ 'searchReadGroupSetsResponse' smart constructor.
data SearchReadGroupSetsResponse = SearchReadGroupSetsResponse
    { _srgsrNextPageToken :: !(Maybe Text)
    , _srgsrReadGroupSets :: !(Maybe [ReadGroupSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReadGroupSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srgsrNextPageToken'
--
-- * 'srgsrReadGroupSets'
searchReadGroupSetsResponse
    :: SearchReadGroupSetsResponse
searchReadGroupSetsResponse =
    SearchReadGroupSetsResponse
    { _srgsrNextPageToken = Nothing
    , _srgsrReadGroupSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
srgsrNextPageToken :: Lens' SearchReadGroupSetsResponse (Maybe Text)
srgsrNextPageToken
  = lens _srgsrNextPageToken
      (\ s a -> s{_srgsrNextPageToken = a})

-- | The list of matching read group sets.
srgsrReadGroupSets :: Lens' SearchReadGroupSetsResponse [ReadGroupSet]
srgsrReadGroupSets
  = lens _srgsrReadGroupSets
      (\ s a -> s{_srgsrReadGroupSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchReadGroupSetsResponse where
        parseJSON
          = withObject "SearchReadGroupSetsResponse"
              (\ o ->
                 SearchReadGroupSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "readGroupSets" .!= mempty))

instance ToJSON SearchReadGroupSetsResponse where
        toJSON SearchReadGroupSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _srgsrNextPageToken,
                  ("readGroupSets" .=) <$> _srgsrReadGroupSets])

-- | A string which maps to an array of values.
--
-- /See:/ 'readGroupSetInfo' smart constructor.
data ReadGroupSetInfo =
    ReadGroupSetInfo
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetInfo' with the minimum fields required to make a request.
--
readGroupSetInfo
    :: ReadGroupSetInfo
readGroupSetInfo = ReadGroupSetInfo

instance FromJSON ReadGroupSetInfo where
        parseJSON
          = withObject "ReadGroupSetInfo"
              (\ o -> pure ReadGroupSetInfo)

instance ToJSON ReadGroupSetInfo where
        toJSON = const emptyObject

-- | A reference set is a set of references which typically comprise a
-- reference assembly for a species, such as GRCh38 which is representative
-- of the human genome. A reference set defines a common coordinate space
-- for comparing reference-aligned experimental data. A reference set
-- contains 1 or more references.
--
-- /See:/ 'referenceSet' smart constructor.
data ReferenceSet = ReferenceSet
    { _rsSourceAccessions :: !(Maybe [Text])
    , _rsReferenceIds     :: !(Maybe [Text])
    , _rsMD5checksum      :: !(Maybe Text)
    , _rsNcbiTaxonId      :: !(Maybe Int32)
    , _rsId               :: !(Maybe Text)
    , _rsAssemblyId       :: !(Maybe Text)
    , _rsSourceURI        :: !(Maybe Text)
    , _rsDescription      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferenceSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsSourceAccessions'
--
-- * 'rsReferenceIds'
--
-- * 'rsMD5checksum'
--
-- * 'rsNcbiTaxonId'
--
-- * 'rsId'
--
-- * 'rsAssemblyId'
--
-- * 'rsSourceURI'
--
-- * 'rsDescription'
referenceSet
    :: ReferenceSet
referenceSet =
    ReferenceSet
    { _rsSourceAccessions = Nothing
    , _rsReferenceIds = Nothing
    , _rsMD5checksum = Nothing
    , _rsNcbiTaxonId = Nothing
    , _rsId = Nothing
    , _rsAssemblyId = Nothing
    , _rsSourceURI = Nothing
    , _rsDescription = Nothing
    }

-- | All known corresponding accession IDs in INSDC (GenBank\/ENA\/DDBJ)
-- ideally with a version number, for example NC_000001.11.
rsSourceAccessions :: Lens' ReferenceSet [Text]
rsSourceAccessions
  = lens _rsSourceAccessions
      (\ s a -> s{_rsSourceAccessions = a})
      . _Default
      . _Coerce

-- | The IDs of the reference objects that are part of this set.
-- Reference.md5checksum must be unique within this set.
rsReferenceIds :: Lens' ReferenceSet [Text]
rsReferenceIds
  = lens _rsReferenceIds
      (\ s a -> s{_rsReferenceIds = a})
      . _Default
      . _Coerce

-- | Order-independent MD5 checksum which identifies this reference set. The
-- checksum is computed by sorting all lower case hexidecimal string
-- reference.md5checksum (for all reference in this set) in ascending
-- lexicographic order, concatenating, and taking the MD5 of that value.
-- The resulting value is represented in lower case hexadecimal format.
rsMD5checksum :: Lens' ReferenceSet (Maybe Text)
rsMD5checksum
  = lens _rsMD5checksum
      (\ s a -> s{_rsMD5checksum = a})

-- | ID from http:\/\/www.ncbi.nlm.nih.gov\/taxonomy (e.g. 9606->human)
-- indicating the species which this assembly is intended to model. Note
-- that contained references may specify a different ncbiTaxonId, as
-- assemblies may contain reference sequences which do not belong to the
-- modeled species, e.g. EBV in a human reference genome.
rsNcbiTaxonId :: Lens' ReferenceSet (Maybe Int32)
rsNcbiTaxonId
  = lens _rsNcbiTaxonId
      (\ s a -> s{_rsNcbiTaxonId = a})

-- | The Google generated immutable ID of the reference set.
rsId :: Lens' ReferenceSet (Maybe Text)
rsId = lens _rsId (\ s a -> s{_rsId = a})

-- | Public id of this reference set, such as GRCh37.
rsAssemblyId :: Lens' ReferenceSet (Maybe Text)
rsAssemblyId
  = lens _rsAssemblyId (\ s a -> s{_rsAssemblyId = a})

-- | The URI from which the references were obtained.
rsSourceURI :: Lens' ReferenceSet (Maybe Text)
rsSourceURI
  = lens _rsSourceURI (\ s a -> s{_rsSourceURI = a})

-- | Free text description of this reference set.
rsDescription :: Lens' ReferenceSet (Maybe Text)
rsDescription
  = lens _rsDescription
      (\ s a -> s{_rsDescription = a})

instance FromJSON ReferenceSet where
        parseJSON
          = withObject "ReferenceSet"
              (\ o ->
                 ReferenceSet <$>
                   (o .:? "sourceAccessions" .!= mempty) <*>
                     (o .:? "referenceIds" .!= mempty)
                     <*> (o .:? "md5checksum")
                     <*> (o .:? "ncbiTaxonId")
                     <*> (o .:? "id")
                     <*> (o .:? "assemblyId")
                     <*> (o .:? "sourceURI")
                     <*> (o .:? "description"))

instance ToJSON ReferenceSet where
        toJSON ReferenceSet{..}
          = object
              (catMaybes
                 [("sourceAccessions" .=) <$> _rsSourceAccessions,
                  ("referenceIds" .=) <$> _rsReferenceIds,
                  ("md5checksum" .=) <$> _rsMD5checksum,
                  ("ncbiTaxonId" .=) <$> _rsNcbiTaxonId,
                  ("id" .=) <$> _rsId,
                  ("assemblyId" .=) <$> _rsAssemblyId,
                  ("sourceURI" .=) <$> _rsSourceURI,
                  ("description" .=) <$> _rsDescription])
