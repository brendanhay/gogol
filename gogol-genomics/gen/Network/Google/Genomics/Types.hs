{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types
    (
    -- * Service URL
      genomicsURL

    -- * FastqMetadata
    , FastqMetadata
    , fastqMetadata
    , fmPlatformUnit
    , fmReadGroupName
    , fmLibraryName
    , fmPlatformName
    , fmSampleName

    -- * CallInfo
    , CallInfo
    , callInfo

    -- * ReadInfo
    , ReadInfo
    , readInfo

    -- * ReadGroupExperiment
    , ReadGroupExperiment
    , readGroupExperiment
    , rgeInstrumentModel
    , rgePlatformUnit
    , rgeSequencingCenter
    , rgeLibraryId

    -- * KeyValue
    , KeyValue
    , keyValue
    , kvValue
    , kvKey

    -- * SearchAnnotationSetsRequestTypesItem
    , SearchAnnotationSetsRequestTypesItem (..)

    -- * VariantAnnotationEffect
    , VariantAnnotationEffect (..)

    -- * Variant
    , Variant
    , variant
    , vVariantSetId
    , vCreated
    , vStart
    , vAlternateBases
    , vReferenceName
    , vNames
    , vEnd
    , vReferenceBases
    , vId
    , vQuality
    , vFilter
    , vInfo
    , vCalls

    -- * Annotation
    , Annotation
    , annotation
    , aVariant
    , aAnnotationSetId
    , aName
    , aId
    , aType
    , aTranscript
    , aInfo
    , aPosition

    -- * InterleavedFastqSource
    , InterleavedFastqSource
    , interleavedFastqSource
    , ifsMetadata
    , ifsSourceURIs

    -- * CallReadGroupSetsRequest
    , CallReadGroupSetsRequest
    , callReadGroupSetsRequest
    , crgsrReadGroupSetId
    , crgsrDatasetId
    , crgsrSourceURIs

    -- * BatchAnnotationsResponseEntry
    , BatchAnnotationsResponseEntry
    , batchAnnotationsResponseEntry
    , bareStatus
    , bareAnnotation

    -- * ListBasesResponse
    , ListBasesResponse
    , listBasesResponse
    , lbrNextPageToken
    , lbrOffset
    , lbrSequence

    -- * Dataset
    , Dataset
    , dataset
    , dIsPublic
    , dProjectNumber
    , dName
    , dId
    , dCreateTime

    -- * Read'
    , Read'
    , read'
    , rFragmentLength
    , rDuplicateFragment
    , rReadGroupSetId
    , rNextMatePosition
    , rFailedVendorQualityChecks
    , rAlignment
    , rFragmentName
    , rNumberReads
    , rId
    , rSecondaryAlignment
    , rReadGroupId
    , rSupplementaryAlignment
    , rAlignedSequence
    , rProperPlacement
    , rInfo
    , rReadNumber
    , rAlignedQuality

    -- * TranscriptExon
    , TranscriptExon
    , transcriptExon
    , teStart
    , teEnd
    , teFrame

    -- * Call
    , Call
    , call
    , cGenotypeLikelihood
    , cCallSetName
    , cPhaseset
    , cCallSetId
    , cGenotype
    , cInfo

    -- * QueryRange
    , QueryRange
    , queryRange
    , qrStart
    , qrReferenceId
    , qrReferenceName
    , qrEnd

    -- * BatchCreateAnnotationsRequest
    , BatchCreateAnnotationsRequest
    , batchCreateAnnotationsRequest
    , bcarAnnotations

    -- * MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants

    -- * ReadGroup
    , ReadGroup
    , readGroup
    , rgReferenceSetId
    , rgPrograms
    , rgExperiment
    , rgName
    , rgDatasetId
    , rgId
    , rgSampleId
    , rgPredictedInsertSize
    , rgDescription
    , rgInfo

    -- * MetadataType
    , MetadataType (..)

    -- * SearchReferenceSetsRequest
    , SearchReferenceSetsRequest
    , searchReferenceSetsRequest
    , srsrMD5checksums
    , srsrAccessions
    , srsrPageToken
    , srsrAssemblyId
    , srsrPageSize

    -- * AnnotationSetType
    , AnnotationSetType (..)

    -- * SearchReferencesResponse
    , SearchReferencesResponse
    , searchReferencesResponse
    , srrNextPageToken
    , srrReferences

    -- * CallSet
    , CallSet
    , callSet
    , csCreated
    , csName
    , csId
    , csSampleId
    , csVariantSetIds
    , csInfo

    -- * CoverageBucket
    , CoverageBucket
    , coverageBucket
    , cbRange
    , cbMeanCoverage

    -- * VariantAnnotation
    , VariantAnnotation
    , variantAnnotation
    , vaEffect
    , vaClinicalSignificance
    , vaAlternateBases
    , vaGeneId
    , vaConditions
    , vaType
    , vaTranscriptIds

    -- * VariantAnnotationClinicalSignificance
    , VariantAnnotationClinicalSignificance (..)

    -- * SearchReadGroupSetsRequest
    , SearchReadGroupSetsRequest
    , searchReadGroupSetsRequest
    , srgsrDatasetIds
    , srgsrName
    , srgsrPageToken
    , srgsrPageSize

    -- * BatchAnnotationsResponseEntryStatus
    , BatchAnnotationsResponseEntryStatus
    , batchAnnotationsResponseEntryStatus
    , baresCode
    , baresMessage

    -- * Reference
    , Reference
    , reference
    , refLength
    , refSourceAccessions
    , refMD5checksum
    , refName
    , refNcbiTaxonId
    , refId
    , refSourceURI

    -- * BatchAnnotationsResponse
    , BatchAnnotationsResponse
    , batchAnnotationsResponse
    , barEntries

    -- * ReadGroupInfo
    , ReadGroupInfo
    , readGroupInfo

    -- * SearchJobsRequest
    , SearchJobsRequest
    , searchJobsRequest
    , sjrCreatedAfter
    , sjrStatus
    , sjrProjectNumber
    , sjrPageToken
    , sjrPageSize
    , sjrCreatedBefore

    -- * SearchCallSetsResponse
    , SearchCallSetsResponse
    , searchCallSetsResponse
    , scsrNextPageToken
    , scsrCallSets

    -- * ExperimentalCreateJobRequest
    , ExperimentalCreateJobRequest
    , experimentalCreateJobRequest
    , ecjrGcsOutputPath
    , ecjrProjectNumber
    , ecjrAlign
    , ecjrSourceURIs
    , ecjrPairedSourceURIs
    , ecjrCallVariants

    -- * JobRequest
    , JobRequest
    , jobRequest
    , jrDestination
    , jrSource
    , jrType

    -- * SearchReadsRequest
    , SearchReadsRequest
    , searchReadsRequest
    , srrStart
    , srrReadGroupIds
    , srrReferenceName
    , srrEnd
    , srrPageToken
    , srrPageSize
    , srrReadGroupSetIds

    -- * VariantInfo
    , VariantInfo
    , variantInfo

    -- * SearchVariantSetsRequest
    , SearchVariantSetsRequest
    , searchVariantSetsRequest
    , svsrDatasetIds
    , svsrPageToken
    , svsrPageSize

    -- * ReadGroupProgram
    , ReadGroupProgram
    , readGroupProgram
    , rgpPrevProgramId
    , rgpName
    , rgpVersion
    , rgpId
    , rgpCommandLine

    -- * Int32Value
    , Int32Value
    , int32Value
    , ivValue

    -- * AnnotationInfo
    , AnnotationInfo
    , annotationInfo

    -- * ExportReadGroupSetsRequest
    , ExportReadGroupSetsRequest
    , exportReadGroupSetsRequest
    , ergsrReferenceNames
    , ergsrProjectNumber
    , ergsrExportURI
    , ergsrReadGroupSetIds

    -- * SearchAnnotationsResponse
    , SearchAnnotationsResponse
    , searchAnnotationsResponse
    , sarAnnotations
    , sarNextPageToken

    -- * SearchAnnotationSetsRequest
    , SearchAnnotationSetsRequest
    , searchAnnotationSetsRequest
    , sasrReferenceSetId
    , sasrTypes
    , sasrDatasetIds
    , sasrName
    , sasrPageToken
    , sasrPageSize

    -- * ImportReadGroupSetsRequestPartitionStrategy
    , ImportReadGroupSetsRequestPartitionStrategy (..)

    -- * SearchVariantsResponse
    , SearchVariantsResponse
    , searchVariantsResponse
    , svrVariants
    , svrNextPageToken

    -- * ExperimentalCreateJobResponse
    , ExperimentalCreateJobResponse
    , experimentalCreateJobResponse
    , ecjrJobId

    -- * SearchCallSetsRequest
    , SearchCallSetsRequest
    , searchCallSetsRequest
    , scsrName
    , scsrPageToken
    , scsrVariantSetIds
    , scsrPageSize

    -- * SearchReadsResponse
    , SearchReadsResponse
    , searchReadsResponse
    , sNextPageToken
    , sAlignments

    -- * PairedFastqSource
    , PairedFastqSource
    , pairedFastqSource
    , pfsFirstSourceURIs
    , pfsMetadata
    , pfsSecondSourceURIs

    -- * SearchReferencesRequest
    , SearchReferencesRequest
    , searchReferencesRequest
    , sReferenceSetId
    , sMD5checksums
    , sAccessions
    , sPageToken
    , sPageSize

    -- * AnnotationType
    , AnnotationType (..)

    -- * SearchReferenceSetsResponse
    , SearchReferenceSetsResponse
    , searchReferenceSetsResponse
    , srsrNextPageToken
    , srsrReferenceSets

    -- * Range
    , Range
    , range
    , rStart
    , rReferenceName
    , rEnd

    -- * ReadGroupSet
    , ReadGroupSet
    , readGroupSet
    , rgsReferenceSetId
    , rgsName
    , rgsDatasetId
    , rgsId
    , rgsInfo
    , rgsReadGroups
    , rgsFilename

    -- * Job
    , Job
    , job
    , jDetailedStatus
    , jStatus
    , jCreated
    , jProjectNumber
    , jWarnings
    , jImportedIds
    , jId
    , jErrors
    , jRequest

    -- * ExportVariantSetResponse
    , ExportVariantSetResponse
    , exportVariantSetResponse
    , evsrJobId

    -- * AlignReadGroupSetsResponse
    , AlignReadGroupSetsResponse
    , alignReadGroupSetsResponse
    , argsrJobId

    -- * SearchJobsRequestStatusItem
    , SearchJobsRequestStatusItem (..)

    -- * ImportVariantsResponse
    , ImportVariantsResponse
    , importVariantsResponse
    , ivrJobId

    -- * ListCoverageBucketsResponse
    , ListCoverageBucketsResponse
    , listCoverageBucketsResponse
    , lcbrNextPageToken
    , lcbrBucketWidth
    , lcbrCoverageBuckets

    -- * ImportReadGroupSetsResponse
    , ImportReadGroupSetsResponse
    , importReadGroupSetsResponse
    , irgsrJobId

    -- * LinearAlignment
    , LinearAlignment
    , linearAlignment
    , laCigar
    , laMAppingQuality
    , laPosition

    -- * Metadata
    , Metadata
    , metadata
    , mValue
    , mKey
    , mId
    , mType
    , mNumber
    , mDescription
    , mInfo

    -- * CallReadGroupSetsResponse
    , CallReadGroupSetsResponse
    , callReadGroupSetsResponse
    , crgsrJobId

    -- * AnnotationSet
    , AnnotationSet
    , annotationSet
    , asReferenceSetId
    , asName
    , asDatasetId
    , asId
    , asType
    , asSourceURI
    , asInfo

    -- * VariantSet
    , VariantSet
    , variantSet
    , vsDatasetId
    , vsReferenceBounds
    , vsMetadata
    , vsId

    -- * CigarUnitOperation
    , CigarUnitOperation (..)

    -- * ListDatasetsResponse
    , ListDatasetsResponse
    , listDatasetsResponse
    , ldrNextPageToken
    , ldrDatasets

    -- * ImportReadGroupSetsRequest
    , ImportReadGroupSetsRequest
    , importReadGroupSetsRequest
    , irgsrReferenceSetId
    , irgsrDatasetId
    , irgsrSourceURIs
    , irgsrPartitionStrategy

    -- * ImportVariantsRequest
    , ImportVariantsRequest
    , importVariantsRequest
    , ivrFormat
    , ivrNormalizeReferenceNames
    , ivrSourceURIs

    -- * ExternalId
    , ExternalId
    , externalId
    , eiSourceName
    , eiId

    -- * CigarUnit
    , CigarUnit
    , cigarUnit
    , cuOperation
    , cuOperationLength
    , cuReferenceSequence

    -- * AlignReadGroupSetsRequest
    , AlignReadGroupSetsRequest
    , alignReadGroupSetsRequest
    , argsrInterleavedFastqSource
    , argsrReadGroupSetId
    , argsrBamSourceURIs
    , argsrPairedFastqSource
    , argsrDatasetId

    -- * ExportVariantSetRequest
    , ExportVariantSetRequest
    , exportVariantSetRequest
    , evsrBigqueryDataset
    , evsrBigqueryTable
    , evsrFormat
    , evsrProjectNumber
    , evsrCallSetIds

    -- * VariantAnnotationType
    , VariantAnnotationType (..)

    -- * ExportReadGroupSetsResponse
    , ExportReadGroupSetsResponse
    , exportReadGroupSetsResponse
    , ergsrJobId

    -- * JobStatus
    , JobStatus (..)

    -- * ImportVariantsRequestFormat
    , ImportVariantsRequestFormat (..)

    -- * SearchAnnotationsRequest
    , SearchAnnotationsRequest
    , searchAnnotationsRequest
    , sarRange
    , sarPageToken
    , sarAnnotationSetIds
    , sarPageSize

    -- * MetadataInfo
    , MetadataInfo
    , metadataInfo

    -- * SearchVariantSetsResponse
    , SearchVariantSetsResponse
    , searchVariantSetsResponse
    , svsrNextPageToken
    , svsrVariantSets

    -- * SearchVariantsRequest
    , SearchVariantsRequest
    , searchVariantsRequest
    , svrStart
    , svrCallSetIds
    , svrReferenceName
    , svrEnd
    , svrMaxCalls
    , svrPageToken
    , svrVariantName
    , svrVariantSetIds
    , svrPageSize

    -- * ExportVariantSetRequestFormat
    , ExportVariantSetRequestFormat (..)

    -- * AnnotationSetInfo
    , AnnotationSetInfo
    , annotationSetInfo

    -- * VariantAnnotationCondition
    , VariantAnnotationCondition
    , variantAnnotationCondition
    , vacExternalIds
    , vacNames
    , vacConceptId
    , vacOmimId

    -- * SearchAnnotationSetsResponse
    , SearchAnnotationSetsResponse
    , searchAnnotationSetsResponse
    , sasrNextPageToken
    , sasrAnnotationSets

    -- * CallSetInfo
    , CallSetInfo
    , callSetInfo

    -- * JobRequestType
    , JobRequestType (..)

    -- * RangePosition
    , RangePosition
    , rangePosition
    , rpStart
    , rpReverseStrand
    , rpReferenceId
    , rpReferenceName
    , rpEnd

    -- * Transcript
    , Transcript
    , transcript
    , tGeneId
    , tCodingSequence
    , tExons

    -- * TranscriptCodingSequence
    , TranscriptCodingSequence
    , transcriptCodingSequence
    , tcsStart
    , tcsEnd

    -- * SearchJobsResponse
    , SearchJobsResponse
    , searchJobsResponse
    , sjrNextPageToken
    , sjrJobs

    -- * ReferenceBound
    , ReferenceBound
    , referenceBound
    , rbUpperBound
    , rbReferenceName

    -- * Position
    , Position
    , position
    , pReverseStrand
    , pReferenceName
    , pPosition

    -- * SearchReadGroupSetsResponse
    , SearchReadGroupSetsResponse
    , searchReadGroupSetsResponse
    , srgsrNextPageToken
    , srgsrReadGroupSets

    -- * ReadGroupSetInfo
    , ReadGroupSetInfo
    , readGroupSetInfo

    -- * ReferenceSet
    , ReferenceSet
    , referenceSet
    , rsSourceAccessions
    , rsReferenceIds
    , rsMD5checksum
    , rsNcbiTaxonId
    , rsId
    , rsAssemblyId
    , rsSourceURI
    , rsDescription
    ) where

import           Network.Google.Genomics.Types.Product
import           Network.Google.Genomics.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta2' of the Genomics API.
genomicsURL :: BaseUrl
genomicsURL
  = BaseUrl Https
      "https://www.googleapis.com/genomics/v1beta2/"
      443
