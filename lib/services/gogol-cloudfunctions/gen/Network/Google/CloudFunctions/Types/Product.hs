{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudFunctions.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudFunctions.Types.Product where

import Network.Google.CloudFunctions.Types.Sum
import Network.Google.Prelude

-- | Configuration for a single version.
--
-- /See:/ 'secretVersion' smart constructor.
data SecretVersion =
  SecretVersion'
    { _svPath :: !(Maybe Text)
    , _svVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svPath'
--
-- * 'svVersion'
secretVersion
    :: SecretVersion
secretVersion = SecretVersion' {_svPath = Nothing, _svVersion = Nothing}


-- | Relative path of the file under the mount path where the secret value
-- for this version will be fetched and made available. For example,
-- setting the mount_path as \'\/etc\/secrets\' and path as
-- \`\/secret_foo\` would mount the secret value file at
-- \`\/etc\/secrets\/secret_foo\`.
svPath :: Lens' SecretVersion (Maybe Text)
svPath = lens _svPath (\ s a -> s{_svPath = a})

-- | Version of the secret (version number or the string \'latest\'). It is
-- preferrable to use \`latest\` version with secret volumes as secret
-- value changes are reflected immediately.
svVersion :: Lens' SecretVersion (Maybe Text)
svVersion
  = lens _svVersion (\ s a -> s{_svVersion = a})

instance FromJSON SecretVersion where
        parseJSON
          = withObject "SecretVersion"
              (\ o ->
                 SecretVersion' <$>
                   (o .:? "path") <*> (o .:? "version"))

instance ToJSON SecretVersion where
        toJSON SecretVersion'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _svPath,
                  ("version" .=) <$> _svVersion])

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

-- | Request of \`GenerateSourceUploadUrl\` method.
--
-- /See:/ 'generateUploadURLRequest' smart constructor.
data GenerateUploadURLRequest =
  GenerateUploadURLRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateUploadURLRequest' with the minimum fields required to make a request.
--
generateUploadURLRequest
    :: GenerateUploadURLRequest
generateUploadURLRequest = GenerateUploadURLRequest'


instance FromJSON GenerateUploadURLRequest where
        parseJSON
          = withObject "GenerateUploadURLRequest"
              (\ o -> pure GenerateUploadURLRequest')

instance ToJSON GenerateUploadURLRequest where
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
    , _oMetadata :: !(Maybe OperationMetadata)
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
oMetadata :: Lens' Operation (Maybe OperationMetadata)
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

-- | Request of \`GenerateDownloadUrl\` method.
--
-- /See:/ 'generateDownloadURLRequest' smart constructor.
newtype GenerateDownloadURLRequest =
  GenerateDownloadURLRequest'
    { _gdurVersionId :: Maybe (Textual Word64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateDownloadURLRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdurVersionId'
generateDownloadURLRequest
    :: GenerateDownloadURLRequest
generateDownloadURLRequest =
  GenerateDownloadURLRequest' {_gdurVersionId = Nothing}


-- | The optional version of function. If not set, default, current version
-- is used.
gdurVersionId :: Lens' GenerateDownloadURLRequest (Maybe Word64)
gdurVersionId
  = lens _gdurVersionId
      (\ s a -> s{_gdurVersionId = a})
      . mapping _Coerce

instance FromJSON GenerateDownloadURLRequest where
        parseJSON
          = withObject "GenerateDownloadURLRequest"
              (\ o ->
                 GenerateDownloadURLRequest' <$> (o .:? "versionId"))

instance ToJSON GenerateDownloadURLRequest where
        toJSON GenerateDownloadURLRequest'{..}
          = object
              (catMaybes [("versionId" .=) <$> _gdurVersionId])

-- | Build environment variables that shall be available during build time.
--
-- /See:/ 'cloudFunctionBuildEnvironmentVariables' smart constructor.
newtype CloudFunctionBuildEnvironmentVariables =
  CloudFunctionBuildEnvironmentVariables'
    { _cfbevAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudFunctionBuildEnvironmentVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfbevAddtional'
cloudFunctionBuildEnvironmentVariables
    :: HashMap Text Text -- ^ 'cfbevAddtional'
    -> CloudFunctionBuildEnvironmentVariables
cloudFunctionBuildEnvironmentVariables pCfbevAddtional_ =
  CloudFunctionBuildEnvironmentVariables'
    {_cfbevAddtional = _Coerce # pCfbevAddtional_}


cfbevAddtional :: Lens' CloudFunctionBuildEnvironmentVariables (HashMap Text Text)
cfbevAddtional
  = lens _cfbevAddtional
      (\ s a -> s{_cfbevAddtional = a})
      . _Coerce

instance FromJSON
           CloudFunctionBuildEnvironmentVariables
         where
        parseJSON
          = withObject "CloudFunctionBuildEnvironmentVariables"
              (\ o ->
                 CloudFunctionBuildEnvironmentVariables' <$>
                   (parseJSONObject o))

instance ToJSON
           CloudFunctionBuildEnvironmentVariables
         where
        toJSON = toJSON . _cfbevAddtional

-- | Describes the retry policy in case of function\'s execution failure. A
-- function execution will be retried on any failure. A failed execution
-- will be retried up to 7 days with an exponential backoff (capped at 10
-- seconds). Retried execution is charged as any other execution.
--
-- /See:/ 'retry' smart constructor.
data Retry =
  Retry'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Retry' with the minimum fields required to make a request.
--
retry
    :: Retry
retry = Retry'


instance FromJSON Retry where
        parseJSON = withObject "Retry" (\ o -> pure Retry')

instance ToJSON Retry where
        toJSON = const emptyObject

-- | Response of \`GenerateSourceUploadUrl\` method.
--
-- /See:/ 'generateUploadURLResponse' smart constructor.
newtype GenerateUploadURLResponse =
  GenerateUploadURLResponse'
    { _guurUploadURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateUploadURLResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guurUploadURL'
generateUploadURLResponse
    :: GenerateUploadURLResponse
generateUploadURLResponse =
  GenerateUploadURLResponse' {_guurUploadURL = Nothing}


-- | The generated Google Cloud Storage signed URL that should be used for a
-- function source code upload. The uploaded file should be a zip archive
-- which contains a function.
guurUploadURL :: Lens' GenerateUploadURLResponse (Maybe Text)
guurUploadURL
  = lens _guurUploadURL
      (\ s a -> s{_guurUploadURL = a})

instance FromJSON GenerateUploadURLResponse where
        parseJSON
          = withObject "GenerateUploadURLResponse"
              (\ o ->
                 GenerateUploadURLResponse' <$> (o .:? "uploadUrl"))

instance ToJSON GenerateUploadURLResponse where
        toJSON GenerateUploadURLResponse'{..}
          = object
              (catMaybes [("uploadUrl" .=) <$> _guurUploadURL])

-- | Describes the policy in case of function\'s execution failure. If empty,
-- then defaults to ignoring failures (i.e. not retrying them).
--
-- /See:/ 'failurePolicy' smart constructor.
newtype FailurePolicy =
  FailurePolicy'
    { _fpRetry :: Maybe Retry
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailurePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpRetry'
failurePolicy
    :: FailurePolicy
failurePolicy = FailurePolicy' {_fpRetry = Nothing}


-- | If specified, then the function will be retried in case of a failure.
fpRetry :: Lens' FailurePolicy (Maybe Retry)
fpRetry = lens _fpRetry (\ s a -> s{_fpRetry = a})

instance FromJSON FailurePolicy where
        parseJSON
          = withObject "FailurePolicy"
              (\ o -> FailurePolicy' <$> (o .:? "retry"))

instance ToJSON FailurePolicy where
        toJSON FailurePolicy'{..}
          = object (catMaybes [("retry" .=) <$> _fpRetry])

-- | Response of \`CallFunction\` method.
--
-- /See:/ 'callFunctionResponse' smart constructor.
data CallFunctionResponse =
  CallFunctionResponse'
    { _cfrExecutionId :: !(Maybe Text)
    , _cfrError :: !(Maybe Text)
    , _cfrResult :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CallFunctionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrExecutionId'
--
-- * 'cfrError'
--
-- * 'cfrResult'
callFunctionResponse
    :: CallFunctionResponse
callFunctionResponse =
  CallFunctionResponse'
    {_cfrExecutionId = Nothing, _cfrError = Nothing, _cfrResult = Nothing}


-- | Execution id of function invocation.
cfrExecutionId :: Lens' CallFunctionResponse (Maybe Text)
cfrExecutionId
  = lens _cfrExecutionId
      (\ s a -> s{_cfrExecutionId = a})

-- | Either system or user-function generated error. Set if execution was not
-- successful.
cfrError :: Lens' CallFunctionResponse (Maybe Text)
cfrError = lens _cfrError (\ s a -> s{_cfrError = a})

-- | Result populated for successful execution of synchronous function. Will
-- not be populated if function does not return a result through context.
cfrResult :: Lens' CallFunctionResponse (Maybe Text)
cfrResult
  = lens _cfrResult (\ s a -> s{_cfrResult = a})

instance FromJSON CallFunctionResponse where
        parseJSON
          = withObject "CallFunctionResponse"
              (\ o ->
                 CallFunctionResponse' <$>
                   (o .:? "executionId") <*> (o .:? "error") <*>
                     (o .:? "result"))

instance ToJSON CallFunctionResponse where
        toJSON CallFunctionResponse'{..}
          = object
              (catMaybes
                 [("executionId" .=) <$> _cfrExecutionId,
                  ("error" .=) <$> _cfrError,
                  ("result" .=) <$> _cfrResult])

-- | Describes HttpsTrigger, could be used to connect web hooks to function.
--
-- /See:/ 'httpsTrigger' smart constructor.
data HTTPSTrigger =
  HTTPSTrigger'
    { _htSecurityLevel :: !(Maybe HTTPSTriggerSecurityLevel)
    , _htURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPSTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'htSecurityLevel'
--
-- * 'htURL'
httpsTrigger
    :: HTTPSTrigger
httpsTrigger = HTTPSTrigger' {_htSecurityLevel = Nothing, _htURL = Nothing}


-- | The security level for the function.
htSecurityLevel :: Lens' HTTPSTrigger (Maybe HTTPSTriggerSecurityLevel)
htSecurityLevel
  = lens _htSecurityLevel
      (\ s a -> s{_htSecurityLevel = a})

-- | Output only. The deployed url for the function.
htURL :: Lens' HTTPSTrigger (Maybe Text)
htURL = lens _htURL (\ s a -> s{_htURL = a})

instance FromJSON HTTPSTrigger where
        parseJSON
          = withObject "HTTPSTrigger"
              (\ o ->
                 HTTPSTrigger' <$>
                   (o .:? "securityLevel") <*> (o .:? "url"))

instance ToJSON HTTPSTrigger where
        toJSON HTTPSTrigger'{..}
          = object
              (catMaybes
                 [("securityLevel" .=) <$> _htSecurityLevel,
                  ("url" .=) <$> _htURL])

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

-- | Environment variables that shall be available during function execution.
--
-- /See:/ 'cloudFunctionEnvironmentVariables' smart constructor.
newtype CloudFunctionEnvironmentVariables =
  CloudFunctionEnvironmentVariables'
    { _cfevAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudFunctionEnvironmentVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfevAddtional'
cloudFunctionEnvironmentVariables
    :: HashMap Text Text -- ^ 'cfevAddtional'
    -> CloudFunctionEnvironmentVariables
cloudFunctionEnvironmentVariables pCfevAddtional_ =
  CloudFunctionEnvironmentVariables'
    {_cfevAddtional = _Coerce # pCfevAddtional_}


cfevAddtional :: Lens' CloudFunctionEnvironmentVariables (HashMap Text Text)
cfevAddtional
  = lens _cfevAddtional
      (\ s a -> s{_cfevAddtional = a})
      . _Coerce

instance FromJSON CloudFunctionEnvironmentVariables
         where
        parseJSON
          = withObject "CloudFunctionEnvironmentVariables"
              (\ o ->
                 CloudFunctionEnvironmentVariables' <$>
                   (parseJSONObject o))

instance ToJSON CloudFunctionEnvironmentVariables
         where
        toJSON = toJSON . _cfevAddtional

-- | The original request that started the operation.
--
-- /See:/ 'operationMetadataV1Request' smart constructor.
newtype OperationMetadataV1Request =
  OperationMetadataV1Request'
    { _omvrAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadataV1Request' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omvrAddtional'
operationMetadataV1Request
    :: HashMap Text JSONValue -- ^ 'omvrAddtional'
    -> OperationMetadataV1Request
operationMetadataV1Request pOmvrAddtional_ =
  OperationMetadataV1Request' {_omvrAddtional = _Coerce # pOmvrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omvrAddtional :: Lens' OperationMetadataV1Request (HashMap Text JSONValue)
omvrAddtional
  = lens _omvrAddtional
      (\ s a -> s{_omvrAddtional = a})
      . _Coerce

instance FromJSON OperationMetadataV1Request where
        parseJSON
          = withObject "OperationMetadataV1Request"
              (\ o ->
                 OperationMetadataV1Request' <$> (parseJSONObject o))

instance ToJSON OperationMetadataV1Request where
        toJSON = toJSON . _omvrAddtional

-- | Configuration for a secret volume. It has the information necessary to
-- fetch the secret value from secret manager and make it available as
-- files mounted at the requested paths within the application container.
-- Secret value is not a part of the configuration. Every filesystem read
-- operation performs a lookup in secret manager to retrieve the secret
-- value.
--
-- /See:/ 'secretVolume' smart constructor.
data SecretVolume =
  SecretVolume'
    { _svSecret :: !(Maybe Text)
    , _svVersions :: !(Maybe [SecretVersion])
    , _svProjectId :: !(Maybe Text)
    , _svMountPath :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svSecret'
--
-- * 'svVersions'
--
-- * 'svProjectId'
--
-- * 'svMountPath'
secretVolume
    :: SecretVolume
secretVolume =
  SecretVolume'
    { _svSecret = Nothing
    , _svVersions = Nothing
    , _svProjectId = Nothing
    , _svMountPath = Nothing
    }


-- | Name of the secret in secret manager (not the full resource name).
svSecret :: Lens' SecretVolume (Maybe Text)
svSecret = lens _svSecret (\ s a -> s{_svSecret = a})

-- | List of secret versions to mount for this secret. If empty, the
-- \`latest\` version of the secret will be made available in a file named
-- after the secret under the mount point.
svVersions :: Lens' SecretVolume [SecretVersion]
svVersions
  = lens _svVersions (\ s a -> s{_svVersions = a}) .
      _Default
      . _Coerce

-- | Project identifier (preferrably project number but can also be the
-- project ID) of the project that contains the secret. If not set, it will
-- be populated with the function\'s project assuming that the secret
-- exists in the same project as of the function.
svProjectId :: Lens' SecretVolume (Maybe Text)
svProjectId
  = lens _svProjectId (\ s a -> s{_svProjectId = a})

-- | The path within the container to mount the secret volume. For example,
-- setting the mount_path as \`\/etc\/secrets\` would mount the secret
-- value files under the \`\/etc\/secrets\` directory. This directory will
-- also be completely shadowed and unavailable to mount any other secrets.
-- Recommended mount paths: \/etc\/secrets Restricted mount paths:
-- \/cloudsql, \/dev\/log, \/pod, \/proc, \/var\/log
svMountPath :: Lens' SecretVolume (Maybe Text)
svMountPath
  = lens _svMountPath (\ s a -> s{_svMountPath = a})

instance FromJSON SecretVolume where
        parseJSON
          = withObject "SecretVolume"
              (\ o ->
                 SecretVolume' <$>
                   (o .:? "secret") <*> (o .:? "versions" .!= mempty)
                     <*> (o .:? "projectId")
                     <*> (o .:? "mountPath"))

instance ToJSON SecretVolume where
        toJSON SecretVolume'{..}
          = object
              (catMaybes
                 [("secret" .=) <$> _svSecret,
                  ("versions" .=) <$> _svVersions,
                  ("projectId" .=) <$> _svProjectId,
                  ("mountPath" .=) <$> _svMountPath])

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

-- | Describes EventTrigger, used to request events be sent from another
-- service.
--
-- /See:/ 'eventTrigger' smart constructor.
data EventTrigger =
  EventTrigger'
    { _etService :: !(Maybe Text)
    , _etFailurePolicy :: !(Maybe FailurePolicy)
    , _etEventType :: !(Maybe Text)
    , _etResource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etService'
--
-- * 'etFailurePolicy'
--
-- * 'etEventType'
--
-- * 'etResource'
eventTrigger
    :: EventTrigger
eventTrigger =
  EventTrigger'
    { _etService = Nothing
    , _etFailurePolicy = Nothing
    , _etEventType = Nothing
    , _etResource = Nothing
    }


-- | The hostname of the service that should be observed. If no string is
-- provided, the default service implementing the API will be used. For
-- example, \`storage.googleapis.com\` is the default for all event types
-- in the \`google.storage\` namespace.
etService :: Lens' EventTrigger (Maybe Text)
etService
  = lens _etService (\ s a -> s{_etService = a})

-- | Specifies policy for failed executions.
etFailurePolicy :: Lens' EventTrigger (Maybe FailurePolicy)
etFailurePolicy
  = lens _etFailurePolicy
      (\ s a -> s{_etFailurePolicy = a})

-- | Required. The type of event to observe. For example:
-- \`providers\/cloud.storage\/eventTypes\/object.change\` and
-- \`providers\/cloud.pubsub\/eventTypes\/topic.publish\`. Event types
-- match pattern \`providers\/*\/eventTypes\/*.*\`. The pattern contains:
-- 1. namespace: For example, \`cloud.storage\` and
-- \`google.firebase.analytics\`. 2. resource type: The type of resource on
-- which event occurs. For example, the Google Cloud Storage API includes
-- the type \`object\`. 3. action: The action that generates the event. For
-- example, action for a Google Cloud Storage Object is \'change\'. These
-- parts are lower case.
etEventType :: Lens' EventTrigger (Maybe Text)
etEventType
  = lens _etEventType (\ s a -> s{_etEventType = a})

-- | Required. The resource(s) from which to observe events, for example,
-- \`projects\/_\/buckets\/myBucket\`. Not all syntactically correct values
-- are accepted by all services. For example: 1. The authorization model
-- must support it. Google Cloud Functions only allows EventTriggers to be
-- deployed that observe resources in the same project as the
-- \`CloudFunction\`. 2. The resource type must match the pattern expected
-- for an \`event_type\`. For example, an \`EventTrigger\` that has an
-- \`event_type\` of \"google.pubsub.topic.publish\" should have a resource
-- that matches Google Cloud Pub\/Sub topics. Additionally, some services
-- may support short names when creating an \`EventTrigger\`. These will
-- always be returned in the normalized \"long\" format. See each
-- *service\'s* documentation for supported formats.
etResource :: Lens' EventTrigger (Maybe Text)
etResource
  = lens _etResource (\ s a -> s{_etResource = a})

instance FromJSON EventTrigger where
        parseJSON
          = withObject "EventTrigger"
              (\ o ->
                 EventTrigger' <$>
                   (o .:? "service") <*> (o .:? "failurePolicy") <*>
                     (o .:? "eventType")
                     <*> (o .:? "resource"))

instance ToJSON EventTrigger where
        toJSON EventTrigger'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _etService,
                  ("failurePolicy" .=) <$> _etFailurePolicy,
                  ("eventType" .=) <$> _etEventType,
                  ("resource" .=) <$> _etResource])

-- | Describes SourceRepository, used to represent parameters related to
-- source repository where a function is hosted.
--
-- /See:/ 'sourceRepository' smart constructor.
data SourceRepository =
  SourceRepository'
    { _srURL :: !(Maybe Text)
    , _srDeployedURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceRepository' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srURL'
--
-- * 'srDeployedURL'
sourceRepository
    :: SourceRepository
sourceRepository =
  SourceRepository' {_srURL = Nothing, _srDeployedURL = Nothing}


-- | The URL pointing to the hosted repository where the function is defined.
-- There are supported Cloud Source Repository URLs in the following
-- formats: To refer to a specific commit:
-- \`https:\/\/source.developers.google.com\/projects\/*\/repos\/*\/revisions\/*\/paths\/*\`
-- To refer to a moveable alias (branch):
-- \`https:\/\/source.developers.google.com\/projects\/*\/repos\/*\/moveable-aliases\/*\/paths\/*\`
-- In particular, to refer to HEAD use \`master\` moveable alias. To refer
-- to a specific fixed alias (tag):
-- \`https:\/\/source.developers.google.com\/projects\/*\/repos\/*\/fixed-aliases\/*\/paths\/*\`
-- You may omit \`paths\/*\` if you want to use the main directory.
srURL :: Lens' SourceRepository (Maybe Text)
srURL = lens _srURL (\ s a -> s{_srURL = a})

-- | Output only. The URL pointing to the hosted repository where the
-- function were defined at the time of deployment. It always points to a
-- specific commit in the format described above.
srDeployedURL :: Lens' SourceRepository (Maybe Text)
srDeployedURL
  = lens _srDeployedURL
      (\ s a -> s{_srDeployedURL = a})

instance FromJSON SourceRepository where
        parseJSON
          = withObject "SourceRepository"
              (\ o ->
                 SourceRepository' <$>
                   (o .:? "url") <*> (o .:? "deployedUrl"))

instance ToJSON SourceRepository where
        toJSON SourceRepository'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _srURL,
                  ("deployedUrl" .=) <$> _srDeployedURL])

-- | Metadata describing an Operation
--
-- /See:/ 'operationMetadataV1' smart constructor.
data OperationMetadataV1 =
  OperationMetadataV1'
    { _omvVersionId :: !(Maybe (Textual Int64))
    , _omvBuildId :: !(Maybe Text)
    , _omvBuildName :: !(Maybe Text)
    , _omvUpdateTime :: !(Maybe DateTime')
    , _omvType :: !(Maybe OperationMetadataV1Type)
    , _omvSourceToken :: !(Maybe Text)
    , _omvTarget :: !(Maybe Text)
    , _omvRequest :: !(Maybe OperationMetadataV1Request)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadataV1' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omvVersionId'
--
-- * 'omvBuildId'
--
-- * 'omvBuildName'
--
-- * 'omvUpdateTime'
--
-- * 'omvType'
--
-- * 'omvSourceToken'
--
-- * 'omvTarget'
--
-- * 'omvRequest'
operationMetadataV1
    :: OperationMetadataV1
operationMetadataV1 =
  OperationMetadataV1'
    { _omvVersionId = Nothing
    , _omvBuildId = Nothing
    , _omvBuildName = Nothing
    , _omvUpdateTime = Nothing
    , _omvType = Nothing
    , _omvSourceToken = Nothing
    , _omvTarget = Nothing
    , _omvRequest = Nothing
    }


-- | Version id of the function created or updated by an API call. This field
-- is only populated for Create and Update operations.
omvVersionId :: Lens' OperationMetadataV1 (Maybe Int64)
omvVersionId
  = lens _omvVersionId (\ s a -> s{_omvVersionId = a})
      . mapping _Coerce

-- | The Cloud Build ID of the function created or updated by an API call.
-- This field is only populated for Create and Update operations.
omvBuildId :: Lens' OperationMetadataV1 (Maybe Text)
omvBuildId
  = lens _omvBuildId (\ s a -> s{_omvBuildId = a})

-- | The Cloud Build Name of the function deployment. This field is only
-- populated for Create and Update operations.
-- projects\/\/locations\/\/builds\/.
omvBuildName :: Lens' OperationMetadataV1 (Maybe Text)
omvBuildName
  = lens _omvBuildName (\ s a -> s{_omvBuildName = a})

-- | The last update timestamp of the operation.
omvUpdateTime :: Lens' OperationMetadataV1 (Maybe UTCTime)
omvUpdateTime
  = lens _omvUpdateTime
      (\ s a -> s{_omvUpdateTime = a})
      . mapping _DateTime

-- | Type of operation.
omvType :: Lens' OperationMetadataV1 (Maybe OperationMetadataV1Type)
omvType = lens _omvType (\ s a -> s{_omvType = a})

-- | An identifier for Firebase function sources. Disclaimer: This field is
-- only supported for Firebase function deployments.
omvSourceToken :: Lens' OperationMetadataV1 (Maybe Text)
omvSourceToken
  = lens _omvSourceToken
      (\ s a -> s{_omvSourceToken = a})

-- | Target of the operation - for example
-- projects\/project-1\/locations\/region-1\/functions\/function-1
omvTarget :: Lens' OperationMetadataV1 (Maybe Text)
omvTarget
  = lens _omvTarget (\ s a -> s{_omvTarget = a})

-- | The original request that started the operation.
omvRequest :: Lens' OperationMetadataV1 (Maybe OperationMetadataV1Request)
omvRequest
  = lens _omvRequest (\ s a -> s{_omvRequest = a})

instance FromJSON OperationMetadataV1 where
        parseJSON
          = withObject "OperationMetadataV1"
              (\ o ->
                 OperationMetadataV1' <$>
                   (o .:? "versionId") <*> (o .:? "buildId") <*>
                     (o .:? "buildName")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "type")
                     <*> (o .:? "sourceToken")
                     <*> (o .:? "target")
                     <*> (o .:? "request"))

instance ToJSON OperationMetadataV1 where
        toJSON OperationMetadataV1'{..}
          = object
              (catMaybes
                 [("versionId" .=) <$> _omvVersionId,
                  ("buildId" .=) <$> _omvBuildId,
                  ("buildName" .=) <$> _omvBuildName,
                  ("updateTime" .=) <$> _omvUpdateTime,
                  ("type" .=) <$> _omvType,
                  ("sourceToken" .=) <$> _omvSourceToken,
                  ("target" .=) <$> _omvTarget,
                  ("request" .=) <$> _omvRequest])

-- | Response of \`GenerateDownloadUrl\` method.
--
-- /See:/ 'generateDownloadURLResponse' smart constructor.
newtype GenerateDownloadURLResponse =
  GenerateDownloadURLResponse'
    { _gdurDownloadURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GenerateDownloadURLResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdurDownloadURL'
generateDownloadURLResponse
    :: GenerateDownloadURLResponse
generateDownloadURLResponse =
  GenerateDownloadURLResponse' {_gdurDownloadURL = Nothing}


-- | The generated Google Cloud Storage signed URL that should be used for
-- function source code download.
gdurDownloadURL :: Lens' GenerateDownloadURLResponse (Maybe Text)
gdurDownloadURL
  = lens _gdurDownloadURL
      (\ s a -> s{_gdurDownloadURL = a})

instance FromJSON GenerateDownloadURLResponse where
        parseJSON
          = withObject "GenerateDownloadURLResponse"
              (\ o ->
                 GenerateDownloadURLResponse' <$>
                   (o .:? "downloadUrl"))

instance ToJSON GenerateDownloadURLResponse where
        toJSON GenerateDownloadURLResponse'{..}
          = object
              (catMaybes [("downloadUrl" .=) <$> _gdurDownloadURL])

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

-- | Response for the \`ListFunctions\` method.
--
-- /See:/ 'listFunctionsResponse' smart constructor.
data ListFunctionsResponse =
  ListFunctionsResponse'
    { _lfrNextPageToken :: !(Maybe Text)
    , _lfrUnreachable :: !(Maybe [Text])
    , _lfrFunctions :: !(Maybe [CloudFunction])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListFunctionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrNextPageToken'
--
-- * 'lfrUnreachable'
--
-- * 'lfrFunctions'
listFunctionsResponse
    :: ListFunctionsResponse
listFunctionsResponse =
  ListFunctionsResponse'
    { _lfrNextPageToken = Nothing
    , _lfrUnreachable = Nothing
    , _lfrFunctions = Nothing
    }


-- | If not empty, indicates that there may be more functions that match the
-- request; this value should be passed in a new
-- google.cloud.functions.v1.ListFunctionsRequest to get more functions.
lfrNextPageToken :: Lens' ListFunctionsResponse (Maybe Text)
lfrNextPageToken
  = lens _lfrNextPageToken
      (\ s a -> s{_lfrNextPageToken = a})

-- | Locations that could not be reached. The response does not include any
-- functions from these locations.
lfrUnreachable :: Lens' ListFunctionsResponse [Text]
lfrUnreachable
  = lens _lfrUnreachable
      (\ s a -> s{_lfrUnreachable = a})
      . _Default
      . _Coerce

-- | The functions that match the request.
lfrFunctions :: Lens' ListFunctionsResponse [CloudFunction]
lfrFunctions
  = lens _lfrFunctions (\ s a -> s{_lfrFunctions = a})
      . _Default
      . _Coerce

instance FromJSON ListFunctionsResponse where
        parseJSON
          = withObject "ListFunctionsResponse"
              (\ o ->
                 ListFunctionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "unreachable" .!= mempty)
                     <*> (o .:? "functions" .!= mempty))

instance ToJSON ListFunctionsResponse where
        toJSON ListFunctionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lfrNextPageToken,
                  ("unreachable" .=) <$> _lfrUnreachable,
                  ("functions" .=) <$> _lfrFunctions])

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

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

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

-- | Describes a Cloud Function that contains user computation executed in
-- response to an event. It encapsulate function and triggers
-- configurations. Next tag: 35
--
-- /See:/ 'cloudFunction' smart constructor.
data CloudFunction =
  CloudFunction'
    { _cfRuntime :: !(Maybe Text)
    , _cfBuildWorkerPool :: !(Maybe Text)
    , _cfStatus :: !(Maybe CloudFunctionStatus)
    , _cfSourceArchiveURL :: !(Maybe Text)
    , _cfVersionId :: !(Maybe (Textual Int64))
    , _cfSecretVolumes :: !(Maybe [SecretVolume])
    , _cfSourceUploadURL :: !(Maybe Text)
    , _cfEntryPoint :: !(Maybe Text)
    , _cfBuildId :: !(Maybe Text)
    , _cfHTTPSTrigger :: !(Maybe HTTPSTrigger)
    , _cfNetwork :: !(Maybe Text)
    , _cfMaxInstances :: !(Maybe (Textual Int32))
    , _cfVPCConnectorEgressSettings :: !(Maybe CloudFunctionVPCConnectorEgressSettings)
    , _cfEventTrigger :: !(Maybe EventTrigger)
    , _cfUpdateTime :: !(Maybe DateTime')
    , _cfName :: !(Maybe Text)
    , _cfSourceRepository :: !(Maybe SourceRepository)
    , _cfAvailableMemoryMb :: !(Maybe (Textual Int32))
    , _cfIngressSettings :: !(Maybe CloudFunctionIngressSettings)
    , _cfLabels :: !(Maybe CloudFunctionLabels)
    , _cfServiceAccountEmail :: !(Maybe Text)
    , _cfEnvironmentVariables :: !(Maybe CloudFunctionEnvironmentVariables)
    , _cfTimeout :: !(Maybe GDuration)
    , _cfSourceToken :: !(Maybe Text)
    , _cfBuildEnvironmentVariables :: !(Maybe CloudFunctionBuildEnvironmentVariables)
    , _cfVPCConnector :: !(Maybe Text)
    , _cfSecretEnvironmentVariables :: !(Maybe [SecretEnvVar])
    , _cfDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudFunction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfRuntime'
--
-- * 'cfBuildWorkerPool'
--
-- * 'cfStatus'
--
-- * 'cfSourceArchiveURL'
--
-- * 'cfVersionId'
--
-- * 'cfSecretVolumes'
--
-- * 'cfSourceUploadURL'
--
-- * 'cfEntryPoint'
--
-- * 'cfBuildId'
--
-- * 'cfHTTPSTrigger'
--
-- * 'cfNetwork'
--
-- * 'cfMaxInstances'
--
-- * 'cfVPCConnectorEgressSettings'
--
-- * 'cfEventTrigger'
--
-- * 'cfUpdateTime'
--
-- * 'cfName'
--
-- * 'cfSourceRepository'
--
-- * 'cfAvailableMemoryMb'
--
-- * 'cfIngressSettings'
--
-- * 'cfLabels'
--
-- * 'cfServiceAccountEmail'
--
-- * 'cfEnvironmentVariables'
--
-- * 'cfTimeout'
--
-- * 'cfSourceToken'
--
-- * 'cfBuildEnvironmentVariables'
--
-- * 'cfVPCConnector'
--
-- * 'cfSecretEnvironmentVariables'
--
-- * 'cfDescription'
cloudFunction
    :: CloudFunction
cloudFunction =
  CloudFunction'
    { _cfRuntime = Nothing
    , _cfBuildWorkerPool = Nothing
    , _cfStatus = Nothing
    , _cfSourceArchiveURL = Nothing
    , _cfVersionId = Nothing
    , _cfSecretVolumes = Nothing
    , _cfSourceUploadURL = Nothing
    , _cfEntryPoint = Nothing
    , _cfBuildId = Nothing
    , _cfHTTPSTrigger = Nothing
    , _cfNetwork = Nothing
    , _cfMaxInstances = Nothing
    , _cfVPCConnectorEgressSettings = Nothing
    , _cfEventTrigger = Nothing
    , _cfUpdateTime = Nothing
    , _cfName = Nothing
    , _cfSourceRepository = Nothing
    , _cfAvailableMemoryMb = Nothing
    , _cfIngressSettings = Nothing
    , _cfLabels = Nothing
    , _cfServiceAccountEmail = Nothing
    , _cfEnvironmentVariables = Nothing
    , _cfTimeout = Nothing
    , _cfSourceToken = Nothing
    , _cfBuildEnvironmentVariables = Nothing
    , _cfVPCConnector = Nothing
    , _cfSecretEnvironmentVariables = Nothing
    , _cfDescription = Nothing
    }


-- | The runtime in which to run the function. Required when deploying a new
-- function, optional when updating an existing function. For a complete
-- list of possible choices, see the [\`gcloud\` command
-- reference](\/sdk\/gcloud\/reference\/functions\/deploy#--runtime).
cfRuntime :: Lens' CloudFunction (Maybe Text)
cfRuntime
  = lens _cfRuntime (\ s a -> s{_cfRuntime = a})

-- | Name of the Cloud Build Custom Worker Pool that should be used to build
-- the function. The format of this field is
-- \`projects\/{project}\/locations\/{region}\/workerPools\/{workerPool}\`
-- where {project} and {region} are the project id and region respectively
-- where the worker pool is defined and {workerPool} is the short name of
-- the worker pool. If the project id is not the same as the function, then
-- the Cloud Functions Service Agent
-- (service-\'gcf-admin-robot.iam.gserviceaccount.com) must be granted the
-- role Cloud Build Custom Workers Builder
-- (roles\/cloudbuild.customworkers.builder) in the project.
cfBuildWorkerPool :: Lens' CloudFunction (Maybe Text)
cfBuildWorkerPool
  = lens _cfBuildWorkerPool
      (\ s a -> s{_cfBuildWorkerPool = a})

-- | Output only. Status of the function deployment.
cfStatus :: Lens' CloudFunction (Maybe CloudFunctionStatus)
cfStatus = lens _cfStatus (\ s a -> s{_cfStatus = a})

-- | The Google Cloud Storage URL, starting with gs:\/\/, pointing to the zip
-- archive which contains the function.
cfSourceArchiveURL :: Lens' CloudFunction (Maybe Text)
cfSourceArchiveURL
  = lens _cfSourceArchiveURL
      (\ s a -> s{_cfSourceArchiveURL = a})

-- | Output only. The version identifier of the Cloud Function. Each
-- deployment attempt results in a new version of a function being created.
cfVersionId :: Lens' CloudFunction (Maybe Int64)
cfVersionId
  = lens _cfVersionId (\ s a -> s{_cfVersionId = a}) .
      mapping _Coerce

-- | Secret volumes configuration.
cfSecretVolumes :: Lens' CloudFunction [SecretVolume]
cfSecretVolumes
  = lens _cfSecretVolumes
      (\ s a -> s{_cfSecretVolumes = a})
      . _Default
      . _Coerce

-- | The Google Cloud Storage signed URL used for source uploading, generated
-- by google.cloud.functions.v1.GenerateUploadUrl
cfSourceUploadURL :: Lens' CloudFunction (Maybe Text)
cfSourceUploadURL
  = lens _cfSourceUploadURL
      (\ s a -> s{_cfSourceUploadURL = a})

-- | The name of the function (as defined in source code) that will be
-- executed. Defaults to the resource name suffix, if not specified. For
-- backward compatibility, if function with given name is not found, then
-- the system will try to use function named \"function\". For Node.js this
-- is name of a function exported by the module specified in
-- \`source_location\`.
cfEntryPoint :: Lens' CloudFunction (Maybe Text)
cfEntryPoint
  = lens _cfEntryPoint (\ s a -> s{_cfEntryPoint = a})

-- | Output only. The Cloud Build ID of the latest successful deployment of
-- the function.
cfBuildId :: Lens' CloudFunction (Maybe Text)
cfBuildId
  = lens _cfBuildId (\ s a -> s{_cfBuildId = a})

-- | An HTTPS endpoint type of source that can be triggered via URL.
cfHTTPSTrigger :: Lens' CloudFunction (Maybe HTTPSTrigger)
cfHTTPSTrigger
  = lens _cfHTTPSTrigger
      (\ s a -> s{_cfHTTPSTrigger = a})

-- | The VPC Network that this cloud function can connect to. It can be
-- either the fully-qualified URI, or the short name of the network
-- resource. If the short network name is used, the network must belong to
-- the same project. Otherwise, it must belong to a project within the same
-- organization. The format of this field is either
-- \`projects\/{project}\/global\/networks\/{network}\` or \`{network}\`,
-- where {project} is a project id where the network is defined, and
-- {network} is the short name of the network. This field is mutually
-- exclusive with \`vpc_connector\` and will be replaced by it. See [the
-- VPC documentation](https:\/\/cloud.google.com\/compute\/docs\/vpc) for
-- more information on connecting Cloud projects.
cfNetwork :: Lens' CloudFunction (Maybe Text)
cfNetwork
  = lens _cfNetwork (\ s a -> s{_cfNetwork = a})

-- | The limit on the maximum number of function instances that may coexist
-- at a given time. In some cases, such as rapid traffic surges, Cloud
-- Functions may, for a short period of time, create more instances than
-- the specified max instances limit. If your function cannot tolerate this
-- temporary behavior, you may want to factor in a safety margin and set a
-- lower max instances value than your function can tolerate. See the [Max
-- Instances](https:\/\/cloud.google.com\/functions\/docs\/max-instances)
-- Guide for more details.
cfMaxInstances :: Lens' CloudFunction (Maybe Int32)
cfMaxInstances
  = lens _cfMaxInstances
      (\ s a -> s{_cfMaxInstances = a})
      . mapping _Coerce

-- | The egress settings for the connector, controlling what traffic is
-- diverted through it.
cfVPCConnectorEgressSettings :: Lens' CloudFunction (Maybe CloudFunctionVPCConnectorEgressSettings)
cfVPCConnectorEgressSettings
  = lens _cfVPCConnectorEgressSettings
      (\ s a -> s{_cfVPCConnectorEgressSettings = a})

-- | A source that fires events in response to a condition in another
-- service.
cfEventTrigger :: Lens' CloudFunction (Maybe EventTrigger)
cfEventTrigger
  = lens _cfEventTrigger
      (\ s a -> s{_cfEventTrigger = a})

-- | Output only. The last update timestamp of a Cloud Function.
cfUpdateTime :: Lens' CloudFunction (Maybe UTCTime)
cfUpdateTime
  = lens _cfUpdateTime (\ s a -> s{_cfUpdateTime = a})
      . mapping _DateTime

-- | A user-defined name of the function. Function names must be unique
-- globally and match pattern \`projects\/*\/locations\/*\/functions\/*\`
cfName :: Lens' CloudFunction (Maybe Text)
cfName = lens _cfName (\ s a -> s{_cfName = a})

-- | **Beta Feature** The source repository where a function is hosted.
cfSourceRepository :: Lens' CloudFunction (Maybe SourceRepository)
cfSourceRepository
  = lens _cfSourceRepository
      (\ s a -> s{_cfSourceRepository = a})

-- | The amount of memory in MB available for a function. Defaults to 256MB.
cfAvailableMemoryMb :: Lens' CloudFunction (Maybe Int32)
cfAvailableMemoryMb
  = lens _cfAvailableMemoryMb
      (\ s a -> s{_cfAvailableMemoryMb = a})
      . mapping _Coerce

-- | The ingress settings for the function, controlling what traffic can
-- reach it.
cfIngressSettings :: Lens' CloudFunction (Maybe CloudFunctionIngressSettings)
cfIngressSettings
  = lens _cfIngressSettings
      (\ s a -> s{_cfIngressSettings = a})

-- | Labels associated with this Cloud Function.
cfLabels :: Lens' CloudFunction (Maybe CloudFunctionLabels)
cfLabels = lens _cfLabels (\ s a -> s{_cfLabels = a})

-- | The email of the function\'s service account. If empty, defaults to
-- \`{project_id}\'appspot.gserviceaccount.com\`.
cfServiceAccountEmail :: Lens' CloudFunction (Maybe Text)
cfServiceAccountEmail
  = lens _cfServiceAccountEmail
      (\ s a -> s{_cfServiceAccountEmail = a})

-- | Environment variables that shall be available during function execution.
cfEnvironmentVariables :: Lens' CloudFunction (Maybe CloudFunctionEnvironmentVariables)
cfEnvironmentVariables
  = lens _cfEnvironmentVariables
      (\ s a -> s{_cfEnvironmentVariables = a})

-- | The function execution timeout. Execution is considered failed and can
-- be terminated if the function is not completed at the end of the timeout
-- period. Defaults to 60 seconds.
cfTimeout :: Lens' CloudFunction (Maybe Scientific)
cfTimeout
  = lens _cfTimeout (\ s a -> s{_cfTimeout = a}) .
      mapping _GDuration

-- | Input only. An identifier for Firebase function sources. Disclaimer:
-- This field is only supported for Firebase function deployments.
cfSourceToken :: Lens' CloudFunction (Maybe Text)
cfSourceToken
  = lens _cfSourceToken
      (\ s a -> s{_cfSourceToken = a})

-- | Build environment variables that shall be available during build time.
cfBuildEnvironmentVariables :: Lens' CloudFunction (Maybe CloudFunctionBuildEnvironmentVariables)
cfBuildEnvironmentVariables
  = lens _cfBuildEnvironmentVariables
      (\ s a -> s{_cfBuildEnvironmentVariables = a})

-- | The VPC Network Connector that this cloud function can connect to. It
-- can be either the fully-qualified URI, or the short name of the network
-- connector resource. The format of this field is
-- \`projects\/*\/locations\/*\/connectors\/*\` This field is mutually
-- exclusive with \`network\` field and will eventually replace it. See
-- [the VPC documentation](https:\/\/cloud.google.com\/compute\/docs\/vpc)
-- for more information on connecting Cloud projects.
cfVPCConnector :: Lens' CloudFunction (Maybe Text)
cfVPCConnector
  = lens _cfVPCConnector
      (\ s a -> s{_cfVPCConnector = a})

-- | Secret environment variables configuration.
cfSecretEnvironmentVariables :: Lens' CloudFunction [SecretEnvVar]
cfSecretEnvironmentVariables
  = lens _cfSecretEnvironmentVariables
      (\ s a -> s{_cfSecretEnvironmentVariables = a})
      . _Default
      . _Coerce

-- | User-provided description of a function.
cfDescription :: Lens' CloudFunction (Maybe Text)
cfDescription
  = lens _cfDescription
      (\ s a -> s{_cfDescription = a})

instance FromJSON CloudFunction where
        parseJSON
          = withObject "CloudFunction"
              (\ o ->
                 CloudFunction' <$>
                   (o .:? "runtime") <*> (o .:? "buildWorkerPool") <*>
                     (o .:? "status")
                     <*> (o .:? "sourceArchiveUrl")
                     <*> (o .:? "versionId")
                     <*> (o .:? "secretVolumes" .!= mempty)
                     <*> (o .:? "sourceUploadUrl")
                     <*> (o .:? "entryPoint")
                     <*> (o .:? "buildId")
                     <*> (o .:? "httpsTrigger")
                     <*> (o .:? "network")
                     <*> (o .:? "maxInstances")
                     <*> (o .:? "vpcConnectorEgressSettings")
                     <*> (o .:? "eventTrigger")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "sourceRepository")
                     <*> (o .:? "availableMemoryMb")
                     <*> (o .:? "ingressSettings")
                     <*> (o .:? "labels")
                     <*> (o .:? "serviceAccountEmail")
                     <*> (o .:? "environmentVariables")
                     <*> (o .:? "timeout")
                     <*> (o .:? "sourceToken")
                     <*> (o .:? "buildEnvironmentVariables")
                     <*> (o .:? "vpcConnector")
                     <*> (o .:? "secretEnvironmentVariables" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON CloudFunction where
        toJSON CloudFunction'{..}
          = object
              (catMaybes
                 [("runtime" .=) <$> _cfRuntime,
                  ("buildWorkerPool" .=) <$> _cfBuildWorkerPool,
                  ("status" .=) <$> _cfStatus,
                  ("sourceArchiveUrl" .=) <$> _cfSourceArchiveURL,
                  ("versionId" .=) <$> _cfVersionId,
                  ("secretVolumes" .=) <$> _cfSecretVolumes,
                  ("sourceUploadUrl" .=) <$> _cfSourceUploadURL,
                  ("entryPoint" .=) <$> _cfEntryPoint,
                  ("buildId" .=) <$> _cfBuildId,
                  ("httpsTrigger" .=) <$> _cfHTTPSTrigger,
                  ("network" .=) <$> _cfNetwork,
                  ("maxInstances" .=) <$> _cfMaxInstances,
                  ("vpcConnectorEgressSettings" .=) <$>
                    _cfVPCConnectorEgressSettings,
                  ("eventTrigger" .=) <$> _cfEventTrigger,
                  ("updateTime" .=) <$> _cfUpdateTime,
                  ("name" .=) <$> _cfName,
                  ("sourceRepository" .=) <$> _cfSourceRepository,
                  ("availableMemoryMb" .=) <$> _cfAvailableMemoryMb,
                  ("ingressSettings" .=) <$> _cfIngressSettings,
                  ("labels" .=) <$> _cfLabels,
                  ("serviceAccountEmail" .=) <$>
                    _cfServiceAccountEmail,
                  ("environmentVariables" .=) <$>
                    _cfEnvironmentVariables,
                  ("timeout" .=) <$> _cfTimeout,
                  ("sourceToken" .=) <$> _cfSourceToken,
                  ("buildEnvironmentVariables" .=) <$>
                    _cfBuildEnvironmentVariables,
                  ("vpcConnector" .=) <$> _cfVPCConnector,
                  ("secretEnvironmentVariables" .=) <$>
                    _cfSecretEnvironmentVariables,
                  ("description" .=) <$> _cfDescription])

-- | Labels associated with this Cloud Function.
--
-- /See:/ 'cloudFunctionLabels' smart constructor.
newtype CloudFunctionLabels =
  CloudFunctionLabels'
    { _cflAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudFunctionLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cflAddtional'
cloudFunctionLabels
    :: HashMap Text Text -- ^ 'cflAddtional'
    -> CloudFunctionLabels
cloudFunctionLabels pCflAddtional_ =
  CloudFunctionLabels' {_cflAddtional = _Coerce # pCflAddtional_}


cflAddtional :: Lens' CloudFunctionLabels (HashMap Text Text)
cflAddtional
  = lens _cflAddtional (\ s a -> s{_cflAddtional = a})
      . _Coerce

instance FromJSON CloudFunctionLabels where
        parseJSON
          = withObject "CloudFunctionLabels"
              (\ o -> CloudFunctionLabels' <$> (parseJSONObject o))

instance ToJSON CloudFunctionLabels where
        toJSON = toJSON . _cflAddtional

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

-- | Configuration for a secret environment variable. It has the information
-- necessary to fetch the secret value from secret manager and expose it as
-- an environment variable. Secret value is not a part of the
-- configuration. Secret values are only fetched when a new clone starts.
--
-- /See:/ 'secretEnvVar' smart constructor.
data SecretEnvVar =
  SecretEnvVar'
    { _sevSecret :: !(Maybe Text)
    , _sevKey :: !(Maybe Text)
    , _sevVersion :: !(Maybe Text)
    , _sevProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecretEnvVar' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sevSecret'
--
-- * 'sevKey'
--
-- * 'sevVersion'
--
-- * 'sevProjectId'
secretEnvVar
    :: SecretEnvVar
secretEnvVar =
  SecretEnvVar'
    { _sevSecret = Nothing
    , _sevKey = Nothing
    , _sevVersion = Nothing
    , _sevProjectId = Nothing
    }


-- | Name of the secret in secret manager (not the full resource name).
sevSecret :: Lens' SecretEnvVar (Maybe Text)
sevSecret
  = lens _sevSecret (\ s a -> s{_sevSecret = a})

-- | Name of the environment variable.
sevKey :: Lens' SecretEnvVar (Maybe Text)
sevKey = lens _sevKey (\ s a -> s{_sevKey = a})

-- | Version of the secret (version number or the string \'latest\'). It is
-- recommended to use a numeric version for secret environment variables as
-- any updates to the secret value is not reflected until new clones start.
sevVersion :: Lens' SecretEnvVar (Maybe Text)
sevVersion
  = lens _sevVersion (\ s a -> s{_sevVersion = a})

-- | Project identifier (preferrably project number but can also be the
-- project ID) of the project that contains the secret. If not set, it will
-- be populated with the function\'s project assuming that the secret
-- exists in the same project as of the function.
sevProjectId :: Lens' SecretEnvVar (Maybe Text)
sevProjectId
  = lens _sevProjectId (\ s a -> s{_sevProjectId = a})

instance FromJSON SecretEnvVar where
        parseJSON
          = withObject "SecretEnvVar"
              (\ o ->
                 SecretEnvVar' <$>
                   (o .:? "secret") <*> (o .:? "key") <*>
                     (o .:? "version")
                     <*> (o .:? "projectId"))

instance ToJSON SecretEnvVar where
        toJSON SecretEnvVar'{..}
          = object
              (catMaybes
                 [("secret" .=) <$> _sevSecret,
                  ("key" .=) <$> _sevKey,
                  ("version" .=) <$> _sevVersion,
                  ("projectId" .=) <$> _sevProjectId])

-- | Request for the \`CallFunction\` method.
--
-- /See:/ 'callFunctionRequest' smart constructor.
newtype CallFunctionRequest =
  CallFunctionRequest'
    { _cfrData :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CallFunctionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrData'
callFunctionRequest
    :: CallFunctionRequest
callFunctionRequest = CallFunctionRequest' {_cfrData = Nothing}


-- | Required. Input to be passed to the function.
cfrData :: Lens' CallFunctionRequest (Maybe Text)
cfrData = lens _cfrData (\ s a -> s{_cfrData = a})

instance FromJSON CallFunctionRequest where
        parseJSON
          = withObject "CallFunctionRequest"
              (\ o -> CallFunctionRequest' <$> (o .:? "data"))

instance ToJSON CallFunctionRequest where
        toJSON CallFunctionRequest'{..}
          = object (catMaybes [("data" .=) <$> _cfrData])

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
