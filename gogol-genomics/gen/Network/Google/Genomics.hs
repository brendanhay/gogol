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
    -- * Resources
      Genomics
    , AnnotationsAPI
    , AnnotationsPatch
    , AnnotationsGet
    , AnnotationsCreate
    , AnnotationsBatchCreate
    , AnnotationsSearch
    , AnnotationsDelete
    , AnnotationsUpdate
    , VariantsAPI
    , VariantsGet
    , VariantsCreate
    , VariantsSearch
    , VariantsDelete
    , VariantsUpdate
    , ReferencesAPI
    , BasesAPI
    , BasesList
    , VariantsetsAPI
    , VariantsetsExport
    , VariantsetsPatch
    , VariantsetsGet
    , VariantsetsMergeVariants
    , VariantsetsCreate
    , VariantsetsSearch
    , VariantsetsDelete
    , VariantsetsUpdate
    , VariantsetsImportVariants
    , AnnotationSetsAPI
    , AnnotationSetsPatch
    , AnnotationSetsGet
    , AnnotationSetsCreate
    , AnnotationSetsSearch
    , AnnotationSetsDelete
    , AnnotationSetsUpdate
    , ExperimentalAPI
    , JobsAPI
    , JobsCreate
    , JobsAPI
    , JobsGet
    , JobsCancel
    , JobsSearch
    , ReadgroupsetsAPI
    , CoveragebucketsAPI
    , CoveragebucketsList
    , ReferencesetsAPI
    , ReferencesetsGet
    , ReferencesetsSearch
    , CallsetsAPI
    , CallsetsPatch
    , CallsetsGet
    , CallsetsCreate
    , CallsetsSearch
    , CallsetsDelete
    , CallsetsUpdate
    , ReadsAPI
    , ReadsSearch
    , DatasetsAPI
    , DatasetsList
    , DatasetsUndelete
    , DatasetsPatch
    , DatasetsGet
    , DatasetsCreate
    , DatasetsDelete
    , DatasetsUpdate

    -- * Types

    -- ** AlignReadGroupSetsRequest
    , AlignReadGroupSetsRequest
    , alignReadGroupSetsRequest
    , argsrInterleavedFastqSource
    , argsrReadGroupSetId
    , argsrBamSourceUris
    , argsrPairedFastqSource
    , argsrDatasetId

    -- ** AlignReadGroupSetsResponse
    , AlignReadGroupSetsResponse
    , alignReadGroupSetsResponse
    , argsrJobId

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

    -- ** AnnotationInfo
    , AnnotationInfo
    , annotationInfo

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

    -- ** AnnotationSetInfo
    , AnnotationSetInfo
    , annotationSetInfo

    -- ** AnnotationSetType
    , AnnotationSetType (..)

    -- ** AnnotationType
    , AnnotationType (..)

    -- ** BatchAnnotationsResponse
    , BatchAnnotationsResponse
    , batchAnnotationsResponse
    , barEntries

    -- ** BatchAnnotationsResponseEntry
    , BatchAnnotationsResponseEntry
    , batchAnnotationsResponseEntry
    , bareStatus
    , bareAnnotation

    -- ** BatchAnnotationsResponseEntryStatus
    , BatchAnnotationsResponseEntryStatus
    , batchAnnotationsResponseEntryStatus
    , baresCode
    , baresMessage

    -- ** BatchCreateAnnotationsRequest
    , BatchCreateAnnotationsRequest
    , batchCreateAnnotationsRequest
    , bcarAnnotations

    -- ** Call
    , Call
    , call
    , cGenotypeLikelihood
    , cCallSetName
    , cPhaseset
    , cCallSetId
    , cGenotype
    , cInfo

    -- ** CallInfo
    , CallInfo
    , callInfo

    -- ** CallReadGroupSetsRequest
    , CallReadGroupSetsRequest
    , callReadGroupSetsRequest
    , crgsrReadGroupSetId
    , crgsrDatasetId
    , crgsrSourceUris

    -- ** CallReadGroupSetsResponse
    , CallReadGroupSetsResponse
    , callReadGroupSetsResponse
    , crgsrJobId

    -- ** CallSet
    , CallSet
    , callSet
    , csCreated
    , csName
    , csId
    , csSampleId
    , csVariantSetIds
    , csInfo

    -- ** CallSetInfo
    , CallSetInfo
    , callSetInfo

    -- ** CigarUnit
    , CigarUnit
    , cigarUnit
    , cuOperation
    , cuOperationLength
    , cuReferenceSequence

    -- ** CigarUnitOperation
    , CigarUnitOperation (..)

    -- ** CoverageBucket
    , CoverageBucket
    , coverageBucket
    , cbRange
    , cbMeanCoverage

    -- ** Dataset
    , Dataset
    , dataset
    , dIsPublic
    , dProjectNumber
    , dName
    , dId
    , dCreateTime

    -- ** ExperimentalCreateJobRequest
    , ExperimentalCreateJobRequest
    , experimentalCreateJobRequest
    , ecjrGcsOutputPath
    , ecjrProjectNumber
    , ecjrAlign
    , ecjrSourceUris
    , ecjrPairedSourceUris
    , ecjrCallVariants

    -- ** ExperimentalCreateJobResponse
    , ExperimentalCreateJobResponse
    , experimentalCreateJobResponse
    , ecjrJobId

    -- ** ExportReadGroupSetsRequest
    , ExportReadGroupSetsRequest
    , exportReadGroupSetsRequest
    , ergsrReferenceNames
    , ergsrProjectNumber
    , ergsrExportUri
    , ergsrReadGroupSetIds

    -- ** ExportReadGroupSetsResponse
    , ExportReadGroupSetsResponse
    , exportReadGroupSetsResponse
    , ergsrJobId

    -- ** ExportVariantSetRequest
    , ExportVariantSetRequest
    , exportVariantSetRequest
    , evsrBigqueryDataset
    , evsrBigqueryTable
    , evsrFormat
    , evsrProjectNumber
    , evsrCallSetIds

    -- ** ExportVariantSetRequestFormat
    , ExportVariantSetRequestFormat (..)

    -- ** ExportVariantSetResponse
    , ExportVariantSetResponse
    , exportVariantSetResponse
    , evsrJobId

    -- ** ExternalId
    , ExternalId
    , externalId
    , eiSourceName
    , eiId

    -- ** FastqMetadata
    , FastqMetadata
    , fastqMetadata
    , fmPlatformUnit
    , fmReadGroupName
    , fmLibraryName
    , fmPlatformName
    , fmSampleName

    -- ** ImportReadGroupSetsRequest
    , ImportReadGroupSetsRequest
    , importReadGroupSetsRequest
    , irgsrReferenceSetId
    , irgsrDatasetId
    , irgsrSourceUris
    , irgsrPartitionStrategy

    -- ** ImportReadGroupSetsRequestPartitionStrategy
    , ImportReadGroupSetsRequestPartitionStrategy (..)

    -- ** ImportReadGroupSetsResponse
    , ImportReadGroupSetsResponse
    , importReadGroupSetsResponse
    , irgsrJobId

    -- ** ImportVariantsRequest
    , ImportVariantsRequest
    , importVariantsRequest
    , ivrFormat
    , ivrNormalizeReferenceNames
    , ivrSourceUris

    -- ** ImportVariantsRequestFormat
    , ImportVariantsRequestFormat (..)

    -- ** ImportVariantsResponse
    , ImportVariantsResponse
    , importVariantsResponse
    , ivrJobId

    -- ** Int32Value
    , Int32Value
    , int32Value
    , ivValue

    -- ** InterleavedFastqSource
    , InterleavedFastqSource
    , interleavedFastqSource
    , ifsMetadata
    , ifsSourceUris

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

    -- ** JobRequest
    , JobRequest
    , jobRequest
    , jrDestination
    , jrSource
    , jrType

    -- ** JobRequestType
    , JobRequestType (..)

    -- ** JobStatus
    , JobStatus (..)

    -- ** KeyValue
    , KeyValue
    , keyValue
    , kvValue
    , kvKey

    -- ** LinearAlignment
    , LinearAlignment
    , linearAlignment
    , laCigar
    , laMappingQuality
    , laPosition

    -- ** ListBasesResponse
    , ListBasesResponse
    , listBasesResponse
    , lbrNextPageToken
    , lbrOffset
    , lbrSequence

    -- ** ListCoverageBucketsResponse
    , ListCoverageBucketsResponse
    , listCoverageBucketsResponse
    , lcbrNextPageToken
    , lcbrBucketWidth
    , lcbrCoverageBuckets

    -- ** ListDatasetsResponse
    , ListDatasetsResponse
    , listDatasetsResponse
    , ldrNextPageToken
    , ldrDatasets

    -- ** MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants

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

    -- ** MetadataInfo
    , MetadataInfo
    , metadataInfo

    -- ** MetadataType
    , MetadataType (..)

    -- ** PairedFastqSource
    , PairedFastqSource
    , pairedFastqSource
    , pfsFirstSourceUris
    , pfsMetadata
    , pfsSecondSourceUris

    -- ** Position
    , Position
    , position
    , pReverseStrand
    , pReferenceName
    , pPosition

    -- ** QueryRange
    , QueryRange
    , queryRange
    , qrStart
    , qrReferenceId
    , qrReferenceName
    , qrEnd

    -- ** Range
    , Range
    , range
    , rStart
    , rReferenceName
    , rEnd

    -- ** RangePosition
    , RangePosition
    , rangePosition
    , rpStart
    , rpReverseStrand
    , rpReferenceId
    , rpReferenceName
    , rpEnd

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

    -- ** ReadGroupExperiment
    , ReadGroupExperiment
    , readGroupExperiment
    , rgeInstrumentModel
    , rgePlatformUnit
    , rgeSequencingCenter
    , rgeLibraryId

    -- ** ReadGroupInfo
    , ReadGroupInfo
    , readGroupInfo

    -- ** ReadGroupProgram
    , ReadGroupProgram
    , readGroupProgram
    , rgpPrevProgramId
    , rgpName
    , rgpVersion
    , rgpId
    , rgpCommandLine

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

    -- ** ReadGroupSetInfo
    , ReadGroupSetInfo
    , readGroupSetInfo

    -- ** ReadInfo
    , ReadInfo
    , readInfo

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

    -- ** SearchAnnotationSetsRequest
    , SearchAnnotationSetsRequest
    , searchAnnotationSetsRequest
    , sasrReferenceSetId
    , sasrTypes
    , sasrDatasetIds
    , sasrName
    , sasrPageToken
    , sasrPageSize

    -- ** SearchAnnotationSetsRequestItemTypes
    , SearchAnnotationSetsRequestItemTypes (..)

    -- ** SearchAnnotationSetsResponse
    , SearchAnnotationSetsResponse
    , searchAnnotationSetsResponse
    , sasrNextPageToken
    , sasrAnnotationSets

    -- ** SearchAnnotationsRequest
    , SearchAnnotationsRequest
    , searchAnnotationsRequest
    , sarRange
    , sarPageToken
    , sarAnnotationSetIds
    , sarPageSize

    -- ** SearchAnnotationsResponse
    , SearchAnnotationsResponse
    , searchAnnotationsResponse
    , sarAnnotations
    , sarNextPageToken

    -- ** SearchCallSetsRequest
    , SearchCallSetsRequest
    , searchCallSetsRequest
    , scsrName
    , scsrPageToken
    , scsrVariantSetIds
    , scsrPageSize

    -- ** SearchCallSetsResponse
    , SearchCallSetsResponse
    , searchCallSetsResponse
    , scsrNextPageToken
    , scsrCallSets

    -- ** SearchJobsRequest
    , SearchJobsRequest
    , searchJobsRequest
    , sjrCreatedAfter
    , sjrStatus
    , sjrProjectNumber
    , sjrPageToken
    , sjrPageSize
    , sjrCreatedBefore

    -- ** SearchJobsRequestItemStatus
    , SearchJobsRequestItemStatus (..)

    -- ** SearchJobsResponse
    , SearchJobsResponse
    , searchJobsResponse
    , sjrNextPageToken
    , sjrJobs

    -- ** SearchReadGroupSetsRequest
    , SearchReadGroupSetsRequest
    , searchReadGroupSetsRequest
    , srgsrDatasetIds
    , srgsrName
    , srgsrPageToken
    , srgsrPageSize

    -- ** SearchReadGroupSetsResponse
    , SearchReadGroupSetsResponse
    , searchReadGroupSetsResponse
    , srgsrNextPageToken
    , srgsrReadGroupSets

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

    -- ** SearchReadsResponse
    , SearchReadsResponse
    , searchReadsResponse
    , srrNextPageToken
    , srrAlignments

    -- ** SearchReferenceSetsRequest
    , SearchReferenceSetsRequest
    , searchReferenceSetsRequest
    , srsrMd5checksums
    , srsrAccessions
    , srsrPageToken
    , srsrAssemblyId
    , srsrPageSize

    -- ** SearchReferenceSetsResponse
    , SearchReferenceSetsResponse
    , searchReferenceSetsResponse
    , srsrNextPageToken
    , srsrReferenceSets

    -- ** SearchReferencesRequest
    , SearchReferencesRequest
    , searchReferencesRequest
    , srrReferenceSetId
    , srrMd5checksums
    , srrAccessions
    , srrPageToken
    , srrPageSize

    -- ** SearchReferencesResponse
    , SearchReferencesResponse
    , searchReferencesResponse
    , sNextPageToken
    , sReferences

    -- ** SearchVariantSetsRequest
    , SearchVariantSetsRequest
    , searchVariantSetsRequest
    , svsrDatasetIds
    , svsrPageToken
    , svsrPageSize

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

    -- ** SearchVariantsResponse
    , SearchVariantsResponse
    , searchVariantsResponse
    , svrVariants
    , svrNextPageToken

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

    -- ** TranscriptExon
    , TranscriptExon
    , transcriptExon
    , teStart
    , teEnd
    , teFrame

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

    -- ** VariantAnnotationCondition
    , VariantAnnotationCondition
    , variantAnnotationCondition
    , vacExternalIds
    , vacNames
    , vacConceptId
    , vacOmimId

    -- ** VariantAnnotationEffect
    , VariantAnnotationEffect (..)

    -- ** VariantAnnotationType
    , VariantAnnotationType (..)

    -- ** VariantInfo
    , VariantInfo
    , variantInfo

    -- ** VariantSet
    , VariantSet
    , variantSet
    , vsDatasetId
    , vsReferenceBounds
    , vsMetadata
    , vsId
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Genomics =
     AnnotationsAPI :<|> VariantsAPI :<|> ReferencesAPI
       :<|> VariantsetsAPI
       :<|> AnnotationSetsAPI
       :<|> ExperimentalAPI
       :<|> JobsAPI
       :<|> ReadgroupsetsAPI
       :<|> ReferencesetsAPI
       :<|> CallsetsAPI
       :<|> ReadsAPI
       :<|> DatasetsAPI

