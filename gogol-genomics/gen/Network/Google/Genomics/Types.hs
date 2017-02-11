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

    -- * ImportVariantsRequestInfoMergeConfig
    , ImportVariantsRequestInfoMergeConfig
    , importVariantsRequestInfoMergeConfig
    , ivrimcAddtional

    -- * ReadInfo
    , ReadInfo
    , readInfo
    , riAddtional

    -- * Exon
    , Exon
    , exon
    , eStart
    , eEnd
    , eFrame

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
    , aStart
    , aReverseStrand
    , aReferenceId
    , aReferenceName
    , aName
    , aEnd
    , aId
    , aType
    , aTranscript
    , aInfo

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

    -- * OperationMetadataLabels
    , OperationMetadataLabels
    , operationMetadataLabels
    , omlAddtional

    -- * VariantCall
    , VariantCall
    , variantCall
    , vcGenotypeLikelihood
    , vcCallSetName
    , vcPhaseset
    , vcCallSetId
    , vcGenotype
    , vcInfo

    -- * BatchCreateAnnotationsRequest
    , BatchCreateAnnotationsRequest
    , batchCreateAnnotationsRequest
    , bcarAnnotations
    , bcarRequestId

    -- * MergeVariantsRequest
    , MergeVariantsRequest
    , mergeVariantsRequest
    , mvrVariants
    , mvrVariantSetId
    , mvrInfoMergeConfig

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

    -- * AnnotationSetType
    , AnnotationSetType (..)

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

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

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

    -- * MergeVariantsRequestInfoMergeConfig
    , MergeVariantsRequestInfoMergeConfig
    , mergeVariantsRequestInfoMergeConfig
    , mvrimcAddtional

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

    -- * AnnotationInfo
    , AnnotationInfo
    , annotationInfo
    , aiAddtional

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
    , sasrDataSetIds
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

    -- * OperationMetadataRuntimeMetadata
    , OperationMetadataRuntimeMetadata
    , operationMetadataRuntimeMetadata
    , omrmAddtional

    -- * ClinicalCondition
    , ClinicalCondition
    , clinicalCondition
    , ccExternalIds
    , ccNames
    , ccConceptId
    , ccOmimId

    -- * SearchCallSetsRequest
    , SearchCallSetsRequest
    , searchCallSetsRequest
    , scsrName
    , scsrPageToken
    , scsrVariantSetIds
    , scsrPageSize

    -- * Entry
    , Entry
    , entry
    , eStatus
    , eAnnotation

    -- * SearchReadsResponse
    , SearchReadsResponse
    , searchReadsResponse
    , sNextPageToken
    , sAlignments

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

    -- * BatchCreateAnnotationsResponse
    , BatchCreateAnnotationsResponse
    , batchCreateAnnotationsResponse
    , bcarEntries

    -- * CodingSequence
    , CodingSequence
    , codingSequence
    , csStart
    , csEnd

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
    , rgsDataSetId
    , rgsId
    , rgsInfo
    , rgsReadGroups
    , rgsFilename

    -- * Xgafv
    , Xgafv (..)

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

    -- * AnnotationSet
    , AnnotationSet
    , annotationSet
    , asReferenceSetId
    , asName
    , asDataSetId
    , asId
    , asType
    , asSourceURI
    , asInfo

    -- * VariantSet
    , VariantSet
    , variantSet
    , vsReferenceSetId
    , vsName
    , vsDataSetId
    , vsReferenceBounds
    , vsMetadata
    , vsId
    , vsDescription

    -- * CigarUnitOperation
    , CigarUnitOperation (..)

    -- * VariantSetMetadataType
    , VariantSetMetadataType (..)

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
    , ivrInfoMergeConfig
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

    -- * VariantAnnotationType
    , VariantAnnotationType (..)

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omClientId
    , omStartTime
    , omEvents
    , omEndTime
    , omLabels
    , omProjectId
    , omCreateTime
    , omRuntimeMetadata
    , omRequest

    -- * ImportVariantsRequestFormat
    , ImportVariantsRequestFormat (..)

    -- * SearchAnnotationsRequest
    , SearchAnnotationsRequest
    , searchAnnotationsRequest
    , sarStart
    , sarReferenceId
    , sarReferenceName
    , sarEnd
    , sarPageToken
    , sarAnnotationSetIds
    , sarPageSize

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
    , asiAddtional

    -- * ComputeEngine
    , ComputeEngine
    , computeEngine
    , ceZone
    , ceDiskNames
    , ceMachineType
    , ceInstanceName

    -- * SearchAnnotationSetsResponse
    , SearchAnnotationSetsResponse
    , searchAnnotationSetsResponse
    , sasrNextPageToken
    , sasrAnnotationSets

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

    -- * Transcript
    , Transcript
    , transcript
    , tGeneId
    , tCodingSequence
    , tExons

    -- * OperationEvent
    , OperationEvent
    , operationEvent
    , oeStartTime
    , oeEndTime
    , oeDescription

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

    -- * RuntimeMetadata
    , RuntimeMetadata
    , runtimeMetadata
    , rmComputeEngine

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
