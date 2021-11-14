{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAM.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAM.Types.Product where

import Network.Google.IAM.Types.Sum
import Network.Google.Prelude

-- | The response of a lint operation. An empty response indicates the
-- operation was able to fully execute and no lint issue was found.
--
-- /See:/ 'lintPolicyResponse' smart constructor.
newtype LintPolicyResponse =
  LintPolicyResponse'
    { _lprLintResults :: Maybe [LintResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LintPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprLintResults'
lintPolicyResponse
    :: LintPolicyResponse
lintPolicyResponse = LintPolicyResponse' {_lprLintResults = Nothing}


-- | List of lint results sorted by \`severity\` in descending order.
lprLintResults :: Lens' LintPolicyResponse [LintResult]
lprLintResults
  = lens _lprLintResults
      (\ s a -> s{_lprLintResults = a})
      . _Default
      . _Coerce

instance FromJSON LintPolicyResponse where
        parseJSON
          = withObject "LintPolicyResponse"
              (\ o ->
                 LintPolicyResponse' <$>
                   (o .:? "lintResults" .!= mempty))

instance ToJSON LintPolicyResponse where
        toJSON LintPolicyResponse'{..}
          = object
              (catMaybes [("lintResults" .=) <$> _lprLintResults])

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

-- | A configuration for an external identity provider.
--
-- /See:/ 'workLoadIdentityPoolProvider' smart constructor.
data WorkLoadIdentityPoolProvider =
  WorkLoadIdentityPoolProvider'
    { _wlippState :: !(Maybe WorkLoadIdentityPoolProviderState)
    , _wlippAws :: !(Maybe Aws)
    , _wlippDisabled :: !(Maybe Bool)
    , _wlippAttributeCondition :: !(Maybe Text)
    , _wlippName :: !(Maybe Text)
    , _wlippDisplayName :: !(Maybe Text)
    , _wlippAttributeMApping :: !(Maybe WorkLoadIdentityPoolProviderAttributeMApping)
    , _wlippDescription :: !(Maybe Text)
    , _wlippOidc :: !(Maybe Oidc)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkLoadIdentityPoolProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlippState'
--
-- * 'wlippAws'
--
-- * 'wlippDisabled'
--
-- * 'wlippAttributeCondition'
--
-- * 'wlippName'
--
-- * 'wlippDisplayName'
--
-- * 'wlippAttributeMApping'
--
-- * 'wlippDescription'
--
-- * 'wlippOidc'
workLoadIdentityPoolProvider
    :: WorkLoadIdentityPoolProvider
workLoadIdentityPoolProvider =
  WorkLoadIdentityPoolProvider'
    { _wlippState = Nothing
    , _wlippAws = Nothing
    , _wlippDisabled = Nothing
    , _wlippAttributeCondition = Nothing
    , _wlippName = Nothing
    , _wlippDisplayName = Nothing
    , _wlippAttributeMApping = Nothing
    , _wlippDescription = Nothing
    , _wlippOidc = Nothing
    }


-- | Output only. The state of the provider.
wlippState :: Lens' WorkLoadIdentityPoolProvider (Maybe WorkLoadIdentityPoolProviderState)
wlippState
  = lens _wlippState (\ s a -> s{_wlippState = a})

-- | An Amazon Web Services identity provider.
wlippAws :: Lens' WorkLoadIdentityPoolProvider (Maybe Aws)
wlippAws = lens _wlippAws (\ s a -> s{_wlippAws = a})

-- | Whether the provider is disabled. You cannot use a disabled provider to
-- exchange tokens. However, existing tokens still grant access.
wlippDisabled :: Lens' WorkLoadIdentityPoolProvider (Maybe Bool)
wlippDisabled
  = lens _wlippDisabled
      (\ s a -> s{_wlippDisabled = a})

-- | [A Common Expression
-- Language](https:\/\/opensource.google\/projects\/cel) expression, in
-- plain text, to restrict what otherwise valid authentication credentials
-- issued by the provider should not be accepted. The expression must
-- output a boolean representing whether to allow the federation. The
-- following keywords may be referenced in the expressions: *
-- \`assertion\`: JSON representing the authentication credential issued by
-- the provider. * \`google\`: The Google attributes mapped from the
-- assertion in the \`attribute_mappings\`. * \`attribute\`: The custom
-- attributes mapped from the assertion in the \`attribute_mappings\`. The
-- maximum length of the attribute condition expression is 4096 characters.
-- If unspecified, all valid authentication credential are accepted. The
-- following example shows how to only allow credentials with a mapped
-- \`google.groups\` value of \`admins\`: \`\`\` \"\'admins\' in
-- google.groups\" \`\`\`
wlippAttributeCondition :: Lens' WorkLoadIdentityPoolProvider (Maybe Text)
wlippAttributeCondition
  = lens _wlippAttributeCondition
      (\ s a -> s{_wlippAttributeCondition = a})

-- | Output only. The resource name of the provider.
wlippName :: Lens' WorkLoadIdentityPoolProvider (Maybe Text)
wlippName
  = lens _wlippName (\ s a -> s{_wlippName = a})

-- | A display name for the provider. Cannot exceed 32 characters.
wlippDisplayName :: Lens' WorkLoadIdentityPoolProvider (Maybe Text)
wlippDisplayName
  = lens _wlippDisplayName
      (\ s a -> s{_wlippDisplayName = a})

-- | Maps attributes from authentication credentials issued by an external
-- identity provider to Google Cloud attributes, such as \`subject\` and
-- \`segment\`. Each key must be a string specifying the Google Cloud IAM
-- attribute to map to. The following keys are supported: *
-- \`google.subject\`: The principal IAM is authenticating. You can
-- reference this value in IAM bindings. This is also the subject that
-- appears in Cloud Logging logs. Cannot exceed 127 characters. *
-- \`google.groups\`: Groups the external identity belongs to. You can
-- grant groups access to resources using an IAM \`principalSet\` binding;
-- access applies to all members of the group. You can also provide custom
-- attributes by specifying \`attribute.{custom_attribute}\`, where
-- \`{custom_attribute}\` is the name of the custom attribute to be mapped.
-- You can define a maximum of 50 custom attributes. The maximum length of
-- a mapped attribute key is 100 characters, and the key may only contain
-- the characters [a-z0-9_]. You can reference these attributes in IAM
-- policies to define fine-grained access for a workload to Google Cloud
-- resources. For example: * \`google.subject\`:
-- \`principal:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/subject\/{value}\`
-- * \`google.groups\`:
-- \`principalSet:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/group\/{value}\`
-- * \`attribute.{custom_attribute}\`:
-- \`principalSet:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/attribute.{custom_attribute}\/{value}\`
-- Each value must be a [Common Expression Language]
-- (https:\/\/opensource.google\/projects\/cel) function that maps an
-- identity provider credential to the normalized attribute specified by
-- the corresponding map key. You can use the \`assertion\` keyword in the
-- expression to access a JSON representation of the authentication
-- credential issued by the provider. The maximum length of an attribute
-- mapping expression is 2048 characters. When evaluated, the total size of
-- all mapped attributes must not exceed 8KB. For AWS providers, if no
-- attribute mapping is defined, the following default mapping applies:
-- \`\`\` { \"google.subject\":\"assertion.arn\", \"attribute.aws_role\":
-- \"assertion.arn.contains(\'assumed-role\')\" \" ?
-- assertion.arn.extract(\'{account_arn}assumed-role\/\')\" \" +
-- \'assumed-role\/\'\" \" +
-- assertion.arn.extract(\'assumed-role\/{role_name}\/\')\" \" :
-- assertion.arn\", } \`\`\` If any custom attribute mappings are defined,
-- they must include a mapping to the \`google.subject\` attribute. For
-- OIDC providers, you must supply a custom mapping, which must include the
-- \`google.subject\` attribute. For example, the following maps the
-- \`sub\` claim of the incoming credential to the \`subject\` attribute on
-- a Google token: \`\`\` {\"google.subject\": \"assertion.sub\"} \`\`\`
wlippAttributeMApping :: Lens' WorkLoadIdentityPoolProvider (Maybe WorkLoadIdentityPoolProviderAttributeMApping)
wlippAttributeMApping
  = lens _wlippAttributeMApping
      (\ s a -> s{_wlippAttributeMApping = a})

-- | A description for the provider. Cannot exceed 256 characters.
wlippDescription :: Lens' WorkLoadIdentityPoolProvider (Maybe Text)
wlippDescription
  = lens _wlippDescription
      (\ s a -> s{_wlippDescription = a})

-- | An OpenId Connect 1.0 identity provider.
wlippOidc :: Lens' WorkLoadIdentityPoolProvider (Maybe Oidc)
wlippOidc
  = lens _wlippOidc (\ s a -> s{_wlippOidc = a})

instance FromJSON WorkLoadIdentityPoolProvider where
        parseJSON
          = withObject "WorkLoadIdentityPoolProvider"
              (\ o ->
                 WorkLoadIdentityPoolProvider' <$>
                   (o .:? "state") <*> (o .:? "aws") <*>
                     (o .:? "disabled")
                     <*> (o .:? "attributeCondition")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "attributeMapping")
                     <*> (o .:? "description")
                     <*> (o .:? "oidc"))

instance ToJSON WorkLoadIdentityPoolProvider where
        toJSON WorkLoadIdentityPoolProvider'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _wlippState,
                  ("aws" .=) <$> _wlippAws,
                  ("disabled" .=) <$> _wlippDisabled,
                  ("attributeCondition" .=) <$>
                    _wlippAttributeCondition,
                  ("name" .=) <$> _wlippName,
                  ("displayName" .=) <$> _wlippDisplayName,
                  ("attributeMapping" .=) <$> _wlippAttributeMApping,
                  ("description" .=) <$> _wlippDescription,
                  ("oidc" .=) <$> _wlippOidc])

-- | The request to undelete an existing role.
--
-- /See:/ 'undeleteRoleRequest' smart constructor.
newtype UndeleteRoleRequest =
  UndeleteRoleRequest'
    { _urrEtag :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteRoleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrEtag'
undeleteRoleRequest
    :: UndeleteRoleRequest
undeleteRoleRequest = UndeleteRoleRequest' {_urrEtag = Nothing}


-- | Used to perform a consistent read-modify-write.
urrEtag :: Lens' UndeleteRoleRequest (Maybe ByteString)
urrEtag
  = lens _urrEtag (\ s a -> s{_urrEtag = a}) .
      mapping _Bytes

instance FromJSON UndeleteRoleRequest where
        parseJSON
          = withObject "UndeleteRoleRequest"
              (\ o -> UndeleteRoleRequest' <$> (o .:? "etag"))

instance ToJSON UndeleteRoleRequest where
        toJSON UndeleteRoleRequest'{..}
          = object (catMaybes [("etag" .=) <$> _urrEtag])

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

-- | The service account undelete request.
--
-- /See:/ 'undeleteServiceAccountRequest' smart constructor.
data UndeleteServiceAccountRequest =
  UndeleteServiceAccountRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteServiceAccountRequest' with the minimum fields required to make a request.
--
undeleteServiceAccountRequest
    :: UndeleteServiceAccountRequest
undeleteServiceAccountRequest = UndeleteServiceAccountRequest'


instance FromJSON UndeleteServiceAccountRequest where
        parseJSON
          = withObject "UndeleteServiceAccountRequest"
              (\ o -> pure UndeleteServiceAccountRequest')

instance ToJSON UndeleteServiceAccountRequest where
        toJSON = const emptyObject

-- | Contains information about an auditable service.
--
-- /See:/ 'auditableService' smart constructor.
newtype AuditableService =
  AuditableService'
    { _asName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditableService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asName'
auditableService
    :: AuditableService
auditableService = AuditableService' {_asName = Nothing}


-- | Public name of the service. For example, the service name for Cloud IAM
-- is \'iam.googleapis.com\'.
asName :: Lens' AuditableService (Maybe Text)
asName = lens _asName (\ s a -> s{_asName = a})

instance FromJSON AuditableService where
        parseJSON
          = withObject "AuditableService"
              (\ o -> AuditableService' <$> (o .:? "name"))

instance ToJSON AuditableService where
        toJSON AuditableService'{..}
          = object (catMaybes [("name" .=) <$> _asName])

-- | A request to get the list of auditable services for a resource.
--
-- /See:/ 'queryAuditableServicesRequest' smart constructor.
newtype QueryAuditableServicesRequest =
  QueryAuditableServicesRequest'
    { _qasrFullResourceName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryAuditableServicesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qasrFullResourceName'
queryAuditableServicesRequest
    :: QueryAuditableServicesRequest
queryAuditableServicesRequest =
  QueryAuditableServicesRequest' {_qasrFullResourceName = Nothing}


-- | Required. The full resource name to query from the list of auditable
-- services. The name follows the Google Cloud Platform resource format.
-- For example, a Cloud Platform project with id \`my-project\` will be
-- named \`\/\/cloudresourcemanager.googleapis.com\/projects\/my-project\`.
qasrFullResourceName :: Lens' QueryAuditableServicesRequest (Maybe Text)
qasrFullResourceName
  = lens _qasrFullResourceName
      (\ s a -> s{_qasrFullResourceName = a})

instance FromJSON QueryAuditableServicesRequest where
        parseJSON
          = withObject "QueryAuditableServicesRequest"
              (\ o ->
                 QueryAuditableServicesRequest' <$>
                   (o .:? "fullResourceName"))

instance ToJSON QueryAuditableServicesRequest where
        toJSON QueryAuditableServicesRequest'{..}
          = object
              (catMaybes
                 [("fullResourceName" .=) <$> _qasrFullResourceName])

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

-- | Represents an Amazon Web Services identity provider.
--
-- /See:/ 'aws' smart constructor.
newtype Aws =
  Aws'
    { _aAccountId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Aws' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAccountId'
aws
    :: Aws
aws = Aws' {_aAccountId = Nothing}


-- | Required. The AWS account ID.
aAccountId :: Lens' Aws (Maybe Text)
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

instance FromJSON Aws where
        parseJSON
          = withObject "Aws"
              (\ o -> Aws' <$> (o .:? "accountId"))

instance ToJSON Aws where
        toJSON Aws'{..}
          = object
              (catMaybes [("accountId" .=) <$> _aAccountId])

-- | The response containing permissions which can be tested on a resource.
--
-- /See:/ 'queryTestablePermissionsResponse' smart constructor.
data QueryTestablePermissionsResponse =
  QueryTestablePermissionsResponse'
    { _qtprNextPageToken :: !(Maybe Text)
    , _qtprPermissions :: !(Maybe [Permission])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryTestablePermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qtprNextPageToken'
--
-- * 'qtprPermissions'
queryTestablePermissionsResponse
    :: QueryTestablePermissionsResponse
queryTestablePermissionsResponse =
  QueryTestablePermissionsResponse'
    {_qtprNextPageToken = Nothing, _qtprPermissions = Nothing}


-- | To retrieve the next page of results, set
-- \`QueryTestableRolesRequest.page_token\` to this value.
qtprNextPageToken :: Lens' QueryTestablePermissionsResponse (Maybe Text)
qtprNextPageToken
  = lens _qtprNextPageToken
      (\ s a -> s{_qtprNextPageToken = a})

-- | The Permissions testable on the requested resource.
qtprPermissions :: Lens' QueryTestablePermissionsResponse [Permission]
qtprPermissions
  = lens _qtprPermissions
      (\ s a -> s{_qtprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON QueryTestablePermissionsResponse
         where
        parseJSON
          = withObject "QueryTestablePermissionsResponse"
              (\ o ->
                 QueryTestablePermissionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "permissions" .!= mempty))

instance ToJSON QueryTestablePermissionsResponse
         where
        toJSON QueryTestablePermissionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _qtprNextPageToken,
                  ("permissions" .=) <$> _qtprPermissions])

-- | Audit log information specific to Cloud IAM. This message is serialized
-- as an \`Any\` type in the \`ServiceData\` message of an \`AuditLog\`
-- message.
--
-- /See:/ 'auditData' smart constructor.
newtype AuditData =
  AuditData'
    { _adPolicyDelta :: Maybe PolicyDelta
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adPolicyDelta'
auditData
    :: AuditData
auditData = AuditData' {_adPolicyDelta = Nothing}


-- | Policy delta between the original policy and the newly set policy.
adPolicyDelta :: Lens' AuditData (Maybe PolicyDelta)
adPolicyDelta
  = lens _adPolicyDelta
      (\ s a -> s{_adPolicyDelta = a})

instance FromJSON AuditData where
        parseJSON
          = withObject "AuditData"
              (\ o -> AuditData' <$> (o .:? "policyDelta"))

instance ToJSON AuditData where
        toJSON AuditData'{..}
          = object
              (catMaybes [("policyDelta" .=) <$> _adPolicyDelta])

-- | A response containing a list of auditable services for a resource.
--
-- /See:/ 'queryAuditableServicesResponse' smart constructor.
newtype QueryAuditableServicesResponse =
  QueryAuditableServicesResponse'
    { _qasrServices :: Maybe [AuditableService]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryAuditableServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qasrServices'
queryAuditableServicesResponse
    :: QueryAuditableServicesResponse
queryAuditableServicesResponse =
  QueryAuditableServicesResponse' {_qasrServices = Nothing}


-- | The auditable services for a resource.
qasrServices :: Lens' QueryAuditableServicesResponse [AuditableService]
qasrServices
  = lens _qasrServices (\ s a -> s{_qasrServices = a})
      . _Default
      . _Coerce

instance FromJSON QueryAuditableServicesResponse
         where
        parseJSON
          = withObject "QueryAuditableServicesResponse"
              (\ o ->
                 QueryAuditableServicesResponse' <$>
                   (o .:? "services" .!= mempty))

instance ToJSON QueryAuditableServicesResponse where
        toJSON QueryAuditableServicesResponse'{..}
          = object
              (catMaybes [("services" .=) <$> _qasrServices])

-- | Represents a service account key. A service account has two sets of
-- key-pairs: user-managed, and system-managed. User-managed key-pairs can
-- be created and deleted by users. Users are responsible for rotating
-- these keys periodically to ensure security of their service accounts.
-- Users retain the private key of these key-pairs, and Google retains ONLY
-- the public key. System-managed keys are automatically rotated by Google,
-- and are used for signing for a maximum of two weeks. The rotation
-- process is probabilistic, and usage of the new key will gradually ramp
-- up and down over the key\'s lifetime. If you cache the public key set
-- for a service account, we recommend that you update the cache every 15
-- minutes. User-managed keys can be added and removed at any time, so it
-- is important to update the cache frequently. For Google-managed keys,
-- Google will publish a key at least 6 hours before it is first used for
-- signing and will keep publishing it for at least 6 hours after it was
-- last used for signing. Public keys for all service accounts are also
-- published at the OAuth2 Service Account API.
--
-- /See:/ 'serviceAccountKey' smart constructor.
data ServiceAccountKey =
  ServiceAccountKey'
    { _sakValidAfterTime :: !(Maybe DateTime')
    , _sakKeyType :: !(Maybe ServiceAccountKeyKeyType)
    , _sakPrivateKeyData :: !(Maybe Bytes)
    , _sakPublicKeyData :: !(Maybe Bytes)
    , _sakName :: !(Maybe Text)
    , _sakPrivateKeyType :: !(Maybe ServiceAccountKeyPrivateKeyType)
    , _sakValidBeforeTime :: !(Maybe DateTime')
    , _sakKeyAlgorithm :: !(Maybe ServiceAccountKeyKeyAlgorithm)
    , _sakKeyOrigin :: !(Maybe ServiceAccountKeyKeyOrigin)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceAccountKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sakValidAfterTime'
--
-- * 'sakKeyType'
--
-- * 'sakPrivateKeyData'
--
-- * 'sakPublicKeyData'
--
-- * 'sakName'
--
-- * 'sakPrivateKeyType'
--
-- * 'sakValidBeforeTime'
--
-- * 'sakKeyAlgorithm'
--
-- * 'sakKeyOrigin'
serviceAccountKey
    :: ServiceAccountKey
serviceAccountKey =
  ServiceAccountKey'
    { _sakValidAfterTime = Nothing
    , _sakKeyType = Nothing
    , _sakPrivateKeyData = Nothing
    , _sakPublicKeyData = Nothing
    , _sakName = Nothing
    , _sakPrivateKeyType = Nothing
    , _sakValidBeforeTime = Nothing
    , _sakKeyAlgorithm = Nothing
    , _sakKeyOrigin = Nothing
    }


-- | The key can be used after this timestamp.
sakValidAfterTime :: Lens' ServiceAccountKey (Maybe UTCTime)
sakValidAfterTime
  = lens _sakValidAfterTime
      (\ s a -> s{_sakValidAfterTime = a})
      . mapping _DateTime

-- | The key type.
sakKeyType :: Lens' ServiceAccountKey (Maybe ServiceAccountKeyKeyType)
sakKeyType
  = lens _sakKeyType (\ s a -> s{_sakKeyType = a})

-- | The private key data. Only provided in \`CreateServiceAccountKey\`
-- responses. Make sure to keep the private key data secure because it
-- allows for the assertion of the service account identity. When base64
-- decoded, the private key data can be used to authenticate with Google
-- API client libraries and with gcloud auth activate-service-account.
sakPrivateKeyData :: Lens' ServiceAccountKey (Maybe ByteString)
sakPrivateKeyData
  = lens _sakPrivateKeyData
      (\ s a -> s{_sakPrivateKeyData = a})
      . mapping _Bytes

-- | The public key data. Only provided in \`GetServiceAccountKey\`
-- responses.
sakPublicKeyData :: Lens' ServiceAccountKey (Maybe ByteString)
sakPublicKeyData
  = lens _sakPublicKeyData
      (\ s a -> s{_sakPublicKeyData = a})
      . mapping _Bytes

-- | The resource name of the service account key in the following format
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}\`.
sakName :: Lens' ServiceAccountKey (Maybe Text)
sakName = lens _sakName (\ s a -> s{_sakName = a})

-- | The output format for the private key. Only provided in
-- \`CreateServiceAccountKey\` responses, not in \`GetServiceAccountKey\`
-- or \`ListServiceAccountKey\` responses. Google never exposes
-- system-managed private keys, and never retains user-managed private
-- keys.
sakPrivateKeyType :: Lens' ServiceAccountKey (Maybe ServiceAccountKeyPrivateKeyType)
sakPrivateKeyType
  = lens _sakPrivateKeyType
      (\ s a -> s{_sakPrivateKeyType = a})

-- | The key can be used before this timestamp. For system-managed key pairs,
-- this timestamp is the end time for the private key signing operation.
-- The public key could still be used for verification for a few hours
-- after this time.
sakValidBeforeTime :: Lens' ServiceAccountKey (Maybe UTCTime)
sakValidBeforeTime
  = lens _sakValidBeforeTime
      (\ s a -> s{_sakValidBeforeTime = a})
      . mapping _DateTime

-- | Specifies the algorithm (and possibly key size) for the key.
sakKeyAlgorithm :: Lens' ServiceAccountKey (Maybe ServiceAccountKeyKeyAlgorithm)
sakKeyAlgorithm
  = lens _sakKeyAlgorithm
      (\ s a -> s{_sakKeyAlgorithm = a})

-- | The key origin.
sakKeyOrigin :: Lens' ServiceAccountKey (Maybe ServiceAccountKeyKeyOrigin)
sakKeyOrigin
  = lens _sakKeyOrigin (\ s a -> s{_sakKeyOrigin = a})

instance FromJSON ServiceAccountKey where
        parseJSON
          = withObject "ServiceAccountKey"
              (\ o ->
                 ServiceAccountKey' <$>
                   (o .:? "validAfterTime") <*> (o .:? "keyType") <*>
                     (o .:? "privateKeyData")
                     <*> (o .:? "publicKeyData")
                     <*> (o .:? "name")
                     <*> (o .:? "privateKeyType")
                     <*> (o .:? "validBeforeTime")
                     <*> (o .:? "keyAlgorithm")
                     <*> (o .:? "keyOrigin"))

instance ToJSON ServiceAccountKey where
        toJSON ServiceAccountKey'{..}
          = object
              (catMaybes
                 [("validAfterTime" .=) <$> _sakValidAfterTime,
                  ("keyType" .=) <$> _sakKeyType,
                  ("privateKeyData" .=) <$> _sakPrivateKeyData,
                  ("publicKeyData" .=) <$> _sakPublicKeyData,
                  ("name" .=) <$> _sakName,
                  ("privateKeyType" .=) <$> _sakPrivateKeyType,
                  ("validBeforeTime" .=) <$> _sakValidBeforeTime,
                  ("keyAlgorithm" .=) <$> _sakKeyAlgorithm,
                  ("keyOrigin" .=) <$> _sakKeyOrigin])

-- | A PermissionDelta message to record the added_permissions and
-- removed_permissions inside a role.
--
-- /See:/ 'permissionDelta' smart constructor.
data PermissionDelta =
  PermissionDelta'
    { _pdAddedPermissions :: !(Maybe [Text])
    , _pdRemovedPermissions :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PermissionDelta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdAddedPermissions'
--
-- * 'pdRemovedPermissions'
permissionDelta
    :: PermissionDelta
permissionDelta =
  PermissionDelta'
    {_pdAddedPermissions = Nothing, _pdRemovedPermissions = Nothing}


-- | Added permissions.
pdAddedPermissions :: Lens' PermissionDelta [Text]
pdAddedPermissions
  = lens _pdAddedPermissions
      (\ s a -> s{_pdAddedPermissions = a})
      . _Default
      . _Coerce

-- | Removed permissions.
pdRemovedPermissions :: Lens' PermissionDelta [Text]
pdRemovedPermissions
  = lens _pdRemovedPermissions
      (\ s a -> s{_pdRemovedPermissions = a})
      . _Default
      . _Coerce

instance FromJSON PermissionDelta where
        parseJSON
          = withObject "PermissionDelta"
              (\ o ->
                 PermissionDelta' <$>
                   (o .:? "addedPermissions" .!= mempty) <*>
                     (o .:? "removedPermissions" .!= mempty))

instance ToJSON PermissionDelta where
        toJSON PermissionDelta'{..}
          = object
              (catMaybes
                 [("addedPermissions" .=) <$> _pdAddedPermissions,
                  ("removedPermissions" .=) <$> _pdRemovedPermissions])

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

-- | Structured response of a single validation unit.
--
-- /See:/ 'lintResult' smart constructor.
data LintResult =
  LintResult'
    { _lrValidationUnitName :: !(Maybe Text)
    , _lrDebugMessage :: !(Maybe Text)
    , _lrLocationOffSet :: !(Maybe (Textual Int32))
    , _lrSeverity :: !(Maybe LintResultSeverity)
    , _lrFieldName :: !(Maybe Text)
    , _lrLevel :: !(Maybe LintResultLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LintResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrValidationUnitName'
--
-- * 'lrDebugMessage'
--
-- * 'lrLocationOffSet'
--
-- * 'lrSeverity'
--
-- * 'lrFieldName'
--
-- * 'lrLevel'
lintResult
    :: LintResult
lintResult =
  LintResult'
    { _lrValidationUnitName = Nothing
    , _lrDebugMessage = Nothing
    , _lrLocationOffSet = Nothing
    , _lrSeverity = Nothing
    , _lrFieldName = Nothing
    , _lrLevel = Nothing
    }


-- | The validation unit name, for instance
-- \"lintValidationUnits\/ConditionComplexityCheck\".
lrValidationUnitName :: Lens' LintResult (Maybe Text)
lrValidationUnitName
  = lens _lrValidationUnitName
      (\ s a -> s{_lrValidationUnitName = a})

-- | Human readable debug message associated with the issue.
lrDebugMessage :: Lens' LintResult (Maybe Text)
lrDebugMessage
  = lens _lrDebugMessage
      (\ s a -> s{_lrDebugMessage = a})

-- | 0-based character position of problematic construct within the object
-- identified by \`field_name\`. Currently, this is populated only for
-- condition expression.
lrLocationOffSet :: Lens' LintResult (Maybe Int32)
lrLocationOffSet
  = lens _lrLocationOffSet
      (\ s a -> s{_lrLocationOffSet = a})
      . mapping _Coerce

-- | The validation unit severity.
lrSeverity :: Lens' LintResult (Maybe LintResultSeverity)
lrSeverity
  = lens _lrSeverity (\ s a -> s{_lrSeverity = a})

-- | The name of the field for which this lint result is about. For nested
-- messages \`field_name\` consists of names of the embedded fields
-- separated by period character. The top-level qualifier is the input
-- object to lint in the request. For example, the \`field_name\` value
-- \`condition.expression\` identifies a lint result for the \`expression\`
-- field of the provided condition.
lrFieldName :: Lens' LintResult (Maybe Text)
lrFieldName
  = lens _lrFieldName (\ s a -> s{_lrFieldName = a})

-- | The validation unit level.
lrLevel :: Lens' LintResult (Maybe LintResultLevel)
lrLevel = lens _lrLevel (\ s a -> s{_lrLevel = a})

instance FromJSON LintResult where
        parseJSON
          = withObject "LintResult"
              (\ o ->
                 LintResult' <$>
                   (o .:? "validationUnitName") <*>
                     (o .:? "debugMessage")
                     <*> (o .:? "locationOffset")
                     <*> (o .:? "severity")
                     <*> (o .:? "fieldName")
                     <*> (o .:? "level"))

instance ToJSON LintResult where
        toJSON LintResult'{..}
          = object
              (catMaybes
                 [("validationUnitName" .=) <$> _lrValidationUnitName,
                  ("debugMessage" .=) <$> _lrDebugMessage,
                  ("locationOffset" .=) <$> _lrLocationOffSet,
                  ("severity" .=) <$> _lrSeverity,
                  ("fieldName" .=) <$> _lrFieldName,
                  ("level" .=) <$> _lrLevel])

-- | Request message for UndeleteWorkloadIdentityPool.
--
-- /See:/ 'undeleteWorkLoadIdentityPoolRequest' smart constructor.
data UndeleteWorkLoadIdentityPoolRequest =
  UndeleteWorkLoadIdentityPoolRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteWorkLoadIdentityPoolRequest' with the minimum fields required to make a request.
--
undeleteWorkLoadIdentityPoolRequest
    :: UndeleteWorkLoadIdentityPoolRequest
undeleteWorkLoadIdentityPoolRequest = UndeleteWorkLoadIdentityPoolRequest'


instance FromJSON UndeleteWorkLoadIdentityPoolRequest
         where
        parseJSON
          = withObject "UndeleteWorkLoadIdentityPoolRequest"
              (\ o -> pure UndeleteWorkLoadIdentityPoolRequest')

instance ToJSON UndeleteWorkLoadIdentityPoolRequest
         where
        toJSON = const emptyObject

-- | Response message for ListWorkloadIdentityPoolProviders.
--
-- /See:/ 'listWorkLoadIdentityPoolProvidersResponse' smart constructor.
data ListWorkLoadIdentityPoolProvidersResponse =
  ListWorkLoadIdentityPoolProvidersResponse'
    { _lwlipprNextPageToken :: !(Maybe Text)
    , _lwlipprWorkLoadIdentityPoolProviders :: !(Maybe [WorkLoadIdentityPoolProvider])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListWorkLoadIdentityPoolProvidersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwlipprNextPageToken'
--
-- * 'lwlipprWorkLoadIdentityPoolProviders'
listWorkLoadIdentityPoolProvidersResponse
    :: ListWorkLoadIdentityPoolProvidersResponse
listWorkLoadIdentityPoolProvidersResponse =
  ListWorkLoadIdentityPoolProvidersResponse'
    { _lwlipprNextPageToken = Nothing
    , _lwlipprWorkLoadIdentityPoolProviders = Nothing
    }


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lwlipprNextPageToken :: Lens' ListWorkLoadIdentityPoolProvidersResponse (Maybe Text)
lwlipprNextPageToken
  = lens _lwlipprNextPageToken
      (\ s a -> s{_lwlipprNextPageToken = a})

-- | A list of providers.
lwlipprWorkLoadIdentityPoolProviders :: Lens' ListWorkLoadIdentityPoolProvidersResponse [WorkLoadIdentityPoolProvider]
lwlipprWorkLoadIdentityPoolProviders
  = lens _lwlipprWorkLoadIdentityPoolProviders
      (\ s a ->
         s{_lwlipprWorkLoadIdentityPoolProviders = a})
      . _Default
      . _Coerce

instance FromJSON
           ListWorkLoadIdentityPoolProvidersResponse
         where
        parseJSON
          = withObject
              "ListWorkLoadIdentityPoolProvidersResponse"
              (\ o ->
                 ListWorkLoadIdentityPoolProvidersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "workloadIdentityPoolProviders" .!= mempty))

instance ToJSON
           ListWorkLoadIdentityPoolProvidersResponse
         where
        toJSON ListWorkLoadIdentityPoolProvidersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lwlipprNextPageToken,
                  ("workloadIdentityPoolProviders" .=) <$>
                    _lwlipprWorkLoadIdentityPoolProviders])

-- | The service account key create request.
--
-- /See:/ 'createServiceAccountKeyRequest' smart constructor.
data CreateServiceAccountKeyRequest =
  CreateServiceAccountKeyRequest'
    { _csakrPrivateKeyType :: !(Maybe CreateServiceAccountKeyRequestPrivateKeyType)
    , _csakrKeyAlgorithm :: !(Maybe CreateServiceAccountKeyRequestKeyAlgorithm)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateServiceAccountKeyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csakrPrivateKeyType'
--
-- * 'csakrKeyAlgorithm'
createServiceAccountKeyRequest
    :: CreateServiceAccountKeyRequest
createServiceAccountKeyRequest =
  CreateServiceAccountKeyRequest'
    {_csakrPrivateKeyType = Nothing, _csakrKeyAlgorithm = Nothing}


-- | The output format of the private key. The default value is
-- \`TYPE_GOOGLE_CREDENTIALS_FILE\`, which is the Google Credentials File
-- format.
csakrPrivateKeyType :: Lens' CreateServiceAccountKeyRequest (Maybe CreateServiceAccountKeyRequestPrivateKeyType)
csakrPrivateKeyType
  = lens _csakrPrivateKeyType
      (\ s a -> s{_csakrPrivateKeyType = a})

-- | Which type of key and algorithm to use for the key. The default is
-- currently a 2K RSA key. However this may change in the future.
csakrKeyAlgorithm :: Lens' CreateServiceAccountKeyRequest (Maybe CreateServiceAccountKeyRequestKeyAlgorithm)
csakrKeyAlgorithm
  = lens _csakrKeyAlgorithm
      (\ s a -> s{_csakrKeyAlgorithm = a})

instance FromJSON CreateServiceAccountKeyRequest
         where
        parseJSON
          = withObject "CreateServiceAccountKeyRequest"
              (\ o ->
                 CreateServiceAccountKeyRequest' <$>
                   (o .:? "privateKeyType") <*> (o .:? "keyAlgorithm"))

instance ToJSON CreateServiceAccountKeyRequest where
        toJSON CreateServiceAccountKeyRequest'{..}
          = object
              (catMaybes
                 [("privateKeyType" .=) <$> _csakrPrivateKeyType,
                  ("keyAlgorithm" .=) <$> _csakrKeyAlgorithm])

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

-- | Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The service account sign JWT response.
--
-- /See:/ 'signJwtResponse' smart constructor.
data SignJwtResponse =
  SignJwtResponse'
    { _sjrKeyId :: !(Maybe Text)
    , _sjrSignedJwt :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignJwtResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrKeyId'
--
-- * 'sjrSignedJwt'
signJwtResponse
    :: SignJwtResponse
signJwtResponse =
  SignJwtResponse' {_sjrKeyId = Nothing, _sjrSignedJwt = Nothing}


-- | Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The id of the key used to sign the JWT.
sjrKeyId :: Lens' SignJwtResponse (Maybe Text)
sjrKeyId = lens _sjrKeyId (\ s a -> s{_sjrKeyId = a})

-- | Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The signed JWT.
sjrSignedJwt :: Lens' SignJwtResponse (Maybe Text)
sjrSignedJwt
  = lens _sjrSignedJwt (\ s a -> s{_sjrSignedJwt = a})

instance FromJSON SignJwtResponse where
        parseJSON
          = withObject "SignJwtResponse"
              (\ o ->
                 SignJwtResponse' <$>
                   (o .:? "keyId") <*> (o .:? "signedJwt"))

instance ToJSON SignJwtResponse where
        toJSON SignJwtResponse'{..}
          = object
              (catMaybes
                 [("keyId" .=) <$> _sjrKeyId,
                  ("signedJwt" .=) <$> _sjrSignedJwt])

-- | One delta entry for Binding. Each individual change (only one member in
-- each entry) to a binding will be a separate entry.
--
-- /See:/ 'bindingDelta' smart constructor.
data BindingDelta =
  BindingDelta'
    { _bdAction :: !(Maybe BindingDeltaAction)
    , _bdRole :: !(Maybe Text)
    , _bdMember :: !(Maybe Text)
    , _bdCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BindingDelta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdAction'
--
-- * 'bdRole'
--
-- * 'bdMember'
--
-- * 'bdCondition'
bindingDelta
    :: BindingDelta
bindingDelta =
  BindingDelta'
    { _bdAction = Nothing
    , _bdRole = Nothing
    , _bdMember = Nothing
    , _bdCondition = Nothing
    }


-- | The action that was performed on a Binding. Required
bdAction :: Lens' BindingDelta (Maybe BindingDeltaAction)
bdAction = lens _bdAction (\ s a -> s{_bdAction = a})

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`. Required
bdRole :: Lens' BindingDelta (Maybe Text)
bdRole = lens _bdRole (\ s a -> s{_bdRole = a})

-- | A single identity requesting access for a Cloud Platform resource.
-- Follows the same format of Binding.members. Required
bdMember :: Lens' BindingDelta (Maybe Text)
bdMember = lens _bdMember (\ s a -> s{_bdMember = a})

-- | The condition that is associated with this binding.
bdCondition :: Lens' BindingDelta (Maybe Expr)
bdCondition
  = lens _bdCondition (\ s a -> s{_bdCondition = a})

instance FromJSON BindingDelta where
        parseJSON
          = withObject "BindingDelta"
              (\ o ->
                 BindingDelta' <$>
                   (o .:? "action") <*> (o .:? "role") <*>
                     (o .:? "member")
                     <*> (o .:? "condition"))

instance ToJSON BindingDelta where
        toJSON BindingDelta'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _bdAction,
                  ("role" .=) <$> _bdRole, ("member" .=) <$> _bdMember,
                  ("condition" .=) <$> _bdCondition])

-- | Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The service account sign blob request.
--
-- /See:/ 'signBlobRequest' smart constructor.
newtype SignBlobRequest =
  SignBlobRequest'
    { _sbrBytesToSign :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignBlobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrBytesToSign'
signBlobRequest
    :: SignBlobRequest
signBlobRequest = SignBlobRequest' {_sbrBytesToSign = Nothing}


-- | Required. Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The bytes to sign.
sbrBytesToSign :: Lens' SignBlobRequest (Maybe ByteString)
sbrBytesToSign
  = lens _sbrBytesToSign
      (\ s a -> s{_sbrBytesToSign = a})
      . mapping _Bytes

instance FromJSON SignBlobRequest where
        parseJSON
          = withObject "SignBlobRequest"
              (\ o -> SignBlobRequest' <$> (o .:? "bytesToSign"))

instance ToJSON SignBlobRequest where
        toJSON SignBlobRequest'{..}
          = object
              (catMaybes [("bytesToSign" .=) <$> _sbrBytesToSign])

-- | The service account keys list response.
--
-- /See:/ 'listServiceAccountKeysResponse' smart constructor.
newtype ListServiceAccountKeysResponse =
  ListServiceAccountKeysResponse'
    { _lsakrKeys :: Maybe [ServiceAccountKey]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListServiceAccountKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsakrKeys'
listServiceAccountKeysResponse
    :: ListServiceAccountKeysResponse
listServiceAccountKeysResponse =
  ListServiceAccountKeysResponse' {_lsakrKeys = Nothing}


-- | The public keys for the service account.
lsakrKeys :: Lens' ListServiceAccountKeysResponse [ServiceAccountKey]
lsakrKeys
  = lens _lsakrKeys (\ s a -> s{_lsakrKeys = a}) .
      _Default
      . _Coerce

instance FromJSON ListServiceAccountKeysResponse
         where
        parseJSON
          = withObject "ListServiceAccountKeysResponse"
              (\ o ->
                 ListServiceAccountKeysResponse' <$>
                   (o .:? "keys" .!= mempty))

instance ToJSON ListServiceAccountKeysResponse where
        toJSON ListServiceAccountKeysResponse'{..}
          = object (catMaybes [("keys" .=) <$> _lsakrKeys])

-- | The service account enable request.
--
-- /See:/ 'enableServiceAccountRequest' smart constructor.
data EnableServiceAccountRequest =
  EnableServiceAccountRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnableServiceAccountRequest' with the minimum fields required to make a request.
--
enableServiceAccountRequest
    :: EnableServiceAccountRequest
enableServiceAccountRequest = EnableServiceAccountRequest'


instance FromJSON EnableServiceAccountRequest where
        parseJSON
          = withObject "EnableServiceAccountRequest"
              (\ o -> pure EnableServiceAccountRequest')

instance ToJSON EnableServiceAccountRequest where
        toJSON = const emptyObject

-- | A role in the Identity and Access Management API.
--
-- /See:/ 'role'' smart constructor.
data Role =
  Role'
    { _rStage :: !(Maybe RoleStage)
    , _rEtag :: !(Maybe Bytes)
    , _rIncludedPermissions :: !(Maybe [Text])
    , _rName :: !(Maybe Text)
    , _rDeleted :: !(Maybe Bool)
    , _rTitle :: !(Maybe Text)
    , _rDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Role' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStage'
--
-- * 'rEtag'
--
-- * 'rIncludedPermissions'
--
-- * 'rName'
--
-- * 'rDeleted'
--
-- * 'rTitle'
--
-- * 'rDescription'
role'
    :: Role
role' =
  Role'
    { _rStage = Nothing
    , _rEtag = Nothing
    , _rIncludedPermissions = Nothing
    , _rName = Nothing
    , _rDeleted = Nothing
    , _rTitle = Nothing
    , _rDescription = Nothing
    }


-- | The current launch stage of the role. If the \`ALPHA\` launch stage has
-- been selected for a role, the \`stage\` field will not be included in
-- the returned definition for the role.
rStage :: Lens' Role (Maybe RoleStage)
rStage = lens _rStage (\ s a -> s{_rStage = a})

-- | Used to perform a consistent read-modify-write.
rEtag :: Lens' Role (Maybe ByteString)
rEtag
  = lens _rEtag (\ s a -> s{_rEtag = a}) .
      mapping _Bytes

-- | The names of the permissions this role grants when bound in an IAM
-- policy.
rIncludedPermissions :: Lens' Role [Text]
rIncludedPermissions
  = lens _rIncludedPermissions
      (\ s a -> s{_rIncludedPermissions = a})
      . _Default
      . _Coerce

-- | The name of the role. When Role is used in CreateRole, the role name
-- must not be set. When Role is used in output and other input such as
-- UpdateRole, the role name is the complete path, e.g.,
-- roles\/logging.viewer for predefined roles and
-- organizations\/{ORGANIZATION_ID}\/roles\/logging.viewer for custom
-- roles.
rName :: Lens' Role (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | The current deleted state of the role. This field is read only. It will
-- be ignored in calls to CreateRole and UpdateRole.
rDeleted :: Lens' Role (Maybe Bool)
rDeleted = lens _rDeleted (\ s a -> s{_rDeleted = a})

-- | Optional. A human-readable title for the role. Typically this is limited
-- to 100 UTF-8 bytes.
rTitle :: Lens' Role (Maybe Text)
rTitle = lens _rTitle (\ s a -> s{_rTitle = a})

-- | Optional. A human-readable description for the role.
rDescription :: Lens' Role (Maybe Text)
rDescription
  = lens _rDescription (\ s a -> s{_rDescription = a})

instance FromJSON Role where
        parseJSON
          = withObject "Role"
              (\ o ->
                 Role' <$>
                   (o .:? "stage") <*> (o .:? "etag") <*>
                     (o .:? "includedPermissions" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "deleted")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Role where
        toJSON Role'{..}
          = object
              (catMaybes
                 [("stage" .=) <$> _rStage, ("etag" .=) <$> _rEtag,
                  ("includedPermissions" .=) <$> _rIncludedPermissions,
                  ("name" .=) <$> _rName, ("deleted" .=) <$> _rDeleted,
                  ("title" .=) <$> _rTitle,
                  ("description" .=) <$> _rDescription])

-- | An IAM service account. A service account is an account for an
-- application or a virtual machine (VM) instance, not a person. You can
-- use a service account to call Google APIs. To learn more, read the
-- [overview of service
-- accounts](https:\/\/cloud.google.com\/iam\/help\/service-accounts\/overview).
-- When you create a service account, you specify the project ID that owns
-- the service account, as well as a name that must be unique within the
-- project. IAM uses these values to create an email address that
-- identifies the service account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount =
  ServiceAccount'
    { _saEmail :: !(Maybe Text)
    , _saEtag :: !(Maybe Bytes)
    , _saDisabled :: !(Maybe Bool)
    , _saUniqueId :: !(Maybe Text)
    , _saName :: !(Maybe Text)
    , _saDisplayName :: !(Maybe Text)
    , _saProjectId :: !(Maybe Text)
    , _saDescription :: !(Maybe Text)
    , _saOAuth2ClientId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saEmail'
--
-- * 'saEtag'
--
-- * 'saDisabled'
--
-- * 'saUniqueId'
--
-- * 'saName'
--
-- * 'saDisplayName'
--
-- * 'saProjectId'
--
-- * 'saDescription'
--
-- * 'saOAuth2ClientId'
serviceAccount
    :: ServiceAccount
serviceAccount =
  ServiceAccount'
    { _saEmail = Nothing
    , _saEtag = Nothing
    , _saDisabled = Nothing
    , _saUniqueId = Nothing
    , _saName = Nothing
    , _saDisplayName = Nothing
    , _saProjectId = Nothing
    , _saDescription = Nothing
    , _saOAuth2ClientId = Nothing
    }


-- | Output only. The email address of the service account.
saEmail :: Lens' ServiceAccount (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | Deprecated. Do not use.
saEtag :: Lens' ServiceAccount (Maybe ByteString)
saEtag
  = lens _saEtag (\ s a -> s{_saEtag = a}) .
      mapping _Bytes

-- | Output only. Whether the service account is disabled.
saDisabled :: Lens' ServiceAccount (Maybe Bool)
saDisabled
  = lens _saDisabled (\ s a -> s{_saDisabled = a})

-- | Output only. The unique, stable numeric ID for the service account. Each
-- service account retains its unique ID even if you delete the service
-- account. For example, if you delete a service account, then create a new
-- service account with the same name, the new service account has a
-- different unique ID than the deleted service account.
saUniqueId :: Lens' ServiceAccount (Maybe Text)
saUniqueId
  = lens _saUniqueId (\ s a -> s{_saUniqueId = a})

-- | The resource name of the service account. Use one of the following
-- formats: * \`projects\/{PROJECT_ID}\/serviceAccounts\/{EMAIL_ADDRESS}\`
-- * \`projects\/{PROJECT_ID}\/serviceAccounts\/{UNIQUE_ID}\` As an
-- alternative, you can use the \`-\` wildcard character instead of the
-- project ID: * \`projects\/-\/serviceAccounts\/{EMAIL_ADDRESS}\` *
-- \`projects\/-\/serviceAccounts\/{UNIQUE_ID}\` When possible, avoid using
-- the \`-\` wildcard character, because it can cause response messages to
-- contain misleading error codes. For example, if you try to get the
-- service account \`projects\/-\/serviceAccounts\/fake\'example.com\`,
-- which does not exist, the response contains an HTTP \`403 Forbidden\`
-- error instead of a \`404 Not Found\` error.
saName :: Lens' ServiceAccount (Maybe Text)
saName = lens _saName (\ s a -> s{_saName = a})

-- | Optional. A user-specified, human-readable name for the service account.
-- The maximum length is 100 UTF-8 bytes.
saDisplayName :: Lens' ServiceAccount (Maybe Text)
saDisplayName
  = lens _saDisplayName
      (\ s a -> s{_saDisplayName = a})

-- | Output only. The ID of the project that owns the service account.
saProjectId :: Lens' ServiceAccount (Maybe Text)
saProjectId
  = lens _saProjectId (\ s a -> s{_saProjectId = a})

-- | Optional. A user-specified, human-readable description of the service
-- account. The maximum length is 256 UTF-8 bytes.
saDescription :: Lens' ServiceAccount (Maybe Text)
saDescription
  = lens _saDescription
      (\ s a -> s{_saDescription = a})

-- | Output only. The OAuth 2.0 client ID for the service account.
saOAuth2ClientId :: Lens' ServiceAccount (Maybe Text)
saOAuth2ClientId
  = lens _saOAuth2ClientId
      (\ s a -> s{_saOAuth2ClientId = a})

instance FromJSON ServiceAccount where
        parseJSON
          = withObject "ServiceAccount"
              (\ o ->
                 ServiceAccount' <$>
                   (o .:? "email") <*> (o .:? "etag") <*>
                     (o .:? "disabled")
                     <*> (o .:? "uniqueId")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "projectId")
                     <*> (o .:? "description")
                     <*> (o .:? "oauth2ClientId"))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _saEmail, ("etag" .=) <$> _saEtag,
                  ("disabled" .=) <$> _saDisabled,
                  ("uniqueId" .=) <$> _saUniqueId,
                  ("name" .=) <$> _saName,
                  ("displayName" .=) <$> _saDisplayName,
                  ("projectId" .=) <$> _saProjectId,
                  ("description" .=) <$> _saDescription,
                  ("oauth2ClientId" .=) <$> _saOAuth2ClientId])

-- | Maps attributes from authentication credentials issued by an external
-- identity provider to Google Cloud attributes, such as \`subject\` and
-- \`segment\`. Each key must be a string specifying the Google Cloud IAM
-- attribute to map to. The following keys are supported: *
-- \`google.subject\`: The principal IAM is authenticating. You can
-- reference this value in IAM bindings. This is also the subject that
-- appears in Cloud Logging logs. Cannot exceed 127 characters. *
-- \`google.groups\`: Groups the external identity belongs to. You can
-- grant groups access to resources using an IAM \`principalSet\` binding;
-- access applies to all members of the group. You can also provide custom
-- attributes by specifying \`attribute.{custom_attribute}\`, where
-- \`{custom_attribute}\` is the name of the custom attribute to be mapped.
-- You can define a maximum of 50 custom attributes. The maximum length of
-- a mapped attribute key is 100 characters, and the key may only contain
-- the characters [a-z0-9_]. You can reference these attributes in IAM
-- policies to define fine-grained access for a workload to Google Cloud
-- resources. For example: * \`google.subject\`:
-- \`principal:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/subject\/{value}\`
-- * \`google.groups\`:
-- \`principalSet:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/group\/{value}\`
-- * \`attribute.{custom_attribute}\`:
-- \`principalSet:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/attribute.{custom_attribute}\/{value}\`
-- Each value must be a [Common Expression Language]
-- (https:\/\/opensource.google\/projects\/cel) function that maps an
-- identity provider credential to the normalized attribute specified by
-- the corresponding map key. You can use the \`assertion\` keyword in the
-- expression to access a JSON representation of the authentication
-- credential issued by the provider. The maximum length of an attribute
-- mapping expression is 2048 characters. When evaluated, the total size of
-- all mapped attributes must not exceed 8KB. For AWS providers, if no
-- attribute mapping is defined, the following default mapping applies:
-- \`\`\` { \"google.subject\":\"assertion.arn\", \"attribute.aws_role\":
-- \"assertion.arn.contains(\'assumed-role\')\" \" ?
-- assertion.arn.extract(\'{account_arn}assumed-role\/\')\" \" +
-- \'assumed-role\/\'\" \" +
-- assertion.arn.extract(\'assumed-role\/{role_name}\/\')\" \" :
-- assertion.arn\", } \`\`\` If any custom attribute mappings are defined,
-- they must include a mapping to the \`google.subject\` attribute. For
-- OIDC providers, you must supply a custom mapping, which must include the
-- \`google.subject\` attribute. For example, the following maps the
-- \`sub\` claim of the incoming credential to the \`subject\` attribute on
-- a Google token: \`\`\` {\"google.subject\": \"assertion.sub\"} \`\`\`
--
-- /See:/ 'workLoadIdentityPoolProviderAttributeMApping' smart constructor.
newtype WorkLoadIdentityPoolProviderAttributeMApping =
  WorkLoadIdentityPoolProviderAttributeMApping'
    { _wlippamaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkLoadIdentityPoolProviderAttributeMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlippamaAddtional'
workLoadIdentityPoolProviderAttributeMApping
    :: HashMap Text Text -- ^ 'wlippamaAddtional'
    -> WorkLoadIdentityPoolProviderAttributeMApping
workLoadIdentityPoolProviderAttributeMApping pWlippamaAddtional_ =
  WorkLoadIdentityPoolProviderAttributeMApping'
    {_wlippamaAddtional = _Coerce # pWlippamaAddtional_}


wlippamaAddtional :: Lens' WorkLoadIdentityPoolProviderAttributeMApping (HashMap Text Text)
wlippamaAddtional
  = lens _wlippamaAddtional
      (\ s a -> s{_wlippamaAddtional = a})
      . _Coerce

instance FromJSON
           WorkLoadIdentityPoolProviderAttributeMApping
         where
        parseJSON
          = withObject
              "WorkLoadIdentityPoolProviderAttributeMApping"
              (\ o ->
                 WorkLoadIdentityPoolProviderAttributeMApping' <$>
                   (parseJSONObject o))

instance ToJSON
           WorkLoadIdentityPoolProviderAttributeMApping
         where
        toJSON = toJSON . _wlippamaAddtional

-- | Response message for ListWorkloadIdentityPools.
--
-- /See:/ 'listWorkLoadIdentityPoolsResponse' smart constructor.
data ListWorkLoadIdentityPoolsResponse =
  ListWorkLoadIdentityPoolsResponse'
    { _lwliprNextPageToken :: !(Maybe Text)
    , _lwliprWorkLoadIdentityPools :: !(Maybe [WorkLoadIdentityPool])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListWorkLoadIdentityPoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwliprNextPageToken'
--
-- * 'lwliprWorkLoadIdentityPools'
listWorkLoadIdentityPoolsResponse
    :: ListWorkLoadIdentityPoolsResponse
listWorkLoadIdentityPoolsResponse =
  ListWorkLoadIdentityPoolsResponse'
    {_lwliprNextPageToken = Nothing, _lwliprWorkLoadIdentityPools = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lwliprNextPageToken :: Lens' ListWorkLoadIdentityPoolsResponse (Maybe Text)
lwliprNextPageToken
  = lens _lwliprNextPageToken
      (\ s a -> s{_lwliprNextPageToken = a})

-- | A list of pools.
lwliprWorkLoadIdentityPools :: Lens' ListWorkLoadIdentityPoolsResponse [WorkLoadIdentityPool]
lwliprWorkLoadIdentityPools
  = lens _lwliprWorkLoadIdentityPools
      (\ s a -> s{_lwliprWorkLoadIdentityPools = a})
      . _Default
      . _Coerce

instance FromJSON ListWorkLoadIdentityPoolsResponse
         where
        parseJSON
          = withObject "ListWorkLoadIdentityPoolsResponse"
              (\ o ->
                 ListWorkLoadIdentityPoolsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "workloadIdentityPools" .!= mempty))

instance ToJSON ListWorkLoadIdentityPoolsResponse
         where
        toJSON ListWorkLoadIdentityPoolsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lwliprNextPageToken,
                  ("workloadIdentityPools" .=) <$>
                    _lwliprWorkLoadIdentityPools])

-- | A request to get permissions which can be tested on a resource.
--
-- /See:/ 'queryTestablePermissionsRequest' smart constructor.
data QueryTestablePermissionsRequest =
  QueryTestablePermissionsRequest'
    { _qtprFullResourceName :: !(Maybe Text)
    , _qtprPageToken :: !(Maybe Text)
    , _qtprPageSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryTestablePermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qtprFullResourceName'
--
-- * 'qtprPageToken'
--
-- * 'qtprPageSize'
queryTestablePermissionsRequest
    :: QueryTestablePermissionsRequest
queryTestablePermissionsRequest =
  QueryTestablePermissionsRequest'
    { _qtprFullResourceName = Nothing
    , _qtprPageToken = Nothing
    , _qtprPageSize = Nothing
    }


-- | Required. The full resource name to query from the list of testable
-- permissions. The name follows the Google Cloud Platform resource format.
-- For example, a Cloud Platform project with id \`my-project\` will be
-- named \`\/\/cloudresourcemanager.googleapis.com\/projects\/my-project\`.
qtprFullResourceName :: Lens' QueryTestablePermissionsRequest (Maybe Text)
qtprFullResourceName
  = lens _qtprFullResourceName
      (\ s a -> s{_qtprFullResourceName = a})

-- | Optional pagination token returned in an earlier
-- QueryTestablePermissionsRequest.
qtprPageToken :: Lens' QueryTestablePermissionsRequest (Maybe Text)
qtprPageToken
  = lens _qtprPageToken
      (\ s a -> s{_qtprPageToken = a})

-- | Optional limit on the number of permissions to include in the response.
-- The default is 100, and the maximum is 1,000.
qtprPageSize :: Lens' QueryTestablePermissionsRequest (Maybe Int32)
qtprPageSize
  = lens _qtprPageSize (\ s a -> s{_qtprPageSize = a})
      . mapping _Coerce

instance FromJSON QueryTestablePermissionsRequest
         where
        parseJSON
          = withObject "QueryTestablePermissionsRequest"
              (\ o ->
                 QueryTestablePermissionsRequest' <$>
                   (o .:? "fullResourceName") <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON QueryTestablePermissionsRequest where
        toJSON QueryTestablePermissionsRequest'{..}
          = object
              (catMaybes
                 [("fullResourceName" .=) <$> _qtprFullResourceName,
                  ("pageToken" .=) <$> _qtprPageToken,
                  ("pageSize" .=) <$> _qtprPageSize])

-- | Request message for UndeleteWorkloadIdentityPoolProvider.
--
-- /See:/ 'undeleteWorkLoadIdentityPoolProviderRequest' smart constructor.
data UndeleteWorkLoadIdentityPoolProviderRequest =
  UndeleteWorkLoadIdentityPoolProviderRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteWorkLoadIdentityPoolProviderRequest' with the minimum fields required to make a request.
--
undeleteWorkLoadIdentityPoolProviderRequest
    :: UndeleteWorkLoadIdentityPoolProviderRequest
undeleteWorkLoadIdentityPoolProviderRequest =
  UndeleteWorkLoadIdentityPoolProviderRequest'


instance FromJSON
           UndeleteWorkLoadIdentityPoolProviderRequest
         where
        parseJSON
          = withObject
              "UndeleteWorkLoadIdentityPoolProviderRequest"
              (\ o ->
                 pure UndeleteWorkLoadIdentityPoolProviderRequest')

instance ToJSON
           UndeleteWorkLoadIdentityPoolProviderRequest
         where
        toJSON = const emptyObject

-- | The grantable role query response.
--
-- /See:/ 'queryGrantableRolesResponse' smart constructor.
data QueryGrantableRolesResponse =
  QueryGrantableRolesResponse'
    { _qgrrRoles :: !(Maybe [Role])
    , _qgrrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryGrantableRolesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qgrrRoles'
--
-- * 'qgrrNextPageToken'
queryGrantableRolesResponse
    :: QueryGrantableRolesResponse
queryGrantableRolesResponse =
  QueryGrantableRolesResponse'
    {_qgrrRoles = Nothing, _qgrrNextPageToken = Nothing}


-- | The list of matching roles.
qgrrRoles :: Lens' QueryGrantableRolesResponse [Role]
qgrrRoles
  = lens _qgrrRoles (\ s a -> s{_qgrrRoles = a}) .
      _Default
      . _Coerce

-- | To retrieve the next page of results, set
-- \`QueryGrantableRolesRequest.page_token\` to this value.
qgrrNextPageToken :: Lens' QueryGrantableRolesResponse (Maybe Text)
qgrrNextPageToken
  = lens _qgrrNextPageToken
      (\ s a -> s{_qgrrNextPageToken = a})

instance FromJSON QueryGrantableRolesResponse where
        parseJSON
          = withObject "QueryGrantableRolesResponse"
              (\ o ->
                 QueryGrantableRolesResponse' <$>
                   (o .:? "roles" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON QueryGrantableRolesResponse where
        toJSON QueryGrantableRolesResponse'{..}
          = object
              (catMaybes
                 [("roles" .=) <$> _qgrrRoles,
                  ("nextPageToken" .=) <$> _qgrrNextPageToken])

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

-- | Audit log information specific to Cloud IAM admin APIs. This message is
-- serialized as an \`Any\` type in the \`ServiceData\` message of an
-- \`AuditLog\` message.
--
-- /See:/ 'adminAuditData' smart constructor.
newtype AdminAuditData =
  AdminAuditData'
    { _aadPermissionDelta :: Maybe PermissionDelta
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdminAuditData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aadPermissionDelta'
adminAuditData
    :: AdminAuditData
adminAuditData = AdminAuditData' {_aadPermissionDelta = Nothing}


-- | The permission_delta when when creating or updating a Role.
aadPermissionDelta :: Lens' AdminAuditData (Maybe PermissionDelta)
aadPermissionDelta
  = lens _aadPermissionDelta
      (\ s a -> s{_aadPermissionDelta = a})

instance FromJSON AdminAuditData where
        parseJSON
          = withObject "AdminAuditData"
              (\ o ->
                 AdminAuditData' <$> (o .:? "permissionDelta"))

instance ToJSON AdminAuditData where
        toJSON AdminAuditData'{..}
          = object
              (catMaybes
                 [("permissionDelta" .=) <$> _aadPermissionDelta])

--
-- /See:/ 'undeleteServiceAccountResponse' smart constructor.
newtype UndeleteServiceAccountResponse =
  UndeleteServiceAccountResponse'
    { _usarRestoredAccount :: Maybe ServiceAccount
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteServiceAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usarRestoredAccount'
undeleteServiceAccountResponse
    :: UndeleteServiceAccountResponse
undeleteServiceAccountResponse =
  UndeleteServiceAccountResponse' {_usarRestoredAccount = Nothing}


-- | Metadata for the restored service account.
usarRestoredAccount :: Lens' UndeleteServiceAccountResponse (Maybe ServiceAccount)
usarRestoredAccount
  = lens _usarRestoredAccount
      (\ s a -> s{_usarRestoredAccount = a})

instance FromJSON UndeleteServiceAccountResponse
         where
        parseJSON
          = withObject "UndeleteServiceAccountResponse"
              (\ o ->
                 UndeleteServiceAccountResponse' <$>
                   (o .:? "restoredAccount"))

instance ToJSON UndeleteServiceAccountResponse where
        toJSON UndeleteServiceAccountResponse'{..}
          = object
              (catMaybes
                 [("restoredAccount" .=) <$> _usarRestoredAccount])

-- | Represents a collection of external workload identities. You can define
-- IAM policies to grant these identities access to Google Cloud resources.
--
-- /See:/ 'workLoadIdentityPool' smart constructor.
data WorkLoadIdentityPool =
  WorkLoadIdentityPool'
    { _wlipState :: !(Maybe WorkLoadIdentityPoolState)
    , _wlipDisabled :: !(Maybe Bool)
    , _wlipName :: !(Maybe Text)
    , _wlipDisplayName :: !(Maybe Text)
    , _wlipDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkLoadIdentityPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlipState'
--
-- * 'wlipDisabled'
--
-- * 'wlipName'
--
-- * 'wlipDisplayName'
--
-- * 'wlipDescription'
workLoadIdentityPool
    :: WorkLoadIdentityPool
workLoadIdentityPool =
  WorkLoadIdentityPool'
    { _wlipState = Nothing
    , _wlipDisabled = Nothing
    , _wlipName = Nothing
    , _wlipDisplayName = Nothing
    , _wlipDescription = Nothing
    }


-- | Output only. The state of the pool.
wlipState :: Lens' WorkLoadIdentityPool (Maybe WorkLoadIdentityPoolState)
wlipState
  = lens _wlipState (\ s a -> s{_wlipState = a})

-- | Whether the pool is disabled. You cannot use a disabled pool to exchange
-- tokens, or use existing tokens to access resources. If the pool is
-- re-enabled, existing tokens grant access again.
wlipDisabled :: Lens' WorkLoadIdentityPool (Maybe Bool)
wlipDisabled
  = lens _wlipDisabled (\ s a -> s{_wlipDisabled = a})

-- | Output only. The resource name of the pool.
wlipName :: Lens' WorkLoadIdentityPool (Maybe Text)
wlipName = lens _wlipName (\ s a -> s{_wlipName = a})

-- | A display name for the pool. Cannot exceed 32 characters.
wlipDisplayName :: Lens' WorkLoadIdentityPool (Maybe Text)
wlipDisplayName
  = lens _wlipDisplayName
      (\ s a -> s{_wlipDisplayName = a})

-- | A description of the pool. Cannot exceed 256 characters.
wlipDescription :: Lens' WorkLoadIdentityPool (Maybe Text)
wlipDescription
  = lens _wlipDescription
      (\ s a -> s{_wlipDescription = a})

instance FromJSON WorkLoadIdentityPool where
        parseJSON
          = withObject "WorkLoadIdentityPool"
              (\ o ->
                 WorkLoadIdentityPool' <$>
                   (o .:? "state") <*> (o .:? "disabled") <*>
                     (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description"))

instance ToJSON WorkLoadIdentityPool where
        toJSON WorkLoadIdentityPool'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _wlipState,
                  ("disabled" .=) <$> _wlipDisabled,
                  ("name" .=) <$> _wlipName,
                  ("displayName" .=) <$> _wlipDisplayName,
                  ("description" .=) <$> _wlipDescription])

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

-- | The difference delta between two policies.
--
-- /See:/ 'policyDelta' smart constructor.
newtype PolicyDelta =
  PolicyDelta'
    { _pdBindingDeltas :: Maybe [BindingDelta]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyDelta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdBindingDeltas'
policyDelta
    :: PolicyDelta
policyDelta = PolicyDelta' {_pdBindingDeltas = Nothing}


-- | The delta for Bindings between two policies.
pdBindingDeltas :: Lens' PolicyDelta [BindingDelta]
pdBindingDeltas
  = lens _pdBindingDeltas
      (\ s a -> s{_pdBindingDeltas = a})
      . _Default
      . _Coerce

instance FromJSON PolicyDelta where
        parseJSON
          = withObject "PolicyDelta"
              (\ o ->
                 PolicyDelta' <$> (o .:? "bindingDeltas" .!= mempty))

instance ToJSON PolicyDelta where
        toJSON PolicyDelta'{..}
          = object
              (catMaybes
                 [("bindingDeltas" .=) <$> _pdBindingDeltas])

-- | The grantable role query request.
--
-- /See:/ 'queryGrantableRolesRequest' smart constructor.
data QueryGrantableRolesRequest =
  QueryGrantableRolesRequest'
    { _qgrrFullResourceName :: !(Maybe Text)
    , _qgrrView :: !(Maybe QueryGrantableRolesRequestView)
    , _qgrrPageToken :: !(Maybe Text)
    , _qgrrPageSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryGrantableRolesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qgrrFullResourceName'
--
-- * 'qgrrView'
--
-- * 'qgrrPageToken'
--
-- * 'qgrrPageSize'
queryGrantableRolesRequest
    :: QueryGrantableRolesRequest
queryGrantableRolesRequest =
  QueryGrantableRolesRequest'
    { _qgrrFullResourceName = Nothing
    , _qgrrView = Nothing
    , _qgrrPageToken = Nothing
    , _qgrrPageSize = Nothing
    }


-- | Required. The full resource name to query from the list of grantable
-- roles. The name follows the Google Cloud Platform resource format. For
-- example, a Cloud Platform project with id \`my-project\` will be named
-- \`\/\/cloudresourcemanager.googleapis.com\/projects\/my-project\`.
qgrrFullResourceName :: Lens' QueryGrantableRolesRequest (Maybe Text)
qgrrFullResourceName
  = lens _qgrrFullResourceName
      (\ s a -> s{_qgrrFullResourceName = a})

qgrrView :: Lens' QueryGrantableRolesRequest (Maybe QueryGrantableRolesRequestView)
qgrrView = lens _qgrrView (\ s a -> s{_qgrrView = a})

-- | Optional pagination token returned in an earlier
-- QueryGrantableRolesResponse.
qgrrPageToken :: Lens' QueryGrantableRolesRequest (Maybe Text)
qgrrPageToken
  = lens _qgrrPageToken
      (\ s a -> s{_qgrrPageToken = a})

-- | Optional limit on the number of roles to include in the response. The
-- default is 300, and the maximum is 1,000.
qgrrPageSize :: Lens' QueryGrantableRolesRequest (Maybe Int32)
qgrrPageSize
  = lens _qgrrPageSize (\ s a -> s{_qgrrPageSize = a})
      . mapping _Coerce

instance FromJSON QueryGrantableRolesRequest where
        parseJSON
          = withObject "QueryGrantableRolesRequest"
              (\ o ->
                 QueryGrantableRolesRequest' <$>
                   (o .:? "fullResourceName") <*> (o .:? "view") <*>
                     (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON QueryGrantableRolesRequest where
        toJSON QueryGrantableRolesRequest'{..}
          = object
              (catMaybes
                 [("fullResourceName" .=) <$> _qgrrFullResourceName,
                  ("view" .=) <$> _qgrrView,
                  ("pageToken" .=) <$> _qgrrPageToken,
                  ("pageSize" .=) <$> _qgrrPageSize])

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

-- | Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The service account sign JWT request.
--
-- /See:/ 'signJwtRequest' smart constructor.
newtype SignJwtRequest =
  SignJwtRequest'
    { _sjrPayload :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignJwtRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrPayload'
signJwtRequest
    :: SignJwtRequest
signJwtRequest = SignJwtRequest' {_sjrPayload = Nothing}


-- | Required. Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The JWT payload to sign. Must be a serialized JSON object that contains
-- a JWT Claims Set. For example: \`{\"sub\": \"user\'example.com\",
-- \"iat\": 313435}\` If the JWT Claims Set contains an expiration time
-- (\`exp\`) claim, it must be an integer timestamp that is not in the past
-- and no more than 1 hour in the future. If the JWT Claims Set does not
-- contain an expiration time (\`exp\`) claim, this claim is added
-- automatically, with a timestamp that is 1 hour in the future.
sjrPayload :: Lens' SignJwtRequest (Maybe Text)
sjrPayload
  = lens _sjrPayload (\ s a -> s{_sjrPayload = a})

instance FromJSON SignJwtRequest where
        parseJSON
          = withObject "SignJwtRequest"
              (\ o -> SignJwtRequest' <$> (o .:? "payload"))

instance ToJSON SignJwtRequest where
        toJSON SignJwtRequest'{..}
          = object (catMaybes [("payload" .=) <$> _sjrPayload])

-- | The request for PatchServiceAccount. You can patch only the
-- \`display_name\` and \`description\` fields. You must use the
-- \`update_mask\` field to specify which of these fields you want to
-- patch. Only the fields specified in the request are guaranteed to be
-- returned in the response. Other fields may be empty in the response.
--
-- /See:/ 'patchServiceAccountRequest' smart constructor.
data PatchServiceAccountRequest =
  PatchServiceAccountRequest'
    { _psarUpdateMask :: !(Maybe GFieldMask)
    , _psarServiceAccount :: !(Maybe ServiceAccount)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PatchServiceAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psarUpdateMask'
--
-- * 'psarServiceAccount'
patchServiceAccountRequest
    :: PatchServiceAccountRequest
patchServiceAccountRequest =
  PatchServiceAccountRequest'
    {_psarUpdateMask = Nothing, _psarServiceAccount = Nothing}


psarUpdateMask :: Lens' PatchServiceAccountRequest (Maybe GFieldMask)
psarUpdateMask
  = lens _psarUpdateMask
      (\ s a -> s{_psarUpdateMask = a})

psarServiceAccount :: Lens' PatchServiceAccountRequest (Maybe ServiceAccount)
psarServiceAccount
  = lens _psarServiceAccount
      (\ s a -> s{_psarServiceAccount = a})

instance FromJSON PatchServiceAccountRequest where
        parseJSON
          = withObject "PatchServiceAccountRequest"
              (\ o ->
                 PatchServiceAccountRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "serviceAccount"))

instance ToJSON PatchServiceAccountRequest where
        toJSON PatchServiceAccountRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _psarUpdateMask,
                  ("serviceAccount" .=) <$> _psarServiceAccount])

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

-- | A permission which can be included by a role.
--
-- /See:/ 'permission' smart constructor.
data Permission =
  Permission'
    { _perStage :: !(Maybe PermissionStage)
    , _perPrimaryPermission :: !(Maybe Text)
    , _perOnlyInPredefinedRoles :: !(Maybe Bool)
    , _perCustomRolesSupportLevel :: !(Maybe PermissionCustomRolesSupportLevel)
    , _perName :: !(Maybe Text)
    , _perTitle :: !(Maybe Text)
    , _perAPIdisabled :: !(Maybe Bool)
    , _perDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perStage'
--
-- * 'perPrimaryPermission'
--
-- * 'perOnlyInPredefinedRoles'
--
-- * 'perCustomRolesSupportLevel'
--
-- * 'perName'
--
-- * 'perTitle'
--
-- * 'perAPIdisabled'
--
-- * 'perDescription'
permission
    :: Permission
permission =
  Permission'
    { _perStage = Nothing
    , _perPrimaryPermission = Nothing
    , _perOnlyInPredefinedRoles = Nothing
    , _perCustomRolesSupportLevel = Nothing
    , _perName = Nothing
    , _perTitle = Nothing
    , _perAPIdisabled = Nothing
    , _perDescription = Nothing
    }


-- | The current launch stage of the permission.
perStage :: Lens' Permission (Maybe PermissionStage)
perStage = lens _perStage (\ s a -> s{_perStage = a})

-- | The preferred name for this permission. If present, then this permission
-- is an alias of, and equivalent to, the listed primary_permission.
perPrimaryPermission :: Lens' Permission (Maybe Text)
perPrimaryPermission
  = lens _perPrimaryPermission
      (\ s a -> s{_perPrimaryPermission = a})

perOnlyInPredefinedRoles :: Lens' Permission (Maybe Bool)
perOnlyInPredefinedRoles
  = lens _perOnlyInPredefinedRoles
      (\ s a -> s{_perOnlyInPredefinedRoles = a})

-- | The current custom role support level.
perCustomRolesSupportLevel :: Lens' Permission (Maybe PermissionCustomRolesSupportLevel)
perCustomRolesSupportLevel
  = lens _perCustomRolesSupportLevel
      (\ s a -> s{_perCustomRolesSupportLevel = a})

-- | The name of this Permission.
perName :: Lens' Permission (Maybe Text)
perName = lens _perName (\ s a -> s{_perName = a})

-- | The title of this Permission.
perTitle :: Lens' Permission (Maybe Text)
perTitle = lens _perTitle (\ s a -> s{_perTitle = a})

-- | The service API associated with the permission is not enabled.
perAPIdisabled :: Lens' Permission (Maybe Bool)
perAPIdisabled
  = lens _perAPIdisabled
      (\ s a -> s{_perAPIdisabled = a})

-- | A brief description of what this Permission is used for. This permission
-- can ONLY be used in predefined roles.
perDescription :: Lens' Permission (Maybe Text)
perDescription
  = lens _perDescription
      (\ s a -> s{_perDescription = a})

instance FromJSON Permission where
        parseJSON
          = withObject "Permission"
              (\ o ->
                 Permission' <$>
                   (o .:? "stage") <*> (o .:? "primaryPermission") <*>
                     (o .:? "onlyInPredefinedRoles")
                     <*> (o .:? "customRolesSupportLevel")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "apiDisabled")
                     <*> (o .:? "description"))

instance ToJSON Permission where
        toJSON Permission'{..}
          = object
              (catMaybes
                 [("stage" .=) <$> _perStage,
                  ("primaryPermission" .=) <$> _perPrimaryPermission,
                  ("onlyInPredefinedRoles" .=) <$>
                    _perOnlyInPredefinedRoles,
                  ("customRolesSupportLevel" .=) <$>
                    _perCustomRolesSupportLevel,
                  ("name" .=) <$> _perName, ("title" .=) <$> _perTitle,
                  ("apiDisabled" .=) <$> _perAPIdisabled,
                  ("description" .=) <$> _perDescription])

-- | Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The service account sign blob response.
--
-- /See:/ 'signBlobResponse' smart constructor.
data SignBlobResponse =
  SignBlobResponse'
    { _sbrSignature :: !(Maybe Bytes)
    , _sbrKeyId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignBlobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrSignature'
--
-- * 'sbrKeyId'
signBlobResponse
    :: SignBlobResponse
signBlobResponse =
  SignBlobResponse' {_sbrSignature = Nothing, _sbrKeyId = Nothing}


-- | Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The signed blob.
sbrSignature :: Lens' SignBlobResponse (Maybe ByteString)
sbrSignature
  = lens _sbrSignature (\ s a -> s{_sbrSignature = a})
      . mapping _Bytes

-- | Deprecated. [Migrate to Service Account Credentials
-- API](https:\/\/cloud.google.com\/iam\/help\/credentials\/migrate-api).
-- The id of the key used to sign the blob.
sbrKeyId :: Lens' SignBlobResponse (Maybe Text)
sbrKeyId = lens _sbrKeyId (\ s a -> s{_sbrKeyId = a})

instance FromJSON SignBlobResponse where
        parseJSON
          = withObject "SignBlobResponse"
              (\ o ->
                 SignBlobResponse' <$>
                   (o .:? "signature") <*> (o .:? "keyId"))

instance ToJSON SignBlobResponse where
        toJSON SignBlobResponse'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _sbrSignature,
                  ("keyId" .=) <$> _sbrKeyId])

-- | The service account list response.
--
-- /See:/ 'listServiceAccountsResponse' smart constructor.
data ListServiceAccountsResponse =
  ListServiceAccountsResponse'
    { _lsarNextPageToken :: !(Maybe Text)
    , _lsarAccounts :: !(Maybe [ServiceAccount])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListServiceAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsarNextPageToken'
--
-- * 'lsarAccounts'
listServiceAccountsResponse
    :: ListServiceAccountsResponse
listServiceAccountsResponse =
  ListServiceAccountsResponse'
    {_lsarNextPageToken = Nothing, _lsarAccounts = Nothing}


-- | To retrieve the next page of results, set
-- ListServiceAccountsRequest.page_token to this value.
lsarNextPageToken :: Lens' ListServiceAccountsResponse (Maybe Text)
lsarNextPageToken
  = lens _lsarNextPageToken
      (\ s a -> s{_lsarNextPageToken = a})

-- | The list of matching service accounts.
lsarAccounts :: Lens' ListServiceAccountsResponse [ServiceAccount]
lsarAccounts
  = lens _lsarAccounts (\ s a -> s{_lsarAccounts = a})
      . _Default
      . _Coerce

instance FromJSON ListServiceAccountsResponse where
        parseJSON
          = withObject "ListServiceAccountsResponse"
              (\ o ->
                 ListServiceAccountsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accounts" .!= mempty))

instance ToJSON ListServiceAccountsResponse where
        toJSON ListServiceAccountsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsarNextPageToken,
                  ("accounts" .=) <$> _lsarAccounts])

-- | The request to lint a Cloud IAM policy object.
--
-- /See:/ 'lintPolicyRequest' smart constructor.
data LintPolicyRequest =
  LintPolicyRequest'
    { _lprFullResourceName :: !(Maybe Text)
    , _lprCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LintPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprFullResourceName'
--
-- * 'lprCondition'
lintPolicyRequest
    :: LintPolicyRequest
lintPolicyRequest =
  LintPolicyRequest' {_lprFullResourceName = Nothing, _lprCondition = Nothing}


-- | The full resource name of the policy this lint request is about. The
-- name follows the Google Cloud Platform (GCP) resource format. For
-- example, a GCP project with ID \`my-project\` will be named
-- \`\/\/cloudresourcemanager.googleapis.com\/projects\/my-project\`. The
-- resource name is not used to read the policy instance from the Cloud IAM
-- database. The candidate policy for lint has to be provided in the same
-- request object.
lprFullResourceName :: Lens' LintPolicyRequest (Maybe Text)
lprFullResourceName
  = lens _lprFullResourceName
      (\ s a -> s{_lprFullResourceName = a})

-- | google.iam.v1.Binding.condition object to be linted.
lprCondition :: Lens' LintPolicyRequest (Maybe Expr)
lprCondition
  = lens _lprCondition (\ s a -> s{_lprCondition = a})

instance FromJSON LintPolicyRequest where
        parseJSON
          = withObject "LintPolicyRequest"
              (\ o ->
                 LintPolicyRequest' <$>
                   (o .:? "fullResourceName") <*> (o .:? "condition"))

instance ToJSON LintPolicyRequest where
        toJSON LintPolicyRequest'{..}
          = object
              (catMaybes
                 [("fullResourceName" .=) <$> _lprFullResourceName,
                  ("condition" .=) <$> _lprCondition])

-- | The response containing the roles defined under a resource.
--
-- /See:/ 'listRolesResponse' smart constructor.
data ListRolesResponse =
  ListRolesResponse'
    { _lrrRoles :: !(Maybe [Role])
    , _lrrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRolesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrRoles'
--
-- * 'lrrNextPageToken'
listRolesResponse
    :: ListRolesResponse
listRolesResponse =
  ListRolesResponse' {_lrrRoles = Nothing, _lrrNextPageToken = Nothing}


-- | The Roles defined on this resource.
lrrRoles :: Lens' ListRolesResponse [Role]
lrrRoles
  = lens _lrrRoles (\ s a -> s{_lrrRoles = a}) .
      _Default
      . _Coerce

-- | To retrieve the next page of results, set
-- \`ListRolesRequest.page_token\` to this value.
lrrNextPageToken :: Lens' ListRolesResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

instance FromJSON ListRolesResponse where
        parseJSON
          = withObject "ListRolesResponse"
              (\ o ->
                 ListRolesResponse' <$>
                   (o .:? "roles" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListRolesResponse where
        toJSON ListRolesResponse'{..}
          = object
              (catMaybes
                 [("roles" .=) <$> _lrrRoles,
                  ("nextPageToken" .=) <$> _lrrNextPageToken])

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

-- | The service account create request.
--
-- /See:/ 'createServiceAccountRequest' smart constructor.
data CreateServiceAccountRequest =
  CreateServiceAccountRequest'
    { _csarServiceAccount :: !(Maybe ServiceAccount)
    , _csarAccountId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateServiceAccountRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csarServiceAccount'
--
-- * 'csarAccountId'
createServiceAccountRequest
    :: CreateServiceAccountRequest
createServiceAccountRequest =
  CreateServiceAccountRequest'
    {_csarServiceAccount = Nothing, _csarAccountId = Nothing}


-- | The ServiceAccount resource to create. Currently, only the following
-- values are user assignable: \`display_name\` and \`description\`.
csarServiceAccount :: Lens' CreateServiceAccountRequest (Maybe ServiceAccount)
csarServiceAccount
  = lens _csarServiceAccount
      (\ s a -> s{_csarServiceAccount = a})

-- | Required. The account id that is used to generate the service account
-- email address and a stable unique id. It is unique within a project,
-- must be 6-30 characters long, and match the regular expression
-- \`[a-z]([-a-z0-9]*[a-z0-9])\` to comply with RFC1035.
csarAccountId :: Lens' CreateServiceAccountRequest (Maybe Text)
csarAccountId
  = lens _csarAccountId
      (\ s a -> s{_csarAccountId = a})

instance FromJSON CreateServiceAccountRequest where
        parseJSON
          = withObject "CreateServiceAccountRequest"
              (\ o ->
                 CreateServiceAccountRequest' <$>
                   (o .:? "serviceAccount") <*> (o .:? "accountId"))

instance ToJSON CreateServiceAccountRequest where
        toJSON CreateServiceAccountRequest'{..}
          = object
              (catMaybes
                 [("serviceAccount" .=) <$> _csarServiceAccount,
                  ("accountId" .=) <$> _csarAccountId])

-- | Represents an OpenId Connect 1.0 identity provider.
--
-- /See:/ 'oidc' smart constructor.
data Oidc =
  Oidc'
    { _oAllowedAudiences :: !(Maybe [Text])
    , _oIssuerURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Oidc' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oAllowedAudiences'
--
-- * 'oIssuerURI'
oidc
    :: Oidc
oidc = Oidc' {_oAllowedAudiences = Nothing, _oIssuerURI = Nothing}


-- | Acceptable values for the \`aud\` field (audience) in the OIDC token.
-- Token exchange requests are rejected if the token audience does not
-- match one of the configured values. Each audience may be at most 256
-- characters. A maximum of 10 audiences may be configured. If this list is
-- empty, the OIDC token audience must be equal to the full canonical
-- resource name of the WorkloadIdentityPoolProvider, with or without the
-- HTTPS prefix. For example: \`\`\`
-- \/\/iam.googleapis.com\/projects\/\/locations\/\/workloadIdentityPools\/\/providers\/
-- https:\/\/iam.googleapis.com\/projects\/\/locations\/\/workloadIdentityPools\/\/providers\/
-- \`\`\`
oAllowedAudiences :: Lens' Oidc [Text]
oAllowedAudiences
  = lens _oAllowedAudiences
      (\ s a -> s{_oAllowedAudiences = a})
      . _Default
      . _Coerce

-- | Required. The OIDC issuer URL. Must be an HTTPS endpoint.
oIssuerURI :: Lens' Oidc (Maybe Text)
oIssuerURI
  = lens _oIssuerURI (\ s a -> s{_oIssuerURI = a})

instance FromJSON Oidc where
        parseJSON
          = withObject "Oidc"
              (\ o ->
                 Oidc' <$>
                   (o .:? "allowedAudiences" .!= mempty) <*>
                     (o .:? "issuerUri"))

instance ToJSON Oidc where
        toJSON Oidc'{..}
          = object
              (catMaybes
                 [("allowedAudiences" .=) <$> _oAllowedAudiences,
                  ("issuerUri" .=) <$> _oIssuerURI])

-- | The request to create a new role.
--
-- /See:/ 'createRoleRequest' smart constructor.
data CreateRoleRequest =
  CreateRoleRequest'
    { _crrRoleId :: !(Maybe Text)
    , _crrRole :: !(Maybe Role)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateRoleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrRoleId'
--
-- * 'crrRole'
createRoleRequest
    :: CreateRoleRequest
createRoleRequest =
  CreateRoleRequest' {_crrRoleId = Nothing, _crrRole = Nothing}


-- | The role ID to use for this role. A role ID may contain alphanumeric
-- characters, underscores (\`_\`), and periods (\`.\`). It must contain a
-- minimum of 3 characters and a maximum of 64 characters.
crrRoleId :: Lens' CreateRoleRequest (Maybe Text)
crrRoleId
  = lens _crrRoleId (\ s a -> s{_crrRoleId = a})

-- | The Role resource to create.
crrRole :: Lens' CreateRoleRequest (Maybe Role)
crrRole = lens _crrRole (\ s a -> s{_crrRole = a})

instance FromJSON CreateRoleRequest where
        parseJSON
          = withObject "CreateRoleRequest"
              (\ o ->
                 CreateRoleRequest' <$>
                   (o .:? "roleId") <*> (o .:? "role"))

instance ToJSON CreateRoleRequest where
        toJSON CreateRoleRequest'{..}
          = object
              (catMaybes
                 [("roleId" .=) <$> _crrRoleId,
                  ("role" .=) <$> _crrRole])

-- | The service account key upload request.
--
-- /See:/ 'uploadServiceAccountKeyRequest' smart constructor.
newtype UploadServiceAccountKeyRequest =
  UploadServiceAccountKeyRequest'
    { _usakrPublicKeyData :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UploadServiceAccountKeyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usakrPublicKeyData'
uploadServiceAccountKeyRequest
    :: UploadServiceAccountKeyRequest
uploadServiceAccountKeyRequest =
  UploadServiceAccountKeyRequest' {_usakrPublicKeyData = Nothing}


-- | A field that allows clients to upload their own public key. If set, use
-- this public key data to create a service account key for given service
-- account. Please note, the expected format for this field is X509_PEM.
usakrPublicKeyData :: Lens' UploadServiceAccountKeyRequest (Maybe ByteString)
usakrPublicKeyData
  = lens _usakrPublicKeyData
      (\ s a -> s{_usakrPublicKeyData = a})
      . mapping _Bytes

instance FromJSON UploadServiceAccountKeyRequest
         where
        parseJSON
          = withObject "UploadServiceAccountKeyRequest"
              (\ o ->
                 UploadServiceAccountKeyRequest' <$>
                   (o .:? "publicKeyData"))

instance ToJSON UploadServiceAccountKeyRequest where
        toJSON UploadServiceAccountKeyRequest'{..}
          = object
              (catMaybes
                 [("publicKeyData" .=) <$> _usakrPublicKeyData])

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

-- | The service account disable request.
--
-- /See:/ 'disableServiceAccountRequest' smart constructor.
data DisableServiceAccountRequest =
  DisableServiceAccountRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisableServiceAccountRequest' with the minimum fields required to make a request.
--
disableServiceAccountRequest
    :: DisableServiceAccountRequest
disableServiceAccountRequest = DisableServiceAccountRequest'


instance FromJSON DisableServiceAccountRequest where
        parseJSON
          = withObject "DisableServiceAccountRequest"
              (\ o -> pure DisableServiceAccountRequest')

instance ToJSON DisableServiceAccountRequest where
        toJSON = const emptyObject