type AnnotationsAPI =
     AnnotationsPatch :<|> AnnotationsGet :<|>
       AnnotationsCreate
       :<|> AnnotationsBatchCreate
       :<|> AnnotationsSearch
       :<|> AnnotationsDelete
       :<|> AnnotationsUpdate

-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset. This
-- method supports patch semantics.
type AnnotationsPatch =
     "genomics" :> "v1beta2" :> "annotations" :>
       Capture "annotationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets an annotation. Caller must have READ permission for the associated
-- annotation set.
type AnnotationsGet =
     "genomics" :> "v1beta2" :> "annotations" :>
       Capture "annotationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new annotation. Caller must have WRITE permission for the
-- associated annotation set.
type AnnotationsCreate =
     "genomics" :> "v1beta2" :> "annotations" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates one or more new annotations atomically. All annotations must
-- belong to the same annotation set. Caller must have WRITE permission for
-- this annotation set. For optimal performance, batch positionally
-- adjacent annotations together. If the request has a systemic issue, such
-- as an attempt to write to an inaccessible annotation set, the entire RPC
-- will fail accordingly. For lesser data issues, when possible an error
-- will be isolated to the corresponding batch entry in the response; the
-- remaining well formed annotations will be created normally.
type AnnotationsBatchCreate =
     "genomics" :> "v1beta2" :> "annotations:batchCreate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Searches for annotations that match the given criteria. Results are
