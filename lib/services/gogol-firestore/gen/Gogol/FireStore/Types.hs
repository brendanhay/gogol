{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FireStore.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FireStore.Types
    (
    -- * Configuration
      fireStoreService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , Datastore'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Aggregation
    , Aggregation (..)
    , newAggregation

    -- ** AggregationResult
    , AggregationResult (..)
    , newAggregationResult

    -- ** AggregationResult_AggregateFields
    , AggregationResult_AggregateFields (..)
    , newAggregationResult_AggregateFields

    -- ** ArrayValue
    , ArrayValue (..)
    , newArrayValue

    -- ** Avg
    , Avg (..)
    , newAvg

    -- ** BatchGetDocumentsRequest
    , BatchGetDocumentsRequest (..)
    , newBatchGetDocumentsRequest

    -- ** BatchGetDocumentsResponse
    , BatchGetDocumentsResponse (..)
    , newBatchGetDocumentsResponse

    -- ** BatchWriteRequest
    , BatchWriteRequest (..)
    , newBatchWriteRequest

    -- ** BatchWriteRequest_Labels
    , BatchWriteRequest_Labels (..)
    , newBatchWriteRequest_Labels

    -- ** BatchWriteResponse
    , BatchWriteResponse (..)
    , newBatchWriteResponse

    -- ** BeginTransactionRequest
    , BeginTransactionRequest (..)
    , newBeginTransactionRequest

    -- ** BeginTransactionResponse
    , BeginTransactionResponse (..)
    , newBeginTransactionResponse

    -- ** BitSequence
    , BitSequence (..)
    , newBitSequence

    -- ** BloomFilter
    , BloomFilter (..)
    , newBloomFilter

    -- ** CollectionSelector
    , CollectionSelector (..)
    , newCollectionSelector

    -- ** CommitRequest
    , CommitRequest (..)
    , newCommitRequest

    -- ** CommitResponse
    , CommitResponse (..)
    , newCommitResponse

    -- ** CompositeFilter
    , CompositeFilter (..)
    , newCompositeFilter

    -- ** CompositeFilter_Op
    , CompositeFilter_Op (..)

    -- ** Count
    , Count (..)
    , newCount

    -- ** Cursor
    , Cursor (..)
    , newCursor

    -- ** Document
    , Document (..)
    , newDocument

    -- ** Document_Fields
    , Document_Fields (..)
    , newDocument_Fields

    -- ** DocumentChange
    , DocumentChange (..)
    , newDocumentChange

    -- ** DocumentDelete
    , DocumentDelete (..)
    , newDocumentDelete

    -- ** DocumentMask
    , DocumentMask (..)
    , newDocumentMask

    -- ** DocumentRemove
    , DocumentRemove (..)
    , newDocumentRemove

    -- ** DocumentTransform
    , DocumentTransform (..)
    , newDocumentTransform

    -- ** DocumentsTarget
    , DocumentsTarget (..)
    , newDocumentsTarget

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** ExecutionStats
    , ExecutionStats (..)
    , newExecutionStats

    -- ** ExecutionStats_DebugStats
    , ExecutionStats_DebugStats (..)
    , newExecutionStats_DebugStats

    -- ** ExistenceFilter
    , ExistenceFilter (..)
    , newExistenceFilter

    -- ** ExplainMetrics
    , ExplainMetrics (..)
    , newExplainMetrics

    -- ** ExplainOptions
    , ExplainOptions (..)
    , newExplainOptions

    -- ** FieldFilter
    , FieldFilter (..)
    , newFieldFilter

    -- ** FieldFilter_Op
    , FieldFilter_Op (..)

    -- ** FieldReference
    , FieldReference (..)
    , newFieldReference

    -- ** FieldTransform
    , FieldTransform (..)
    , newFieldTransform

    -- ** FieldTransform_SetToServerValue
    , FieldTransform_SetToServerValue (..)

    -- ** Filter
    , Filter (..)
    , newFilter

    -- ** FindNearest
    , FindNearest (..)
    , newFindNearest

    -- ** FindNearest_DistanceMeasure
    , FindNearest_DistanceMeasure (..)

    -- ** GoogleFirestoreAdminV1Backup
    , GoogleFirestoreAdminV1Backup (..)
    , newGoogleFirestoreAdminV1Backup

    -- ** GoogleFirestoreAdminV1Backup_State
    , GoogleFirestoreAdminV1Backup_State (..)

    -- ** GoogleFirestoreAdminV1BackupSchedule
    , GoogleFirestoreAdminV1BackupSchedule (..)
    , newGoogleFirestoreAdminV1BackupSchedule

    -- ** GoogleFirestoreAdminV1BackupSource
    , GoogleFirestoreAdminV1BackupSource (..)
    , newGoogleFirestoreAdminV1BackupSource

    -- ** GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata
    , GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata (..)
    , newGoogleFirestoreAdminV1BulkDeleteDocumentsMetadata

    -- ** GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState
    , GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata_OperationState (..)

    -- ** GoogleFirestoreAdminV1BulkDeleteDocumentsRequest
    , GoogleFirestoreAdminV1BulkDeleteDocumentsRequest (..)
    , newGoogleFirestoreAdminV1BulkDeleteDocumentsRequest

    -- ** GoogleFirestoreAdminV1CmekConfig
    , GoogleFirestoreAdminV1CmekConfig (..)
    , newGoogleFirestoreAdminV1CmekConfig

    -- ** GoogleFirestoreAdminV1CreateDatabaseMetadata
    , GoogleFirestoreAdminV1CreateDatabaseMetadata (..)
    , newGoogleFirestoreAdminV1CreateDatabaseMetadata

    -- ** GoogleFirestoreAdminV1CustomerManagedEncryptionOptions
    , GoogleFirestoreAdminV1CustomerManagedEncryptionOptions (..)
    , newGoogleFirestoreAdminV1CustomerManagedEncryptionOptions

    -- ** GoogleFirestoreAdminV1DailyRecurrence
    , GoogleFirestoreAdminV1DailyRecurrence (..)
    , newGoogleFirestoreAdminV1DailyRecurrence

    -- ** GoogleFirestoreAdminV1Database
    , GoogleFirestoreAdminV1Database (..)
    , newGoogleFirestoreAdminV1Database

    -- ** GoogleFirestoreAdminV1Database_AppEngineIntegrationMode
    , GoogleFirestoreAdminV1Database_AppEngineIntegrationMode (..)

    -- ** GoogleFirestoreAdminV1Database_ConcurrencyMode
    , GoogleFirestoreAdminV1Database_ConcurrencyMode (..)

    -- ** GoogleFirestoreAdminV1Database_DeleteProtectionState
    , GoogleFirestoreAdminV1Database_DeleteProtectionState (..)

    -- ** GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement
    , GoogleFirestoreAdminV1Database_PointInTimeRecoveryEnablement (..)

    -- ** GoogleFirestoreAdminV1Database_Type
    , GoogleFirestoreAdminV1Database_Type (..)

    -- ** GoogleFirestoreAdminV1DeleteDatabaseMetadata
    , GoogleFirestoreAdminV1DeleteDatabaseMetadata (..)
    , newGoogleFirestoreAdminV1DeleteDatabaseMetadata

    -- ** GoogleFirestoreAdminV1EncryptionConfig
    , GoogleFirestoreAdminV1EncryptionConfig (..)
    , newGoogleFirestoreAdminV1EncryptionConfig

    -- ** GoogleFirestoreAdminV1ExportDocumentsMetadata
    , GoogleFirestoreAdminV1ExportDocumentsMetadata (..)
    , newGoogleFirestoreAdminV1ExportDocumentsMetadata

    -- ** GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState
    , GoogleFirestoreAdminV1ExportDocumentsMetadata_OperationState (..)

    -- ** GoogleFirestoreAdminV1ExportDocumentsRequest
    , GoogleFirestoreAdminV1ExportDocumentsRequest (..)
    , newGoogleFirestoreAdminV1ExportDocumentsRequest

    -- ** GoogleFirestoreAdminV1ExportDocumentsResponse
    , GoogleFirestoreAdminV1ExportDocumentsResponse (..)
    , newGoogleFirestoreAdminV1ExportDocumentsResponse

    -- ** GoogleFirestoreAdminV1Field
    , GoogleFirestoreAdminV1Field (..)
    , newGoogleFirestoreAdminV1Field

    -- ** GoogleFirestoreAdminV1FieldOperationMetadata
    , GoogleFirestoreAdminV1FieldOperationMetadata (..)
    , newGoogleFirestoreAdminV1FieldOperationMetadata

    -- ** GoogleFirestoreAdminV1FieldOperationMetadata_State
    , GoogleFirestoreAdminV1FieldOperationMetadata_State (..)

    -- ** GoogleFirestoreAdminV1FlatIndex
    , GoogleFirestoreAdminV1FlatIndex (..)
    , newGoogleFirestoreAdminV1FlatIndex

    -- ** GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions
    , GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions (..)
    , newGoogleFirestoreAdminV1GoogleDefaultEncryptionOptions

    -- ** GoogleFirestoreAdminV1ImportDocumentsMetadata
    , GoogleFirestoreAdminV1ImportDocumentsMetadata (..)
    , newGoogleFirestoreAdminV1ImportDocumentsMetadata

    -- ** GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState
    , GoogleFirestoreAdminV1ImportDocumentsMetadata_OperationState (..)

    -- ** GoogleFirestoreAdminV1ImportDocumentsRequest
    , GoogleFirestoreAdminV1ImportDocumentsRequest (..)
    , newGoogleFirestoreAdminV1ImportDocumentsRequest

    -- ** GoogleFirestoreAdminV1Index
    , GoogleFirestoreAdminV1Index (..)
    , newGoogleFirestoreAdminV1Index

    -- ** GoogleFirestoreAdminV1Index_ApiScope
    , GoogleFirestoreAdminV1Index_ApiScope (..)

    -- ** GoogleFirestoreAdminV1Index_QueryScope
    , GoogleFirestoreAdminV1Index_QueryScope (..)

    -- ** GoogleFirestoreAdminV1Index_State
    , GoogleFirestoreAdminV1Index_State (..)

    -- ** GoogleFirestoreAdminV1IndexConfig
    , GoogleFirestoreAdminV1IndexConfig (..)
    , newGoogleFirestoreAdminV1IndexConfig

    -- ** GoogleFirestoreAdminV1IndexConfigDelta
    , GoogleFirestoreAdminV1IndexConfigDelta (..)
    , newGoogleFirestoreAdminV1IndexConfigDelta

    -- ** GoogleFirestoreAdminV1IndexConfigDelta_ChangeType
    , GoogleFirestoreAdminV1IndexConfigDelta_ChangeType (..)

    -- ** GoogleFirestoreAdminV1IndexField
    , GoogleFirestoreAdminV1IndexField (..)
    , newGoogleFirestoreAdminV1IndexField

    -- ** GoogleFirestoreAdminV1IndexField_ArrayConfig
    , GoogleFirestoreAdminV1IndexField_ArrayConfig (..)

    -- ** GoogleFirestoreAdminV1IndexField_Order
    , GoogleFirestoreAdminV1IndexField_Order (..)

    -- ** GoogleFirestoreAdminV1IndexOperationMetadata
    , GoogleFirestoreAdminV1IndexOperationMetadata (..)
    , newGoogleFirestoreAdminV1IndexOperationMetadata

    -- ** GoogleFirestoreAdminV1IndexOperationMetadata_State
    , GoogleFirestoreAdminV1IndexOperationMetadata_State (..)

    -- ** GoogleFirestoreAdminV1ListBackupSchedulesResponse
    , GoogleFirestoreAdminV1ListBackupSchedulesResponse (..)
    , newGoogleFirestoreAdminV1ListBackupSchedulesResponse

    -- ** GoogleFirestoreAdminV1ListBackupsResponse
    , GoogleFirestoreAdminV1ListBackupsResponse (..)
    , newGoogleFirestoreAdminV1ListBackupsResponse

    -- ** GoogleFirestoreAdminV1ListDatabasesResponse
    , GoogleFirestoreAdminV1ListDatabasesResponse (..)
    , newGoogleFirestoreAdminV1ListDatabasesResponse

    -- ** GoogleFirestoreAdminV1ListFieldsResponse
    , GoogleFirestoreAdminV1ListFieldsResponse (..)
    , newGoogleFirestoreAdminV1ListFieldsResponse

    -- ** GoogleFirestoreAdminV1ListIndexesResponse
    , GoogleFirestoreAdminV1ListIndexesResponse (..)
    , newGoogleFirestoreAdminV1ListIndexesResponse

    -- ** GoogleFirestoreAdminV1LocationMetadata
    , GoogleFirestoreAdminV1LocationMetadata (..)
    , newGoogleFirestoreAdminV1LocationMetadata

    -- ** GoogleFirestoreAdminV1Progress
    , GoogleFirestoreAdminV1Progress (..)
    , newGoogleFirestoreAdminV1Progress

    -- ** GoogleFirestoreAdminV1RestoreDatabaseMetadata
    , GoogleFirestoreAdminV1RestoreDatabaseMetadata (..)
    , newGoogleFirestoreAdminV1RestoreDatabaseMetadata

    -- ** GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState
    , GoogleFirestoreAdminV1RestoreDatabaseMetadata_OperationState (..)

    -- ** GoogleFirestoreAdminV1RestoreDatabaseRequest
    , GoogleFirestoreAdminV1RestoreDatabaseRequest (..)
    , newGoogleFirestoreAdminV1RestoreDatabaseRequest

    -- ** GoogleFirestoreAdminV1SourceEncryptionOptions
    , GoogleFirestoreAdminV1SourceEncryptionOptions (..)
    , newGoogleFirestoreAdminV1SourceEncryptionOptions

    -- ** GoogleFirestoreAdminV1SourceInfo
    , GoogleFirestoreAdminV1SourceInfo (..)
    , newGoogleFirestoreAdminV1SourceInfo

    -- ** GoogleFirestoreAdminV1Stats
    , GoogleFirestoreAdminV1Stats (..)
    , newGoogleFirestoreAdminV1Stats

    -- ** GoogleFirestoreAdminV1TtlConfig
    , GoogleFirestoreAdminV1TtlConfig (..)
    , newGoogleFirestoreAdminV1TtlConfig

    -- ** GoogleFirestoreAdminV1TtlConfig_State
    , GoogleFirestoreAdminV1TtlConfig_State (..)

    -- ** GoogleFirestoreAdminV1TtlConfigDelta
    , GoogleFirestoreAdminV1TtlConfigDelta (..)
    , newGoogleFirestoreAdminV1TtlConfigDelta

    -- ** GoogleFirestoreAdminV1TtlConfigDelta_ChangeType
    , GoogleFirestoreAdminV1TtlConfigDelta_ChangeType (..)

    -- ** GoogleFirestoreAdminV1UpdateDatabaseMetadata
    , GoogleFirestoreAdminV1UpdateDatabaseMetadata (..)
    , newGoogleFirestoreAdminV1UpdateDatabaseMetadata

    -- ** GoogleFirestoreAdminV1VectorConfig
    , GoogleFirestoreAdminV1VectorConfig (..)
    , newGoogleFirestoreAdminV1VectorConfig

    -- ** GoogleFirestoreAdminV1WeeklyRecurrence
    , GoogleFirestoreAdminV1WeeklyRecurrence (..)
    , newGoogleFirestoreAdminV1WeeklyRecurrence

    -- ** GoogleFirestoreAdminV1WeeklyRecurrence_Day
    , GoogleFirestoreAdminV1WeeklyRecurrence_Day (..)

    -- ** GoogleLongrunningCancelOperationRequest
    , GoogleLongrunningCancelOperationRequest (..)
    , newGoogleLongrunningCancelOperationRequest

    -- ** GoogleLongrunningListOperationsResponse
    , GoogleLongrunningListOperationsResponse (..)
    , newGoogleLongrunningListOperationsResponse

    -- ** GoogleLongrunningOperation
    , GoogleLongrunningOperation (..)
    , newGoogleLongrunningOperation

    -- ** GoogleLongrunningOperation_Metadata
    , GoogleLongrunningOperation_Metadata (..)
    , newGoogleLongrunningOperation_Metadata

    -- ** GoogleLongrunningOperation_Response
    , GoogleLongrunningOperation_Response (..)
    , newGoogleLongrunningOperation_Response

    -- ** LatLng
    , LatLng (..)
    , newLatLng

    -- ** ListCollectionIdsRequest
    , ListCollectionIdsRequest (..)
    , newListCollectionIdsRequest

    -- ** ListCollectionIdsResponse
    , ListCollectionIdsResponse (..)
    , newListCollectionIdsResponse

    -- ** ListDocumentsResponse
    , ListDocumentsResponse (..)
    , newListDocumentsResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListenRequest
    , ListenRequest (..)
    , newListenRequest

    -- ** ListenRequest_Labels
    , ListenRequest_Labels (..)
    , newListenRequest_Labels

    -- ** ListenResponse
    , ListenResponse (..)
    , newListenResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** MapValue
    , MapValue (..)
    , newMapValue

    -- ** MapValue_Fields
    , MapValue_Fields (..)
    , newMapValue_Fields

    -- ** Order
    , Order (..)
    , newOrder

    -- ** Order_Direction
    , Order_Direction (..)

    -- ** PartitionQueryRequest
    , PartitionQueryRequest (..)
    , newPartitionQueryRequest

    -- ** PartitionQueryResponse
    , PartitionQueryResponse (..)
    , newPartitionQueryResponse

    -- ** PlanSummary
    , PlanSummary (..)
    , newPlanSummary

    -- ** PlanSummary_IndexesUsedItem
    , PlanSummary_IndexesUsedItem (..)
    , newPlanSummary_IndexesUsedItem

    -- ** Precondition
    , Precondition (..)
    , newPrecondition

    -- ** Projection
    , Projection (..)
    , newProjection

    -- ** QueryTarget
    , QueryTarget (..)
    , newQueryTarget

    -- ** ReadOnly
    , ReadOnly (..)
    , newReadOnly

    -- ** ReadWrite
    , ReadWrite (..)
    , newReadWrite

    -- ** RollbackRequest
    , RollbackRequest (..)
    , newRollbackRequest

    -- ** RunAggregationQueryRequest
    , RunAggregationQueryRequest (..)
    , newRunAggregationQueryRequest

    -- ** RunAggregationQueryResponse
    , RunAggregationQueryResponse (..)
    , newRunAggregationQueryResponse

    -- ** RunQueryRequest
    , RunQueryRequest (..)
    , newRunQueryRequest

    -- ** RunQueryResponse
    , RunQueryResponse (..)
    , newRunQueryResponse

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StructuredAggregationQuery
    , StructuredAggregationQuery (..)
    , newStructuredAggregationQuery

    -- ** StructuredQuery
    , StructuredQuery (..)
    , newStructuredQuery

    -- ** Sum
    , Sum (..)
    , newSum

    -- ** Target
    , Target (..)
    , newTarget

    -- ** TargetChange
    , TargetChange (..)
    , newTargetChange

    -- ** TargetChange_TargetChangeType
    , TargetChange_TargetChangeType (..)

    -- ** TransactionOptions
    , TransactionOptions (..)
    , newTransactionOptions

    -- ** UnaryFilter
    , UnaryFilter (..)
    , newUnaryFilter

    -- ** UnaryFilter_Op
    , UnaryFilter_Op (..)

    -- ** Value
    , Value (..)
    , newValue

    -- ** Value_NullValue
    , Value_NullValue (..)

    -- ** Write
    , Write (..)
    , newWrite

    -- ** WriteRequest
    , WriteRequest (..)
    , newWriteRequest

    -- ** WriteRequest_Labels
    , WriteRequest_Labels (..)
    , newWriteRequest_Labels

    -- ** WriteResponse
    , WriteResponse (..)
    , newWriteResponse

    -- ** WriteResult
    , WriteResult (..)
    , newWriteResult
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FireStore.Internal.Product
import Gogol.FireStore.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Firestore API. This contains the host and root path used as a starting point for constructing service requests.
fireStoreService :: Core.ServiceConfig
fireStoreService
  = Core.defaultService (Core.ServiceId "firestore:v1")
      "firestore.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View and manage your Google Cloud Datastore data
type Datastore'FullControl = "https://www.googleapis.com/auth/datastore"
