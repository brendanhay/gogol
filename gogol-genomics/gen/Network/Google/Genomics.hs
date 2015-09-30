{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | Provides access to Genomics data.
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
    , module Genomics.AnnotationSets.Create

    -- ** GenomicsAnnotationSetsDelete
    , module Genomics.AnnotationSets.Delete

    -- ** GenomicsAnnotationSetsGet
    , module Genomics.AnnotationSets.Get

    -- ** GenomicsAnnotationSetsPatch
    , module Genomics.AnnotationSets.Patch

    -- ** GenomicsAnnotationSetsSearch
    , module Genomics.AnnotationSets.Search

    -- ** GenomicsAnnotationSetsUpdate
    , module Genomics.AnnotationSets.Update

    -- ** GenomicsAnnotationsBatchCreate
    , module Genomics.Annotations.BatchCreate

    -- ** GenomicsAnnotationsCreate
    , module Genomics.Annotations.Create

    -- ** GenomicsAnnotationsDelete
    , module Genomics.Annotations.Delete

    -- ** GenomicsAnnotationsGet
    , module Genomics.Annotations.Get

    -- ** GenomicsAnnotationsPatch
    , module Genomics.Annotations.Patch

    -- ** GenomicsAnnotationsSearch
    , module Genomics.Annotations.Search

    -- ** GenomicsAnnotationsUpdate
    , module Genomics.Annotations.Update

    -- ** GenomicsCallsetsCreate
    , module Genomics.Callsets.Create

    -- ** GenomicsCallsetsDelete
    , module Genomics.Callsets.Delete

    -- ** GenomicsCallsetsGet
    , module Genomics.Callsets.Get

    -- ** GenomicsCallsetsPatch
    , module Genomics.Callsets.Patch

    -- ** GenomicsCallsetsSearch
    , module Genomics.Callsets.Search

    -- ** GenomicsCallsetsUpdate
    , module Genomics.Callsets.Update

    -- ** GenomicsDatasetsCreate
    , module Genomics.Datasets.Create

    -- ** GenomicsDatasetsDelete
    , module Genomics.Datasets.Delete

    -- ** GenomicsDatasetsGet
    , module Genomics.Datasets.Get

    -- ** GenomicsDatasetsList
    , module Genomics.Datasets.List

    -- ** GenomicsDatasetsPatch
    , module Genomics.Datasets.Patch

    -- ** GenomicsDatasetsUndelete
    , module Genomics.Datasets.Undelete

    -- ** GenomicsDatasetsUpdate
    , module Genomics.Datasets.Update

    -- ** GenomicsExperimentalJobsCreate
    , module Genomics.Experimental.Jobs.Create

    -- ** GenomicsJobsCancel
    , module Genomics.Jobs.Cancel

    -- ** GenomicsJobsGet
    , module Genomics.Jobs.Get

    -- ** GenomicsJobsSearch
    , module Genomics.Jobs.Search

    -- ** GenomicsReadgroupsetsAlign
    , module Genomics.Readgroupsets.Align

    -- ** GenomicsReadgroupsetsCall
    , module Genomics.Readgroupsets.Call

    -- ** GenomicsReadgroupsetsCoveragebucketsList
    , module Genomics.Readgroupsets.Coveragebuckets.List

    -- ** GenomicsReadgroupsetsDelete
    , module Genomics.Readgroupsets.Delete

    -- ** GenomicsReadgroupsetsExport
    , module Genomics.Readgroupsets.Export

    -- ** GenomicsReadgroupsetsGet
    , module Genomics.Readgroupsets.Get

    -- ** GenomicsReadgroupsetsImport
    , module Genomics.Readgroupsets.Import

    -- ** GenomicsReadgroupsetsPatch
    , module Genomics.Readgroupsets.Patch

    -- ** GenomicsReadgroupsetsSearch
    , module Genomics.Readgroupsets.Search

    -- ** GenomicsReadgroupsetsUpdate
    , module Genomics.Readgroupsets.Update

    -- ** GenomicsReadsSearch
    , module Genomics.Reads.Search

    -- ** GenomicsReferencesBasesList
    , module Genomics.References.Bases.List

    -- ** GenomicsReferencesGet
    , module Genomics.References.Get

    -- ** GenomicsReferencesSearch
    , module Genomics.References.Search

    -- ** GenomicsReferencesetsGet
    , module Genomics.Referencesets.Get

    -- ** GenomicsReferencesetsSearch
    , module Genomics.Referencesets.Search

    -- ** GenomicsVariantsCreate
    , module Genomics.Variants.Create

    -- ** GenomicsVariantsDelete
    , module Genomics.Variants.Delete

    -- ** GenomicsVariantsGet
    , module Genomics.Variants.Get

    -- ** GenomicsVariantsSearch
    , module Genomics.Variants.Search

    -- ** GenomicsVariantsUpdate
    , module Genomics.Variants.Update

    -- ** GenomicsVariantsetsCreate
    , module Genomics.Variantsets.Create

    -- ** GenomicsVariantsetsDelete
    , module Genomics.Variantsets.Delete

    -- ** GenomicsVariantsetsExport
    , module Genomics.Variantsets.Export

    -- ** GenomicsVariantsetsGet
    , module Genomics.Variantsets.Get

    -- ** GenomicsVariantsetsImportVariants
    , module Genomics.Variantsets.ImportVariants

    -- ** GenomicsVariantsetsMergeVariants
    , module Genomics.Variantsets.MergeVariants

    -- ** GenomicsVariantsetsPatch
    , module Genomics.Variantsets.Patch

    -- ** GenomicsVariantsetsSearch
    , module Genomics.Variantsets.Search

    -- ** GenomicsVariantsetsUpdate
    , module Genomics.Variantsets.Update

    -- * Types

    -- ** FastqMetadata
    , FastqMetadata
    , fastqMetadata
    , fmPlatformUnit
    , fmReadGroupName
    , fmLibraryName
    , fmPlatformName
    , fmSampleName

    -- ** KeyValue
    , KeyValue
    , keyValue
    , kvValue
    , kvKey

    -- ** ReadGroupExperiment
    , ReadGroupExperiment
    , readGroupExperiment
    , rgeInstrumentModel
    , rgePlatformUnit
    , rgeSequencingCenter
    , rgeLibraryId

    -- ** ListBasesResponse
    , ListBasesResponse
    , listBasesResponse
    , lbrNextPageToken
    , lbrOffset
    , lbrSequence

    -- ** InterleavedFastqSource
    , InterleavedFastqSource
    , interleavedFastqSource
    , ifsMetadata
    , ifsSourceUris

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

    -- ** BatchAnnotationsResponseEntry
    , BatchAnnotationsResponseEntry
    , batchAnnotationsResponseEntry
    , bareStatus
    , bareAnnotation

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

    -- ** CallReadGroupSetsRequest
    , CallReadGroupSetsRequest
    , callReadGroupSetsRequest
    , crgsrReadGroupSetId
    , crgsrDatasetId
    , crgsrSourceUris

    -- ** Read
    , Read
    , read
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

    -- ** Call
    , Call
    , call
    , cGenotypeLikelihood
    , cCallSetName
    , cPhaseset
    , cCallSetId
    , cGenotype
    , cInfo

    -- ** Dataset
    , Dataset
    , dataset
    , dIsPublic
    , dProjectNumber
    , dName
    , dId
    , dCreateTime

    -- ** TranscriptExon
    , TranscriptExon
    , transcriptExon
    , teStart
    , teEnd
    , teFrame

    -- ** QueryRange
    , QueryRange
    , queryRange
    , qrStart
    , qrReferenceId
    , qrReferenceName
    , qrEnd

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

    -- ** SearchReferencesResponse
    , SearchReferencesResponse
    , searchReferencesResponse
    , srrNextPageToken
    , srrReferences

    -- ** MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants

    -- ** SearchReferenceSetsRequest
    , SearchReferenceSetsRequest
    , searchReferenceSetsRequest
    , srsrMd5checksums
    , srsrAccessions
    , srsrPageToken
    , srsrAssemblyId
    , srsrPageSize

    -- ** BatchCreateAnnotationsRequest
    , BatchCreateAnnotationsRequest
    , batchCreateAnnotationsRequest
    , bcarAnnotations

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

    -- ** BatchAnnotationsResponseEntryStatus
    , BatchAnnotationsResponseEntryStatus
    , batchAnnotationsResponseEntryStatus
    , baresCode
    , baresMessage

    -- ** BatchAnnotationsResponse
    , BatchAnnotationsResponse
    , batchAnnotationsResponse
    , barEntries

    -- ** Reference
    , Reference
    , reference
    , refLength
    , refSourceAccessions
    , refMd5checksum
    , refName
    , refNcbiTaxonId
    , refId
    , refSourceURI

    -- ** SearchReadGroupSetsRequest
    , SearchReadGroupSetsRequest
    , searchReadGroupSetsRequest
    , srgsrDatasetIds
    , srgsrName
    , srgsrPageToken
    , srgsrPageSize

    -- ** SearchJobsRequest
    , SearchJobsRequest
    , searchJobsRequest
    , sjrCreatedAfter
    , sjrStatus
    , sjrProjectNumber
    , sjrPageToken
    , sjrPageSize
    , sjrCreatedBefore

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

    -- ** SearchCallSetsResponse
    , SearchCallSetsResponse
    , searchCallSetsResponse
    , scsrNextPageToken
    , scsrCallSets

    -- ** JobRequest
    , JobRequest
    , jobRequest
    , jrDestination
    , jrSource
    , jrType

    -- ** ExperimentalCreateJobRequest
    , ExperimentalCreateJobRequest
    , experimentalCreateJobRequest
    , ecjrGcsOutputPath
    , ecjrProjectNumber
    , ecjrAlign
    , ecjrSourceUris
    , ecjrPairedSourceUris
    , ecjrCallVariants

    -- ** ReadGroupProgram
    , ReadGroupProgram
    , readGroupProgram
    , rgpPrevProgramId
    , rgpName
    , rgpVersion
    , rgpId
    , rgpCommandLine

    -- ** SearchAnnotationsResponse
    , SearchAnnotationsResponse
    , searchAnnotationsResponse
    , sarAnnotations
    , sarNextPageToken

    -- ** SearchVariantSetsRequest
    , SearchVariantSetsRequest
    , searchVariantSetsRequest
    , svsrDatasetIds
    , svsrPageToken
    , svsrPageSize

    -- ** SearchAnnotationSetsRequest
    , SearchAnnotationSetsRequest
    , searchAnnotationSetsRequest
    , sasrReferenceSetId
    , sasrTypes
    , sasrDatasetIds
    , sasrName
    , sasrPageToken
    , sasrPageSize

    -- ** SearchVariantsResponse
    , SearchVariantsResponse
    , searchVariantsResponse
    , svrVariants
    , svrNextPageToken

    -- ** ExportReadGroupSetsRequest
    , ExportReadGroupSetsRequest
    , exportReadGroupSetsRequest
    , ergsrReferenceNames
    , ergsrProjectNumber
    , ergsrExportUri
    , ergsrReadGroupSetIds

    -- ** Int32Value
    , Int32Value
    , int32Value
    , ivValue

    -- ** SearchReadsResponse
    , SearchReadsResponse
    , searchReadsResponse
    , sNextPageToken
    , sAlignments

    -- ** SearchCallSetsRequest
    , SearchCallSetsRequest
    , searchCallSetsRequest
    , scsrName
    , scsrPageToken
    , scsrVariantSetIds
    , scsrPageSize

    -- ** ExperimentalCreateJobResponse
    , ExperimentalCreateJobResponse
    , experimentalCreateJobResponse
    , ecjrJobId

    -- ** Range
    , Range
    , range
    , rStart
    , rReferenceName
    , rEnd

    -- ** Job
    , Job
    , job
    , jobDetailedStatus
    , jobStatus
    , jobCreated
    , jobProjectNumber
    , jobWarnings
    , jobImportedIds
    , jobId
    , jobErrors
    , jobRequest

    -- ** SearchReferenceSetsResponse
    , SearchReferenceSetsResponse
    , searchReferenceSetsResponse
    , srsrNextPageToken
    , srsrReferenceSets

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

    -- ** PairedFastqSource
    , PairedFastqSource
    , pairedFastqSource
    , pfsFirstSourceUris
    , pfsMetadata
    , pfsSecondSourceUris

    -- ** SearchReferencesRequest
    , SearchReferencesRequest
    , searchReferencesRequest
    , sReferenceSetId
    , sMd5checksums
    , sAccessions
    , sPageToken
    , sPageSize

    -- ** ImportReadGroupSetsResponse
    , ImportReadGroupSetsResponse
    , importReadGroupSetsResponse
    , irgsrJobId

    -- ** ExportVariantSetResponse
    , ExportVariantSetResponse
    , exportVariantSetResponse
    , evsrJobId

    -- ** ImportVariantsResponse
    , ImportVariantsResponse
    , importVariantsResponse
    , ivrJobId

    -- ** LinearAlignment
    , LinearAlignment
    , linearAlignment
    , laCigar
    , laMappingQuality
    , laPosition

    -- ** AlignReadGroupSetsResponse
    , AlignReadGroupSetsResponse
    , alignReadGroupSetsResponse
    , argsrJobId

    -- ** ListCoverageBucketsResponse
    , ListCoverageBucketsResponse
    , listCoverageBucketsResponse
    , lcbrNextPageToken
    , lcbrBucketWidth
    , lcbrCoverageBuckets

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
    , asSourceUri
    , asInfo

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

    -- ** VariantSet
    , VariantSet
    , variantSet
    , vsDatasetId
    , vsReferenceBounds
    , vsMetadata
    , vsId

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
    , argsrBamSourceUris
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

    -- ** ImportVariantsRequest
    , ImportVariantsRequest
    , importVariantsRequest
    , ivrFormat
    , ivrNormalizeReferenceNames
    , ivrSourceUris

    -- ** ExternalId
    , ExternalId
    , externalId
    , eiSourceName
    , eiId

    -- ** ImportReadGroupSetsRequest
    , ImportReadGroupSetsRequest
    , importReadGroupSetsRequest
    , irgsrReferenceSetId
    , irgsrDatasetId
    , irgsrSourceUris
    , irgsrPartitionStrategy

    -- ** ListDatasetsResponse
    , ListDatasetsResponse
    , listDatasetsResponse
    , ldrNextPageToken
    , ldrDatasets

    -- ** VariantAnnotationCondition
    , VariantAnnotationCondition
    , variantAnnotationCondition
    , vacExternalIds
    , vacNames
    , vacConceptId
    , vacOmimId

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

    -- ** SearchAnnotationsRequest
    , SearchAnnotationsRequest
    , searchAnnotationsRequest
    , sarRange
    , sarPageToken
    , sarAnnotationSetIds
    , sarPageSize

    -- ** ExportReadGroupSetsResponse
    , ExportReadGroupSetsResponse
    , exportReadGroupSetsResponse
    , ergsrJobId

    -- ** SearchAnnotationSetsResponse
    , SearchAnnotationSetsResponse
    , searchAnnotationSetsResponse
    , sasrNextPageToken
    , sasrAnnotationSets

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

    -- ** SearchReadGroupSetsResponse
    , SearchReadGroupSetsResponse
    , searchReadGroupSetsResponse
    , srgsrNextPageToken
    , srgsrReadGroupSets

    -- ** SearchJobsResponse
    , SearchJobsResponse
    , searchJobsResponse
    , sjrNextPageToken
    , sjrJobs

    -- ** TranscriptCodingSequence
    , TranscriptCodingSequence
    , transcriptCodingSequence
    , tcsStart
    , tcsEnd

    -- ** Position
    , Position
    , position
    , pReverseStrand
    , pReferenceName
    , pPosition

    -- ** ReferenceBound
    , ReferenceBound
    , referenceBound
    , rbUpperBound
    , rbReferenceName

    -- ** ReferenceSet
    , ReferenceSet
    , referenceSet
    , rsSourceAccessions
    , rsReferenceIds
    , rsMd5checksum
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
     Annotations :<|> Variants :<|> References :<|>
       Variantsets
       :<|> AnnotationSets
       :<|> Experimental
       :<|> Jobs
       :<|> Readgroupsets
       :<|> Referencesets
       :<|> Callsets
       :<|> Reads
       :<|> Datasets

genomicsAPI :: Proxy GenomicsAPI
genomicsAPI = Proxy
