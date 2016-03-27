{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types
    (
    -- * Service Configuration
      genomicsService

    -- * OAuth Scopes
    , genomicsScope
    , cloudPlatformScope
    , genomicsReadOnlyScope
    , storageReadWriteScope
    , bigQueryScope

    -- * ReadInfo
    , ReadInfo
    , readInfo
    , riAddtional

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

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

    -- * ListBasesResponse
    , ListBasesResponse
    , listBasesResponse
    , lbrNextPageToken
    , lbrOffSet
    , lbrSequence

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * DataSet
    , DataSet
    , dataSet
    , dsName
    , dsId
    , dsProjectId
    , dsCreateTime

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

    -- * VariantCall
    , VariantCall
    , variantCall
    , vcGenotypeLikelihood
    , vcCallSetName
    , vcPhaseset
    , vcCallSetId
    , vcGenotype
    , vcInfo

    -- * MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants
    , mvrVariantSetId

    -- * ReadGroup
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

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * SearchReferenceSetsRequest
    , SearchReferenceSetsRequest
    , searchReferenceSetsRequest
    , srsrMD5checksums
    , srsrAccessions
    , srsrPageToken
    , srsrAssemblyId
    , srsrPageSize

    -- * Empty
    , Empty
    , empty

    -- * SearchReferencesResponse
    , SearchReferencesResponse
    , searchReferencesResponse
    , srrNextPageToken
    , srrReferences

    -- * VariantSetMetadata
    , VariantSetMetadata
    , variantSetMetadata
    , vsmValue
    , vsmKey
    , vsmId
    , vsmType
    , vsmNumber
    , vsmDescription
    , vsmInfo

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

    -- * SearchReadGroupSetsRequest
    , SearchReadGroupSetsRequest
    , searchReadGroupSetsRequest
    , srgsrDataSetIds
    , srgsrName
    , srgsrPageToken
    , srgsrPageSize

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

    -- * VariantCallInfo
    , VariantCallInfo
    , variantCallInfo
    , vciAddtional

    -- * ReadGroupInfo
    , ReadGroupInfo
    , readGroupInfo
    , rgiAddtional

    -- * StreamVariantsResponse
    , StreamVariantsResponse
    , streamVariantsResponse
    , svrVariants

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * StreamReadsResponse
    , StreamReadsResponse
    , streamReadsResponse
    , srrAlignments

    -- * SearchCallSetsResponse
    , SearchCallSetsResponse
    , searchCallSetsResponse
    , scsrNextPageToken
    , scsrCallSets

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

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

    -- * OperationMetadataRequest
    , OperationMetadataRequest
    , operationMetadataRequest
    , omrAddtional

    -- * VariantInfo
    , VariantInfo
    , variantInfo
    , viAddtional

    -- * Experiment
    , Experiment
    , experiment
    , eInstrumentModel
    , ePlatformUnit
    , eSequencingCenter
    , eLibraryId

    -- * SearchVariantSetsRequest
    , SearchVariantSetsRequest
    , searchVariantSetsRequest
    , svsrDataSetIds
    , svsrPageToken
    , svsrPageSize

    -- * SearchVariantsResponse
    , SearchVariantsResponse
    , searchVariantsResponse
    , sVariants
    , sNextPageToken

    -- * StreamReadsRequest
    , StreamReadsRequest
    , streamReadsRequest
    , sShard
    , sReadGroupSetId
    , sTotalShards
    , sStart
    , sReferenceName
    , sEnd
    , sProjectId

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
    , seaNextPageToken
    , seaAlignments

    -- * Program
    , Program
    , program
    , pPrevProgramId
    , pName
    , pVersion
    , pId
    , pCommandLine

    -- * SearchReferencesRequest
    , SearchReferencesRequest
    , searchReferencesRequest
    , sReferenceSetId
    , sMD5checksums
    , sAccessions
    , sPageToken
    , sPageSize

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
    , rgsDataSetId
    , rgsId
    , rgsInfo
    , rgsReadGroups
    , rgsFilename

    -- * ExportReadGroupSetRequest
    , ExportReadGroupSetRequest
    , exportReadGroupSetRequest
    , ergsrReferenceNames
    , ergsrExportURI
    , ergsrProjectId

    -- * ImportVariantsResponse
    , ImportVariantsResponse
    , importVariantsResponse
    , ivrCallSetIds

    -- * ListCoverageBucketsResponse
    , ListCoverageBucketsResponse
    , listCoverageBucketsResponse
    , lcbrNextPageToken
    , lcbrBucketWidth
    , lcbrCoverageBuckets

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * ImportReadGroupSetsResponse
    , ImportReadGroupSetsResponse
    , importReadGroupSetsResponse
    , irgsrReadGroupSetIds

    -- * LinearAlignment
    , LinearAlignment
    , linearAlignment
    , laCigar
    , laMAppingQuality
    , laPosition

    -- * VariantSet
    , VariantSet
    , variantSet
    , vsReferenceSetId
    , vsDataSetId
    , vsReferenceBounds
    , vsMetadata
    , vsId

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ListDataSetsResponse
    , ListDataSetsResponse
    , listDataSetsResponse
    , ldsrNextPageToken
    , ldsrDataSets

    -- * ImportReadGroupSetsRequest
    , ImportReadGroupSetsRequest
    , importReadGroupSetsRequest
    , irgsrReferenceSetId
    , irgsrDataSetId
    , irgsrSourceURIs
    , irgsrPartitionStrategy

    -- * ImportVariantsRequest
    , ImportVariantsRequest
    , importVariantsRequest
    , ivrVariantSetId
    , ivrFormat
    , ivrNormalizeReferenceNames
    , ivrSourceURIs

    -- * CigarUnit
    , CigarUnit
    , cigarUnit
    , cuOperation
    , cuOperationLength
    , cuReferenceSequence

    -- * Policy
    , Policy
    , policy
    , polEtag
    , polVersion
    , polBindings

    -- * ExportVariantSetRequest
    , ExportVariantSetRequest
    , exportVariantSetRequest
    , evsrBigQueryDataSet
    , evsrBigQueryTable
    , evsrFormat
    , evsrCallSetIds
    , evsrProjectId

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omEvents
    , omProjectId
    , omCreateTime
    , omRequest

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

    -- * CallSetInfo
    , CallSetInfo
    , callSetInfo
    , csiAddtional

    -- * VariantSetMetadataInfo
    , VariantSetMetadataInfo
    , variantSetMetadataInfo
    , vsmiAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * OperationEvent
    , OperationEvent
    , operationEvent
    , oeDescription

    -- * StreamVariantsRequest
    , StreamVariantsRequest
    , streamVariantsRequest
    , strVariantSetId
    , strStart
    , strCallSetIds
    , strReferenceName
    , strEnd
    , strProjectId

    -- * ReferenceBound
    , ReferenceBound
    , referenceBound
    , rbUpperBound
    , rbReferenceName

    -- * UndeleteDataSetRequest
    , UndeleteDataSetRequest
    , undeleteDataSetRequest

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole

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
    , rgsiAddtional

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

-- | Default request referring to version 'v1' of the Genomics API. This contains the host and root path used as a starting point for constructing service requests.
genomicsService :: ServiceConfig
genomicsService
  = defaultService (ServiceId "genomics:v1")
      "genomics.googleapis.com"

-- | View and manage Genomics data
genomicsScope :: Proxy '["https://www.googleapis.com/auth/genomics"]
genomicsScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View Genomics data
genomicsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/genomics.readonly"]
genomicsReadOnlyScope = Proxy;

-- | Manage your data in Google Cloud Storage
storageReadWriteScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_write"]
storageReadWriteScope = Proxy;

-- | View and manage your data in Google BigQuery
bigQueryScope :: Proxy '["https://www.googleapis.com/auth/bigquery"]
bigQueryScope = Proxy;
