{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Genomics
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores, processes, explores and shares genomic data. This API implements
-- the Global Alliance for Genomics and Health (GA4GH) v0.5.1 API as well
-- as several extensions.
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference>
module Network.Google.Genomics
    (
    -- * Service Configuration
      genomicsService

    -- * OAuth Scopes
    , authGenomicsScope
    , authCloudPlatformScope
    , authGenomicsReadonlyScope
    , authDevstorageReadWriteScope
    , authBigqueryScope

    -- * API Declaration
    , GenomicsAPI

    -- * Resources

    -- ** genomics.callsets.create
    , module Network.Google.Resource.Genomics.CallSets.Create

    -- ** genomics.callsets.delete
    , module Network.Google.Resource.Genomics.CallSets.Delete

    -- ** genomics.callsets.get
    , module Network.Google.Resource.Genomics.CallSets.Get

    -- ** genomics.callsets.patch
    , module Network.Google.Resource.Genomics.CallSets.Patch

    -- ** genomics.callsets.search
    , module Network.Google.Resource.Genomics.CallSets.Search

    -- ** genomics.datasets.create
    , module Network.Google.Resource.Genomics.DataSets.Create

    -- ** genomics.datasets.delete
    , module Network.Google.Resource.Genomics.DataSets.Delete

    -- ** genomics.datasets.get
    , module Network.Google.Resource.Genomics.DataSets.Get

    -- ** genomics.datasets.getIamPolicy
    , module Network.Google.Resource.Genomics.DataSets.GetIAMPolicy

    -- ** genomics.datasets.list
    , module Network.Google.Resource.Genomics.DataSets.List

    -- ** genomics.datasets.patch
    , module Network.Google.Resource.Genomics.DataSets.Patch

    -- ** genomics.datasets.setIamPolicy
    , module Network.Google.Resource.Genomics.DataSets.SetIAMPolicy

    -- ** genomics.datasets.testIamPermissions
    , module Network.Google.Resource.Genomics.DataSets.TestIAMPermissions

    -- ** genomics.datasets.undelete
    , module Network.Google.Resource.Genomics.DataSets.Undelete

    -- ** genomics.operations.cancel
    , module Network.Google.Resource.Genomics.Operations.Cancel

    -- ** genomics.operations.get
    , module Network.Google.Resource.Genomics.Operations.Get

    -- ** genomics.operations.list
    , module Network.Google.Resource.Genomics.Operations.List

    -- ** genomics.readgroupsets.coveragebuckets.list
    , module Network.Google.Resource.Genomics.ReadGroupSets.CoverageBuckets.List

    -- ** genomics.readgroupsets.delete
    , module Network.Google.Resource.Genomics.ReadGroupSets.Delete

    -- ** genomics.readgroupsets.export
    , module Network.Google.Resource.Genomics.ReadGroupSets.Export

    -- ** genomics.readgroupsets.get
    , module Network.Google.Resource.Genomics.ReadGroupSets.Get

    -- ** genomics.readgroupsets.import
    , module Network.Google.Resource.Genomics.ReadGroupSets.Import

    -- ** genomics.readgroupsets.patch
    , module Network.Google.Resource.Genomics.ReadGroupSets.Patch

    -- ** genomics.readgroupsets.search
    , module Network.Google.Resource.Genomics.ReadGroupSets.Search

    -- ** genomics.reads.search
    , module Network.Google.Resource.Genomics.Reads.Search

    -- ** genomics.reads.stream
    , module Network.Google.Resource.Genomics.Reads.Stream

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

    -- ** genomics.variants.merge
    , module Network.Google.Resource.Genomics.Variants.Merge

    -- ** genomics.variants.patch
    , module Network.Google.Resource.Genomics.Variants.Patch

    -- ** genomics.variants.search
    , module Network.Google.Resource.Genomics.Variants.Search

    -- ** genomics.variants.stream
    , module Network.Google.Resource.Genomics.Variants.Stream

    -- ** genomics.variantsets.create
    , module Network.Google.Resource.Genomics.VariantSets.Create

    -- ** genomics.variantsets.delete
    , module Network.Google.Resource.Genomics.VariantSets.Delete

    -- ** genomics.variantsets.export
    , module Network.Google.Resource.Genomics.VariantSets.Export

    -- ** genomics.variantsets.get
    , module Network.Google.Resource.Genomics.VariantSets.Get

    -- ** genomics.variantsets.patch
    , module Network.Google.Resource.Genomics.VariantSets.Patch

    -- ** genomics.variantsets.search
    , module Network.Google.Resource.Genomics.VariantSets.Search

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
    , lbrOffSet
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

    -- ** DataSet
    , DataSet
    , dataSet
    , dsName
    , dsId
    , dsProjectId
    , dsCreateTime

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

    -- ** MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants
    , mvrVariantSetId

    -- ** ReadGroup
    , ReadGroup
    , readGroup
    , reaReferenceSetId
    , reaPrograms
    , reaExperiment
    , reaName
    , reaDataSetId
    , reaId
    , reaSampleId
    , reaPredictedInsertSize
    , reaDescription
    , reaInfo

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
    , srgsrDataSetIds
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

    -- ** StreamVariantsResponse
    , StreamVariantsResponse
    , streamVariantsResponse
    , svrVariants

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** StreamReadsResponse
    , StreamReadsResponse
    , streamReadsResponse
    , srrAlignments

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
    , svsrDataSetIds
    , svsrPageToken
    , svsrPageSize

    -- ** SearchVariantsResponse
    , SearchVariantsResponse
    , searchVariantsResponse
    , sVariants
    , sNextPageToken

    -- ** StreamReadsRequest
    , StreamReadsRequest
    , streamReadsRequest
    , sShard
    , sReadGroupSetId
    , sTotalShards
    , sStart
    , sReferenceName
    , sEnd
    , sProjectId

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
    , seaNextPageToken
    , seaAlignments

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
    , rgsDataSetId
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
    , vsReferenceSetId
    , vsDataSetId
    , vsReferenceBounds
    , vsMetadata
    , vsId

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** ListDataSetsResponse
    , ListDataSetsResponse
    , listDataSetsResponse
    , ldsrNextPageToken
    , ldsrDataSets

    -- ** ImportReadGroupSetsRequest
    , ImportReadGroupSetsRequest
    , importReadGroupSetsRequest
    , irgsrReferenceSetId
    , irgsrDataSetId
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
    , evsrBigQueryDataSet
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

    -- ** StreamVariantsRequest
    , StreamVariantsRequest
    , streamVariantsRequest
    , strVariantSetId
    , strStart
    , strCallSetIds
    , strReferenceName
    , strEnd
    , strProjectId

    -- ** ReferenceBound
    , ReferenceBound
    , referenceBound
    , rbUpperBound
    , rbReferenceName

    -- ** UndeleteDataSetRequest
    , UndeleteDataSetRequest
    , undeleteDataSetRequest

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
import           Network.Google.Resource.Genomics.CallSets.Create
import           Network.Google.Resource.Genomics.CallSets.Delete
import           Network.Google.Resource.Genomics.CallSets.Get
import           Network.Google.Resource.Genomics.CallSets.Patch
import           Network.Google.Resource.Genomics.CallSets.Search
import           Network.Google.Resource.Genomics.DataSets.Create
import           Network.Google.Resource.Genomics.DataSets.Delete
import           Network.Google.Resource.Genomics.DataSets.Get
import           Network.Google.Resource.Genomics.DataSets.GetIAMPolicy
import           Network.Google.Resource.Genomics.DataSets.List
import           Network.Google.Resource.Genomics.DataSets.Patch
import           Network.Google.Resource.Genomics.DataSets.SetIAMPolicy
import           Network.Google.Resource.Genomics.DataSets.TestIAMPermissions
import           Network.Google.Resource.Genomics.DataSets.Undelete
import           Network.Google.Resource.Genomics.Operations.Cancel
import           Network.Google.Resource.Genomics.Operations.Get
import           Network.Google.Resource.Genomics.Operations.List
import           Network.Google.Resource.Genomics.ReadGroupSets.CoverageBuckets.List
import           Network.Google.Resource.Genomics.ReadGroupSets.Delete
import           Network.Google.Resource.Genomics.ReadGroupSets.Export
import           Network.Google.Resource.Genomics.ReadGroupSets.Get
import           Network.Google.Resource.Genomics.ReadGroupSets.Import
import           Network.Google.Resource.Genomics.ReadGroupSets.Patch
import           Network.Google.Resource.Genomics.ReadGroupSets.Search
import           Network.Google.Resource.Genomics.Reads.Search
import           Network.Google.Resource.Genomics.Reads.Stream
import           Network.Google.Resource.Genomics.References.Bases.List
import           Network.Google.Resource.Genomics.References.Get
import           Network.Google.Resource.Genomics.References.Search
import           Network.Google.Resource.Genomics.Referencesets.Get
import           Network.Google.Resource.Genomics.Referencesets.Search
import           Network.Google.Resource.Genomics.Variants.Create
import           Network.Google.Resource.Genomics.Variants.Delete
import           Network.Google.Resource.Genomics.Variants.Get
import           Network.Google.Resource.Genomics.Variants.Import
import           Network.Google.Resource.Genomics.Variants.Merge
import           Network.Google.Resource.Genomics.Variants.Patch
import           Network.Google.Resource.Genomics.Variants.Search
import           Network.Google.Resource.Genomics.Variants.Stream
import           Network.Google.Resource.Genomics.VariantSets.Create
import           Network.Google.Resource.Genomics.VariantSets.Delete
import           Network.Google.Resource.Genomics.VariantSets.Export
import           Network.Google.Resource.Genomics.VariantSets.Get
import           Network.Google.Resource.Genomics.VariantSets.Patch
import           Network.Google.Resource.Genomics.VariantSets.Search

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Genomics API service.
type GenomicsAPI =
     VariantsStreamResource :<|> VariantsPatchResource
       :<|> VariantsGetResource
       :<|> VariantsCreateResource
       :<|> VariantsImportResource
       :<|> VariantsMergeResource
       :<|> VariantsSearchResource
       :<|> VariantsDeleteResource
       :<|> ReferencesBasesListResource
       :<|> ReferencesGetResource
       :<|> ReferencesSearchResource
       :<|> VariantSetsExportResource
       :<|> VariantSetsPatchResource
       :<|> VariantSetsGetResource
       :<|> VariantSetsCreateResource
       :<|> VariantSetsSearchResource
       :<|> VariantSetsDeleteResource
       :<|> ReadGroupSetsCoverageBucketsListResource
       :<|> ReadGroupSetsExportResource
       :<|> ReadGroupSetsPatchResource
       :<|> ReadGroupSetsGetResource
       :<|> ReadGroupSetsImportResource
       :<|> ReadGroupSetsSearchResource
       :<|> ReadGroupSetsDeleteResource
       :<|> ReferencesetsGetResource
       :<|> ReferencesetsSearchResource
       :<|> CallSetsPatchResource
       :<|> CallSetsGetResource
       :<|> CallSetsCreateResource
       :<|> CallSetsSearchResource
       :<|> CallSetsDeleteResource
       :<|> OperationsListResource
       :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> ReadsStreamResource
       :<|> ReadsSearchResource
       :<|> DataSetsListResource
       :<|> DataSetsUndeleteResource
       :<|> DataSetsGetIAMPolicyResource
       :<|> DataSetsPatchResource
       :<|> DataSetsGetResource
       :<|> DataSetsCreateResource
       :<|> DataSetsSetIAMPolicyResource
       :<|> DataSetsTestIAMPermissionsResource
       :<|> DataSetsDeleteResource
