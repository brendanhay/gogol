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

import Network.Google.DataFusion.Types.Sum
import Network.Google.Prelude

-- | The resource labels for instance to use to annotate any related
-- underlying resources such as Compute Engine VMs. The character \'=\' is
-- not allowed to be used within the labels.
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
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
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

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


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

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
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


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
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
    , _llrLocations :: !(Maybe [Location])
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
    , _lorOperations :: !(Maybe [Operation])
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
    { _lName :: !(Maybe Text)
    , _lMetadata :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels :: !(Maybe LocationLabels)
    , _lLocationId :: !(Maybe Text)
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
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
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
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
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

-- | The crypto key configuration. This field is used by the Customer-managed
-- encryption keys (CMEK) feature.
--
-- /See:/ 'cryptoKeyConfig' smart constructor.
newtype CryptoKeyConfig =
  CryptoKeyConfig'
    { _ckcKeyReference :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CryptoKeyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckcKeyReference'
cryptoKeyConfig
    :: CryptoKeyConfig
cryptoKeyConfig = CryptoKeyConfig' {_ckcKeyReference = Nothing}


-- | The name of the key which is used to encrypt\/decrypt customer data. For
-- key in Cloud KMS, the key should be in the format of
-- \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\`.
ckcKeyReference :: Lens' CryptoKeyConfig (Maybe Text)
ckcKeyReference
  = lens _ckcKeyReference
      (\ s a -> s{_ckcKeyReference = a})

instance FromJSON CryptoKeyConfig where
        parseJSON
          = withObject "CryptoKeyConfig"
              (\ o -> CryptoKeyConfig' <$> (o .:? "keyReference"))

instance ToJSON CryptoKeyConfig where
        toJSON CryptoKeyConfig'{..}
          = object
              (catMaybes
                 [("keyReference" .=) <$> _ckcKeyReference])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy :: !(Maybe Policy)
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
-- the following default mask is used: \`paths: \"bindings, etag\"\`
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
    { _ncNetwork :: !(Maybe Text)
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
-- Project will be peered for executing pipelines. In case of shared VPC
-- where the network resides in another host project the network should
-- specified in the form of
-- projects\/{host-project-id}\/global\/networks\/{network}
ncNetwork :: Lens' NetworkConfig (Maybe Text)
ncNetwork
  = lens _ncNetwork (\ s a -> s{_ncNetwork = a})

-- | The IP range in CIDR notation to use for the managed Data Fusion
-- instance nodes. This range must not overlap with any other ranges used
-- in the customer network.
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

-- | Identifies Data Fusion accelerators for an instance.
--
-- /See:/ 'accelerator' smart constructor.
data Accelerator =
  Accelerator'
    { _aAcceleratorType :: !(Maybe AcceleratorAcceleratorType)
    , _aState :: !(Maybe AcceleratorState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Accelerator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAcceleratorType'
--
-- * 'aState'
accelerator
    :: Accelerator
accelerator = Accelerator' {_aAcceleratorType = Nothing, _aState = Nothing}


-- | The type of an accelator for a CDF instance.
aAcceleratorType :: Lens' Accelerator (Maybe AcceleratorAcceleratorType)
aAcceleratorType
  = lens _aAcceleratorType
      (\ s a -> s{_aAcceleratorType = a})

-- | The state of the accelerator
aState :: Lens' Accelerator (Maybe AcceleratorState)
aState = lens _aState (\ s a -> s{_aState = a})

instance FromJSON Accelerator where
        parseJSON
          = withObject "Accelerator"
              (\ o ->
                 Accelerator' <$>
                   (o .:? "acceleratorType") <*> (o .:? "state"))

instance ToJSON Accelerator where
        toJSON Accelerator'{..}
          = object
              (catMaybes
                 [("acceleratorType" .=) <$> _aAcceleratorType,
                  ("state" .=) <$> _aState])

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

-- | The Data Fusion version. This proto message stores information about
-- certain Data Fusion version, which is used for Data Fusion version
-- upgrade.
--
-- /See:/ 'version' smart constructor.
data Version =
  Version'
    { _vDefaultVersion :: !(Maybe Bool)
    , _vVersionNumber :: !(Maybe Text)
    , _vAvailableFeatures :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vDefaultVersion'
--
-- * 'vVersionNumber'
--
-- * 'vAvailableFeatures'
version
    :: Version
version =
  Version'
    { _vDefaultVersion = Nothing
    , _vVersionNumber = Nothing
    , _vAvailableFeatures = Nothing
    }


-- | Whether this is currently the default version for Cloud Data Fusion
vDefaultVersion :: Lens' Version (Maybe Bool)
vDefaultVersion
  = lens _vDefaultVersion
      (\ s a -> s{_vDefaultVersion = a})

-- | The version number of the Data Fusion instance, such as \'6.0.1.0\'.
vVersionNumber :: Lens' Version (Maybe Text)
vVersionNumber
  = lens _vVersionNumber
      (\ s a -> s{_vVersionNumber = a})

-- | Represents a list of available feature names for a given version.
vAvailableFeatures :: Lens' Version [Text]
vAvailableFeatures
  = lens _vAvailableFeatures
      (\ s a -> s{_vAvailableFeatures = a})
      . _Default
      . _Coerce

instance FromJSON Version where
        parseJSON
          = withObject "Version"
              (\ o ->
                 Version' <$>
                   (o .:? "defaultVersion") <*> (o .:? "versionNumber")
                     <*> (o .:? "availableFeatures" .!= mempty))

instance ToJSON Version where
        toJSON Version'{..}
          = object
              (catMaybes
                 [("defaultVersion" .=) <$> _vDefaultVersion,
                  ("versionNumber" .=) <$> _vVersionNumber,
                  ("availableFeatures" .=) <$> _vAvailableFeatures])

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

-- | Map to hold any additional status info for the operation If there is an
-- accelerator being enabled\/disabled\/deleted, this will be populated
-- with accelerator name as key and status as ENABLING, DISABLING or
-- DELETING
--
-- /See:/ 'operationMetadataAdditionalStatus' smart constructor.
newtype OperationMetadataAdditionalStatus =
  OperationMetadataAdditionalStatus'
    { _omasAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadataAdditionalStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omasAddtional'
operationMetadataAdditionalStatus
    :: HashMap Text Text -- ^ 'omasAddtional'
    -> OperationMetadataAdditionalStatus
operationMetadataAdditionalStatus pOmasAddtional_ =
  OperationMetadataAdditionalStatus'
    {_omasAddtional = _Coerce # pOmasAddtional_}


omasAddtional :: Lens' OperationMetadataAdditionalStatus (HashMap Text Text)
omasAddtional
  = lens _omasAddtional
      (\ s a -> s{_omasAddtional = a})
      . _Coerce

instance FromJSON OperationMetadataAdditionalStatus
         where
        parseJSON
          = withObject "OperationMetadataAdditionalStatus"
              (\ o ->
                 OperationMetadataAdditionalStatus' <$>
                   (parseJSONObject o))

instance ToJSON OperationMetadataAdditionalStatus
         where
        toJSON = toJSON . _omasAddtional

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

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
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
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
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
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

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
    { _omAPIVersion :: !(Maybe Text)
    , _omAdditionalStatus :: !(Maybe OperationMetadataAdditionalStatus)
    , _omRequestedCancellation :: !(Maybe Bool)
    , _omEndTime :: !(Maybe DateTime')
    , _omStatusDetail :: !(Maybe Text)
    , _omVerb :: !(Maybe Text)
    , _omTarget :: !(Maybe Text)
    , _omCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAPIVersion'
--
-- * 'omAdditionalStatus'
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
    , _omAdditionalStatus = Nothing
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

-- | Map to hold any additional status info for the operation If there is an
-- accelerator being enabled\/disabled\/deleted, this will be populated
-- with accelerator name as key and status as ENABLING, DISABLING or
-- DELETING
omAdditionalStatus :: Lens' OperationMetadata (Maybe OperationMetadataAdditionalStatus)
omAdditionalStatus
  = lens _omAdditionalStatus
      (\ s a -> s{_omAdditionalStatus = a})

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
                   (o .:? "apiVersion") <*> (o .:? "additionalStatus")
                     <*> (o .:? "requestedCancellation")
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
                  ("additionalStatus" .=) <$> _omAdditionalStatus,
                  ("requestedCancellation" .=) <$>
                    _omRequestedCancellation,
                  ("endTime" .=) <$> _omEndTime,
                  ("statusDetail" .=) <$> _omStatusDetail,
                  ("verb" .=) <$> _omVerb, ("target" .=) <$> _omTarget,
                  ("createTime" .=) <$> _omCreateTime])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType :: !(Maybe AuditLogConfigLogType)
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
    , _lirUnreachable :: !(Maybe [Text])
    , _lirInstances :: !(Maybe [Instance])
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
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
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
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
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
    { _iStateMessage :: !(Maybe Text)
    , _iTenantProjectId :: !(Maybe Text)
    , _iState :: !(Maybe InstanceState)
    , _iEnableStackdriverLogging :: !(Maybe Bool)
    , _iP4ServiceAccount :: !(Maybe Text)
    , _iEnableRbac :: !(Maybe Bool)
    , _iAPIEndpoint :: !(Maybe Text)
    , _iCryptoKeyConfig :: !(Maybe CryptoKeyConfig)
    , _iServiceEndpoint :: !(Maybe Text)
    , _iZone :: !(Maybe Text)
    , _iGcsBucket :: !(Maybe Text)
    , _iServiceAccount :: !(Maybe Text)
    , _iNetworkConfig :: !(Maybe NetworkConfig)
    , _iUpdateTime :: !(Maybe DateTime')
    , _iAccelerators :: !(Maybe [Accelerator])
    , _iPrivateInstance :: !(Maybe Bool)
    , _iName :: !(Maybe Text)
    , _iVersion :: !(Maybe Text)
    , _iDataprocServiceAccount :: !(Maybe Text)
    , _iDisplayName :: !(Maybe Text)
    , _iEnableStackdriverMonitoring :: !(Maybe Bool)
    , _iLabels :: !(Maybe InstanceLabels)
    , _iOptions :: !(Maybe InstanceOptions)
    , _iType :: !(Maybe InstanceType)
    , _iAvailableVersion :: !(Maybe [Version])
    , _iDescription :: !(Maybe Text)
    , _iCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iStateMessage'
--
-- * 'iTenantProjectId'
--
-- * 'iState'
--
-- * 'iEnableStackdriverLogging'
--
-- * 'iP4ServiceAccount'
--
-- * 'iEnableRbac'
--
-- * 'iAPIEndpoint'
--
-- * 'iCryptoKeyConfig'
--
-- * 'iServiceEndpoint'
--
-- * 'iZone'
--
-- * 'iGcsBucket'
--
-- * 'iServiceAccount'
--
-- * 'iNetworkConfig'
--
-- * 'iUpdateTime'
--
-- * 'iAccelerators'
--
-- * 'iPrivateInstance'
--
-- * 'iName'
--
-- * 'iVersion'
--
-- * 'iDataprocServiceAccount'
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
-- * 'iAvailableVersion'
--
-- * 'iDescription'
--
-- * 'iCreateTime'
instance'
    :: Instance
instance' =
  Instance'
    { _iStateMessage = Nothing
    , _iTenantProjectId = Nothing
    , _iState = Nothing
    , _iEnableStackdriverLogging = Nothing
    , _iP4ServiceAccount = Nothing
    , _iEnableRbac = Nothing
    , _iAPIEndpoint = Nothing
    , _iCryptoKeyConfig = Nothing
    , _iServiceEndpoint = Nothing
    , _iZone = Nothing
    , _iGcsBucket = Nothing
    , _iServiceAccount = Nothing
    , _iNetworkConfig = Nothing
    , _iUpdateTime = Nothing
    , _iAccelerators = Nothing
    , _iPrivateInstance = Nothing
    , _iName = Nothing
    , _iVersion = Nothing
    , _iDataprocServiceAccount = Nothing
    , _iDisplayName = Nothing
    , _iEnableStackdriverMonitoring = Nothing
    , _iLabels = Nothing
    , _iOptions = Nothing
    , _iType = Nothing
    , _iAvailableVersion = Nothing
    , _iDescription = Nothing
    , _iCreateTime = Nothing
    }


-- | Output only. Additional information about the current state of this Data
-- Fusion instance if available.
iStateMessage :: Lens' Instance (Maybe Text)
iStateMessage
  = lens _iStateMessage
      (\ s a -> s{_iStateMessage = a})

-- | Output only. The name of the tenant project.
iTenantProjectId :: Lens' Instance (Maybe Text)
iTenantProjectId
  = lens _iTenantProjectId
      (\ s a -> s{_iTenantProjectId = a})

-- | Output only. The current state of this Data Fusion instance.
iState :: Lens' Instance (Maybe InstanceState)
iState = lens _iState (\ s a -> s{_iState = a})

-- | Option to enable Stackdriver Logging.
iEnableStackdriverLogging :: Lens' Instance (Maybe Bool)
iEnableStackdriverLogging
  = lens _iEnableStackdriverLogging
      (\ s a -> s{_iEnableStackdriverLogging = a})

-- | Output only. P4 service account for the customer project.
iP4ServiceAccount :: Lens' Instance (Maybe Text)
iP4ServiceAccount
  = lens _iP4ServiceAccount
      (\ s a -> s{_iP4ServiceAccount = a})

-- | Option to enable granular role-based access control.
iEnableRbac :: Lens' Instance (Maybe Bool)
iEnableRbac
  = lens _iEnableRbac (\ s a -> s{_iEnableRbac = a})

-- | Output only. Endpoint on which the REST APIs is accessible.
iAPIEndpoint :: Lens' Instance (Maybe Text)
iAPIEndpoint
  = lens _iAPIEndpoint (\ s a -> s{_iAPIEndpoint = a})

-- | The crypto key configuration. This field is used by the Customer-Managed
-- Encryption Keys (CMEK) feature.
iCryptoKeyConfig :: Lens' Instance (Maybe CryptoKeyConfig)
iCryptoKeyConfig
  = lens _iCryptoKeyConfig
      (\ s a -> s{_iCryptoKeyConfig = a})

-- | Output only. Endpoint on which the Data Fusion UI is accessible.
iServiceEndpoint :: Lens' Instance (Maybe Text)
iServiceEndpoint
  = lens _iServiceEndpoint
      (\ s a -> s{_iServiceEndpoint = a})

-- | Name of the zone in which the Data Fusion instance will be created. Only
-- DEVELOPER instances use this field.
iZone :: Lens' Instance (Maybe Text)
iZone = lens _iZone (\ s a -> s{_iZone = a})

-- | Output only. Cloud Storage bucket generated by Data Fusion in the
-- customer project.
iGcsBucket :: Lens' Instance (Maybe Text)
iGcsBucket
  = lens _iGcsBucket (\ s a -> s{_iGcsBucket = a})

-- | Output only. Deprecated. Use tenant_project_id instead to extract the
-- tenant project ID.
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

-- | List of accelerators enabled for this CDF instance.
iAccelerators :: Lens' Instance [Accelerator]
iAccelerators
  = lens _iAccelerators
      (\ s a -> s{_iAccelerators = a})
      . _Default
      . _Coerce

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

-- | Current version of the Data Fusion. Only specifiable in Update.
iVersion :: Lens' Instance (Maybe Text)
iVersion = lens _iVersion (\ s a -> s{_iVersion = a})

-- | User-managed service account to set on Dataproc when Cloud Data Fusion
-- creates Dataproc to run data processing pipelines. This allows users to
-- have fine-grained access control on Dataproc\'s accesses to cloud
-- resources.
iDataprocServiceAccount :: Lens' Instance (Maybe Text)
iDataprocServiceAccount
  = lens _iDataprocServiceAccount
      (\ s a -> s{_iDataprocServiceAccount = a})

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
-- underlying resources such as Compute Engine VMs. The character \'=\' is
-- not allowed to be used within the labels.
iLabels :: Lens' Instance (Maybe InstanceLabels)
iLabels = lens _iLabels (\ s a -> s{_iLabels = a})

-- | Map of additional options used to configure the behavior of Data Fusion
-- instance.
iOptions :: Lens' Instance (Maybe InstanceOptions)
iOptions = lens _iOptions (\ s a -> s{_iOptions = a})

-- | Required. Instance type.
iType :: Lens' Instance (Maybe InstanceType)
iType = lens _iType (\ s a -> s{_iType = a})

-- | Available versions that the instance can be upgraded to using
-- UpdateInstanceRequest.
iAvailableVersion :: Lens' Instance [Version]
iAvailableVersion
  = lens _iAvailableVersion
      (\ s a -> s{_iAvailableVersion = a})
      . _Default
      . _Coerce

-- | A description of this instance.
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
                   (o .:? "stateMessage") <*> (o .:? "tenantProjectId")
                     <*> (o .:? "state")
                     <*> (o .:? "enableStackdriverLogging")
                     <*> (o .:? "p4ServiceAccount")
                     <*> (o .:? "enableRbac")
                     <*> (o .:? "apiEndpoint")
                     <*> (o .:? "cryptoKeyConfig")
                     <*> (o .:? "serviceEndpoint")
                     <*> (o .:? "zone")
                     <*> (o .:? "gcsBucket")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "networkConfig")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "accelerators" .!= mempty)
                     <*> (o .:? "privateInstance")
                     <*> (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "dataprocServiceAccount")
                     <*> (o .:? "displayName")
                     <*> (o .:? "enableStackdriverMonitoring")
                     <*> (o .:? "labels")
                     <*> (o .:? "options")
                     <*> (o .:? "type")
                     <*> (o .:? "availableVersion" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON Instance where
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("stateMessage" .=) <$> _iStateMessage,
                  ("tenantProjectId" .=) <$> _iTenantProjectId,
                  ("state" .=) <$> _iState,
                  ("enableStackdriverLogging" .=) <$>
                    _iEnableStackdriverLogging,
                  ("p4ServiceAccount" .=) <$> _iP4ServiceAccount,
                  ("enableRbac" .=) <$> _iEnableRbac,
                  ("apiEndpoint" .=) <$> _iAPIEndpoint,
                  ("cryptoKeyConfig" .=) <$> _iCryptoKeyConfig,
                  ("serviceEndpoint" .=) <$> _iServiceEndpoint,
                  ("zone" .=) <$> _iZone,
                  ("gcsBucket" .=) <$> _iGcsBucket,
                  ("serviceAccount" .=) <$> _iServiceAccount,
                  ("networkConfig" .=) <$> _iNetworkConfig,
                  ("updateTime" .=) <$> _iUpdateTime,
                  ("accelerators" .=) <$> _iAccelerators,
                  ("privateInstance" .=) <$> _iPrivateInstance,
                  ("name" .=) <$> _iName, ("version" .=) <$> _iVersion,
                  ("dataprocServiceAccount" .=) <$>
                    _iDataprocServiceAccount,
                  ("displayName" .=) <$> _iDisplayName,
                  ("enableStackdriverMonitoring" .=) <$>
                    _iEnableStackdriverMonitoring,
                  ("labels" .=) <$> _iLabels,
                  ("options" .=) <$> _iOptions, ("type" .=) <$> _iType,
                  ("availableVersion" .=) <$> _iAvailableVersion,
                  ("description" .=) <$> _iDescription,
                  ("createTime" .=) <$> _iCreateTime])

-- | Response message for the list available versions request.
--
-- /See:/ 'listAvailableVersionsResponse' smart constructor.
data ListAvailableVersionsResponse =
  ListAvailableVersionsResponse'
    { _lavrNextPageToken :: !(Maybe Text)
    , _lavrAvailableVersions :: !(Maybe [Version])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAvailableVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lavrNextPageToken'
--
-- * 'lavrAvailableVersions'
listAvailableVersionsResponse
    :: ListAvailableVersionsResponse
listAvailableVersionsResponse =
  ListAvailableVersionsResponse'
    {_lavrNextPageToken = Nothing, _lavrAvailableVersions = Nothing}


-- | Token to retrieve the next page of results or empty if there are no more
-- results in the list.
lavrNextPageToken :: Lens' ListAvailableVersionsResponse (Maybe Text)
lavrNextPageToken
  = lens _lavrNextPageToken
      (\ s a -> s{_lavrNextPageToken = a})

-- | Represents a list of versions that are supported.
lavrAvailableVersions :: Lens' ListAvailableVersionsResponse [Version]
lavrAvailableVersions
  = lens _lavrAvailableVersions
      (\ s a -> s{_lavrAvailableVersions = a})
      . _Default
      . _Coerce

instance FromJSON ListAvailableVersionsResponse where
        parseJSON
          = withObject "ListAvailableVersionsResponse"
              (\ o ->
                 ListAvailableVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "availableVersions" .!= mempty))

instance ToJSON ListAvailableVersionsResponse where
        toJSON ListAvailableVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lavrNextPageToken,
                  ("availableVersions" .=) <$> _lavrAvailableVersions])
