{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.PubSub.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PubSub.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * BigQueryConfig_State
    BigQueryConfig_State
      ( BigQueryConfig_State_STATEUNSPECIFIED,
        BigQueryConfig_State_Active,
        BigQueryConfig_State_PERMISSIONDENIED,
        BigQueryConfig_State_NOTFOUND,
        BigQueryConfig_State_SCHEMAMISMATCH,
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

import qualified Gogol.Prelude as Core

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

{-# COMPLETE
  BigQueryConfig_State_STATEUNSPECIFIED,
  BigQueryConfig_State_Active,
  BigQueryConfig_State_PERMISSIONDENIED,
  BigQueryConfig_State_NOTFOUND,
  BigQueryConfig_State_SCHEMAMISMATCH,
  BigQueryConfig_State
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

-- | The encoding of messages validated against @schema@.
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
