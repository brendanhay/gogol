{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.PubSub.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PubSub.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AwsKinesis_State
    AwsKinesis_State
      ( AwsKinesis_State_STATEUNSPECIFIED,
        AwsKinesis_State_Active,
        AwsKinesis_State_KINESISPERMISSIONDENIED,
        AwsKinesis_State_PUBLISHPERMISSIONDENIED,
        AwsKinesis_State_STREAMNOTFOUND,
        AwsKinesis_State_CONSUMERNOTFOUND,
        ..
      ),

    -- * AwsMsk_State
    AwsMsk_State
      ( AwsMsk_State_STATEUNSPECIFIED,
        AwsMsk_State_Active,
        AwsMsk_State_MSKPERMISSIONDENIED,
        AwsMsk_State_PUBLISHPERMISSIONDENIED,
        AwsMsk_State_CLUSTERNOTFOUND,
        AwsMsk_State_TOPICNOTFOUND,
        ..
      ),

    -- * AzureEventHubs_State
    AzureEventHubs_State
      ( AzureEventHubs_State_STATEUNSPECIFIED,
        AzureEventHubs_State_Active,
        AzureEventHubs_State_EVENTHUBSPERMISSIONDENIED,
        AzureEventHubs_State_PUBLISHPERMISSIONDENIED,
        AzureEventHubs_State_NAMESPACENOTFOUND,
        AzureEventHubs_State_EVENTHUBNOTFOUND,
        AzureEventHubs_State_SUBSCRIPTIONNOTFOUND,
        AzureEventHubs_State_RESOURCEGROUPNOTFOUND,
        ..
      ),

    -- * BigQueryConfig_State
    BigQueryConfig_State
      ( BigQueryConfig_State_STATEUNSPECIFIED,
        BigQueryConfig_State_Active,
        BigQueryConfig_State_PERMISSIONDENIED,
        BigQueryConfig_State_NOTFOUND,
        BigQueryConfig_State_SCHEMAMISMATCH,
        BigQueryConfig_State_INTRANSITLOCATIONRESTRICTION,
        ..
      ),

    -- * CloudStorage_State
    CloudStorage_State
      ( CloudStorage_State_STATEUNSPECIFIED,
        CloudStorage_State_Active,
        CloudStorage_State_CLOUDSTORAGEPERMISSIONDENIED,
        CloudStorage_State_PUBLISHPERMISSIONDENIED,
        CloudStorage_State_BUCKETNOTFOUND,
        CloudStorage_State_TOOMANYOBJECTS,
        ..
      ),

    -- * CloudStorageConfig_State
    CloudStorageConfig_State
      ( CloudStorageConfig_State_STATEUNSPECIFIED,
        CloudStorageConfig_State_Active,
        CloudStorageConfig_State_PERMISSIONDENIED,
        CloudStorageConfig_State_NOTFOUND,
        CloudStorageConfig_State_INTRANSITLOCATIONRESTRICTION,
        CloudStorageConfig_State_SCHEMAMISMATCH,
        ..
      ),

    -- * ConfluentCloud_State
    ConfluentCloud_State
      ( ConfluentCloud_State_STATEUNSPECIFIED,
        ConfluentCloud_State_Active,
        ConfluentCloud_State_CONFLUENTCLOUDPERMISSIONDENIED,
        ConfluentCloud_State_PUBLISHPERMISSIONDENIED,
        ConfluentCloud_State_UNREACHABLEBOOTSTRAPSERVER,
        ConfluentCloud_State_CLUSTERNOTFOUND,
        ConfluentCloud_State_TOPICNOTFOUND,
        ..
      ),

    -- * PlatformLogsSettings_Severity
    PlatformLogsSettings_Severity
      ( PlatformLogsSettings_Severity_SEVERITYUNSPECIFIED,
        PlatformLogsSettings_Severity_Disabled,
        PlatformLogsSettings_Severity_Debug,
        PlatformLogsSettings_Severity_Info,
        PlatformLogsSettings_Severity_Warning,
        PlatformLogsSettings_Severity_Error',
        ..
      ),

    -- * Schema_Type
    Schema_Type
      ( Schema_Type_TYPEUNSPECIFIED,
        Schema_Type_PROTOCOLBUFFER,
        Schema_Type_Avro,
        ..
      ),

    -- * SchemaSettings_Encoding
    SchemaSettings_Encoding
      ( SchemaSettings_Encoding_ENCODINGUNSPECIFIED,
        SchemaSettings_Encoding_Json,
        SchemaSettings_Encoding_Binary,
        ..
      ),

    -- * Subscription_State
    Subscription_State
      ( Subscription_State_STATEUNSPECIFIED,
        Subscription_State_Active,
        Subscription_State_RESOURCEERROR,
        ..
      ),

    -- * Topic_State
    Topic_State
      ( Topic_State_STATEUNSPECIFIED,
        Topic_State_Active,
        Topic_State_INGESTIONRESOURCEERROR,
        ..
      ),

    -- * ValidateMessageRequest_Encoding
    ValidateMessageRequest_Encoding
      ( ValidateMessageRequest_Encoding_ENCODINGUNSPECIFIED,
        ValidateMessageRequest_Encoding_Json,
        ValidateMessageRequest_Encoding_Binary,
        ..
      ),

    -- * ProjectsSchemasGetView
    ProjectsSchemasGetView
      ( ProjectsSchemasGetView_SCHEMAVIEWUNSPECIFIED,
        ProjectsSchemasGetView_Basic,
        ProjectsSchemasGetView_Full,
        ..
      ),

    -- * ProjectsSchemasListView
    ProjectsSchemasListView
      ( ProjectsSchemasListView_SCHEMAVIEWUNSPECIFIED,
        ProjectsSchemasListView_Basic,
        ProjectsSchemasListView_Full,
        ..
      ),

    -- * ProjectsSchemasListRevisionsView
    ProjectsSchemasListRevisionsView
      ( ProjectsSchemasListRevisionsView_SCHEMAVIEWUNSPECIFIED,
        ProjectsSchemasListRevisionsView_Basic,
        ProjectsSchemasListRevisionsView_Full,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Output only. An output-only field that indicates the state of the Kinesis ingestion source.
newtype AwsKinesis_State = AwsKinesis_State {fromAwsKinesis_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern AwsKinesis_State_STATEUNSPECIFIED :: AwsKinesis_State
pattern AwsKinesis_State_STATEUNSPECIFIED = AwsKinesis_State "STATE_UNSPECIFIED"

-- | Ingestion is active.
pattern AwsKinesis_State_Active :: AwsKinesis_State
pattern AwsKinesis_State_Active = AwsKinesis_State "ACTIVE"

-- | Permission denied encountered while consuming data from Kinesis. This can happen if: - The provided @aws_role_arn@ does not exist or does not have the appropriate permissions attached. - The provided @aws_role_arn@ is not set up properly for Identity Federation using @gcp_service_account@. - The Pub\/Sub SA is not granted the @iam.serviceAccounts.getOpenIdToken@ permission on @gcp_service_account@.
pattern AwsKinesis_State_KINESISPERMISSIONDENIED :: AwsKinesis_State
pattern AwsKinesis_State_KINESISPERMISSIONDENIED = AwsKinesis_State "KINESIS_PERMISSION_DENIED"

-- | Permission denied encountered while publishing to the topic. This can happen if the Pub\/Sub SA has not been granted the <https://cloud.google.com/pubsub/docs/access-control#pubsub.publisher appropriate publish permissions>
pattern AwsKinesis_State_PUBLISHPERMISSIONDENIED :: AwsKinesis_State
pattern AwsKinesis_State_PUBLISHPERMISSIONDENIED = AwsKinesis_State "PUBLISH_PERMISSION_DENIED"

-- | The Kinesis stream does not exist.
pattern AwsKinesis_State_STREAMNOTFOUND :: AwsKinesis_State
pattern AwsKinesis_State_STREAMNOTFOUND = AwsKinesis_State "STREAM_NOT_FOUND"

-- | The Kinesis consumer does not exist.
pattern AwsKinesis_State_CONSUMERNOTFOUND :: AwsKinesis_State
pattern AwsKinesis_State_CONSUMERNOTFOUND = AwsKinesis_State "CONSUMER_NOT_FOUND"

{-# COMPLETE
  AwsKinesis_State_STATEUNSPECIFIED,
  AwsKinesis_State_Active,
  AwsKinesis_State_KINESISPERMISSIONDENIED,
  AwsKinesis_State_PUBLISHPERMISSIONDENIED,
  AwsKinesis_State_STREAMNOTFOUND,
  AwsKinesis_State_CONSUMERNOTFOUND,
  AwsKinesis_State
  #-}

-- | Output only. An output-only field that indicates the state of the Amazon MSK ingestion source.
newtype AwsMsk_State = AwsMsk_State {fromAwsMsk_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern AwsMsk_State_STATEUNSPECIFIED :: AwsMsk_State
pattern AwsMsk_State_STATEUNSPECIFIED = AwsMsk_State "STATE_UNSPECIFIED"

-- | Ingestion is active.
pattern AwsMsk_State_Active :: AwsMsk_State
pattern AwsMsk_State_Active = AwsMsk_State "ACTIVE"

-- | Permission denied encountered while consuming data from Amazon MSK.
pattern AwsMsk_State_MSKPERMISSIONDENIED :: AwsMsk_State
pattern AwsMsk_State_MSKPERMISSIONDENIED = AwsMsk_State "MSK_PERMISSION_DENIED"

-- | Permission denied encountered while publishing to the topic.
pattern AwsMsk_State_PUBLISHPERMISSIONDENIED :: AwsMsk_State
pattern AwsMsk_State_PUBLISHPERMISSIONDENIED = AwsMsk_State "PUBLISH_PERMISSION_DENIED"

-- | The provided MSK cluster wasn\'t found.
pattern AwsMsk_State_CLUSTERNOTFOUND :: AwsMsk_State
pattern AwsMsk_State_CLUSTERNOTFOUND = AwsMsk_State "CLUSTER_NOT_FOUND"

-- | The provided topic wasn\'t found.
pattern AwsMsk_State_TOPICNOTFOUND :: AwsMsk_State
pattern AwsMsk_State_TOPICNOTFOUND = AwsMsk_State "TOPIC_NOT_FOUND"

{-# COMPLETE
  AwsMsk_State_STATEUNSPECIFIED,
  AwsMsk_State_Active,
  AwsMsk_State_MSKPERMISSIONDENIED,
  AwsMsk_State_PUBLISHPERMISSIONDENIED,
  AwsMsk_State_CLUSTERNOTFOUND,
  AwsMsk_State_TOPICNOTFOUND,
  AwsMsk_State
  #-}

-- | Output only. An output-only field that indicates the state of the Event Hubs ingestion source.
newtype AzureEventHubs_State = AzureEventHubs_State {fromAzureEventHubs_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern AzureEventHubs_State_STATEUNSPECIFIED :: AzureEventHubs_State
pattern AzureEventHubs_State_STATEUNSPECIFIED = AzureEventHubs_State "STATE_UNSPECIFIED"

-- | Ingestion is active.
pattern AzureEventHubs_State_Active :: AzureEventHubs_State
pattern AzureEventHubs_State_Active = AzureEventHubs_State "ACTIVE"

-- | Permission denied encountered while consuming data from Event Hubs. This can happen when @client_id@, or @tenant_id@ are invalid. Or the right permissions haven\'t been granted.
pattern AzureEventHubs_State_EVENTHUBSPERMISSIONDENIED :: AzureEventHubs_State
pattern AzureEventHubs_State_EVENTHUBSPERMISSIONDENIED = AzureEventHubs_State "EVENT_HUBS_PERMISSION_DENIED"

-- | Permission denied encountered while publishing to the topic.
pattern AzureEventHubs_State_PUBLISHPERMISSIONDENIED :: AzureEventHubs_State
pattern AzureEventHubs_State_PUBLISHPERMISSIONDENIED = AzureEventHubs_State "PUBLISH_PERMISSION_DENIED"

-- | The provided Event Hubs namespace couldn\'t be found.
pattern AzureEventHubs_State_NAMESPACENOTFOUND :: AzureEventHubs_State
pattern AzureEventHubs_State_NAMESPACENOTFOUND = AzureEventHubs_State "NAMESPACE_NOT_FOUND"

-- | The provided Event Hub couldn\'t be found.
pattern AzureEventHubs_State_EVENTHUBNOTFOUND :: AzureEventHubs_State
pattern AzureEventHubs_State_EVENTHUBNOTFOUND = AzureEventHubs_State "EVENT_HUB_NOT_FOUND"

-- | The provided Event Hubs subscription couldn\'t be found.
pattern AzureEventHubs_State_SUBSCRIPTIONNOTFOUND :: AzureEventHubs_State
pattern AzureEventHubs_State_SUBSCRIPTIONNOTFOUND = AzureEventHubs_State "SUBSCRIPTION_NOT_FOUND"

-- | The provided Event Hubs resource group couldn\'t be found.
pattern AzureEventHubs_State_RESOURCEGROUPNOTFOUND :: AzureEventHubs_State
pattern AzureEventHubs_State_RESOURCEGROUPNOTFOUND = AzureEventHubs_State "RESOURCE_GROUP_NOT_FOUND"

{-# COMPLETE
  AzureEventHubs_State_STATEUNSPECIFIED,
  AzureEventHubs_State_Active,
  AzureEventHubs_State_EVENTHUBSPERMISSIONDENIED,
  AzureEventHubs_State_PUBLISHPERMISSIONDENIED,
  AzureEventHubs_State_NAMESPACENOTFOUND,
  AzureEventHubs_State_EVENTHUBNOTFOUND,
  AzureEventHubs_State_SUBSCRIPTIONNOTFOUND,
  AzureEventHubs_State_RESOURCEGROUPNOTFOUND,
  AzureEventHubs_State
  #-}

-- | Output only. An output-only field that indicates whether or not the subscription can receive messages.
newtype BigQueryConfig_State = BigQueryConfig_State {fromBigQueryConfig_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern BigQueryConfig_State_STATEUNSPECIFIED :: BigQueryConfig_State
pattern BigQueryConfig_State_STATEUNSPECIFIED = BigQueryConfig_State "STATE_UNSPECIFIED"

-- | The subscription can actively send messages to BigQuery
pattern BigQueryConfig_State_Active :: BigQueryConfig_State
pattern BigQueryConfig_State_Active = BigQueryConfig_State "ACTIVE"

-- | Cannot write to the BigQuery table because of permission denied errors. This can happen if - Pub\/Sub SA has not been granted the <https://cloud.google.com/pubsub/docs/create-subscription#assign_bigquery_service_account appropriate BigQuery IAM permissions> - bigquery.googleapis.com API is not enabled for the project (<https://cloud.google.com/service-usage/docs/enable-disable instructions>)
pattern BigQueryConfig_State_PERMISSIONDENIED :: BigQueryConfig_State
pattern BigQueryConfig_State_PERMISSIONDENIED = BigQueryConfig_State "PERMISSION_DENIED"

-- | Cannot write to the BigQuery table because it does not exist.
pattern BigQueryConfig_State_NOTFOUND :: BigQueryConfig_State
pattern BigQueryConfig_State_NOTFOUND = BigQueryConfig_State "NOT_FOUND"

-- | Cannot write to the BigQuery table due to a schema mismatch.
pattern BigQueryConfig_State_SCHEMAMISMATCH :: BigQueryConfig_State
pattern BigQueryConfig_State_SCHEMAMISMATCH = BigQueryConfig_State "SCHEMA_MISMATCH"

-- | Cannot write to the destination because enforce/in/transit is set to true and the destination locations are not in the allowed regions.
pattern BigQueryConfig_State_INTRANSITLOCATIONRESTRICTION :: BigQueryConfig_State
pattern BigQueryConfig_State_INTRANSITLOCATIONRESTRICTION = BigQueryConfig_State "IN_TRANSIT_LOCATION_RESTRICTION"

{-# COMPLETE
  BigQueryConfig_State_STATEUNSPECIFIED,
  BigQueryConfig_State_Active,
  BigQueryConfig_State_PERMISSIONDENIED,
  BigQueryConfig_State_NOTFOUND,
  BigQueryConfig_State_SCHEMAMISMATCH,
  BigQueryConfig_State_INTRANSITLOCATIONRESTRICTION,
  BigQueryConfig_State
  #-}

-- | Output only. An output-only field that indicates the state of the Cloud Storage ingestion source.
newtype CloudStorage_State = CloudStorage_State {fromCloudStorage_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern CloudStorage_State_STATEUNSPECIFIED :: CloudStorage_State
pattern CloudStorage_State_STATEUNSPECIFIED = CloudStorage_State "STATE_UNSPECIFIED"

-- | Ingestion is active.
pattern CloudStorage_State_Active :: CloudStorage_State
pattern CloudStorage_State_Active = CloudStorage_State "ACTIVE"

-- | Permission denied encountered while calling the Cloud Storage API. This can happen if the Pub\/Sub SA has not been granted the <https://cloud.google.com/storage/docs/access-control/iam-permissions appropriate permissions>: - storage.objects.list: to list the objects in a bucket. - storage.objects.get: to read the objects in a bucket. - storage.buckets.get: to verify the bucket exists.
pattern CloudStorage_State_CLOUDSTORAGEPERMISSIONDENIED :: CloudStorage_State
pattern CloudStorage_State_CLOUDSTORAGEPERMISSIONDENIED = CloudStorage_State "CLOUD_STORAGE_PERMISSION_DENIED"

-- | Permission denied encountered while publishing to the topic. This can happen if the Pub\/Sub SA has not been granted the <https://cloud.google.com/pubsub/docs/access-control#pubsub.publisher appropriate publish permissions>
pattern CloudStorage_State_PUBLISHPERMISSIONDENIED :: CloudStorage_State
pattern CloudStorage_State_PUBLISHPERMISSIONDENIED = CloudStorage_State "PUBLISH_PERMISSION_DENIED"

-- | The provided Cloud Storage bucket doesn\'t exist.
pattern CloudStorage_State_BUCKETNOTFOUND :: CloudStorage_State
pattern CloudStorage_State_BUCKETNOTFOUND = CloudStorage_State "BUCKET_NOT_FOUND"

-- | The Cloud Storage bucket has too many objects, ingestion will be paused.
pattern CloudStorage_State_TOOMANYOBJECTS :: CloudStorage_State
pattern CloudStorage_State_TOOMANYOBJECTS = CloudStorage_State "TOO_MANY_OBJECTS"

{-# COMPLETE
  CloudStorage_State_STATEUNSPECIFIED,
  CloudStorage_State_Active,
  CloudStorage_State_CLOUDSTORAGEPERMISSIONDENIED,
  CloudStorage_State_PUBLISHPERMISSIONDENIED,
  CloudStorage_State_BUCKETNOTFOUND,
  CloudStorage_State_TOOMANYOBJECTS,
  CloudStorage_State
  #-}

-- | Output only. An output-only field that indicates whether or not the subscription can receive messages.
newtype CloudStorageConfig_State = CloudStorageConfig_State {fromCloudStorageConfig_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern CloudStorageConfig_State_STATEUNSPECIFIED :: CloudStorageConfig_State
pattern CloudStorageConfig_State_STATEUNSPECIFIED = CloudStorageConfig_State "STATE_UNSPECIFIED"

-- | The subscription can actively send messages to Cloud Storage.
pattern CloudStorageConfig_State_Active :: CloudStorageConfig_State
pattern CloudStorageConfig_State_Active = CloudStorageConfig_State "ACTIVE"

-- | Cannot write to the Cloud Storage bucket because of permission denied errors.
pattern CloudStorageConfig_State_PERMISSIONDENIED :: CloudStorageConfig_State
pattern CloudStorageConfig_State_PERMISSIONDENIED = CloudStorageConfig_State "PERMISSION_DENIED"

-- | Cannot write to the Cloud Storage bucket because it does not exist.
pattern CloudStorageConfig_State_NOTFOUND :: CloudStorageConfig_State
pattern CloudStorageConfig_State_NOTFOUND = CloudStorageConfig_State "NOT_FOUND"

-- | Cannot write to the destination because enforce/in/transit is set to true and the destination locations are not in the allowed regions.
pattern CloudStorageConfig_State_INTRANSITLOCATIONRESTRICTION :: CloudStorageConfig_State
pattern CloudStorageConfig_State_INTRANSITLOCATIONRESTRICTION = CloudStorageConfig_State "IN_TRANSIT_LOCATION_RESTRICTION"

-- | Cannot write to the Cloud Storage bucket due to an incompatibility between the topic schema and subscription settings.
pattern CloudStorageConfig_State_SCHEMAMISMATCH :: CloudStorageConfig_State
pattern CloudStorageConfig_State_SCHEMAMISMATCH = CloudStorageConfig_State "SCHEMA_MISMATCH"

{-# COMPLETE
  CloudStorageConfig_State_STATEUNSPECIFIED,
  CloudStorageConfig_State_Active,
  CloudStorageConfig_State_PERMISSIONDENIED,
  CloudStorageConfig_State_NOTFOUND,
  CloudStorageConfig_State_INTRANSITLOCATIONRESTRICTION,
  CloudStorageConfig_State_SCHEMAMISMATCH,
  CloudStorageConfig_State
  #-}

-- | Output only. An output-only field that indicates the state of the Confluent Cloud ingestion source.
newtype ConfluentCloud_State = ConfluentCloud_State {fromConfluentCloud_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ConfluentCloud_State_STATEUNSPECIFIED :: ConfluentCloud_State
pattern ConfluentCloud_State_STATEUNSPECIFIED = ConfluentCloud_State "STATE_UNSPECIFIED"

-- | Ingestion is active.
pattern ConfluentCloud_State_Active :: ConfluentCloud_State
pattern ConfluentCloud_State_Active = ConfluentCloud_State "ACTIVE"

-- | Permission denied encountered while consuming data from Confluent Cloud.
pattern ConfluentCloud_State_CONFLUENTCLOUDPERMISSIONDENIED :: ConfluentCloud_State
pattern ConfluentCloud_State_CONFLUENTCLOUDPERMISSIONDENIED = ConfluentCloud_State "CONFLUENT_CLOUD_PERMISSION_DENIED"

-- | Permission denied encountered while publishing to the topic.
pattern ConfluentCloud_State_PUBLISHPERMISSIONDENIED :: ConfluentCloud_State
pattern ConfluentCloud_State_PUBLISHPERMISSIONDENIED = ConfluentCloud_State "PUBLISH_PERMISSION_DENIED"

-- | The provided bootstrap server address is unreachable.
pattern ConfluentCloud_State_UNREACHABLEBOOTSTRAPSERVER :: ConfluentCloud_State
pattern ConfluentCloud_State_UNREACHABLEBOOTSTRAPSERVER = ConfluentCloud_State "UNREACHABLE_BOOTSTRAP_SERVER"

-- | The provided cluster wasn\'t found.
pattern ConfluentCloud_State_CLUSTERNOTFOUND :: ConfluentCloud_State
pattern ConfluentCloud_State_CLUSTERNOTFOUND = ConfluentCloud_State "CLUSTER_NOT_FOUND"

-- | The provided topic wasn\'t found.
pattern ConfluentCloud_State_TOPICNOTFOUND :: ConfluentCloud_State
pattern ConfluentCloud_State_TOPICNOTFOUND = ConfluentCloud_State "TOPIC_NOT_FOUND"

{-# COMPLETE
  ConfluentCloud_State_STATEUNSPECIFIED,
  ConfluentCloud_State_Active,
  ConfluentCloud_State_CONFLUENTCLOUDPERMISSIONDENIED,
  ConfluentCloud_State_PUBLISHPERMISSIONDENIED,
  ConfluentCloud_State_UNREACHABLEBOOTSTRAPSERVER,
  ConfluentCloud_State_CLUSTERNOTFOUND,
  ConfluentCloud_State_TOPICNOTFOUND,
  ConfluentCloud_State
  #-}

-- | Optional. The minimum severity level of Platform Logs that will be written.
newtype PlatformLogsSettings_Severity = PlatformLogsSettings_Severity {fromPlatformLogsSettings_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Logs level is unspecified. Logs will be disabled.
pattern PlatformLogsSettings_Severity_SEVERITYUNSPECIFIED :: PlatformLogsSettings_Severity
pattern PlatformLogsSettings_Severity_SEVERITYUNSPECIFIED = PlatformLogsSettings_Severity "SEVERITY_UNSPECIFIED"

-- | Logs will be disabled.
pattern PlatformLogsSettings_Severity_Disabled :: PlatformLogsSettings_Severity
pattern PlatformLogsSettings_Severity_Disabled = PlatformLogsSettings_Severity "DISABLED"

-- | Debug logs and higher-severity logs will be written.
pattern PlatformLogsSettings_Severity_Debug :: PlatformLogsSettings_Severity
pattern PlatformLogsSettings_Severity_Debug = PlatformLogsSettings_Severity "DEBUG"

-- | Info logs and higher-severity logs will be written.
pattern PlatformLogsSettings_Severity_Info :: PlatformLogsSettings_Severity
pattern PlatformLogsSettings_Severity_Info = PlatformLogsSettings_Severity "INFO"

-- | Warning logs and higher-severity logs will be written.
pattern PlatformLogsSettings_Severity_Warning :: PlatformLogsSettings_Severity
pattern PlatformLogsSettings_Severity_Warning = PlatformLogsSettings_Severity "WARNING"

-- | Only error logs will be written.
pattern PlatformLogsSettings_Severity_Error' :: PlatformLogsSettings_Severity
pattern PlatformLogsSettings_Severity_Error' = PlatformLogsSettings_Severity "ERROR"

{-# COMPLETE
  PlatformLogsSettings_Severity_SEVERITYUNSPECIFIED,
  PlatformLogsSettings_Severity_Disabled,
  PlatformLogsSettings_Severity_Debug,
  PlatformLogsSettings_Severity_Info,
  PlatformLogsSettings_Severity_Warning,
  PlatformLogsSettings_Severity_Error',
  PlatformLogsSettings_Severity
  #-}

-- | The type of the schema definition.
newtype Schema_Type = Schema_Type {fromSchema_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern Schema_Type_TYPEUNSPECIFIED :: Schema_Type
pattern Schema_Type_TYPEUNSPECIFIED = Schema_Type "TYPE_UNSPECIFIED"

-- | A Protocol Buffer schema definition.
pattern Schema_Type_PROTOCOLBUFFER :: Schema_Type
pattern Schema_Type_PROTOCOLBUFFER = Schema_Type "PROTOCOL_BUFFER"

-- | An Avro schema definition.
pattern Schema_Type_Avro :: Schema_Type
pattern Schema_Type_Avro = Schema_Type "AVRO"

{-# COMPLETE
  Schema_Type_TYPEUNSPECIFIED,
  Schema_Type_PROTOCOLBUFFER,
  Schema_Type_Avro,
  Schema_Type
  #-}

-- | Optional. The encoding of messages validated against @schema@.
newtype SchemaSettings_Encoding = SchemaSettings_Encoding {fromSchemaSettings_Encoding :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified
pattern SchemaSettings_Encoding_ENCODINGUNSPECIFIED :: SchemaSettings_Encoding
pattern SchemaSettings_Encoding_ENCODINGUNSPECIFIED = SchemaSettings_Encoding "ENCODING_UNSPECIFIED"

-- | JSON encoding
pattern SchemaSettings_Encoding_Json :: SchemaSettings_Encoding
pattern SchemaSettings_Encoding_Json = SchemaSettings_Encoding "JSON"

-- | Binary encoding, as defined by the schema type. For some schema types, binary encoding may not be available.
pattern SchemaSettings_Encoding_Binary :: SchemaSettings_Encoding
pattern SchemaSettings_Encoding_Binary = SchemaSettings_Encoding "BINARY"

{-# COMPLETE
  SchemaSettings_Encoding_ENCODINGUNSPECIFIED,
  SchemaSettings_Encoding_Json,
  SchemaSettings_Encoding_Binary,
  SchemaSettings_Encoding
  #-}

-- | Output only. An output-only field indicating whether or not the subscription can receive messages.
newtype Subscription_State = Subscription_State {fromSubscription_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern Subscription_State_STATEUNSPECIFIED :: Subscription_State
pattern Subscription_State_STATEUNSPECIFIED = Subscription_State "STATE_UNSPECIFIED"

-- | The subscription can actively receive messages
pattern Subscription_State_Active :: Subscription_State
pattern Subscription_State_Active = Subscription_State "ACTIVE"

-- | The subscription cannot receive messages because of an error with the resource to which it pushes messages. See the more detailed error state in the corresponding configuration.
pattern Subscription_State_RESOURCEERROR :: Subscription_State
pattern Subscription_State_RESOURCEERROR = Subscription_State "RESOURCE_ERROR"

{-# COMPLETE
  Subscription_State_STATEUNSPECIFIED,
  Subscription_State_Active,
  Subscription_State_RESOURCEERROR,
  Subscription_State
  #-}

-- | Output only. An output-only field indicating the state of the topic.
newtype Topic_State = Topic_State {fromTopic_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern Topic_State_STATEUNSPECIFIED :: Topic_State
pattern Topic_State_STATEUNSPECIFIED = Topic_State "STATE_UNSPECIFIED"

-- | The topic does not have any persistent errors.
pattern Topic_State_Active :: Topic_State
pattern Topic_State_Active = Topic_State "ACTIVE"

-- | Ingestion from the data source has encountered a permanent error. See the more detailed error state in the corresponding ingestion source configuration.
pattern Topic_State_INGESTIONRESOURCEERROR :: Topic_State
pattern Topic_State_INGESTIONRESOURCEERROR = Topic_State "INGESTION_RESOURCE_ERROR"

{-# COMPLETE
  Topic_State_STATEUNSPECIFIED,
  Topic_State_Active,
  Topic_State_INGESTIONRESOURCEERROR,
  Topic_State
  #-}

-- | The encoding expected for messages
newtype ValidateMessageRequest_Encoding = ValidateMessageRequest_Encoding {fromValidateMessageRequest_Encoding :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified
pattern ValidateMessageRequest_Encoding_ENCODINGUNSPECIFIED :: ValidateMessageRequest_Encoding
pattern ValidateMessageRequest_Encoding_ENCODINGUNSPECIFIED = ValidateMessageRequest_Encoding "ENCODING_UNSPECIFIED"

-- | JSON encoding
pattern ValidateMessageRequest_Encoding_Json :: ValidateMessageRequest_Encoding
pattern ValidateMessageRequest_Encoding_Json = ValidateMessageRequest_Encoding "JSON"

-- | Binary encoding, as defined by the schema type. For some schema types, binary encoding may not be available.
pattern ValidateMessageRequest_Encoding_Binary :: ValidateMessageRequest_Encoding
pattern ValidateMessageRequest_Encoding_Binary = ValidateMessageRequest_Encoding "BINARY"

{-# COMPLETE
  ValidateMessageRequest_Encoding_ENCODINGUNSPECIFIED,
  ValidateMessageRequest_Encoding_Json,
  ValidateMessageRequest_Encoding_Binary,
  ValidateMessageRequest_Encoding
  #-}

-- | The set of fields to return in the response. If not set, returns a Schema with all fields filled out. Set to @BASIC@ to omit the @definition@.
newtype ProjectsSchemasGetView = ProjectsSchemasGetView {fromProjectsSchemasGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default \/ unset value. The API will default to the BASIC view.
pattern ProjectsSchemasGetView_SCHEMAVIEWUNSPECIFIED :: ProjectsSchemasGetView
pattern ProjectsSchemasGetView_SCHEMAVIEWUNSPECIFIED = ProjectsSchemasGetView "SCHEMA_VIEW_UNSPECIFIED"

-- | Include the name and type of the schema, but not the definition.
pattern ProjectsSchemasGetView_Basic :: ProjectsSchemasGetView
pattern ProjectsSchemasGetView_Basic = ProjectsSchemasGetView "BASIC"

-- | Include all Schema object fields.
pattern ProjectsSchemasGetView_Full :: ProjectsSchemasGetView
pattern ProjectsSchemasGetView_Full = ProjectsSchemasGetView "FULL"

{-# COMPLETE
  ProjectsSchemasGetView_SCHEMAVIEWUNSPECIFIED,
  ProjectsSchemasGetView_Basic,
  ProjectsSchemasGetView_Full,
  ProjectsSchemasGetView
  #-}

-- | The set of Schema fields to return in the response. If not set, returns Schemas with @name@ and @type@, but not @definition@. Set to @FULL@ to retrieve all fields.
newtype ProjectsSchemasListView = ProjectsSchemasListView {fromProjectsSchemasListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default \/ unset value. The API will default to the BASIC view.
pattern ProjectsSchemasListView_SCHEMAVIEWUNSPECIFIED :: ProjectsSchemasListView
pattern ProjectsSchemasListView_SCHEMAVIEWUNSPECIFIED = ProjectsSchemasListView "SCHEMA_VIEW_UNSPECIFIED"

-- | Include the name and type of the schema, but not the definition.
pattern ProjectsSchemasListView_Basic :: ProjectsSchemasListView
pattern ProjectsSchemasListView_Basic = ProjectsSchemasListView "BASIC"

-- | Include all Schema object fields.
pattern ProjectsSchemasListView_Full :: ProjectsSchemasListView
pattern ProjectsSchemasListView_Full = ProjectsSchemasListView "FULL"

{-# COMPLETE
  ProjectsSchemasListView_SCHEMAVIEWUNSPECIFIED,
  ProjectsSchemasListView_Basic,
  ProjectsSchemasListView_Full,
  ProjectsSchemasListView
  #-}

-- | The set of Schema fields to return in the response. If not set, returns Schemas with @name@ and @type@, but not @definition@. Set to @FULL@ to retrieve all fields.
newtype ProjectsSchemasListRevisionsView = ProjectsSchemasListRevisionsView {fromProjectsSchemasListRevisionsView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default \/ unset value. The API will default to the BASIC view.
pattern ProjectsSchemasListRevisionsView_SCHEMAVIEWUNSPECIFIED :: ProjectsSchemasListRevisionsView
pattern ProjectsSchemasListRevisionsView_SCHEMAVIEWUNSPECIFIED = ProjectsSchemasListRevisionsView "SCHEMA_VIEW_UNSPECIFIED"

-- | Include the name and type of the schema, but not the definition.
pattern ProjectsSchemasListRevisionsView_Basic :: ProjectsSchemasListRevisionsView
pattern ProjectsSchemasListRevisionsView_Basic = ProjectsSchemasListRevisionsView "BASIC"

-- | Include all Schema object fields.
pattern ProjectsSchemasListRevisionsView_Full :: ProjectsSchemasListRevisionsView
pattern ProjectsSchemasListRevisionsView_Full = ProjectsSchemasListRevisionsView "FULL"

{-# COMPLETE
  ProjectsSchemasListRevisionsView_SCHEMAVIEWUNSPECIFIED,
  ProjectsSchemasListRevisionsView_Basic,
  ProjectsSchemasListRevisionsView_Full,
  ProjectsSchemasListRevisionsView
  #-}
