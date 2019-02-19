{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceManager.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types.Sum

-- | The ListFolders response message.
--
-- /See:/ 'listFoldersResponse' smart constructor.
data ListFoldersResponse =
  ListFoldersResponse'
    { _lfrNextPageToken :: !(Maybe Text)
    , _lfrFolders       :: !(Maybe [Folder])
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
-- indicates from where listing should continue. This field is optional.
lfrNextPageToken :: Lens' ListFoldersResponse (Maybe Text)
lfrNextPageToken
  = lens _lfrNextPageToken
      (\ s a -> s{_lfrNextPageToken = a})

-- | A possibly paginated list of Folders that are direct descendants of the
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

-- | The request message for searching folders.
--
-- /See:/ 'searchFoldersRequest' smart constructor.
data SearchFoldersRequest =
  SearchFoldersRequest'
    { _sfrQuery     :: !(Maybe Text)
    , _sfrPageToken :: !(Maybe Text)
    , _sfrPageSize  :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchFoldersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfrQuery'
--
-- * 'sfrPageToken'
--
-- * 'sfrPageSize'
searchFoldersRequest
    :: SearchFoldersRequest
searchFoldersRequest =
  SearchFoldersRequest'
    {_sfrQuery = Nothing, _sfrPageToken = Nothing, _sfrPageSize = Nothing}


-- | Search criteria used to select the Folders to return. If no search
-- criteria is specified then all accessible folders will be returned.
-- Query expressions can be used to restrict results based upon
-- displayName, lifecycleState and parent, where the operators \`=\`,
-- \`NOT\`, \`AND\` and \`OR\` can be used along with the suffix wildcard
-- symbol \`*\`. The displayName field in a query expression should use
-- escaped quotes for values that include whitespace to prevent unexpected
-- behavior. Some example queries are: |Query | Description| |----- |
-- -----------| |displayName=Test* | Folders whose display name starts with
-- \"Test\".| |lifecycleState=ACTIVE | Folders whose lifecycleState is
-- ACTIVE.| |parent=folders\/123 | Folders whose parent is
-- \"folders\/123\".| |parent=folders\/123 AND lifecycleState=ACTIVE |
-- Active folders whose parent is \"folders\/123\".|
-- |displayName=\\\\\"Test String\\\\\"|Folders whose display name includes
-- both \"Test\" and \"String\".|
sfrQuery :: Lens' SearchFoldersRequest (Maybe Text)
sfrQuery = lens _sfrQuery (\ s a -> s{_sfrQuery = a})

-- | A pagination token returned from a previous call to \`SearchFolders\`
-- that indicates from where search should continue. This field is
-- optional.
sfrPageToken :: Lens' SearchFoldersRequest (Maybe Text)
sfrPageToken
  = lens _sfrPageToken (\ s a -> s{_sfrPageToken = a})

-- | The maximum number of folders to return in the response. This field is
-- optional.
sfrPageSize :: Lens' SearchFoldersRequest (Maybe Int32)
sfrPageSize
  = lens _sfrPageSize (\ s a -> s{_sfrPageSize = a}) .
      mapping _Coerce

instance FromJSON SearchFoldersRequest where
        parseJSON
          = withObject "SearchFoldersRequest"
              (\ o ->
                 SearchFoldersRequest' <$>
                   (o .:? "query") <*> (o .:? "pageToken") <*>
                     (o .:? "pageSize"))

instance ToJSON SearchFoldersRequest where
        toJSON SearchFoldersRequest'{..}
          = object
              (catMaybes
                 [("query" .=) <$> _sfrQuery,
                  ("pageToken" .=) <$> _sfrPageToken,
                  ("pageSize" .=) <$> _sfrPageSize])

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

-- | The response message for searching folders.
--
-- /See:/ 'searchFoldersResponse' smart constructor.
data SearchFoldersResponse =
  SearchFoldersResponse'
    { _sfrNextPageToken :: !(Maybe Text)
    , _sfrFolders       :: !(Maybe [Folder])
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
-- that indicates from where searching should continue. This field is
-- optional.
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
    { _pcsGettable   :: !(Maybe Bool)
    , _pcsReady      :: !(Maybe Bool)
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

-- | A Folder in an Organization\'s resource hierarchy, used to organize that
-- Organization\'s resources.
--
-- /See:/ 'folder' smart constructor.
data Folder =
  Folder'
    { _fParent         :: !(Maybe Text)
    , _fName           :: !(Maybe Text)
    , _fDisplayName    :: !(Maybe Text)
    , _fLifecycleState :: !(Maybe FolderLifecycleState)
    , _fCreateTime     :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Folder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fParent'
--
-- * 'fName'
--
-- * 'fDisplayName'
--
-- * 'fLifecycleState'
--
-- * 'fCreateTime'
folder
    :: Folder
folder =
  Folder'
    { _fParent = Nothing
    , _fName = Nothing
    , _fDisplayName = Nothing
    , _fLifecycleState = Nothing
    , _fCreateTime = Nothing
    }


-- | The Folder’s parent\'s resource name. Updates to the folder\'s parent
-- must be performed via MoveFolder.
fParent :: Lens' Folder (Maybe Text)
fParent = lens _fParent (\ s a -> s{_fParent = a})

-- | Output only. The resource name of the Folder. Its format is
-- \`folders\/{folder_id}\`, for example: \"folders\/1234\".
fName :: Lens' Folder (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | The folder’s display name. A folder’s display name must be unique
-- amongst its siblings, e.g. no two folders with the same parent can share
-- the same display name. The display name must start and end with a letter
-- or digit, may contain letters, digits, spaces, hyphens and underscores
-- and can be no longer than 30 characters. This is captured by the regular
-- expression: [\\p{L}\\p{N}]([\\p{L}\\p{N}_- ]{0,28}[\\p{L}\\p{N}])?.
fDisplayName :: Lens' Folder (Maybe Text)
fDisplayName
  = lens _fDisplayName (\ s a -> s{_fDisplayName = a})

-- | Output only. The lifecycle state of the folder. Updates to the
-- lifecycle_state must be performed via DeleteFolder and UndeleteFolder.
fLifecycleState :: Lens' Folder (Maybe FolderLifecycleState)
fLifecycleState
  = lens _fLifecycleState
      (\ s a -> s{_fLifecycleState = a})

-- | Output only. Timestamp when the Folder was created. Assigned by the
-- server.
fCreateTime :: Lens' Folder (Maybe UTCTime)
fCreateTime
  = lens _fCreateTime (\ s a -> s{_fCreateTime = a}) .
      mapping _DateTime

instance FromJSON Folder where
        parseJSON
          = withObject "Folder"
              (\ o ->
                 Folder' <$>
                   (o .:? "parent") <*> (o .:? "name") <*>
                     (o .:? "displayName")
                     <*> (o .:? "lifecycleState")
                     <*> (o .:? "createTime"))

instance ToJSON Folder where
        toJSON Folder'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _fParent, ("name" .=) <$> _fName,
                  ("displayName" .=) <$> _fDisplayName,
                  ("lifecycleState" .=) <$> _fLifecycleState,
                  ("createTime" .=) <$> _fCreateTime])

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

-- | Metadata describing a long running folder operation
--
-- /See:/ 'folderOperation' smart constructor.
data FolderOperation =
  FolderOperation'
    { _foDestinationParent :: !(Maybe Text)
    , _foDisplayName       :: !(Maybe Text)
    , _foOperationType     :: !(Maybe FolderOperationOperationType)
    , _foSourceParent      :: !(Maybe Text)
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


-- | The resource name of the Folder or Organization to reparent the folder
-- under. Must be of the form \`folders\/{folder_id}\` or
-- \`organizations\/{org_id}\`.
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