-- returned ordered by start position. Annotations that have matching start
-- positions are ordered deterministically. Caller must have READ
-- permission for the queried annotation sets.
type AnnotationsSearch =
     "genomics" :> "v1beta2" :> "annotations" :> "search"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an annotation. Caller must have WRITE permission for the
-- associated annotation set.
type AnnotationsDelete =
     "genomics" :> "v1beta2" :> "annotations" :>
       Capture "annotationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset.
type AnnotationsUpdate =
     "genomics" :> "v1beta2" :> "annotations" :>
       Capture "annotationId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type VariantsAPI =
     VariantsGet :<|> VariantsCreate :<|> VariantsSearch
       :<|> VariantsDelete
       :<|> VariantsUpdate

-- | Gets a variant by ID.
type VariantsGet =
     "genomics" :> "v1beta2" :> "variants" :>
       Capture "variantId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new variant.
type VariantsCreate =
     "genomics" :> "v1beta2" :> "variants" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a list of variants matching the criteria. Implements
-- GlobalAllianceApi.searchVariants.
type VariantsSearch =
     "genomics" :> "v1beta2" :> "variants" :> "search" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a variant.
type VariantsDelete =
     "genomics" :> "v1beta2" :> "variants" :>
       Capture "variantId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a variant\'s names and info fields. All other modifications are
