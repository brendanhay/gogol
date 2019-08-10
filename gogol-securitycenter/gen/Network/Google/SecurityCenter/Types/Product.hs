{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SecurityCenter.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SecurityCenter.Types.Product where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types.Sum

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

-- | Response message for listing findings.
--
-- /See:/ 'listFindingsResponse' smart constructor.
data ListFindingsResponse =
  ListFindingsResponse'
    { _lfrReadTime            :: !(Maybe DateTime')
    , _lfrNextPageToken       :: !(Maybe Text)
    , _lfrTotalSize           :: !(Maybe (Textual Int32))
    , _lfrListFindingsResults :: !(Maybe [ListFindingsResult])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListFindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrReadTime'
--
-- * 'lfrNextPageToken'
--
-- * 'lfrTotalSize'
--
-- * 'lfrListFindingsResults'
listFindingsResponse
    :: ListFindingsResponse
listFindingsResponse =
  ListFindingsResponse'
    { _lfrReadTime = Nothing
    , _lfrNextPageToken = Nothing
    , _lfrTotalSize = Nothing
    , _lfrListFindingsResults = Nothing
    }


-- | Time used for executing the list request.
lfrReadTime :: Lens' ListFindingsResponse (Maybe UTCTime)
lfrReadTime
  = lens _lfrReadTime (\ s a -> s{_lfrReadTime = a}) .
      mapping _DateTime

-- | Token to retrieve the next page of results, or empty if there are no
-- more results.
lfrNextPageToken :: Lens' ListFindingsResponse (Maybe Text)
lfrNextPageToken
  = lens _lfrNextPageToken
      (\ s a -> s{_lfrNextPageToken = a})

-- | The total number of findings matching the query.
lfrTotalSize :: Lens' ListFindingsResponse (Maybe Int32)
lfrTotalSize
  = lens _lfrTotalSize (\ s a -> s{_lfrTotalSize = a})
      . mapping _Coerce

-- | Findings matching the list request.
lfrListFindingsResults :: Lens' ListFindingsResponse [ListFindingsResult]
lfrListFindingsResults
  = lens _lfrListFindingsResults
      (\ s a -> s{_lfrListFindingsResults = a})
      . _Default
      . _Coerce

instance FromJSON ListFindingsResponse where
        parseJSON
          = withObject "ListFindingsResponse"
              (\ o ->
                 ListFindingsResponse' <$>
                   (o .:? "readTime") <*> (o .:? "nextPageToken") <*>
                     (o .:? "totalSize")
                     <*> (o .:? "listFindingsResults" .!= mempty))

instance ToJSON ListFindingsResponse where
        toJSON ListFindingsResponse'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _lfrReadTime,
                  ("nextPageToken" .=) <$> _lfrNextPageToken,
                  ("totalSize" .=) <$> _lfrTotalSize,
                  ("listFindingsResults" .=) <$>
                    _lfrListFindingsResults])

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

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
data GetIAMPolicyRequest =
  GetIAMPolicyRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest'


instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest')

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | Response message for group by findings.
--
-- /See:/ 'groupFindingsResponse' smart constructor.
data GroupFindingsResponse =
  GroupFindingsResponse'
    { _gfrReadTime       :: !(Maybe DateTime')
    , _gfrNextPageToken  :: !(Maybe Text)
    , _gfrTotalSize      :: !(Maybe (Textual Int32))
    , _gfrGroupByResults :: !(Maybe [GroupResult])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupFindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrReadTime'
--
-- * 'gfrNextPageToken'
--
-- * 'gfrTotalSize'
--
-- * 'gfrGroupByResults'
groupFindingsResponse
    :: GroupFindingsResponse
groupFindingsResponse =
  GroupFindingsResponse'
    { _gfrReadTime = Nothing
    , _gfrNextPageToken = Nothing
    , _gfrTotalSize = Nothing
    , _gfrGroupByResults = Nothing
    }


-- | Time used for executing the groupBy request.
gfrReadTime :: Lens' GroupFindingsResponse (Maybe UTCTime)
gfrReadTime
  = lens _gfrReadTime (\ s a -> s{_gfrReadTime = a}) .
      mapping _DateTime

-- | Token to retrieve the next page of results, or empty if there are no
-- more results.
gfrNextPageToken :: Lens' GroupFindingsResponse (Maybe Text)
gfrNextPageToken
  = lens _gfrNextPageToken
      (\ s a -> s{_gfrNextPageToken = a})

-- | The total number of results matching the query.
gfrTotalSize :: Lens' GroupFindingsResponse (Maybe Int32)
gfrTotalSize
  = lens _gfrTotalSize (\ s a -> s{_gfrTotalSize = a})
      . mapping _Coerce

-- | Group results. There exists an element for each existing unique
-- combination of property\/values. The element contains a count for the
-- number of times those specific property\/values appear.
gfrGroupByResults :: Lens' GroupFindingsResponse [GroupResult]
gfrGroupByResults
  = lens _gfrGroupByResults
      (\ s a -> s{_gfrGroupByResults = a})
      . _Default
      . _Coerce

instance FromJSON GroupFindingsResponse where
        parseJSON
          = withObject "GroupFindingsResponse"
              (\ o ->
                 GroupFindingsResponse' <$>
                   (o .:? "readTime") <*> (o .:? "nextPageToken") <*>
                     (o .:? "totalSize")
                     <*> (o .:? "groupByResults" .!= mempty))

instance ToJSON GroupFindingsResponse where
        toJSON GroupFindingsResponse'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _gfrReadTime,
                  ("nextPageToken" .=) <$> _gfrNextPageToken,
                  ("totalSize" .=) <$> _gfrTotalSize,
                  ("groupByResults" .=) <$> _gfrGroupByResults])

-- | Request message for running asset discovery for an organization.
--
-- /See:/ 'runAssetDiscoveryRequest' smart constructor.
data RunAssetDiscoveryRequest =
  RunAssetDiscoveryRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunAssetDiscoveryRequest' with the minimum fields required to make a request.
--
runAssetDiscoveryRequest
    :: RunAssetDiscoveryRequest
runAssetDiscoveryRequest = RunAssetDiscoveryRequest'


instance FromJSON RunAssetDiscoveryRequest where
        parseJSON
          = withObject "RunAssetDiscoveryRequest"
              (\ o -> pure RunAssetDiscoveryRequest')

instance ToJSON RunAssetDiscoveryRequest where
        toJSON = const emptyObject

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

-- | Cloud Security Command Center (Cloud SCC) finding. A finding is a record
-- of assessment data (security, risk, health or privacy) ingested into
-- Cloud SCC for presentation, notification, analysis, policy testing, and
-- enforcement. For example, an XSS vulnerability in an App Engine
-- application is a finding.
--
-- /See:/ 'finding' smart constructor.
data Finding =
  Finding'
    { _fParent           :: !(Maybe Text)
    , _fSourceProperties :: !(Maybe FindingSourceProperties)
    , _fState            :: !(Maybe FindingState)
    , _fResourceName     :: !(Maybe Text)
    , _fSecurityMarks    :: !(Maybe SecurityMarks)
    , _fCategory         :: !(Maybe Text)
    , _fExternalURI      :: !(Maybe Text)
    , _fEventTime        :: !(Maybe DateTime')
    , _fName             :: !(Maybe Text)
    , _fCreateTime       :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Finding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fParent'
--
-- * 'fSourceProperties'
--
-- * 'fState'
--
-- * 'fResourceName'
--
-- * 'fSecurityMarks'
--
-- * 'fCategory'
--
-- * 'fExternalURI'
--
-- * 'fEventTime'
--
-- * 'fName'
--
-- * 'fCreateTime'
finding
    :: Finding
finding =
  Finding'
    { _fParent = Nothing
    , _fSourceProperties = Nothing
    , _fState = Nothing
    , _fResourceName = Nothing
    , _fSecurityMarks = Nothing
    , _fCategory = Nothing
    , _fExternalURI = Nothing
    , _fEventTime = Nothing
    , _fName = Nothing
    , _fCreateTime = Nothing
    }


-- | The relative resource name of the source the finding belongs to. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- This field is immutable after creation time. For example:
-- \"organizations\/123\/sources\/456\"
fParent :: Lens' Finding (Maybe Text)
fParent = lens _fParent (\ s a -> s{_fParent = a})

-- | Source specific properties. These properties are managed by the source
-- that writes the finding. The key names in the source_properties map must
-- be between 1 and 255 characters, and must start with a letter and
-- contain alphanumeric characters or underscores only.
fSourceProperties :: Lens' Finding (Maybe FindingSourceProperties)
fSourceProperties
  = lens _fSourceProperties
      (\ s a -> s{_fSourceProperties = a})

-- | The state of the finding.
fState :: Lens' Finding (Maybe FindingState)
fState = lens _fState (\ s a -> s{_fState = a})

-- | The full resource name of the Google Cloud Platform (GCP) resource this
-- finding is for. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name
-- This field is immutable after creation time.
fResourceName :: Lens' Finding (Maybe Text)
fResourceName
  = lens _fResourceName
      (\ s a -> s{_fResourceName = a})

-- | Output only. User specified security marks. These marks are entirely
-- managed by the user and come from the SecurityMarks resource that
-- belongs to the finding.
fSecurityMarks :: Lens' Finding (Maybe SecurityMarks)
fSecurityMarks
  = lens _fSecurityMarks
      (\ s a -> s{_fSecurityMarks = a})

-- | The additional taxonomy group within findings from a given source. This
-- field is immutable after creation time. Example: \"XSS_FLASH_INJECTION\"
fCategory :: Lens' Finding (Maybe Text)
fCategory
  = lens _fCategory (\ s a -> s{_fCategory = a})

-- | The URI that, if available, points to a web page outside of Cloud SCC
-- where additional information about the finding can be found. This field
-- is guaranteed to be either empty or a well formed URL.
fExternalURI :: Lens' Finding (Maybe Text)
fExternalURI
  = lens _fExternalURI (\ s a -> s{_fExternalURI = a})

-- | The time at which the event took place. For example, if the finding
-- represents an open firewall it would capture the time the open firewall
-- was detected.
fEventTime :: Lens' Finding (Maybe UTCTime)
fEventTime
  = lens _fEventTime (\ s a -> s{_fEventTime = a}) .
      mapping _DateTime

-- | The relative resource name of this finding. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example: \"organizations\/123\/sources\/456\/findings\/789\"
fName :: Lens' Finding (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The time at which the finding was created in Cloud SCC.
fCreateTime :: Lens' Finding (Maybe UTCTime)
fCreateTime
  = lens _fCreateTime (\ s a -> s{_fCreateTime = a}) .
      mapping _DateTime

instance FromJSON Finding where
        parseJSON
          = withObject "Finding"
              (\ o ->
                 Finding' <$>
                   (o .:? "parent") <*> (o .:? "sourceProperties") <*>
                     (o .:? "state")
                     <*> (o .:? "resourceName")
                     <*> (o .:? "securityMarks")
                     <*> (o .:? "category")
                     <*> (o .:? "externalUri")
                     <*> (o .:? "eventTime")
                     <*> (o .:? "name")
                     <*> (o .:? "createTime"))

instance ToJSON Finding where
        toJSON Finding'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _fParent,
                  ("sourceProperties" .=) <$> _fSourceProperties,
                  ("state" .=) <$> _fState,
                  ("resourceName" .=) <$> _fResourceName,
                  ("securityMarks" .=) <$> _fSecurityMarks,
                  ("category" .=) <$> _fCategory,
                  ("externalUri" .=) <$> _fExternalURI,
                  ("eventTime" .=) <$> _fEventTime,
                  ("name" .=) <$> _fName,
                  ("createTime" .=) <$> _fCreateTime])

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

-- | Result containing the Finding and its StateChange.
--
-- /See:/ 'listFindingsResult' smart constructor.
data ListFindingsResult =
  ListFindingsResult'
    { _lfrFinding     :: !(Maybe Finding)
    , _lfrStateChange :: !(Maybe ListFindingsResultStateChange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListFindingsResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrFinding'
--
-- * 'lfrStateChange'
listFindingsResult
    :: ListFindingsResult
listFindingsResult =
  ListFindingsResult' {_lfrFinding = Nothing, _lfrStateChange = Nothing}


-- | Finding matching the search request.
lfrFinding :: Lens' ListFindingsResult (Maybe Finding)
lfrFinding
  = lens _lfrFinding (\ s a -> s{_lfrFinding = a})

-- | State change of the finding between the points in time.
lfrStateChange :: Lens' ListFindingsResult (Maybe ListFindingsResultStateChange)
lfrStateChange
  = lens _lfrStateChange
      (\ s a -> s{_lfrStateChange = a})

instance FromJSON ListFindingsResult where
        parseJSON
          = withObject "ListFindingsResult"
              (\ o ->
                 ListFindingsResult' <$>
                   (o .:? "finding") <*> (o .:? "stateChange"))

instance ToJSON ListFindingsResult where
        toJSON ListFindingsResult'{..}
          = object
              (catMaybes
                 [("finding" .=) <$> _lfrFinding,
                  ("stateChange" .=) <$> _lfrStateChange])

-- | Request message for grouping by assets.
--
-- /See:/ 'groupAssetsRequest' smart constructor.
data GroupAssetsRequest =
  GroupAssetsRequest'
    { _garGroupBy         :: !(Maybe Text)
    , _garReadTime        :: !(Maybe DateTime')
    , _garFilter          :: !(Maybe Text)
    , _garPageToken       :: !(Maybe Text)
    , _garPageSize        :: !(Maybe (Textual Int32))
    , _garCompareDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupAssetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garGroupBy'
--
-- * 'garReadTime'
--
-- * 'garFilter'
--
-- * 'garPageToken'
--
-- * 'garPageSize'
--
-- * 'garCompareDuration'
groupAssetsRequest
    :: GroupAssetsRequest
groupAssetsRequest =
  GroupAssetsRequest'
    { _garGroupBy = Nothing
    , _garReadTime = Nothing
    , _garFilter = Nothing
    , _garPageToken = Nothing
    , _garPageSize = Nothing
    , _garCompareDuration = Nothing
    }


-- | Expression that defines what assets fields to use for grouping. The
-- string value should follow SQL syntax: comma separated list of fields.
-- For example:
-- \"security_center_properties.resource_project,security_center_properties.project\".
-- The following fields are supported when compare_duration is not set: *
-- security_center_properties.resource_project *
-- security_center_properties.resource_type *
-- security_center_properties.resource_parent The following fields are
-- supported when compare_duration is set: *
-- security_center_properties.resource_type
garGroupBy :: Lens' GroupAssetsRequest (Maybe Text)
garGroupBy
  = lens _garGroupBy (\ s a -> s{_garGroupBy = a})

-- | Time used as a reference point when filtering assets. The filter is
-- limited to assets existing at the supplied time and their values are
-- those at that specific time. Absence of this field will default to the
-- API\'s version of NOW.
garReadTime :: Lens' GroupAssetsRequest (Maybe UTCTime)
garReadTime
  = lens _garReadTime (\ s a -> s{_garReadTime = a}) .
      mapping _DateTime

-- | Expression that defines the filter to apply across assets. The
-- expression is a list of zero or more restrictions combined via logical
-- operators \`AND\` and \`OR\`. Parentheses are supported, and \`OR\` has
-- higher precedence than \`AND\`. Restrictions have the form \` \` and may
-- have a \`-\` character in front of them to indicate negation. The fields
-- map to those defined in the Asset resource. Examples include: * name *
-- security_center_properties.resource_name *
-- resource_properties.a_property * security_marks.marks.marka The
-- supported operators are: * \`=\` for all value types. * \`>\`, \`\<\`,
-- \`>=\`, \`\<=\` for integer values. * \`:\`, meaning substring matching,
-- for strings. The supported value types are: * string literals in quotes.
-- * integer literals without quotes. * boolean literals \`true\` and
-- \`false\` without quotes. The following field and operator combinations
-- are supported: name | \'=\' update_time | \'>\', \'\<\', \'>=\',
-- \'\<=\', \'=\' create_time | \'>\', \'\<\', \'>=\', \'\<=\', \'=\'
-- iam_policy.policy_blob | \'=\', \':\' resource_properties | \'=\',
-- \':\', \'>\', \'\<\', \'>=\', \'\<=\' security_marks | \'=\', \':\'
-- security_center_properties.resource_name | \'=\', \':\'
-- security_center_properties.resource_type | \'=\', \':\'
-- security_center_properties.resource_parent | \'=\', \':\'
-- security_center_properties.resource_project | \'=\', \':\'
-- security_center_properties.resource_owners | \'=\', \':\' For example,
-- \`resource_properties.size = 100\` is a valid filter string.
garFilter :: Lens' GroupAssetsRequest (Maybe Text)
garFilter
  = lens _garFilter (\ s a -> s{_garFilter = a})

-- | The value returned by the last \`GroupAssetsResponse\`; indicates that
-- this is a continuation of a prior \`GroupAssets\` call, and that the
-- system should return the next page of data.
garPageToken :: Lens' GroupAssetsRequest (Maybe Text)
garPageToken
  = lens _garPageToken (\ s a -> s{_garPageToken = a})

-- | The maximum number of results to return in a single response. Default is
-- 10, minimum is 1, maximum is 1000.
garPageSize :: Lens' GroupAssetsRequest (Maybe Int32)
garPageSize
  = lens _garPageSize (\ s a -> s{_garPageSize = a}) .
      mapping _Coerce

-- | When compare_duration is set, the GroupResult\'s \"state_change\"
-- property is updated to indicate whether the asset was added, removed, or
-- remained present during the compare_duration period of time that
-- precedes the read_time. This is the time between (read_time -
-- compare_duration) and read_time. The state change value is derived based
-- on the presence of the asset at the two points in time. Intermediate
-- state changes between the two times don\'t affect the result. For
-- example, the results aren\'t affected if the asset is removed and
-- re-created again. Possible \"state_change\" values when compare_duration
-- is specified: * \"ADDED\": indicates that the asset was not present at
-- the start of compare_duration, but present at reference_time. *
-- \"REMOVED\": indicates that the asset was present at the start of
-- compare_duration, but not present at reference_time. * \"ACTIVE\":
-- indicates that the asset was present at both the start and the end of
-- the time period defined by compare_duration and reference_time. If
-- compare_duration is not specified, then the only possible state_change
-- is \"UNUSED\", which will be the state_change set for all assets present
-- at read_time. If this field is set then \`state_change\` must be a
-- specified field in \`group_by\`.
garCompareDuration :: Lens' GroupAssetsRequest (Maybe Scientific)
garCompareDuration
  = lens _garCompareDuration
      (\ s a -> s{_garCompareDuration = a})
      . mapping _GDuration

instance FromJSON GroupAssetsRequest where
        parseJSON
          = withObject "GroupAssetsRequest"
              (\ o ->
                 GroupAssetsRequest' <$>
                   (o .:? "groupBy") <*> (o .:? "readTime") <*>
                     (o .:? "filter")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "compareDuration"))

instance ToJSON GroupAssetsRequest where
        toJSON GroupAssetsRequest'{..}
          = object
              (catMaybes
                 [("groupBy" .=) <$> _garGroupBy,
                  ("readTime" .=) <$> _garReadTime,
                  ("filter" .=) <$> _garFilter,
                  ("pageToken" .=) <$> _garPageToken,
                  ("pageSize" .=) <$> _garPageSize,
                  ("compareDuration" .=) <$> _garCompareDuration])

-- | Request message for grouping by findings.
--
-- /See:/ 'groupFindingsRequest' smart constructor.
data GroupFindingsRequest =
  GroupFindingsRequest'
    { _gGroupBy         :: !(Maybe Text)
    , _gReadTime        :: !(Maybe DateTime')
    , _gFilter          :: !(Maybe Text)
    , _gPageToken       :: !(Maybe Text)
    , _gPageSize        :: !(Maybe (Textual Int32))
    , _gCompareDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupFindingsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gGroupBy'
--
-- * 'gReadTime'
--
-- * 'gFilter'
--
-- * 'gPageToken'
--
-- * 'gPageSize'
--
-- * 'gCompareDuration'
groupFindingsRequest
    :: GroupFindingsRequest
groupFindingsRequest =
  GroupFindingsRequest'
    { _gGroupBy = Nothing
    , _gReadTime = Nothing
    , _gFilter = Nothing
    , _gPageToken = Nothing
    , _gPageSize = Nothing
    , _gCompareDuration = Nothing
    }


-- | Expression that defines what assets fields to use for grouping
-- (including \`state_change\`). The string value should follow SQL syntax:
-- comma separated list of fields. For example: \"parent,resource_name\".
-- The following fields are supported: * resource_name * category * state *
-- parent The following fields are supported when compare_duration is set:
-- * state_change
gGroupBy :: Lens' GroupFindingsRequest (Maybe Text)
gGroupBy = lens _gGroupBy (\ s a -> s{_gGroupBy = a})

-- | Time used as a reference point when filtering findings. The filter is
-- limited to findings existing at the supplied time and their values are
-- those at that specific time. Absence of this field will default to the
-- API\'s version of NOW.
gReadTime :: Lens' GroupFindingsRequest (Maybe UTCTime)
gReadTime
  = lens _gReadTime (\ s a -> s{_gReadTime = a}) .
      mapping _DateTime

-- | Expression that defines the filter to apply across findings. The
-- expression is a list of one or more restrictions combined via logical
-- operators \`AND\` and \`OR\`. Parentheses are supported, and \`OR\` has
-- higher precedence than \`AND\`. Restrictions have the form \` \` and may
-- have a \`-\` character in front of them to indicate negation. Examples
-- include: * name * source_properties.a_property *
-- security_marks.marks.marka The supported operators are: * \`=\` for all
-- value types. * \`>\`, \`\<\`, \`>=\`, \`\<=\` for integer values. *
-- \`:\`, meaning substring matching, for strings. The supported value
-- types are: * string literals in quotes. * integer literals without
-- quotes. * boolean literals \`true\` and \`false\` without quotes. The
-- following field and operator combinations are supported: name | \`=\`
-- parent | \'=\', \':\' resource_name | \'=\', \':\' state | \'=\', \':\'
-- category | \'=\', \':\' external_uri | \'=\', \':\' event_time | \`>\`,
-- \`\<\`, \`>=\`, \`\<=\` security_marks | \'=\', \':\' source_properties
-- | \'=\', \':\', \`>\`, \`\<\`, \`>=\`, \`\<=\` For example,
-- \`source_properties.size = 100\` is a valid filter string.
gFilter :: Lens' GroupFindingsRequest (Maybe Text)
gFilter = lens _gFilter (\ s a -> s{_gFilter = a})

-- | The value returned by the last \`GroupFindingsResponse\`; indicates that
-- this is a continuation of a prior \`GroupFindings\` call, and that the
-- system should return the next page of data.
gPageToken :: Lens' GroupFindingsRequest (Maybe Text)
gPageToken
  = lens _gPageToken (\ s a -> s{_gPageToken = a})

-- | The maximum number of results to return in a single response. Default is
-- 10, minimum is 1, maximum is 1000.
gPageSize :: Lens' GroupFindingsRequest (Maybe Int32)
gPageSize
  = lens _gPageSize (\ s a -> s{_gPageSize = a}) .
      mapping _Coerce

-- | When compare_duration is set, the GroupResult\'s \"state_change\"
-- attribute is updated to indicate whether the finding had its state
-- changed, the finding\'s state remained unchanged, or if the finding was
-- added during the compare_duration period of time that precedes the
-- read_time. This is the time between (read_time - compare_duration) and
-- read_time. The state_change value is derived based on the presence and
-- state of the finding at the two points in time. Intermediate state
-- changes between the two times don\'t affect the result. For example, the
-- results aren\'t affected if the finding is made inactive and then active
-- again. Possible \"state_change\" values when compare_duration is
-- specified: * \"CHANGED\": indicates that the finding was present at the
-- start of compare_duration, but changed its state at read_time. *
-- \"UNCHANGED\": indicates that the finding was present at the start of
-- compare_duration and did not change state at read_time. * \"ADDED\":
-- indicates that the finding was not present at the start of
-- compare_duration, but was present at read_time. If compare_duration is
-- not specified, then the only possible state_change is \"UNUSED\", which
-- will be the state_change set for all findings present at read_time. If
-- this field is set then \`state_change\` must be a specified field in
-- \`group_by\`.
gCompareDuration :: Lens' GroupFindingsRequest (Maybe Scientific)
gCompareDuration
  = lens _gCompareDuration
      (\ s a -> s{_gCompareDuration = a})
      . mapping _GDuration

instance FromJSON GroupFindingsRequest where
        parseJSON
          = withObject "GroupFindingsRequest"
              (\ o ->
                 GroupFindingsRequest' <$>
                   (o .:? "groupBy") <*> (o .:? "readTime") <*>
                     (o .:? "filter")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "compareDuration"))

instance ToJSON GroupFindingsRequest where
        toJSON GroupFindingsRequest'{..}
          = object
              (catMaybes
                 [("groupBy" .=) <$> _gGroupBy,
                  ("readTime" .=) <$> _gReadTime,
                  ("filter" .=) <$> _gFilter,
                  ("pageToken" .=) <$> _gPageToken,
                  ("pageSize" .=) <$> _gPageSize,
                  ("compareDuration" .=) <$> _gCompareDuration])

-- | The configuration used for Asset Discovery runs.
--
-- /See:/ 'assetDiscoveryConfig' smart constructor.
data AssetDiscoveryConfig =
  AssetDiscoveryConfig'
    { _adcInclusionMode :: !(Maybe AssetDiscoveryConfigInclusionMode)
    , _adcProjectIds    :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AssetDiscoveryConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adcInclusionMode'
--
-- * 'adcProjectIds'
assetDiscoveryConfig
    :: AssetDiscoveryConfig
assetDiscoveryConfig =
  AssetDiscoveryConfig' {_adcInclusionMode = Nothing, _adcProjectIds = Nothing}


-- | The mode to use for filtering asset discovery.
adcInclusionMode :: Lens' AssetDiscoveryConfig (Maybe AssetDiscoveryConfigInclusionMode)
adcInclusionMode
  = lens _adcInclusionMode
      (\ s a -> s{_adcInclusionMode = a})

-- | The project ids to use for filtering asset discovery.
adcProjectIds :: Lens' AssetDiscoveryConfig [Text]
adcProjectIds
  = lens _adcProjectIds
      (\ s a -> s{_adcProjectIds = a})
      . _Default
      . _Coerce

instance FromJSON AssetDiscoveryConfig where
        parseJSON
          = withObject "AssetDiscoveryConfig"
              (\ o ->
                 AssetDiscoveryConfig' <$>
                   (o .:? "inclusionMode") <*>
                     (o .:? "projectIds" .!= mempty))

instance ToJSON AssetDiscoveryConfig where
        toJSON AssetDiscoveryConfig'{..}
          = object
              (catMaybes
                 [("inclusionMode" .=) <$> _adcInclusionMode,
                  ("projectIds" .=) <$> _adcProjectIds])

-- | Cloud Security Command Center\'s (Cloud SCC) representation of a Google
-- Cloud Platform (GCP) resource. The Asset is a Cloud SCC resource that
-- captures information about a single GCP resource. All modifications to
-- an Asset are only within the context of Cloud SCC and don\'t affect the
-- referenced GCP resource.
--
-- /See:/ 'asset' smart constructor.
data Asset =
  Asset'
    { _aSecurityMarks            :: !(Maybe SecurityMarks)
    , _aResourceProperties       :: !(Maybe AssetResourceProperties)
    , _aUpdateTime               :: !(Maybe DateTime')
    , _aSecurityCenterProperties :: !(Maybe SecurityCenterProperties)
    , _aName                     :: !(Maybe Text)
    , _aIAMPolicy                :: !(Maybe IAMPolicy)
    , _aCreateTime               :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Asset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aSecurityMarks'
--
-- * 'aResourceProperties'
--
-- * 'aUpdateTime'
--
-- * 'aSecurityCenterProperties'
--
-- * 'aName'
--
-- * 'aIAMPolicy'
--
-- * 'aCreateTime'
asset
    :: Asset
asset =
  Asset'
    { _aSecurityMarks = Nothing
    , _aResourceProperties = Nothing
    , _aUpdateTime = Nothing
    , _aSecurityCenterProperties = Nothing
    , _aName = Nothing
    , _aIAMPolicy = Nothing
    , _aCreateTime = Nothing
    }


-- | User specified security marks. These marks are entirely managed by the
-- user and come from the SecurityMarks resource that belongs to the asset.
aSecurityMarks :: Lens' Asset (Maybe SecurityMarks)
aSecurityMarks
  = lens _aSecurityMarks
      (\ s a -> s{_aSecurityMarks = a})

-- | Resource managed properties. These properties are managed and defined by
-- the GCP resource and cannot be modified by the user.
aResourceProperties :: Lens' Asset (Maybe AssetResourceProperties)
aResourceProperties
  = lens _aResourceProperties
      (\ s a -> s{_aResourceProperties = a})

-- | The time at which the asset was last updated, added, or deleted in Cloud
-- SCC.
aUpdateTime :: Lens' Asset (Maybe UTCTime)
aUpdateTime
  = lens _aUpdateTime (\ s a -> s{_aUpdateTime = a}) .
      mapping _DateTime

-- | Cloud SCC managed properties. These properties are managed by Cloud SCC
-- and cannot be modified by the user.
aSecurityCenterProperties :: Lens' Asset (Maybe SecurityCenterProperties)
aSecurityCenterProperties
  = lens _aSecurityCenterProperties
      (\ s a -> s{_aSecurityCenterProperties = a})

-- | The relative resource name of this asset. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example: \"organizations\/123\/assets\/456\".
aName :: Lens' Asset (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | IAM Policy information associated with the GCP resource described by the
-- Cloud SCC asset. This information is managed and defined by the GCP
-- resource and cannot be modified by the user.
aIAMPolicy :: Lens' Asset (Maybe IAMPolicy)
aIAMPolicy
  = lens _aIAMPolicy (\ s a -> s{_aIAMPolicy = a})

-- | The time at which the asset was created in Cloud SCC.
aCreateTime :: Lens' Asset (Maybe UTCTime)
aCreateTime
  = lens _aCreateTime (\ s a -> s{_aCreateTime = a}) .
      mapping _DateTime

instance FromJSON Asset where
        parseJSON
          = withObject "Asset"
              (\ o ->
                 Asset' <$>
                   (o .:? "securityMarks") <*>
                     (o .:? "resourceProperties")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "securityCenterProperties")
                     <*> (o .:? "name")
                     <*> (o .:? "iamPolicy")
                     <*> (o .:? "createTime"))

instance ToJSON Asset where
        toJSON Asset'{..}
          = object
              (catMaybes
                 [("securityMarks" .=) <$> _aSecurityMarks,
                  ("resourceProperties" .=) <$> _aResourceProperties,
                  ("updateTime" .=) <$> _aUpdateTime,
                  ("securityCenterProperties" .=) <$>
                    _aSecurityCenterProperties,
                  ("name" .=) <$> _aName,
                  ("iamPolicy" .=) <$> _aIAMPolicy,
                  ("createTime" .=) <$> _aCreateTime])

-- | User specified security marks that are attached to the parent Cloud
-- Security Command Center (Cloud SCC) resource. Security marks are scoped
-- within a Cloud SCC organization -- they can be modified and viewed by
-- all users who have proper permissions on the organization.
--
-- /See:/ 'securityMarks' smart constructor.
data SecurityMarks =
  SecurityMarks'
    { _smName  :: !(Maybe Text)
    , _smMarks :: !(Maybe SecurityMarksMarks)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityMarks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smName'
--
-- * 'smMarks'
securityMarks
    :: SecurityMarks
securityMarks = SecurityMarks' {_smName = Nothing, _smMarks = Nothing}


-- | The relative resource name of the SecurityMarks. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Examples: \"organizations\/123\/assets\/456\/securityMarks\"
-- \"organizations\/123\/sources\/456\/findings\/789\/securityMarks\".
smName :: Lens' SecurityMarks (Maybe Text)
smName = lens _smName (\ s a -> s{_smName = a})

-- | Mutable user specified security marks belonging to the parent resource.
-- Constraints are as follows: - Keys and values are treated as case
-- insensitive - Keys must be between 1 - 256 characters (inclusive) - Keys
-- must be letters, numbers, underscores, or dashes - Values have leading
-- and trailing whitespace trimmed, remaining characters must be between 1
-- - 4096 characters (inclusive)
smMarks :: Lens' SecurityMarks (Maybe SecurityMarksMarks)
smMarks = lens _smMarks (\ s a -> s{_smMarks = a})

instance FromJSON SecurityMarks where
        parseJSON
          = withObject "SecurityMarks"
              (\ o ->
                 SecurityMarks' <$>
                   (o .:? "name") <*> (o .:? "marks"))

instance ToJSON SecurityMarks where
        toJSON SecurityMarks'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _smName, ("marks" .=) <$> _smMarks])

-- | Resource managed properties. These properties are managed and defined by
-- the GCP resource and cannot be modified by the user.
--
-- /See:/ 'assetResourceProperties' smart constructor.
newtype AssetResourceProperties =
  AssetResourceProperties'
    { _arpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AssetResourceProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arpAddtional'
assetResourceProperties
    :: HashMap Text JSONValue -- ^ 'arpAddtional'
    -> AssetResourceProperties
assetResourceProperties pArpAddtional_ =
  AssetResourceProperties' {_arpAddtional = _Coerce # pArpAddtional_}


arpAddtional :: Lens' AssetResourceProperties (HashMap Text JSONValue)
arpAddtional
  = lens _arpAddtional (\ s a -> s{_arpAddtional = a})
      . _Coerce

instance FromJSON AssetResourceProperties where
        parseJSON
          = withObject "AssetResourceProperties"
              (\ o ->
                 AssetResourceProperties' <$> (parseJSONObject o))

instance ToJSON AssetResourceProperties where
        toJSON = toJSON . _arpAddtional

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

-- | User specified settings that are attached to the Cloud Security Command
-- Center (Cloud SCC) organization.
--
-- /See:/ 'organizationSettings' smart constructor.
data OrganizationSettings =
  OrganizationSettings'
    { _osAssetDiscoveryConfig :: !(Maybe AssetDiscoveryConfig)
    , _osEnableAssetDiscovery :: !(Maybe Bool)
    , _osName                 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAssetDiscoveryConfig'
--
-- * 'osEnableAssetDiscovery'
--
-- * 'osName'
organizationSettings
    :: OrganizationSettings
organizationSettings =
  OrganizationSettings'
    { _osAssetDiscoveryConfig = Nothing
    , _osEnableAssetDiscovery = Nothing
    , _osName = Nothing
    }


-- | The configuration used for Asset Discovery runs.
osAssetDiscoveryConfig :: Lens' OrganizationSettings (Maybe AssetDiscoveryConfig)
osAssetDiscoveryConfig
  = lens _osAssetDiscoveryConfig
      (\ s a -> s{_osAssetDiscoveryConfig = a})

-- | A flag that indicates if Asset Discovery should be enabled. If the flag
-- is set to \`true\`, then discovery of assets will occur. If it is set to
-- \`false, all historical assets will remain, but discovery of future
-- assets will not occur.
osEnableAssetDiscovery :: Lens' OrganizationSettings (Maybe Bool)
osEnableAssetDiscovery
  = lens _osEnableAssetDiscovery
      (\ s a -> s{_osEnableAssetDiscovery = a})

-- | The relative resource name of the settings. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example: \"organizations\/123\/organizationSettings\".
osName :: Lens' OrganizationSettings (Maybe Text)
osName = lens _osName (\ s a -> s{_osName = a})

instance FromJSON OrganizationSettings where
        parseJSON
          = withObject "OrganizationSettings"
              (\ o ->
                 OrganizationSettings' <$>
                   (o .:? "assetDiscoveryConfig") <*>
                     (o .:? "enableAssetDiscovery")
                     <*> (o .:? "name"))

instance ToJSON OrganizationSettings where
        toJSON OrganizationSettings'{..}
          = object
              (catMaybes
                 [("assetDiscoveryConfig" .=) <$>
                    _osAssetDiscoveryConfig,
                  ("enableAssetDiscovery" .=) <$>
                    _osEnableAssetDiscovery,
                  ("name" .=) <$> _osName])

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

-- | Source specific properties. These properties are managed by the source
-- that writes the finding. The key names in the source_properties map must
-- be between 1 and 255 characters, and must start with a letter and
-- contain alphanumeric characters or underscores only.
--
-- /See:/ 'findingSourceProperties' smart constructor.
newtype FindingSourceProperties =
  FindingSourceProperties'
    { _fspAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FindingSourceProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fspAddtional'
findingSourceProperties
    :: HashMap Text JSONValue -- ^ 'fspAddtional'
    -> FindingSourceProperties
findingSourceProperties pFspAddtional_ =
  FindingSourceProperties' {_fspAddtional = _Coerce # pFspAddtional_}


fspAddtional :: Lens' FindingSourceProperties (HashMap Text JSONValue)
fspAddtional
  = lens _fspAddtional (\ s a -> s{_fspAddtional = a})
      . _Coerce

instance FromJSON FindingSourceProperties where
        parseJSON
          = withObject "FindingSourceProperties"
              (\ o ->
                 FindingSourceProperties' <$> (parseJSONObject o))

instance ToJSON FindingSourceProperties where
        toJSON = toJSON . _fspAddtional

-- | Request message for updating a finding\'s state.
--
-- /See:/ 'setFindingStateRequest' smart constructor.
data SetFindingStateRequest =
  SetFindingStateRequest'
    { _sfsrState     :: !(Maybe SetFindingStateRequestState)
    , _sfsrStartTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetFindingStateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfsrState'
--
-- * 'sfsrStartTime'
setFindingStateRequest
    :: SetFindingStateRequest
setFindingStateRequest =
  SetFindingStateRequest' {_sfsrState = Nothing, _sfsrStartTime = Nothing}


-- | The desired State of the finding.
sfsrState :: Lens' SetFindingStateRequest (Maybe SetFindingStateRequestState)
sfsrState
  = lens _sfsrState (\ s a -> s{_sfsrState = a})

-- | The time at which the updated state takes effect.
sfsrStartTime :: Lens' SetFindingStateRequest (Maybe UTCTime)
sfsrStartTime
  = lens _sfsrStartTime
      (\ s a -> s{_sfsrStartTime = a})
      . mapping _DateTime

instance FromJSON SetFindingStateRequest where
        parseJSON
          = withObject "SetFindingStateRequest"
              (\ o ->
                 SetFindingStateRequest' <$>
                   (o .:? "state") <*> (o .:? "startTime"))

instance ToJSON SetFindingStateRequest where
        toJSON SetFindingStateRequest'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _sfsrState,
                  ("startTime" .=) <$> _sfsrStartTime])

-- | Cloud SCC managed properties. These properties are managed by Cloud SCC
-- and cannot be modified by the user.
--
-- /See:/ 'securityCenterProperties' smart constructor.
data SecurityCenterProperties =
  SecurityCenterProperties'
    { _scpResourceType    :: !(Maybe Text)
    , _scpResourceName    :: !(Maybe Text)
    , _scpResourceParent  :: !(Maybe Text)
    , _scpResourceProject :: !(Maybe Text)
    , _scpResourceOwners  :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityCenterProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpResourceType'
--
-- * 'scpResourceName'
--
-- * 'scpResourceParent'
--
-- * 'scpResourceProject'
--
-- * 'scpResourceOwners'
securityCenterProperties
    :: SecurityCenterProperties
securityCenterProperties =
  SecurityCenterProperties'
    { _scpResourceType = Nothing
    , _scpResourceName = Nothing
    , _scpResourceParent = Nothing
    , _scpResourceProject = Nothing
    , _scpResourceOwners = Nothing
    }


-- | The type of the GCP resource. Examples include: APPLICATION, PROJECT,
-- and ORGANIZATION. This is a case insensitive field defined by Cloud SCC
-- and\/or the producer of the resource and is immutable after create time.
scpResourceType :: Lens' SecurityCenterProperties (Maybe Text)
scpResourceType
  = lens _scpResourceType
      (\ s a -> s{_scpResourceType = a})

-- | The full resource name of the GCP resource this asset represents. This
-- field is immutable after create time. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name
scpResourceName :: Lens' SecurityCenterProperties (Maybe Text)
scpResourceName
  = lens _scpResourceName
      (\ s a -> s{_scpResourceName = a})

-- | The full resource name of the immediate parent of the resource. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name
scpResourceParent :: Lens' SecurityCenterProperties (Maybe Text)
scpResourceParent
  = lens _scpResourceParent
      (\ s a -> s{_scpResourceParent = a})

-- | The full resource name of the project the resource belongs to. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name
scpResourceProject :: Lens' SecurityCenterProperties (Maybe Text)
scpResourceProject
  = lens _scpResourceProject
      (\ s a -> s{_scpResourceProject = a})

-- | Owners of the Google Cloud resource.
scpResourceOwners :: Lens' SecurityCenterProperties [Text]
scpResourceOwners
  = lens _scpResourceOwners
      (\ s a -> s{_scpResourceOwners = a})
      . _Default
      . _Coerce

instance FromJSON SecurityCenterProperties where
        parseJSON
          = withObject "SecurityCenterProperties"
              (\ o ->
                 SecurityCenterProperties' <$>
                   (o .:? "resourceType") <*> (o .:? "resourceName") <*>
                     (o .:? "resourceParent")
                     <*> (o .:? "resourceProject")
                     <*> (o .:? "resourceOwners" .!= mempty))

instance ToJSON SecurityCenterProperties where
        toJSON SecurityCenterProperties'{..}
          = object
              (catMaybes
                 [("resourceType" .=) <$> _scpResourceType,
                  ("resourceName" .=) <$> _scpResourceName,
                  ("resourceParent" .=) <$> _scpResourceParent,
                  ("resourceProject" .=) <$> _scpResourceProject,
                  ("resourceOwners" .=) <$> _scpResourceOwners])

-- | Response message for grouping by assets.
--
-- /See:/ 'groupAssetsResponse' smart constructor.
data GroupAssetsResponse =
  GroupAssetsResponse'
    { _groReadTime       :: !(Maybe DateTime')
    , _groNextPageToken  :: !(Maybe Text)
    , _groTotalSize      :: !(Maybe (Textual Int32))
    , _groGroupByResults :: !(Maybe [GroupResult])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupAssetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'groReadTime'
--
-- * 'groNextPageToken'
--
-- * 'groTotalSize'
--
-- * 'groGroupByResults'
groupAssetsResponse
    :: GroupAssetsResponse
groupAssetsResponse =
  GroupAssetsResponse'
    { _groReadTime = Nothing
    , _groNextPageToken = Nothing
    , _groTotalSize = Nothing
    , _groGroupByResults = Nothing
    }


-- | Time used for executing the groupBy request.
groReadTime :: Lens' GroupAssetsResponse (Maybe UTCTime)
groReadTime
  = lens _groReadTime (\ s a -> s{_groReadTime = a}) .
      mapping _DateTime

-- | Token to retrieve the next page of results, or empty if there are no
-- more results.
groNextPageToken :: Lens' GroupAssetsResponse (Maybe Text)
groNextPageToken
  = lens _groNextPageToken
      (\ s a -> s{_groNextPageToken = a})

-- | The total number of results matching the query.
groTotalSize :: Lens' GroupAssetsResponse (Maybe Int32)
groTotalSize
  = lens _groTotalSize (\ s a -> s{_groTotalSize = a})
      . mapping _Coerce

-- | Group results. There exists an element for each existing unique
-- combination of property\/values. The element contains a count for the
-- number of times those specific property\/values appear.
groGroupByResults :: Lens' GroupAssetsResponse [GroupResult]
groGroupByResults
  = lens _groGroupByResults
      (\ s a -> s{_groGroupByResults = a})
      . _Default
      . _Coerce

instance FromJSON GroupAssetsResponse where
        parseJSON
          = withObject "GroupAssetsResponse"
              (\ o ->
                 GroupAssetsResponse' <$>
                   (o .:? "readTime") <*> (o .:? "nextPageToken") <*>
                     (o .:? "totalSize")
                     <*> (o .:? "groupByResults" .!= mempty))

instance ToJSON GroupAssetsResponse where
        toJSON GroupAssetsResponse'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _groReadTime,
                  ("nextPageToken" .=) <$> _groNextPageToken,
                  ("totalSize" .=) <$> _groTotalSize,
                  ("groupByResults" .=) <$> _groGroupByResults])

-- | Response message for listing sources.
--
-- /See:/ 'listSourcesResponse' smart constructor.
data ListSourcesResponse =
  ListSourcesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSources       :: !(Maybe [Source])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSources'
listSourcesResponse
    :: ListSourcesResponse
listSourcesResponse =
  ListSourcesResponse' {_lsrNextPageToken = Nothing, _lsrSources = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results.
lsrNextPageToken :: Lens' ListSourcesResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | Sources belonging to the requested parent.
lsrSources :: Lens' ListSourcesResponse [Source]
lsrSources
  = lens _lsrSources (\ s a -> s{_lsrSources = a}) .
      _Default
      . _Coerce

instance FromJSON ListSourcesResponse where
        parseJSON
          = withObject "ListSourcesResponse"
              (\ o ->
                 ListSourcesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "sources" .!= mempty))

instance ToJSON ListSourcesResponse where
        toJSON ListSourcesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("sources" .=) <$> _lsrSources])

-- | Properties matching the groupBy fields in the request.
--
-- /See:/ 'groupResultProperties' smart constructor.
newtype GroupResultProperties =
  GroupResultProperties'
    { _grpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupResultProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grpAddtional'
groupResultProperties
    :: HashMap Text JSONValue -- ^ 'grpAddtional'
    -> GroupResultProperties
groupResultProperties pGrpAddtional_ =
  GroupResultProperties' {_grpAddtional = _Coerce # pGrpAddtional_}


grpAddtional :: Lens' GroupResultProperties (HashMap Text JSONValue)
grpAddtional
  = lens _grpAddtional (\ s a -> s{_grpAddtional = a})
      . _Coerce

instance FromJSON GroupResultProperties where
        parseJSON
          = withObject "GroupResultProperties"
              (\ o ->
                 GroupResultProperties' <$> (parseJSONObject o))

instance ToJSON GroupResultProperties where
        toJSON = toJSON . _grpAddtional

-- | Response of asset discovery run
--
-- /See:/ 'googleCloudSecuritycenterV1RunAssetDiscoveryResponse' smart constructor.
data GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse =
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse'
    { _gcsvradrState    :: !(Maybe GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState)
    , _gcsvradrDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsvradrState'
--
-- * 'gcsvradrDuration'
googleCloudSecuritycenterV1RunAssetDiscoveryResponse
    :: GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
googleCloudSecuritycenterV1RunAssetDiscoveryResponse =
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse'
    {_gcsvradrState = Nothing, _gcsvradrDuration = Nothing}


-- | The state of an asset discovery run.
gcsvradrState :: Lens' GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse (Maybe GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState)
gcsvradrState
  = lens _gcsvradrState
      (\ s a -> s{_gcsvradrState = a})

-- | The duration between asset discovery run start and end
gcsvradrDuration :: Lens' GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse (Maybe Scientific)
gcsvradrDuration
  = lens _gcsvradrDuration
      (\ s a -> s{_gcsvradrDuration = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
         where
        parseJSON
          = withObject
              "GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse"
              (\ o ->
                 GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse'
                   <$> (o .:? "state") <*> (o .:? "duration"))

instance ToJSON
           GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
         where
        toJSON
          GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcsvradrState,
                  ("duration" .=) <$> _gcsvradrDuration])

-- | Response message for listing assets.
--
-- /See:/ 'listAssetsResponse' smart constructor.
data ListAssetsResponse =
  ListAssetsResponse'
    { _larReadTime          :: !(Maybe DateTime')
    , _larNextPageToken     :: !(Maybe Text)
    , _larListAssetsResults :: !(Maybe [ListAssetsResult])
    , _larTotalSize         :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAssetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larReadTime'
--
-- * 'larNextPageToken'
--
-- * 'larListAssetsResults'
--
-- * 'larTotalSize'
listAssetsResponse
    :: ListAssetsResponse
listAssetsResponse =
  ListAssetsResponse'
    { _larReadTime = Nothing
    , _larNextPageToken = Nothing
    , _larListAssetsResults = Nothing
    , _larTotalSize = Nothing
    }


-- | Time used for executing the list request.
larReadTime :: Lens' ListAssetsResponse (Maybe UTCTime)
larReadTime
  = lens _larReadTime (\ s a -> s{_larReadTime = a}) .
      mapping _DateTime

-- | Token to retrieve the next page of results, or empty if there are no
-- more results.
larNextPageToken :: Lens' ListAssetsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | Assets matching the list request.
larListAssetsResults :: Lens' ListAssetsResponse [ListAssetsResult]
larListAssetsResults
  = lens _larListAssetsResults
      (\ s a -> s{_larListAssetsResults = a})
      . _Default
      . _Coerce

-- | The total number of assets matching the query.
larTotalSize :: Lens' ListAssetsResponse (Maybe Int32)
larTotalSize
  = lens _larTotalSize (\ s a -> s{_larTotalSize = a})
      . mapping _Coerce

instance FromJSON ListAssetsResponse where
        parseJSON
          = withObject "ListAssetsResponse"
              (\ o ->
                 ListAssetsResponse' <$>
                   (o .:? "readTime") <*> (o .:? "nextPageToken") <*>
                     (o .:? "listAssetsResults" .!= mempty)
                     <*> (o .:? "totalSize"))

instance ToJSON ListAssetsResponse where
        toJSON ListAssetsResponse'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _larReadTime,
                  ("nextPageToken" .=) <$> _larNextPageToken,
                  ("listAssetsResults" .=) <$> _larListAssetsResults,
                  ("totalSize" .=) <$> _larTotalSize])

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

-- | IAM Policy information associated with the GCP resource described by the
-- Cloud SCC asset. This information is managed and defined by the GCP
-- resource and cannot be modified by the user.
--
-- /See:/ 'iamPolicy' smart constructor.
newtype IAMPolicy =
  IAMPolicy'
    { _ipPolicyBlob :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipPolicyBlob'
iamPolicy
    :: IAMPolicy
iamPolicy = IAMPolicy' {_ipPolicyBlob = Nothing}


-- | The JSON representation of the Policy associated with the asset. See
-- https:\/\/cloud.google.com\/iam\/reference\/rest\/v1\/Policy for format
-- details.
ipPolicyBlob :: Lens' IAMPolicy (Maybe Text)
ipPolicyBlob
  = lens _ipPolicyBlob (\ s a -> s{_ipPolicyBlob = a})

instance FromJSON IAMPolicy where
        parseJSON
          = withObject "IAMPolicy"
              (\ o -> IAMPolicy' <$> (o .:? "policyBlob"))

instance ToJSON IAMPolicy where
        toJSON IAMPolicy'{..}
          = object
              (catMaybes [("policyBlob" .=) <$> _ipPolicyBlob])

-- | Cloud Security Command Center\'s (Cloud SCC) finding source. A finding
-- source is an entity or a mechanism that can produce a finding. A source
-- is like a container of findings that come from the same scanner, logger,
-- monitor, etc.
--
-- /See:/ 'source' smart constructor.
data Source =
  Source'
    { _sName        :: !(Maybe Text)
    , _sDisplayName :: !(Maybe Text)
    , _sDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sName'
--
-- * 'sDisplayName'
--
-- * 'sDescription'
source
    :: Source
source =
  Source' {_sName = Nothing, _sDisplayName = Nothing, _sDescription = Nothing}


-- | The relative resource name of this source. See:
-- https:\/\/cloud.google.com\/apis\/design\/resource_names#relative_resource_name
-- Example: \"organizations\/123\/sources\/456\"
sName :: Lens' Source (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | The source\'s display name. A source\'s display name must be unique
-- amongst its siblings, for example, two sources with the same parent
-- can\'t share the same display name. The display name must start and end
-- with a letter or digit, may contain letters, digits, spaces, hyphens,
-- and underscores, and can be no longer than 32 characters. This is
-- captured by the regular expression: [\\p{L}\\p{N}]({\\p{L}\\p{N}_-
-- ]{0,30}[\\p{L}\\p{N}])?.
sDisplayName :: Lens' Source (Maybe Text)
sDisplayName
  = lens _sDisplayName (\ s a -> s{_sDisplayName = a})

-- | The description of the source (max of 1024 characters). Example: \"Cloud
-- Security Scanner is a web security scanner for common vulnerabilities in
-- App Engine applications. It can automatically scan and detect four
-- common vulnerabilities, including cross-site-scripting (XSS), Flash
-- injection, mixed content (HTTP in HTTPS), and outdated\/insecure
-- libraries.\"
sDescription :: Lens' Source (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o ->
                 Source' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "description"))

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _sName,
                  ("displayName" .=) <$> _sDisplayName,
                  ("description" .=) <$> _sDescription])

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

-- | Result containing the Asset and its State.
--
-- /See:/ 'listAssetsResult' smart constructor.
data ListAssetsResult =
  ListAssetsResult'
    { _larAsset       :: !(Maybe Asset)
    , _larStateChange :: !(Maybe ListAssetsResultStateChange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAssetsResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larAsset'
--
-- * 'larStateChange'
listAssetsResult
    :: ListAssetsResult
listAssetsResult =
  ListAssetsResult' {_larAsset = Nothing, _larStateChange = Nothing}


-- | Asset matching the search request.
larAsset :: Lens' ListAssetsResult (Maybe Asset)
larAsset = lens _larAsset (\ s a -> s{_larAsset = a})

-- | State change of the asset between the points in time.
larStateChange :: Lens' ListAssetsResult (Maybe ListAssetsResultStateChange)
larStateChange
  = lens _larStateChange
      (\ s a -> s{_larStateChange = a})

instance FromJSON ListAssetsResult where
        parseJSON
          = withObject "ListAssetsResult"
              (\ o ->
                 ListAssetsResult' <$>
                   (o .:? "asset") <*> (o .:? "stateChange"))

instance ToJSON ListAssetsResult where
        toJSON ListAssetsResult'{..}
          = object
              (catMaybes
                 [("asset" .=) <$> _larAsset,
                  ("stateChange" .=) <$> _larStateChange])

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

-- | Result containing the properties and count of a groupBy request.
--
-- /See:/ 'groupResult' smart constructor.
data GroupResult =
  GroupResult'
    { _grCount      :: !(Maybe (Textual Int64))
    , _grProperties :: !(Maybe GroupResultProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grCount'
--
-- * 'grProperties'
groupResult
    :: GroupResult
groupResult = GroupResult' {_grCount = Nothing, _grProperties = Nothing}


-- | Total count of resources for the given properties.
grCount :: Lens' GroupResult (Maybe Int64)
grCount
  = lens _grCount (\ s a -> s{_grCount = a}) .
      mapping _Coerce

-- | Properties matching the groupBy fields in the request.
grProperties :: Lens' GroupResult (Maybe GroupResultProperties)
grProperties
  = lens _grProperties (\ s a -> s{_grProperties = a})

instance FromJSON GroupResult where
        parseJSON
          = withObject "GroupResult"
              (\ o ->
                 GroupResult' <$>
                   (o .:? "count") <*> (o .:? "properties"))

instance ToJSON GroupResult where
        toJSON GroupResult'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _grCount,
                  ("properties" .=) <$> _grProperties])

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

-- | Mutable user specified security marks belonging to the parent resource.
-- Constraints are as follows: - Keys and values are treated as case
-- insensitive - Keys must be between 1 - 256 characters (inclusive) - Keys
-- must be letters, numbers, underscores, or dashes - Values have leading
-- and trailing whitespace trimmed, remaining characters must be between 1
-- - 4096 characters (inclusive)
--
-- /See:/ 'securityMarksMarks' smart constructor.
newtype SecurityMarksMarks =
  SecurityMarksMarks'
    { _smmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityMarksMarks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smmAddtional'
securityMarksMarks
    :: HashMap Text Text -- ^ 'smmAddtional'
    -> SecurityMarksMarks
securityMarksMarks pSmmAddtional_ =
  SecurityMarksMarks' {_smmAddtional = _Coerce # pSmmAddtional_}


smmAddtional :: Lens' SecurityMarksMarks (HashMap Text Text)
smmAddtional
  = lens _smmAddtional (\ s a -> s{_smmAddtional = a})
      . _Coerce

instance FromJSON SecurityMarksMarks where
        parseJSON
          = withObject "SecurityMarksMarks"
              (\ o -> SecurityMarksMarks' <$> (parseJSONObject o))

instance ToJSON SecurityMarksMarks where
        toJSON = toJSON . _smmAddtional

-- | Response of asset discovery run
--
-- /See:/ 'googleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse' smart constructor.
data GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse =
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse'
    { _gState    :: !(Maybe GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState)
    , _gDuration :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gState'
--
-- * 'gDuration'
googleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    :: GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
googleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse =
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse'
    {_gState = Nothing, _gDuration = Nothing}


-- | The state of an asset discovery run.
gState :: Lens' GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse (Maybe GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState)
gState = lens _gState (\ s a -> s{_gState = a})

-- | The duration between asset discovery run start and end
gDuration :: Lens' GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse (Maybe Scientific)
gDuration
  = lens _gDuration (\ s a -> s{_gDuration = a}) .
      mapping _GDuration

instance FromJSON
           GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
         where
        parseJSON
          = withObject
              "GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse"
              (\ o ->
                 GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse'
                   <$> (o .:? "state") <*> (o .:? "duration"))

instance ToJSON
           GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
         where
        toJSON
          GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gState,
                  ("duration" .=) <$> _gDuration])

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
