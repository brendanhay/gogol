{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudIdentity.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudIdentity.Types.Product where

import           Network.Google.CloudIdentity.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'lookupMembershipNameResponse' smart constructor.
newtype LookupMembershipNameResponse =
  LookupMembershipNameResponse'
    { _lmnrName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LookupMembershipNameResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmnrName'
lookupMembershipNameResponse
    :: LookupMembershipNameResponse
lookupMembershipNameResponse =
  LookupMembershipNameResponse' {_lmnrName = Nothing}


-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Membership being looked up. Format:
-- \`groups\/{group_id}\/memberships\/{member_id}\`, where \`group_id\` is
-- the unique ID assigned to the Group to which Membership belongs to, and
-- \`member_id\` is the unique ID assigned to the member.
lmnrName :: Lens' LookupMembershipNameResponse (Maybe Text)
lmnrName = lens _lmnrName (\ s a -> s{_lmnrName = a})

instance FromJSON LookupMembershipNameResponse where
        parseJSON
          = withObject "LookupMembershipNameResponse"
              (\ o ->
                 LookupMembershipNameResponse' <$> (o .:? "name"))

instance ToJSON LookupMembershipNameResponse where
        toJSON LookupMembershipNameResponse'{..}
          = object (catMaybes [("name" .=) <$> _lmnrName])

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

-- | Resource representing a Group.
--
-- /See:/ 'group'' smart constructor.
data Group =
  Group'
    { _gParent      :: !(Maybe Text)
    , _gGroupKey    :: !(Maybe EntityKey)
    , _gUpdateTime  :: !(Maybe DateTime')
    , _gName        :: !(Maybe Text)
    , _gDisplayName :: !(Maybe Text)
    , _gLabels      :: !(Maybe GroupLabels)
    , _gDescription :: !(Maybe Text)
    , _gCreateTime  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gParent'
--
-- * 'gGroupKey'
--
-- * 'gUpdateTime'
--
-- * 'gName'
--
-- * 'gDisplayName'
--
-- * 'gLabels'
--
-- * 'gDescription'
--
-- * 'gCreateTime'
group'
    :: Group
group' =
  Group'
    { _gParent = Nothing
    , _gGroupKey = Nothing
    , _gUpdateTime = Nothing
    , _gName = Nothing
    , _gDisplayName = Nothing
    , _gLabels = Nothing
    , _gDescription = Nothing
    , _gCreateTime = Nothing
    }


-- | The entity under which this Group resides in Cloud Identity resource
-- hierarchy. Must be set when creating a Group, read-only afterwards.
-- Currently allowed types: \`identitysources\`.
gParent :: Lens' Group (Maybe Text)
gParent = lens _gParent (\ s a -> s{_gParent = a})

-- | EntityKey of the Group. Must be set when creating a Group, read-only
-- afterwards.
gGroupKey :: Lens' Group (Maybe EntityKey)
gGroupKey
  = lens _gGroupKey (\ s a -> s{_gGroupKey = a})

-- | The time when the Group was last updated. Output only.
gUpdateTime :: Lens' Group (Maybe UTCTime)
gUpdateTime
  = lens _gUpdateTime (\ s a -> s{_gUpdateTime = a}) .
      mapping _DateTime

-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Group in the format: \`groups\/{group_id}\`, where group_id is the
-- unique ID assigned to the Group. Must be left blank while creating a
-- Group.
gName :: Lens' Group (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | The Group\'s display name.
gDisplayName :: Lens' Group (Maybe Text)
gDisplayName
  = lens _gDisplayName (\ s a -> s{_gDisplayName = a})

-- | \`Required\`. Labels for Group resource. For creating Groups under a
-- namespace, set label key to \'labels\/system\/groups\/external\' and
-- label value as empty.
gLabels :: Lens' Group (Maybe GroupLabels)
gLabels = lens _gLabels (\ s a -> s{_gLabels = a})

-- | An extended description to help users determine the purpose of a Group.
-- For example, you can include information about who should join the
-- Group, the types of messages to send to the Group, links to FAQs about
-- the Group, or related Groups. Maximum length is 4,096 characters.
gDescription :: Lens' Group (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

-- | The time when the Group was created. Output only.
gCreateTime :: Lens' Group (Maybe UTCTime)
gCreateTime
  = lens _gCreateTime (\ s a -> s{_gCreateTime = a}) .
      mapping _DateTime

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group' <$>
                   (o .:? "parent") <*> (o .:? "groupKey") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON Group where
        toJSON Group'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gParent,
                  ("groupKey" .=) <$> _gGroupKey,
                  ("updateTime" .=) <$> _gUpdateTime,
                  ("name" .=) <$> _gName,
                  ("displayName" .=) <$> _gDisplayName,
                  ("labels" .=) <$> _gLabels,
                  ("description" .=) <$> _gDescription,
                  ("createTime" .=) <$> _gCreateTime])

-- | Resource representing a Membership within a Group
--
-- /See:/ 'membership' smart constructor.
data Membership =
  Membership'
    { _mRoles              :: !(Maybe [MembershipRole])
    , _mUpdateTime         :: !(Maybe DateTime')
    , _mName               :: !(Maybe Text)
    , _mPreferredMemberKey :: !(Maybe EntityKey)
    , _mCreateTime         :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Membership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mRoles'
--
-- * 'mUpdateTime'
--
-- * 'mName'
--
-- * 'mPreferredMemberKey'
--
-- * 'mCreateTime'
membership
    :: Membership
membership =
  Membership'
    { _mRoles = Nothing
    , _mUpdateTime = Nothing
    , _mName = Nothing
    , _mPreferredMemberKey = Nothing
    , _mCreateTime = Nothing
    }


-- | Roles for a member within the Group. Currently supported
-- MembershipRoles: \`\"MEMBER\"\`.
mRoles :: Lens' Membership [MembershipRole]
mRoles
  = lens _mRoles (\ s a -> s{_mRoles = a}) . _Default .
      _Coerce

-- | Last updated timestamp of the Membership. Output only.
mUpdateTime :: Lens' Membership (Maybe UTCTime)
mUpdateTime
  = lens _mUpdateTime (\ s a -> s{_mUpdateTime = a}) .
      mapping _DateTime

-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Membership in the format:
-- \`groups\/{group_id}\/memberships\/{member_id}\`, where group_id is the
-- unique ID assigned to the Group to which Membership belongs to, and
-- member_id is the unique ID assigned to the member Must be left blank
-- while creating a Membership.
mName :: Lens' Membership (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | EntityKey of the entity to be added as the member. Must be set while
-- creating a Membership, read-only afterwards. Currently allowed entity
-- types: \`Users\`, \`Groups\`.
mPreferredMemberKey :: Lens' Membership (Maybe EntityKey)
mPreferredMemberKey
  = lens _mPreferredMemberKey
      (\ s a -> s{_mPreferredMemberKey = a})

-- | Creation timestamp of the Membership. Output only.
mCreateTime :: Lens' Membership (Maybe UTCTime)
mCreateTime
  = lens _mCreateTime (\ s a -> s{_mCreateTime = a}) .
      mapping _DateTime

instance FromJSON Membership where
        parseJSON
          = withObject "Membership"
              (\ o ->
                 Membership' <$>
                   (o .:? "roles" .!= mempty) <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "preferredMemberKey")
                     <*> (o .:? "createTime"))

instance ToJSON Membership where
        toJSON Membership'{..}
          = object
              (catMaybes
                 [("roles" .=) <$> _mRoles,
                  ("updateTime" .=) <$> _mUpdateTime,
                  ("name" .=) <$> _mName,
                  ("preferredMemberKey" .=) <$> _mPreferredMemberKey,
                  ("createTime" .=) <$> _mCreateTime])

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

-- | Response message for ListGroups operation.
--
-- /See:/ 'listGroupsResponse' smart constructor.
data ListGroupsResponse =
  ListGroupsResponse'
    { _lgrGroups        :: !(Maybe [Group])
    , _lgrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrGroups'
--
-- * 'lgrNextPageToken'
listGroupsResponse
    :: ListGroupsResponse
listGroupsResponse =
  ListGroupsResponse' {_lgrGroups = Nothing, _lgrNextPageToken = Nothing}


-- | Groups returned in response to list request. The results are not sorted.
lgrGroups :: Lens' ListGroupsResponse [Group]
lgrGroups
  = lens _lgrGroups (\ s a -> s{_lgrGroups = a}) .
      _Default
      . _Coerce

-- | Token to retrieve the next page of results, or empty if there are no
-- more results available for listing.
lgrNextPageToken :: Lens' ListGroupsResponse (Maybe Text)
lgrNextPageToken
  = lens _lgrNextPageToken
      (\ s a -> s{_lgrNextPageToken = a})

instance FromJSON ListGroupsResponse where
        parseJSON
          = withObject "ListGroupsResponse"
              (\ o ->
                 ListGroupsResponse' <$>
                   (o .:? "groups" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListGroupsResponse where
        toJSON ListGroupsResponse'{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _lgrGroups,
                  ("nextPageToken" .=) <$> _lgrNextPageToken])

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

-- | Resource representing a role within a Membership.
--
-- /See:/ 'membershipRole' smart constructor.
newtype MembershipRole =
  MembershipRole'
    { _mrName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MembershipRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrName'
membershipRole
    :: MembershipRole
membershipRole = MembershipRole' {_mrName = Nothing}


-- | MembershipRole in string format. Currently supported MembershipRoles:
-- \`\"MEMBER\"\`.
mrName :: Lens' MembershipRole (Maybe Text)
mrName = lens _mrName (\ s a -> s{_mrName = a})

instance FromJSON MembershipRole where
        parseJSON
          = withObject "MembershipRole"
              (\ o -> MembershipRole' <$> (o .:? "name"))

instance ToJSON MembershipRole where
        toJSON MembershipRole'{..}
          = object (catMaybes [("name" .=) <$> _mrName])

--
-- /See:/ 'lookupGroupNameResponse' smart constructor.
newtype LookupGroupNameResponse =
  LookupGroupNameResponse'
    { _lgnrName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LookupGroupNameResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgnrName'
lookupGroupNameResponse
    :: LookupGroupNameResponse
lookupGroupNameResponse = LookupGroupNameResponse' {_lgnrName = Nothing}


-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Group in the format: \`groups\/{group_id}\`, where \`group_id\` is the
-- unique ID assigned to the Group.
lgnrName :: Lens' LookupGroupNameResponse (Maybe Text)
lgnrName = lens _lgnrName (\ s a -> s{_lgnrName = a})

instance FromJSON LookupGroupNameResponse where
        parseJSON
          = withObject "LookupGroupNameResponse"
              (\ o -> LookupGroupNameResponse' <$> (o .:? "name"))

instance ToJSON LookupGroupNameResponse where
        toJSON LookupGroupNameResponse'{..}
          = object (catMaybes [("name" .=) <$> _lgnrName])

--
-- /See:/ 'searchGroupsResponse' smart constructor.
data SearchGroupsResponse =
  SearchGroupsResponse'
    { _sgrGroups        :: !(Maybe [Group])
    , _sgrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgrGroups'
--
-- * 'sgrNextPageToken'
searchGroupsResponse
    :: SearchGroupsResponse
searchGroupsResponse =
  SearchGroupsResponse' {_sgrGroups = Nothing, _sgrNextPageToken = Nothing}


-- | List of Groups satisfying the search query.
sgrGroups :: Lens' SearchGroupsResponse [Group]
sgrGroups
  = lens _sgrGroups (\ s a -> s{_sgrGroups = a}) .
      _Default
      . _Coerce

-- | Token to retrieve the next page of results, or empty if there are no
-- more results available for specified query.
sgrNextPageToken :: Lens' SearchGroupsResponse (Maybe Text)
sgrNextPageToken
  = lens _sgrNextPageToken
      (\ s a -> s{_sgrNextPageToken = a})

instance FromJSON SearchGroupsResponse where
        parseJSON
          = withObject "SearchGroupsResponse"
              (\ o ->
                 SearchGroupsResponse' <$>
                   (o .:? "groups" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON SearchGroupsResponse where
        toJSON SearchGroupsResponse'{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _sgrGroups,
                  ("nextPageToken" .=) <$> _sgrNextPageToken])

-- | An EntityKey uniquely identifies an Entity. Namespaces are used to
-- provide isolation for IDs. A single ID can be reused across namespaces
-- but the combination of a namespace and an ID must be unique.
--
-- /See:/ 'entityKey' smart constructor.
data EntityKey =
  EntityKey'
    { _ekNamespace :: !(Maybe Text)
    , _ekId        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ekNamespace'
--
-- * 'ekId'
entityKey
    :: EntityKey
entityKey = EntityKey' {_ekNamespace = Nothing, _ekId = Nothing}


-- | Namespaces provide isolation for IDs, so an ID only needs to be unique
-- within its namespace. Namespaces are currently only created as part of
-- IdentitySource creation from Admin Console. A namespace
-- \`\"identitysources\/{identity_source_id}\"\` is created corresponding
-- to every Identity Source \`identity_source_id\`.
ekNamespace :: Lens' EntityKey (Maybe Text)
ekNamespace
  = lens _ekNamespace (\ s a -> s{_ekNamespace = a})

-- | The ID of the entity within the given namespace. The ID must be unique
-- within its namespace.
ekId :: Lens' EntityKey (Maybe Text)
ekId = lens _ekId (\ s a -> s{_ekId = a})

instance FromJSON EntityKey where
        parseJSON
          = withObject "EntityKey"
              (\ o ->
                 EntityKey' <$> (o .:? "namespace") <*> (o .:? "id"))

instance ToJSON EntityKey where
        toJSON EntityKey'{..}
          = object
              (catMaybes
                 [("namespace" .=) <$> _ekNamespace,
                  ("id" .=) <$> _ekId])

-- | \`Required\`. Labels for Group resource. For creating Groups under a
-- namespace, set label key to \'labels\/system\/groups\/external\' and
-- label value as empty.
--
-- /See:/ 'groupLabels' smart constructor.
newtype GroupLabels =
  GroupLabels'
    { _glAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glAddtional'
groupLabels
    :: HashMap Text Text -- ^ 'glAddtional'
    -> GroupLabels
groupLabels pGlAddtional_ =
  GroupLabels' {_glAddtional = _Coerce # pGlAddtional_}


glAddtional :: Lens' GroupLabels (HashMap Text Text)
glAddtional
  = lens _glAddtional (\ s a -> s{_glAddtional = a}) .
      _Coerce

instance FromJSON GroupLabels where
        parseJSON
          = withObject "GroupLabels"
              (\ o -> GroupLabels' <$> (parseJSONObject o))

instance ToJSON GroupLabels where
        toJSON = toJSON . _glAddtional

--
-- /See:/ 'listMembershipsResponse' smart constructor.
data ListMembershipsResponse =
  ListMembershipsResponse'
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrMemberships   :: !(Maybe [Membership])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListMembershipsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrMemberships'
listMembershipsResponse
    :: ListMembershipsResponse
listMembershipsResponse =
  ListMembershipsResponse'
    {_lmrNextPageToken = Nothing, _lmrMemberships = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results available for listing.
lmrNextPageToken :: Lens' ListMembershipsResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | List of Memberships.
lmrMemberships :: Lens' ListMembershipsResponse [Membership]
lmrMemberships
  = lens _lmrMemberships
      (\ s a -> s{_lmrMemberships = a})
      . _Default
      . _Coerce

instance FromJSON ListMembershipsResponse where
        parseJSON
          = withObject "ListMembershipsResponse"
              (\ o ->
                 ListMembershipsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "memberships" .!= mempty))

instance ToJSON ListMembershipsResponse where
        toJSON ListMembershipsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("memberships" .=) <$> _lmrMemberships])

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
