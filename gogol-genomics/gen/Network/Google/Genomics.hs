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
    -- * REST Resources

    -- ** Genomics API
      Genomics
    , genomics
    , genomicsURL

    -- ** genomics.annotationSets.create
    , module Network.Google.API.Genomics.AnnotationSets.Create

    -- ** genomics.annotationSets.delete
    , module Network.Google.API.Genomics.AnnotationSets.Delete

    -- ** genomics.annotationSets.get
    , module Network.Google.API.Genomics.AnnotationSets.Get

    -- ** genomics.annotationSets.patch
    , module Network.Google.API.Genomics.AnnotationSets.Patch

    -- ** genomics.annotationSets.search
    , module Network.Google.API.Genomics.AnnotationSets.Search

    -- ** genomics.annotationSets.update
    , module Network.Google.API.Genomics.AnnotationSets.Update

    -- ** genomics.annotations.batchCreate
    , module Network.Google.API.Genomics.Annotations.BatchCreate

    -- ** genomics.annotations.create
    , module Network.Google.API.Genomics.Annotations.Create

    -- ** genomics.annotations.delete
    , module Network.Google.API.Genomics.Annotations.Delete

    -- ** genomics.annotations.get
    , module Network.Google.API.Genomics.Annotations.Get

    -- ** genomics.annotations.patch
    , module Network.Google.API.Genomics.Annotations.Patch

    -- ** genomics.annotations.search
    , module Network.Google.API.Genomics.Annotations.Search

    -- ** genomics.annotations.update
    , module Network.Google.API.Genomics.Annotations.Update

    -- ** genomics.callsets.create
    , module Network.Google.API.Genomics.Callsets.Create

    -- ** genomics.callsets.delete
    , module Network.Google.API.Genomics.Callsets.Delete

    -- ** genomics.callsets.get
    , module Network.Google.API.Genomics.Callsets.Get

    -- ** genomics.callsets.patch
    , module Network.Google.API.Genomics.Callsets.Patch

    -- ** genomics.callsets.search
    , module Network.Google.API.Genomics.Callsets.Search

    -- ** genomics.callsets.update
    , module Network.Google.API.Genomics.Callsets.Update

    -- ** genomics.datasets.create
    , module Network.Google.API.Genomics.Datasets.Create

    -- ** genomics.datasets.delete
    , module Network.Google.API.Genomics.Datasets.Delete

    -- ** genomics.datasets.get
    , module Network.Google.API.Genomics.Datasets.Get

    -- ** genomics.datasets.list
    , module Network.Google.API.Genomics.Datasets.List

    -- ** genomics.datasets.patch
    , module Network.Google.API.Genomics.Datasets.Patch

    -- ** genomics.datasets.undelete
    , module Network.Google.API.Genomics.Datasets.Undelete

    -- ** genomics.datasets.update
    , module Network.Google.API.Genomics.Datasets.Update

    -- ** genomics.experimental.jobs.create
    , module Network.Google.API.Genomics.Experimental.Jobs.Create

    -- ** genomics.jobs.cancel
    , module Network.Google.API.Genomics.Jobs.Cancel

    -- ** genomics.jobs.get
    , module Network.Google.API.Genomics.Jobs.Get

    -- ** genomics.jobs.search
    , module Network.Google.API.Genomics.Jobs.Search

    -- ** genomics.readgroupsets.coveragebuckets.list
    , module Network.Google.API.Genomics.Readgroupsets.Coveragebuckets.List

    -- ** genomics.reads.search
    , module Network.Google.API.Genomics.Reads.Search

    -- ** genomics.references.bases.list
    , module Network.Google.API.Genomics.References.Bases.List

    -- ** genomics.referencesets.get
    , module Network.Google.API.Genomics.Referencesets.Get

    -- ** genomics.referencesets.search
    , module Network.Google.API.Genomics.Referencesets.Search

    -- ** genomics.variants.create
    , module Network.Google.API.Genomics.Variants.Create

    -- ** genomics.variants.delete
    , module Network.Google.API.Genomics.Variants.Delete

    -- ** genomics.variants.get
    , module Network.Google.API.Genomics.Variants.Get

    -- ** genomics.variants.search
    , module Network.Google.API.Genomics.Variants.Search

    -- ** genomics.variants.update
    , module Network.Google.API.Genomics.Variants.Update

    -- ** genomics.variantsets.create
    , module Network.Google.API.Genomics.Variantsets.Create

    -- ** genomics.variantsets.delete
    , module Network.Google.API.Genomics.Variantsets.Delete

    -- ** genomics.variantsets.export
    , module Network.Google.API.Genomics.Variantsets.Export

    -- ** genomics.variantsets.get
    , module Network.Google.API.Genomics.Variantsets.Get

    -- ** genomics.variantsets.importVariants
    , module Network.Google.API.Genomics.Variantsets.ImportVariants

    -- ** genomics.variantsets.mergeVariants
    , module Network.Google.API.Genomics.Variantsets.MergeVariants

    -- ** genomics.variantsets.patch
    , module Network.Google.API.Genomics.Variantsets.Patch

    -- ** genomics.variantsets.search
    , module Network.Google.API.Genomics.Variantsets.Search

    -- ** genomics.variantsets.update
    , module Network.Google.API.Genomics.Variantsets.Update

    -- * Types

    -- ** AnnotationType
    , AnnotationType (..)

    -- ** SearchAnnotationSetsRequestItemTypes
    , SearchAnnotationSetsRequestItemTypes (..)

    -- ** SearchReadsResponse
    , SearchReadsResponse
    , searchReadsResponse
    , srrNextPageToken
    , srrAlignments

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

    -- ** VariantAnnotationEffect
    , VariantAnnotationEffect (..)

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

    -- ** Range
    , Range
    , range
    , rStart
    , rReferenceName
    , rEnd

    -- ** SearchReferencesRequest
    , SearchReferencesRequest
    , searchReferencesRequest
    , srrReferenceSetId
    , srrMd5checksums
    , srrAccessions
    , srrPageToken
    , srrPageSize

    -- ** SearchReferenceSetsResponse
    , SearchReferenceSetsResponse
    , searchReferenceSetsResponse
    , srsrNextPageToken
    , srsrReferenceSets

    -- ** PairedFastqSource
    , PairedFastqSource
    , pairedFastqSource
    , pfsFirstSourceUris
    , pfsMetadata
    , pfsSecondSourceUris

    -- ** Dataset
    , Dataset
    , dataset
    , dIsPublic
    , dProjectNumber
    , dName
    , dId
    , dCreateTime

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

    -- ** AnnotationInfo
    , AnnotationInfo
    , annotationInfo

    -- ** Alt
    , Alt (..)

    -- ** CallSetInfo
    , CallSetInfo
    , callSetInfo

    -- ** CallReadGroupSetsResponse
    , CallReadGroupSetsResponse
    , callReadGroupSetsResponse
    , crgsrJobId

    -- ** VariantSet
    , VariantSet
    , variantSet
    , vsDatasetId
    , vsReferenceBounds
    , vsMetadata
    , vsId

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

    -- ** ImportReadGroupSetsRequest
    , ImportReadGroupSetsRequest
    , importReadGroupSetsRequest
    , irgsrReferenceSetId
    , irgsrDatasetId
    , irgsrSourceUris
    , irgsrPartitionStrategy

    -- ** ExportVariantSetRequest
    , ExportVariantSetRequest
    , exportVariantSetRequest
    , evsrBigqueryDataset
    , evsrBigqueryTable
    , evsrFormat
    , evsrProjectNumber
    , evsrCallSetIds

    -- ** ReadGroupInfo
    , ReadGroupInfo
    , readGroupInfo

    -- ** ExternalId
    , ExternalId
    , externalId
    , eiSourceName
    , eiId

    -- ** AlignReadGroupSetsRequest
    , AlignReadGroupSetsRequest
    , alignReadGroupSetsRequest
    , argsrInterleavedFastqSource
    , argsrReadGroupSetId
    , argsrBamSourceUris
    , argsrPairedFastqSource
    , argsrDatasetId

    -- ** CigarUnit
    , CigarUnit
    , cigarUnit
    , cuOperation
    , cuOperationLength
    , cuReferenceSequence

    -- ** ImportVariantsRequest
    , ImportVariantsRequest
    , importVariantsRequest
    , ivrFormat
    , ivrNormalizeReferenceNames
    , ivrSourceUris

    -- ** ListDatasetsResponse
    , ListDatasetsResponse
    , listDatasetsResponse
    , ldrNextPageToken
    , ldrDatasets

    -- ** MetadataInfo
    , MetadataInfo
    , metadataInfo

    -- ** SearchVariantSetsResponse
    , SearchVariantSetsResponse
    , searchVariantSetsResponse
    , svsrNextPageToken
    , svsrVariantSets

    -- ** VariantAnnotationCondition
    , VariantAnnotationCondition
    , variantAnnotationCondition
    , vacExternalIds
    , vacNames
    , vacConceptId
    , vacOmimId

    -- ** SearchAnnotationsRequest
    , SearchAnnotationsRequest
    , searchAnnotationsRequest
    , sarRange
    , sarPageToken
    , sarAnnotationSetIds
    , sarPageSize

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

    -- ** SearchAnnotationSetsResponse
    , SearchAnnotationSetsResponse
    , searchAnnotationSetsResponse
    , sasrNextPageToken
    , sasrAnnotationSets

    -- ** ExportReadGroupSetsResponse
    , ExportReadGroupSetsResponse
    , exportReadGroupSetsResponse
    , ergsrJobId

    -- ** VariantAnnotationClinicalSignificance
    , VariantAnnotationClinicalSignificance (..)

    -- ** AnnotationSetType
    , AnnotationSetType (..)

    -- ** ExperimentalCreateJobRequest
    , ExperimentalCreateJobRequest
    , experimentalCreateJobRequest
    , ecjrGcsOutputPath
    , ecjrProjectNumber
    , ecjrAlign
    , ecjrSourceUris
    , ecjrPairedSourceUris
    , ecjrCallVariants

    -- ** JobRequest
    , JobRequest
    , jobRequest
    , jrDestination
    , jrSource
    , jrType

    -- ** CigarUnitOperation
    , CigarUnitOperation (..)

    -- ** SearchReadsRequest
    , SearchReadsRequest
    , searchReadsRequest
    , sStart
    , sReadGroupIds
    , sReferenceName
    , sEnd
    , sPageToken
    , sPageSize
    , sReadGroupSetIds

    -- ** SearchCallSetsResponse
    , SearchCallSetsResponse
    , searchCallSetsResponse
    , scsrNextPageToken
    , scsrCallSets

    -- ** SearchReadGroupSetsResponse
    , SearchReadGroupSetsResponse
    , searchReadGroupSetsResponse
    , srgsrNextPageToken
    , srgsrReadGroupSets

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

    -- ** ReadGroupExperiment
    , ReadGroupExperiment
    , readGroupExperiment
    , rgeInstrumentModel
    , rgePlatformUnit
    , rgeSequencingCenter
    , rgeLibraryId

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

    -- ** CallReadGroupSetsRequest
    , CallReadGroupSetsRequest
    , callReadGroupSetsRequest
    , crgsrReadGroupSetId
    , crgsrDatasetId
    , crgsrSourceUris

    -- ** Variant
    , Variant
    , variant
    , vvVariantSetId
    , vvCreated
    , vvStart
    , vvAlternateBases
    , vvReferenceName
    , vvNames
    , vvEnd
    , vvReferenceBases
    , vvId
    , vvQuality
    , vvFilter
    , vvInfo
    , vvCalls

    -- ** InterleavedFastqSource
    , InterleavedFastqSource
    , interleavedFastqSource
    , ifsMetadata
    , ifsSourceUris

    -- ** BatchAnnotationsResponseEntry
    , BatchAnnotationsResponseEntry
    , batchAnnotationsResponseEntry
    , bareStatus
    , bareAnnotation

    -- ** CallInfo
    , CallInfo
    , callInfo

    -- ** ListBasesResponse
    , ListBasesResponse
    , listBasesResponse
    , lbrNextPageToken
    , lbrOffset
    , lbrSequence

    -- ** ReadInfo
    , ReadInfo
    , readInfo

    -- ** ReadGroupSetInfo
    , ReadGroupSetInfo
    , readGroupSetInfo

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

    -- ** LinearAlignment
    , LinearAlignment
    , linearAlignment
    , laCigar
    , laMappingQuality
    , laPosition

    -- ** ExportVariantSetResponse
    , ExportVariantSetResponse
    , exportVariantSetResponse
    , evsrJobId

    -- ** VariantInfo
    , VariantInfo
    , variantInfo

    -- ** ImportReadGroupSetsRequestPartitionStrategy
    , ImportReadGroupSetsRequestPartitionStrategy (..)

    -- ** ImportVariantsResponse
    , ImportVariantsResponse
    , importVariantsResponse
    , ivrJobId

    -- ** ImportReadGroupSetsResponse
    , ImportReadGroupSetsResponse
    , importReadGroupSetsResponse
    , irgsrJobId

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

    -- ** JobRequestType
    , JobRequestType (..)

    -- ** SearchReferencesResponse
    , SearchReferencesResponse
    , searchReferencesResponse
    , sNextPageToken
    , sReferences

    -- ** MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants

    -- ** QueryRange
    , QueryRange
    , queryRange
    , qrStart
    , qrReferenceId
    , qrReferenceName
    , qrEnd

    -- ** ExportVariantSetRequestFormat
    , ExportVariantSetRequestFormat (..)

    -- ** CoverageBucket
    , CoverageBucket
    , coverageBucket
    , cbRange
    , cbMeanCoverage

    -- ** JobStatus
    , JobStatus (..)

    -- ** CallSet
    , CallSet
    , callSet
    , csCreated
    , csName
    , csId
    , csSampleId
    , csVariantSetIds
    , csInfo

    -- ** ImportVariantsRequestFormat
    , ImportVariantsRequestFormat (..)

    -- ** AnnotationSetInfo
    , AnnotationSetInfo
    , annotationSetInfo

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

    -- ** SearchJobsRequest
    , SearchJobsRequest
    , searchJobsRequest
    , sjrCreatedAfter
    , sjrStatus
    , sjrProjectNumber
    , sjrPageToken
    , sjrPageSize
    , sjrCreatedBefore

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

    -- ** BatchAnnotationsResponseEntryStatus
    , BatchAnnotationsResponseEntryStatus
    , batchAnnotationsResponseEntryStatus
    , baresCode
    , baresMessage

    -- ** BatchAnnotationsResponse
    , BatchAnnotationsResponse
    , batchAnnotationsResponse
    , barEntries

    -- ** VariantAnnotationType
    , VariantAnnotationType (..)

    -- ** MetadataType
    , MetadataType (..)

    -- ** Transcript
    , Transcript
    , transcript
    , tGeneId
    , tCodingSequence
    , tExons

    -- ** RangePosition
    , RangePosition
    , rangePosition
    , rpStart
    , rpReverseStrand
    , rpReferenceId
    , rpReferenceName
    , rpEnd

    -- ** SearchAnnotationSetsRequest
    , SearchAnnotationSetsRequest
    , searchAnnotationSetsRequest
    , sasrReferenceSetId
    , sasrTypes
    , sasrDatasetIds
    , sasrName
    , sasrPageToken
    , sasrPageSize

    -- ** Int32Value
    , Int32Value
    , int32Value
    , ivValue

    -- ** ReadGroupProgram
    , ReadGroupProgram
    , readGroupProgram
    , rgpPrevProgramId
    , rgpName
    , rgpVersion
    , rgpId
    , rgpCommandLine

    -- ** SearchJobsRequestItemStatus
    , SearchJobsRequestItemStatus (..)

    -- ** SearchAnnotationsResponse
    , SearchAnnotationsResponse
    , searchAnnotationsResponse
    , sarAnnotations
    , sarNextPageToken

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

    -- ** SearchVariantSetsRequest
    , SearchVariantSetsRequest
    , searchVariantSetsRequest
    , svsrDatasetIds
    , svsrPageToken
    , svsrPageSize
    ) where

