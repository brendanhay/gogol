{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SourceRepo.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SourceRepo.Types.Product where

import           Network.Google.Prelude
import           Network.Google.SourceRepo.Types.Sum

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

-- | Cloud Source Repositories configuration of a project.
--
-- /See:/ 'projectConfig' smart constructor.
data ProjectConfig =
  ProjectConfig'
    { _pcPubsubConfigs         :: !(Maybe ProjectConfigPubsubConfigs)
    , _pcEnablePrivateKeyCheck :: !(Maybe Bool)
    , _pcName                  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcPubsubConfigs'
--
-- * 'pcEnablePrivateKeyCheck'
--
-- * 'pcName'
projectConfig
    :: ProjectConfig
projectConfig =
  ProjectConfig'
    { _pcPubsubConfigs = Nothing
    , _pcEnablePrivateKeyCheck = Nothing
    , _pcName = Nothing
    }


-- | How this project publishes a change in the repositories through Cloud
-- Pub\/Sub. Keyed by the topic names.
pcPubsubConfigs :: Lens' ProjectConfig (Maybe ProjectConfigPubsubConfigs)
pcPubsubConfigs
  = lens _pcPubsubConfigs
      (\ s a -> s{_pcPubsubConfigs = a})

-- | Reject a Git push that contains a private key.
pcEnablePrivateKeyCheck :: Lens' ProjectConfig (Maybe Bool)
pcEnablePrivateKeyCheck
  = lens _pcEnablePrivateKeyCheck
      (\ s a -> s{_pcEnablePrivateKeyCheck = a})

-- | The name of the project. Values are of the form \`projects\/\`.
pcName :: Lens' ProjectConfig (Maybe Text)
pcName = lens _pcName (\ s a -> s{_pcName = a})

instance FromJSON ProjectConfig where
        parseJSON
          = withObject "ProjectConfig"
              (\ o ->
                 ProjectConfig' <$>
                   (o .:? "pubsubConfigs") <*>
                     (o .:? "enablePrivateKeyCheck")
                     <*> (o .:? "name"))

instance ToJSON ProjectConfig where
        toJSON ProjectConfig'{..}
          = object
              (catMaybes
                 [("pubsubConfigs" .=) <$> _pcPubsubConfigs,
                  ("enablePrivateKeyCheck" .=) <$>
                    _pcEnablePrivateKeyCheck,
                  ("name" .=) <$> _pcName])

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

-- | Response for ListRepos. The size is not set in the returned
-- repositories.
--
-- /See:/ 'listReposResponse' smart constructor.
data ListReposResponse =
  ListReposResponse'
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrRepos         :: !(Maybe [Repo])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListReposResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrRepos'
listReposResponse
    :: ListReposResponse
listReposResponse =
  ListReposResponse' {_lrrNextPageToken = Nothing, _lrrRepos = Nothing}


-- | If non-empty, additional repositories exist within the project. These
-- can be retrieved by including this value in the next ListReposRequest\'s
-- page_token field.
lrrNextPageToken :: Lens' ListReposResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | The listed repos.
lrrRepos :: Lens' ListReposResponse [Repo]
lrrRepos
  = lens _lrrRepos (\ s a -> s{_lrrRepos = a}) .
      _Default
      . _Coerce

instance FromJSON ListReposResponse where
        parseJSON
          = withObject "ListReposResponse"
              (\ o ->
                 ListReposResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "repos" .!= mempty))

instance ToJSON ListReposResponse where
        toJSON ListReposResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("repos" .=) <$> _lrrRepos])

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

-- | Request for UpdateRepo.
--
-- /See:/ 'updateRepoRequest' smart constructor.
data UpdateRepoRequest =
  UpdateRepoRequest'
    { _urrUpdateMask :: !(Maybe GFieldMask)
    , _urrRepo       :: !(Maybe Repo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateRepoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrUpdateMask'
--
-- * 'urrRepo'
updateRepoRequest
    :: UpdateRepoRequest
updateRepoRequest =
  UpdateRepoRequest' {_urrUpdateMask = Nothing, _urrRepo = Nothing}


-- | A FieldMask specifying which fields of the repo to modify. Only the
-- fields in the mask will be modified. If no mask is provided, this
-- request is no-op.
urrUpdateMask :: Lens' UpdateRepoRequest (Maybe GFieldMask)
urrUpdateMask
  = lens _urrUpdateMask
      (\ s a -> s{_urrUpdateMask = a})

-- | The new configuration for the repository.
urrRepo :: Lens' UpdateRepoRequest (Maybe Repo)
urrRepo = lens _urrRepo (\ s a -> s{_urrRepo = a})

instance FromJSON UpdateRepoRequest where
        parseJSON
          = withObject "UpdateRepoRequest"
              (\ o ->
                 UpdateRepoRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "repo"))

instance ToJSON UpdateRepoRequest where
        toJSON UpdateRepoRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _urrUpdateMask,
                  ("repo" .=) <$> _urrRepo])

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

-- | Configuration to publish a Cloud Pub\/Sub message.
--
-- /See:/ 'pubsubConfig' smart constructor.
data PubsubConfig =
  PubsubConfig'
    { _pcTopic               :: !(Maybe Text)
    , _pcServiceAccountEmail :: !(Maybe Text)
    , _pcMessageFormat       :: !(Maybe PubsubConfigMessageFormat)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcTopic'
--
-- * 'pcServiceAccountEmail'
--
-- * 'pcMessageFormat'
pubsubConfig
    :: PubsubConfig
pubsubConfig =
  PubsubConfig'
    { _pcTopic = Nothing
    , _pcServiceAccountEmail = Nothing
    , _pcMessageFormat = Nothing
    }


-- | A topic of Cloud Pub\/Sub. Values are of the form
-- \`projects\/\/topics\/\`. The project needs to be the same project as
-- this config is in.
pcTopic :: Lens' PubsubConfig (Maybe Text)
pcTopic = lens _pcTopic (\ s a -> s{_pcTopic = a})

-- | Email address of the service account used for publishing Cloud Pub\/Sub
-- messages. This service account needs to be in the same project as the
-- PubsubConfig. When added, the caller needs to have
-- iam.serviceAccounts.actAs permission on this service account. If
-- unspecified, it defaults to the compute engine default service account.
pcServiceAccountEmail :: Lens' PubsubConfig (Maybe Text)
pcServiceAccountEmail
  = lens _pcServiceAccountEmail
      (\ s a -> s{_pcServiceAccountEmail = a})

-- | The format of the Cloud Pub\/Sub messages.
pcMessageFormat :: Lens' PubsubConfig (Maybe PubsubConfigMessageFormat)
pcMessageFormat
  = lens _pcMessageFormat
      (\ s a -> s{_pcMessageFormat = a})

instance FromJSON PubsubConfig where
        parseJSON
          = withObject "PubsubConfig"
              (\ o ->
                 PubsubConfig' <$>
                   (o .:? "topic") <*> (o .:? "serviceAccountEmail") <*>
                     (o .:? "messageFormat"))

instance ToJSON PubsubConfig where
        toJSON PubsubConfig'{..}
          = object
              (catMaybes
                 [("topic" .=) <$> _pcTopic,
                  ("serviceAccountEmail" .=) <$>
                    _pcServiceAccountEmail,
                  ("messageFormat" .=) <$> _pcMessageFormat])

-- | Request for UpdateProjectConfig.
--
-- /See:/ 'updateProjectConfigRequest' smart constructor.
data UpdateProjectConfigRequest =
  UpdateProjectConfigRequest'
    { _upcrProjectConfig :: !(Maybe ProjectConfig)
    , _upcrUpdateMask    :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateProjectConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upcrProjectConfig'
--
-- * 'upcrUpdateMask'
updateProjectConfigRequest
    :: UpdateProjectConfigRequest
updateProjectConfigRequest =
  UpdateProjectConfigRequest'
    {_upcrProjectConfig = Nothing, _upcrUpdateMask = Nothing}


-- | The new configuration for the project.
upcrProjectConfig :: Lens' UpdateProjectConfigRequest (Maybe ProjectConfig)
upcrProjectConfig
  = lens _upcrProjectConfig
      (\ s a -> s{_upcrProjectConfig = a})

-- | A FieldMask specifying which fields of the project_config to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- this request is no-op.
upcrUpdateMask :: Lens' UpdateProjectConfigRequest (Maybe GFieldMask)
upcrUpdateMask
  = lens _upcrUpdateMask
      (\ s a -> s{_upcrUpdateMask = a})

instance FromJSON UpdateProjectConfigRequest where
        parseJSON
          = withObject "UpdateProjectConfigRequest"
              (\ o ->
                 UpdateProjectConfigRequest' <$>
                   (o .:? "projectConfig") <*> (o .:? "updateMask"))

instance ToJSON UpdateProjectConfigRequest where
        toJSON UpdateProjectConfigRequest'{..}
          = object
              (catMaybes
                 [("projectConfig" .=) <$> _upcrProjectConfig,
                  ("updateMask" .=) <$> _upcrUpdateMask])

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

-- | How this repository publishes a change in the repository through Cloud
-- Pub\/Sub. Keyed by the topic names.
--
-- /See:/ 'repoPubsubConfigs' smart constructor.
newtype RepoPubsubConfigs =
  RepoPubsubConfigs'
    { _rpcAddtional :: HashMap Text PubsubConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepoPubsubConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpcAddtional'
repoPubsubConfigs
    :: HashMap Text PubsubConfig -- ^ 'rpcAddtional'
    -> RepoPubsubConfigs
repoPubsubConfigs pRpcAddtional_ =
  RepoPubsubConfigs' {_rpcAddtional = _Coerce # pRpcAddtional_}


rpcAddtional :: Lens' RepoPubsubConfigs (HashMap Text PubsubConfig)
rpcAddtional
  = lens _rpcAddtional (\ s a -> s{_rpcAddtional = a})
      . _Coerce

instance FromJSON RepoPubsubConfigs where
        parseJSON
          = withObject "RepoPubsubConfigs"
              (\ o -> RepoPubsubConfigs' <$> (parseJSONObject o))

instance ToJSON RepoPubsubConfigs where
        toJSON = toJSON . _rpcAddtional

-- | How this project publishes a change in the repositories through Cloud
-- Pub\/Sub. Keyed by the topic names.
--
-- /See:/ 'projectConfigPubsubConfigs' smart constructor.
newtype ProjectConfigPubsubConfigs =
  ProjectConfigPubsubConfigs'
    { _pcpcAddtional :: HashMap Text PubsubConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectConfigPubsubConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcpcAddtional'
projectConfigPubsubConfigs
    :: HashMap Text PubsubConfig -- ^ 'pcpcAddtional'
    -> ProjectConfigPubsubConfigs
projectConfigPubsubConfigs pPcpcAddtional_ =
  ProjectConfigPubsubConfigs' {_pcpcAddtional = _Coerce # pPcpcAddtional_}


pcpcAddtional :: Lens' ProjectConfigPubsubConfigs (HashMap Text PubsubConfig)
pcpcAddtional
  = lens _pcpcAddtional
      (\ s a -> s{_pcpcAddtional = a})
      . _Coerce

instance FromJSON ProjectConfigPubsubConfigs where
        parseJSON
          = withObject "ProjectConfigPubsubConfigs"
              (\ o ->
                 ProjectConfigPubsubConfigs' <$> (parseJSONObject o))

instance ToJSON ProjectConfigPubsubConfigs where
        toJSON = toJSON . _pcpcAddtional

-- | A repository (or repo) is a Git repository storing versioned source
-- content.
--
-- /See:/ 'repo' smart constructor.
data Repo =
  Repo'
    { _rPubsubConfigs :: !(Maybe RepoPubsubConfigs)
    , _rSize          :: !(Maybe (Textual Int64))
    , _rURL           :: !(Maybe Text)
    , _rName          :: !(Maybe Text)
    , _rMirrorConfig  :: !(Maybe MirrorConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Repo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rPubsubConfigs'
--
-- * 'rSize'
--
-- * 'rURL'
--
-- * 'rName'
--
-- * 'rMirrorConfig'
repo
    :: Repo
repo =
  Repo'
    { _rPubsubConfigs = Nothing
    , _rSize = Nothing
    , _rURL = Nothing
    , _rName = Nothing
    , _rMirrorConfig = Nothing
    }


-- | How this repository publishes a change in the repository through Cloud
-- Pub\/Sub. Keyed by the topic names.
rPubsubConfigs :: Lens' Repo (Maybe RepoPubsubConfigs)
rPubsubConfigs
  = lens _rPubsubConfigs
      (\ s a -> s{_rPubsubConfigs = a})

-- | The disk usage of the repo, in bytes. Read-only field. Size is only
-- returned by GetRepo.
rSize :: Lens' Repo (Maybe Int64)
rSize
  = lens _rSize (\ s a -> s{_rSize = a}) .
      mapping _Coerce

-- | URL to clone the repository from Google Cloud Source Repositories.
-- Read-only field.
rURL :: Lens' Repo (Maybe Text)
rURL = lens _rURL (\ s a -> s{_rURL = a})

-- | Resource name of the repository, of the form \`projects\/\/repos\/\`.
-- The repo name may contain slashes. eg,
-- \`projects\/myproject\/repos\/name\/with\/slash\`
rName :: Lens' Repo (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | How this repository mirrors a repository managed by another service.
-- Read-only field.
rMirrorConfig :: Lens' Repo (Maybe MirrorConfig)
rMirrorConfig
  = lens _rMirrorConfig
      (\ s a -> s{_rMirrorConfig = a})

instance FromJSON Repo where
        parseJSON
          = withObject "Repo"
              (\ o ->
                 Repo' <$>
                   (o .:? "pubsubConfigs") <*> (o .:? "size") <*>
                     (o .:? "url")
                     <*> (o .:? "name")
                     <*> (o .:? "mirrorConfig"))

instance ToJSON Repo where
        toJSON Repo'{..}
          = object
              (catMaybes
                 [("pubsubConfigs" .=) <$> _rPubsubConfigs,
                  ("size" .=) <$> _rSize, ("url" .=) <$> _rURL,
                  ("name" .=) <$> _rName,
                  ("mirrorConfig" .=) <$> _rMirrorConfig])

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

-- | Configuration to automatically mirror a repository from another hosting
-- service, for example GitHub or Bitbucket.
--
-- /See:/ 'mirrorConfig' smart constructor.
data MirrorConfig =
  MirrorConfig'
    { _mcURL         :: !(Maybe Text)
    , _mcDeployKeyId :: !(Maybe Text)
    , _mcWebhookId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MirrorConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcURL'
--
-- * 'mcDeployKeyId'
--
-- * 'mcWebhookId'
mirrorConfig
    :: MirrorConfig
mirrorConfig =
  MirrorConfig'
    {_mcURL = Nothing, _mcDeployKeyId = Nothing, _mcWebhookId = Nothing}


-- | URL of the main repository at the other hosting service.
mcURL :: Lens' MirrorConfig (Maybe Text)
mcURL = lens _mcURL (\ s a -> s{_mcURL = a})

-- | ID of the SSH deploy key at the other hosting service. Removing this key
-- from the other service would deauthorize Google Cloud Source
-- Repositories from mirroring.
mcDeployKeyId :: Lens' MirrorConfig (Maybe Text)
mcDeployKeyId
  = lens _mcDeployKeyId
      (\ s a -> s{_mcDeployKeyId = a})

-- | ID of the webhook listening to updates to trigger mirroring. Removing
-- this webhook from the other hosting service will stop Google Cloud
-- Source Repositories from receiving notifications, and thereby disabling
-- mirroring.
mcWebhookId :: Lens' MirrorConfig (Maybe Text)
mcWebhookId
  = lens _mcWebhookId (\ s a -> s{_mcWebhookId = a})

instance FromJSON MirrorConfig where
        parseJSON
          = withObject "MirrorConfig"
              (\ o ->
                 MirrorConfig' <$>
                   (o .:? "url") <*> (o .:? "deployKeyId") <*>
                     (o .:? "webhookId"))

instance ToJSON MirrorConfig where
        toJSON MirrorConfig'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _mcURL,
                  ("deployKeyId" .=) <$> _mcDeployKeyId,
                  ("webhookId" .=) <$> _mcWebhookId])

-- | Request for SyncRepo.
--
-- /See:/ 'syncRepoRequest' smart constructor.
data SyncRepoRequest =
  SyncRepoRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SyncRepoRequest' with the minimum fields required to make a request.
--
syncRepoRequest
    :: SyncRepoRequest
syncRepoRequest = SyncRepoRequest'


instance FromJSON SyncRepoRequest where
        parseJSON
          = withObject "SyncRepoRequest"
              (\ o -> pure SyncRepoRequest')

instance ToJSON SyncRepoRequest where
        toJSON = const emptyObject

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
