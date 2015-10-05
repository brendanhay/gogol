{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Genomics
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Provides access to Genomics data.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference>
module Network.Google.Genomics
    (
    -- * API
      GenomicsAPI
    , genomicsAPI
    , genomicsURL

    -- * Service Methods

    -- * REST Resources

    -- ** GenomicsAnnotationSetsCreate
    , module Network.Google.Resource.Genomics.AnnotationSets.Create

    -- ** GenomicsAnnotationSetsDelete
    , module Network.Google.Resource.Genomics.AnnotationSets.Delete

    -- ** GenomicsAnnotationSetsGet
    , module Network.Google.Resource.Genomics.AnnotationSets.Get

    -- ** GenomicsAnnotationSetsPatch
    , module Network.Google.Resource.Genomics.AnnotationSets.Patch

    -- ** GenomicsAnnotationSetsSearch
    , module Network.Google.Resource.Genomics.AnnotationSets.Search

    -- ** GenomicsAnnotationSetsUpdate
    , module Network.Google.Resource.Genomics.AnnotationSets.Update

    -- ** GenomicsAnnotationsBatchCreate
    , module Network.Google.Resource.Genomics.Annotations.BatchCreate

    -- ** GenomicsAnnotationsCreate
    , module Network.Google.Resource.Genomics.Annotations.Create

    -- ** GenomicsAnnotationsDelete
    , module Network.Google.Resource.Genomics.Annotations.Delete

    -- ** GenomicsAnnotationsGet
    , module Network.Google.Resource.Genomics.Annotations.Get

    -- ** GenomicsAnnotationsPatch
    , module Network.Google.Resource.Genomics.Annotations.Patch

    -- ** GenomicsAnnotationsSearch
    , module Network.Google.Resource.Genomics.Annotations.Search

    -- ** GenomicsAnnotationsUpdate
    , module Network.Google.Resource.Genomics.Annotations.Update

    -- ** GenomicsCallsetsCreate
    , module Network.Google.Resource.Genomics.Callsets.Create

    -- ** GenomicsCallsetsDelete
    , module Network.Google.Resource.Genomics.Callsets.Delete

    -- ** GenomicsCallsetsGet
    , module Network.Google.Resource.Genomics.Callsets.Get

    -- ** GenomicsCallsetsPatch
    , module Network.Google.Resource.Genomics.Callsets.Patch

    -- ** GenomicsCallsetsSearch
    , module Network.Google.Resource.Genomics.Callsets.Search

    -- ** GenomicsCallsetsUpdate
    , module Network.Google.Resource.Genomics.Callsets.Update

    -- ** GenomicsDatasetsCreate
    , module Network.Google.Resource.Genomics.Datasets.Create

    -- ** GenomicsDatasetsDelete
    , module Network.Google.Resource.Genomics.Datasets.Delete

    -- ** GenomicsDatasetsGet
    , module Network.Google.Resource.Genomics.Datasets.Get

    -- ** GenomicsDatasetsList
    , module Network.Google.Resource.Genomics.Datasets.List

    -- ** GenomicsDatasetsPatch
    , module Network.Google.Resource.Genomics.Datasets.Patch

    -- ** GenomicsDatasetsUndelete
    , module Network.Google.Resource.Genomics.Datasets.Undelete

    -- ** GenomicsDatasetsUpdate
    , module Network.Google.Resource.Genomics.Datasets.Update

    -- ** GenomicsExperimentalJobsCreate
    , module Network.Google.Resource.Genomics.Experimental.Jobs.Create

    -- ** GenomicsJobsCancel
    , module Network.Google.Resource.Genomics.Jobs.Cancel

    -- ** GenomicsJobsGet
    , module Network.Google.Resource.Genomics.Jobs.Get

    -- ** GenomicsJobsSearch
    , module Network.Google.Resource.Genomics.Jobs.Search

    -- ** GenomicsReadgroupsetsAlign
    , module Network.Google.Resource.Genomics.Readgroupsets.Align

    -- ** GenomicsReadgroupsetsCall
    , module Network.Google.Resource.Genomics.Readgroupsets.Call

    -- ** GenomicsReadgroupsetsCoveragebucketsList
    , module Network.Google.Resource.Genomics.Readgroupsets.Coveragebuckets.List

    -- ** GenomicsReadgroupsetsDelete
    , module Network.Google.Resource.Genomics.Readgroupsets.Delete

    -- ** GenomicsReadgroupsetsExport
    , module Network.Google.Resource.Genomics.Readgroupsets.Export

    -- ** GenomicsReadgroupsetsGet
    , module Network.Google.Resource.Genomics.Readgroupsets.Get

    -- ** GenomicsReadgroupsetsImport
    , module Network.Google.Resource.Genomics.Readgroupsets.Import

    -- ** GenomicsReadgroupsetsPatch
    , module Network.Google.Resource.Genomics.Readgroupsets.Patch

    -- ** GenomicsReadgroupsetsSearch
    , module Network.Google.Resource.Genomics.Readgroupsets.Search

    -- ** GenomicsReadgroupsetsUpdate
    , module Network.Google.Resource.Genomics.Readgroupsets.Update

    -- ** GenomicsReadsSearch
    , module Network.Google.Resource.Genomics.Reads.Search

    -- ** GenomicsReferencesBasesList
    , module Network.Google.Resource.Genomics.References.Bases.List

    -- ** GenomicsReferencesGet
    , module Network.Google.Resource.Genomics.References.Get

    -- ** GenomicsReferencesSearch
    , module Network.Google.Resource.Genomics.References.Search

    -- ** GenomicsReferencesetsGet
    , module Network.Google.Resource.Genomics.Referencesets.Get

    -- ** GenomicsReferencesetsSearch
    , module Network.Google.Resource.Genomics.Referencesets.Search

    -- ** GenomicsVariantsCreate
    , module Network.Google.Resource.Genomics.Variants.Create

    -- ** GenomicsVariantsDelete
    , module Network.Google.Resource.Genomics.Variants.Delete

    -- ** GenomicsVariantsGet
    , module Network.Google.Resource.Genomics.Variants.Get

    -- ** GenomicsVariantsSearch
    , module Network.Google.Resource.Genomics.Variants.Search

    -- ** GenomicsVariantsUpdate
    , module Network.Google.Resource.Genomics.Variants.Update

    -- ** GenomicsVariantsetsCreate
    , module Network.Google.Resource.Genomics.Variantsets.Create

    -- ** GenomicsVariantsetsDelete
    , module Network.Google.Resource.Genomics.Variantsets.Delete

    -- ** GenomicsVariantsetsExport
    , module Network.Google.Resource.Genomics.Variantsets.Export

    -- ** GenomicsVariantsetsGet
    , module Network.Google.Resource.Genomics.Variantsets.Get

    -- ** GenomicsVariantsetsImportVariants
    , module Network.Google.Resource.Genomics.Variantsets.ImportVariants

    -- ** GenomicsVariantsetsMergeVariants
    , module Network.Google.Resource.Genomics.Variantsets.MergeVariants

    -- ** GenomicsVariantsetsPatch
    , module Network.Google.Resource.Genomics.Variantsets.Patch

    -- ** GenomicsVariantsetsSearch
    , module Network.Google.Resource.Genomics.Variantsets.Search

    -- ** GenomicsVariantsetsUpdate
    , module Network.Google.Resource.Genomics.Variantsets.Update

    -- * Types

    -- ** FastqMetadata
    , FastqMetadata
    , fastqMetadata
    , fmPlatformUnit
    , fmReadGroupName
    , fmLibraryName
    , fmPlatformName
    , fmSampleName

    -- ** CallInfo
    , CallInfo
    , callInfo

    -- ** ReadInfo
    , ReadInfo
    , readInfo

    -- ** ReadGroupExperiment
    , ReadGroupExperiment
    , readGroupExperiment
    , rgeInstrumentModel
    , rgePlatformUnit
    , rgeSequencingCenter
    , rgeLibraryId

    -- ** KeyValue
    , KeyValue
    , keyValue
    , kvValue
    , kvKey

    -- ** SearchAnnotationSetsRequestTypesItem
    , SearchAnnotationSetsRequestTypesItem (..)

    -- ** VariantAnnotationEffect
    , VariantAnnotationEffect (..)

    -- ** Variant
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

    -- ** Annotation
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

    -- ** InterleavedFastqSource
    , InterleavedFastqSource
    , interleavedFastqSource
    , ifsMetadata
    , ifsSourceURIs

    -- ** CallReadGroupSetsRequest
    , CallReadGroupSetsRequest
    , callReadGroupSetsRequest
    , crgsrReadGroupSetId
    , crgsrDatasetId
    , crgsrSourceURIs

    -- ** BatchAnnotationsResponseEntry
    , BatchAnnotationsResponseEntry
    , batchAnnotationsResponseEntry
    , bareStatus
    , bareAnnotation

    -- ** ListBasesResponse
    , ListBasesResponse
    , listBasesResponse
    , lbrNextPageToken
    , lbrOffset
    , lbrSequence

    -- ** Dataset
    , Dataset
    , dataset
    , dIsPublic
    , dProjectNumber
    , dName
    , dId
    , dCreateTime

    -- ** Read'
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

    -- ** TranscriptExon
    , TranscriptExon
    , transcriptExon
    , teStart
    , teEnd
    , teFrame

    -- ** Call
    , Call
    , call
    , cGenotypeLikelihood
    , cCallSetName
    , cPhaseset
    , cCallSetId
    , cGenotype
    , cInfo

    -- ** QueryRange
    , QueryRange
    , queryRange
    , qrStart
    , qrReferenceId
    , qrReferenceName
    , qrEnd

    -- ** BatchCreateAnnotationsRequest
    , BatchCreateAnnotationsRequest
    , batchCreateAnnotationsRequest
    , bcarAnnotations

    -- ** MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants

    -- ** ReadGroup
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

    -- ** MetadataType
    , MetadataType (..)

    -- ** SearchReferenceSetsRequest
    , SearchReferenceSetsRequest
    , searchReferenceSetsRequest
    , srsrMD5checksums
    , srsrAccessions
    , srsrPageToken
    , srsrAssemblyId
    , srsrPageSize

    -- ** AnnotationSetType
    , AnnotationSetType (..)

    -- ** SearchReferencesResponse
    , SearchReferencesResponse
    , searchReferencesResponse
    , srrNextPageToken
    , srrReferences

    -- ** CallSet
    , CallSet
    , callSet
    , csCreated
    , csName
    , csId
    , csSampleId
    , csVariantSetIds
    , csInfo

    -- ** CoverageBucket
    , CoverageBucket
    , coverageBucket
    , cbRange
    , cbMeanCoverage

    -- ** VariantAnnotation
    , VariantAnnotation
    , variantAnnotation
    , vaEffect
    , vaClinicalSignificance
    , vaAlternateBases
    , vaGeneId
    , vaConditions
    , vaType
    , vaTranscriptIds

    -- ** VariantAnnotationClinicalSignificance
    , VariantAnnotationClinicalSignificance (..)

    -- ** SearchReadGroupSetsRequest
    , SearchReadGroupSetsRequest
    , searchReadGroupSetsRequest
    , srgsrDatasetIds
    , srgsrName
    , srgsrPageToken
    , srgsrPageSize

    -- ** BatchAnnotationsResponseEntryStatus
    , BatchAnnotationsResponseEntryStatus
    , batchAnnotationsResponseEntryStatus
    , baresCode
    , baresMessage

    -- ** Reference
    , Reference
    , reference
    , refLength
    , refSourceAccessions
    , refMD5checksum
    , refName
    , refNcbiTaxonId
    , refId
    , refSourceURI

    -- ** BatchAnnotationsResponse
    , BatchAnnotationsResponse
    , batchAnnotationsResponse
    , barEntries

    -- ** ReadGroupInfo
    , ReadGroupInfo
    , readGroupInfo

    -- ** SearchJobsRequest
    , SearchJobsRequest
    , searchJobsRequest
    , sjrCreatedAfter
    , sjrStatus
    , sjrProjectNumber
    , sjrPageToken
    , sjrPageSize
    , sjrCreatedBefore

    -- ** SearchCallSetsResponse
    , SearchCallSetsResponse
    , searchCallSetsResponse
    , scsrNextPageToken
    , scsrCallSets

    -- ** ExperimentalCreateJobRequest
    , ExperimentalCreateJobRequest
    , experimentalCreateJobRequest
    , ecjrGcsOutputPath
    , ecjrProjectNumber
    , ecjrAlign
    , ecjrSourceURIs
    , ecjrPairedSourceURIs
    , ecjrCallVariants

    -- ** JobRequest
    , JobRequest
    , jobRequest
    , jrDestination
    , jrSource
    , jrType

    -- ** SearchReadsRequest
    , SearchReadsRequest
    , searchReadsRequest
    , srrStart
    , srrReadGroupIds
    , srrReferenceName
    , srrEnd
    , srrPageToken
    , srrPageSize
    , srrReadGroupSetIds

    -- ** VariantInfo
    , VariantInfo
    , variantInfo

    -- ** SearchVariantSetsRequest
    , SearchVariantSetsRequest
    , searchVariantSetsRequest
    , svsrDatasetIds
    , svsrPageToken
    , svsrPageSize

    -- ** ReadGroupProgram
    , ReadGroupProgram
    , readGroupProgram
    , rgpPrevProgramId
    , rgpName
    , rgpVersion
    , rgpId
    , rgpCommandLine

    -- ** Int32Value
    , Int32Value
    , int32Value
    , ivValue

    -- ** AnnotationInfo
    , AnnotationInfo
    , annotationInfo

    -- ** ExportReadGroupSetsRequest
    , ExportReadGroupSetsRequest
    , exportReadGroupSetsRequest
    , ergsrReferenceNames
    , ergsrProjectNumber
    , ergsrExportURI
    , ergsrReadGroupSetIds

    -- ** SearchAnnotationsResponse
    , SearchAnnotationsResponse
    , searchAnnotationsResponse
    , sarAnnotations
    , sarNextPageToken

    -- ** SearchAnnotationSetsRequest
    , SearchAnnotationSetsRequest
    , searchAnnotationSetsRequest
    , sasrReferenceSetId
    , sasrTypes
    , sasrDatasetIds
    , sasrName
    , sasrPageToken
    , sasrPageSize

    -- ** ImportReadGroupSetsRequestPartitionStrategy
    , ImportReadGroupSetsRequestPartitionStrategy (..)

    -- ** SearchVariantsResponse
    , SearchVariantsResponse
    , searchVariantsResponse
    , svrVariants
    , svrNextPageToken

    -- ** ExperimentalCreateJobResponse
    , ExperimentalCreateJobResponse
    , experimentalCreateJobResponse
    , ecjrJobId

    -- ** SearchCallSetsRequest
    , SearchCallSetsRequest
    , searchCallSetsRequest
    , scsrName
    , scsrPageToken
    , scsrVariantSetIds
    , scsrPageSize

    -- ** SearchReadsResponse
    , SearchReadsResponse
    , searchReadsResponse
    , sNextPageToken
    , sAlignments

    -- ** PairedFastqSource
    , PairedFastqSource
    , pairedFastqSource
    , pfsFirstSourceURIs
    , pfsMetadata
    , pfsSecondSourceURIs

    -- ** SearchReferencesRequest
    , SearchReferencesRequest
    , searchReferencesRequest
    , sReferenceSetId
    , sMD5checksums
    , sAccessions
    , sPageToken
    , sPageSize

    -- ** AnnotationType
    , AnnotationType (..)

    -- ** SearchReferenceSetsResponse
    , SearchReferenceSetsResponse
    , searchReferenceSetsResponse
    , srsrNextPageToken
    , srsrReferenceSets

    -- ** Range
    , Range
    , range
    , rStart
    , rReferenceName
    , rEnd

    -- ** ReadGroupSet
    , ReadGroupSet
    , readGroupSet
    , rgsReferenceSetId
    , rgsName
    , rgsDatasetId
    , rgsId
    , rgsInfo
    , rgsReadGroups
    , rgsFilename

    -- ** Job
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

    -- ** ExportVariantSetResponse
    , ExportVariantSetResponse
    , exportVariantSetResponse
    , evsrJobId

    -- ** AlignReadGroupSetsResponse
    , AlignReadGroupSetsResponse
    , alignReadGroupSetsResponse
    , argsrJobId

    -- ** SearchJobsRequestStatusItem
    , SearchJobsRequestStatusItem (..)

    -- ** ImportVariantsResponse
    , ImportVariantsResponse
    , importVariantsResponse
    , ivrJobId

    -- ** ListCoverageBucketsResponse
    , ListCoverageBucketsResponse
    , listCoverageBucketsResponse
    , lcbrNextPageToken
    , lcbrBucketWidth
    , lcbrCoverageBuckets

    -- ** ImportReadGroupSetsResponse
    , ImportReadGroupSetsResponse
    , importReadGroupSetsResponse
    , irgsrJobId

    -- ** LinearAlignment
    , LinearAlignment
    , linearAlignment
    , laCigar
    , laMAppingQuality
    , laPosition

    -- ** Metadata
    , Metadata
    , metadata
    , mValue
    , mKey
    , mId
    , mType
    , mNumber
    , mDescription
    , mInfo

    -- ** CallReadGroupSetsResponse
    , CallReadGroupSetsResponse
    , callReadGroupSetsResponse
    , crgsrJobId

    -- ** AnnotationSet
    , AnnotationSet
    , annotationSet
    , asReferenceSetId
    , asName
    , asDatasetId
    , asId
    , asType
    , asSourceURI
    , asInfo

    -- ** VariantSet
    , VariantSet
    , variantSet
    , vsDatasetId
    , vsReferenceBounds
    , vsMetadata
    , vsId

    -- ** CigarUnitOperation
    , CigarUnitOperation (..)

    -- ** ListDatasetsResponse
    , ListDatasetsResponse
    , listDatasetsResponse
    , ldrNextPageToken
    , ldrDatasets

    -- ** ImportReadGroupSetsRequest
    , ImportReadGroupSetsRequest
    , importReadGroupSetsRequest
    , irgsrReferenceSetId
    , irgsrDatasetId
    , irgsrSourceURIs
    , irgsrPartitionStrategy

    -- ** ImportVariantsRequest
    , ImportVariantsRequest
    , importVariantsRequest
    , ivrFormat
    , ivrNormalizeReferenceNames
    , ivrSourceURIs

    -- ** ExternalId
    , ExternalId
    , externalId
    , eiSourceName
    , eiId

    -- ** CigarUnit
    , CigarUnit
    , cigarUnit
    , cuOperation
    , cuOperationLength
    , cuReferenceSequence

    -- ** AlignReadGroupSetsRequest
    , AlignReadGroupSetsRequest
    , alignReadGroupSetsRequest
    , argsrInterleavedFastqSource
    , argsrReadGroupSetId
    , argsrBamSourceURIs
    , argsrPairedFastqSource
    , argsrDatasetId

    -- ** ExportVariantSetRequest
    , ExportVariantSetRequest
    , exportVariantSetRequest
    , evsrBigqueryDataset
    , evsrBigqueryTable
    , evsrFormat
    , evsrProjectNumber
    , evsrCallSetIds

    -- ** VariantAnnotationType
    , VariantAnnotationType (..)

    -- ** ExportReadGroupSetsResponse
    , ExportReadGroupSetsResponse
    , exportReadGroupSetsResponse
    , ergsrJobId

    -- ** JobStatus
    , JobStatus (..)

    -- ** ImportVariantsRequestFormat
    , ImportVariantsRequestFormat (..)

    -- ** SearchAnnotationsRequest
    , SearchAnnotationsRequest
    , searchAnnotationsRequest
    , sarRange
    , sarPageToken
    , sarAnnotationSetIds
    , sarPageSize

    -- ** MetadataInfo
    , MetadataInfo
    , metadataInfo

    -- ** SearchVariantSetsResponse
    , SearchVariantSetsResponse
    , searchVariantSetsResponse
    , svsrNextPageToken
    , svsrVariantSets

    -- ** SearchVariantsRequest
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

    -- ** ExportVariantSetRequestFormat
    , ExportVariantSetRequestFormat (..)

    -- ** AnnotationSetInfo
    , AnnotationSetInfo
    , annotationSetInfo

    -- ** VariantAnnotationCondition
    , VariantAnnotationCondition
    , variantAnnotationCondition
    , vacExternalIds
    , vacNames
    , vacConceptId
    , vacOmimId

    -- ** SearchAnnotationSetsResponse
    , SearchAnnotationSetsResponse
    , searchAnnotationSetsResponse
    , sasrNextPageToken
    , sasrAnnotationSets

    -- ** CallSetInfo
    , CallSetInfo
    , callSetInfo

    -- ** JobRequestType
    , JobRequestType (..)

    -- ** RangePosition
    , RangePosition
    , rangePosition
    , rpStart
    , rpReverseStrand
    , rpReferenceId
    , rpReferenceName
    , rpEnd

    -- ** Transcript
    , Transcript
    , transcript
    , tGeneId
    , tCodingSequence
    , tExons

    -- ** TranscriptCodingSequence
    , TranscriptCodingSequence
    , transcriptCodingSequence
    , tcsStart
    , tcsEnd

    -- ** SearchJobsResponse
    , SearchJobsResponse
    , searchJobsResponse
    , sjrNextPageToken
    , sjrJobs

    -- ** ReferenceBound
    , ReferenceBound
    , referenceBound
    , rbUpperBound
    , rbReferenceName

    -- ** Position
    , Position
    , position
    , pReverseStrand
    , pReferenceName
    , pPosition

    -- ** SearchReadGroupSetsResponse
    , SearchReadGroupSetsResponse
    , searchReadGroupSetsResponse
    , srgsrNextPageToken
    , srgsrReadGroupSets

    -- ** ReadGroupSetInfo
    , ReadGroupSetInfo
    , readGroupSetInfo

    -- ** ReferenceSet
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

import           Network.Google.Genomics.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Genomics.Annotations.BatchCreate
import           Network.Google.Resource.Genomics.Annotations.Create
import           Network.Google.Resource.Genomics.Annotations.Delete
import           Network.Google.Resource.Genomics.Annotations.Get
import           Network.Google.Resource.Genomics.Annotations.Patch
import           Network.Google.Resource.Genomics.Annotations.Search
import           Network.Google.Resource.Genomics.Annotations.Update
import           Network.Google.Resource.Genomics.AnnotationSets.Create
import           Network.Google.Resource.Genomics.AnnotationSets.Delete
import           Network.Google.Resource.Genomics.AnnotationSets.Get
import           Network.Google.Resource.Genomics.AnnotationSets.Patch
import           Network.Google.Resource.Genomics.AnnotationSets.Search
import           Network.Google.Resource.Genomics.AnnotationSets.Update
import           Network.Google.Resource.Genomics.Callsets.Create
import           Network.Google.Resource.Genomics.Callsets.Delete
import           Network.Google.Resource.Genomics.Callsets.Get
import           Network.Google.Resource.Genomics.Callsets.Patch
import           Network.Google.Resource.Genomics.Callsets.Search
import           Network.Google.Resource.Genomics.Callsets.Update
import           Network.Google.Resource.Genomics.Datasets.Create
import           Network.Google.Resource.Genomics.Datasets.Delete
import           Network.Google.Resource.Genomics.Datasets.Get
import           Network.Google.Resource.Genomics.Datasets.List
import           Network.Google.Resource.Genomics.Datasets.Patch
import           Network.Google.Resource.Genomics.Datasets.Undelete
import           Network.Google.Resource.Genomics.Datasets.Update
import           Network.Google.Resource.Genomics.Experimental.Jobs.Create
import           Network.Google.Resource.Genomics.Jobs.Cancel
import           Network.Google.Resource.Genomics.Jobs.Get
import           Network.Google.Resource.Genomics.Jobs.Search
import           Network.Google.Resource.Genomics.Readgroupsets.Align
import           Network.Google.Resource.Genomics.Readgroupsets.Call
import           Network.Google.Resource.Genomics.Readgroupsets.Coveragebuckets.List
import           Network.Google.Resource.Genomics.Readgroupsets.Delete
import           Network.Google.Resource.Genomics.Readgroupsets.Export
import           Network.Google.Resource.Genomics.Readgroupsets.Get
import           Network.Google.Resource.Genomics.Readgroupsets.Import
import           Network.Google.Resource.Genomics.Readgroupsets.Patch
import           Network.Google.Resource.Genomics.Readgroupsets.Search
import           Network.Google.Resource.Genomics.Readgroupsets.Update
import           Network.Google.Resource.Genomics.Reads.Search
import           Network.Google.Resource.Genomics.References.Bases.List
import           Network.Google.Resource.Genomics.References.Get
import           Network.Google.Resource.Genomics.References.Search
import           Network.Google.Resource.Genomics.Referencesets.Get
import           Network.Google.Resource.Genomics.Referencesets.Search
import           Network.Google.Resource.Genomics.Variants.Create
import           Network.Google.Resource.Genomics.Variants.Delete
import           Network.Google.Resource.Genomics.Variants.Get
import           Network.Google.Resource.Genomics.Variants.Search
import           Network.Google.Resource.Genomics.Variants.Update
import           Network.Google.Resource.Genomics.Variantsets.Create
import           Network.Google.Resource.Genomics.Variantsets.Delete
import           Network.Google.Resource.Genomics.Variantsets.Export
import           Network.Google.Resource.Genomics.Variantsets.Get
import           Network.Google.Resource.Genomics.Variantsets.ImportVariants
import           Network.Google.Resource.Genomics.Variantsets.MergeVariants
import           Network.Google.Resource.Genomics.Variantsets.Patch
import           Network.Google.Resource.Genomics.Variantsets.Search
import           Network.Google.Resource.Genomics.Variantsets.Update

{- $resources
TODO
-}

type GenomicsAPI =
     AnnotationsPatchResource :<|> AnnotationsGetResource
       :<|> AnnotationsCreateResource
       :<|> AnnotationsBatchCreateResource
       :<|> AnnotationsSearchResource
       :<|> AnnotationsDeleteResource
       :<|> AnnotationsUpdateResource
       :<|> VariantsGetResource
       :<|> VariantsCreateResource
       :<|> VariantsSearchResource
       :<|> VariantsDeleteResource
       :<|> VariantsUpdateResource
       :<|> ReferencesBasesListResource
       :<|> ReferencesGetResource
       :<|> ReferencesSearchResource
       :<|> VariantsetsExportResource
       :<|> VariantsetsPatchResource
       :<|> VariantsetsGetResource
       :<|> VariantsetsMergeVariantsResource
       :<|> VariantsetsCreateResource
       :<|> VariantsetsSearchResource
       :<|> VariantsetsDeleteResource
       :<|> VariantsetsUpdateResource
       :<|> VariantsetsImportVariantsResource
       :<|> AnnotationSetsPatchResource
       :<|> AnnotationSetsGetResource
       :<|> AnnotationSetsCreateResource
       :<|> AnnotationSetsSearchResource
       :<|> AnnotationSetsDeleteResource
       :<|> AnnotationSetsUpdateResource
       :<|> ExperimentalJobsCreateResource
       :<|> JobsGetResource
       :<|> JobsCancelResource
       :<|> JobsSearchResource
       :<|> ReadgroupsetsCoveragebucketsListResource
       :<|> ReadgroupsetsExportResource
       :<|> ReadgroupsetsCallResource
       :<|> ReadgroupsetsPatchResource
       :<|> ReadgroupsetsGetResource
       :<|> ReadgroupsetsImportResource
       :<|> ReadgroupsetsAlignResource
       :<|> ReadgroupsetsSearchResource
       :<|> ReadgroupsetsDeleteResource
       :<|> ReadgroupsetsUpdateResource
       :<|> ReferencesetsGetResource
       :<|> ReferencesetsSearchResource
       :<|> CallsetsPatchResource
       :<|> CallsetsGetResource
       :<|> CallsetsCreateResource
       :<|> CallsetsSearchResource
       :<|> CallsetsDeleteResource
       :<|> CallsetsUpdateResource
       :<|> ReadsSearchResource
       :<|> DatasetsListResource
       :<|> DatasetsUndeleteResource
       :<|> DatasetsPatchResource
       :<|> DatasetsGetResource
       :<|> DatasetsCreateResource
       :<|> DatasetsDeleteResource
       :<|> DatasetsUpdateResource

genomicsAPI :: Proxy GenomicsAPI
genomicsAPI = Proxy