-- silently ignored. Returns the modified variant without its calls.
type VariantsUpdate =
     "genomics" :> "v1beta2" :> "variants" :>
       Capture "variantId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReferencesAPI = BasesAPI

type BasesAPI = BasesList

-- | Lists the bases in a reference, optionally restricted to a range.
-- Implements GlobalAllianceApi.getReferenceBases.
type BasesList =
     "genomics" :> "v1beta2" :> "references" :>
       Capture "referenceId" Text
       :> "bases"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "start" Int64
       :> QueryParam "key" Text
       :> QueryParam "end" Int64
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type VariantsetsAPI =
     VariantsetsExport :<|> VariantsetsPatch :<|>
       VariantsetsGet
       :<|> VariantsetsMergeVariants
       :<|> VariantsetsCreate
       :<|> VariantsetsSearch
       :<|> VariantsetsDelete
       :<|> VariantsetsUpdate
       :<|> VariantsetsImportVariants

-- | Exports variant set data to an external destination.
type VariantsetsExport =
     "genomics" :> "v1beta2" :> "variantsets" :>
       Capture "variantSetId" Text
       :> "export"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored. This method supports patch semantics.
type VariantsetsPatch =
     "genomics" :> "v1beta2" :> "variantsets" :>
       Capture "variantSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a variant set by ID.
