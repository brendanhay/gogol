{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DataFusion.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DataFusion.Types.Product where

import           Network.Google.DataFusion.Types.Sum
import           Network.Google.Prelude

-- | The resource labels for instance to use to annotate any related
-- underlying resources such as GCE VMs. The character \'=\' is not allowed
-- to be used within the labels.
--
-- /See:/ 'instanceLabels' smart constructor.
newtype InstanceLabels =
  InstanceLabels'
    { _ilAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilAddtional'
instanceLabels
    :: HashMap Text Text -- ^ 'ilAddtional'
    -> InstanceLabels
instanceLabels pIlAddtional_ =
  InstanceLabels' {_ilAddtional = _Coerce # pIlAddtional_}


ilAddtional :: Lens' InstanceLabels (HashMap Text Text)
ilAddtional
  = lens _ilAddtional (\ s a -> s{_ilAddtional = a}) .
      _Coerce

instance FromJSON InstanceLabels where
        parseJSON
          = withObject "InstanceLabels"
              (\ o -> InstanceLabels' <$> (parseJSONObject o))

instance ToJSON InstanceLabels where
        toJSON = toJSON . _ilAddtional

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema =
  OperationSchema'
    { _osAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
  OperationSchema' {_osAddtional = _Coerce # pOsAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
osAddtional :: Lens' OperationSchema (HashMap Text JSONValue)
osAddtional
  = lens _osAddtional (\ s a -> s{_osAddtional = a}) .
      _Coerce

instance FromJSON OperationSchema where
        parseJSON
          = withObject "OperationSchema"
              (\ o -> OperationSchema' <$> (parseJSONObject o))

instance ToJSON OperationSchema where
        toJSON = toJSON . _osAddtional

-- | Increment a streamz counter with the specified metric and field names.
-- Metric names should start with a \'\/\', generally be lowercase-only,
-- and end in \"_count\". Field names should not contain an initial slash.
-- The actual exported metric names will have \"\/iam\/policy\" prepended.
-- Field names correspond to IAM request parameters and field values are
-- their respective values. Supported field names: - \"authority\", which
-- is \"[token]\" if IAMContext.token is present, otherwise the value of
-- IAMContext.authority_selector if present, and otherwise a representation
-- of IAMContext.principal; or - \"iam_principal\", a representation of
-- IAMContext.principal even if a token or authority selector is present;
-- or - \"\" (empty string), resulting in a counter with no fields.
-- Examples: counter { metric: \"\/debug_access_count\" field:
-- \"iam_principal\" } ==> increment counter
-- \/iam\/policy\/backend_debug_access_count {iam_principal=[value of
-- IAMContext.principal]} At this time we do not support multiple field
-- names (though this may be supported in the future).
--
-- /See:/ 'counterOptions' smart constructor.
data CounterOptions =
  CounterOptions'
    { _coField  :: !(Maybe Text)
    , _coMetric :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CounterOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coField'
--
-- * 'coMetric'
counterOptions
    :: CounterOptions
counterOptions = CounterOptions' {_coField = Nothing, _coMetric = Nothing}


-- | The field value to attribute.
coField :: Lens' CounterOptions (Maybe Text)
coField = lens _coField (\ s a -> s{_coField = a})

-- | The metric to update.
coMetric :: Lens' CounterOptions (Maybe Text)
coMetric = lens _coMetric (\ s a -> s{_coMetric = a})

instance FromJSON CounterOptions where
        parseJSON
          = withObject "CounterOptions"
              (\ o ->
                 CounterOptions' <$>
                   (o .:? "field") <*> (o .:? "metric"))

instance ToJSON CounterOptions where
        toJSON CounterOptions'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _coField,
                  ("metric" .=) <$> _coMetric])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\" \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", }, { \"log_type\": \"ADMIN_READ\", } ] }, { \"service\":
-- \"fooservice.googleapis.com\" \"audit_log_configs\": [ { \"log_type\":
-- \"DATA_READ\", }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\":
-- [ \"user:bar\'gmail.com\" ] } ] } ] } For fooservice, this policy
-- enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts
-- foo\'gmail.com from DATA_READ logging, and bar\'gmail.com from
-- DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService         :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    , _acExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
--
-- * 'acExemptedMembers'
auditConfig
    :: AuditConfig
auditConfig =
  AuditConfig'
    { _acService = Nothing
    , _acAuditLogConfigs = Nothing
    , _acExemptedMembers = Nothing
    }


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

acExemptedMembers :: Lens' AuditConfig [Text]
acExemptedMembers
  = lens _acExemptedMembers
      (\ s a -> s{_acExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty)
                     <*> (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs,
                  ("exemptedMembers" .=) <$> _acExemptedMembers])

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations     :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}


-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
  CancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest'


instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest')

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName        :: !(Maybe Text)
    , _lMetadata    :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels      :: !(Maybe LocationLabels)
    , _lLocationId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
  Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }


-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationSchema)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | A rule to be applied in a Policy.
--
-- /See:/ 'rule' smart constructor.
data Rule =
  Rule'
    { _rAction      :: !(Maybe RuleAction)
    , _rIn          :: !(Maybe [Text])
    , _rNotIn       :: !(Maybe [Text])
    , _rConditions  :: !(Maybe [Condition])
    , _rPermissions :: !(Maybe [Text])
    , _rLogConfig   :: !(Maybe [LogConfig])
    , _rDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Rule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rAction'
--
-- * 'rIn'
--
-- * 'rNotIn'
--
-- * 'rConditions'
--
-- * 'rPermissions'
--
-- * 'rLogConfig'
--
-- * 'rDescription'
rule
    :: Rule
rule =
  Rule'
    { _rAction = Nothing
    , _rIn = Nothing
    , _rNotIn = Nothing
    , _rConditions = Nothing
    , _rPermissions = Nothing
    , _rLogConfig = Nothing
    , _rDescription = Nothing
    }


-- | Required
rAction :: Lens' Rule (Maybe RuleAction)
rAction = lens _rAction (\ s a -> s{_rAction = a})

-- | If one or more \'in\' clauses are specified, the rule matches if the
-- PRINCIPAL\/AUTHORITY_SELECTOR is in at least one of these entries.
rIn :: Lens' Rule [Text]
rIn
  = lens _rIn (\ s a -> s{_rIn = a}) . _Default .
      _Coerce

-- | If one or more \'not_in\' clauses are specified, the rule matches if the
-- PRINCIPAL\/AUTHORITY_SELECTOR is in none of the entries. The format for
-- in and not_in entries can be found at in the Local IAM documentation
-- (see go\/local-iam#features).
rNotIn :: Lens' Rule [Text]
rNotIn
  = lens _rNotIn (\ s a -> s{_rNotIn = a}) . _Default .
      _Coerce

-- | Additional restrictions that must be met. All conditions must pass for
-- the rule to match.
rConditions :: Lens' Rule [Condition]
rConditions
  = lens _rConditions (\ s a -> s{_rConditions = a}) .
      _Default
      . _Coerce

-- | A permission is a string of form \'..\' (e.g.,
-- \'storage.buckets.list\'). A value of \'*\' matches all permissions, and
-- a verb part of \'*\' (e.g., \'storage.buckets.*\') matches all verbs.
rPermissions :: Lens' Rule [Text]
rPermissions
  = lens _rPermissions (\ s a -> s{_rPermissions = a})
      . _Default
      . _Coerce

-- | The config returned to callers of tech.iam.IAM.CheckPolicy for any
-- entries that match the LOG action.
rLogConfig :: Lens' Rule [LogConfig]
rLogConfig
  = lens _rLogConfig (\ s a -> s{_rLogConfig = a}) .
      _Default
      . _Coerce

-- | Human-readable description of the rule.
rDescription :: Lens' Rule (Maybe Text)
rDescription
  = lens _rDescription (\ s a -> s{_rDescription = a})

instance FromJSON Rule where
        parseJSON
          = withObject "Rule"
              (\ o ->
                 Rule' <$>
                   (o .:? "action") <*> (o .:? "in" .!= mempty) <*>
                     (o .:? "notIn" .!= mempty)
                     <*> (o .:? "conditions" .!= mempty)
                     <*> (o .:? "permissions" .!= mempty)
                     <*> (o .:? "logConfig" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON Rule where
        toJSON Rule'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _rAction, ("in" .=) <$> _rIn,
                  ("notIn" .=) <$> _rNotIn,
                  ("conditions" .=) <$> _rConditions,
                  ("permissions" .=) <$> _rPermissions,
                  ("logConfig" .=) <$> _rLogConfig,
                  ("description" .=) <$> _rDescription])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy     :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprUpdateMask'
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
  SetIAMPolicyRequest' {_siprUpdateMask = Nothing, _siprPolicy = Nothing}


-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: paths: \"bindings, etag\" This field
-- is only used by Cloud IAM.
siprUpdateMask :: Lens' SetIAMPolicyRequest (Maybe GFieldMask)
siprUpdateMask
  = lens _siprUpdateMask
      (\ s a -> s{_siprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o ->
                 SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _siprUpdateMask,
                  ("policy" .=) <$> _siprPolicy])

-- | Network configuration for a Data Fusion instance. These configurations
-- are used for peering with the customer network. Configurations are
-- optional when a public Data Fusion instance is to be created. However,
-- providing these configurations allows several benefits, such as reduced
-- network latency while accessing the customer resources from managed Data
-- Fusion instance nodes, as well as access to the customer on-prem
-- resources.
--
-- /See:/ 'networkConfig' smart constructor.
data NetworkConfig =
  NetworkConfig'
    { _ncNetwork      :: !(Maybe Text)
    , _ncIPAllocation :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncNetwork'
--
-- * 'ncIPAllocation'
networkConfig
    :: NetworkConfig
networkConfig = NetworkConfig' {_ncNetwork = Nothing, _ncIPAllocation = Nothing}


-- | Name of the network in the customer project with which the Tenant
-- Project will be peered for executing pipelines.
ncNetwork :: Lens' NetworkConfig (Maybe Text)
ncNetwork
  = lens _ncNetwork (\ s a -> s{_ncNetwork = a})

-- | The IP range in CIDR notation to use for the managed Data Fusion
-- instance nodes. This range must not overlap with any other ranges used
-- in the Data Fusion instance network.
ncIPAllocation :: Lens' NetworkConfig (Maybe Text)
ncIPAllocation
  = lens _ncIPAllocation
      (\ s a -> s{_ncIPAllocation = a})

instance FromJSON NetworkConfig where
        parseJSON
          = withObject "NetworkConfig"
              (\ o ->
                 NetworkConfig' <$>
                   (o .:? "network") <*> (o .:? "ipAllocation"))

instance ToJSON NetworkConfig where
        toJSON NetworkConfig'{..}
          = object
              (catMaybes
                 [("network" .=) <$> _ncNetwork,
                  ("ipAllocation" .=) <$> _ncIPAllocation])

-- | Write a Cloud Audit log
--
-- /See:/ 'cloudAuditOptions' smart constructor.
data CloudAuditOptions =
  CloudAuditOptions'
    { _caoAuthorizationLoggingOptions :: !(Maybe AuthorizationLoggingOptions)
    , _caoLogName                     :: !(Maybe CloudAuditOptionsLogName)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudAuditOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caoAuthorizationLoggingOptions'
--
-- * 'caoLogName'
cloudAuditOptions
    :: CloudAuditOptions
cloudAuditOptions =
  CloudAuditOptions'
    {_caoAuthorizationLoggingOptions = Nothing, _caoLogName = Nothing}


-- | Information used by the Cloud Audit Logging pipeline.
caoAuthorizationLoggingOptions :: Lens' CloudAuditOptions (Maybe AuthorizationLoggingOptions)
caoAuthorizationLoggingOptions
  = lens _caoAuthorizationLoggingOptions
      (\ s a -> s{_caoAuthorizationLoggingOptions = a})

-- | The log_name to populate in the Cloud Audit Record.
caoLogName :: Lens' CloudAuditOptions (Maybe CloudAuditOptionsLogName)
caoLogName
  = lens _caoLogName (\ s a -> s{_caoLogName = a})

instance FromJSON CloudAuditOptions where
        parseJSON
          = withObject "CloudAuditOptions"
              (\ o ->
                 CloudAuditOptions' <$>
                   (o .:? "authorizationLoggingOptions") <*>
                     (o .:? "logName"))

instance ToJSON CloudAuditOptions where
        toJSON CloudAuditOptions'{..}
          = object
              (catMaybes
                 [("authorizationLoggingOptions" .=) <$>
                    _caoAuthorizationLoggingOptions,
                  ("logName" .=) <$> _caoLogName])

-- | Write a Data Access (Gin) log
--
-- /See:/ 'dataAccessOptions' smart constructor.
newtype DataAccessOptions =
  DataAccessOptions'
    { _daoLogMode :: Maybe DataAccessOptionsLogMode
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataAccessOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daoLogMode'
dataAccessOptions
    :: DataAccessOptions
dataAccessOptions = DataAccessOptions' {_daoLogMode = Nothing}


-- | Whether Gin logging should happen in a fail-closed manner at the caller.
-- This is relevant only in the LocalIAM implementation, for now.
daoLogMode :: Lens' DataAccessOptions (Maybe DataAccessOptionsLogMode)
daoLogMode
  = lens _daoLogMode (\ s a -> s{_daoLogMode = a})

instance FromJSON DataAccessOptions where
        parseJSON
          = withObject "DataAccessOptions"
              (\ o -> DataAccessOptions' <$> (o .:? "logMode"))

instance ToJSON DataAccessOptions where
        toJSON DataAccessOptions'{..}
          = object (catMaybes [("logMode" .=) <$> _daoLogMode])

-- | Request message for restarting a Data Fusion instance.
--
-- /See:/ 'restartInstanceRequest' smart constructor.
data RestartInstanceRequest =
  RestartInstanceRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestartInstanceRequest' with the minimum fields required to make a request.
--
restartInstanceRequest
    :: RestartInstanceRequest
restartInstanceRequest = RestartInstanceRequest'


instance FromJSON RestartInstanceRequest where
        parseJSON
          = withObject "RestartInstanceRequest"
              (\ o -> pure RestartInstanceRequest')

instance ToJSON RestartInstanceRequest where
        toJSON = const emptyObject

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | Request message for upgrading a Data Fusion instance. To change the
-- instance properties, instance update should be used.
--
-- /See:/ 'upgradeInstanceRequest' smart constructor.
data UpgradeInstanceRequest =
  UpgradeInstanceRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpgradeInstanceRequest' with the minimum fields required to make a request.
--
upgradeInstanceRequest
    :: UpgradeInstanceRequest
upgradeInstanceRequest = UpgradeInstanceRequest'


instance FromJSON UpgradeInstanceRequest where
        parseJSON
          = withObject "UpgradeInstanceRequest"
              (\ o -> pure UpgradeInstanceRequest')

instance ToJSON UpgradeInstanceRequest where
        toJSON = const emptyObject

-- | Authorization-related information used by Cloud Audit Logging.
--
-- /See:/ 'authorizationLoggingOptions' smart constructor.
newtype AuthorizationLoggingOptions =
  AuthorizationLoggingOptions'
    { _aloPermissionType :: Maybe AuthorizationLoggingOptionsPermissionType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizationLoggingOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aloPermissionType'
authorizationLoggingOptions
    :: AuthorizationLoggingOptions
authorizationLoggingOptions =
  AuthorizationLoggingOptions' {_aloPermissionType = Nothing}


-- | The type of the permission that was checked.
aloPermissionType :: Lens' AuthorizationLoggingOptions (Maybe AuthorizationLoggingOptionsPermissionType)
aloPermissionType
  = lens _aloPermissionType
      (\ s a -> s{_aloPermissionType = a})

instance FromJSON AuthorizationLoggingOptions where
        parseJSON
          = withObject "AuthorizationLoggingOptions"
              (\ o ->
                 AuthorizationLoggingOptions' <$>
                   (o .:? "permissionType"))

instance ToJSON AuthorizationLoggingOptions where
        toJSON AuthorizationLoggingOptions'{..}
          = object
              (catMaybes
                 [("permissionType" .=) <$> _aloPermissionType])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag         :: !(Maybe Bytes)
    , _pRules        :: !(Maybe [Rule])
    , _pVersion      :: !(Maybe (Textual Int32))
    , _pBindings     :: !(Maybe [Binding])
    , _pIAMOwned     :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pRules'
--
-- * 'pVersion'
--
-- * 'pBindings'
--
-- * 'pIAMOwned'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pRules = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    , _pIAMOwned = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | If more than one rule is specified, the rules are applied in the
-- following manner: - All matching LOG rules are always applied. - If any
-- DENY\/DENY_WITH_LOG rule matches, permission is denied. Logging will be
-- applied if one or more matching rule requires logging. - Otherwise, if
-- any ALLOW\/ALLOW_WITH_LOG rule matches, permission is granted. Logging
-- will be applied if one or more matching rule requires logging. -
-- Otherwise, if no rule applies, permission is denied.
pRules :: Lens' Policy [Rule]
pRules
  = lens _pRules (\ s a -> s{_pRules = a}) . _Default .
      _Coerce

-- | Deprecated.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

pIAMOwned :: Lens' Policy (Maybe Bool)
pIAMOwned
  = lens _pIAMOwned (\ s a -> s{_pIAMOwned = a})

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "rules" .!= mempty)
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty)
                     <*> (o .:? "iamOwned"))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("rules" .=) <$> _pRules,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings,
                  ("iamOwned" .=) <$> _pIAMOwned])

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}


llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata =
  LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
  LocationMetadata' {_lmAddtional = _Coerce # pLmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
lmAddtional :: Lens' LocationMetadata (HashMap Text JSONValue)
lmAddtional
  = lens _lmAddtional (\ s a -> s{_lmAddtional = a}) .
      _Coerce

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (parseJSONObject o))

instance ToJSON LocationMetadata where
        toJSON = toJSON . _lmAddtional

-- | Represents the metadata of a long-running operation.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
  OperationMetadata'
    { _omAPIVersion            :: !(Maybe Text)
    , _omRequestedCancellation :: !(Maybe Bool)
    , _omEndTime               :: !(Maybe DateTime')
    , _omStatusDetail          :: !(Maybe Text)
    , _omVerb                  :: !(Maybe Text)
    , _omTarget                :: !(Maybe Text)
    , _omCreateTime            :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAPIVersion'
--
-- * 'omRequestedCancellation'
--
-- * 'omEndTime'
--
-- * 'omStatusDetail'
--
-- * 'omVerb'
--
-- * 'omTarget'
--
-- * 'omCreateTime'
operationMetadata
    :: OperationMetadata
operationMetadata =
  OperationMetadata'
    { _omAPIVersion = Nothing
    , _omRequestedCancellation = Nothing
    , _omEndTime = Nothing
    , _omStatusDetail = Nothing
    , _omVerb = Nothing
    , _omTarget = Nothing
    , _omCreateTime = Nothing
    }


-- | API version used to start the operation.
omAPIVersion :: Lens' OperationMetadata (Maybe Text)
omAPIVersion
  = lens _omAPIVersion (\ s a -> s{_omAPIVersion = a})

-- | Identifies whether the user has requested cancellation of the operation.
-- Operations that have successfully been cancelled have Operation.error
-- value with a google.rpc.Status.code of 1, corresponding to
-- \`Code.CANCELLED\`.
omRequestedCancellation :: Lens' OperationMetadata (Maybe Bool)
omRequestedCancellation
  = lens _omRequestedCancellation
      (\ s a -> s{_omRequestedCancellation = a})

-- | The time the operation finished running.
omEndTime :: Lens' OperationMetadata (Maybe UTCTime)
omEndTime
  = lens _omEndTime (\ s a -> s{_omEndTime = a}) .
      mapping _DateTime

-- | Human-readable status of the operation if any.
omStatusDetail :: Lens' OperationMetadata (Maybe Text)
omStatusDetail
  = lens _omStatusDetail
      (\ s a -> s{_omStatusDetail = a})

-- | Name of the verb executed by the operation.
omVerb :: Lens' OperationMetadata (Maybe Text)
omVerb = lens _omVerb (\ s a -> s{_omVerb = a})

-- | Server-defined resource path for the target of the operation.
omTarget :: Lens' OperationMetadata (Maybe Text)
omTarget = lens _omTarget (\ s a -> s{_omTarget = a})

-- | The time the operation was created.
omCreateTime :: Lens' OperationMetadata (Maybe UTCTime)
omCreateTime
  = lens _omCreateTime (\ s a -> s{_omCreateTime = a})
      . mapping _DateTime

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata' <$>
                   (o .:? "apiVersion") <*>
                     (o .:? "requestedCancellation")
                     <*> (o .:? "endTime")
                     <*> (o .:? "statusDetail")
                     <*> (o .:? "verb")
                     <*> (o .:? "target")
                     <*> (o .:? "createTime"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _omAPIVersion,
                  ("requestedCancellation" .=) <$>
                    _omRequestedCancellation,
                  ("endTime" .=) <$> _omEndTime,
                  ("statusDetail" .=) <$> _omStatusDetail,
                  ("verb" .=) <$> _omVerb, ("target" .=) <$> _omTarget,
                  ("createTime" .=) <$> _omCreateTime])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting foo\'gmail.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType         :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

-- | Response message for the list instance request.
--
-- /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirUnreachable   :: !(Maybe [Text])
    , _lirInstances     :: !(Maybe [Instance])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirNextPageToken'
--
-- * 'lirUnreachable'
--
-- * 'lirInstances'
listInstancesResponse
    :: ListInstancesResponse
listInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken = Nothing
    , _lirUnreachable = Nothing
    , _lirInstances = Nothing
    }


-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
lirNextPageToken :: Lens' ListInstancesResponse (Maybe Text)
lirNextPageToken
  = lens _lirNextPageToken
      (\ s a -> s{_lirNextPageToken = a})

-- | Locations that could not be reached.
lirUnreachable :: Lens' ListInstancesResponse [Text]
lirUnreachable
  = lens _lirUnreachable
      (\ s a -> s{_lirUnreachable = a})
      . _Default
      . _Coerce

-- | Represents a list of Data Fusion instances.
lirInstances :: Lens' ListInstancesResponse [Instance]
lirInstances
  = lens _lirInstances (\ s a -> s{_lirInstances = a})
      . _Default
      . _Coerce

instance FromJSON ListInstancesResponse where
        parseJSON
          = withObject "ListInstancesResponse"
              (\ o ->
                 ListInstancesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "instances" .!= mempty))

instance ToJSON ListInstancesResponse where
        toJSON ListInstancesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirNextPageToken,
                  ("unreachable" .=) <$> _lirUnreachable,
                  ("instances" .=) <$> _lirInstances])

-- | A condition to be met.
--
-- /See:/ 'condition' smart constructor.
data Condition =
  Condition'
    { _cOp     :: !(Maybe ConditionOp)
    , _cIAM    :: !(Maybe ConditionIAM)
    , _cValues :: !(Maybe [Text])
    , _cSys    :: !(Maybe ConditionSys)
    , _cSvc    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cOp'
--
-- * 'cIAM'
--
-- * 'cValues'
--
-- * 'cSys'
--
-- * 'cSvc'
condition
    :: Condition
condition =
  Condition'
    { _cOp = Nothing
    , _cIAM = Nothing
    , _cValues = Nothing
    , _cSys = Nothing
    , _cSvc = Nothing
    }


-- | An operator to apply the subject with.
cOp :: Lens' Condition (Maybe ConditionOp)
cOp = lens _cOp (\ s a -> s{_cOp = a})

-- | Trusted attributes supplied by the IAM system.
cIAM :: Lens' Condition (Maybe ConditionIAM)
cIAM = lens _cIAM (\ s a -> s{_cIAM = a})

-- | The objects of the condition.
cValues :: Lens' Condition [Text]
cValues
  = lens _cValues (\ s a -> s{_cValues = a}) . _Default
      . _Coerce

-- | Trusted attributes supplied by any service that owns resources and uses
-- the IAM system for access control.
cSys :: Lens' Condition (Maybe ConditionSys)
cSys = lens _cSys (\ s a -> s{_cSys = a})

-- | Trusted attributes discharged by the service.
cSvc :: Lens' Condition (Maybe Text)
cSvc = lens _cSvc (\ s a -> s{_cSvc = a})

instance FromJSON Condition where
        parseJSON
          = withObject "Condition"
              (\ o ->
                 Condition' <$>
                   (o .:? "op") <*> (o .:? "iam") <*>
                     (o .:? "values" .!= mempty)
                     <*> (o .:? "sys")
                     <*> (o .:? "svc"))

instance ToJSON Condition where
        toJSON Condition'{..}
          = object
              (catMaybes
                 [("op" .=) <$> _cOp, ("iam" .=) <$> _cIAM,
                  ("values" .=) <$> _cValues, ("sys" .=) <$> _cSys,
                  ("svc" .=) <$> _cSvc])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Specifies what kind of log the caller must write
--
-- /See:/ 'logConfig' smart constructor.
data LogConfig =
  LogConfig'
    { _lcCloudAudit :: !(Maybe CloudAuditOptions)
    , _lcDataAccess :: !(Maybe DataAccessOptions)
    , _lcCounter    :: !(Maybe CounterOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcCloudAudit'
--
-- * 'lcDataAccess'
--
-- * 'lcCounter'
logConfig
    :: LogConfig
logConfig =
  LogConfig'
    {_lcCloudAudit = Nothing, _lcDataAccess = Nothing, _lcCounter = Nothing}


-- | Cloud audit options.
lcCloudAudit :: Lens' LogConfig (Maybe CloudAuditOptions)
lcCloudAudit
  = lens _lcCloudAudit (\ s a -> s{_lcCloudAudit = a})

-- | Data access options.
lcDataAccess :: Lens' LogConfig (Maybe DataAccessOptions)
lcDataAccess
  = lens _lcDataAccess (\ s a -> s{_lcDataAccess = a})

-- | Counter options.
lcCounter :: Lens' LogConfig (Maybe CounterOptions)
lcCounter
  = lens _lcCounter (\ s a -> s{_lcCounter = a})

instance FromJSON LogConfig where
        parseJSON
          = withObject "LogConfig"
              (\ o ->
                 LogConfig' <$>
                   (o .:? "cloudAudit") <*> (o .:? "dataAccess") <*>
                     (o .:? "counter"))

instance ToJSON LogConfig where
        toJSON LogConfig'{..}
          = object
              (catMaybes
                 [("cloudAudit" .=) <$> _lcCloudAudit,
                  ("dataAccess" .=) <$> _lcDataAccess,
                  ("counter" .=) <$> _lcCounter])

-- | Map of additional options used to configure the behavior of Data Fusion
-- instance.
--
-- /See:/ 'instanceOptions' smart constructor.
newtype InstanceOptions =
  InstanceOptions'
    { _ioAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ioAddtional'
instanceOptions
    :: HashMap Text Text -- ^ 'ioAddtional'
    -> InstanceOptions
instanceOptions pIoAddtional_ =
  InstanceOptions' {_ioAddtional = _Coerce # pIoAddtional_}


ioAddtional :: Lens' InstanceOptions (HashMap Text Text)
ioAddtional
  = lens _ioAddtional (\ s a -> s{_ioAddtional = a}) .
      _Coerce

instance FromJSON InstanceOptions where
        parseJSON
          = withObject "InstanceOptions"
              (\ o -> InstanceOptions' <$> (parseJSONObject o))

instance ToJSON InstanceOptions where
        toJSON = toJSON . _ioAddtional

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: The G Suite domain
-- (primary) that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. NOTE: An unsatisfied
-- condition will not allow user access via current binding. Different
-- bindings, including their conditions, are examined independently.
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])

-- | Represents a Data Fusion instance.
--
-- /See:/ 'instance'' smart constructor.
data Instance =
  Instance'
    { _iStateMessage                :: !(Maybe Text)
    , _iState                       :: !(Maybe InstanceState)
    , _iEnableStackdriverLogging    :: !(Maybe Bool)
    , _iServiceEndpoint             :: !(Maybe Text)
    , _iZone                        :: !(Maybe Text)
    , _iServiceAccount              :: !(Maybe Text)
    , _iNetworkConfig               :: !(Maybe NetworkConfig)
    , _iUpdateTime                  :: !(Maybe DateTime')
    , _iPrivateInstance             :: !(Maybe Bool)
    , _iName                        :: !(Maybe Text)
    , _iVersion                     :: !(Maybe Text)
    , _iDisplayName                 :: !(Maybe Text)
    , _iEnableStackdriverMonitoring :: !(Maybe Bool)
    , _iLabels                      :: !(Maybe InstanceLabels)
    , _iOptions                     :: !(Maybe InstanceOptions)
    , _iType                        :: !(Maybe InstanceType)
    , _iDescription                 :: !(Maybe Text)
    , _iCreateTime                  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iStateMessage'
--
-- * 'iState'
--
-- * 'iEnableStackdriverLogging'
--
-- * 'iServiceEndpoint'
--
-- * 'iZone'
--
-- * 'iServiceAccount'
--
-- * 'iNetworkConfig'
--
-- * 'iUpdateTime'
--
-- * 'iPrivateInstance'
--
-- * 'iName'
--
-- * 'iVersion'
--
-- * 'iDisplayName'
--
-- * 'iEnableStackdriverMonitoring'
--
-- * 'iLabels'
--
-- * 'iOptions'
--
-- * 'iType'
--
-- * 'iDescription'
--
-- * 'iCreateTime'
instance'
    :: Instance
instance' =
  Instance'
    { _iStateMessage = Nothing
    , _iState = Nothing
    , _iEnableStackdriverLogging = Nothing
    , _iServiceEndpoint = Nothing
    , _iZone = Nothing
    , _iServiceAccount = Nothing
    , _iNetworkConfig = Nothing
    , _iUpdateTime = Nothing
    , _iPrivateInstance = Nothing
    , _iName = Nothing
    , _iVersion = Nothing
    , _iDisplayName = Nothing
    , _iEnableStackdriverMonitoring = Nothing
    , _iLabels = Nothing
    , _iOptions = Nothing
    , _iType = Nothing
    , _iDescription = Nothing
    , _iCreateTime = Nothing
    }


-- | Output only. Additional information about the current state of this Data
-- Fusion instance if available.
iStateMessage :: Lens' Instance (Maybe Text)
iStateMessage
  = lens _iStateMessage
      (\ s a -> s{_iStateMessage = a})

-- | Output only. The current state of this Data Fusion instance.
iState :: Lens' Instance (Maybe InstanceState)
iState = lens _iState (\ s a -> s{_iState = a})

-- | Option to enable Stackdriver Logging.
iEnableStackdriverLogging :: Lens' Instance (Maybe Bool)
iEnableStackdriverLogging
  = lens _iEnableStackdriverLogging
      (\ s a -> s{_iEnableStackdriverLogging = a})

-- | Output only. Endpoint on which the Data Fusion UI and REST APIs are
-- accessible.
iServiceEndpoint :: Lens' Instance (Maybe Text)
iServiceEndpoint
  = lens _iServiceEndpoint
      (\ s a -> s{_iServiceEndpoint = a})

-- | Name of the zone in which the Data Fusion instance will be created.
iZone :: Lens' Instance (Maybe Text)
iZone = lens _iZone (\ s a -> s{_iZone = a})

-- | Output only. Service account which will be used to access resources in
-- the customer project.\"
iServiceAccount :: Lens' Instance (Maybe Text)
iServiceAccount
  = lens _iServiceAccount
      (\ s a -> s{_iServiceAccount = a})

-- | Network configuration options. These are required when a private Data
-- Fusion instance is to be created.
iNetworkConfig :: Lens' Instance (Maybe NetworkConfig)
iNetworkConfig
  = lens _iNetworkConfig
      (\ s a -> s{_iNetworkConfig = a})

-- | Output only. The time the instance was last updated.
iUpdateTime :: Lens' Instance (Maybe UTCTime)
iUpdateTime
  = lens _iUpdateTime (\ s a -> s{_iUpdateTime = a}) .
      mapping _DateTime

-- | Specifies whether the Data Fusion instance should be private. If set to
-- true, all Data Fusion nodes will have private IP addresses and will not
-- be able to access the public internet.
iPrivateInstance :: Lens' Instance (Maybe Bool)
iPrivateInstance
  = lens _iPrivateInstance
      (\ s a -> s{_iPrivateInstance = a})

-- | Output only. The name of this instance is in the form of
-- projects\/{project}\/locations\/{location}\/instances\/{instance}.
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | Output only. Current version of the Data Fusion.
iVersion :: Lens' Instance (Maybe Text)
iVersion = lens _iVersion (\ s a -> s{_iVersion = a})

-- | Display name for an instance.
iDisplayName :: Lens' Instance (Maybe Text)
iDisplayName
  = lens _iDisplayName (\ s a -> s{_iDisplayName = a})

-- | Option to enable Stackdriver Monitoring.
iEnableStackdriverMonitoring :: Lens' Instance (Maybe Bool)
iEnableStackdriverMonitoring
  = lens _iEnableStackdriverMonitoring
      (\ s a -> s{_iEnableStackdriverMonitoring = a})

-- | The resource labels for instance to use to annotate any related
-- underlying resources such as GCE VMs. The character \'=\' is not allowed
-- to be used within the labels.
iLabels :: Lens' Instance (Maybe InstanceLabels)
iLabels = lens _iLabels (\ s a -> s{_iLabels = a})

-- | Map of additional options used to configure the behavior of Data Fusion
-- instance.
iOptions :: Lens' Instance (Maybe InstanceOptions)
iOptions = lens _iOptions (\ s a -> s{_iOptions = a})

-- | Required. Instance type.
iType :: Lens' Instance (Maybe InstanceType)
iType = lens _iType (\ s a -> s{_iType = a})

-- | An optional description of this instance.
iDescription :: Lens' Instance (Maybe Text)
iDescription
  = lens _iDescription (\ s a -> s{_iDescription = a})

-- | Output only. The time the instance was created.
iCreateTime :: Lens' Instance (Maybe UTCTime)
iCreateTime
  = lens _iCreateTime (\ s a -> s{_iCreateTime = a}) .
      mapping _DateTime

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance' <$>
                   (o .:? "stateMessage") <*> (o .:? "state") <*>
                     (o .:? "enableStackdriverLogging")
                     <*> (o .:? "serviceEndpoint")
                     <*> (o .:? "zone")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "networkConfig")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "privateInstance")
                     <*> (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "displayName")
                     <*> (o .:? "enableStackdriverMonitoring")
                     <*> (o .:? "labels")
                     <*> (o .:? "options")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON Instance where
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("stateMessage" .=) <$> _iStateMessage,
                  ("state" .=) <$> _iState,
                  ("enableStackdriverLogging" .=) <$>
                    _iEnableStackdriverLogging,
                  ("serviceEndpoint" .=) <$> _iServiceEndpoint,
                  ("zone" .=) <$> _iZone,
                  ("serviceAccount" .=) <$> _iServiceAccount,
                  ("networkConfig" .=) <$> _iNetworkConfig,
                  ("updateTime" .=) <$> _iUpdateTime,
                  ("privateInstance" .=) <$> _iPrivateInstance,
                  ("name" .=) <$> _iName, ("version" .=) <$> _iVersion,
                  ("displayName" .=) <$> _iDisplayName,
                  ("enableStackdriverMonitoring" .=) <$>
                    _iEnableStackdriverMonitoring,
                  ("labels" .=) <$> _iLabels,
                  ("options" .=) <$> _iOptions, ("type" .=) <$> _iType,
                  ("description" .=) <$> _iDescription,
                  ("createTime" .=) <$> _iCreateTime])
