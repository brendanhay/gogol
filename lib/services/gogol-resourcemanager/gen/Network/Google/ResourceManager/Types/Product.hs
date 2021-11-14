{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceManager.Types.Product where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types.Sum

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by UndeleteOrganization.
--
-- /See:/ 'undeleteOrganizationMetadata' smart constructor.
data UndeleteOrganizationMetadata =
  UndeleteOrganizationMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteOrganizationMetadata' with the minimum fields required to make a request.
--
undeleteOrganizationMetadata
    :: UndeleteOrganizationMetadata
undeleteOrganizationMetadata = UndeleteOrganizationMetadata'


instance FromJSON UndeleteOrganizationMetadata where
        parseJSON
          = withObject "UndeleteOrganizationMetadata"
              (\ o -> pure UndeleteOrganizationMetadata')

instance ToJSON UndeleteOrganizationMetadata where
        toJSON = const emptyObject

-- | The ListFolders response message.
--
-- /See:/ 'listFoldersResponse' smart constructor.
data ListFoldersResponse =
  ListFoldersResponse'
    { _lfrNextPageToken :: !(Maybe Text)
    , _lfrFolders :: !(Maybe [Folder])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListFoldersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrNextPageToken'
--
-- * 'lfrFolders'
listFoldersResponse
    :: ListFoldersResponse
listFoldersResponse =
  ListFoldersResponse' {_lfrNextPageToken = Nothing, _lfrFolders = Nothing}


-- | A pagination token returned from a previous call to \`ListFolders\` that
-- indicates from where listing should continue.
lfrNextPageToken :: Lens' ListFoldersResponse (Maybe Text)
lfrNextPageToken
  = lens _lfrNextPageToken
      (\ s a -> s{_lfrNextPageToken = a})

-- | A possibly paginated list of folders that are direct descendants of the
-- specified parent resource.
lfrFolders :: Lens' ListFoldersResponse [Folder]
lfrFolders
  = lens _lfrFolders (\ s a -> s{_lfrFolders = a}) .
      _Default
      . _Coerce

instance FromJSON ListFoldersResponse where
        parseJSON
          = withObject "ListFoldersResponse"
              (\ o ->
                 ListFoldersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "folders" .!= mempty))

instance ToJSON ListFoldersResponse where
        toJSON ListFoldersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lfrNextPageToken,
                  ("folders" .=) <$> _lfrFolders])

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by CreateProject. It provides insight for when
-- significant phases of Project creation have completed.
--
-- /See:/ 'createProjectMetadata' smart constructor.
data CreateProjectMetadata =
  CreateProjectMetadata'
    { _cpmGettable :: !(Maybe Bool)
    , _cpmReady :: !(Maybe Bool)
    , _cpmCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateProjectMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpmGettable'
--
-- * 'cpmReady'
--
-- * 'cpmCreateTime'
createProjectMetadata
    :: CreateProjectMetadata
createProjectMetadata =
  CreateProjectMetadata'
    {_cpmGettable = Nothing, _cpmReady = Nothing, _cpmCreateTime = Nothing}


-- | True if the project can be retrieved using \`GetProject\`. No other
-- operations on the project are guaranteed to work until the project
-- creation is complete.
cpmGettable :: Lens' CreateProjectMetadata (Maybe Bool)
cpmGettable
  = lens _cpmGettable (\ s a -> s{_cpmGettable = a})

-- | True if the project creation process is complete.
cpmReady :: Lens' CreateProjectMetadata (Maybe Bool)
cpmReady = lens _cpmReady (\ s a -> s{_cpmReady = a})

-- | Creation time of the project creation workflow.
cpmCreateTime :: Lens' CreateProjectMetadata (Maybe UTCTime)
cpmCreateTime
  = lens _cpmCreateTime
      (\ s a -> s{_cpmCreateTime = a})
      . mapping _DateTime

instance FromJSON CreateProjectMetadata where
        parseJSON
          = withObject "CreateProjectMetadata"
              (\ o ->
                 CreateProjectMetadata' <$>
                   (o .:? "gettable") <*> (o .:? "ready") <*>
                     (o .:? "createTime"))

instance ToJSON CreateProjectMetadata where
        toJSON CreateProjectMetadata'{..}
          = object
              (catMaybes
                 [("gettable" .=) <$> _cpmGettable,
                  ("ready" .=) <$> _cpmReady,
                  ("createTime" .=) <$> _cpmCreateTime])

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

-- | A page of the response received from the ListProjects method. A
-- paginated response where more pages are available has
-- \`next_page_token\` set. This token can be used in a subsequent request
-- to retrieve the next request page. NOTE: A response may contain fewer
-- elements than the request \`page_size\` and still have a
-- \`next_page_token\`.
--
-- /See:/ 'listProjectsResponse' smart constructor.
data ListProjectsResponse =
  ListProjectsResponse'
    { _lprNextPageToken :: !(Maybe Text)
    , _lprProjects :: !(Maybe [Project])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListProjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprNextPageToken'
--
-- * 'lprProjects'
listProjectsResponse
    :: ListProjectsResponse
listProjectsResponse =
  ListProjectsResponse' {_lprNextPageToken = Nothing, _lprProjects = Nothing}


-- | Pagination token. If the result set is too large to fit in a single
-- response, this token is returned. It encodes the position of the current
-- result cursor. Feeding this value into a new list request with the
-- \`page_token\` parameter gives the next page of the results. When
-- \`next_page_token\` is not filled in, there is no next page and the list
-- returned is the last page in the result set. Pagination tokens have a
-- limited lifetime.
lprNextPageToken :: Lens' ListProjectsResponse (Maybe Text)
lprNextPageToken
  = lens _lprNextPageToken
      (\ s a -> s{_lprNextPageToken = a})

-- | The list of Projects under the parent. This list can be paginated.
lprProjects :: Lens' ListProjectsResponse [Project]
lprProjects
  = lens _lprProjects (\ s a -> s{_lprProjects = a}) .
      _Default
      . _Coerce

instance FromJSON ListProjectsResponse where
        parseJSON
          = withObject "ListProjectsResponse"
              (\ o ->
                 ListProjectsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "projects" .!= mempty))

instance ToJSON ListProjectsResponse where
        toJSON ListProjectsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lprNextPageToken,
                  ("projects" .=) <$> _lprProjects])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
newtype GetIAMPolicyRequest =
  GetIAMPolicyRequest'
    { _giprOptions :: Maybe GetPolicyOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprOptions'
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest' {_giprOptions = Nothing}


-- | OPTIONAL: A \`GetPolicyOptions\` object for specifying options to
-- \`GetIamPolicy\`.
giprOptions :: Lens' GetIAMPolicyRequest (Maybe GetPolicyOptions)
giprOptions
  = lens _giprOptions (\ s a -> s{_giprOptions = a})

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> GetIAMPolicyRequest' <$> (o .:? "options"))

instance ToJSON GetIAMPolicyRequest where
        toJSON GetIAMPolicyRequest'{..}
          = object
              (catMaybes [("options" .=) <$> _giprOptions])

-- | The UndeleteFolder request message.
--
-- /See:/ 'undeleteFolderRequest' smart constructor.
data UndeleteFolderRequest =
  UndeleteFolderRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteFolderRequest' with the minimum fields required to make a request.
--
undeleteFolderRequest
    :: UndeleteFolderRequest
undeleteFolderRequest = UndeleteFolderRequest'


instance FromJSON UndeleteFolderRequest where
        parseJSON
          = withObject "UndeleteFolderRequest"
              (\ o -> pure UndeleteFolderRequest')

instance ToJSON UndeleteFolderRequest where
        toJSON = const emptyObject

-- | Runtime operation information for deleting a TagValue.
--
-- /See:/ 'deleteTagValueMetadata' smart constructor.
data DeleteTagValueMetadata =
  DeleteTagValueMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteTagValueMetadata' with the minimum fields required to make a request.
--
deleteTagValueMetadata
    :: DeleteTagValueMetadata
deleteTagValueMetadata = DeleteTagValueMetadata'


instance FromJSON DeleteTagValueMetadata where
        parseJSON
          = withObject "DeleteTagValueMetadata"
              (\ o -> pure DeleteTagValueMetadata')

instance ToJSON DeleteTagValueMetadata where
        toJSON = const emptyObject

-- | Runtime operation information for updating a TagValue.
--
-- /See:/ 'updateTagValueMetadata' smart constructor.
data UpdateTagValueMetadata =
  UpdateTagValueMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateTagValueMetadata' with the minimum fields required to make a request.
--
updateTagValueMetadata
    :: UpdateTagValueMetadata
updateTagValueMetadata = UpdateTagValueMetadata'


instance FromJSON UpdateTagValueMetadata where
        parseJSON
          = withObject "UpdateTagValueMetadata"
              (\ o -> pure UpdateTagValueMetadata')

instance ToJSON UpdateTagValueMetadata where
        toJSON = const emptyObject

-- | A project is a high-level Google Cloud entity. It is a container for
-- ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform
-- resources.
--
-- /See:/ 'project' smart constructor.
data Project =
  Project'
    { _pParent :: !(Maybe Text)
    , _pEtag :: !(Maybe Text)
    , _pState :: !(Maybe ProjectState)
    , _pUpdateTime :: !(Maybe DateTime')
    , _pDeleteTime :: !(Maybe DateTime')
    , _pName :: !(Maybe Text)
    , _pDisplayName :: !(Maybe Text)
    , _pLabels :: !(Maybe ProjectLabels)
    , _pProjectId :: !(Maybe Text)
    , _pCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pEtag'
--
-- * 'pState'
--
-- * 'pUpdateTime'
--
-- * 'pDeleteTime'
--
-- * 'pName'
--
-- * 'pDisplayName'
--
-- * 'pLabels'
--
-- * 'pProjectId'
--
-- * 'pCreateTime'
project
    :: Project
project =
  Project'
    { _pParent = Nothing
    , _pEtag = Nothing
    , _pState = Nothing
    , _pUpdateTime = Nothing
    , _pDeleteTime = Nothing
    , _pName = Nothing
    , _pDisplayName = Nothing
    , _pLabels = Nothing
    , _pProjectId = Nothing
    , _pCreateTime = Nothing
    }


-- | Optional. A reference to a parent Resource. eg., \`organizations\/123\`
-- or \`folders\/876\`.
pParent :: Lens' Project (Maybe Text)
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | Output only. A checksum computed by the server based on the current
-- value of the Project resource. This may be sent on update and delete
-- requests to ensure the client has an up-to-date value before proceeding.
pEtag :: Lens' Project (Maybe Text)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | Output only. The project lifecycle state.
pState :: Lens' Project (Maybe ProjectState)
pState = lens _pState (\ s a -> s{_pState = a})

-- | Output only. The most recent time this resource was modified.
pUpdateTime :: Lens' Project (Maybe UTCTime)
pUpdateTime
  = lens _pUpdateTime (\ s a -> s{_pUpdateTime = a}) .
      mapping _DateTime

-- | Output only. The time at which this resource was requested for deletion.
pDeleteTime :: Lens' Project (Maybe UTCTime)
pDeleteTime
  = lens _pDeleteTime (\ s a -> s{_pDeleteTime = a}) .
      mapping _DateTime

-- | Output only. The unique resource name of the project. It is an int64
-- generated number prefixed by \"projects\/\". Example:
-- \`projects\/415104041262\`
pName :: Lens' Project (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Optional. A user-assigned display name of the project. When present it
-- must be between 4 to 30 characters. Allowed characters are: lowercase
-- and uppercase letters, numbers, hyphen, single-quote, double-quote,
-- space, and exclamation point. Example: \`My Project\`
pDisplayName :: Lens' Project (Maybe Text)
pDisplayName
  = lens _pDisplayName (\ s a -> s{_pDisplayName = a})

-- | Optional. The labels associated with this project. Label keys must be
-- between 1 and 63 characters long and must conform to the following
-- regular expression: \\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?. Label values
-- must be between 0 and 63 characters long and must conform to the regular
-- expression (\\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?)?. No more than 256
-- labels can be associated with a given resource. Clients should store
-- labels in a representation such as JSON that does not depend on specific
-- characters being disallowed. Example: \`\"myBusinessDimension\" :
-- \"businessValue\"\`
pLabels :: Lens' Project (Maybe ProjectLabels)
pLabels = lens _pLabels (\ s a -> s{_pLabels = a})

-- | Immutable. The unique, user-assigned id of the project. It must be 6 to
-- 30 lowercase ASCII letters, digits, or hyphens. It must start with a
-- letter. Trailing hyphens are prohibited. Example: \`tokyo-rain-123\`
pProjectId :: Lens' Project (Maybe Text)
pProjectId
  = lens _pProjectId (\ s a -> s{_pProjectId = a})

-- | Output only. Creation time.
pCreateTime :: Lens' Project (Maybe UTCTime)
pCreateTime
  = lens _pCreateTime (\ s a -> s{_pCreateTime = a}) .
      mapping _DateTime

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ o ->
                 Project' <$>
                   (o .:? "parent") <*> (o .:? "etag") <*>
                     (o .:? "state")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "deleteTime")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "projectId")
                     <*> (o .:? "createTime"))

instance ToJSON Project where
        toJSON Project'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _pParent, ("etag" .=) <$> _pEtag,
                  ("state" .=) <$> _pState,
                  ("updateTime" .=) <$> _pUpdateTime,
                  ("deleteTime" .=) <$> _pDeleteTime,
                  ("name" .=) <$> _pName,
                  ("displayName" .=) <$> _pDisplayName,
                  ("labels" .=) <$> _pLabels,
                  ("projectId" .=) <$> _pProjectId,
                  ("createTime" .=) <$> _pCreateTime])

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

-- | The response message for searching folders.
--
-- /See:/ 'searchFoldersResponse' smart constructor.
data SearchFoldersResponse =
  SearchFoldersResponse'
    { _sfrNextPageToken :: !(Maybe Text)
    , _sfrFolders :: !(Maybe [Folder])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchFoldersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfrNextPageToken'
--
-- * 'sfrFolders'
searchFoldersResponse
    :: SearchFoldersResponse
searchFoldersResponse =
  SearchFoldersResponse' {_sfrNextPageToken = Nothing, _sfrFolders = Nothing}


-- | A pagination token returned from a previous call to \`SearchFolders\`
-- that indicates from where searching should continue.
sfrNextPageToken :: Lens' SearchFoldersResponse (Maybe Text)
sfrNextPageToken
  = lens _sfrNextPageToken
      (\ s a -> s{_sfrNextPageToken = a})

-- | A possibly paginated folder search results. the specified parent
-- resource.
sfrFolders :: Lens' SearchFoldersResponse [Folder]
sfrFolders
  = lens _sfrFolders (\ s a -> s{_sfrFolders = a}) .
      _Default
      . _Coerce

instance FromJSON SearchFoldersResponse where
        parseJSON
          = withObject "SearchFoldersResponse"
              (\ o ->
                 SearchFoldersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "folders" .!= mempty))

instance ToJSON SearchFoldersResponse where
        toJSON SearchFoldersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sfrNextPageToken,
                  ("folders" .=) <$> _sfrFolders])

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by CreateProject. It provides insight for when
-- significant phases of Project creation have completed.
--
-- /See:/ 'projectCreationStatus' smart constructor.
data ProjectCreationStatus =
  ProjectCreationStatus'
    { _pcsGettable :: !(Maybe Bool)
    , _pcsReady :: !(Maybe Bool)
    , _pcsCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectCreationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcsGettable'
--
-- * 'pcsReady'
--
-- * 'pcsCreateTime'
projectCreationStatus
    :: ProjectCreationStatus
projectCreationStatus =
  ProjectCreationStatus'
    {_pcsGettable = Nothing, _pcsReady = Nothing, _pcsCreateTime = Nothing}


-- | True if the project can be retrieved using GetProject. No other
-- operations on the project are guaranteed to work until the project
-- creation is complete.
pcsGettable :: Lens' ProjectCreationStatus (Maybe Bool)
pcsGettable
  = lens _pcsGettable (\ s a -> s{_pcsGettable = a})

-- | True if the project creation process is complete.
pcsReady :: Lens' ProjectCreationStatus (Maybe Bool)
pcsReady = lens _pcsReady (\ s a -> s{_pcsReady = a})

-- | Creation time of the project creation workflow.
pcsCreateTime :: Lens' ProjectCreationStatus (Maybe UTCTime)
pcsCreateTime
  = lens _pcsCreateTime
      (\ s a -> s{_pcsCreateTime = a})
      . mapping _DateTime

instance FromJSON ProjectCreationStatus where
        parseJSON
          = withObject "ProjectCreationStatus"
              (\ o ->
                 ProjectCreationStatus' <$>
                   (o .:? "gettable") <*> (o .:? "ready") <*>
                     (o .:? "createTime"))

instance ToJSON ProjectCreationStatus where
        toJSON ProjectCreationStatus'{..}
          = object
              (catMaybes
                 [("gettable" .=) <$> _pcsGettable,
                  ("ready" .=) <$> _pcsReady,
                  ("createTime" .=) <$> _pcsCreateTime])

-- | Runtime operation information for creating a TagValue.
--
-- /See:/ 'createTagValueMetadata' smart constructor.
data CreateTagValueMetadata =
  CreateTagValueMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateTagValueMetadata' with the minimum fields required to make a request.
--
createTagValueMetadata
    :: CreateTagValueMetadata
createTagValueMetadata = CreateTagValueMetadata'


instance FromJSON CreateTagValueMetadata where
        parseJSON
          = withObject "CreateTagValueMetadata"
              (\ o -> pure CreateTagValueMetadata')

instance ToJSON CreateTagValueMetadata where
        toJSON = const emptyObject

-- | The ListTagValues response.
--
-- /See:/ 'listTagValuesResponse' smart constructor.
data ListTagValuesResponse =
  ListTagValuesResponse'
    { _ltvrNextPageToken :: !(Maybe Text)
    , _ltvrTagValues :: !(Maybe [TagValue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTagValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltvrNextPageToken'
--
-- * 'ltvrTagValues'
listTagValuesResponse
    :: ListTagValuesResponse
listTagValuesResponse =
  ListTagValuesResponse'
    {_ltvrNextPageToken = Nothing, _ltvrTagValues = Nothing}


-- | A pagination token returned from a previous call to \`ListTagValues\`
-- that indicates from where listing should continue. This is currently not
-- used, but the server may at any point start supplying a valid token.
ltvrNextPageToken :: Lens' ListTagValuesResponse (Maybe Text)
ltvrNextPageToken
  = lens _ltvrNextPageToken
      (\ s a -> s{_ltvrNextPageToken = a})

-- | A possibly paginated list of TagValues that are direct descendants of
-- the specified parent TagKey.
ltvrTagValues :: Lens' ListTagValuesResponse [TagValue]
ltvrTagValues
  = lens _ltvrTagValues
      (\ s a -> s{_ltvrTagValues = a})
      . _Default
      . _Coerce

instance FromJSON ListTagValuesResponse where
        parseJSON
          = withObject "ListTagValuesResponse"
              (\ o ->
                 ListTagValuesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "tagValues" .!= mempty))

instance ToJSON ListTagValuesResponse where
        toJSON ListTagValuesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltvrNextPageToken,
                  ("tagValues" .=) <$> _ltvrTagValues])

-- | Metadata describing a long running folder operation
--
-- /See:/ 'cloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation' smart constructor.
data CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation =
  CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation'
    { _crmgcrmvfoDestinationParent :: !(Maybe Text)
    , _crmgcrmvfoDisplayName :: !(Maybe Text)
    , _crmgcrmvfoOperationType :: !(Maybe CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType)
    , _crmgcrmvfoSourceParent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crmgcrmvfoDestinationParent'
--
-- * 'crmgcrmvfoDisplayName'
--
-- * 'crmgcrmvfoOperationType'
--
-- * 'crmgcrmvfoSourceParent'
cloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    :: CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
cloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation =
  CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation'
    { _crmgcrmvfoDestinationParent = Nothing
    , _crmgcrmvfoDisplayName = Nothing
    , _crmgcrmvfoOperationType = Nothing
    , _crmgcrmvfoSourceParent = Nothing
    }


-- | The resource name of the folder or organization we are either creating
-- the folder under or moving the folder to.
crmgcrmvfoDestinationParent :: Lens' CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation (Maybe Text)
crmgcrmvfoDestinationParent
  = lens _crmgcrmvfoDestinationParent
      (\ s a -> s{_crmgcrmvfoDestinationParent = a})

-- | The display name of the folder.
crmgcrmvfoDisplayName :: Lens' CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation (Maybe Text)
crmgcrmvfoDisplayName
  = lens _crmgcrmvfoDisplayName
      (\ s a -> s{_crmgcrmvfoDisplayName = a})

-- | The type of this operation.
crmgcrmvfoOperationType :: Lens' CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation (Maybe CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType)
crmgcrmvfoOperationType
  = lens _crmgcrmvfoOperationType
      (\ s a -> s{_crmgcrmvfoOperationType = a})

-- | The resource name of the folder\'s parent. Only applicable when the
-- operation_type is MOVE.
crmgcrmvfoSourceParent :: Lens' CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation (Maybe Text)
crmgcrmvfoSourceParent
  = lens _crmgcrmvfoSourceParent
      (\ s a -> s{_crmgcrmvfoSourceParent = a})

instance FromJSON
           CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
         where
        parseJSON
          = withObject
              "CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation"
              (\ o ->
                 CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation'
                   <$>
                   (o .:? "destinationParent") <*> (o .:? "displayName")
                     <*> (o .:? "operationType")
                     <*> (o .:? "sourceParent"))

instance ToJSON
           CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
         where
        toJSON
          CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation'{..}
          = object
              (catMaybes
                 [("destinationParent" .=) <$>
                    _crmgcrmvfoDestinationParent,
                  ("displayName" .=) <$> _crmgcrmvfoDisplayName,
                  ("operationType" .=) <$> _crmgcrmvfoOperationType,
                  ("sourceParent" .=) <$> _crmgcrmvfoSourceParent])

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

-- | A page of the response received from the SearchProjects method. A
-- paginated response where more pages are available has
-- \`next_page_token\` set. This token can be used in a subsequent request
-- to retrieve the next request page.
--
-- /See:/ 'searchProjectsResponse' smart constructor.
data SearchProjectsResponse =
  SearchProjectsResponse'
    { _sprNextPageToken :: !(Maybe Text)
    , _sprProjects :: !(Maybe [Project])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchProjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprNextPageToken'
--
-- * 'sprProjects'
searchProjectsResponse
    :: SearchProjectsResponse
searchProjectsResponse =
  SearchProjectsResponse' {_sprNextPageToken = Nothing, _sprProjects = Nothing}


-- | Pagination token. If the result set is too large to fit in a single
-- response, this token is returned. It encodes the position of the current
-- result cursor. Feeding this value into a new list request with the
-- \`page_token\` parameter gives the next page of the results. When
-- \`next_page_token\` is not filled in, there is no next page and the list
-- returned is the last page in the result set. Pagination tokens have a
-- limited lifetime.
sprNextPageToken :: Lens' SearchProjectsResponse (Maybe Text)
sprNextPageToken
  = lens _sprNextPageToken
      (\ s a -> s{_sprNextPageToken = a})

-- | The list of Projects that matched the list filter query. This list can
-- be paginated.
sprProjects :: Lens' SearchProjectsResponse [Project]
sprProjects
  = lens _sprProjects (\ s a -> s{_sprProjects = a}) .
      _Default
      . _Coerce

instance FromJSON SearchProjectsResponse where
        parseJSON
          = withObject "SearchProjectsResponse"
              (\ o ->
                 SearchProjectsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "projects" .!= mempty))

instance ToJSON SearchProjectsResponse where
        toJSON SearchProjectsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sprNextPageToken,
                  ("projects" .=) <$> _sprProjects])

-- | A classification of the Folder Operation error.
--
-- /See:/ 'folderOperationError' smart constructor.
newtype FolderOperationError =
  FolderOperationError'
    { _foeErrorMessageId :: Maybe FolderOperationErrorErrorMessageId
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FolderOperationError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'foeErrorMessageId'
folderOperationError
    :: FolderOperationError
folderOperationError = FolderOperationError' {_foeErrorMessageId = Nothing}


-- | The type of operation error experienced.
foeErrorMessageId :: Lens' FolderOperationError (Maybe FolderOperationErrorErrorMessageId)
foeErrorMessageId
  = lens _foeErrorMessageId
      (\ s a -> s{_foeErrorMessageId = a})

instance FromJSON FolderOperationError where
        parseJSON
          = withObject "FolderOperationError"
              (\ o ->
                 FolderOperationError' <$> (o .:? "errorMessageId"))

instance ToJSON FolderOperationError where
        toJSON FolderOperationError'{..}
          = object
              (catMaybes
                 [("errorMessageId" .=) <$> _foeErrorMessageId])

-- | A folder in an organization\'s resource hierarchy, used to organize that
-- organization\'s resources.
--
-- /See:/ 'folder' smart constructor.
data Folder =
  Folder'
    { _fParent :: !(Maybe Text)
    , _fEtag :: !(Maybe Text)
    , _fState :: !(Maybe FolderState)
    , _fUpdateTime :: !(Maybe DateTime')
    , _fDeleteTime :: !(Maybe DateTime')
    , _fName :: !(Maybe Text)
    , _fDisplayName :: !(Maybe Text)
    , _fCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Folder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fParent'
--
-- * 'fEtag'
--
-- * 'fState'
--
-- * 'fUpdateTime'
--
-- * 'fDeleteTime'
--
-- * 'fName'
--
-- * 'fDisplayName'
--
-- * 'fCreateTime'
folder
    :: Folder
folder =
  Folder'
    { _fParent = Nothing
    , _fEtag = Nothing
    , _fState = Nothing
    , _fUpdateTime = Nothing
    , _fDeleteTime = Nothing
    , _fName = Nothing
    , _fDisplayName = Nothing
    , _fCreateTime = Nothing
    }


-- | Required. The folder\'s parent\'s resource name. Updates to the
-- folder\'s parent must be performed using MoveFolder.
fParent :: Lens' Folder (Maybe Text)
fParent = lens _fParent (\ s a -> s{_fParent = a})

-- | Output only. A checksum computed by the server based on the current
-- value of the folder resource. This may be sent on update and delete
-- requests to ensure the client has an up-to-date value before proceeding.
fEtag :: Lens' Folder (Maybe Text)
fEtag = lens _fEtag (\ s a -> s{_fEtag = a})

-- | Output only. The lifecycle state of the folder. Updates to the state
-- must be performed using DeleteFolder and UndeleteFolder.
fState :: Lens' Folder (Maybe FolderState)
fState = lens _fState (\ s a -> s{_fState = a})

-- | Output only. Timestamp when the folder was last modified.
fUpdateTime :: Lens' Folder (Maybe UTCTime)
fUpdateTime
  = lens _fUpdateTime (\ s a -> s{_fUpdateTime = a}) .
      mapping _DateTime

-- | Output only. Timestamp when the folder was requested to be deleted.
fDeleteTime :: Lens' Folder (Maybe UTCTime)
fDeleteTime
  = lens _fDeleteTime (\ s a -> s{_fDeleteTime = a}) .
      mapping _DateTime

-- | Output only. The resource name of the folder. Its format is
-- \`folders\/{folder_id}\`, for example: \"folders\/1234\".
fName :: Lens' Folder (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The folder\'s display name. A folder\'s display name must be unique
-- amongst its siblings. For example, no two folders with the same parent
-- can share the same display name. The display name must start and end
-- with a letter or digit, may contain letters, digits, spaces, hyphens and
-- underscores and can be no longer than 30 characters. This is captured by
-- the regular expression: \`[\\p{L}\\p{N}]([\\p{L}\\p{N}_-
-- ]{0,28}[\\p{L}\\p{N}])?\`.
fDisplayName :: Lens' Folder (Maybe Text)
fDisplayName
  = lens _fDisplayName (\ s a -> s{_fDisplayName = a})

-- | Output only. Timestamp when the folder was created.
fCreateTime :: Lens' Folder (Maybe UTCTime)
fCreateTime
  = lens _fCreateTime (\ s a -> s{_fCreateTime = a}) .
      mapping _DateTime

instance FromJSON Folder where
        parseJSON
          = withObject "Folder"
              (\ o ->
                 Folder' <$>
                   (o .:? "parent") <*> (o .:? "etag") <*>
                     (o .:? "state")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "deleteTime")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "createTime"))

instance ToJSON Folder where
        toJSON Folder'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _fParent, ("etag" .=) <$> _fEtag,
                  ("state" .=) <$> _fState,
                  ("updateTime" .=) <$> _fUpdateTime,
                  ("deleteTime" .=) <$> _fDeleteTime,
                  ("name" .=) <$> _fName,
                  ("displayName" .=) <$> _fDisplayName,
                  ("createTime" .=) <$> _fCreateTime])

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'getPolicyOptions' smart constructor.
newtype GetPolicyOptions =
  GetPolicyOptions'
    { _gpoRequestedPolicyVersion :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpoRequestedPolicyVersion'
getPolicyOptions
    :: GetPolicyOptions
getPolicyOptions = GetPolicyOptions' {_gpoRequestedPolicyVersion = Nothing}


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
gpoRequestedPolicyVersion :: Lens' GetPolicyOptions (Maybe Int32)
gpoRequestedPolicyVersion
  = lens _gpoRequestedPolicyVersion
      (\ s a -> s{_gpoRequestedPolicyVersion = a})
      . mapping _Coerce

instance FromJSON GetPolicyOptions where
        parseJSON
          = withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions' <$>
                   (o .:? "requestedPolicyVersion"))

instance ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions'{..}
          = object
              (catMaybes
                 [("requestedPolicyVersion" .=) <$>
                    _gpoRequestedPolicyVersion])

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

-- | A TagValue is a child of a particular TagKey. This is used to group
-- cloud resources for the purpose of controlling them using policies.
--
-- /See:/ 'tagValue' smart constructor.
data TagValue =
  TagValue'
    { _tvParent :: !(Maybe Text)
    , _tvEtag :: !(Maybe Text)
    , _tvShortName :: !(Maybe Text)
    , _tvUpdateTime :: !(Maybe DateTime')
    , _tvName :: !(Maybe Text)
    , _tvNamespacedName :: !(Maybe Text)
    , _tvDescription :: !(Maybe Text)
    , _tvCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvParent'
--
-- * 'tvEtag'
--
-- * 'tvShortName'
--
-- * 'tvUpdateTime'
--
-- * 'tvName'
--
-- * 'tvNamespacedName'
--
-- * 'tvDescription'
--
-- * 'tvCreateTime'
tagValue
    :: TagValue
tagValue =
  TagValue'
    { _tvParent = Nothing
    , _tvEtag = Nothing
    , _tvShortName = Nothing
    , _tvUpdateTime = Nothing
    , _tvName = Nothing
    , _tvNamespacedName = Nothing
    , _tvDescription = Nothing
    , _tvCreateTime = Nothing
    }


-- | Immutable. The resource name of the new TagValue\'s parent TagKey. Must
-- be of the form \`tagKeys\/{tag_key_id}\`.
tvParent :: Lens' TagValue (Maybe Text)
tvParent = lens _tvParent (\ s a -> s{_tvParent = a})

-- | Optional. Entity tag which users can pass to prevent race conditions.
-- This field is always set in server responses. See UpdateTagValueRequest
-- for details.
tvEtag :: Lens' TagValue (Maybe Text)
tvEtag = lens _tvEtag (\ s a -> s{_tvEtag = a})

-- | Required. Immutable. User-assigned short name for TagValue. The short
-- name should be unique for TagValues within the same parent TagKey. The
-- short name must be 63 characters or less, beginning and ending with an
-- alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_),
-- dots (.), and alphanumerics between.
tvShortName :: Lens' TagValue (Maybe Text)
tvShortName
  = lens _tvShortName (\ s a -> s{_tvShortName = a})

-- | Output only. Update time.
tvUpdateTime :: Lens' TagValue (Maybe UTCTime)
tvUpdateTime
  = lens _tvUpdateTime (\ s a -> s{_tvUpdateTime = a})
      . mapping _DateTime

-- | Immutable. Resource name for TagValue in the format \`tagValues\/456\`.
tvName :: Lens' TagValue (Maybe Text)
tvName = lens _tvName (\ s a -> s{_tvName = a})

-- | Output only. Namespaced name of the TagValue. Must be in the format
-- \`{organization_id}\/{tag_key_short_name}\/{short_name}\`.
tvNamespacedName :: Lens' TagValue (Maybe Text)
tvNamespacedName
  = lens _tvNamespacedName
      (\ s a -> s{_tvNamespacedName = a})

-- | Optional. User-assigned description of the TagValue. Must not exceed 256
-- characters. Read-write.
tvDescription :: Lens' TagValue (Maybe Text)
tvDescription
  = lens _tvDescription
      (\ s a -> s{_tvDescription = a})

-- | Output only. Creation time.
tvCreateTime :: Lens' TagValue (Maybe UTCTime)
tvCreateTime
  = lens _tvCreateTime (\ s a -> s{_tvCreateTime = a})
      . mapping _DateTime

instance FromJSON TagValue where
        parseJSON
          = withObject "TagValue"
              (\ o ->
                 TagValue' <$>
                   (o .:? "parent") <*> (o .:? "etag") <*>
                     (o .:? "shortName")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "namespacedName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON TagValue where
        toJSON TagValue'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _tvParent,
                  ("etag" .=) <$> _tvEtag,
                  ("shortName" .=) <$> _tvShortName,
                  ("updateTime" .=) <$> _tvUpdateTime,
                  ("name" .=) <$> _tvName,
                  ("namespacedName" .=) <$> _tvNamespacedName,
                  ("description" .=) <$> _tvDescription,
                  ("createTime" .=) <$> _tvCreateTime])

-- | A status object which is used as the \`metadata\` field for the
-- \`Operation\` returned by \`UndeleteFolder\`.
--
-- /See:/ 'undeleteFolderMetadata' smart constructor.
data UndeleteFolderMetadata =
  UndeleteFolderMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteFolderMetadata' with the minimum fields required to make a request.
--
undeleteFolderMetadata
    :: UndeleteFolderMetadata
undeleteFolderMetadata = UndeleteFolderMetadata'


instance FromJSON UndeleteFolderMetadata where
        parseJSON
          = withObject "UndeleteFolderMetadata"
              (\ o -> pure UndeleteFolderMetadata')

instance ToJSON UndeleteFolderMetadata where
        toJSON = const emptyObject

-- | The response message for Liens.ListLiens.
--
-- /See:/ 'listLiensResponse' smart constructor.
data ListLiensResponse =
  ListLiensResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLiens :: !(Maybe [Lien])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLiensResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLiens'
listLiensResponse
    :: ListLiensResponse
listLiensResponse =
  ListLiensResponse' {_llrNextPageToken = Nothing, _llrLiens = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
llrNextPageToken :: Lens' ListLiensResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of Liens.
llrLiens :: Lens' ListLiensResponse [Lien]
llrLiens
  = lens _llrLiens (\ s a -> s{_llrLiens = a}) .
      _Default
      . _Coerce

instance FromJSON ListLiensResponse where
        parseJSON
          = withObject "ListLiensResponse"
              (\ o ->
                 ListLiensResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "liens" .!= mempty))

instance ToJSON ListLiensResponse where
        toJSON ListLiensResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("liens" .=) <$> _llrLiens])

-- | Runtime operation information for creating a TagKey.
--
-- /See:/ 'createTagKeyMetadata' smart constructor.
data CreateTagKeyMetadata =
  CreateTagKeyMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateTagKeyMetadata' with the minimum fields required to make a request.
--
createTagKeyMetadata
    :: CreateTagKeyMetadata
createTagKeyMetadata = CreateTagKeyMetadata'


instance FromJSON CreateTagKeyMetadata where
        parseJSON
          = withObject "CreateTagKeyMetadata"
              (\ o -> pure CreateTagKeyMetadata')

instance ToJSON CreateTagKeyMetadata where
        toJSON = const emptyObject

-- | Metadata pertaining to the Folder creation process.
--
-- /See:/ 'createFolderMetadata' smart constructor.
data CreateFolderMetadata =
  CreateFolderMetadata'
    { _cfmParent :: !(Maybe Text)
    , _cfmDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateFolderMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfmParent'
--
-- * 'cfmDisplayName'
createFolderMetadata
    :: CreateFolderMetadata
createFolderMetadata =
  CreateFolderMetadata' {_cfmParent = Nothing, _cfmDisplayName = Nothing}


-- | The resource name of the folder or organization we are creating the
-- folder under.
cfmParent :: Lens' CreateFolderMetadata (Maybe Text)
cfmParent
  = lens _cfmParent (\ s a -> s{_cfmParent = a})

-- | The display name of the folder.
cfmDisplayName :: Lens' CreateFolderMetadata (Maybe Text)
cfmDisplayName
  = lens _cfmDisplayName
      (\ s a -> s{_cfmDisplayName = a})

instance FromJSON CreateFolderMetadata where
        parseJSON
          = withObject "CreateFolderMetadata"
              (\ o ->
                 CreateFolderMetadata' <$>
                   (o .:? "parent") <*> (o .:? "displayName"))

instance ToJSON CreateFolderMetadata where
        toJSON CreateFolderMetadata'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _cfmParent,
                  ("displayName" .=) <$> _cfmDisplayName])

-- | A status object which is used as the \`metadata\` field for the
-- operation returned by DeleteOrganization.
--
-- /See:/ 'deleteOrganizationMetadata' smart constructor.
data DeleteOrganizationMetadata =
  DeleteOrganizationMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteOrganizationMetadata' with the minimum fields required to make a request.
--
deleteOrganizationMetadata
    :: DeleteOrganizationMetadata
deleteOrganizationMetadata = DeleteOrganizationMetadata'


instance FromJSON DeleteOrganizationMetadata where
        parseJSON
          = withObject "DeleteOrganizationMetadata"
              (\ o -> pure DeleteOrganizationMetadata')

instance ToJSON DeleteOrganizationMetadata where
        toJSON = const emptyObject

-- | Runtime operation information for deleting a TagBinding.
--
-- /See:/ 'deleteTagBindingMetadata' smart constructor.
data DeleteTagBindingMetadata =
  DeleteTagBindingMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteTagBindingMetadata' with the minimum fields required to make a request.
--
deleteTagBindingMetadata
    :: DeleteTagBindingMetadata
deleteTagBindingMetadata = DeleteTagBindingMetadata'


instance FromJSON DeleteTagBindingMetadata where
        parseJSON
          = withObject "DeleteTagBindingMetadata"
              (\ o -> pure DeleteTagBindingMetadata')

instance ToJSON DeleteTagBindingMetadata where
        toJSON = const emptyObject

-- | The ListTagKeys response message.
--
-- /See:/ 'listTagKeysResponse' smart constructor.
data ListTagKeysResponse =
  ListTagKeysResponse'
    { _ltkrNextPageToken :: !(Maybe Text)
    , _ltkrTagKeys :: !(Maybe [TagKey])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTagKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltkrNextPageToken'
--
-- * 'ltkrTagKeys'
listTagKeysResponse
    :: ListTagKeysResponse
listTagKeysResponse =
  ListTagKeysResponse' {_ltkrNextPageToken = Nothing, _ltkrTagKeys = Nothing}


-- | A pagination token returned from a previous call to \`ListTagKeys\` that
-- indicates from where listing should continue.
ltkrNextPageToken :: Lens' ListTagKeysResponse (Maybe Text)
ltkrNextPageToken
  = lens _ltkrNextPageToken
      (\ s a -> s{_ltkrNextPageToken = a})

-- | List of TagKeys that live under the specified parent in the request.
ltkrTagKeys :: Lens' ListTagKeysResponse [TagKey]
ltkrTagKeys
  = lens _ltkrTagKeys (\ s a -> s{_ltkrTagKeys = a}) .
      _Default
      . _Coerce

instance FromJSON ListTagKeysResponse where
        parseJSON
          = withObject "ListTagKeysResponse"
              (\ o ->
                 ListTagKeysResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "tagKeys" .!= mempty))

instance ToJSON ListTagKeysResponse where
        toJSON ListTagKeysResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltkrNextPageToken,
                  ("tagKeys" .=) <$> _ltkrTagKeys])

-- | Metadata pertaining to the folder move process.
--
-- /See:/ 'moveFolderMetadata' smart constructor.
data MoveFolderMetadata =
  MoveFolderMetadata'
    { _mfmDestinationParent :: !(Maybe Text)
    , _mfmDisplayName :: !(Maybe Text)
    , _mfmSourceParent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MoveFolderMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfmDestinationParent'
--
-- * 'mfmDisplayName'
--
-- * 'mfmSourceParent'
moveFolderMetadata
    :: MoveFolderMetadata
moveFolderMetadata =
  MoveFolderMetadata'
    { _mfmDestinationParent = Nothing
    , _mfmDisplayName = Nothing
    , _mfmSourceParent = Nothing
    }


-- | The resource name of the folder or organization to move the folder to.
mfmDestinationParent :: Lens' MoveFolderMetadata (Maybe Text)
mfmDestinationParent
  = lens _mfmDestinationParent
      (\ s a -> s{_mfmDestinationParent = a})

-- | The display name of the folder.
mfmDisplayName :: Lens' MoveFolderMetadata (Maybe Text)
mfmDisplayName
  = lens _mfmDisplayName
      (\ s a -> s{_mfmDisplayName = a})

-- | The resource name of the folder\'s parent.
mfmSourceParent :: Lens' MoveFolderMetadata (Maybe Text)
mfmSourceParent
  = lens _mfmSourceParent
      (\ s a -> s{_mfmSourceParent = a})

instance FromJSON MoveFolderMetadata where
        parseJSON
          = withObject "MoveFolderMetadata"
              (\ o ->
                 MoveFolderMetadata' <$>
                   (o .:? "destinationParent") <*> (o .:? "displayName")
                     <*> (o .:? "sourceParent"))

instance ToJSON MoveFolderMetadata where
        toJSON MoveFolderMetadata'{..}
          = object
              (catMaybes
                 [("destinationParent" .=) <$> _mfmDestinationParent,
                  ("displayName" .=) <$> _mfmDisplayName,
                  ("sourceParent" .=) <$> _mfmSourceParent])

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by \`UndeleteProject\`.
--
-- /See:/ 'undeleteProjectMetadata' smart constructor.
data UndeleteProjectMetadata =
  UndeleteProjectMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteProjectMetadata' with the minimum fields required to make a request.
--
undeleteProjectMetadata
    :: UndeleteProjectMetadata
undeleteProjectMetadata = UndeleteProjectMetadata'


instance FromJSON UndeleteProjectMetadata where
        parseJSON
          = withObject "UndeleteProjectMetadata"
              (\ o -> pure UndeleteProjectMetadata')

instance ToJSON UndeleteProjectMetadata where
        toJSON = const emptyObject

-- | Runtime operation information for creating a TagValue.
--
-- /See:/ 'createTagBindingMetadata' smart constructor.
data CreateTagBindingMetadata =
  CreateTagBindingMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateTagBindingMetadata' with the minimum fields required to make a request.
--
createTagBindingMetadata
    :: CreateTagBindingMetadata
createTagBindingMetadata = CreateTagBindingMetadata'


instance FromJSON CreateTagBindingMetadata where
        parseJSON
          = withObject "CreateTagBindingMetadata"
              (\ o -> pure CreateTagBindingMetadata')

instance ToJSON CreateTagBindingMetadata where
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

-- | A status object which is used as the \`metadata\` field for the
-- \`Operation\` returned by \`DeleteFolder\`.
--
-- /See:/ 'deleteFolderMetadata' smart constructor.
data DeleteFolderMetadata =
  DeleteFolderMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteFolderMetadata' with the minimum fields required to make a request.
--
deleteFolderMetadata
    :: DeleteFolderMetadata
deleteFolderMetadata = DeleteFolderMetadata'


instance FromJSON DeleteFolderMetadata where
        parseJSON
          = withObject "DeleteFolderMetadata"
              (\ o -> pure DeleteFolderMetadata')

instance ToJSON DeleteFolderMetadata where
        toJSON = const emptyObject

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by UpdateFolder.
--
-- /See:/ 'updateFolderMetadata' smart constructor.
data UpdateFolderMetadata =
  UpdateFolderMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateFolderMetadata' with the minimum fields required to make a request.
--
updateFolderMetadata
    :: UpdateFolderMetadata
updateFolderMetadata = UpdateFolderMetadata'


instance FromJSON UpdateFolderMetadata where
        parseJSON
          = withObject "UpdateFolderMetadata"
              (\ o -> pure UpdateFolderMetadata')

instance ToJSON UpdateFolderMetadata where
        toJSON = const emptyObject

-- | The request sent to MoveProject method.
--
-- /See:/ 'moveProjectRequest' smart constructor.
newtype MoveProjectRequest =
  MoveProjectRequest'
    { _mprDestinationParent :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MoveProjectRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mprDestinationParent'
moveProjectRequest
    :: MoveProjectRequest
moveProjectRequest = MoveProjectRequest' {_mprDestinationParent = Nothing}


-- | Required. The new parent to move the Project under.
mprDestinationParent :: Lens' MoveProjectRequest (Maybe Text)
mprDestinationParent
  = lens _mprDestinationParent
      (\ s a -> s{_mprDestinationParent = a})

instance FromJSON MoveProjectRequest where
        parseJSON
          = withObject "MoveProjectRequest"
              (\ o ->
                 MoveProjectRequest' <$> (o .:? "destinationParent"))

instance ToJSON MoveProjectRequest where
        toJSON MoveProjectRequest'{..}
          = object
              (catMaybes
                 [("destinationParent" .=) <$> _mprDestinationParent])

-- | A TagKey, used to group a set of TagValues.
--
-- /See:/ 'tagKey' smart constructor.
data TagKey =
  TagKey'
    { _tkParent :: !(Maybe Text)
    , _tkEtag :: !(Maybe Text)
    , _tkShortName :: !(Maybe Text)
    , _tkUpdateTime :: !(Maybe DateTime')
    , _tkName :: !(Maybe Text)
    , _tkNamespacedName :: !(Maybe Text)
    , _tkDescription :: !(Maybe Text)
    , _tkCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tkParent'
--
-- * 'tkEtag'
--
-- * 'tkShortName'
--
-- * 'tkUpdateTime'
--
-- * 'tkName'
--
-- * 'tkNamespacedName'
--
-- * 'tkDescription'
--
-- * 'tkCreateTime'
tagKey
    :: TagKey
tagKey =
  TagKey'
    { _tkParent = Nothing
    , _tkEtag = Nothing
    , _tkShortName = Nothing
    , _tkUpdateTime = Nothing
    , _tkName = Nothing
    , _tkNamespacedName = Nothing
    , _tkDescription = Nothing
    , _tkCreateTime = Nothing
    }


-- | Immutable. The resource name of the new TagKey\'s parent. Must be of the
-- form \`organizations\/{org_id}\`.
tkParent :: Lens' TagKey (Maybe Text)
tkParent = lens _tkParent (\ s a -> s{_tkParent = a})

-- | Optional. Entity tag which users can pass to prevent race conditions.
-- This field is always set in server responses. See UpdateTagKeyRequest
-- for details.
tkEtag :: Lens' TagKey (Maybe Text)
tkEtag = lens _tkEtag (\ s a -> s{_tkEtag = a})

-- | Required. Immutable. The user friendly name for a TagKey. The short name
-- should be unique for TagKeys within the same tag namespace. The short
-- name must be 1-63 characters, beginning and ending with an alphanumeric
-- character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and
-- alphanumerics between.
tkShortName :: Lens' TagKey (Maybe Text)
tkShortName
  = lens _tkShortName (\ s a -> s{_tkShortName = a})

-- | Output only. Update time.
tkUpdateTime :: Lens' TagKey (Maybe UTCTime)
tkUpdateTime
  = lens _tkUpdateTime (\ s a -> s{_tkUpdateTime = a})
      . mapping _DateTime

-- | Immutable. The resource name for a TagKey. Must be in the format
-- \`tagKeys\/{tag_key_id}\`, where \`tag_key_id\` is the generated numeric
-- id for the TagKey.
tkName :: Lens' TagKey (Maybe Text)
tkName = lens _tkName (\ s a -> s{_tkName = a})

-- | Output only. Immutable. Namespaced name of the TagKey.
tkNamespacedName :: Lens' TagKey (Maybe Text)
tkNamespacedName
  = lens _tkNamespacedName
      (\ s a -> s{_tkNamespacedName = a})

-- | Optional. User-assigned description of the TagKey. Must not exceed 256
-- characters. Read-write.
tkDescription :: Lens' TagKey (Maybe Text)
tkDescription
  = lens _tkDescription
      (\ s a -> s{_tkDescription = a})

-- | Output only. Creation time.
tkCreateTime :: Lens' TagKey (Maybe UTCTime)
tkCreateTime
  = lens _tkCreateTime (\ s a -> s{_tkCreateTime = a})
      . mapping _DateTime

instance FromJSON TagKey where
        parseJSON
          = withObject "TagKey"
              (\ o ->
                 TagKey' <$>
                   (o .:? "parent") <*> (o .:? "etag") <*>
                     (o .:? "shortName")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "namespacedName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON TagKey where
        toJSON TagKey'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _tkParent,
                  ("etag" .=) <$> _tkEtag,
                  ("shortName" .=) <$> _tkShortName,
                  ("updateTime" .=) <$> _tkUpdateTime,
                  ("name" .=) <$> _tkName,
                  ("namespacedName" .=) <$> _tkNamespacedName,
                  ("description" .=) <$> _tkDescription,
                  ("createTime" .=) <$> _tkCreateTime])

-- | Metadata describing a long running folder operation
--
-- /See:/ 'cloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation' smart constructor.
data CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation =
  CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation'
    { _cDestinationParent :: !(Maybe Text)
    , _cDisplayName :: !(Maybe Text)
    , _cOperationType :: !(Maybe CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType)
    , _cSourceParent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDestinationParent'
--
-- * 'cDisplayName'
--
-- * 'cOperationType'
--
-- * 'cSourceParent'
cloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    :: CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
cloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation =
  CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation'
    { _cDestinationParent = Nothing
    , _cDisplayName = Nothing
    , _cOperationType = Nothing
    , _cSourceParent = Nothing
    }


-- | The resource name of the folder or organization we are either creating
-- the folder under or moving the folder to.
cDestinationParent :: Lens' CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation (Maybe Text)
cDestinationParent
  = lens _cDestinationParent
      (\ s a -> s{_cDestinationParent = a})

-- | The display name of the folder.
cDisplayName :: Lens' CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation (Maybe Text)
cDisplayName
  = lens _cDisplayName (\ s a -> s{_cDisplayName = a})

-- | The type of this operation.
cOperationType :: Lens' CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation (Maybe CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType)
cOperationType
  = lens _cOperationType
      (\ s a -> s{_cOperationType = a})

-- | The resource name of the folder\'s parent. Only applicable when the
-- operation_type is MOVE.
cSourceParent :: Lens' CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation (Maybe Text)
cSourceParent
  = lens _cSourceParent
      (\ s a -> s{_cSourceParent = a})

instance FromJSON
           CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
         where
        parseJSON
          = withObject
              "CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation"
              (\ o ->
                 CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation'
                   <$>
                   (o .:? "destinationParent") <*> (o .:? "displayName")
                     <*> (o .:? "operationType")
                     <*> (o .:? "sourceParent"))

instance ToJSON
           CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
         where
        toJSON
          CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation'{..}
          = object
              (catMaybes
                 [("destinationParent" .=) <$> _cDestinationParent,
                  ("displayName" .=) <$> _cDisplayName,
                  ("operationType" .=) <$> _cOperationType,
                  ("sourceParent" .=) <$> _cSourceParent])

-- | The response returned from the \`SearchOrganizations\` method.
--
-- /See:/ 'searchOrganizationsResponse' smart constructor.
data SearchOrganizationsResponse =
  SearchOrganizationsResponse'
    { _sorNextPageToken :: !(Maybe Text)
    , _sorOrganizations :: !(Maybe [Organization])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchOrganizationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sorNextPageToken'
--
-- * 'sorOrganizations'
searchOrganizationsResponse
    :: SearchOrganizationsResponse
searchOrganizationsResponse =
  SearchOrganizationsResponse'
    {_sorNextPageToken = Nothing, _sorOrganizations = Nothing}


-- | A pagination token to be used to retrieve the next page of results. If
-- the result is too large to fit within the page size specified in the
-- request, this field will be set with a token that can be used to fetch
-- the next page of results. If this field is empty, it indicates that this
-- response contains the last page of results.
sorNextPageToken :: Lens' SearchOrganizationsResponse (Maybe Text)
sorNextPageToken
  = lens _sorNextPageToken
      (\ s a -> s{_sorNextPageToken = a})

-- | The list of Organizations that matched the search query, possibly
-- paginated.
sorOrganizations :: Lens' SearchOrganizationsResponse [Organization]
sorOrganizations
  = lens _sorOrganizations
      (\ s a -> s{_sorOrganizations = a})
      . _Default
      . _Coerce

instance FromJSON SearchOrganizationsResponse where
        parseJSON
          = withObject "SearchOrganizationsResponse"
              (\ o ->
                 SearchOrganizationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "organizations" .!= mempty))

instance ToJSON SearchOrganizationsResponse where
        toJSON SearchOrganizationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sorNextPageToken,
                  ("organizations" .=) <$> _sorOrganizations])

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
    { _polAuditConfigs :: !(Maybe [AuditConfig])
    , _polEtag :: !(Maybe Bytes)
    , _polVersion :: !(Maybe (Textual Int32))
    , _polBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polAuditConfigs'
--
-- * 'polEtag'
--
-- * 'polVersion'
--
-- * 'polBindings'
policy
    :: Policy
policy =
  Policy'
    { _polAuditConfigs = Nothing
    , _polEtag = Nothing
    , _polVersion = Nothing
    , _polBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
polAuditConfigs :: Lens' Policy [AuditConfig]
polAuditConfigs
  = lens _polAuditConfigs
      (\ s a -> s{_polAuditConfigs = a})
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
polEtag :: Lens' Policy (Maybe ByteString)
polEtag
  = lens _polEtag (\ s a -> s{_polEtag = a}) .
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
polVersion :: Lens' Policy (Maybe Int32)
polVersion
  = lens _polVersion (\ s a -> s{_polVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
polBindings :: Lens' Policy [Binding]
polBindings
  = lens _polBindings (\ s a -> s{_polBindings = a}) .
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
                 [("auditConfigs" .=) <$> _polAuditConfigs,
                  ("etag" .=) <$> _polEtag,
                  ("version" .=) <$> _polVersion,
                  ("bindings" .=) <$> _polBindings])

-- | Optional. The labels associated with this project. Label keys must be
-- between 1 and 63 characters long and must conform to the following
-- regular expression: \\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?. Label values
-- must be between 0 and 63 characters long and must conform to the regular
-- expression (\\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?)?. No more than 256
-- labels can be associated with a given resource. Clients should store
-- labels in a representation such as JSON that does not depend on specific
-- characters being disallowed. Example: \`\"myBusinessDimension\" :
-- \"businessValue\"\`
--
-- /See:/ 'projectLabels' smart constructor.
newtype ProjectLabels =
  ProjectLabels'
    { _plAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plAddtional'
projectLabels
    :: HashMap Text Text -- ^ 'plAddtional'
    -> ProjectLabels
projectLabels pPlAddtional_ =
  ProjectLabels' {_plAddtional = _Coerce # pPlAddtional_}


plAddtional :: Lens' ProjectLabels (HashMap Text Text)
plAddtional
  = lens _plAddtional (\ s a -> s{_plAddtional = a}) .
      _Coerce

instance FromJSON ProjectLabels where
        parseJSON
          = withObject "ProjectLabels"
              (\ o -> ProjectLabels' <$> (parseJSONObject o))

instance ToJSON ProjectLabels where
        toJSON = toJSON . _plAddtional

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

-- | Metadata describing a long running folder operation
--
-- /See:/ 'folderOperation' smart constructor.
data FolderOperation =
  FolderOperation'
    { _foDestinationParent :: !(Maybe Text)
    , _foDisplayName :: !(Maybe Text)
    , _foOperationType :: !(Maybe FolderOperationOperationType)
    , _foSourceParent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FolderOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'foDestinationParent'
--
-- * 'foDisplayName'
--
-- * 'foOperationType'
--
-- * 'foSourceParent'
folderOperation
    :: FolderOperation
folderOperation =
  FolderOperation'
    { _foDestinationParent = Nothing
    , _foDisplayName = Nothing
    , _foOperationType = Nothing
    , _foSourceParent = Nothing
    }


-- | The resource name of the folder or organization we are either creating
-- the folder under or moving the folder to.
foDestinationParent :: Lens' FolderOperation (Maybe Text)
foDestinationParent
  = lens _foDestinationParent
      (\ s a -> s{_foDestinationParent = a})

-- | The display name of the folder.
foDisplayName :: Lens' FolderOperation (Maybe Text)
foDisplayName
  = lens _foDisplayName
      (\ s a -> s{_foDisplayName = a})

-- | The type of this operation.
foOperationType :: Lens' FolderOperation (Maybe FolderOperationOperationType)
foOperationType
  = lens _foOperationType
      (\ s a -> s{_foOperationType = a})

-- | The resource name of the folder\'s parent. Only applicable when the
-- operation_type is MOVE.
foSourceParent :: Lens' FolderOperation (Maybe Text)
foSourceParent
  = lens _foSourceParent
      (\ s a -> s{_foSourceParent = a})

instance FromJSON FolderOperation where
        parseJSON
          = withObject "FolderOperation"
              (\ o ->
                 FolderOperation' <$>
                   (o .:? "destinationParent") <*> (o .:? "displayName")
                     <*> (o .:? "operationType")
                     <*> (o .:? "sourceParent"))

instance ToJSON FolderOperation where
        toJSON FolderOperation'{..}
          = object
              (catMaybes
                 [("destinationParent" .=) <$> _foDestinationParent,
                  ("displayName" .=) <$> _foDisplayName,
                  ("operationType" .=) <$> _foOperationType,
                  ("sourceParent" .=) <$> _foSourceParent])

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

-- | A TagBinding represents a connection between a TagValue and a cloud
-- resource (currently project, folder, or organization). Once a TagBinding
-- is created, the TagValue is applied to all the descendants of the cloud
-- resource.
--
-- /See:/ 'tagBinding' smart constructor.
data TagBinding =
  TagBinding'
    { _tbParent :: !(Maybe Text)
    , _tbTagValue :: !(Maybe Text)
    , _tbName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TagBinding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbParent'
--
-- * 'tbTagValue'
--
-- * 'tbName'
tagBinding
    :: TagBinding
tagBinding =
  TagBinding' {_tbParent = Nothing, _tbTagValue = Nothing, _tbName = Nothing}


-- | The full resource name of the resource the TagValue is bound to. E.g.
-- \`\/\/cloudresourcemanager.googleapis.com\/projects\/123\`
tbParent :: Lens' TagBinding (Maybe Text)
tbParent = lens _tbParent (\ s a -> s{_tbParent = a})

-- | The TagValue of the TagBinding. Must be of the form \`tagValues\/456\`.
tbTagValue :: Lens' TagBinding (Maybe Text)
tbTagValue
  = lens _tbTagValue (\ s a -> s{_tbTagValue = a})

-- | Output only. The name of the TagBinding. This is a String of the form:
-- \`tagBindings\/{full-resource-name}\/{tag-value-name}\` (e.g.
-- \`tagBindings\/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123\/tagValues\/456\`).
tbName :: Lens' TagBinding (Maybe Text)
tbName = lens _tbName (\ s a -> s{_tbName = a})

instance FromJSON TagBinding where
        parseJSON
          = withObject "TagBinding"
              (\ o ->
                 TagBinding' <$>
                   (o .:? "parent") <*> (o .:? "tagValue") <*>
                     (o .:? "name"))

instance ToJSON TagBinding where
        toJSON TagBinding'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _tbParent,
                  ("tagValue" .=) <$> _tbTagValue,
                  ("name" .=) <$> _tbName])

-- | The root node in the resource hierarchy to which a particular entity\'s
-- (a company, for example) resources belong.
--
-- /See:/ 'organization' smart constructor.
data Organization =
  Organization'
    { _orgEtag :: !(Maybe Text)
    , _orgState :: !(Maybe OrganizationState)
    , _orgUpdateTime :: !(Maybe DateTime')
    , _orgDeleteTime :: !(Maybe DateTime')
    , _orgName :: !(Maybe Text)
    , _orgDisplayName :: !(Maybe Text)
    , _orgDirectoryCustomerId :: !(Maybe Text)
    , _orgCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Organization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orgEtag'
--
-- * 'orgState'
--
-- * 'orgUpdateTime'
--
-- * 'orgDeleteTime'
--
-- * 'orgName'
--
-- * 'orgDisplayName'
--
-- * 'orgDirectoryCustomerId'
--
-- * 'orgCreateTime'
organization
    :: Organization
organization =
  Organization'
    { _orgEtag = Nothing
    , _orgState = Nothing
    , _orgUpdateTime = Nothing
    , _orgDeleteTime = Nothing
    , _orgName = Nothing
    , _orgDisplayName = Nothing
    , _orgDirectoryCustomerId = Nothing
    , _orgCreateTime = Nothing
    }


-- | Output only. A checksum computed by the server based on the current
-- value of the Organization resource. This may be sent on update and
-- delete requests to ensure the client has an up-to-date value before
-- proceeding.
orgEtag :: Lens' Organization (Maybe Text)
orgEtag = lens _orgEtag (\ s a -> s{_orgEtag = a})

-- | Output only. The organization\'s current lifecycle state.
orgState :: Lens' Organization (Maybe OrganizationState)
orgState = lens _orgState (\ s a -> s{_orgState = a})

-- | Output only. Timestamp when the Organization was last modified.
orgUpdateTime :: Lens' Organization (Maybe UTCTime)
orgUpdateTime
  = lens _orgUpdateTime
      (\ s a -> s{_orgUpdateTime = a})
      . mapping _DateTime

-- | Output only. Timestamp when the Organization was requested for deletion.
orgDeleteTime :: Lens' Organization (Maybe UTCTime)
orgDeleteTime
  = lens _orgDeleteTime
      (\ s a -> s{_orgDeleteTime = a})
      . mapping _DateTime

-- | Output only. The resource name of the organization. This is the
-- organization\'s relative path in the API. Its format is
-- \"organizations\/[organization_id]\". For example,
-- \"organizations\/1234\".
orgName :: Lens' Organization (Maybe Text)
orgName = lens _orgName (\ s a -> s{_orgName = a})

-- | Output only. A human-readable string that refers to the organization in
-- the Google Cloud Console. This string is set by the server and cannot be
-- changed. The string will be set to the primary domain (for example,
-- \"google.com\") of the Google Workspace customer that owns the
-- organization.
orgDisplayName :: Lens' Organization (Maybe Text)
orgDisplayName
  = lens _orgDisplayName
      (\ s a -> s{_orgDisplayName = a})

-- | Immutable. The G Suite \/ Workspace customer id used in the Directory
-- API.
orgDirectoryCustomerId :: Lens' Organization (Maybe Text)
orgDirectoryCustomerId
  = lens _orgDirectoryCustomerId
      (\ s a -> s{_orgDirectoryCustomerId = a})

-- | Output only. Timestamp when the Organization was created.
orgCreateTime :: Lens' Organization (Maybe UTCTime)
orgCreateTime
  = lens _orgCreateTime
      (\ s a -> s{_orgCreateTime = a})
      . mapping _DateTime

instance FromJSON Organization where
        parseJSON
          = withObject "Organization"
              (\ o ->
                 Organization' <$>
                   (o .:? "etag") <*> (o .:? "state") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "deleteTime")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "directoryCustomerId")
                     <*> (o .:? "createTime"))

instance ToJSON Organization where
        toJSON Organization'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _orgEtag,
                  ("state" .=) <$> _orgState,
                  ("updateTime" .=) <$> _orgUpdateTime,
                  ("deleteTime" .=) <$> _orgDeleteTime,
                  ("name" .=) <$> _orgName,
                  ("displayName" .=) <$> _orgDisplayName,
                  ("directoryCustomerId" .=) <$>
                    _orgDirectoryCustomerId,
                  ("createTime" .=) <$> _orgCreateTime])

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

-- | The request sent to the UndeleteProject method.
--
-- /See:/ 'undeleteProjectRequest' smart constructor.
data UndeleteProjectRequest =
  UndeleteProjectRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UndeleteProjectRequest' with the minimum fields required to make a request.
--
undeleteProjectRequest
    :: UndeleteProjectRequest
undeleteProjectRequest = UndeleteProjectRequest'


instance FromJSON UndeleteProjectRequest where
        parseJSON
          = withObject "UndeleteProjectRequest"
              (\ o -> pure UndeleteProjectRequest')

instance ToJSON UndeleteProjectRequest where
        toJSON = const emptyObject

-- | A Lien represents an encumbrance on the actions that can be performed on
-- a resource.
--
-- /See:/ 'lien' smart constructor.
data Lien =
  Lien'
    { _lParent :: !(Maybe Text)
    , _lOrigin :: !(Maybe Text)
    , _lReason :: !(Maybe Text)
    , _lName :: !(Maybe Text)
    , _lRestrictions :: !(Maybe [Text])
    , _lCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Lien' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lParent'
--
-- * 'lOrigin'
--
-- * 'lReason'
--
-- * 'lName'
--
-- * 'lRestrictions'
--
-- * 'lCreateTime'
lien
    :: Lien
lien =
  Lien'
    { _lParent = Nothing
    , _lOrigin = Nothing
    , _lReason = Nothing
    , _lName = Nothing
    , _lRestrictions = Nothing
    , _lCreateTime = Nothing
    }


-- | A reference to the resource this Lien is attached to. The server will
-- validate the parent against those for which Liens are supported.
-- Example: \`projects\/1234\`
lParent :: Lens' Lien (Maybe Text)
lParent = lens _lParent (\ s a -> s{_lParent = a})

-- | A stable, user-visible\/meaningful string identifying the origin of the
-- Lien, intended to be inspected programmatically. Maximum length of 200
-- characters. Example: \'compute.googleapis.com\'
lOrigin :: Lens' Lien (Maybe Text)
lOrigin = lens _lOrigin (\ s a -> s{_lOrigin = a})

-- | Concise user-visible strings indicating why an action cannot be
-- performed on a resource. Maximum length of 200 characters. Example:
-- \'Holds production API key\'
lReason :: Lens' Lien (Maybe Text)
lReason = lens _lReason (\ s a -> s{_lReason = a})

-- | A system-generated unique identifier for this Lien. Example:
-- \`liens\/1234abcd\`
lName :: Lens' Lien (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | The types of operations which should be blocked as a result of this
-- Lien. Each value should correspond to an IAM permission. The server will
-- validate the permissions against those for which Liens are supported. An
-- empty list is meaningless and will be rejected. Example:
-- [\'resourcemanager.projects.delete\']
lRestrictions :: Lens' Lien [Text]
lRestrictions
  = lens _lRestrictions
      (\ s a -> s{_lRestrictions = a})
      . _Default
      . _Coerce

-- | The creation time of this Lien.
lCreateTime :: Lens' Lien (Maybe UTCTime)
lCreateTime
  = lens _lCreateTime (\ s a -> s{_lCreateTime = a}) .
      mapping _DateTime

instance FromJSON Lien where
        parseJSON
          = withObject "Lien"
              (\ o ->
                 Lien' <$>
                   (o .:? "parent") <*> (o .:? "origin") <*>
                     (o .:? "reason")
                     <*> (o .:? "name")
                     <*> (o .:? "restrictions" .!= mempty)
                     <*> (o .:? "createTime"))

instance ToJSON Lien where
        toJSON Lien'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _lParent,
                  ("origin" .=) <$> _lOrigin,
                  ("reason" .=) <$> _lReason, ("name" .=) <$> _lName,
                  ("restrictions" .=) <$> _lRestrictions,
                  ("createTime" .=) <$> _lCreateTime])

-- | The MoveFolder request message.
--
-- /See:/ 'moveFolderRequest' smart constructor.
newtype MoveFolderRequest =
  MoveFolderRequest'
    { _mfrDestinationParent :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MoveFolderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfrDestinationParent'
moveFolderRequest
    :: MoveFolderRequest
moveFolderRequest = MoveFolderRequest' {_mfrDestinationParent = Nothing}


-- | Required. The resource name of the folder or organization which should
-- be the folder\'s new parent. Must be of the form
-- \`folders\/{folder_id}\` or \`organizations\/{org_id}\`.
mfrDestinationParent :: Lens' MoveFolderRequest (Maybe Text)
mfrDestinationParent
  = lens _mfrDestinationParent
      (\ s a -> s{_mfrDestinationParent = a})

instance FromJSON MoveFolderRequest where
        parseJSON
          = withObject "MoveFolderRequest"
              (\ o ->
                 MoveFolderRequest' <$> (o .:? "destinationParent"))

instance ToJSON MoveFolderRequest where
        toJSON MoveFolderRequest'{..}
          = object
              (catMaybes
                 [("destinationParent" .=) <$> _mfrDestinationParent])

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by \`DeleteProject\`.
--
-- /See:/ 'deleteProjectMetadata' smart constructor.
data DeleteProjectMetadata =
  DeleteProjectMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteProjectMetadata' with the minimum fields required to make a request.
--
deleteProjectMetadata
    :: DeleteProjectMetadata
deleteProjectMetadata = DeleteProjectMetadata'


instance FromJSON DeleteProjectMetadata where
        parseJSON
          = withObject "DeleteProjectMetadata"
              (\ o -> pure DeleteProjectMetadata')

instance ToJSON DeleteProjectMetadata where
        toJSON = const emptyObject

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by UpdateProject.
--
-- /See:/ 'updateProjectMetadata' smart constructor.
data UpdateProjectMetadata =
  UpdateProjectMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateProjectMetadata' with the minimum fields required to make a request.
--
updateProjectMetadata
    :: UpdateProjectMetadata
updateProjectMetadata = UpdateProjectMetadata'


instance FromJSON UpdateProjectMetadata where
        parseJSON
          = withObject "UpdateProjectMetadata"
              (\ o -> pure UpdateProjectMetadata')

instance ToJSON UpdateProjectMetadata where
        toJSON = const emptyObject

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by MoveProject.
--
-- /See:/ 'moveProjectMetadata' smart constructor.
data MoveProjectMetadata =
  MoveProjectMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MoveProjectMetadata' with the minimum fields required to make a request.
--
moveProjectMetadata
    :: MoveProjectMetadata
moveProjectMetadata = MoveProjectMetadata'


instance FromJSON MoveProjectMetadata where
        parseJSON
          = withObject "MoveProjectMetadata"
              (\ o -> pure MoveProjectMetadata')

instance ToJSON MoveProjectMetadata where
        toJSON = const emptyObject

-- | Runtime operation information for updating a TagKey.
--
-- /See:/ 'updateTagKeyMetadata' smart constructor.
data UpdateTagKeyMetadata =
  UpdateTagKeyMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateTagKeyMetadata' with the minimum fields required to make a request.
--
updateTagKeyMetadata
    :: UpdateTagKeyMetadata
updateTagKeyMetadata = UpdateTagKeyMetadata'


instance FromJSON UpdateTagKeyMetadata where
        parseJSON
          = withObject "UpdateTagKeyMetadata"
              (\ o -> pure UpdateTagKeyMetadata')

instance ToJSON UpdateTagKeyMetadata where
        toJSON = const emptyObject

-- | Runtime operation information for deleting a TagKey.
--
-- /See:/ 'deleteTagKeyMetadata' smart constructor.
data DeleteTagKeyMetadata =
  DeleteTagKeyMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteTagKeyMetadata' with the minimum fields required to make a request.
--
deleteTagKeyMetadata
    :: DeleteTagKeyMetadata
deleteTagKeyMetadata = DeleteTagKeyMetadata'


instance FromJSON DeleteTagKeyMetadata where
        parseJSON
          = withObject "DeleteTagKeyMetadata"
              (\ o -> pure DeleteTagKeyMetadata')

instance ToJSON DeleteTagKeyMetadata where
        toJSON = const emptyObject

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

-- | The ListTagBindings response.
--
-- /See:/ 'listTagBindingsResponse' smart constructor.
data ListTagBindingsResponse =
  ListTagBindingsResponse'
    { _ltbrNextPageToken :: !(Maybe Text)
    , _ltbrTagBindings :: !(Maybe [TagBinding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTagBindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltbrNextPageToken'
--
-- * 'ltbrTagBindings'
listTagBindingsResponse
    :: ListTagBindingsResponse
listTagBindingsResponse =
  ListTagBindingsResponse'
    {_ltbrNextPageToken = Nothing, _ltbrTagBindings = Nothing}


-- | Pagination token. If the result set is too large to fit in a single
-- response, this token is returned. It encodes the position of the current
-- result cursor. Feeding this value into a new list request with the
-- \`page_token\` parameter gives the next page of the results. When
-- \`next_page_token\` is not filled in, there is no next page and the list
-- returned is the last page in the result set. Pagination tokens have a
-- limited lifetime.
ltbrNextPageToken :: Lens' ListTagBindingsResponse (Maybe Text)
ltbrNextPageToken
  = lens _ltbrNextPageToken
      (\ s a -> s{_ltbrNextPageToken = a})

-- | A possibly paginated list of TagBindings for the specified resource.
ltbrTagBindings :: Lens' ListTagBindingsResponse [TagBinding]
ltbrTagBindings
  = lens _ltbrTagBindings
      (\ s a -> s{_ltbrTagBindings = a})
      . _Default
      . _Coerce

instance FromJSON ListTagBindingsResponse where
        parseJSON
          = withObject "ListTagBindingsResponse"
              (\ o ->
                 ListTagBindingsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "tagBindings" .!= mempty))

instance ToJSON ListTagBindingsResponse where
        toJSON ListTagBindingsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltbrNextPageToken,
                  ("tagBindings" .=) <$> _ltbrTagBindings])