type VariantsetsGet =
     "genomics" :> "v1beta2" :> "variantsets" :>
       Capture "variantSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Merges the given variants with existing variants. Each variant will be
-- merged with an existing variant that matches its reference sequence,
-- start, end, reference bases, and alternative bases. If no such variant
-- exists, a new one will be created. When variants are merged, the call
-- information from the new variant is added to the existing variant, and
-- other fields (such as key\/value pairs) are discarded.
type VariantsetsMergeVariants =
     "genomics" :> "v1beta2" :> "variantsets" :>
       Capture "variantSetId" Text
       :> "mergeVariants"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new variant set (only necessary in v1). The provided variant
-- set must have a valid datasetId set - all other fields are optional.
-- Note that the id field will be ignored, as this is assigned by the
-- server.
type VariantsetsCreate =
     "genomics" :> "v1beta2" :> "variantsets" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of all variant sets matching search criteria. Implements
-- GlobalAllianceApi.searchVariantSets.
type VariantsetsSearch =
     "genomics" :> "v1beta2" :> "variantsets" :> "search"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
type VariantsetsDelete =
     "genomics" :> "v1beta2" :> "variantsets" :>
       Capture "variantSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a variant set\'s metadata. All other modifications are silently
-- ignored.
type VariantsetsUpdate =
     "genomics" :> "v1beta2" :> "variantsets" :>
       Capture "variantSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates variant data by asynchronously importing the provided
