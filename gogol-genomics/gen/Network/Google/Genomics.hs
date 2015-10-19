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
-- An API to store, process, explore, and share DNA sequence reads,
-- reference-based alignments, and variant calls.
--
-- /See:/ < Genomics API Reference>
module Network.Google.Genomics
    (
    -- * Service Configuration
      genomicsService

    -- * API Declaration
    , GenomicsAPI

    -- * Resources

    -- ** genomics.callsets.create
    , module Network.Google.Resource.Genomics.Callsets.Create

    -- ** genomics.callsets.delete
    , module Network.Google.Resource.Genomics.Callsets.Delete

    -- ** genomics.callsets.get
    , module Network.Google.Resource.Genomics.Callsets.Get

    -- ** genomics.callsets.patch
    , module Network.Google.Resource.Genomics.Callsets.Patch

    -- ** genomics.callsets.search
    , module Network.Google.Resource.Genomics.Callsets.Search

    -- ** genomics.datasets.create
    , module Network.Google.Resource.Genomics.Datasets.Create

    -- ** genomics.datasets.delete
    , module Network.Google.Resource.Genomics.Datasets.Delete

    -- ** genomics.datasets.get
    , module Network.Google.Resource.Genomics.Datasets.Get

    -- ** genomics.datasets.getIamPolicy
    , module Network.Google.Resource.Genomics.Datasets.GetIAMPolicy

    -- ** genomics.datasets.list
    , module Network.Google.Resource.Genomics.Datasets.List

    -- ** genomics.datasets.patch
    , module Network.Google.Resource.Genomics.Datasets.Patch

    -- ** genomics.datasets.setIamPolicy
    , module Network.Google.Resource.Genomics.Datasets.SetIAMPolicy

    -- ** genomics.datasets.testIamPermissions
    , module Network.Google.Resource.Genomics.Datasets.TestIAMPermissions

    -- ** genomics.datasets.undelete
    , module Network.Google.Resource.Genomics.Datasets.Undelete

    -- ** genomics.operations.cancel
    , module Network.Google.Resource.Genomics.Operations.Cancel

    -- ** genomics.operations.delete
    , module Network.Google.Resource.Genomics.Operations.Delete

    -- ** genomics.operations.get
    , module Network.Google.Resource.Genomics.Operations.Get

    -- ** genomics.operations.list
    , module Network.Google.Resource.Genomics.Operations.List

    -- ** genomics.readgroupsets.coveragebuckets.list
    , module Network.Google.Resource.Genomics.Readgroupsets.Coveragebuckets.List

    -- ** genomics.readgroupsets.delete
    , module Network.Google.Resource.Genomics.Readgroupsets.Delete

    -- ** genomics.readgroupsets.export
    , module Network.Google.Resource.Genomics.Readgroupsets.Export

    -- ** genomics.readgroupsets.get
    , module Network.Google.Resource.Genomics.Readgroupsets.Get

    -- ** genomics.readgroupsets.import
    , module Network.Google.Resource.Genomics.Readgroupsets.Import

    -- ** genomics.readgroupsets.patch
    , module Network.Google.Resource.Genomics.Readgroupsets.Patch

    -- ** genomics.readgroupsets.search
    , module Network.Google.Resource.Genomics.Readgroupsets.Search

    -- ** genomics.reads.search
    , module Network.Google.Resource.Genomics.Reads.Search

    -- ** genomics.references.bases.list
    , module Network.Google.Resource.Genomics.References.Bases.List

    -- ** genomics.references.get
    , module Network.Google.Resource.Genomics.References.Get

    -- ** genomics.references.search
    , module Network.Google.Resource.Genomics.References.Search

    -- ** genomics.referencesets.get
    , module Network.Google.Resource.Genomics.Referencesets.Get

    -- ** genomics.referencesets.search
    , module Network.Google.Resource.Genomics.Referencesets.Search

    -- ** genomics.variants.create
    , module Network.Google.Resource.Genomics.Variants.Create

    -- ** genomics.variants.delete
    , module Network.Google.Resource.Genomics.Variants.Delete

    -- ** genomics.variants.get
    , module Network.Google.Resource.Genomics.Variants.Get

    -- ** genomics.variants.import
    , module Network.Google.Resource.Genomics.Variants.Import

    -- ** genomics.variants.patch
    , module Network.Google.Resource.Genomics.Variants.Patch

    -- ** genomics.variants.search
    , module Network.Google.Resource.Genomics.Variants.Search

    -- ** genomics.variantsets.create
    , module Network.Google.Resource.Genomics.Variantsets.Create

    -- ** genomics.variantsets.delete
    , module Network.Google.Resource.Genomics.Variantsets.Delete

    -- ** genomics.variantsets.export
    , module Network.Google.Resource.Genomics.Variantsets.Export

    -- ** genomics.variantsets.get
    , module Network.Google.Resource.Genomics.Variantsets.Get

    -- ** genomics.variantsets.patch
    , module Network.Google.Resource.Genomics.Variantsets.Patch

    -- ** genomics.variantsets.search
    , module Network.Google.Resource.Genomics.Variantsets.Search

    -- * Types

    -- ** ReadInfo
    , ReadInfo
    , readInfo
    , riAddtional

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

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

    -- ** ListBasesResponse
    , ListBasesResponse
    , listBasesResponse
    , lbrNextPageToken
    , lbrOffset
    , lbrSequence

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** Dataset
    , Dataset
    , dataset
    , dName
    , dId
    , dProjectId
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

    -- ** VariantCall
    , VariantCall
    , variantCall
    , vcGenotypeLikelihood
    , vcCallSetName
    , vcPhaseset
    , vcCallSetId
    , vcGenotype
    , vcInfo

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

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** SearchReferenceSetsRequest
    , SearchReferenceSetsRequest
    , searchReferenceSetsRequest
    , srsrMD5checksums
    , srsrAccessions
    , srsrPageToken
    , srsrAssemblyId
    , srsrPageSize

    -- ** Empty
    , Empty
    , empty

    -- ** SearchReferencesResponse
    , SearchReferencesResponse
    , searchReferencesResponse
    , srrNextPageToken
    , srrReferences

    -- ** VariantSetMetadata
    , VariantSetMetadata
    , variantSetMetadata
    , vsmValue
    , vsmKey
    , vsmId
    , vsmType
    , vsmNumber
    , vsmDescription
    , vsmInfo

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

    -- ** SearchReadGroupSetsRequest
    , SearchReadGroupSetsRequest
    , searchReadGroupSetsRequest
    , srgsrDatasetIds
    , srgsrName
    , srgsrPageToken
    , srgsrPageSize

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

    -- ** VariantCallInfo
    , VariantCallInfo
    , variantCallInfo
    , vciAddtional

    -- ** ReadGroupInfo
    , ReadGroupInfo
    , readGroupInfo
    , rgiAddtional

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SearchCallSetsResponse
    , SearchCallSetsResponse
    , searchCallSetsResponse
    , scsrNextPageToken
    , scsrCallSets

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

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

    -- ** OperationMetadataRequest
    , OperationMetadataRequest
    , operationMetadataRequest
    , omrAddtional

    -- ** VariantInfo
    , VariantInfo
    , variantInfo
    , viAddtional

    -- ** Experiment
    , Experiment
    , experiment
    , eInstrumentModel
    , ePlatformUnit
    , eSequencingCenter
    , eLibraryId

    -- ** SearchVariantSetsRequest
    , SearchVariantSetsRequest
    , searchVariantSetsRequest
    , svsrDatasetIds
    , svsrPageToken
    , svsrPageSize

    -- ** SearchVariantsResponse
    , SearchVariantsResponse
    , searchVariantsResponse
    , svrVariants
    , svrNextPageToken

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

    -- ** Program
    , Program
    , program
    , pPrevProgramId
    , pName
    , pVersion
    , pId
    , pCommandLine

    -- ** SearchReferencesRequest
    , SearchReferencesRequest
    , searchReferencesRequest
    , sReferenceSetId
    , sMD5checksums
    , sAccessions
    , sPageToken
    , sPageSize

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

    -- ** ExportReadGroupSetRequest
    , ExportReadGroupSetRequest
    , exportReadGroupSetRequest
    , ergsrReferenceNames
    , ergsrExportURI
    , ergsrProjectId

    -- ** ImportVariantsResponse
    , ImportVariantsResponse
    , importVariantsResponse
    , ivrCallSetIds

    -- ** ListCoverageBucketsResponse
    , ListCoverageBucketsResponse
    , listCoverageBucketsResponse
    , lcbrNextPageToken
    , lcbrBucketWidth
    , lcbrCoverageBuckets

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** ImportReadGroupSetsResponse
    , ImportReadGroupSetsResponse
    , importReadGroupSetsResponse
    , irgsrReadGroupSetIds

    -- ** LinearAlignment
    , LinearAlignment
    , linearAlignment
    , laCigar
    , laMAppingQuality
    , laPosition

    -- ** VariantSet
    , VariantSet
    , variantSet
    , vsDatasetId
    , vsReferenceBounds
    , vsMetadata
    , vsId

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

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
    , ivrVariantSetId
    , ivrFormat
    , ivrNormalizeReferenceNames
    , ivrSourceURIs

    -- ** CigarUnit
    , CigarUnit
    , cigarUnit
    , cuOperation
    , cuOperationLength
    , cuReferenceSequence

    -- ** Policy
    , Policy
    , policy
    , polEtag
    , polVersion
    , polBindings

    -- ** ExportVariantSetRequest
    , ExportVariantSetRequest
    , exportVariantSetRequest
    , evsrBigQueryDataset
    , evsrBigQueryTable
    , evsrFormat
    , evsrCallSetIds
    , evsrProjectId

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omEvents
    , omProjectId
    , omCreateTime
    , omRequest

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

    -- ** CallSetInfo
    , CallSetInfo
    , callSetInfo
    , csiAddtional

    -- ** VariantSetMetadataInfo
    , VariantSetMetadataInfo
    , variantSetMetadataInfo
    , vsmiAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** OperationEvent
    , OperationEvent
    , operationEvent
    , oeDescription

    -- ** ReferenceBound
    , ReferenceBound
    , referenceBound
    , rbUpperBound
    , rbReferenceName

    -- ** UndeleteDatasetRequest
    , UndeleteDatasetRequest
    , undeleteDatasetRequest

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

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
    , rgsiAddtional

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
import           Network.Google.Resource.Genomics.Callsets.Create
import           Network.Google.Resource.Genomics.Callsets.Delete
import           Network.Google.Resource.Genomics.Callsets.Get
import           Network.Google.Resource.Genomics.Callsets.Patch
import           Network.Google.Resource.Genomics.Callsets.Search
import           Network.Google.Resource.Genomics.Datasets.Create
import           Network.Google.Resource.Genomics.Datasets.Delete
import           Network.Google.Resource.Genomics.Datasets.Get
import           Network.Google.Resource.Genomics.Datasets.GetIAMPolicy
import           Network.Google.Resource.Genomics.Datasets.List
import           Network.Google.Resource.Genomics.Datasets.Patch
import           Network.Google.Resource.Genomics.Datasets.SetIAMPolicy
import           Network.Google.Resource.Genomics.Datasets.TestIAMPermissions
import           Network.Google.Resource.Genomics.Datasets.Undelete
import           Network.Google.Resource.Genomics.Operations.Cancel
import           Network.Google.Resource.Genomics.Operations.Delete
import           Network.Google.Resource.Genomics.Operations.Get
import           Network.Google.Resource.Genomics.Operations.List
import           Network.Google.Resource.Genomics.Readgroupsets.Coveragebuckets.List
import           Network.Google.Resource.Genomics.Readgroupsets.Delete
import           Network.Google.Resource.Genomics.Readgroupsets.Export
import           Network.Google.Resource.Genomics.Readgroupsets.Get
import           Network.Google.Resource.Genomics.Readgroupsets.Import
import           Network.Google.Resource.Genomics.Readgroupsets.Patch
import           Network.Google.Resource.Genomics.Readgroupsets.Search
import           Network.Google.Resource.Genomics.Reads.Search
import           Network.Google.Resource.Genomics.References.Bases.List
import           Network.Google.Resource.Genomics.References.Get
import           Network.Google.Resource.Genomics.References.Search
import           Network.Google.Resource.Genomics.Referencesets.Get
import           Network.Google.Resource.Genomics.Referencesets.Search
import           Network.Google.Resource.Genomics.Variants.Create
import           Network.Google.Resource.Genomics.Variants.Delete
import           Network.Google.Resource.Genomics.Variants.Get
import           Network.Google.Resource.Genomics.Variants.Import
import           Network.Google.Resource.Genomics.Variants.Patch
import           Network.Google.Resource.Genomics.Variants.Search
import           Network.Google.Resource.Genomics.Variantsets.Create
import           Network.Google.Resource.Genomics.Variantsets.Delete
import           Network.Google.Resource.Genomics.Variantsets.Export
import           Network.Google.Resource.Genomics.Variantsets.Get
import           Network.Google.Resource.Genomics.Variantsets.Patch
import           Network.Google.Resource.Genomics.Variantsets.Search

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Genomics API service.
type GenomicsAPI =
     VariantsPatchResource :<|> VariantsGetResource :<|>
       VariantsCreateResource
       :<|> VariantsImportResource
       :<|> VariantsSearchResource
       :<|> VariantsDeleteResource
       :<|> ReferencesBasesListResource
       :<|> ReferencesGetResource
       :<|> ReferencesSearchResource
       :<|> VariantsetsExportResource
       :<|> VariantsetsPatchResource
       :<|> VariantsetsGetResource
       :<|> VariantsetsCreateResource
       :<|> VariantsetsSearchResource
       :<|> VariantsetsDeleteResource
       :<|> ReadgroupsetsCoveragebucketsListResource
       :<|> ReadgroupsetsExportResource
       :<|> ReadgroupsetsPatchResource
       :<|> ReadgroupsetsGetResource
       :<|> ReadgroupsetsImportResource
       :<|> ReadgroupsetsSearchResource
       :<|> ReadgroupsetsDeleteResource
       :<|> ReferencesetsGetResource
       :<|> ReferencesetsSearchResource
       :<|> CallsetsPatchResource
       :<|> CallsetsGetResource
       :<|> CallsetsCreateResource
       :<|> CallsetsSearchResource
       :<|> CallsetsDeleteResource
       :<|> OperationsListResource
       :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
       :<|> ReadsSearchResource
       :<|> DatasetsListResource
       :<|> DatasetsUndeleteResource
       :<|> DatasetsGetIAMPolicyResource
       :<|> DatasetsPatchResource
       :<|> DatasetsGetResource
       :<|> DatasetsCreateResource
       :<|> DatasetsSetIAMPolicyResource
       :<|> DatasetsTestIAMPermissionsResource
       :<|> DatasetsDeleteResource
