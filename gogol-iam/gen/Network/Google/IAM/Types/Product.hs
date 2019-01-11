{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAM.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAM.Types.Product where

import           Network.Google.IAM.Types.Sum
import           Network.Google.Prelude

-- | The response of a lint operation. An empty response indicates the
-- operation was able to fully execute and no lint issue was found.
--
-- /See:/ 'lintPolicyResponse' smart constructor.
newtype LintPolicyResponse = LintPolicyResponse'
    { _lprLintResults :: Maybe [LintResult]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LintPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprLintResults'
lintPolicyResponse
    :: LintPolicyResponse
lintPolicyResponse =
    LintPolicyResponse'
    { _lprLintResults = Nothing
    }

-- | List of lint results sorted by a composite key, descending order of
-- severity and ascending order of binding_ordinal. There is no certain
-- order among the same keys. For cross-binding results (only if the input
-- object to lint is instance of google.iam.v1.Policy), there will be a
-- google.iam.admin.v1.LintResult for each of the involved bindings, and
-- the associated debug_message may enumerate the other involved binding
-- ordinal number(s).
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

-- | The request to undelete an existing role.
--
-- /See:/ 'undeleteRoleRequest' smart constructor.
newtype UndeleteRoleRequest = UndeleteRoleRequest'
    { _urrEtag :: Maybe Bytes
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UndeleteRoleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrEtag'
undeleteRoleRequest
    :: UndeleteRoleRequest
undeleteRoleRequest =
    UndeleteRoleRequest'
    { _urrEtag = Nothing
    }

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
data AuditConfig = AuditConfig'
    { _acService         :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig =
    AuditConfig'
    { _acService = Nothing
    , _acAuditLogConfigs = Nothing
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
data Expr = Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Contains information about an auditable service.
--
-- /See:/ 'auditableService' smart constructor.
newtype AuditableService = AuditableService'
    { _asName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuditableService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asName'
auditableService
    :: AuditableService
auditableService =
    AuditableService'
    { _asName = Nothing
    }

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
newtype QueryAuditableServicesRequest = QueryAuditableServicesRequest'
    { _qasrFullResourceName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueryAuditableServicesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qasrFullResourceName'
queryAuditableServicesRequest
    :: QueryAuditableServicesRequest
queryAuditableServicesRequest =
    QueryAuditableServicesRequest'
    { _qasrFullResourceName = Nothing
    }

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

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The response containing permissions which can be tested on a resource.
--
-- /See:/ 'queryTestablePermissionsResponse' smart constructor.
data QueryTestablePermissionsResponse = QueryTestablePermissionsResponse'
    { _qtprNextPageToken :: !(Maybe Text)
    , _qtprPermissions   :: !(Maybe [Permission])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _qtprNextPageToken = Nothing
    , _qtprPermissions = Nothing
    }

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
newtype AuditData = AuditData'
    { _adPolicyDelta :: Maybe PolicyDelta
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuditData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adPolicyDelta'
auditData
    :: AuditData
auditData =
    AuditData'
    { _adPolicyDelta = Nothing
    }

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
newtype QueryAuditableServicesResponse = QueryAuditableServicesResponse'
    { _qasrServices :: Maybe [AuditableService]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueryAuditableServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qasrServices'
queryAuditableServicesResponse
    :: QueryAuditableServicesResponse
queryAuditableServicesResponse =
    QueryAuditableServicesResponse'
    { _qasrServices = Nothing
    }

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
-- up and down over the key\'s lifetime. We recommend caching the public
-- key set for a service account for no more than 24 hours to ensure you
-- have access to the latest keys. Public keys for all service accounts are
-- also published at the OAuth2 Service Account API.
--
-- /See:/ 'serviceAccountKey' smart constructor.
data ServiceAccountKey = ServiceAccountKey'
    { _sakValidAfterTime  :: !(Maybe DateTime')
    , _sakPrivateKeyData  :: !(Maybe Bytes)
    , _sakPublicKeyData   :: !(Maybe Bytes)
    , _sakName            :: !(Maybe Text)
    , _sakPrivateKeyType  :: !(Maybe ServiceAccountKeyPrivateKeyType)
    , _sakValidBeforeTime :: !(Maybe DateTime')
    , _sakKeyAlgorithm    :: !(Maybe ServiceAccountKeyKeyAlgorithm)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceAccountKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sakValidAfterTime'
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
serviceAccountKey
    :: ServiceAccountKey
serviceAccountKey =
    ServiceAccountKey'
    { _sakValidAfterTime = Nothing
    , _sakPrivateKeyData = Nothing
    , _sakPublicKeyData = Nothing
    , _sakName = Nothing
    , _sakPrivateKeyType = Nothing
    , _sakValidBeforeTime = Nothing
    , _sakKeyAlgorithm = Nothing
    }

-- | The key can be used after this timestamp.
sakValidAfterTime :: Lens' ServiceAccountKey (Maybe UTCTime)
sakValidAfterTime
  = lens _sakValidAfterTime
      (\ s a -> s{_sakValidAfterTime = a})
      . mapping _DateTime

-- | The private key data. Only provided in \`CreateServiceAccountKey\`
-- responses. Make sure to keep the private key data secure because it
-- allows for the assertion of the service account identity. When base64
-- decoded, the private key data can be used to authenticate with Google
-- API client libraries and with
-- </sdk/gcloud/reference/auth/activate-service-account gcloud auth activate-service-account>.
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

-- | The key can be used before this timestamp.
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

instance FromJSON ServiceAccountKey where
        parseJSON
          = withObject "ServiceAccountKey"
              (\ o ->
                 ServiceAccountKey' <$>
                   (o .:? "validAfterTime") <*> (o .:? "privateKeyData")
                     <*> (o .:? "publicKeyData")
                     <*> (o .:? "name")
                     <*> (o .:? "privateKeyType")
                     <*> (o .:? "validBeforeTime")
                     <*> (o .:? "keyAlgorithm"))

instance ToJSON ServiceAccountKey where
        toJSON ServiceAccountKey'{..}
          = object
              (catMaybes
                 [("validAfterTime" .=) <$> _sakValidAfterTime,
                  ("privateKeyData" .=) <$> _sakPrivateKeyData,
                  ("publicKeyData" .=) <$> _sakPublicKeyData,
                  ("name" .=) <$> _sakName,
                  ("privateKeyType" .=) <$> _sakPrivateKeyType,
                  ("validBeforeTime" .=) <$> _sakValidBeforeTime,
                  ("keyAlgorithm" .=) <$> _sakKeyAlgorithm])

-- | Structured response of a single validation unit.
--
-- /See:/ 'lintResult' smart constructor.
data LintResult = LintResult'
    { _lrValidationUnitName :: !(Maybe Text)
    , _lrDebugMessage       :: !(Maybe Text)
    , _lrLocationOffSet     :: !(Maybe (Textual Int32))
    , _lrSeverity           :: !(Maybe LintResultSeverity)
    , _lrBindingOrdinal     :: !(Maybe (Textual Int32))
    , _lrFieldName          :: !(Maybe Text)
    , _lrLevel              :: !(Maybe LintResultLevel)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'lrBindingOrdinal'
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
    , _lrBindingOrdinal = Nothing
    , _lrFieldName = Nothing
    , _lrLevel = Nothing
    }

-- | The validation unit name, for instance
-- “lintValidationUnits\/ConditionComplexityCheck”.
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

-- | 0-based index ordinality of the binding in the input object associated
-- with this result. This field is populated only if the input object to
-- lint is of type google.iam.v1.Policy, which can comprise more than one
-- binding. It is set to -1 if the result is not associated with any
-- particular binding and only targets the policy as a whole, such as
-- results about policy size violations.
lrBindingOrdinal :: Lens' LintResult (Maybe Int32)
lrBindingOrdinal
  = lens _lrBindingOrdinal
      (\ s a -> s{_lrBindingOrdinal = a})
      . mapping _Coerce

-- | The name of the field for which this lint result is about. For nested
-- messages, \`field_name\` consists of names of the embedded fields
-- separated by period character. The top-level qualifier is the input
-- object to lint in the request. For instance, if the lint request is on a
-- google.iam.v1.Policy and this lint result is about a condition
-- expression of one of the input policy bindings, the field would be
-- populated as \`policy.bindings.condition.expression\`. This field does
-- not identify the ordinality of the repetitive fields (for instance
-- bindings in a policy).
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
                     <*> (o .:? "bindingOrdinal")
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
                  ("bindingOrdinal" .=) <$> _lrBindingOrdinal,
                  ("fieldName" .=) <$> _lrFieldName,
                  ("level" .=) <$> _lrLevel])

-- | The service account key create request.
--
-- /See:/ 'createServiceAccountKeyRequest' smart constructor.
data CreateServiceAccountKeyRequest = CreateServiceAccountKeyRequest'
    { _csakrPrivateKeyType :: !(Maybe CreateServiceAccountKeyRequestPrivateKeyType)
    , _csakrKeyAlgorithm   :: !(Maybe CreateServiceAccountKeyRequestKeyAlgorithm)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _csakrPrivateKeyType = Nothing
    , _csakrKeyAlgorithm = Nothing
    }

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
data SetIAMPolicyRequest = SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy     :: !(Maybe Policy)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SetIAMPolicyRequest'
    { _siprUpdateMask = Nothing
    , _siprPolicy = Nothing
    }

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

-- | The service account sign JWT response.
--
-- /See:/ 'signJwtResponse' smart constructor.
data SignJwtResponse = SignJwtResponse'
    { _sjrKeyId     :: !(Maybe Text)
    , _sjrSignedJwt :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SignJwtResponse'
    { _sjrKeyId = Nothing
    , _sjrSignedJwt = Nothing
    }

-- | The id of the key used to sign the JWT.
sjrKeyId :: Lens' SignJwtResponse (Maybe Text)
sjrKeyId = lens _sjrKeyId (\ s a -> s{_sjrKeyId = a})

-- | The signed JWT.
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
data BindingDelta = BindingDelta'
    { _bdAction    :: !(Maybe BindingDeltaAction)
    , _bdRole      :: !(Maybe Text)
    , _bdMember    :: !(Maybe Text)
    , _bdCondition :: !(Maybe Expr)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Unimplemented. The condition that is associated with this binding. This
-- field is logged only for Cloud Audit Logging.
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

-- | \`context\` contains additional *permission-controlled* data that any
-- lint unit may depend on, in form of \`{key: value}\` pairs. Currently,
-- this field is non-operational and it will not be used during the lint
-- operation.
--
-- /See:/ 'lintPolicyRequestContext' smart constructor.
newtype LintPolicyRequestContext = LintPolicyRequestContext'
    { _lprcAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LintPolicyRequestContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprcAddtional'
lintPolicyRequestContext
    :: HashMap Text JSONValue -- ^ 'lprcAddtional'
    -> LintPolicyRequestContext
lintPolicyRequestContext pLprcAddtional_ =
    LintPolicyRequestContext'
    { _lprcAddtional = _Coerce # pLprcAddtional_
    }

-- | Properties of the object.
lprcAddtional :: Lens' LintPolicyRequestContext (HashMap Text JSONValue)
lprcAddtional
  = lens _lprcAddtional
      (\ s a -> s{_lprcAddtional = a})
      . _Coerce

instance FromJSON LintPolicyRequestContext where
        parseJSON
          = withObject "LintPolicyRequestContext"
              (\ o ->
                 LintPolicyRequestContext' <$> (parseJSONObject o))

instance ToJSON LintPolicyRequestContext where
        toJSON = toJSON . _lprcAddtional

-- | The service account sign blob request.
--
-- /See:/ 'signBlobRequest' smart constructor.
newtype SignBlobRequest = SignBlobRequest'
    { _sbrBytesToSign :: Maybe Bytes
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SignBlobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrBytesToSign'
signBlobRequest
    :: SignBlobRequest
signBlobRequest =
    SignBlobRequest'
    { _sbrBytesToSign = Nothing
    }

-- | The bytes to sign.
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
newtype ListServiceAccountKeysResponse = ListServiceAccountKeysResponse'
    { _lsakrKeys :: Maybe [ServiceAccountKey]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListServiceAccountKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsakrKeys'
listServiceAccountKeysResponse
    :: ListServiceAccountKeysResponse
listServiceAccountKeysResponse =
    ListServiceAccountKeysResponse'
    { _lsakrKeys = Nothing
    }

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

-- | A role in the Identity and Access Management API.
--
-- /See:/ 'role'' smart constructor.
data Role = Role'
    { _rStage               :: !(Maybe RoleStage)
    , _rEtag                :: !(Maybe Bytes)
    , _rIncludedPermissions :: !(Maybe [Text])
    , _rName                :: !(Maybe Text)
    , _rDeleted             :: !(Maybe Bool)
    , _rTitle               :: !(Maybe Text)
    , _rDescription         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- roles\/logging.viewer for curated roles and
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

-- | A service account in the Identity and Access Management API. To create a
-- service account, specify the \`project_id\` and the \`account_id\` for
-- the account. The \`account_id\` is unique within the project, and is
-- used to generate the service account email address and a stable
-- \`unique_id\`. If the account already exists, the account\'s resource
-- name is returned in the format of
-- projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}. The caller can use
-- the name in other methods to access the account. All other methods can
-- identify the service account using the format
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Using \`-\` as a
-- wildcard for the \`PROJECT_ID\` will infer the project from the account.
-- The \`ACCOUNT\` value can be the \`email\` address or the \`unique_id\`
-- of the service account.
--
-- /See:/ 'serviceAccount' smart constructor.
data ServiceAccount = ServiceAccount'
    { _saEmail          :: !(Maybe Text)
    , _saEtag           :: !(Maybe Bytes)
    , _saUniqueId       :: !(Maybe Text)
    , _saName           :: !(Maybe Text)
    , _saDisplayName    :: !(Maybe Text)
    , _saProjectId      :: !(Maybe Text)
    , _saOAuth2ClientId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saEmail'
--
-- * 'saEtag'
--
-- * 'saUniqueId'
--
-- * 'saName'
--
-- * 'saDisplayName'
--
-- * 'saProjectId'
--
-- * 'saOAuth2ClientId'
serviceAccount
    :: ServiceAccount
serviceAccount =
    ServiceAccount'
    { _saEmail = Nothing
    , _saEtag = Nothing
    , _saUniqueId = Nothing
    , _saName = Nothing
    , _saDisplayName = Nothing
    , _saProjectId = Nothing
    , _saOAuth2ClientId = Nothing
    }

-- | \'OutputOnly The email address of the service account.
saEmail :: Lens' ServiceAccount (Maybe Text)
saEmail = lens _saEmail (\ s a -> s{_saEmail = a})

-- | Optional. Note: \`etag\` is an inoperable legacy field that is only
-- returned for backwards compatibility.
saEtag :: Lens' ServiceAccount (Maybe ByteString)
saEtag
  = lens _saEtag (\ s a -> s{_saEtag = a}) .
      mapping _Bytes

-- | \'OutputOnly The unique and stable id of the service account.
saUniqueId :: Lens' ServiceAccount (Maybe Text)
saUniqueId
  = lens _saUniqueId (\ s a -> s{_saUniqueId = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Requests using
-- \`-\` as a wildcard for the \`PROJECT_ID\` will infer the project from
-- the \`account\` and the \`ACCOUNT\` value can be the \`email\` address
-- or the \`unique_id\` of the service account. In responses the resource
-- name will always be in the format
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`.
saName :: Lens' ServiceAccount (Maybe Text)
saName = lens _saName (\ s a -> s{_saName = a})

-- | Optional. A user-specified name for the service account. Must be less
-- than or equal to 100 UTF-8 bytes.
saDisplayName :: Lens' ServiceAccount (Maybe Text)
saDisplayName
  = lens _saDisplayName
      (\ s a -> s{_saDisplayName = a})

-- | \'OutputOnly The id of the project that owns the service account.
saProjectId :: Lens' ServiceAccount (Maybe Text)
saProjectId
  = lens _saProjectId (\ s a -> s{_saProjectId = a})

-- | \'OutputOnly The OAuth2 client id for the service account. This is used
-- in conjunction with the OAuth2 clientconfig API to make three legged
-- OAuth2 (3LO) flows to access the data of Google users.
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
                     (o .:? "uniqueId")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "projectId")
                     <*> (o .:? "oauth2ClientId"))

instance ToJSON ServiceAccount where
        toJSON ServiceAccount'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _saEmail, ("etag" .=) <$> _saEtag,
                  ("uniqueId" .=) <$> _saUniqueId,
                  ("name" .=) <$> _saName,
                  ("displayName" .=) <$> _saDisplayName,
                  ("projectId" .=) <$> _saProjectId,
                  ("oauth2ClientId" .=) <$> _saOAuth2ClientId])

-- | A request to get permissions which can be tested on a resource.
--
-- /See:/ 'queryTestablePermissionsRequest' smart constructor.
data QueryTestablePermissionsRequest = QueryTestablePermissionsRequest'
    { _qtprFullResourceName :: !(Maybe Text)
    , _qtprPageToken        :: !(Maybe Text)
    , _qtprPageSize         :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The grantable role query response.
--
-- /See:/ 'queryGrantableRolesResponse' smart constructor.
data QueryGrantableRolesResponse = QueryGrantableRolesResponse'
    { _qgrrRoles         :: !(Maybe [Role])
    , _qgrrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _qgrrRoles = Nothing
    , _qgrrNextPageToken = Nothing
    }

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
newtype TestIAMPermissionsRequest = TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
    TestIAMPermissionsRequest'
    { _tiprPermissions = Nothing
    }

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
newtype TestIAMPermissionsResponse = TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
    TestIAMPermissionsResponse'
    { _tiamprPermissions = Nothing
    }

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
data Policy = Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag         :: !(Maybe Bytes)
    , _pVersion      :: !(Maybe (Textual Int32))
    , _pBindings     :: !(Maybe [Binding])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The difference delta between two policies.
--
-- /See:/ 'policyDelta' smart constructor.
newtype PolicyDelta = PolicyDelta'
    { _pdBindingDeltas :: Maybe [BindingDelta]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PolicyDelta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdBindingDeltas'
policyDelta
    :: PolicyDelta
policyDelta =
    PolicyDelta'
    { _pdBindingDeltas = Nothing
    }

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
data QueryGrantableRolesRequest = QueryGrantableRolesRequest'
    { _qgrrFullResourceName :: !(Maybe Text)
    , _qgrrView             :: !(Maybe QueryGrantableRolesRequestView)
    , _qgrrPageToken        :: !(Maybe Text)
    , _qgrrPageSize         :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Optional limit on the number of roles to include in the response.
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

-- | The service account sign JWT request.
--
-- /See:/ 'signJwtRequest' smart constructor.
newtype SignJwtRequest = SignJwtRequest'
    { _sjrPayload :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SignJwtRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrPayload'
signJwtRequest
    :: SignJwtRequest
signJwtRequest =
    SignJwtRequest'
    { _sjrPayload = Nothing
    }

-- | The JWT payload to sign, a JSON JWT Claim set.
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

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting foo\'gmail.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig'
    { _alcLogType         :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AuditLogConfig'
    { _alcLogType = Nothing
    , _alcExemptedMembers = Nothing
    }

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
data Permission = Permission'
    { _pStage                   :: !(Maybe PermissionStage)
    , _pOnlyInPredefinedRoles   :: !(Maybe Bool)
    , _pCustomRolesSupportLevel :: !(Maybe PermissionCustomRolesSupportLevel)
    , _pName                    :: !(Maybe Text)
    , _pTitle                   :: !(Maybe Text)
    , _pAPIdisabled             :: !(Maybe Bool)
    , _pDescription             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pStage'
--
-- * 'pOnlyInPredefinedRoles'
--
-- * 'pCustomRolesSupportLevel'
--
-- * 'pName'
--
-- * 'pTitle'
--
-- * 'pAPIdisabled'
--
-- * 'pDescription'
permission
    :: Permission
permission =
    Permission'
    { _pStage = Nothing
    , _pOnlyInPredefinedRoles = Nothing
    , _pCustomRolesSupportLevel = Nothing
    , _pName = Nothing
    , _pTitle = Nothing
    , _pAPIdisabled = Nothing
    , _pDescription = Nothing
    }

-- | The current launch stage of the permission.
pStage :: Lens' Permission (Maybe PermissionStage)
pStage = lens _pStage (\ s a -> s{_pStage = a})

-- | This permission can ONLY be used in predefined roles.
pOnlyInPredefinedRoles :: Lens' Permission (Maybe Bool)
pOnlyInPredefinedRoles
  = lens _pOnlyInPredefinedRoles
      (\ s a -> s{_pOnlyInPredefinedRoles = a})

-- | The current custom role support level.
pCustomRolesSupportLevel :: Lens' Permission (Maybe PermissionCustomRolesSupportLevel)
pCustomRolesSupportLevel
  = lens _pCustomRolesSupportLevel
      (\ s a -> s{_pCustomRolesSupportLevel = a})

-- | The name of this Permission.
pName :: Lens' Permission (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | The title of this Permission.
pTitle :: Lens' Permission (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

-- | The service API associated with the permission is not enabled.
pAPIdisabled :: Lens' Permission (Maybe Bool)
pAPIdisabled
  = lens _pAPIdisabled (\ s a -> s{_pAPIdisabled = a})

-- | A brief description of what this Permission is used for.
pDescription :: Lens' Permission (Maybe Text)
pDescription
  = lens _pDescription (\ s a -> s{_pDescription = a})

instance FromJSON Permission where
        parseJSON
          = withObject "Permission"
              (\ o ->
                 Permission' <$>
                   (o .:? "stage") <*> (o .:? "onlyInPredefinedRoles")
                     <*> (o .:? "customRolesSupportLevel")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "apiDisabled")
                     <*> (o .:? "description"))

instance ToJSON Permission where
        toJSON Permission'{..}
          = object
              (catMaybes
                 [("stage" .=) <$> _pStage,
                  ("onlyInPredefinedRoles" .=) <$>
                    _pOnlyInPredefinedRoles,
                  ("customRolesSupportLevel" .=) <$>
                    _pCustomRolesSupportLevel,
                  ("name" .=) <$> _pName, ("title" .=) <$> _pTitle,
                  ("apiDisabled" .=) <$> _pAPIdisabled,
                  ("description" .=) <$> _pDescription])

-- | The service account sign blob response.
--
-- /See:/ 'signBlobResponse' smart constructor.
data SignBlobResponse = SignBlobResponse'
    { _sbrSignature :: !(Maybe Bytes)
    , _sbrKeyId     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SignBlobResponse'
    { _sbrSignature = Nothing
    , _sbrKeyId = Nothing
    }

-- | The signed blob.
sbrSignature :: Lens' SignBlobResponse (Maybe ByteString)
sbrSignature
  = lens _sbrSignature (\ s a -> s{_sbrSignature = a})
      . mapping _Bytes

-- | The id of the key used to sign the blob.
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
data ListServiceAccountsResponse = ListServiceAccountsResponse'
    { _lsarNextPageToken :: !(Maybe Text)
    , _lsarAccounts      :: !(Maybe [ServiceAccount])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _lsarNextPageToken = Nothing
    , _lsarAccounts = Nothing
    }

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

-- | The request to lint a Cloud IAM policy object. LintPolicy is currently
-- functional only for \`lint_object\` of type \`condition\`.
--
-- /See:/ 'lintPolicyRequest' smart constructor.
data LintPolicyRequest = LintPolicyRequest'
    { _lprContext          :: !(Maybe LintPolicyRequestContext)
    , _lprFullResourceName :: !(Maybe Text)
    , _lprPolicy           :: !(Maybe Policy)
    , _lprCondition        :: !(Maybe Expr)
    , _lprBinding          :: !(Maybe Binding)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LintPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprContext'
--
-- * 'lprFullResourceName'
--
-- * 'lprPolicy'
--
-- * 'lprCondition'
--
-- * 'lprBinding'
lintPolicyRequest
    :: LintPolicyRequest
lintPolicyRequest =
    LintPolicyRequest'
    { _lprContext = Nothing
    , _lprFullResourceName = Nothing
    , _lprPolicy = Nothing
    , _lprCondition = Nothing
    , _lprBinding = Nothing
    }

-- | \`context\` contains additional *permission-controlled* data that any
-- lint unit may depend on, in form of \`{key: value}\` pairs. Currently,
-- this field is non-operational and it will not be used during the lint
-- operation.
lprContext :: Lens' LintPolicyRequest (Maybe LintPolicyRequestContext)
lprContext
  = lens _lprContext (\ s a -> s{_lprContext = a})

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

-- | Policy object to be linted. The functionality of linting a policy is not
-- yet implemented and if this field is set, it returns NOT_IMPLEMENTED
-- error.
lprPolicy :: Lens' LintPolicyRequest (Maybe Policy)
lprPolicy
  = lens _lprPolicy (\ s a -> s{_lprPolicy = a})

-- | google.iam.v1.Binding.condition object to be linted.
lprCondition :: Lens' LintPolicyRequest (Maybe Expr)
lprCondition
  = lens _lprCondition (\ s a -> s{_lprCondition = a})

-- | Binding object to be linted. The functionality of linting a binding is
-- not yet implemented and if this field is set, it returns NOT_IMPLEMENTED
-- error.
lprBinding :: Lens' LintPolicyRequest (Maybe Binding)
lprBinding
  = lens _lprBinding (\ s a -> s{_lprBinding = a})

instance FromJSON LintPolicyRequest where
        parseJSON
          = withObject "LintPolicyRequest"
              (\ o ->
                 LintPolicyRequest' <$>
                   (o .:? "context") <*> (o .:? "fullResourceName") <*>
                     (o .:? "policy")
                     <*> (o .:? "condition")
                     <*> (o .:? "binding"))

instance ToJSON LintPolicyRequest where
        toJSON LintPolicyRequest'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _lprContext,
                  ("fullResourceName" .=) <$> _lprFullResourceName,
                  ("policy" .=) <$> _lprPolicy,
                  ("condition" .=) <$> _lprCondition,
                  ("binding" .=) <$> _lprBinding])

-- | The response containing the roles defined under a resource.
--
-- /See:/ 'listRolesResponse' smart constructor.
data ListRolesResponse = ListRolesResponse'
    { _lrrRoles         :: !(Maybe [Role])
    , _lrrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListRolesResponse'
    { _lrrRoles = Nothing
    , _lrrNextPageToken = Nothing
    }

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

-- | The service account create request.
--
-- /See:/ 'createServiceAccountRequest' smart constructor.
data CreateServiceAccountRequest = CreateServiceAccountRequest'
    { _csarServiceAccount :: !(Maybe ServiceAccount)
    , _csarAccountId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _csarServiceAccount = Nothing
    , _csarAccountId = Nothing
    }

-- | The ServiceAccount resource to create. Currently, only the following
-- values are user assignable: \`display_name\` .
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

-- | The request to create a new role.
--
-- /See:/ 'createRoleRequest' smart constructor.
data CreateRoleRequest = CreateRoleRequest'
    { _crrRoleId :: !(Maybe Text)
    , _crrRole   :: !(Maybe Role)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CreateRoleRequest'
    { _crrRoleId = Nothing
    , _crrRole = Nothing
    }

-- | The role id to use for this role.
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

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding = Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Binding'
    { _bMembers = Nothing
    , _bRole = Nothing
    , _bCondition = Nothing
    }

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
