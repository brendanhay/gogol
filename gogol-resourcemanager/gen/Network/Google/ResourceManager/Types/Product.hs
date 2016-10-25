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
-- package \`google.rpc\` which can be used for common error conditions. #
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
-- steps. Each step may have a \`Status\` message for error reporting
-- purpose. - Batch operations. If a client uses batch request and batch
-- response, the \`Status\` message should be used directly inside batch
-- response, one for each error sub-response. - Asynchronous operations. If
-- an API call embeds asynchronous operation results in its response, the
-- status of those operations should be represented directly using the
-- \`Status\` message. - Logging. If some API errors are stored in logs,
-- the message \`Status\` could be used directly after any stripping needed
-- for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
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

-- | The request sent to the \`SearchOrganizations\` method.
--
-- /See:/ 'searchOrganizationsRequest' smart constructor.
data SearchOrganizationsRequest = SearchOrganizationsRequest'
    { _sorFilter    :: !(Maybe Text)
    , _sorPageToken :: !(Maybe Text)
    , _sorPageSize  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchOrganizationsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sorFilter'
--
-- * 'sorPageToken'
--
-- * 'sorPageSize'
searchOrganizationsRequest
    :: SearchOrganizationsRequest
searchOrganizationsRequest =
    SearchOrganizationsRequest'
    { _sorFilter = Nothing
    , _sorPageToken = Nothing
    , _sorPageSize = Nothing
    }

-- | An optional query string used to filter the Organizations to return in
-- the response. Filter rules are case-insensitive. Organizations may be
-- filtered by \`owner.directoryCustomerId\` or by \`domain\`, where the
-- domain is a Google for Work domain, for example: |Filter|Description|
-- |------|-----------| |owner.directorycustomerid:123456789|Organizations
-- with \`owner.directory_customer_id\` equal to \`123456789\`.|
-- |domain:google.com|Organizations corresponding to the domain
-- \`google.com\`.| This field is optional.
sorFilter :: Lens' SearchOrganizationsRequest (Maybe Text)
sorFilter
  = lens _sorFilter (\ s a -> s{_sorFilter = a})

-- | A pagination token returned from a previous call to
-- \`SearchOrganizations\` that indicates from where listing should
-- continue. This field is optional.
sorPageToken :: Lens' SearchOrganizationsRequest (Maybe Text)
sorPageToken
  = lens _sorPageToken (\ s a -> s{_sorPageToken = a})

-- | The maximum number of Organizations to return in the response. This
-- field is optional.
sorPageSize :: Lens' SearchOrganizationsRequest (Maybe Int32)
sorPageSize
  = lens _sorPageSize (\ s a -> s{_sorPageSize = a}) .
      mapping _Coerce

instance FromJSON SearchOrganizationsRequest where
        parseJSON
          = withObject "SearchOrganizationsRequest"
              (\ o ->
                 SearchOrganizationsRequest' <$>
                   (o .:? "filter") <*> (o .:? "pageToken") <*>
                     (o .:? "pageSize"))

instance ToJSON SearchOrganizationsRequest where
        toJSON SearchOrganizationsRequest'{..}
          = object
              (catMaybes
                 [("filter" .=) <$> _sorFilter,
                  ("pageToken" .=) <$> _sorPageToken,
                  ("pageSize" .=) <$> _sorPageSize])

-- | A container to reference an id for any resource type. A \`resource\` in
-- Google Cloud Platform is a generic term for something you (a developer)
-- may want to interact with through one of our API\'s. Some examples are
-- an AppEngine app, a Compute Engine instance, a Cloud SQL database, and
-- so on.
--
-- /See:/ 'resourceId' smart constructor.
data ResourceId = ResourceId'
    { _riId   :: !(Maybe Text)
    , _riType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riId'
--
-- * 'riType'
resourceId
    :: ResourceId
resourceId =
    ResourceId'
    { _riId = Nothing
    , _riType = Nothing
    }

-- | Required field for the type-specific id. This should correspond to the
-- id used in the type-specific API\'s.
riId :: Lens' ResourceId (Maybe Text)
riId = lens _riId (\ s a -> s{_riId = a})

-- | Required field representing the resource type this id is for. At
-- present, the only valid type is \"organization\".
riType :: Lens' ResourceId (Maybe Text)
riType = lens _riType (\ s a -> s{_riType = a})

instance FromJSON ResourceId where
        parseJSON
          = withObject "ResourceId"
              (\ o ->
                 ResourceId' <$> (o .:? "id") <*> (o .:? "type"))

instance ToJSON ResourceId where
        toJSON ResourceId'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _riId, ("type" .=) <$> _riType])

-- | A page of the response received from the ListProjects method. A
-- paginated response where more pages are available has
-- \`next_page_token\` set. This token can be used in a subsequent request
-- to retrieve the next request page.
--
-- /See:/ 'listProjectsResponse' smart constructor.
data ListProjectsResponse = ListProjectsResponse'
    { _lprNextPageToken :: !(Maybe Text)
    , _lprProjects      :: !(Maybe [Project])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListProjectsResponse'
    { _lprNextPageToken = Nothing
    , _lprProjects = Nothing
    }

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

-- | The list of Projects that matched the list filter. This list can be
-- paginated.
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
data GetIAMPolicyRequest =
    GetIAMPolicyRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The entity that owns an Organization. The lifetime of the Organization
-- and all of its descendants are bound to the \`OrganizationOwner\`. If
-- the \`OrganizationOwner\` is deleted, the Organization and all its
-- descendants will be deleted.
--
-- /See:/ 'organizationOwner' smart constructor.
newtype OrganizationOwner = OrganizationOwner'
    { _ooDirectoryCustomerId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationOwner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooDirectoryCustomerId'
organizationOwner
    :: OrganizationOwner
organizationOwner =
    OrganizationOwner'
    { _ooDirectoryCustomerId = Nothing
    }

-- | The Google for Work customer id used in the Directory API.
ooDirectoryCustomerId :: Lens' OrganizationOwner (Maybe Text)
ooDirectoryCustomerId
  = lens _ooDirectoryCustomerId
      (\ s a -> s{_ooDirectoryCustomerId = a})

instance FromJSON OrganizationOwner where
        parseJSON
          = withObject "OrganizationOwner"
              (\ o ->
                 OrganizationOwner' <$> (o .:? "directoryCustomerId"))

instance ToJSON OrganizationOwner where
        toJSON OrganizationOwner'{..}
          = object
              (catMaybes
                 [("directoryCustomerId" .=) <$>
                    _ooDirectoryCustomerId])

-- | A Project is a high-level Google Cloud Platform entity. It is a
-- container for ACLs, APIs, AppEngine Apps, VMs, and other Google Cloud
-- Platform resources.
--
-- /See:/ 'project' smart constructor.
data Project = Project'
    { _pParent         :: !(Maybe ResourceId)
    , _pProjectNumber  :: !(Maybe (Textual Int64))
    , _pName           :: !(Maybe Text)
    , _pLabels         :: !(Maybe ProjectLabels)
    , _pProjectId      :: !(Maybe Text)
    , _pLifecycleState :: !(Maybe Text)
    , _pCreateTime     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pProjectNumber'
--
-- * 'pName'
--
-- * 'pLabels'
--
-- * 'pProjectId'
--
-- * 'pLifecycleState'
--
-- * 'pCreateTime'
project
    :: Project
project =
    Project'
    { _pParent = Nothing
    , _pProjectNumber = Nothing
    , _pName = Nothing
    , _pLabels = Nothing
    , _pProjectId = Nothing
    , _pLifecycleState = Nothing
    , _pCreateTime = Nothing
    }

-- | An optional reference to a parent Resource. The only supported parent
-- type is \"organization\". Once set, the parent cannot be modified.
-- Read-write.
pParent :: Lens' Project (Maybe ResourceId)
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | The number uniquely identifying the project. Example: 415104041262
-- Read-only.
pProjectNumber :: Lens' Project (Maybe Int64)
pProjectNumber
  = lens _pProjectNumber
      (\ s a -> s{_pProjectNumber = a})
      . mapping _Coerce

-- | The user-assigned display name of the Project. It must be 4 to 30
-- characters. Allowed characters are: lowercase and uppercase letters,
-- numbers, hyphen, single-quote, double-quote, space, and exclamation
-- point. Example: My Project Read-write.
pName :: Lens' Project (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | The labels associated with this Project. Label keys must be between 1
-- and 63 characters long and must conform to the following regular
-- expression: \\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?. Label values must be
-- between 0 and 63 characters long and must conform to the regular
-- expression (\\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?)?. No more than 256
-- labels can be associated with a given resource. Clients should store
-- labels in a representation such as JSON that does not depend on specific
-- characters being disallowed. Example: \"environment\" : \"dev\"
-- Read-write.
pLabels :: Lens' Project (Maybe ProjectLabels)
pLabels = lens _pLabels (\ s a -> s{_pLabels = a})

-- | The unique, user-assigned ID of the Project. It must be 6 to 30
-- lowercase letters, digits, or hyphens. It must start with a letter.
-- Trailing hyphens are prohibited. Example: tokyo-rain-123 Read-only after
-- creation.
pProjectId :: Lens' Project (Maybe Text)
pProjectId
  = lens _pProjectId (\ s a -> s{_pProjectId = a})

-- | The Project lifecycle state. Read-only.
pLifecycleState :: Lens' Project (Maybe Text)
pLifecycleState
  = lens _pLifecycleState
      (\ s a -> s{_pLifecycleState = a})

-- | Creation time. Read-only.
pCreateTime :: Lens' Project (Maybe Text)
pCreateTime
  = lens _pCreateTime (\ s a -> s{_pCreateTime = a})

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ o ->
                 Project' <$>
                   (o .:? "parent") <*> (o .:? "projectNumber") <*>
                     (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "projectId")
                     <*> (o .:? "lifecycleState")
                     <*> (o .:? "createTime"))

instance ToJSON Project where
        toJSON Project'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _pParent,
                  ("projectNumber" .=) <$> _pProjectNumber,
                  ("name" .=) <$> _pName, ("labels" .=) <$> _pLabels,
                  ("projectId" .=) <$> _pProjectId,
                  ("lifecycleState" .=) <$> _pLifecycleState,
                  ("createTime" .=) <$> _pCreateTime])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- If true, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure.
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

-- | A status object which is used as the \`metadata\` field for the
-- Operation returned by CreateProject. It provides insight for when
-- significant phases of Project creation have completed.
--
-- /See:/ 'projectCreationStatus' smart constructor.
data ProjectCreationStatus = ProjectCreationStatus'
    { _pcsGettable   :: !(Maybe Bool)
    , _pcsReady      :: !(Maybe Bool)
    , _pcsCreateTime :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _pcsGettable = Nothing
    , _pcsReady = Nothing
    , _pcsCreateTime = Nothing
    }

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
pcsCreateTime :: Lens' ProjectCreationStatus (Maybe Text)
pcsCreateTime
  = lens _pcsCreateTime
      (\ s a -> s{_pcsCreateTime = a})

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
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

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
newtype FolderOperationError = FolderOperationError'
    { _foeErrorMessageId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FolderOperationError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'foeErrorMessageId'
folderOperationError
    :: FolderOperationError
folderOperationError =
    FolderOperationError'
    { _foeErrorMessageId = Nothing
    }

-- | The type of operation error experienced.
foeErrorMessageId :: Lens' FolderOperationError (Maybe Text)
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

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest = SetIAMPolicyRequest'
    { _siprPolicy :: Maybe Policy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
    SetIAMPolicyRequest'
    { _siprPolicy = Nothing
    }

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
              (\ o -> SetIAMPolicyRequest' <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

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

-- | The response returned from the \`SearchOrganizations\` method.
--
-- /See:/ 'searchOrganizationsResponse' smart constructor.
data SearchOrganizationsResponse = SearchOrganizationsResponse'
    { _sorNextPageToken :: !(Maybe Text)
    , _sorOrganizations :: !(Maybe [Organization])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _sorNextPageToken = Nothing
    , _sorOrganizations = Nothing
    }

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
-- \`Policy\` consists of a list of \`bindings\`. A \`Binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **Example** {
-- \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\", ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } For a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam).
--
-- /See:/ 'policy' smart constructor.
data Policy = Policy'
    { _pEtag     :: !(Maybe Base64)
    , _pVersion  :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }

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
      mapping _Base64

-- | Version of the \`Policy\`. The default version is 0.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Multiple \`bindings\`
-- must not be specified for the same \`role\`. \`bindings\` with no
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
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | The labels associated with this Project. Label keys must be between 1
-- and 63 characters long and must conform to the following regular
-- expression: \\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?. Label values must be
-- between 0 and 63 characters long and must conform to the regular
-- expression (\\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?)?. No more than 256
-- labels can be associated with a given resource. Clients should store
-- labels in a representation such as JSON that does not depend on specific
-- characters being disallowed. Example: \"environment\" : \"dev\"
-- Read-write.
--
-- /See:/ 'projectLabels' smart constructor.
newtype ProjectLabels = ProjectLabels'
    { _plAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plAddtional'
projectLabels
    :: HashMap Text Text -- ^ 'plAddtional'
    -> ProjectLabels
projectLabels pPlAddtional_ =
    ProjectLabels'
    { _plAddtional = _Coerce # pPlAddtional_
    }

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
newtype OperationMetadata = OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
    OperationMetadata'
    { _omAddtional = _Coerce # pOmAddtional_
    }

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
data FolderOperation = FolderOperation'
    { _foDestinationParent :: !(Maybe Text)
    , _foDisplayName       :: !(Maybe Text)
    , _foOperationType     :: !(Maybe Text)
    , _foSourceParent      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
foOperationType :: Lens' FolderOperation (Maybe Text)
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

-- | The root node in the resource hierarchy to which a particular entity\'s
-- (e.g., company) resources belong.
--
-- /See:/ 'organization' smart constructor.
data Organization = Organization'
    { _orgCreationTime   :: !(Maybe Text)
    , _orgOwner          :: !(Maybe OrganizationOwner)
    , _orgName           :: !(Maybe Text)
    , _orgDisplayName    :: !(Maybe Text)
    , _orgLifecycleState :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Organization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orgCreationTime'
--
-- * 'orgOwner'
--
-- * 'orgName'
--
-- * 'orgDisplayName'
--
-- * 'orgLifecycleState'
organization
    :: Organization
organization =
    Organization'
    { _orgCreationTime = Nothing
    , _orgOwner = Nothing
    , _orgName = Nothing
    , _orgDisplayName = Nothing
    , _orgLifecycleState = Nothing
    }

-- | Timestamp when the Organization was created. Assigned by the server.
-- \'OutputOnly
orgCreationTime :: Lens' Organization (Maybe Text)
orgCreationTime
  = lens _orgCreationTime
      (\ s a -> s{_orgCreationTime = a})

-- | The owner of this Organization. The owner should be specified on
-- creation. Once set, it cannot be changed. This field is required.
orgOwner :: Lens' Organization (Maybe OrganizationOwner)
orgOwner = lens _orgOwner (\ s a -> s{_orgOwner = a})

-- | Output Only. The resource name of the organization. This is the
-- organization\'s relative path in the API. Its format is
-- \"organizations\/[organization_id]\". For example,
-- \"organizations\/1234\".
orgName :: Lens' Organization (Maybe Text)
orgName = lens _orgName (\ s a -> s{_orgName = a})

-- | A friendly string to be used to refer to the Organization in the UI.
-- Assigned by the server, set to the firm name of the Google For Work
-- customer that owns this organization. \'OutputOnly
orgDisplayName :: Lens' Organization (Maybe Text)
orgDisplayName
  = lens _orgDisplayName
      (\ s a -> s{_orgDisplayName = a})

-- | The organization\'s current lifecycle state. Assigned by the server.
-- \'OutputOnly
orgLifecycleState :: Lens' Organization (Maybe Text)
orgLifecycleState
  = lens _orgLifecycleState
      (\ s a -> s{_orgLifecycleState = a})

instance FromJSON Organization where
        parseJSON
          = withObject "Organization"
              (\ o ->
                 Organization' <$>
                   (o .:? "creationTime") <*> (o .:? "owner") <*>
                     (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "lifecycleState"))

instance ToJSON Organization where
        toJSON Organization'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _orgCreationTime,
                  ("owner" .=) <$> _orgOwner, ("name" .=) <$> _orgName,
                  ("displayName" .=) <$> _orgDisplayName,
                  ("lifecycleState" .=) <$> _orgLifecycleState])

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
newtype OperationResponse = OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
    OperationResponse'
    { _orAddtional = _Coerce # pOrAddtional_
    }

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
    deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding = Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
binding
    :: Binding
binding =
    Binding'
    { _bMembers = Nothing
    , _bRole = Nothing
    }

-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` or \`joe\'example.com\`. *
-- \`serviceAccount:{emailid}\`: An email address that represents a service
-- account. For example, \`my-other-app\'appspot.gserviceaccount.com\`. *
-- \`group:{emailid}\`: An email address that represents a Google group.
-- For example, \`admins\'example.com\`. * \`domain:{domain}\`: A Google
-- Apps domain name that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`. Required
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole])
