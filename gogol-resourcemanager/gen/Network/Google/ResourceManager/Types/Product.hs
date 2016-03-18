{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceManager.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types.Sum

-- | A container to reference an id for any resource type. A \`resource\` in
-- Google Cloud Platform is a generic term for something you (a developer)
-- may want to interact with through one of our API\'s. Some examples are
-- an AppEngine app, a Compute Engine instance, a Cloud SQL database, and
-- so on.
--
-- /See:/ 'resourceId' smart constructor.
data ResourceId = ResourceId
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
    ResourceId
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
                 ResourceId <$> (o .:? "id") <*> (o .:? "type"))

instance ToJSON ResourceId where
        toJSON ResourceId{..}
          = object
              (catMaybes
                 [("id" .=) <$> _riId, ("type" .=) <$> _riType])

-- | A page of the response received from the ListProjects method. A
-- paginated response where more pages are available has
-- \`next_page_token\` set. This token can be used in a subsequent request
-- to retrieve the next request page.
--
-- /See:/ 'listProjectsResponse' smart constructor.
data ListProjectsResponse = ListProjectsResponse
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
    ListProjectsResponse
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
                 ListProjectsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "projects" .!= mempty))

instance ToJSON ListProjectsResponse where
        toJSON ListProjectsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lprNextPageToken,
                  ("projects" .=) <$> _lprProjects])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
data GetIAMPolicyRequest =
    GetIAMPolicyRequest
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest)

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | A Project is a high-level Google Cloud Platform entity. It is a
-- container for ACLs, APIs, AppEngine Apps, VMs, and other Google Cloud
-- Platform resources.
--
-- /See:/ 'project' smart constructor.
data Project = Project
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
    Project
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

-- | The user-assigned name of the Project. It must be 4 to 30 characters.
-- Allowed characters are: lowercase and uppercase letters, numbers,
-- hyphen, single-quote, double-quote, space, and exclamation point.
-- Example: My Project Read-write.
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
                 Project <$>
                   (o .:? "parent") <*> (o .:? "projectNumber") <*>
                     (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "projectId")
                     <*> (o .:? "lifecycleState")
                     <*> (o .:? "createTime"))

instance ToJSON Project where
        toJSON Project{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _pParent,
                  ("projectNumber" .=) <$> _pProjectNumber,
                  ("name" .=) <$> _pName, ("labels" .=) <$> _pLabels,
                  ("projectId" .=) <$> _pProjectId,
                  ("lifecycleState" .=) <$> _pLifecycleState,
                  ("createTime" .=) <$> _pCreateTime])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty)

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest = SetIAMPolicyRequest
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
    SetIAMPolicyRequest
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
              (\ o -> SetIAMPolicyRequest <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest = TestIAMPermissionsRequest
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
    TestIAMPermissionsRequest
    { _tiprPermissions = Nothing
    }

-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see IAM Overview.
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
                 TestIAMPermissionsRequest <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse = TestIAMPermissionsResponse
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
    TestIAMPermissionsResponse
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
                 TestIAMPermissionsResponse <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse{..}
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
data Policy = Policy
    { _pEtag     :: !(Maybe (Textual Word8))
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
    Policy
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
pEtag :: Lens' Policy (Maybe Word8)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Coerce

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
                 Policy <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy{..}
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
newtype ProjectLabels = ProjectLabels
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
    ProjectLabels
    { _plAddtional = _Coerce # pPlAddtional_
    }

plAddtional :: Lens' ProjectLabels (HashMap Text Text)
plAddtional
  = lens _plAddtional (\ s a -> s{_plAddtional = a}) .
      _Coerce

instance FromJSON ProjectLabels where
        parseJSON
          = withObject "ProjectLabels"
              (\ o -> ProjectLabels <$> (parseJSONObject o))

instance ToJSON ProjectLabels where
        toJSON = toJSON . _plAddtional

-- | The request sent to the UndeleteProject method.
--
-- /See:/ 'undeleteProjectRequest' smart constructor.
data UndeleteProjectRequest =
    UndeleteProjectRequest
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UndeleteProjectRequest' with the minimum fields required to make a request.
--
undeleteProjectRequest
    :: UndeleteProjectRequest
undeleteProjectRequest = UndeleteProjectRequest

instance FromJSON UndeleteProjectRequest where
        parseJSON
          = withObject "UndeleteProjectRequest"
              (\ o -> pure UndeleteProjectRequest)

instance ToJSON UndeleteProjectRequest where
        toJSON = const emptyObject

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding = Binding
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
    Binding
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
                 Binding <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role"))

instance ToJSON Binding where
        toJSON Binding{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole])