-- information. The variants for import will be merged with any existing
-- data and each other according to the behavior of mergeVariants. In
-- particular, this means for merged VCF variants that have conflicting
-- INFO fields, some data will be arbitrarily discarded. As a special case,
-- for single-sample VCF files, QUAL and FILTER fields will be moved to the
-- call level; these are sometimes interpreted in a call-specific context.
-- Imported VCF headers are appended to the metadata already in a variant
-- set.
type VariantsetsImportVariants =
     "genomics" :> "v1beta2" :> "variantsets" :>
       Capture "variantSetId" Text
       :> "importVariants"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AnnotationSetsAPI =
     AnnotationSetsPatch :<|> AnnotationSetsGet :<|>
       AnnotationSetsCreate
       :<|> AnnotationSetsSearch
       :<|> AnnotationSetsDelete
       :<|> AnnotationSetsUpdate

-- | Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
-- This method supports patch semantics.
type AnnotationSetsPatch =
     "genomics" :> "v1beta2" :> "annotationSets" :>
       Capture "annotationSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets an annotation set. Caller must have READ permission for the
-- associated dataset.
type AnnotationSetsGet =
     "genomics" :> "v1beta2" :> "annotationSets" :>
       Capture "annotationSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new annotation set. Caller must have WRITE permission for the
-- associated dataset.
type AnnotationSetsCreate =
     "genomics" :> "v1beta2" :> "annotationSets" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Searches for annotation sets that match the given criteria. Results are
-- returned in a deterministic order. Caller must have READ permission for
-- the queried datasets.
type AnnotationSetsSearch =
     "genomics" :> "v1beta2" :> "annotationSets" :>
       "search"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an annotation set. Caller must have WRITE permission for the
-- associated annotation set.
type AnnotationSetsDelete =
     "genomics" :> "v1beta2" :> "annotationSets" :>
       Capture "annotationSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
type AnnotationSetsUpdate =
     "genomics" :> "v1beta2" :> "annotationSets" :>
       Capture "annotationSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ExperimentalAPI = JobsAPI

type JobsAPI = JobsCreate

-- | Creates and asynchronously runs an ad-hoc job. This is an experimental
-- call and may be removed or changed at any time.
type JobsCreate =
     "genomics" :> "v1beta2" :> "experimental" :> "jobs"
       :> "create"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type JobsAPI =
     JobsGet :<|> JobsCancel :<|> JobsSearch

-- | Gets a job by ID.
type JobsGet =
     "genomics" :> "v1beta2" :> "jobs" :>
       Capture "jobId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Cancels a job by ID. Note that it is possible for partial results to be
-- generated and stored for cancelled jobs.
type JobsCancel =
     "genomics" :> "v1beta2" :> "jobs" :>
       Capture "jobId" Text
       :> "cancel"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a list of jobs matching the criteria.
type JobsSearch =
     "genomics" :> "v1beta2" :> "jobs" :> "search" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReadgroupsetsAPI = CoveragebucketsAPI

type CoveragebucketsAPI = CoveragebucketsList

