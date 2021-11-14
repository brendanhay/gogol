{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PubSub.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PubSub.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The set of fields to return in the response. If not set, returns a
-- Schema with \`name\` and \`type\`, but not \`definition\`. Set to
-- \`FULL\` to retrieve all fields.
data ProjectsSchemasGetView
    = SchemaViewUnspecified
      -- ^ @SCHEMA_VIEW_UNSPECIFIED@
      -- The default \/ unset value. The API will default to the BASIC view.
    | Basic
      -- ^ @BASIC@
      -- Include the name and type of the schema, but not the definition.
    | Full
      -- ^ @FULL@
      -- Include all Schema object fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsSchemasGetView

instance FromHttpApiData ProjectsSchemasGetView where
    parseQueryParam = \case
        "SCHEMA_VIEW_UNSPECIFIED" -> Right SchemaViewUnspecified
        "BASIC" -> Right Basic
        "FULL" -> Right Full
        x -> Left ("Unable to parse ProjectsSchemasGetView from: " <> x)

instance ToHttpApiData ProjectsSchemasGetView where
    toQueryParam = \case
        SchemaViewUnspecified -> "SCHEMA_VIEW_UNSPECIFIED"
        Basic -> "BASIC"
        Full -> "FULL"

instance FromJSON ProjectsSchemasGetView where
    parseJSON = parseJSONText "ProjectsSchemasGetView"

instance ToJSON ProjectsSchemasGetView where
    toJSON = toJSONText

-- | The encoding expected for messages
data ValidateMessageRequestEncoding
    = EncodingUnspecified
      -- ^ @ENCODING_UNSPECIFIED@
      -- Unspecified
    | JSON
      -- ^ @JSON@
      -- JSON encoding
    | Binary
      -- ^ @BINARY@
      -- Binary encoding, as defined by the schema type. For some schema types,
      -- binary encoding may not be available.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ValidateMessageRequestEncoding

instance FromHttpApiData ValidateMessageRequestEncoding where
    parseQueryParam = \case
        "ENCODING_UNSPECIFIED" -> Right EncodingUnspecified
        "JSON" -> Right JSON
        "BINARY" -> Right Binary
        x -> Left ("Unable to parse ValidateMessageRequestEncoding from: " <> x)

instance ToHttpApiData ValidateMessageRequestEncoding where
    toQueryParam = \case
        EncodingUnspecified -> "ENCODING_UNSPECIFIED"
        JSON -> "JSON"
        Binary -> "BINARY"

instance FromJSON ValidateMessageRequestEncoding where
    parseJSON = parseJSONText "ValidateMessageRequestEncoding"

instance ToJSON ValidateMessageRequestEncoding where
    toJSON = toJSONText

-- | The encoding of messages validated against \`schema\`.
data SchemaSettingsEncoding
    = SSEEncodingUnspecified
      -- ^ @ENCODING_UNSPECIFIED@
      -- Unspecified
    | SSEJSON
      -- ^ @JSON@
      -- JSON encoding
    | SSEBinary
      -- ^ @BINARY@
      -- Binary encoding, as defined by the schema type. For some schema types,
      -- binary encoding may not be available.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SchemaSettingsEncoding

instance FromHttpApiData SchemaSettingsEncoding where
    parseQueryParam = \case
        "ENCODING_UNSPECIFIED" -> Right SSEEncodingUnspecified
        "JSON" -> Right SSEJSON
        "BINARY" -> Right SSEBinary
        x -> Left ("Unable to parse SchemaSettingsEncoding from: " <> x)

instance ToHttpApiData SchemaSettingsEncoding where
    toQueryParam = \case
        SSEEncodingUnspecified -> "ENCODING_UNSPECIFIED"
        SSEJSON -> "JSON"
        SSEBinary -> "BINARY"

instance FromJSON SchemaSettingsEncoding where
    parseJSON = parseJSONText "SchemaSettingsEncoding"

instance ToJSON SchemaSettingsEncoding where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The set of Schema fields to return in the response. If not set, returns
-- Schemas with \`name\` and \`type\`, but not \`definition\`. Set to
-- \`FULL\` to retrieve all fields.
data ProjectsSchemasListView
    = PSLVSchemaViewUnspecified
      -- ^ @SCHEMA_VIEW_UNSPECIFIED@
      -- The default \/ unset value. The API will default to the BASIC view.
    | PSLVBasic
      -- ^ @BASIC@
      -- Include the name and type of the schema, but not the definition.
    | PSLVFull
      -- ^ @FULL@
      -- Include all Schema object fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsSchemasListView

instance FromHttpApiData ProjectsSchemasListView where
    parseQueryParam = \case
        "SCHEMA_VIEW_UNSPECIFIED" -> Right PSLVSchemaViewUnspecified
        "BASIC" -> Right PSLVBasic
        "FULL" -> Right PSLVFull
        x -> Left ("Unable to parse ProjectsSchemasListView from: " <> x)

instance ToHttpApiData ProjectsSchemasListView where
    toQueryParam = \case
        PSLVSchemaViewUnspecified -> "SCHEMA_VIEW_UNSPECIFIED"
        PSLVBasic -> "BASIC"
        PSLVFull -> "FULL"

instance FromJSON ProjectsSchemasListView where
    parseJSON = parseJSONText "ProjectsSchemasListView"

instance ToJSON ProjectsSchemasListView where
    toJSON = toJSONText

-- | The type of the schema definition.
data SchemaType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | ProtocolBuffer
      -- ^ @PROTOCOL_BUFFER@
      -- A Protocol Buffer schema definition.
    | Avro
      -- ^ @AVRO@
      -- An Avro schema definition.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SchemaType

instance FromHttpApiData SchemaType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "PROTOCOL_BUFFER" -> Right ProtocolBuffer
        "AVRO" -> Right Avro
        x -> Left ("Unable to parse SchemaType from: " <> x)

instance ToHttpApiData SchemaType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        ProtocolBuffer -> "PROTOCOL_BUFFER"
        Avro -> "AVRO"

instance FromJSON SchemaType where
    parseJSON = parseJSONText "SchemaType"

instance ToJSON SchemaType where
    toJSON = toJSONText
