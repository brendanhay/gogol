{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudAsset.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudAsset.Types.Product where

import           Network.Google.CloudAsset.Types.Sum
import           Network.Google.Prelude

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
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
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

-- | Cloud asset. This includes all Google Cloud Platform resources, Cloud
-- IAM policies, and other non-GCP assets.
--
-- /See:/ 'asset' smart constructor.
data Asset =
  Asset'
    { _aName      :: !(Maybe Text)
    , _aResource  :: !(Maybe Resource)
    , _aIAMPolicy :: !(Maybe Policy)
    , _aAssetType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Asset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aName'
--
-- * 'aResource'
--
-- * 'aIAMPolicy'
--
-- * 'aAssetType'
asset
    :: Asset
asset =
  Asset'
    { _aName = Nothing
    , _aResource = Nothing
    , _aIAMPolicy = Nothing
    , _aAssetType = Nothing
    }


-- | The full name of the asset. For example:
-- \`\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1\`.
-- See [Resource
-- Names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more information.
aName :: Lens' Asset (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Representation of the resource.
aResource :: Lens' Asset (Maybe Resource)
aResource
  = lens _aResource (\ s a -> s{_aResource = a})

-- | Representation of the actual Cloud IAM policy set on a cloud resource.
-- For each resource, there must be at most one Cloud IAM policy set on it.
aIAMPolicy :: Lens' Asset (Maybe Policy)
aIAMPolicy
  = lens _aIAMPolicy (\ s a -> s{_aIAMPolicy = a})

-- | Type of the asset. Example: \"google.compute.Disk\".
aAssetType :: Lens' Asset (Maybe Text)
aAssetType
  = lens _aAssetType (\ s a -> s{_aAssetType = a})

instance FromJSON Asset where
        parseJSON
          = withObject "Asset"
              (\ o ->
                 Asset' <$>
                   (o .:? "name") <*> (o .:? "resource") <*>
                     (o .:? "iamPolicy")
                     <*> (o .:? "assetType"))

instance ToJSON Asset where
        toJSON Asset'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _aName,
                  ("resource" .=) <$> _aResource,
                  ("iamPolicy" .=) <$> _aIAMPolicy,
                  ("assetType" .=) <$> _aAssetType])

-- | A Cloud Storage location.
--
-- /See:/ 'gcsDestination' smart constructor.
newtype GcsDestination =
  GcsDestination'
    { _gdURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdURI'
gcsDestination
    :: GcsDestination
gcsDestination = GcsDestination' {_gdURI = Nothing}


-- | The uri of the Cloud Storage object. It\'s the same uri that is used by
-- gsutil. For example: \"gs:\/\/bucket_name\/object_name\". See [Viewing
-- and Editing Object
-- Metadata](https:\/\/cloud.google.com\/storage\/docs\/viewing-editing-metadata)
-- for more information.
gdURI :: Lens' GcsDestination (Maybe Text)
gdURI = lens _gdURI (\ s a -> s{_gdURI = a})

instance FromJSON GcsDestination where
        parseJSON
          = withObject "GcsDestination"
              (\ o -> GcsDestination' <$> (o .:? "uri"))

instance ToJSON GcsDestination where
        toJSON GcsDestination'{..}
          = object (catMaybes [("uri" .=) <$> _gdURI])

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

-- | Export asset request.
--
-- /See:/ 'exportAssetsRequest' smart constructor.
data ExportAssetsRequest =
  ExportAssetsRequest'
    { _earReadTime     :: !(Maybe DateTime')
    , _earAssetTypes   :: !(Maybe [Text])
    , _earOutputConfig :: !(Maybe OutputConfig)
    , _earContentType  :: !(Maybe ExportAssetsRequestContentType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportAssetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'earReadTime'
--
-- * 'earAssetTypes'
--
-- * 'earOutputConfig'
--
-- * 'earContentType'
exportAssetsRequest
    :: ExportAssetsRequest
exportAssetsRequest =
  ExportAssetsRequest'
    { _earReadTime = Nothing
    , _earAssetTypes = Nothing
    , _earOutputConfig = Nothing
    , _earContentType = Nothing
    }


-- | Timestamp to take an asset snapshot. This can only be set to a timestamp
-- between 2018-10-02 UTC (inclusive) and the current time. If not
-- specified, the current time will be used. Due to delays in resource data
-- collection and indexing, there is a volatile window during which running
-- the same query may get different results.
earReadTime :: Lens' ExportAssetsRequest (Maybe UTCTime)
earReadTime
  = lens _earReadTime (\ s a -> s{_earReadTime = a}) .
      mapping _DateTime

-- | A list of asset types of which to take a snapshot for. For example:
-- \"google.compute.Disk\". If specified, only matching assets will be
-- returned. See [Introduction to Cloud Asset
-- Inventory](https:\/\/cloud.google.com\/resource-manager\/docs\/cloud-asset-inventory\/overview)
-- for all supported asset types.
earAssetTypes :: Lens' ExportAssetsRequest [Text]
earAssetTypes
  = lens _earAssetTypes
      (\ s a -> s{_earAssetTypes = a})
      . _Default
      . _Coerce

-- | Required. Output configuration indicating where the results will be
-- output to. All results will be in newline delimited JSON format.
earOutputConfig :: Lens' ExportAssetsRequest (Maybe OutputConfig)
earOutputConfig
  = lens _earOutputConfig
      (\ s a -> s{_earOutputConfig = a})

-- | Asset content type. If not specified, no content but the asset name will
-- be returned.
earContentType :: Lens' ExportAssetsRequest (Maybe ExportAssetsRequestContentType)
earContentType
  = lens _earContentType
      (\ s a -> s{_earContentType = a})

instance FromJSON ExportAssetsRequest where
        parseJSON
          = withObject "ExportAssetsRequest"
              (\ o ->
                 ExportAssetsRequest' <$>
                   (o .:? "readTime") <*>
                     (o .:? "assetTypes" .!= mempty)
                     <*> (o .:? "outputConfig")
                     <*> (o .:? "contentType"))

instance ToJSON ExportAssetsRequest where
        toJSON ExportAssetsRequest'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _earReadTime,
                  ("assetTypes" .=) <$> _earAssetTypes,
                  ("outputConfig" .=) <$> _earOutputConfig,
                  ("contentType" .=) <$> _earContentType])

-- | A time window of (start_time, end_time].
--
-- /See:/ 'timeWindow' smart constructor.
data TimeWindow =
  TimeWindow'
    { _twStartTime :: !(Maybe DateTime')
    , _twEndTime   :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'twStartTime'
--
-- * 'twEndTime'
timeWindow
    :: TimeWindow
timeWindow = TimeWindow' {_twStartTime = Nothing, _twEndTime = Nothing}


-- | Start time of the time window (exclusive).
twStartTime :: Lens' TimeWindow (Maybe UTCTime)
twStartTime
  = lens _twStartTime (\ s a -> s{_twStartTime = a}) .
      mapping _DateTime

-- | End time of the time window (inclusive). Current timestamp if not
-- specified.
twEndTime :: Lens' TimeWindow (Maybe UTCTime)
twEndTime
  = lens _twEndTime (\ s a -> s{_twEndTime = a}) .
      mapping _DateTime

instance FromJSON TimeWindow where
        parseJSON
          = withObject "TimeWindow"
              (\ o ->
                 TimeWindow' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimeWindow where
        toJSON TimeWindow'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _twStartTime,
                  ("endTime" .=) <$> _twEndTime])

-- | Temporal asset. In addition to the asset, the temporal asset includes
-- the status of the asset and valid from and to time of it.
--
-- /See:/ 'temporalAsset' smart constructor.
data TemporalAsset =
  TemporalAsset'
    { _taWindow  :: !(Maybe TimeWindow)
    , _taAsset   :: !(Maybe Asset)
    , _taDeleted :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TemporalAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taWindow'
--
-- * 'taAsset'
--
-- * 'taDeleted'
temporalAsset
    :: TemporalAsset
temporalAsset =
  TemporalAsset' {_taWindow = Nothing, _taAsset = Nothing, _taDeleted = Nothing}


-- | The time window when the asset data and state was observed.
taWindow :: Lens' TemporalAsset (Maybe TimeWindow)
taWindow = lens _taWindow (\ s a -> s{_taWindow = a})

-- | Asset.
taAsset :: Lens' TemporalAsset (Maybe Asset)
taAsset = lens _taAsset (\ s a -> s{_taAsset = a})

-- | If the asset is deleted or not.
taDeleted :: Lens' TemporalAsset (Maybe Bool)
taDeleted
  = lens _taDeleted (\ s a -> s{_taDeleted = a})

instance FromJSON TemporalAsset where
        parseJSON
          = withObject "TemporalAsset"
              (\ o ->
                 TemporalAsset' <$>
                   (o .:? "window") <*> (o .:? "asset") <*>
                     (o .:? "deleted"))

instance ToJSON TemporalAsset where
        toJSON TemporalAsset'{..}
          = object
              (catMaybes
                 [("window" .=) <$> _taWindow,
                  ("asset" .=) <$> _taAsset,
                  ("deleted" .=) <$> _taDeleted])

-- | Representation of a cloud resource.
--
-- /See:/ 'resource' smart constructor.
data Resource =
  Resource'
    { _rParent               :: !(Maybe Text)
    , _rData                 :: !(Maybe ResourceData)
    , _rVersion              :: !(Maybe Text)
    , _rDiscoveryName        :: !(Maybe Text)
    , _rDiscoveryDocumentURI :: !(Maybe Text)
    , _rResourceURL          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rParent'
--
-- * 'rData'
--
-- * 'rVersion'
--
-- * 'rDiscoveryName'
--
-- * 'rDiscoveryDocumentURI'
--
-- * 'rResourceURL'
resource
    :: Resource
resource =
  Resource'
    { _rParent = Nothing
    , _rData = Nothing
    , _rVersion = Nothing
    , _rDiscoveryName = Nothing
    , _rDiscoveryDocumentURI = Nothing
    , _rResourceURL = Nothing
    }


-- | The full name of the immediate parent of this resource. See [Resource
-- Names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more information. For GCP assets, it is the parent resource defined
-- in the [Cloud IAM policy
-- hierarchy](https:\/\/cloud.google.com\/iam\/docs\/overview#policy_hierarchy).
-- For example:
-- \`\"\/\/cloudresourcemanager.googleapis.com\/projects\/my_project_123\"\`.
-- For third-party assets, it is up to the users to define.
rParent :: Lens' Resource (Maybe Text)
rParent = lens _rParent (\ s a -> s{_rParent = a})

-- | The content of the resource, in which some sensitive fields are scrubbed
-- away and may not be present.
rData :: Lens' Resource (Maybe ResourceData)
rData = lens _rData (\ s a -> s{_rData = a})

-- | The API version. Example: \"v1\".
rVersion :: Lens' Resource (Maybe Text)
rVersion = lens _rVersion (\ s a -> s{_rVersion = a})

-- | The JSON schema name listed in the discovery document. Example:
-- \"Project\". It will be left unspecified for resources (such as Cloud
-- Bigtable) without a discovery-based API.
rDiscoveryName :: Lens' Resource (Maybe Text)
rDiscoveryName
  = lens _rDiscoveryName
      (\ s a -> s{_rDiscoveryName = a})

-- | The URL of the discovery document containing the resource\'s JSON
-- schema. For example:
-- \`\"https:\/\/www.googleapis.com\/discovery\/v1\/apis\/compute\/v1\/rest\"\`.
-- It will be left unspecified for resources without a discovery-based API,
-- such as Cloud Bigtable.
rDiscoveryDocumentURI :: Lens' Resource (Maybe Text)
rDiscoveryDocumentURI
  = lens _rDiscoveryDocumentURI
      (\ s a -> s{_rDiscoveryDocumentURI = a})

-- | The REST URL for accessing the resource. An HTTP GET operation using
-- this URL returns the resource itself. Example:
-- \`https:\/\/cloudresourcemanager.googleapis.com\/v1\/projects\/my-project-123\`.
-- It will be left unspecified for resources without a REST API.
rResourceURL :: Lens' Resource (Maybe Text)
rResourceURL
  = lens _rResourceURL (\ s a -> s{_rResourceURL = a})

instance FromJSON Resource where
        parseJSON
          = withObject "Resource"
              (\ o ->
                 Resource' <$>
                   (o .:? "parent") <*> (o .:? "data") <*>
                     (o .:? "version")
                     <*> (o .:? "discoveryName")
                     <*> (o .:? "discoveryDocumentUri")
                     <*> (o .:? "resourceUrl"))

instance ToJSON Resource where
        toJSON Resource'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _rParent, ("data" .=) <$> _rData,
                  ("version" .=) <$> _rVersion,
                  ("discoveryName" .=) <$> _rDiscoveryName,
                  ("discoveryDocumentUri" .=) <$>
                    _rDiscoveryDocumentURI,
                  ("resourceUrl" .=) <$> _rResourceURL])

-- | The content of the resource, in which some sensitive fields are scrubbed
-- away and may not be present.
--
-- /See:/ 'resourceData' smart constructor.
newtype ResourceData =
  ResourceData'
    { _rdAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdAddtional'
resourceData
    :: HashMap Text JSONValue -- ^ 'rdAddtional'
    -> ResourceData
resourceData pRdAddtional_ =
  ResourceData' {_rdAddtional = _Coerce # pRdAddtional_}


-- | Properties of the object.
rdAddtional :: Lens' ResourceData (HashMap Text JSONValue)
rdAddtional
  = lens _rdAddtional (\ s a -> s{_rdAddtional = a}) .
      _Coerce

instance FromJSON ResourceData where
        parseJSON
          = withObject "ResourceData"
              (\ o -> ResourceData' <$> (parseJSONObject o))

instance ToJSON ResourceData where
        toJSON = toJSON . _rdAddtional

-- | Output configuration for export assets destination.
--
-- /See:/ 'outputConfig' smart constructor.
newtype OutputConfig =
  OutputConfig'
    { _ocGcsDestination :: Maybe GcsDestination
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocGcsDestination'
outputConfig
    :: OutputConfig
outputConfig = OutputConfig' {_ocGcsDestination = Nothing}


-- | Destination on Cloud Storage.
ocGcsDestination :: Lens' OutputConfig (Maybe GcsDestination)
ocGcsDestination
  = lens _ocGcsDestination
      (\ s a -> s{_ocGcsDestination = a})

instance FromJSON OutputConfig where
        parseJSON
          = withObject "OutputConfig"
              (\ o -> OutputConfig' <$> (o .:? "gcsDestination"))

instance ToJSON OutputConfig where
        toJSON OutputConfig'{..}
          = object
              (catMaybes
                 [("gcsDestination" .=) <$> _ocGcsDestination])

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
    , _pVersion      :: !(Maybe (Textual Int32))
    , _pBindings     :: !(Maybe [Binding])
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
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

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

-- | Batch get assets history response.
--
-- /See:/ 'batchGetAssetsHistoryResponse' smart constructor.
newtype BatchGetAssetsHistoryResponse =
  BatchGetAssetsHistoryResponse'
    { _bgahrAssets :: Maybe [TemporalAsset]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchGetAssetsHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgahrAssets'
batchGetAssetsHistoryResponse
    :: BatchGetAssetsHistoryResponse
batchGetAssetsHistoryResponse =
  BatchGetAssetsHistoryResponse' {_bgahrAssets = Nothing}


-- | A list of assets with valid time windows.
bgahrAssets :: Lens' BatchGetAssetsHistoryResponse [TemporalAsset]
bgahrAssets
  = lens _bgahrAssets (\ s a -> s{_bgahrAssets = a}) .
      _Default
      . _Coerce

instance FromJSON BatchGetAssetsHistoryResponse where
        parseJSON
          = withObject "BatchGetAssetsHistoryResponse"
              (\ o ->
                 BatchGetAssetsHistoryResponse' <$>
                   (o .:? "assets" .!= mempty))

instance ToJSON BatchGetAssetsHistoryResponse where
        toJSON BatchGetAssetsHistoryResponse'{..}
          = object (catMaybes [("assets" .=) <$> _bgahrAssets])

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
-- \`admins\'example.com\`. * \`domain:{domain}\`: A Google Apps domain
-- name that represents all the users of that domain. For example,
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

-- | Unimplemented. The condition that is associated with this binding. NOTE:
-- an unsatisfied condition will not allow user access via current binding.
-- Different bindings, including their conditions, are examined
-- independently.
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