-- | Lists fixed width coverage buckets for a read group set, each of which
-- correspond to a range of a reference sequence. Each bucket summarizes
-- coverage information across its corresponding genomic range. Coverage is
-- defined as the number of reads which are aligned to a given base in the
-- reference sequence. Coverage buckets are available at several
-- precomputed bucket widths, enabling retrieval of various coverage \'zoom
-- levels\'. The caller must have READ permissions for the target read
-- group set.
type CoveragebucketsList =
     "genomics" :> "v1beta2" :> "readgroupsets" :>
       Capture "readGroupSetId" Text
       :> "coveragebuckets"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "range.end" Int64
       :> QueryParam "range.start" Int64
       :> QueryParam "targetBucketWidth" Int64
       :> QueryParam "key" Text
       :> QueryParam "range.referenceName" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReferencesetsAPI =
     ReferencesetsGet :<|> ReferencesetsSearch

-- | Gets a reference set. Implements GlobalAllianceApi.getReferenceSet.
type ReferencesetsGet =
     "genomics" :> "v1beta2" :> "referencesets" :>
       Capture "referenceSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Searches for reference sets which match the given criteria. Implements
-- GlobalAllianceApi.searchReferenceSets.
type ReferencesetsSearch =
     "genomics" :> "v1beta2" :> "referencesets" :>
       "search"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CallsetsAPI =
     CallsetsPatch :<|> CallsetsGet :<|> CallsetsCreate
       :<|> CallsetsSearch
       :<|> CallsetsDelete
       :<|> CallsetsUpdate

-- | Updates a call set. This method supports patch semantics.
type CallsetsPatch =
     "genomics" :> "v1beta2" :> "callsets" :>
       Capture "callSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a call set by ID.
type CallsetsGet =
     "genomics" :> "v1beta2" :> "callsets" :>
       Capture "callSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new call set.
type CallsetsCreate =
     "genomics" :> "v1beta2" :> "callsets" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a list of call sets matching the criteria. Implements
-- GlobalAllianceApi.searchCallSets.
type CallsetsSearch =
     "genomics" :> "v1beta2" :> "callsets" :> "search" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a call set.
type CallsetsDelete =
     "genomics" :> "v1beta2" :> "callsets" :>
       Capture "callSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a call set.
type CallsetsUpdate =
     "genomics" :> "v1beta2" :> "callsets" :>
       Capture "callSetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReadsAPI = ReadsSearch

-- | Gets a list of reads for one or more read group sets. Reads search
-- operates over a genomic coordinate space of reference sequence &
-- position defined over the reference sequences to which the requested
-- read group sets are aligned. If a target positional range is specified,
-- search returns all reads whose alignment to the reference genome overlap
-- the range. A query which specifies only read group set IDs yields all
-- reads in those read group sets, including unmapped reads. All reads
-- returned (including reads on subsequent pages) are ordered by genomic
-- coordinate (reference sequence & position). Reads with equivalent
-- genomic coordinates are returned in a deterministic order. Implements
-- GlobalAllianceApi.searchReads.
type ReadsSearch =
     "genomics" :> "v1beta2" :> "reads" :> "search" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DatasetsAPI =
     DatasetsList :<|> DatasetsUndelete :<|> DatasetsPatch
       :<|> DatasetsGet
       :<|> DatasetsCreate
       :<|> DatasetsDelete
       :<|> DatasetsUpdate

-- | Lists datasets within a project.
type DatasetsList =
     "genomics" :> "v1beta2" :> "datasets" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "projectNumber" Int64
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Undeletes a dataset by restoring a dataset which was deleted via this
-- API. This operation is only possible for a week after the deletion
-- occurred.
type DatasetsUndelete =
     "genomics" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> "undelete"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a dataset. This method supports patch semantics.
type DatasetsPatch =
     "genomics" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a dataset by ID.
type DatasetsGet =
     "genomics" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new dataset.
type DatasetsCreate =
     "genomics" :> "v1beta2" :> "datasets" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a dataset.
type DatasetsDelete =
     "genomics" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a dataset.
type DatasetsUpdate =
     "genomics" :> "v1beta2" :> "datasets" :>
       Capture "datasetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