import           Network.Google.API.Genomics.Annotations.BatchCreate
import           Network.Google.API.Genomics.Annotations.Create
import           Network.Google.API.Genomics.Annotations.Delete
import           Network.Google.API.Genomics.Annotations.Get
import           Network.Google.API.Genomics.Annotations.Patch
import           Network.Google.API.Genomics.Annotations.Search
import           Network.Google.API.Genomics.Annotations.Update
import           Network.Google.API.Genomics.AnnotationSets.Create
import           Network.Google.API.Genomics.AnnotationSets.Delete
import           Network.Google.API.Genomics.AnnotationSets.Get
import           Network.Google.API.Genomics.AnnotationSets.Patch
import           Network.Google.API.Genomics.AnnotationSets.Search
import           Network.Google.API.Genomics.AnnotationSets.Update
import           Network.Google.API.Genomics.Callsets.Create
import           Network.Google.API.Genomics.Callsets.Delete
import           Network.Google.API.Genomics.Callsets.Get
import           Network.Google.API.Genomics.Callsets.Patch
import           Network.Google.API.Genomics.Callsets.Search
import           Network.Google.API.Genomics.Callsets.Update
import           Network.Google.API.Genomics.Datasets.Create
import           Network.Google.API.Genomics.Datasets.Delete
import           Network.Google.API.Genomics.Datasets.Get
import           Network.Google.API.Genomics.Datasets.List
import           Network.Google.API.Genomics.Datasets.Patch
import           Network.Google.API.Genomics.Datasets.Undelete
import           Network.Google.API.Genomics.Datasets.Update
import           Network.Google.API.Genomics.Experimental.Jobs.Create
import           Network.Google.API.Genomics.Jobs.Cancel
import           Network.Google.API.Genomics.Jobs.Get
import           Network.Google.API.Genomics.Jobs.Search
import           Network.Google.API.Genomics.Readgroupsets.Coveragebuckets.List
import           Network.Google.API.Genomics.Reads.Search
import           Network.Google.API.Genomics.References.Bases.List
import           Network.Google.API.Genomics.Referencesets.Get
import           Network.Google.API.Genomics.Referencesets.Search
import           Network.Google.API.Genomics.Variants.Create
import           Network.Google.API.Genomics.Variants.Delete
import           Network.Google.API.Genomics.Variants.Get
import           Network.Google.API.Genomics.Variants.Search
import           Network.Google.API.Genomics.Variants.Update
import           Network.Google.API.Genomics.Variantsets.Create
import           Network.Google.API.Genomics.Variantsets.Delete
import           Network.Google.API.Genomics.Variantsets.Export
import           Network.Google.API.Genomics.Variantsets.Get
import           Network.Google.API.Genomics.Variantsets.ImportVariants
import           Network.Google.API.Genomics.Variantsets.MergeVariants
import           Network.Google.API.Genomics.Variantsets.Patch
import           Network.Google.API.Genomics.Variantsets.Search
import           Network.Google.API.Genomics.Variantsets.Update
import           Network.Google.Genomics.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Genomics =
     AnnotationSetsSearchAPI :<|> JobsGetAPI :<|>
       AnnotationSetsGetAPI
       :<|> JobsSearchAPI
       :<|> CallsetsSearchAPI
       :<|> DatasetsPatchAPI
       :<|> CallsetsDeleteAPI
       :<|> AnnotationSetsPatchAPI
       :<|> AnnotationsGetAPI
       :<|> VariantsetsDeleteAPI
       :<|> ReadgroupsetsCoveragebucketsListAPI
       :<|> VariantsetsGetAPI
       :<|> VariantsetsCreateAPI
       :<|> CallsetsUpdateAPI
       :<|> AnnotationsPatchAPI
       :<|> DatasetsCreateAPI
       :<|> AnnotationSetsUpdateAPI
       :<|> DatasetsUndeleteAPI
       :<|> VariantsDeleteAPI
       :<|> JobsCancelAPI
       :<|> ExperimentalJobsCreateAPI
       :<|> AnnotationsBatchCreateAPI
       :<|> VariantsetsPatchAPI
       :<|> VariantsetsExportAPI
       :<|> AnnotationsSearchAPI
       :<|> VariantsetsImportVariantsAPI
       :<|> DatasetsGetAPI
       :<|> ReferencesetsGetAPI
       :<|> ReferencesBasesListAPI
       :<|> ReferencesetsSearchAPI
       :<|> AnnotationSetsCreateAPI
       :<|> DatasetsListAPI
       :<|> CallsetsPatchAPI
       :<|> VariantsetsUpdateAPI
       :<|> AnnotationsDeleteAPI
       :<|> AnnotationsCreateAPI
       :<|> DatasetsDeleteAPI
       :<|> VariantsetsMergeVariantsAPI
       :<|> VariantsSearchAPI
       :<|> VariantsUpdateAPI
       :<|> VariantsetsSearchAPI
       :<|> DatasetsUpdateAPI
       :<|> ReadsSearchAPI
       :<|> CallsetsCreateAPI
       :<|> VariantsGetAPI
       :<|> VariantsCreateAPI
       :<|> CallsetsGetAPI
       :<|> AnnotationsUpdateAPI
       :<|> AnnotationSetsDeleteAPI

genomics :: Proxy Genomics
genomics = Proxy
