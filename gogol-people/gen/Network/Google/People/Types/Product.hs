{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.People.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.People.Types.Product where

import Network.Google.People.Types.Sum
import Network.Google.Prelude

-- | A person\'s SIP address. Session Initial Protocol addresses are used for
-- VoIP communications to make voice or video calls over the internet.
--
-- /See:/ 'sipAddress' smart constructor.
data SipAddress =
  SipAddress'
    { _saValue :: !(Maybe Text)
    , _saMetadata :: !(Maybe FieldMetadata)
    , _saType :: !(Maybe Text)
    , _saFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SipAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saValue'
--
-- * 'saMetadata'
--
-- * 'saType'
--
-- * 'saFormattedType'
sipAddress
    :: SipAddress
sipAddress =
  SipAddress'
    { _saValue = Nothing
    , _saMetadata = Nothing
    , _saType = Nothing
    , _saFormattedType = Nothing
    }


-- | The SIP address in the [RFC 3261
-- 19.1](https:\/\/tools.ietf.org\/html\/rfc3261#section-19.1) SIP URI
-- format.
saValue :: Lens' SipAddress (Maybe Text)
saValue = lens _saValue (\ s a -> s{_saValue = a})

-- | Metadata about the SIP address.
saMetadata :: Lens' SipAddress (Maybe FieldMetadata)
saMetadata
  = lens _saMetadata (\ s a -> s{_saMetadata = a})

-- | The type of the SIP address. The type can be custom or or one of these
-- predefined values: * \`home\` * \`work\` * \`mobile\` * \`other\`
saType :: Lens' SipAddress (Maybe Text)
saType = lens _saType (\ s a -> s{_saType = a})

-- | Output only. The type of the SIP address translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
saFormattedType :: Lens' SipAddress (Maybe Text)
saFormattedType
  = lens _saFormattedType
      (\ s a -> s{_saFormattedType = a})

instance FromJSON SipAddress where
        parseJSON
          = withObject "SipAddress"
              (\ o ->
                 SipAddress' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON SipAddress where
        toJSON SipAddress'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _saValue,
                  ("metadata" .=) <$> _saMetadata,
                  ("type" .=) <$> _saType,
                  ("formattedType" .=) <$> _saFormattedType])

-- | Required. A map of resource names to the person data to be updated.
-- Allows up to 200 contacts in a single request.
--
-- /See:/ 'batchUpdateContactsRequestContacts' smart constructor.
newtype BatchUpdateContactsRequestContacts =
  BatchUpdateContactsRequestContacts'
    { _bucrcAddtional :: HashMap Text Person
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateContactsRequestContacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bucrcAddtional'
batchUpdateContactsRequestContacts
    :: HashMap Text Person -- ^ 'bucrcAddtional'
    -> BatchUpdateContactsRequestContacts
batchUpdateContactsRequestContacts pBucrcAddtional_ =
  BatchUpdateContactsRequestContacts'
    {_bucrcAddtional = _Coerce # pBucrcAddtional_}


bucrcAddtional :: Lens' BatchUpdateContactsRequestContacts (HashMap Text Person)
bucrcAddtional
  = lens _bucrcAddtional
      (\ s a -> s{_bucrcAddtional = a})
      . _Coerce

instance FromJSON BatchUpdateContactsRequestContacts
         where
        parseJSON
          = withObject "BatchUpdateContactsRequestContacts"
              (\ o ->
                 BatchUpdateContactsRequestContacts' <$>
                   (parseJSONObject o))

instance ToJSON BatchUpdateContactsRequestContacts
         where
        toJSON = toJSON . _bucrcAddtional

-- | A person\'s photo. A picture shown next to the person\'s name to help
-- others recognize the person.
--
-- /See:/ 'photo' smart constructor.
data Photo =
  Photo'
    { _pDefault :: !(Maybe Bool)
    , _pURL :: !(Maybe Text)
    , _pMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Photo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pDefault'
--
-- * 'pURL'
--
-- * 'pMetadata'
photo
    :: Photo
photo = Photo' {_pDefault = Nothing, _pURL = Nothing, _pMetadata = Nothing}


-- | True if the photo is a default photo; false if the photo is a
-- user-provided photo.
pDefault :: Lens' Photo (Maybe Bool)
pDefault = lens _pDefault (\ s a -> s{_pDefault = a})

-- | The URL of the photo. You can change the desired size by appending a
-- query parameter \`sz={size}\` at the end of the url, where {size} is the
-- size in pixels. Example:
-- https:\/\/lh3.googleusercontent.com\/-T_wVWLlmg7w\/AAAAAAAAAAI\/AAAAAAAABa8\/00gzXvDBYqw\/s100\/photo.jpg?sz=50
pURL :: Lens' Photo (Maybe Text)
pURL = lens _pURL (\ s a -> s{_pURL = a})

-- | Metadata about the photo.
pMetadata :: Lens' Photo (Maybe FieldMetadata)
pMetadata
  = lens _pMetadata (\ s a -> s{_pMetadata = a})

instance FromJSON Photo where
        parseJSON
          = withObject "Photo"
              (\ o ->
                 Photo' <$>
                   (o .:? "default") <*> (o .:? "url") <*>
                     (o .:? "metadata"))

instance ToJSON Photo where
        toJSON Photo'{..}
          = object
              (catMaybes
                 [("default" .=) <$> _pDefault, ("url" .=) <$> _pURL,
                  ("metadata" .=) <$> _pMetadata])

-- | An event related to the person.
--
-- /See:/ 'event' smart constructor.
data Event =
  Event'
    { _eDate :: !(Maybe Date)
    , _eMetadata :: !(Maybe FieldMetadata)
    , _eType :: !(Maybe Text)
    , _eFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDate'
--
-- * 'eMetadata'
--
-- * 'eType'
--
-- * 'eFormattedType'
event
    :: Event
event =
  Event'
    { _eDate = Nothing
    , _eMetadata = Nothing
    , _eType = Nothing
    , _eFormattedType = Nothing
    }


-- | The date of the event.
eDate :: Lens' Event (Maybe Date)
eDate = lens _eDate (\ s a -> s{_eDate = a})

-- | Metadata about the event.
eMetadata :: Lens' Event (Maybe FieldMetadata)
eMetadata
  = lens _eMetadata (\ s a -> s{_eMetadata = a})

-- | The type of the event. The type can be custom or one of these predefined
-- values: * \`anniversary\` * \`other\`
eType :: Lens' Event (Maybe Text)
eType = lens _eType (\ s a -> s{_eType = a})

-- | Output only. The type of the event translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
eFormattedType :: Lens' Event (Maybe Text)
eFormattedType
  = lens _eFormattedType
      (\ s a -> s{_eFormattedType = a})

instance FromJSON Event where
        parseJSON
          = withObject "Event"
              (\ o ->
                 Event' <$>
                   (o .:? "date") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON Event where
        toJSON Event'{..}
          = object
              (catMaybes
                 [("date" .=) <$> _eDate,
                  ("metadata" .=) <$> _eMetadata,
                  ("type" .=) <$> _eType,
                  ("formattedType" .=) <$> _eFormattedType])

-- | The response to a request for the authenticated user\'s connections.
--
-- /See:/ 'listConnectionsResponse' smart constructor.
data ListConnectionsResponse =
  ListConnectionsResponse'
    { _lcrTotalItems :: !(Maybe (Textual Int32))
    , _lcrNextPageToken :: !(Maybe Text)
    , _lcrConnections :: !(Maybe [Person])
    , _lcrNextSyncToken :: !(Maybe Text)
    , _lcrTotalPeople :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrTotalItems'
--
-- * 'lcrNextPageToken'
--
-- * 'lcrConnections'
--
-- * 'lcrNextSyncToken'
--
-- * 'lcrTotalPeople'
listConnectionsResponse
    :: ListConnectionsResponse
listConnectionsResponse =
  ListConnectionsResponse'
    { _lcrTotalItems = Nothing
    , _lcrNextPageToken = Nothing
    , _lcrConnections = Nothing
    , _lcrNextSyncToken = Nothing
    , _lcrTotalPeople = Nothing
    }


-- | The total number of items in the list without pagination.
lcrTotalItems :: Lens' ListConnectionsResponse (Maybe Int32)
lcrTotalItems
  = lens _lcrTotalItems
      (\ s a -> s{_lcrTotalItems = a})
      . mapping _Coerce

-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lcrNextPageToken :: Lens' ListConnectionsResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | The list of people that the requestor is connected to.
lcrConnections :: Lens' ListConnectionsResponse [Person]
lcrConnections
  = lens _lcrConnections
      (\ s a -> s{_lcrConnections = a})
      . _Default
      . _Coerce

-- | A token, which can be sent as \`sync_token\` to retrieve changes since
-- the last request. Request must set \`request_sync_token\` to return the
-- sync token. When the response is paginated, only the last page will
-- contain \`nextSyncToken\`.
lcrNextSyncToken :: Lens' ListConnectionsResponse (Maybe Text)
lcrNextSyncToken
  = lens _lcrNextSyncToken
      (\ s a -> s{_lcrNextSyncToken = a})

-- | **DEPRECATED** (Please use totalItems) The total number of people in the
-- list without pagination.
lcrTotalPeople :: Lens' ListConnectionsResponse (Maybe Int32)
lcrTotalPeople
  = lens _lcrTotalPeople
      (\ s a -> s{_lcrTotalPeople = a})
      . mapping _Coerce

instance FromJSON ListConnectionsResponse where
        parseJSON
          = withObject "ListConnectionsResponse"
              (\ o ->
                 ListConnectionsResponse' <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "connections" .!= mempty)
                     <*> (o .:? "nextSyncToken")
                     <*> (o .:? "totalPeople"))

instance ToJSON ListConnectionsResponse where
        toJSON ListConnectionsResponse'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _lcrTotalItems,
                  ("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("connections" .=) <$> _lcrConnections,
                  ("nextSyncToken" .=) <$> _lcrNextSyncToken,
                  ("totalPeople" .=) <$> _lcrTotalPeople])

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

-- | The response for a specific contact group.
--
-- /See:/ 'contactGroupResponse' smart constructor.
data ContactGroupResponse =
  ContactGroupResponse'
    { _cgrStatus :: !(Maybe Status)
    , _cgrContactGroup :: !(Maybe ContactGroup)
    , _cgrRequestedResourceName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgrStatus'
--
-- * 'cgrContactGroup'
--
-- * 'cgrRequestedResourceName'
contactGroupResponse
    :: ContactGroupResponse
contactGroupResponse =
  ContactGroupResponse'
    { _cgrStatus = Nothing
    , _cgrContactGroup = Nothing
    , _cgrRequestedResourceName = Nothing
    }


-- | The status of the response.
cgrStatus :: Lens' ContactGroupResponse (Maybe Status)
cgrStatus
  = lens _cgrStatus (\ s a -> s{_cgrStatus = a})

-- | The contact group.
cgrContactGroup :: Lens' ContactGroupResponse (Maybe ContactGroup)
cgrContactGroup
  = lens _cgrContactGroup
      (\ s a -> s{_cgrContactGroup = a})

-- | The original requested resource name.
cgrRequestedResourceName :: Lens' ContactGroupResponse (Maybe Text)
cgrRequestedResourceName
  = lens _cgrRequestedResourceName
      (\ s a -> s{_cgrRequestedResourceName = a})

instance FromJSON ContactGroupResponse where
        parseJSON
          = withObject "ContactGroupResponse"
              (\ o ->
                 ContactGroupResponse' <$>
                   (o .:? "status") <*> (o .:? "contactGroup") <*>
                     (o .:? "requestedResourceName"))

instance ToJSON ContactGroupResponse where
        toJSON ContactGroupResponse'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cgrStatus,
                  ("contactGroup" .=) <$> _cgrContactGroup,
                  ("requestedResourceName" .=) <$>
                    _cgrRequestedResourceName])

-- | The name that should be used to sort the person in a list.
--
-- /See:/ 'fileAs' smart constructor.
data FileAs =
  FileAs'
    { _faValue :: !(Maybe Text)
    , _faMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileAs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faValue'
--
-- * 'faMetadata'
fileAs
    :: FileAs
fileAs = FileAs' {_faValue = Nothing, _faMetadata = Nothing}


-- | The file-as value
faValue :: Lens' FileAs (Maybe Text)
faValue = lens _faValue (\ s a -> s{_faValue = a})

-- | Metadata about the file-as.
faMetadata :: Lens' FileAs (Maybe FieldMetadata)
faMetadata
  = lens _faMetadata (\ s a -> s{_faMetadata = a})

instance FromJSON FileAs where
        parseJSON
          = withObject "FileAs"
              (\ o ->
                 FileAs' <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON FileAs where
        toJSON FileAs'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _faValue,
                  ("metadata" .=) <$> _faMetadata])

-- | A contact group.
--
-- /See:/ 'contactGroup' smart constructor.
data ContactGroup =
  ContactGroup'
    { _cgEtag :: !(Maybe Text)
    , _cgResourceName :: !(Maybe Text)
    , _cgMemberResourceNames :: !(Maybe [Text])
    , _cgFormattedName :: !(Maybe Text)
    , _cgName :: !(Maybe Text)
    , _cgGroupType :: !(Maybe ContactGroupGroupType)
    , _cgMetadata :: !(Maybe ContactGroupMetadata)
    , _cgMemberCount :: !(Maybe (Textual Int32))
    , _cgClientData :: !(Maybe [GroupClientData])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgEtag'
--
-- * 'cgResourceName'
--
-- * 'cgMemberResourceNames'
--
-- * 'cgFormattedName'
--
-- * 'cgName'
--
-- * 'cgGroupType'
--
-- * 'cgMetadata'
--
-- * 'cgMemberCount'
--
-- * 'cgClientData'
contactGroup
    :: ContactGroup
contactGroup =
  ContactGroup'
    { _cgEtag = Nothing
    , _cgResourceName = Nothing
    , _cgMemberResourceNames = Nothing
    , _cgFormattedName = Nothing
    , _cgName = Nothing
    , _cgGroupType = Nothing
    , _cgMetadata = Nothing
    , _cgMemberCount = Nothing
    , _cgClientData = Nothing
    }


-- | The [HTTP entity tag](https:\/\/en.wikipedia.org\/wiki\/HTTP_ETag) of
-- the resource. Used for web cache validation.
cgEtag :: Lens' ContactGroup (Maybe Text)
cgEtag = lens _cgEtag (\ s a -> s{_cgEtag = a})

-- | The resource name for the contact group, assigned by the server. An
-- ASCII string, in the form of \`contactGroups\/{contact_group_id}\`.
cgResourceName :: Lens' ContactGroup (Maybe Text)
cgResourceName
  = lens _cgResourceName
      (\ s a -> s{_cgResourceName = a})

-- | Output only. The list of contact person resource names that are members
-- of the contact group. The field is only populated for GET requests and
-- will only return as many members as \`maxMembers\` in the get request.
cgMemberResourceNames :: Lens' ContactGroup [Text]
cgMemberResourceNames
  = lens _cgMemberResourceNames
      (\ s a -> s{_cgMemberResourceNames = a})
      . _Default
      . _Coerce

-- | Output only. The name translated and formatted in the viewer\'s account
-- locale or the \`Accept-Language\` HTTP header locale for system groups
-- names. Group names set by the owner are the same as name.
cgFormattedName :: Lens' ContactGroup (Maybe Text)
cgFormattedName
  = lens _cgFormattedName
      (\ s a -> s{_cgFormattedName = a})

-- | The contact group name set by the group owner or a system provided name
-- for system groups. For
-- [\`contactGroups.create\`](\/people\/api\/rest\/v1\/contactGroups\/create)
-- or
-- [\`contactGroups.update\`](\/people\/api\/rest\/v1\/contactGroups\/update)
-- the name must be unique to the users contact groups. Attempting to
-- create a group with a duplicate name will return a HTTP 409 error.
cgName :: Lens' ContactGroup (Maybe Text)
cgName = lens _cgName (\ s a -> s{_cgName = a})

-- | Output only. The contact group type.
cgGroupType :: Lens' ContactGroup (Maybe ContactGroupGroupType)
cgGroupType
  = lens _cgGroupType (\ s a -> s{_cgGroupType = a})

-- | Output only. Metadata about the contact group.
cgMetadata :: Lens' ContactGroup (Maybe ContactGroupMetadata)
cgMetadata
  = lens _cgMetadata (\ s a -> s{_cgMetadata = a})

-- | Output only. The total number of contacts in the group irrespective of
-- max members in specified in the request.
cgMemberCount :: Lens' ContactGroup (Maybe Int32)
cgMemberCount
  = lens _cgMemberCount
      (\ s a -> s{_cgMemberCount = a})
      . mapping _Coerce

-- | The group\'s client data.
cgClientData :: Lens' ContactGroup [GroupClientData]
cgClientData
  = lens _cgClientData (\ s a -> s{_cgClientData = a})
      . _Default
      . _Coerce

instance FromJSON ContactGroup where
        parseJSON
          = withObject "ContactGroup"
              (\ o ->
                 ContactGroup' <$>
                   (o .:? "etag") <*> (o .:? "resourceName") <*>
                     (o .:? "memberResourceNames" .!= mempty)
                     <*> (o .:? "formattedName")
                     <*> (o .:? "name")
                     <*> (o .:? "groupType")
                     <*> (o .:? "metadata")
                     <*> (o .:? "memberCount")
                     <*> (o .:? "clientData" .!= mempty))

instance ToJSON ContactGroup where
        toJSON ContactGroup'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cgEtag,
                  ("resourceName" .=) <$> _cgResourceName,
                  ("memberResourceNames" .=) <$>
                    _cgMemberResourceNames,
                  ("formattedName" .=) <$> _cgFormattedName,
                  ("name" .=) <$> _cgName,
                  ("groupType" .=) <$> _cgGroupType,
                  ("metadata" .=) <$> _cgMetadata,
                  ("memberCount" .=) <$> _cgMemberCount,
                  ("clientData" .=) <$> _cgClientData])

-- | The response to a modify contact group members request.
--
-- /See:/ 'modifyContactGroupMembersResponse' smart constructor.
data ModifyContactGroupMembersResponse =
  ModifyContactGroupMembersResponse'
    { _mcgmrCanNotRemoveLastContactGroupResourceNames :: !(Maybe [Text])
    , _mcgmrNotFoundResourceNames :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyContactGroupMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcgmrCanNotRemoveLastContactGroupResourceNames'
--
-- * 'mcgmrNotFoundResourceNames'
modifyContactGroupMembersResponse
    :: ModifyContactGroupMembersResponse
modifyContactGroupMembersResponse =
  ModifyContactGroupMembersResponse'
    { _mcgmrCanNotRemoveLastContactGroupResourceNames = Nothing
    , _mcgmrNotFoundResourceNames = Nothing
    }


-- | The contact people resource names that cannot be removed from their last
-- contact group.
mcgmrCanNotRemoveLastContactGroupResourceNames :: Lens' ModifyContactGroupMembersResponse [Text]
mcgmrCanNotRemoveLastContactGroupResourceNames
  = lens
      _mcgmrCanNotRemoveLastContactGroupResourceNames
      (\ s a ->
         s{_mcgmrCanNotRemoveLastContactGroupResourceNames =
             a})
      . _Default
      . _Coerce

-- | The contact people resource names that were not found.
mcgmrNotFoundResourceNames :: Lens' ModifyContactGroupMembersResponse [Text]
mcgmrNotFoundResourceNames
  = lens _mcgmrNotFoundResourceNames
      (\ s a -> s{_mcgmrNotFoundResourceNames = a})
      . _Default
      . _Coerce

instance FromJSON ModifyContactGroupMembersResponse
         where
        parseJSON
          = withObject "ModifyContactGroupMembersResponse"
              (\ o ->
                 ModifyContactGroupMembersResponse' <$>
                   (o .:? "canNotRemoveLastContactGroupResourceNames"
                      .!= mempty)
                     <*> (o .:? "notFoundResourceNames" .!= mempty))

instance ToJSON ModifyContactGroupMembersResponse
         where
        toJSON ModifyContactGroupMembersResponse'{..}
          = object
              (catMaybes
                 [("canNotRemoveLastContactGroupResourceNames" .=) <$>
                    _mcgmrCanNotRemoveLastContactGroupResourceNames,
                  ("notFoundResourceNames" .=) <$>
                    _mcgmrNotFoundResourceNames])

-- | A request to update an existing user contact group. All updated fields
-- will be replaced.
--
-- /See:/ 'updateContactGroupRequest' smart constructor.
data UpdateContactGroupRequest =
  UpdateContactGroupRequest'
    { _ucgrContactGroup :: !(Maybe ContactGroup)
    , _ucgrReadGroupFields :: !(Maybe GFieldMask)
    , _ucgrUpdateGroupFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateContactGroupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucgrContactGroup'
--
-- * 'ucgrReadGroupFields'
--
-- * 'ucgrUpdateGroupFields'
updateContactGroupRequest
    :: UpdateContactGroupRequest
updateContactGroupRequest =
  UpdateContactGroupRequest'
    { _ucgrContactGroup = Nothing
    , _ucgrReadGroupFields = Nothing
    , _ucgrUpdateGroupFields = Nothing
    }


-- | Required. The contact group to update.
ucgrContactGroup :: Lens' UpdateContactGroupRequest (Maybe ContactGroup)
ucgrContactGroup
  = lens _ucgrContactGroup
      (\ s a -> s{_ucgrContactGroup = a})

-- | Optional. A field mask to restrict which fields on the group are
-- returned. Defaults to \`metadata\`, \`groupType\`, and \`name\` if not
-- set or set to empty. Valid fields are: * clientData * groupType *
-- memberCount * metadata * name
ucgrReadGroupFields :: Lens' UpdateContactGroupRequest (Maybe GFieldMask)
ucgrReadGroupFields
  = lens _ucgrReadGroupFields
      (\ s a -> s{_ucgrReadGroupFields = a})

-- | Optional. A field mask to restrict which fields on the group are
-- updated. Multiple fields can be specified by separating them with
-- commas. Defaults to \`name\` if not set or set to empty. Updated fields
-- are replaced. Valid values are: * clientData * name
ucgrUpdateGroupFields :: Lens' UpdateContactGroupRequest (Maybe GFieldMask)
ucgrUpdateGroupFields
  = lens _ucgrUpdateGroupFields
      (\ s a -> s{_ucgrUpdateGroupFields = a})

instance FromJSON UpdateContactGroupRequest where
        parseJSON
          = withObject "UpdateContactGroupRequest"
              (\ o ->
                 UpdateContactGroupRequest' <$>
                   (o .:? "contactGroup") <*> (o .:? "readGroupFields")
                     <*> (o .:? "updateGroupFields"))

instance ToJSON UpdateContactGroupRequest where
        toJSON UpdateContactGroupRequest'{..}
          = object
              (catMaybes
                 [("contactGroup" .=) <$> _ucgrContactGroup,
                  ("readGroupFields" .=) <$> _ucgrReadGroupFields,
                  ("updateGroupFields" .=) <$> _ucgrUpdateGroupFields])

-- | A result of a search query.
--
-- /See:/ 'searchResult' smart constructor.
newtype SearchResult =
  SearchResult'
    { _srPerson :: Maybe Person
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srPerson'
searchResult
    :: SearchResult
searchResult = SearchResult' {_srPerson = Nothing}


-- | The matched Person.
srPerson :: Lens' SearchResult (Maybe Person)
srPerson = lens _srPerson (\ s a -> s{_srPerson = a})

instance FromJSON SearchResult where
        parseJSON
          = withObject "SearchResult"
              (\ o -> SearchResult' <$> (o .:? "person"))

instance ToJSON SearchResult where
        toJSON SearchResult'{..}
          = object (catMaybes [("person" .=) <$> _srPerson])

-- | A Google Workspace Domain membership.
--
-- /See:/ 'domainMembership' smart constructor.
newtype DomainMembership =
  DomainMembership'
    { _dmInViewerDomain :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmInViewerDomain'
domainMembership
    :: DomainMembership
domainMembership = DomainMembership' {_dmInViewerDomain = Nothing}


-- | True if the person is in the viewer\'s Google Workspace domain.
dmInViewerDomain :: Lens' DomainMembership (Maybe Bool)
dmInViewerDomain
  = lens _dmInViewerDomain
      (\ s a -> s{_dmInViewerDomain = a})

instance FromJSON DomainMembership where
        parseJSON
          = withObject "DomainMembership"
              (\ o ->
                 DomainMembership' <$> (o .:? "inViewerDomain"))

instance ToJSON DomainMembership where
        toJSON DomainMembership'{..}
          = object
              (catMaybes
                 [("inViewerDomain" .=) <$> _dmInViewerDomain])

-- | **DEPRECATED**: No data will be returned A person\'s relationship
-- interest .
--
-- /See:/ 'relationshipInterest' smart constructor.
data RelationshipInterest =
  RelationshipInterest'
    { _riValue :: !(Maybe Text)
    , _riMetadata :: !(Maybe FieldMetadata)
    , _riFormattedValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelationshipInterest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riValue'
--
-- * 'riMetadata'
--
-- * 'riFormattedValue'
relationshipInterest
    :: RelationshipInterest
relationshipInterest =
  RelationshipInterest'
    {_riValue = Nothing, _riMetadata = Nothing, _riFormattedValue = Nothing}


-- | The kind of relationship the person is looking for. The value can be
-- custom or one of these predefined values: * \`friend\` * \`date\` *
-- \`relationship\` * \`networking\`
riValue :: Lens' RelationshipInterest (Maybe Text)
riValue = lens _riValue (\ s a -> s{_riValue = a})

-- | Metadata about the relationship interest.
riMetadata :: Lens' RelationshipInterest (Maybe FieldMetadata)
riMetadata
  = lens _riMetadata (\ s a -> s{_riMetadata = a})

-- | Output only. The value of the relationship interest translated and
-- formatted in the viewer\'s account locale or the locale specified in the
-- Accept-Language HTTP header.
riFormattedValue :: Lens' RelationshipInterest (Maybe Text)
riFormattedValue
  = lens _riFormattedValue
      (\ s a -> s{_riFormattedValue = a})

instance FromJSON RelationshipInterest where
        parseJSON
          = withObject "RelationshipInterest"
              (\ o ->
                 RelationshipInterest' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "formattedValue"))

instance ToJSON RelationshipInterest where
        toJSON RelationshipInterest'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _riValue,
                  ("metadata" .=) <$> _riMetadata,
                  ("formattedValue" .=) <$> _riFormattedValue])

-- | **DEPRECATED**: No data will be returned A person\'s bragging rights.
--
-- /See:/ 'braggingRights' smart constructor.
data BraggingRights =
  BraggingRights'
    { _brValue :: !(Maybe Text)
    , _brMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BraggingRights' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brValue'
--
-- * 'brMetadata'
braggingRights
    :: BraggingRights
braggingRights = BraggingRights' {_brValue = Nothing, _brMetadata = Nothing}


-- | The bragging rights; for example, \`climbed mount everest\`.
brValue :: Lens' BraggingRights (Maybe Text)
brValue = lens _brValue (\ s a -> s{_brValue = a})

-- | Metadata about the bragging rights.
brMetadata :: Lens' BraggingRights (Maybe FieldMetadata)
brMetadata
  = lens _brMetadata (\ s a -> s{_brMetadata = a})

instance FromJSON BraggingRights where
        parseJSON
          = withObject "BraggingRights"
              (\ o ->
                 BraggingRights' <$>
                   (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON BraggingRights where
        toJSON BraggingRights'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _brValue,
                  ("metadata" .=) <$> _brMetadata])

-- | A request to create a batch of contacts.
--
-- /See:/ 'batchCreateContactsRequest' smart constructor.
data BatchCreateContactsRequest =
  BatchCreateContactsRequest'
    { _bccrReadMask :: !(Maybe GFieldMask)
    , _bccrSources :: !(Maybe [BatchCreateContactsRequestSourcesItem])
    , _bccrContacts :: !(Maybe [ContactToCreate])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateContactsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bccrReadMask'
--
-- * 'bccrSources'
--
-- * 'bccrContacts'
batchCreateContactsRequest
    :: BatchCreateContactsRequest
batchCreateContactsRequest =
  BatchCreateContactsRequest'
    {_bccrReadMask = Nothing, _bccrSources = Nothing, _bccrContacts = Nothing}


-- | Required. A field mask to restrict which fields on each person are
-- returned in the response. Multiple fields can be specified by separating
-- them with commas. If read mask is left empty, the post-mutate-get is
-- skipped and no data will be returned in the response. Valid values are:
-- * addresses * ageRanges * biographies * birthdays * calendarUrls *
-- clientData * coverPhotos * emailAddresses * events * externalIds *
-- genders * imClients * interests * locales * locations * memberships *
-- metadata * miscKeywords * names * nicknames * occupations *
-- organizations * phoneNumbers * photos * relations * sipAddresses *
-- skills * urls * userDefined
bccrReadMask :: Lens' BatchCreateContactsRequest (Maybe GFieldMask)
bccrReadMask
  = lens _bccrReadMask (\ s a -> s{_bccrReadMask = a})

-- | Optional. A mask of what source types to return in the post mutate read.
-- Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not
-- set.
bccrSources :: Lens' BatchCreateContactsRequest [BatchCreateContactsRequestSourcesItem]
bccrSources
  = lens _bccrSources (\ s a -> s{_bccrSources = a}) .
      _Default
      . _Coerce

-- | Required. The contact to create. Allows up to 200 contacts in a single
-- request.
bccrContacts :: Lens' BatchCreateContactsRequest [ContactToCreate]
bccrContacts
  = lens _bccrContacts (\ s a -> s{_bccrContacts = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreateContactsRequest where
        parseJSON
          = withObject "BatchCreateContactsRequest"
              (\ o ->
                 BatchCreateContactsRequest' <$>
                   (o .:? "readMask") <*> (o .:? "sources" .!= mempty)
                     <*> (o .:? "contacts" .!= mempty))

instance ToJSON BatchCreateContactsRequest where
        toJSON BatchCreateContactsRequest'{..}
          = object
              (catMaybes
                 [("readMask" .=) <$> _bccrReadMask,
                  ("sources" .=) <$> _bccrSources,
                  ("contacts" .=) <$> _bccrContacts])

-- | A person\'s membership in a group. Only contact group memberships can be
-- modified.
--
-- /See:/ 'membership' smart constructor.
data Membership =
  Membership'
    { _mDomainMembership :: !(Maybe DomainMembership)
    , _mContactGroupMembership :: !(Maybe ContactGroupMembership)
    , _mMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Membership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mDomainMembership'
--
-- * 'mContactGroupMembership'
--
-- * 'mMetadata'
membership
    :: Membership
membership =
  Membership'
    { _mDomainMembership = Nothing
    , _mContactGroupMembership = Nothing
    , _mMetadata = Nothing
    }


-- | Output only. The domain membership.
mDomainMembership :: Lens' Membership (Maybe DomainMembership)
mDomainMembership
  = lens _mDomainMembership
      (\ s a -> s{_mDomainMembership = a})

-- | The contact group membership.
mContactGroupMembership :: Lens' Membership (Maybe ContactGroupMembership)
mContactGroupMembership
  = lens _mContactGroupMembership
      (\ s a -> s{_mContactGroupMembership = a})

-- | Metadata about the membership.
mMetadata :: Lens' Membership (Maybe FieldMetadata)
mMetadata
  = lens _mMetadata (\ s a -> s{_mMetadata = a})

instance FromJSON Membership where
        parseJSON
          = withObject "Membership"
              (\ o ->
                 Membership' <$>
                   (o .:? "domainMembership") <*>
                     (o .:? "contactGroupMembership")
                     <*> (o .:? "metadata"))

instance ToJSON Membership where
        toJSON Membership'{..}
          = object
              (catMaybes
                 [("domainMembership" .=) <$> _mDomainMembership,
                  ("contactGroupMembership" .=) <$>
                    _mContactGroupMembership,
                  ("metadata" .=) <$> _mMetadata])

-- | The response to a search request for the authenticated user, given a
-- query.
--
-- /See:/ 'searchResponse' smart constructor.
newtype SearchResponse =
  SearchResponse'
    { _srResults :: Maybe [SearchResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srResults'
searchResponse
    :: SearchResponse
searchResponse = SearchResponse' {_srResults = Nothing}


-- | The results of the request.
srResults :: Lens' SearchResponse [SearchResult]
srResults
  = lens _srResults (\ s a -> s{_srResults = a}) .
      _Default
      . _Coerce

instance FromJSON SearchResponse where
        parseJSON
          = withObject "SearchResponse"
              (\ o ->
                 SearchResponse' <$> (o .:? "results" .!= mempty))

instance ToJSON SearchResponse where
        toJSON SearchResponse'{..}
          = object (catMaybes [("results" .=) <$> _srResults])

-- | The response to a request to create a batch of contacts.
--
-- /See:/ 'batchUpdateContactsResponse' smart constructor.
newtype BatchUpdateContactsResponse =
  BatchUpdateContactsResponse'
    { _bucrUpdateResult :: Maybe BatchUpdateContactsResponseUpdateResult
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateContactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bucrUpdateResult'
batchUpdateContactsResponse
    :: BatchUpdateContactsResponse
batchUpdateContactsResponse =
  BatchUpdateContactsResponse' {_bucrUpdateResult = Nothing}


-- | A map of resource names to the contacts that were updated, unless the
-- request \`read_mask\` is empty.
bucrUpdateResult :: Lens' BatchUpdateContactsResponse (Maybe BatchUpdateContactsResponseUpdateResult)
bucrUpdateResult
  = lens _bucrUpdateResult
      (\ s a -> s{_bucrUpdateResult = a})

instance FromJSON BatchUpdateContactsResponse where
        parseJSON
          = withObject "BatchUpdateContactsResponse"
              (\ o ->
                 BatchUpdateContactsResponse' <$>
                   (o .:? "updateResult"))

instance ToJSON BatchUpdateContactsResponse where
        toJSON BatchUpdateContactsResponse'{..}
          = object
              (catMaybes
                 [("updateResult" .=) <$> _bucrUpdateResult])

-- | A person\'s location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lFloor :: !(Maybe Text)
    , _lBuildingId :: !(Maybe Text)
    , _lValue :: !(Maybe Text)
    , _lCurrent :: !(Maybe Bool)
    , _lDeskCode :: !(Maybe Text)
    , _lMetadata :: !(Maybe FieldMetadata)
    , _lType :: !(Maybe Text)
    , _lFloorSection :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lFloor'
--
-- * 'lBuildingId'
--
-- * 'lValue'
--
-- * 'lCurrent'
--
-- * 'lDeskCode'
--
-- * 'lMetadata'
--
-- * 'lType'
--
-- * 'lFloorSection'
location
    :: Location
location =
  Location'
    { _lFloor = Nothing
    , _lBuildingId = Nothing
    , _lValue = Nothing
    , _lCurrent = Nothing
    , _lDeskCode = Nothing
    , _lMetadata = Nothing
    , _lType = Nothing
    , _lFloorSection = Nothing
    }


-- | The floor name or number.
lFloor :: Lens' Location (Maybe Text)
lFloor = lens _lFloor (\ s a -> s{_lFloor = a})

-- | The building identifier.
lBuildingId :: Lens' Location (Maybe Text)
lBuildingId
  = lens _lBuildingId (\ s a -> s{_lBuildingId = a})

-- | The free-form value of the location.
lValue :: Lens' Location (Maybe Text)
lValue = lens _lValue (\ s a -> s{_lValue = a})

-- | Whether the location is the current location.
lCurrent :: Lens' Location (Maybe Bool)
lCurrent = lens _lCurrent (\ s a -> s{_lCurrent = a})

-- | The individual desk location.
lDeskCode :: Lens' Location (Maybe Text)
lDeskCode
  = lens _lDeskCode (\ s a -> s{_lDeskCode = a})

-- | Metadata about the location.
lMetadata :: Lens' Location (Maybe FieldMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The type of the location. The type can be custom or one of these
-- predefined values: * \`desk\` * \`grewUp\`
lType :: Lens' Location (Maybe Text)
lType = lens _lType (\ s a -> s{_lType = a})

-- | The floor section in \`floor_name\`.
lFloorSection :: Lens' Location (Maybe Text)
lFloorSection
  = lens _lFloorSection
      (\ s a -> s{_lFloorSection = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "floor") <*> (o .:? "buildingId") <*>
                     (o .:? "value")
                     <*> (o .:? "current")
                     <*> (o .:? "deskCode")
                     <*> (o .:? "metadata")
                     <*> (o .:? "type")
                     <*> (o .:? "floorSection"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("floor" .=) <$> _lFloor,
                  ("buildingId" .=) <$> _lBuildingId,
                  ("value" .=) <$> _lValue,
                  ("current" .=) <$> _lCurrent,
                  ("deskCode" .=) <$> _lDeskCode,
                  ("metadata" .=) <$> _lMetadata,
                  ("type" .=) <$> _lType,
                  ("floorSection" .=) <$> _lFloorSection])

-- | Information about a person merged from various data sources such as the
-- authenticated user\'s contacts and profile data. Most fields can have
-- multiple items. The items in a field have no guaranteed order, but each
-- non-empty field is guaranteed to have exactly one field with
-- \`metadata.primary\` set to true.
--
-- /See:/ 'person' smart constructor.
data Person =
  Person'
    { _perEmailAddresses :: !(Maybe [EmailAddress])
    , _perAgeRange :: !(Maybe PersonAgeRange)
    , _perEtag :: !(Maybe Text)
    , _perResidences :: !(Maybe [Residence])
    , _perBiographies :: !(Maybe [Biography])
    , _perTaglines :: !(Maybe [Tagline])
    , _perBraggingRights :: !(Maybe [BraggingRights])
    , _perBirthdays :: !(Maybe [Birthday])
    , _perResourceName :: !(Maybe Text)
    , _perRelations :: !(Maybe [Relation])
    , _perURLs :: !(Maybe [URL])
    , _perAddresses :: !(Maybe [Address])
    , _perUserDefined :: !(Maybe [UserDefined])
    , _perNicknames :: !(Maybe [Nickname])
    , _perExternalIds :: !(Maybe [ExternalId])
    , _perRelationshipStatuses :: !(Maybe [RelationshipStatus])
    , _perImClients :: !(Maybe [ImClient])
    , _perPhoneNumbers :: !(Maybe [PhoneNumber])
    , _perOccupations :: !(Maybe [Occupation])
    , _perNames :: !(Maybe [Name])
    , _perGenders :: !(Maybe [Gender])
    , _perPhotos :: !(Maybe [Photo])
    , _perAgeRanges :: !(Maybe [AgeRangeType])
    , _perEvents :: !(Maybe [Event])
    , _perCalendarURLs :: !(Maybe [CalendarURL])
    , _perFileAses :: !(Maybe [FileAs])
    , _perCoverPhotos :: !(Maybe [CoverPhoto])
    , _perSkills :: !(Maybe [Skill])
    , _perSipAddresses :: !(Maybe [SipAddress])
    , _perMetadata :: !(Maybe PersonMetadata)
    , _perInterests :: !(Maybe [Interest])
    , _perOrganizations :: !(Maybe [Organization])
    , _perLocales :: !(Maybe [Locale])
    , _perLocations :: !(Maybe [Location])
    , _perMiscKeywords :: !(Maybe [MiscKeyword])
    , _perMemberships :: !(Maybe [Membership])
    , _perRelationshipInterests :: !(Maybe [RelationshipInterest])
    , _perClientData :: !(Maybe [ClientData])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perEmailAddresses'
--
-- * 'perAgeRange'
--
-- * 'perEtag'
--
-- * 'perResidences'
--
-- * 'perBiographies'
--
-- * 'perTaglines'
--
-- * 'perBraggingRights'
--
-- * 'perBirthdays'
--
-- * 'perResourceName'
--
-- * 'perRelations'
--
-- * 'perURLs'
--
-- * 'perAddresses'
--
-- * 'perUserDefined'
--
-- * 'perNicknames'
--
-- * 'perExternalIds'
--
-- * 'perRelationshipStatuses'
--
-- * 'perImClients'
--
-- * 'perPhoneNumbers'
--
-- * 'perOccupations'
--
-- * 'perNames'
--
-- * 'perGenders'
--
-- * 'perPhotos'
--
-- * 'perAgeRanges'
--
-- * 'perEvents'
--
-- * 'perCalendarURLs'
--
-- * 'perFileAses'
--
-- * 'perCoverPhotos'
--
-- * 'perSkills'
--
-- * 'perSipAddresses'
--
-- * 'perMetadata'
--
-- * 'perInterests'
--
-- * 'perOrganizations'
--
-- * 'perLocales'
--
-- * 'perLocations'
--
-- * 'perMiscKeywords'
--
-- * 'perMemberships'
--
-- * 'perRelationshipInterests'
--
-- * 'perClientData'
person
    :: Person
person =
  Person'
    { _perEmailAddresses = Nothing
    , _perAgeRange = Nothing
    , _perEtag = Nothing
    , _perResidences = Nothing
    , _perBiographies = Nothing
    , _perTaglines = Nothing
    , _perBraggingRights = Nothing
    , _perBirthdays = Nothing
    , _perResourceName = Nothing
    , _perRelations = Nothing
    , _perURLs = Nothing
    , _perAddresses = Nothing
    , _perUserDefined = Nothing
    , _perNicknames = Nothing
    , _perExternalIds = Nothing
    , _perRelationshipStatuses = Nothing
    , _perImClients = Nothing
    , _perPhoneNumbers = Nothing
    , _perOccupations = Nothing
    , _perNames = Nothing
    , _perGenders = Nothing
    , _perPhotos = Nothing
    , _perAgeRanges = Nothing
    , _perEvents = Nothing
    , _perCalendarURLs = Nothing
    , _perFileAses = Nothing
    , _perCoverPhotos = Nothing
    , _perSkills = Nothing
    , _perSipAddresses = Nothing
    , _perMetadata = Nothing
    , _perInterests = Nothing
    , _perOrganizations = Nothing
    , _perLocales = Nothing
    , _perLocations = Nothing
    , _perMiscKeywords = Nothing
    , _perMemberships = Nothing
    , _perRelationshipInterests = Nothing
    , _perClientData = Nothing
    }


-- | The person\'s email addresses. For \`people.connections.list\` and
-- \`otherContacts.list\` the number of email addresses is limited to 100.
-- If a Person has more email addresses the entire set can be obtained by
-- calling GetPeople.
perEmailAddresses :: Lens' Person [EmailAddress]
perEmailAddresses
  = lens _perEmailAddresses
      (\ s a -> s{_perEmailAddresses = a})
      . _Default
      . _Coerce

-- | Output only. **DEPRECATED** (Please use \`person.ageRanges\` instead)
-- The person\'s age range.
perAgeRange :: Lens' Person (Maybe PersonAgeRange)
perAgeRange
  = lens _perAgeRange (\ s a -> s{_perAgeRange = a})

-- | The [HTTP entity tag](https:\/\/en.wikipedia.org\/wiki\/HTTP_ETag) of
-- the resource. Used for web cache validation.
perEtag :: Lens' Person (Maybe Text)
perEtag = lens _perEtag (\ s a -> s{_perEtag = a})

-- | **DEPRECATED**: (Please use \`person.locations\` instead) The person\'s
-- residences.
perResidences :: Lens' Person [Residence]
perResidences
  = lens _perResidences
      (\ s a -> s{_perResidences = a})
      . _Default
      . _Coerce

-- | The person\'s biographies. This field is a singleton for contact
-- sources.
perBiographies :: Lens' Person [Biography]
perBiographies
  = lens _perBiographies
      (\ s a -> s{_perBiographies = a})
      . _Default
      . _Coerce

-- | Output only. **DEPRECATED**: No data will be returned The person\'s
-- taglines.
perTaglines :: Lens' Person [Tagline]
perTaglines
  = lens _perTaglines (\ s a -> s{_perTaglines = a}) .
      _Default
      . _Coerce

-- | **DEPRECATED**: No data will be returned The person\'s bragging rights.
perBraggingRights :: Lens' Person [BraggingRights]
perBraggingRights
  = lens _perBraggingRights
      (\ s a -> s{_perBraggingRights = a})
      . _Default
      . _Coerce

-- | The person\'s birthdays. This field is a singleton for contact sources.
perBirthdays :: Lens' Person [Birthday]
perBirthdays
  = lens _perBirthdays (\ s a -> s{_perBirthdays = a})
      . _Default
      . _Coerce

-- | The resource name for the person, assigned by the server. An ASCII
-- string with a max length of 27 characters, in the form of
-- \`people\/{person_id}\`.
perResourceName :: Lens' Person (Maybe Text)
perResourceName
  = lens _perResourceName
      (\ s a -> s{_perResourceName = a})

-- | The person\'s relations.
perRelations :: Lens' Person [Relation]
perRelations
  = lens _perRelations (\ s a -> s{_perRelations = a})
      . _Default
      . _Coerce

-- | The person\'s associated URLs.
perURLs :: Lens' Person [URL]
perURLs
  = lens _perURLs (\ s a -> s{_perURLs = a}) . _Default
      . _Coerce

-- | The person\'s street addresses.
perAddresses :: Lens' Person [Address]
perAddresses
  = lens _perAddresses (\ s a -> s{_perAddresses = a})
      . _Default
      . _Coerce

-- | The person\'s user defined data.
perUserDefined :: Lens' Person [UserDefined]
perUserDefined
  = lens _perUserDefined
      (\ s a -> s{_perUserDefined = a})
      . _Default
      . _Coerce

-- | The person\'s nicknames.
perNicknames :: Lens' Person [Nickname]
perNicknames
  = lens _perNicknames (\ s a -> s{_perNicknames = a})
      . _Default
      . _Coerce

-- | The person\'s external IDs.
perExternalIds :: Lens' Person [ExternalId]
perExternalIds
  = lens _perExternalIds
      (\ s a -> s{_perExternalIds = a})
      . _Default
      . _Coerce

-- | Output only. **DEPRECATED**: No data will be returned The person\'s
-- relationship statuses.
perRelationshipStatuses :: Lens' Person [RelationshipStatus]
perRelationshipStatuses
  = lens _perRelationshipStatuses
      (\ s a -> s{_perRelationshipStatuses = a})
      . _Default
      . _Coerce

-- | The person\'s instant messaging clients.
perImClients :: Lens' Person [ImClient]
perImClients
  = lens _perImClients (\ s a -> s{_perImClients = a})
      . _Default
      . _Coerce

-- | The person\'s phone numbers. For \`people.connections.list\` and
-- \`otherContacts.list\` the number of phone numbers is limited to 100. If
-- a Person has more phone numbers the entire set can be obtained by
-- calling GetPeople.
perPhoneNumbers :: Lens' Person [PhoneNumber]
perPhoneNumbers
  = lens _perPhoneNumbers
      (\ s a -> s{_perPhoneNumbers = a})
      . _Default
      . _Coerce

-- | The person\'s occupations.
perOccupations :: Lens' Person [Occupation]
perOccupations
  = lens _perOccupations
      (\ s a -> s{_perOccupations = a})
      . _Default
      . _Coerce

-- | The person\'s names. This field is a singleton for contact sources.
perNames :: Lens' Person [Name]
perNames
  = lens _perNames (\ s a -> s{_perNames = a}) .
      _Default
      . _Coerce

-- | The person\'s genders. This field is a singleton for contact sources.
perGenders :: Lens' Person [Gender]
perGenders
  = lens _perGenders (\ s a -> s{_perGenders = a}) .
      _Default
      . _Coerce

-- | Output only. The person\'s photos.
perPhotos :: Lens' Person [Photo]
perPhotos
  = lens _perPhotos (\ s a -> s{_perPhotos = a}) .
      _Default
      . _Coerce

-- | Output only. The person\'s age ranges.
perAgeRanges :: Lens' Person [AgeRangeType]
perAgeRanges
  = lens _perAgeRanges (\ s a -> s{_perAgeRanges = a})
      . _Default
      . _Coerce

-- | The person\'s events.
perEvents :: Lens' Person [Event]
perEvents
  = lens _perEvents (\ s a -> s{_perEvents = a}) .
      _Default
      . _Coerce

-- | The person\'s calendar URLs.
perCalendarURLs :: Lens' Person [CalendarURL]
perCalendarURLs
  = lens _perCalendarURLs
      (\ s a -> s{_perCalendarURLs = a})
      . _Default
      . _Coerce

-- | The person\'s file-ases.
perFileAses :: Lens' Person [FileAs]
perFileAses
  = lens _perFileAses (\ s a -> s{_perFileAses = a}) .
      _Default
      . _Coerce

-- | Output only. The person\'s cover photos.
perCoverPhotos :: Lens' Person [CoverPhoto]
perCoverPhotos
  = lens _perCoverPhotos
      (\ s a -> s{_perCoverPhotos = a})
      . _Default
      . _Coerce

-- | The person\'s skills.
perSkills :: Lens' Person [Skill]
perSkills
  = lens _perSkills (\ s a -> s{_perSkills = a}) .
      _Default
      . _Coerce

-- | The person\'s SIP addresses.
perSipAddresses :: Lens' Person [SipAddress]
perSipAddresses
  = lens _perSipAddresses
      (\ s a -> s{_perSipAddresses = a})
      . _Default
      . _Coerce

-- | Output only. Metadata about the person.
perMetadata :: Lens' Person (Maybe PersonMetadata)
perMetadata
  = lens _perMetadata (\ s a -> s{_perMetadata = a})

-- | The person\'s interests.
perInterests :: Lens' Person [Interest]
perInterests
  = lens _perInterests (\ s a -> s{_perInterests = a})
      . _Default
      . _Coerce

-- | The person\'s past or current organizations.
perOrganizations :: Lens' Person [Organization]
perOrganizations
  = lens _perOrganizations
      (\ s a -> s{_perOrganizations = a})
      . _Default
      . _Coerce

-- | The person\'s locale preferences.
perLocales :: Lens' Person [Locale]
perLocales
  = lens _perLocales (\ s a -> s{_perLocales = a}) .
      _Default
      . _Coerce

-- | The person\'s locations.
perLocations :: Lens' Person [Location]
perLocations
  = lens _perLocations (\ s a -> s{_perLocations = a})
      . _Default
      . _Coerce

-- | The person\'s miscellaneous keywords.
perMiscKeywords :: Lens' Person [MiscKeyword]
perMiscKeywords
  = lens _perMiscKeywords
      (\ s a -> s{_perMiscKeywords = a})
      . _Default
      . _Coerce

-- | The person\'s group memberships.
perMemberships :: Lens' Person [Membership]
perMemberships
  = lens _perMemberships
      (\ s a -> s{_perMemberships = a})
      . _Default
      . _Coerce

-- | Output only. **DEPRECATED**: No data will be returned The person\'s
-- relationship interests.
perRelationshipInterests :: Lens' Person [RelationshipInterest]
perRelationshipInterests
  = lens _perRelationshipInterests
      (\ s a -> s{_perRelationshipInterests = a})
      . _Default
      . _Coerce

-- | The person\'s client data.
perClientData :: Lens' Person [ClientData]
perClientData
  = lens _perClientData
      (\ s a -> s{_perClientData = a})
      . _Default
      . _Coerce

instance FromJSON Person where
        parseJSON
          = withObject "Person"
              (\ o ->
                 Person' <$>
                   (o .:? "emailAddresses" .!= mempty) <*>
                     (o .:? "ageRange")
                     <*> (o .:? "etag")
                     <*> (o .:? "residences" .!= mempty)
                     <*> (o .:? "biographies" .!= mempty)
                     <*> (o .:? "taglines" .!= mempty)
                     <*> (o .:? "braggingRights" .!= mempty)
                     <*> (o .:? "birthdays" .!= mempty)
                     <*> (o .:? "resourceName")
                     <*> (o .:? "relations" .!= mempty)
                     <*> (o .:? "urls" .!= mempty)
                     <*> (o .:? "addresses" .!= mempty)
                     <*> (o .:? "userDefined" .!= mempty)
                     <*> (o .:? "nicknames" .!= mempty)
                     <*> (o .:? "externalIds" .!= mempty)
                     <*> (o .:? "relationshipStatuses" .!= mempty)
                     <*> (o .:? "imClients" .!= mempty)
                     <*> (o .:? "phoneNumbers" .!= mempty)
                     <*> (o .:? "occupations" .!= mempty)
                     <*> (o .:? "names" .!= mempty)
                     <*> (o .:? "genders" .!= mempty)
                     <*> (o .:? "photos" .!= mempty)
                     <*> (o .:? "ageRanges" .!= mempty)
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "calendarUrls" .!= mempty)
                     <*> (o .:? "fileAses" .!= mempty)
                     <*> (o .:? "coverPhotos" .!= mempty)
                     <*> (o .:? "skills" .!= mempty)
                     <*> (o .:? "sipAddresses" .!= mempty)
                     <*> (o .:? "metadata")
                     <*> (o .:? "interests" .!= mempty)
                     <*> (o .:? "organizations" .!= mempty)
                     <*> (o .:? "locales" .!= mempty)
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "miscKeywords" .!= mempty)
                     <*> (o .:? "memberships" .!= mempty)
                     <*> (o .:? "relationshipInterests" .!= mempty)
                     <*> (o .:? "clientData" .!= mempty))

instance ToJSON Person where
        toJSON Person'{..}
          = object
              (catMaybes
                 [("emailAddresses" .=) <$> _perEmailAddresses,
                  ("ageRange" .=) <$> _perAgeRange,
                  ("etag" .=) <$> _perEtag,
                  ("residences" .=) <$> _perResidences,
                  ("biographies" .=) <$> _perBiographies,
                  ("taglines" .=) <$> _perTaglines,
                  ("braggingRights" .=) <$> _perBraggingRights,
                  ("birthdays" .=) <$> _perBirthdays,
                  ("resourceName" .=) <$> _perResourceName,
                  ("relations" .=) <$> _perRelations,
                  ("urls" .=) <$> _perURLs,
                  ("addresses" .=) <$> _perAddresses,
                  ("userDefined" .=) <$> _perUserDefined,
                  ("nicknames" .=) <$> _perNicknames,
                  ("externalIds" .=) <$> _perExternalIds,
                  ("relationshipStatuses" .=) <$>
                    _perRelationshipStatuses,
                  ("imClients" .=) <$> _perImClients,
                  ("phoneNumbers" .=) <$> _perPhoneNumbers,
                  ("occupations" .=) <$> _perOccupations,
                  ("names" .=) <$> _perNames,
                  ("genders" .=) <$> _perGenders,
                  ("photos" .=) <$> _perPhotos,
                  ("ageRanges" .=) <$> _perAgeRanges,
                  ("events" .=) <$> _perEvents,
                  ("calendarUrls" .=) <$> _perCalendarURLs,
                  ("fileAses" .=) <$> _perFileAses,
                  ("coverPhotos" .=) <$> _perCoverPhotos,
                  ("skills" .=) <$> _perSkills,
                  ("sipAddresses" .=) <$> _perSipAddresses,
                  ("metadata" .=) <$> _perMetadata,
                  ("interests" .=) <$> _perInterests,
                  ("organizations" .=) <$> _perOrganizations,
                  ("locales" .=) <$> _perLocales,
                  ("locations" .=) <$> _perLocations,
                  ("miscKeywords" .=) <$> _perMiscKeywords,
                  ("memberships" .=) <$> _perMemberships,
                  ("relationshipInterests" .=) <$>
                    _perRelationshipInterests,
                  ("clientData" .=) <$> _perClientData])

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

-- | The response to a list contact groups request.
--
-- /See:/ 'listContactGroupsResponse' smart constructor.
data ListContactGroupsResponse =
  ListContactGroupsResponse'
    { _lcgrContactGroups :: !(Maybe [ContactGroup])
    , _lcgrTotalItems :: !(Maybe (Textual Int32))
    , _lcgrNextPageToken :: !(Maybe Text)
    , _lcgrNextSyncToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListContactGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcgrContactGroups'
--
-- * 'lcgrTotalItems'
--
-- * 'lcgrNextPageToken'
--
-- * 'lcgrNextSyncToken'
listContactGroupsResponse
    :: ListContactGroupsResponse
listContactGroupsResponse =
  ListContactGroupsResponse'
    { _lcgrContactGroups = Nothing
    , _lcgrTotalItems = Nothing
    , _lcgrNextPageToken = Nothing
    , _lcgrNextSyncToken = Nothing
    }


-- | The list of contact groups. Members of the contact groups are not
-- populated.
lcgrContactGroups :: Lens' ListContactGroupsResponse [ContactGroup]
lcgrContactGroups
  = lens _lcgrContactGroups
      (\ s a -> s{_lcgrContactGroups = a})
      . _Default
      . _Coerce

-- | The total number of items in the list without pagination.
lcgrTotalItems :: Lens' ListContactGroupsResponse (Maybe Int32)
lcgrTotalItems
  = lens _lcgrTotalItems
      (\ s a -> s{_lcgrTotalItems = a})
      . mapping _Coerce

-- | The token that can be used to retrieve the next page of results.
lcgrNextPageToken :: Lens' ListContactGroupsResponse (Maybe Text)
lcgrNextPageToken
  = lens _lcgrNextPageToken
      (\ s a -> s{_lcgrNextPageToken = a})

-- | The token that can be used to retrieve changes since the last request.
lcgrNextSyncToken :: Lens' ListContactGroupsResponse (Maybe Text)
lcgrNextSyncToken
  = lens _lcgrNextSyncToken
      (\ s a -> s{_lcgrNextSyncToken = a})

instance FromJSON ListContactGroupsResponse where
        parseJSON
          = withObject "ListContactGroupsResponse"
              (\ o ->
                 ListContactGroupsResponse' <$>
                   (o .:? "contactGroups" .!= mempty) <*>
                     (o .:? "totalItems")
                     <*> (o .:? "nextPageToken")
                     <*> (o .:? "nextSyncToken"))

instance ToJSON ListContactGroupsResponse where
        toJSON ListContactGroupsResponse'{..}
          = object
              (catMaybes
                 [("contactGroups" .=) <$> _lcgrContactGroups,
                  ("totalItems" .=) <$> _lcgrTotalItems,
                  ("nextPageToken" .=) <$> _lcgrNextPageToken,
                  ("nextSyncToken" .=) <$> _lcgrNextSyncToken])

-- | A Google contact group membership.
--
-- /See:/ 'contactGroupMembership' smart constructor.
data ContactGroupMembership =
  ContactGroupMembership'
    { _cgmContactGroupResourceName :: !(Maybe Text)
    , _cgmContactGroupId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactGroupMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgmContactGroupResourceName'
--
-- * 'cgmContactGroupId'
contactGroupMembership
    :: ContactGroupMembership
contactGroupMembership =
  ContactGroupMembership'
    {_cgmContactGroupResourceName = Nothing, _cgmContactGroupId = Nothing}


-- | The resource name for the contact group, assigned by the server. An
-- ASCII string, in the form of \`contactGroups\/{contact_group_id}\`. Only
-- contact_group_resource_name can be used for modifying memberships. Any
-- contact group membership can be removed, but only user group or
-- \"myContacts\" or \"starred\" system groups memberships can be added. A
-- contact must always have at least one contact group membership.
cgmContactGroupResourceName :: Lens' ContactGroupMembership (Maybe Text)
cgmContactGroupResourceName
  = lens _cgmContactGroupResourceName
      (\ s a -> s{_cgmContactGroupResourceName = a})

-- | Output only. The contact group ID for the contact group membership.
cgmContactGroupId :: Lens' ContactGroupMembership (Maybe Text)
cgmContactGroupId
  = lens _cgmContactGroupId
      (\ s a -> s{_cgmContactGroupId = a})

instance FromJSON ContactGroupMembership where
        parseJSON
          = withObject "ContactGroupMembership"
              (\ o ->
                 ContactGroupMembership' <$>
                   (o .:? "contactGroupResourceName") <*>
                     (o .:? "contactGroupId"))

instance ToJSON ContactGroupMembership where
        toJSON ContactGroupMembership'{..}
          = object
              (catMaybes
                 [("contactGroupResourceName" .=) <$>
                    _cgmContactGroupResourceName,
                  ("contactGroupId" .=) <$> _cgmContactGroupId])

-- | A person\'s miscellaneous keyword.
--
-- /See:/ 'miscKeyword' smart constructor.
data MiscKeyword =
  MiscKeyword'
    { _mkValue :: !(Maybe Text)
    , _mkMetadata :: !(Maybe FieldMetadata)
    , _mkType :: !(Maybe MiscKeywordType)
    , _mkFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MiscKeyword' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mkValue'
--
-- * 'mkMetadata'
--
-- * 'mkType'
--
-- * 'mkFormattedType'
miscKeyword
    :: MiscKeyword
miscKeyword =
  MiscKeyword'
    { _mkValue = Nothing
    , _mkMetadata = Nothing
    , _mkType = Nothing
    , _mkFormattedType = Nothing
    }


-- | The value of the miscellaneous keyword.
mkValue :: Lens' MiscKeyword (Maybe Text)
mkValue = lens _mkValue (\ s a -> s{_mkValue = a})

-- | Metadata about the miscellaneous keyword.
mkMetadata :: Lens' MiscKeyword (Maybe FieldMetadata)
mkMetadata
  = lens _mkMetadata (\ s a -> s{_mkMetadata = a})

-- | The miscellaneous keyword type.
mkType :: Lens' MiscKeyword (Maybe MiscKeywordType)
mkType = lens _mkType (\ s a -> s{_mkType = a})

-- | Output only. The type of the miscellaneous keyword translated and
-- formatted in the viewer\'s account locale or the \`Accept-Language\`
-- HTTP header locale.
mkFormattedType :: Lens' MiscKeyword (Maybe Text)
mkFormattedType
  = lens _mkFormattedType
      (\ s a -> s{_mkFormattedType = a})

instance FromJSON MiscKeyword where
        parseJSON
          = withObject "MiscKeyword"
              (\ o ->
                 MiscKeyword' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON MiscKeyword where
        toJSON MiscKeyword'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _mkValue,
                  ("metadata" .=) <$> _mkMetadata,
                  ("type" .=) <$> _mkType,
                  ("formattedType" .=) <$> _mkFormattedType])

-- | The response to a request to create a batch of contacts.
--
-- /See:/ 'batchCreateContactsResponse' smart constructor.
newtype BatchCreateContactsResponse =
  BatchCreateContactsResponse'
    { _bccrCreatedPeople :: Maybe [PersonResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateContactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bccrCreatedPeople'
batchCreateContactsResponse
    :: BatchCreateContactsResponse
batchCreateContactsResponse =
  BatchCreateContactsResponse' {_bccrCreatedPeople = Nothing}


-- | The contacts that were created, unless the request \`read_mask\` is
-- empty.
bccrCreatedPeople :: Lens' BatchCreateContactsResponse [PersonResponse]
bccrCreatedPeople
  = lens _bccrCreatedPeople
      (\ s a -> s{_bccrCreatedPeople = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreateContactsResponse where
        parseJSON
          = withObject "BatchCreateContactsResponse"
              (\ o ->
                 BatchCreateContactsResponse' <$>
                   (o .:? "createdPeople" .!= mempty))

instance ToJSON BatchCreateContactsResponse where
        toJSON BatchCreateContactsResponse'{..}
          = object
              (catMaybes
                 [("createdPeople" .=) <$> _bccrCreatedPeople])

-- | Arbitrary user data that is populated by the end users.
--
-- /See:/ 'userDefined' smart constructor.
data UserDefined =
  UserDefined'
    { _udValue :: !(Maybe Text)
    , _udKey :: !(Maybe Text)
    , _udMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserDefined' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udValue'
--
-- * 'udKey'
--
-- * 'udMetadata'
userDefined
    :: UserDefined
userDefined =
  UserDefined' {_udValue = Nothing, _udKey = Nothing, _udMetadata = Nothing}


-- | The end user specified value of the user defined data.
udValue :: Lens' UserDefined (Maybe Text)
udValue = lens _udValue (\ s a -> s{_udValue = a})

-- | The end user specified key of the user defined data.
udKey :: Lens' UserDefined (Maybe Text)
udKey = lens _udKey (\ s a -> s{_udKey = a})

-- | Metadata about the user defined data.
udMetadata :: Lens' UserDefined (Maybe FieldMetadata)
udMetadata
  = lens _udMetadata (\ s a -> s{_udMetadata = a})

instance FromJSON UserDefined where
        parseJSON
          = withObject "UserDefined"
              (\ o ->
                 UserDefined' <$>
                   (o .:? "value") <*> (o .:? "key") <*>
                     (o .:? "metadata"))

instance ToJSON UserDefined where
        toJSON UserDefined'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _udValue, ("key" .=) <$> _udKey,
                  ("metadata" .=) <$> _udMetadata])

-- | A person\'s locale preference.
--
-- /See:/ 'locale' smart constructor.
data Locale =
  Locale'
    { _locValue :: !(Maybe Text)
    , _locMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Locale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locValue'
--
-- * 'locMetadata'
locale
    :: Locale
locale = Locale' {_locValue = Nothing, _locMetadata = Nothing}


-- | The well-formed [IETF BCP 47](https:\/\/tools.ietf.org\/html\/bcp47)
-- language tag representing the locale.
locValue :: Lens' Locale (Maybe Text)
locValue = lens _locValue (\ s a -> s{_locValue = a})

-- | Metadata about the locale.
locMetadata :: Lens' Locale (Maybe FieldMetadata)
locMetadata
  = lens _locMetadata (\ s a -> s{_locMetadata = a})

instance FromJSON Locale where
        parseJSON
          = withObject "Locale"
              (\ o ->
                 Locale' <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Locale where
        toJSON Locale'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _locValue,
                  ("metadata" .=) <$> _locMetadata])

-- | **DEPRECATED**: No data will be returned A person\'s relationship
-- status.
--
-- /See:/ 'relationshipStatus' smart constructor.
data RelationshipStatus =
  RelationshipStatus'
    { _rsValue :: !(Maybe Text)
    , _rsMetadata :: !(Maybe FieldMetadata)
    , _rsFormattedValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RelationshipStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsValue'
--
-- * 'rsMetadata'
--
-- * 'rsFormattedValue'
relationshipStatus
    :: RelationshipStatus
relationshipStatus =
  RelationshipStatus'
    {_rsValue = Nothing, _rsMetadata = Nothing, _rsFormattedValue = Nothing}


-- | The relationship status. The value can be custom or one of these
-- predefined values: * \`single\` * \`inARelationship\` * \`engaged\` *
-- \`married\` * \`itsComplicated\` * \`openRelationship\` * \`widowed\` *
-- \`inDomesticPartnership\` * \`inCivilUnion\`
rsValue :: Lens' RelationshipStatus (Maybe Text)
rsValue = lens _rsValue (\ s a -> s{_rsValue = a})

-- | Metadata about the relationship status.
rsMetadata :: Lens' RelationshipStatus (Maybe FieldMetadata)
rsMetadata
  = lens _rsMetadata (\ s a -> s{_rsMetadata = a})

-- | Output only. The value of the relationship status translated and
-- formatted in the viewer\'s account locale or the \`Accept-Language\`
-- HTTP header locale.
rsFormattedValue :: Lens' RelationshipStatus (Maybe Text)
rsFormattedValue
  = lens _rsFormattedValue
      (\ s a -> s{_rsFormattedValue = a})

instance FromJSON RelationshipStatus where
        parseJSON
          = withObject "RelationshipStatus"
              (\ o ->
                 RelationshipStatus' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "formattedValue"))

instance ToJSON RelationshipStatus where
        toJSON RelationshipStatus'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rsValue,
                  ("metadata" .=) <$> _rsMetadata,
                  ("formattedValue" .=) <$> _rsFormattedValue])

-- | A person\'s associated URLs.
--
-- /See:/ 'url' smart constructor.
data URL =
  URL'
    { _uValue :: !(Maybe Text)
    , _uMetadata :: !(Maybe FieldMetadata)
    , _uType :: !(Maybe Text)
    , _uFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uValue'
--
-- * 'uMetadata'
--
-- * 'uType'
--
-- * 'uFormattedType'
url
    :: URL
url =
  URL'
    { _uValue = Nothing
    , _uMetadata = Nothing
    , _uType = Nothing
    , _uFormattedType = Nothing
    }


-- | The URL.
uValue :: Lens' URL (Maybe Text)
uValue = lens _uValue (\ s a -> s{_uValue = a})

-- | Metadata about the URL.
uMetadata :: Lens' URL (Maybe FieldMetadata)
uMetadata
  = lens _uMetadata (\ s a -> s{_uMetadata = a})

-- | The type of the URL. The type can be custom or one of these predefined
-- values: * \`home\` * \`work\` * \`blog\` * \`profile\` * \`homePage\` *
-- \`ftp\` * \`reservations\` * \`appInstallPage\`: website for a Currents
-- application. * \`other\`
uType :: Lens' URL (Maybe Text)
uType = lens _uType (\ s a -> s{_uType = a})

-- | Output only. The type of the URL translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
uFormattedType :: Lens' URL (Maybe Text)
uFormattedType
  = lens _uFormattedType
      (\ s a -> s{_uFormattedType = a})

instance FromJSON URL where
        parseJSON
          = withObject "URL"
              (\ o ->
                 URL' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON URL where
        toJSON URL'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _uValue,
                  ("metadata" .=) <$> _uMetadata,
                  ("type" .=) <$> _uType,
                  ("formattedType" .=) <$> _uFormattedType])

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

-- | The response for deleting a contact\'s photo.
--
-- /See:/ 'deleteContactPhotoResponse' smart constructor.
newtype DeleteContactPhotoResponse =
  DeleteContactPhotoResponse'
    { _dcprPerson :: Maybe Person
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteContactPhotoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcprPerson'
deleteContactPhotoResponse
    :: DeleteContactPhotoResponse
deleteContactPhotoResponse = DeleteContactPhotoResponse' {_dcprPerson = Nothing}


-- | The updated person, if person_fields is set in the
-- DeleteContactPhotoRequest; otherwise this will be unset.
dcprPerson :: Lens' DeleteContactPhotoResponse (Maybe Person)
dcprPerson
  = lens _dcprPerson (\ s a -> s{_dcprPerson = a})

instance FromJSON DeleteContactPhotoResponse where
        parseJSON
          = withObject "DeleteContactPhotoResponse"
              (\ o ->
                 DeleteContactPhotoResponse' <$> (o .:? "person"))

instance ToJSON DeleteContactPhotoResponse where
        toJSON DeleteContactPhotoResponse'{..}
          = object (catMaybes [("person" .=) <$> _dcprPerson])

-- | The response for updating a contact\'s photo.
--
-- /See:/ 'updateContactPhotoResponse' smart constructor.
newtype UpdateContactPhotoResponse =
  UpdateContactPhotoResponse'
    { _ucprPerson :: Maybe Person
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateContactPhotoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucprPerson'
updateContactPhotoResponse
    :: UpdateContactPhotoResponse
updateContactPhotoResponse = UpdateContactPhotoResponse' {_ucprPerson = Nothing}


-- | The updated person, if person_fields is set in the
-- UpdateContactPhotoRequest; otherwise this will be unset.
ucprPerson :: Lens' UpdateContactPhotoResponse (Maybe Person)
ucprPerson
  = lens _ucprPerson (\ s a -> s{_ucprPerson = a})

instance FromJSON UpdateContactPhotoResponse where
        parseJSON
          = withObject "UpdateContactPhotoResponse"
              (\ o ->
                 UpdateContactPhotoResponse' <$> (o .:? "person"))

instance ToJSON UpdateContactPhotoResponse where
        toJSON UpdateContactPhotoResponse'{..}
          = object (catMaybes [("person" .=) <$> _ucprPerson])

-- | Arbitrary client data that is populated by clients. Duplicate keys and
-- values are allowed.
--
-- /See:/ 'groupClientData' smart constructor.
data GroupClientData =
  GroupClientData'
    { _gcdValue :: !(Maybe Text)
    , _gcdKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupClientData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdValue'
--
-- * 'gcdKey'
groupClientData
    :: GroupClientData
groupClientData = GroupClientData' {_gcdValue = Nothing, _gcdKey = Nothing}


-- | The client specified value of the client data.
gcdValue :: Lens' GroupClientData (Maybe Text)
gcdValue = lens _gcdValue (\ s a -> s{_gcdValue = a})

-- | The client specified key of the client data.
gcdKey :: Lens' GroupClientData (Maybe Text)
gcdKey = lens _gcdKey (\ s a -> s{_gcdKey = a})

instance FromJSON GroupClientData where
        parseJSON
          = withObject "GroupClientData"
              (\ o ->
                 GroupClientData' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON GroupClientData where
        toJSON GroupClientData'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdValue, ("key" .=) <$> _gcdKey])

-- | A person\'s physical address. May be a P.O. box or street address. All
-- fields are optional.
--
-- /See:/ 'address' smart constructor.
data Address =
  Address'
    { _aStreetAddress :: !(Maybe Text)
    , _aPoBox :: !(Maybe Text)
    , _aCountry :: !(Maybe Text)
    , _aPostalCode :: !(Maybe Text)
    , _aExtendedAddress :: !(Maybe Text)
    , _aCity :: !(Maybe Text)
    , _aMetadata :: !(Maybe FieldMetadata)
    , _aCountryCode :: !(Maybe Text)
    , _aFormattedValue :: !(Maybe Text)
    , _aRegion :: !(Maybe Text)
    , _aType :: !(Maybe Text)
    , _aFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Address' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aStreetAddress'
--
-- * 'aPoBox'
--
-- * 'aCountry'
--
-- * 'aPostalCode'
--
-- * 'aExtendedAddress'
--
-- * 'aCity'
--
-- * 'aMetadata'
--
-- * 'aCountryCode'
--
-- * 'aFormattedValue'
--
-- * 'aRegion'
--
-- * 'aType'
--
-- * 'aFormattedType'
address
    :: Address
address =
  Address'
    { _aStreetAddress = Nothing
    , _aPoBox = Nothing
    , _aCountry = Nothing
    , _aPostalCode = Nothing
    , _aExtendedAddress = Nothing
    , _aCity = Nothing
    , _aMetadata = Nothing
    , _aCountryCode = Nothing
    , _aFormattedValue = Nothing
    , _aRegion = Nothing
    , _aType = Nothing
    , _aFormattedType = Nothing
    }


-- | The street address.
aStreetAddress :: Lens' Address (Maybe Text)
aStreetAddress
  = lens _aStreetAddress
      (\ s a -> s{_aStreetAddress = a})

-- | The P.O. box of the address.
aPoBox :: Lens' Address (Maybe Text)
aPoBox = lens _aPoBox (\ s a -> s{_aPoBox = a})

-- | The country of the address.
aCountry :: Lens' Address (Maybe Text)
aCountry = lens _aCountry (\ s a -> s{_aCountry = a})

-- | The postal code of the address.
aPostalCode :: Lens' Address (Maybe Text)
aPostalCode
  = lens _aPostalCode (\ s a -> s{_aPostalCode = a})

-- | The extended address of the address; for example, the apartment number.
aExtendedAddress :: Lens' Address (Maybe Text)
aExtendedAddress
  = lens _aExtendedAddress
      (\ s a -> s{_aExtendedAddress = a})

-- | The city of the address.
aCity :: Lens' Address (Maybe Text)
aCity = lens _aCity (\ s a -> s{_aCity = a})

-- | Metadata about the address.
aMetadata :: Lens' Address (Maybe FieldMetadata)
aMetadata
  = lens _aMetadata (\ s a -> s{_aMetadata = a})

-- | The [ISO 3166-1 alpha-2](http:\/\/www.iso.org\/iso\/country_codes.htm)
-- country code of the address.
aCountryCode :: Lens' Address (Maybe Text)
aCountryCode
  = lens _aCountryCode (\ s a -> s{_aCountryCode = a})

-- | The unstructured value of the address. If this is not set by the user it
-- will be automatically constructed from structured values.
aFormattedValue :: Lens' Address (Maybe Text)
aFormattedValue
  = lens _aFormattedValue
      (\ s a -> s{_aFormattedValue = a})

-- | The region of the address; for example, the state or province.
aRegion :: Lens' Address (Maybe Text)
aRegion = lens _aRegion (\ s a -> s{_aRegion = a})

-- | The type of the address. The type can be custom or one of these
-- predefined values: * \`home\` * \`work\` * \`other\`
aType :: Lens' Address (Maybe Text)
aType = lens _aType (\ s a -> s{_aType = a})

-- | Output only. The type of the address translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
aFormattedType :: Lens' Address (Maybe Text)
aFormattedType
  = lens _aFormattedType
      (\ s a -> s{_aFormattedType = a})

instance FromJSON Address where
        parseJSON
          = withObject "Address"
              (\ o ->
                 Address' <$>
                   (o .:? "streetAddress") <*> (o .:? "poBox") <*>
                     (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "extendedAddress")
                     <*> (o .:? "city")
                     <*> (o .:? "metadata")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "formattedValue")
                     <*> (o .:? "region")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON Address where
        toJSON Address'{..}
          = object
              (catMaybes
                 [("streetAddress" .=) <$> _aStreetAddress,
                  ("poBox" .=) <$> _aPoBox,
                  ("country" .=) <$> _aCountry,
                  ("postalCode" .=) <$> _aPostalCode,
                  ("extendedAddress" .=) <$> _aExtendedAddress,
                  ("city" .=) <$> _aCity,
                  ("metadata" .=) <$> _aMetadata,
                  ("countryCode" .=) <$> _aCountryCode,
                  ("formattedValue" .=) <$> _aFormattedValue,
                  ("region" .=) <$> _aRegion, ("type" .=) <$> _aType,
                  ("formattedType" .=) <$> _aFormattedType])

-- | The metadata about a profile.
--
-- /See:/ 'proFileMetadata' smart constructor.
data ProFileMetadata =
  ProFileMetadata'
    { _pfmObjectType :: !(Maybe ProFileMetadataObjectType)
    , _pfmUserTypes :: !(Maybe [ProFileMetadataUserTypesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProFileMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfmObjectType'
--
-- * 'pfmUserTypes'
proFileMetadata
    :: ProFileMetadata
proFileMetadata =
  ProFileMetadata' {_pfmObjectType = Nothing, _pfmUserTypes = Nothing}


-- | Output only. The profile object type.
pfmObjectType :: Lens' ProFileMetadata (Maybe ProFileMetadataObjectType)
pfmObjectType
  = lens _pfmObjectType
      (\ s a -> s{_pfmObjectType = a})

-- | Output only. The user types.
pfmUserTypes :: Lens' ProFileMetadata [ProFileMetadataUserTypesItem]
pfmUserTypes
  = lens _pfmUserTypes (\ s a -> s{_pfmUserTypes = a})
      . _Default
      . _Coerce

instance FromJSON ProFileMetadata where
        parseJSON
          = withObject "ProFileMetadata"
              (\ o ->
                 ProFileMetadata' <$>
                   (o .:? "objectType") <*>
                     (o .:? "userTypes" .!= mempty))

instance ToJSON ProFileMetadata where
        toJSON ProFileMetadata'{..}
          = object
              (catMaybes
                 [("objectType" .=) <$> _pfmObjectType,
                  ("userTypes" .=) <$> _pfmUserTypes])

-- | A person\'s relation to another person.
--
-- /See:/ 'relation' smart constructor.
data Relation =
  Relation'
    { _rPerson :: !(Maybe Text)
    , _rMetadata :: !(Maybe FieldMetadata)
    , _rType :: !(Maybe Text)
    , _rFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Relation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rPerson'
--
-- * 'rMetadata'
--
-- * 'rType'
--
-- * 'rFormattedType'
relation
    :: Relation
relation =
  Relation'
    { _rPerson = Nothing
    , _rMetadata = Nothing
    , _rType = Nothing
    , _rFormattedType = Nothing
    }


-- | The name of the other person this relation refers to.
rPerson :: Lens' Relation (Maybe Text)
rPerson = lens _rPerson (\ s a -> s{_rPerson = a})

-- | Metadata about the relation.
rMetadata :: Lens' Relation (Maybe FieldMetadata)
rMetadata
  = lens _rMetadata (\ s a -> s{_rMetadata = a})

-- | The person\'s relation to the other person. The type can be custom or
-- one of these predefined values: * \`spouse\` * \`child\` * \`mother\` *
-- \`father\` * \`parent\` * \`brother\` * \`sister\` * \`friend\` *
-- \`relative\` * \`domesticPartner\` * \`manager\` * \`assistant\` *
-- \`referredBy\` * \`partner\`
rType :: Lens' Relation (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

-- | Output only. The type of the relation translated and formatted in the
-- viewer\'s account locale or the locale specified in the Accept-Language
-- HTTP header.
rFormattedType :: Lens' Relation (Maybe Text)
rFormattedType
  = lens _rFormattedType
      (\ s a -> s{_rFormattedType = a})

instance FromJSON Relation where
        parseJSON
          = withObject "Relation"
              (\ o ->
                 Relation' <$>
                   (o .:? "person") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON Relation where
        toJSON Relation'{..}
          = object
              (catMaybes
                 [("person" .=) <$> _rPerson,
                  ("metadata" .=) <$> _rMetadata,
                  ("type" .=) <$> _rType,
                  ("formattedType" .=) <$> _rFormattedType])

-- | The response to a get request for a list of people by resource name.
--
-- /See:/ 'getPeopleResponse' smart constructor.
newtype GetPeopleResponse =
  GetPeopleResponse'
    { _gprResponses :: Maybe [PersonResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPeopleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprResponses'
getPeopleResponse
    :: GetPeopleResponse
getPeopleResponse = GetPeopleResponse' {_gprResponses = Nothing}


-- | The response for each requested resource name.
gprResponses :: Lens' GetPeopleResponse [PersonResponse]
gprResponses
  = lens _gprResponses (\ s a -> s{_gprResponses = a})
      . _Default
      . _Coerce

instance FromJSON GetPeopleResponse where
        parseJSON
          = withObject "GetPeopleResponse"
              (\ o ->
                 GetPeopleResponse' <$>
                   (o .:? "responses" .!= mempty))

instance ToJSON GetPeopleResponse where
        toJSON GetPeopleResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _gprResponses])

-- | The response to a request for the authenticated user\'s \"Other
-- contacts\".
--
-- /See:/ 'listOtherContactsResponse' smart constructor.
data ListOtherContactsResponse =
  ListOtherContactsResponse'
    { _locrNextPageToken :: !(Maybe Text)
    , _locrOtherContacts :: !(Maybe [Person])
    , _locrTotalSize :: !(Maybe (Textual Int32))
    , _locrNextSyncToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOtherContactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locrNextPageToken'
--
-- * 'locrOtherContacts'
--
-- * 'locrTotalSize'
--
-- * 'locrNextSyncToken'
listOtherContactsResponse
    :: ListOtherContactsResponse
listOtherContactsResponse =
  ListOtherContactsResponse'
    { _locrNextPageToken = Nothing
    , _locrOtherContacts = Nothing
    , _locrTotalSize = Nothing
    , _locrNextSyncToken = Nothing
    }


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
locrNextPageToken :: Lens' ListOtherContactsResponse (Maybe Text)
locrNextPageToken
  = lens _locrNextPageToken
      (\ s a -> s{_locrNextPageToken = a})

-- | The list of \"Other contacts\" returned as Person resources. \"Other
-- contacts\" support a limited subset of fields. See
-- ListOtherContactsRequest.request_mask for more detailed information.
locrOtherContacts :: Lens' ListOtherContactsResponse [Person]
locrOtherContacts
  = lens _locrOtherContacts
      (\ s a -> s{_locrOtherContacts = a})
      . _Default
      . _Coerce

-- | The total number of other contacts in the list without pagination.
locrTotalSize :: Lens' ListOtherContactsResponse (Maybe Int32)
locrTotalSize
  = lens _locrTotalSize
      (\ s a -> s{_locrTotalSize = a})
      . mapping _Coerce

-- | A token, which can be sent as \`sync_token\` to retrieve changes since
-- the last request. Request must set \`request_sync_token\` to return the
-- sync token.
locrNextSyncToken :: Lens' ListOtherContactsResponse (Maybe Text)
locrNextSyncToken
  = lens _locrNextSyncToken
      (\ s a -> s{_locrNextSyncToken = a})

instance FromJSON ListOtherContactsResponse where
        parseJSON
          = withObject "ListOtherContactsResponse"
              (\ o ->
                 ListOtherContactsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "otherContacts" .!= mempty)
                     <*> (o .:? "totalSize")
                     <*> (o .:? "nextSyncToken"))

instance ToJSON ListOtherContactsResponse where
        toJSON ListOtherContactsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _locrNextPageToken,
                  ("otherContacts" .=) <$> _locrOtherContacts,
                  ("totalSize" .=) <$> _locrTotalSize,
                  ("nextSyncToken" .=) <$> _locrNextSyncToken])

-- | A person\'s birthday. At least one of the \`date\` and \`text\` fields
-- are specified. The \`date\` and \`text\` fields typically represent the
-- same date, but are not guaranteed to.
--
-- /See:/ 'birthday' smart constructor.
data Birthday =
  Birthday'
    { _bText :: !(Maybe Text)
    , _bDate :: !(Maybe Date)
    , _bMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Birthday' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bText'
--
-- * 'bDate'
--
-- * 'bMetadata'
birthday
    :: Birthday
birthday = Birthday' {_bText = Nothing, _bDate = Nothing, _bMetadata = Nothing}


-- | A free-form string representing the user\'s birthday.
bText :: Lens' Birthday (Maybe Text)
bText = lens _bText (\ s a -> s{_bText = a})

-- | The date of the birthday.
bDate :: Lens' Birthday (Maybe Date)
bDate = lens _bDate (\ s a -> s{_bDate = a})

-- | Metadata about the birthday.
bMetadata :: Lens' Birthday (Maybe FieldMetadata)
bMetadata
  = lens _bMetadata (\ s a -> s{_bMetadata = a})

instance FromJSON Birthday where
        parseJSON
          = withObject "Birthday"
              (\ o ->
                 Birthday' <$>
                   (o .:? "text") <*> (o .:? "date") <*>
                     (o .:? "metadata"))

instance ToJSON Birthday where
        toJSON Birthday'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _bText, ("date" .=) <$> _bDate,
                  ("metadata" .=) <$> _bMetadata])

-- | Represents a whole or partial calendar date, such as a birthday. The
-- time of day and time zone are either specified elsewhere or are
-- insignificant. The date is relative to the Gregorian Calendar. This can
-- represent one of the following: * A full date, with non-zero year,
-- month, and day values * A month and day value, with a zero year, such as
-- an anniversary * A year on its own, with zero month and day values * A
-- year and month value, with a zero day, such as a credit card expiration
-- date Related types are google.type.TimeOfDay and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | **DEPRECATED**: No data will be returned A brief one-line description of
-- the person.
--
-- /See:/ 'tagline' smart constructor.
data Tagline =
  Tagline'
    { _tValue :: !(Maybe Text)
    , _tMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tagline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tValue'
--
-- * 'tMetadata'
tagline
    :: Tagline
tagline = Tagline' {_tValue = Nothing, _tMetadata = Nothing}


-- | The tagline.
tValue :: Lens' Tagline (Maybe Text)
tValue = lens _tValue (\ s a -> s{_tValue = a})

-- | Metadata about the tagline.
tMetadata :: Lens' Tagline (Maybe FieldMetadata)
tMetadata
  = lens _tMetadata (\ s a -> s{_tMetadata = a})

instance FromJSON Tagline where
        parseJSON
          = withObject "Tagline"
              (\ o ->
                 Tagline' <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Tagline where
        toJSON Tagline'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tValue,
                  ("metadata" .=) <$> _tMetadata])

-- | **DEPRECATED**: Please use \`person.locations\` instead. A person\'s
-- past or current residence.
--
-- /See:/ 'residence' smart constructor.
data Residence =
  Residence'
    { _resValue :: !(Maybe Text)
    , _resCurrent :: !(Maybe Bool)
    , _resMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Residence' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resValue'
--
-- * 'resCurrent'
--
-- * 'resMetadata'
residence
    :: Residence
residence =
  Residence'
    {_resValue = Nothing, _resCurrent = Nothing, _resMetadata = Nothing}


-- | The address of the residence.
resValue :: Lens' Residence (Maybe Text)
resValue = lens _resValue (\ s a -> s{_resValue = a})

-- | True if the residence is the person\'s current residence; false if the
-- residence is a past residence.
resCurrent :: Lens' Residence (Maybe Bool)
resCurrent
  = lens _resCurrent (\ s a -> s{_resCurrent = a})

-- | Metadata about the residence.
resMetadata :: Lens' Residence (Maybe FieldMetadata)
resMetadata
  = lens _resMetadata (\ s a -> s{_resMetadata = a})

instance FromJSON Residence where
        parseJSON
          = withObject "Residence"
              (\ o ->
                 Residence' <$>
                   (o .:? "value") <*> (o .:? "current") <*>
                     (o .:? "metadata"))

instance ToJSON Residence where
        toJSON Residence'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _resValue,
                  ("current" .=) <$> _resCurrent,
                  ("metadata" .=) <$> _resMetadata])

-- | A request to update an existing contact\'s photo. All requests must have
-- a valid photo format: JPEG or PNG.
--
-- /See:/ 'updateContactPhotoRequest' smart constructor.
data UpdateContactPhotoRequest =
  UpdateContactPhotoRequest'
    { _ucprSources :: !(Maybe [UpdateContactPhotoRequestSourcesItem])
    , _ucprPersonFields :: !(Maybe GFieldMask)
    , _ucprPhotoBytes :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateContactPhotoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucprSources'
--
-- * 'ucprPersonFields'
--
-- * 'ucprPhotoBytes'
updateContactPhotoRequest
    :: UpdateContactPhotoRequest
updateContactPhotoRequest =
  UpdateContactPhotoRequest'
    { _ucprSources = Nothing
    , _ucprPersonFields = Nothing
    , _ucprPhotoBytes = Nothing
    }


-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
ucprSources :: Lens' UpdateContactPhotoRequest [UpdateContactPhotoRequestSourcesItem]
ucprSources
  = lens _ucprSources (\ s a -> s{_ucprSources = a}) .
      _Default
      . _Coerce

-- | Optional. A field mask to restrict which fields on the person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Defaults to empty if not set, which will skip the post mutate
-- get. Valid values are: * addresses * ageRanges * biographies * birthdays
-- * calendarUrls * clientData * coverPhotos * emailAddresses * events *
-- externalIds * genders * imClients * interests * locales * locations *
-- memberships * metadata * miscKeywords * names * nicknames * occupations
-- * organizations * phoneNumbers * photos * relations * sipAddresses *
-- skills * urls * userDefined
ucprPersonFields :: Lens' UpdateContactPhotoRequest (Maybe GFieldMask)
ucprPersonFields
  = lens _ucprPersonFields
      (\ s a -> s{_ucprPersonFields = a})

-- | Required. Raw photo bytes
ucprPhotoBytes :: Lens' UpdateContactPhotoRequest (Maybe ByteString)
ucprPhotoBytes
  = lens _ucprPhotoBytes
      (\ s a -> s{_ucprPhotoBytes = a})
      . mapping _Bytes

instance FromJSON UpdateContactPhotoRequest where
        parseJSON
          = withObject "UpdateContactPhotoRequest"
              (\ o ->
                 UpdateContactPhotoRequest' <$>
                   (o .:? "sources" .!= mempty) <*>
                     (o .:? "personFields")
                     <*> (o .:? "photoBytes"))

instance ToJSON UpdateContactPhotoRequest where
        toJSON UpdateContactPhotoRequest'{..}
          = object
              (catMaybes
                 [("sources" .=) <$> _ucprSources,
                  ("personFields" .=) <$> _ucprPersonFields,
                  ("photoBytes" .=) <$> _ucprPhotoBytes])

-- | A person\'s age range.
--
-- /See:/ 'ageRangeType' smart constructor.
data AgeRangeType =
  AgeRangeType'
    { _artAgeRange :: !(Maybe AgeRangeTypeAgeRange)
    , _artMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AgeRangeType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artAgeRange'
--
-- * 'artMetadata'
ageRangeType
    :: AgeRangeType
ageRangeType = AgeRangeType' {_artAgeRange = Nothing, _artMetadata = Nothing}


-- | The age range.
artAgeRange :: Lens' AgeRangeType (Maybe AgeRangeTypeAgeRange)
artAgeRange
  = lens _artAgeRange (\ s a -> s{_artAgeRange = a})

-- | Metadata about the age range.
artMetadata :: Lens' AgeRangeType (Maybe FieldMetadata)
artMetadata
  = lens _artMetadata (\ s a -> s{_artMetadata = a})

instance FromJSON AgeRangeType where
        parseJSON
          = withObject "AgeRangeType"
              (\ o ->
                 AgeRangeType' <$>
                   (o .:? "ageRange") <*> (o .:? "metadata"))

instance ToJSON AgeRangeType where
        toJSON AgeRangeType'{..}
          = object
              (catMaybes
                 [("ageRange" .=) <$> _artAgeRange,
                  ("metadata" .=) <$> _artMetadata])

-- | A person\'s gender.
--
-- /See:/ 'gender' smart constructor.
data Gender =
  Gender'
    { _gValue :: !(Maybe Text)
    , _gAddressMeAs :: !(Maybe Text)
    , _gMetadata :: !(Maybe FieldMetadata)
    , _gFormattedValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Gender' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gValue'
--
-- * 'gAddressMeAs'
--
-- * 'gMetadata'
--
-- * 'gFormattedValue'
gender
    :: Gender
gender =
  Gender'
    { _gValue = Nothing
    , _gAddressMeAs = Nothing
    , _gMetadata = Nothing
    , _gFormattedValue = Nothing
    }


-- | The gender for the person. The gender can be custom or one of these
-- predefined values: * \`male\` * \`female\` * \`unspecified\`
gValue :: Lens' Gender (Maybe Text)
gValue = lens _gValue (\ s a -> s{_gValue = a})

-- | The type of pronouns that should be used to address the person. The
-- value can be custom or one of these predefined values: * \`male\` *
-- \`female\` * \`other\`
gAddressMeAs :: Lens' Gender (Maybe Text)
gAddressMeAs
  = lens _gAddressMeAs (\ s a -> s{_gAddressMeAs = a})

-- | Metadata about the gender.
gMetadata :: Lens' Gender (Maybe FieldMetadata)
gMetadata
  = lens _gMetadata (\ s a -> s{_gMetadata = a})

-- | Output only. The value of the gender translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
-- Unspecified or custom value are not localized.
gFormattedValue :: Lens' Gender (Maybe Text)
gFormattedValue
  = lens _gFormattedValue
      (\ s a -> s{_gFormattedValue = a})

instance FromJSON Gender where
        parseJSON
          = withObject "Gender"
              (\ o ->
                 Gender' <$>
                   (o .:? "value") <*> (o .:? "addressMeAs") <*>
                     (o .:? "metadata")
                     <*> (o .:? "formattedValue"))

instance ToJSON Gender where
        toJSON Gender'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gValue,
                  ("addressMeAs" .=) <$> _gAddressMeAs,
                  ("metadata" .=) <$> _gMetadata,
                  ("formattedValue" .=) <$> _gFormattedValue])

-- | A person\'s name. If the name is a mononym, the family name is empty.
--
-- /See:/ 'name' smart constructor.
data Name =
  Name'
    { _nGivenName :: !(Maybe Text)
    , _nPhoneticHonorificSuffix :: !(Maybe Text)
    , _nMiddleName :: !(Maybe Text)
    , _nUnstructuredName :: !(Maybe Text)
    , _nPhoneticMiddleName :: !(Maybe Text)
    , _nPhoneticFamilyName :: !(Maybe Text)
    , _nPhoneticHonorificPrefix :: !(Maybe Text)
    , _nHonorificPrefix :: !(Maybe Text)
    , _nFamilyName :: !(Maybe Text)
    , _nMetadata :: !(Maybe FieldMetadata)
    , _nDisplayName :: !(Maybe Text)
    , _nDisplayNameLastFirst :: !(Maybe Text)
    , _nPhoneticGivenName :: !(Maybe Text)
    , _nHonorificSuffix :: !(Maybe Text)
    , _nPhoneticFullName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Name' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nGivenName'
--
-- * 'nPhoneticHonorificSuffix'
--
-- * 'nMiddleName'
--
-- * 'nUnstructuredName'
--
-- * 'nPhoneticMiddleName'
--
-- * 'nPhoneticFamilyName'
--
-- * 'nPhoneticHonorificPrefix'
--
-- * 'nHonorificPrefix'
--
-- * 'nFamilyName'
--
-- * 'nMetadata'
--
-- * 'nDisplayName'
--
-- * 'nDisplayNameLastFirst'
--
-- * 'nPhoneticGivenName'
--
-- * 'nHonorificSuffix'
--
-- * 'nPhoneticFullName'
name
    :: Name
name =
  Name'
    { _nGivenName = Nothing
    , _nPhoneticHonorificSuffix = Nothing
    , _nMiddleName = Nothing
    , _nUnstructuredName = Nothing
    , _nPhoneticMiddleName = Nothing
    , _nPhoneticFamilyName = Nothing
    , _nPhoneticHonorificPrefix = Nothing
    , _nHonorificPrefix = Nothing
    , _nFamilyName = Nothing
    , _nMetadata = Nothing
    , _nDisplayName = Nothing
    , _nDisplayNameLastFirst = Nothing
    , _nPhoneticGivenName = Nothing
    , _nHonorificSuffix = Nothing
    , _nPhoneticFullName = Nothing
    }


-- | The given name.
nGivenName :: Lens' Name (Maybe Text)
nGivenName
  = lens _nGivenName (\ s a -> s{_nGivenName = a})

-- | The honorific suffixes spelled as they sound.
nPhoneticHonorificSuffix :: Lens' Name (Maybe Text)
nPhoneticHonorificSuffix
  = lens _nPhoneticHonorificSuffix
      (\ s a -> s{_nPhoneticHonorificSuffix = a})

-- | The middle name(s).
nMiddleName :: Lens' Name (Maybe Text)
nMiddleName
  = lens _nMiddleName (\ s a -> s{_nMiddleName = a})

-- | The free form name value.
nUnstructuredName :: Lens' Name (Maybe Text)
nUnstructuredName
  = lens _nUnstructuredName
      (\ s a -> s{_nUnstructuredName = a})

-- | The middle name(s) spelled as they sound.
nPhoneticMiddleName :: Lens' Name (Maybe Text)
nPhoneticMiddleName
  = lens _nPhoneticMiddleName
      (\ s a -> s{_nPhoneticMiddleName = a})

-- | The family name spelled as it sounds.
nPhoneticFamilyName :: Lens' Name (Maybe Text)
nPhoneticFamilyName
  = lens _nPhoneticFamilyName
      (\ s a -> s{_nPhoneticFamilyName = a})

-- | The honorific prefixes spelled as they sound.
nPhoneticHonorificPrefix :: Lens' Name (Maybe Text)
nPhoneticHonorificPrefix
  = lens _nPhoneticHonorificPrefix
      (\ s a -> s{_nPhoneticHonorificPrefix = a})

-- | The honorific prefixes, such as \`Mrs.\` or \`Dr.\`
nHonorificPrefix :: Lens' Name (Maybe Text)
nHonorificPrefix
  = lens _nHonorificPrefix
      (\ s a -> s{_nHonorificPrefix = a})

-- | The family name.
nFamilyName :: Lens' Name (Maybe Text)
nFamilyName
  = lens _nFamilyName (\ s a -> s{_nFamilyName = a})

-- | Metadata about the name.
nMetadata :: Lens' Name (Maybe FieldMetadata)
nMetadata
  = lens _nMetadata (\ s a -> s{_nMetadata = a})

-- | Output only. The display name formatted according to the locale
-- specified by the viewer\'s account or the \`Accept-Language\` HTTP
-- header.
nDisplayName :: Lens' Name (Maybe Text)
nDisplayName
  = lens _nDisplayName (\ s a -> s{_nDisplayName = a})

-- | Output only. The display name with the last name first formatted
-- according to the locale specified by the viewer\'s account or the
-- \`Accept-Language\` HTTP header.
nDisplayNameLastFirst :: Lens' Name (Maybe Text)
nDisplayNameLastFirst
  = lens _nDisplayNameLastFirst
      (\ s a -> s{_nDisplayNameLastFirst = a})

-- | The given name spelled as it sounds.
nPhoneticGivenName :: Lens' Name (Maybe Text)
nPhoneticGivenName
  = lens _nPhoneticGivenName
      (\ s a -> s{_nPhoneticGivenName = a})

-- | The honorific suffixes, such as \`Jr.\`
nHonorificSuffix :: Lens' Name (Maybe Text)
nHonorificSuffix
  = lens _nHonorificSuffix
      (\ s a -> s{_nHonorificSuffix = a})

-- | The full name spelled as it sounds.
nPhoneticFullName :: Lens' Name (Maybe Text)
nPhoneticFullName
  = lens _nPhoneticFullName
      (\ s a -> s{_nPhoneticFullName = a})

instance FromJSON Name where
        parseJSON
          = withObject "Name"
              (\ o ->
                 Name' <$>
                   (o .:? "givenName") <*>
                     (o .:? "phoneticHonorificSuffix")
                     <*> (o .:? "middleName")
                     <*> (o .:? "unstructuredName")
                     <*> (o .:? "phoneticMiddleName")
                     <*> (o .:? "phoneticFamilyName")
                     <*> (o .:? "phoneticHonorificPrefix")
                     <*> (o .:? "honorificPrefix")
                     <*> (o .:? "familyName")
                     <*> (o .:? "metadata")
                     <*> (o .:? "displayName")
                     <*> (o .:? "displayNameLastFirst")
                     <*> (o .:? "phoneticGivenName")
                     <*> (o .:? "honorificSuffix")
                     <*> (o .:? "phoneticFullName"))

instance ToJSON Name where
        toJSON Name'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _nGivenName,
                  ("phoneticHonorificSuffix" .=) <$>
                    _nPhoneticHonorificSuffix,
                  ("middleName" .=) <$> _nMiddleName,
                  ("unstructuredName" .=) <$> _nUnstructuredName,
                  ("phoneticMiddleName" .=) <$> _nPhoneticMiddleName,
                  ("phoneticFamilyName" .=) <$> _nPhoneticFamilyName,
                  ("phoneticHonorificPrefix" .=) <$>
                    _nPhoneticHonorificPrefix,
                  ("honorificPrefix" .=) <$> _nHonorificPrefix,
                  ("familyName" .=) <$> _nFamilyName,
                  ("metadata" .=) <$> _nMetadata,
                  ("displayName" .=) <$> _nDisplayName,
                  ("displayNameLastFirst" .=) <$>
                    _nDisplayNameLastFirst,
                  ("phoneticGivenName" .=) <$> _nPhoneticGivenName,
                  ("honorificSuffix" .=) <$> _nHonorificSuffix,
                  ("phoneticFullName" .=) <$> _nPhoneticFullName])

-- | A request to delete a batch of existing contacts.
--
-- /See:/ 'batchDeleteContactsRequest' smart constructor.
newtype BatchDeleteContactsRequest =
  BatchDeleteContactsRequest'
    { _bdcrResourceNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeleteContactsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdcrResourceNames'
batchDeleteContactsRequest
    :: BatchDeleteContactsRequest
batchDeleteContactsRequest =
  BatchDeleteContactsRequest' {_bdcrResourceNames = Nothing}


-- | Required. The resource names of the contact to delete. It\'s repeatable.
-- Allows up to 500 resource names in a single request.
bdcrResourceNames :: Lens' BatchDeleteContactsRequest [Text]
bdcrResourceNames
  = lens _bdcrResourceNames
      (\ s a -> s{_bdcrResourceNames = a})
      . _Default
      . _Coerce

instance FromJSON BatchDeleteContactsRequest where
        parseJSON
          = withObject "BatchDeleteContactsRequest"
              (\ o ->
                 BatchDeleteContactsRequest' <$>
                   (o .:? "resourceNames" .!= mempty))

instance ToJSON BatchDeleteContactsRequest where
        toJSON BatchDeleteContactsRequest'{..}
          = object
              (catMaybes
                 [("resourceNames" .=) <$> _bdcrResourceNames])

-- | Metadata about a field.
--
-- /See:/ 'fieldMetadata' smart constructor.
data FieldMetadata =
  FieldMetadata'
    { _fmVerified :: !(Maybe Bool)
    , _fmPrimary :: !(Maybe Bool)
    , _fmSource :: !(Maybe Source)
    , _fmSourcePrimary :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FieldMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmVerified'
--
-- * 'fmPrimary'
--
-- * 'fmSource'
--
-- * 'fmSourcePrimary'
fieldMetadata
    :: FieldMetadata
fieldMetadata =
  FieldMetadata'
    { _fmVerified = Nothing
    , _fmPrimary = Nothing
    , _fmSource = Nothing
    , _fmSourcePrimary = Nothing
    }


-- | Output only. True if the field is verified; false if the field is
-- unverified. A verified field is typically a name, email address, phone
-- number, or website that has been confirmed to be owned by the person.
fmVerified :: Lens' FieldMetadata (Maybe Bool)
fmVerified
  = lens _fmVerified (\ s a -> s{_fmVerified = a})

-- | True if the field is the primary field for the person.
fmPrimary :: Lens' FieldMetadata (Maybe Bool)
fmPrimary
  = lens _fmPrimary (\ s a -> s{_fmPrimary = a})

-- | The source of the field.
fmSource :: Lens' FieldMetadata (Maybe Source)
fmSource = lens _fmSource (\ s a -> s{_fmSource = a})

-- | True if the field is the primary field for the source.
fmSourcePrimary :: Lens' FieldMetadata (Maybe Bool)
fmSourcePrimary
  = lens _fmSourcePrimary
      (\ s a -> s{_fmSourcePrimary = a})

instance FromJSON FieldMetadata where
        parseJSON
          = withObject "FieldMetadata"
              (\ o ->
                 FieldMetadata' <$>
                   (o .:? "verified") <*> (o .:? "primary") <*>
                     (o .:? "source")
                     <*> (o .:? "sourcePrimary"))

instance ToJSON FieldMetadata where
        toJSON FieldMetadata'{..}
          = object
              (catMaybes
                 [("verified" .=) <$> _fmVerified,
                  ("primary" .=) <$> _fmPrimary,
                  ("source" .=) <$> _fmSource,
                  ("sourcePrimary" .=) <$> _fmSourcePrimary])

-- | A request to update a batch of contacts.
--
-- /See:/ 'batchUpdateContactsRequest' smart constructor.
data BatchUpdateContactsRequest =
  BatchUpdateContactsRequest'
    { _bucrUpdateMask :: !(Maybe GFieldMask)
    , _bucrReadMask :: !(Maybe GFieldMask)
    , _bucrSources :: !(Maybe [BatchUpdateContactsRequestSourcesItem])
    , _bucrContacts :: !(Maybe BatchUpdateContactsRequestContacts)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateContactsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bucrUpdateMask'
--
-- * 'bucrReadMask'
--
-- * 'bucrSources'
--
-- * 'bucrContacts'
batchUpdateContactsRequest
    :: BatchUpdateContactsRequest
batchUpdateContactsRequest =
  BatchUpdateContactsRequest'
    { _bucrUpdateMask = Nothing
    , _bucrReadMask = Nothing
    , _bucrSources = Nothing
    , _bucrContacts = Nothing
    }


-- | Required. A field mask to restrict which fields on the person are
-- updated. Multiple fields can be specified by separating them with
-- commas. All specified fields will be replaced, or cleared if left empty
-- for each person. Valid values are: * addresses * biographies * birthdays
-- * calendarUrls * clientData * emailAddresses * events * externalIds *
-- genders * imClients * interests * locales * locations * memberships *
-- miscKeywords * names * nicknames * occupations * organizations *
-- phoneNumbers * relations * sipAddresses * urls * userDefined
bucrUpdateMask :: Lens' BatchUpdateContactsRequest (Maybe GFieldMask)
bucrUpdateMask
  = lens _bucrUpdateMask
      (\ s a -> s{_bucrUpdateMask = a})

-- | Required. A field mask to restrict which fields on each person are
-- returned. Multiple fields can be specified by separating them with
-- commas. If read mask is left empty, the post-mutate-get is skipped and
-- no data will be returned in the response. Valid values are: * addresses
-- * ageRanges * biographies * birthdays * calendarUrls * clientData *
-- coverPhotos * emailAddresses * events * externalIds * genders *
-- imClients * interests * locales * locations * memberships * metadata *
-- miscKeywords * names * nicknames * occupations * organizations *
-- phoneNumbers * photos * relations * sipAddresses * skills * urls *
-- userDefined
bucrReadMask :: Lens' BatchUpdateContactsRequest (Maybe GFieldMask)
bucrReadMask
  = lens _bucrReadMask (\ s a -> s{_bucrReadMask = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
bucrSources :: Lens' BatchUpdateContactsRequest [BatchUpdateContactsRequestSourcesItem]
bucrSources
  = lens _bucrSources (\ s a -> s{_bucrSources = a}) .
      _Default
      . _Coerce

-- | Required. A map of resource names to the person data to be updated.
-- Allows up to 200 contacts in a single request.
bucrContacts :: Lens' BatchUpdateContactsRequest (Maybe BatchUpdateContactsRequestContacts)
bucrContacts
  = lens _bucrContacts (\ s a -> s{_bucrContacts = a})

instance FromJSON BatchUpdateContactsRequest where
        parseJSON
          = withObject "BatchUpdateContactsRequest"
              (\ o ->
                 BatchUpdateContactsRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "readMask") <*>
                     (o .:? "sources" .!= mempty)
                     <*> (o .:? "contacts"))

instance ToJSON BatchUpdateContactsRequest where
        toJSON BatchUpdateContactsRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _bucrUpdateMask,
                  ("readMask" .=) <$> _bucrReadMask,
                  ("sources" .=) <$> _bucrSources,
                  ("contacts" .=) <$> _bucrContacts])

-- | The response to a request for people in the authenticated user\'s domain
-- directory that match the specified query.
--
-- /See:/ 'searchDirectoryPeopleResponse' smart constructor.
data SearchDirectoryPeopleResponse =
  SearchDirectoryPeopleResponse'
    { _sdprNextPageToken :: !(Maybe Text)
    , _sdprPeople :: !(Maybe [Person])
    , _sdprTotalSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchDirectoryPeopleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdprNextPageToken'
--
-- * 'sdprPeople'
--
-- * 'sdprTotalSize'
searchDirectoryPeopleResponse
    :: SearchDirectoryPeopleResponse
searchDirectoryPeopleResponse =
  SearchDirectoryPeopleResponse'
    { _sdprNextPageToken = Nothing
    , _sdprPeople = Nothing
    , _sdprTotalSize = Nothing
    }


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
sdprNextPageToken :: Lens' SearchDirectoryPeopleResponse (Maybe Text)
sdprNextPageToken
  = lens _sdprNextPageToken
      (\ s a -> s{_sdprNextPageToken = a})

-- | The list of people in the domain directory that match the query.
sdprPeople :: Lens' SearchDirectoryPeopleResponse [Person]
sdprPeople
  = lens _sdprPeople (\ s a -> s{_sdprPeople = a}) .
      _Default
      . _Coerce

-- | The total number of items in the list without pagination.
sdprTotalSize :: Lens' SearchDirectoryPeopleResponse (Maybe Int32)
sdprTotalSize
  = lens _sdprTotalSize
      (\ s a -> s{_sdprTotalSize = a})
      . mapping _Coerce

instance FromJSON SearchDirectoryPeopleResponse where
        parseJSON
          = withObject "SearchDirectoryPeopleResponse"
              (\ o ->
                 SearchDirectoryPeopleResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "people" .!= mempty)
                     <*> (o .:? "totalSize"))

instance ToJSON SearchDirectoryPeopleResponse where
        toJSON SearchDirectoryPeopleResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sdprNextPageToken,
                  ("people" .=) <$> _sdprPeople,
                  ("totalSize" .=) <$> _sdprTotalSize])

-- | A person\'s phone number.
--
-- /See:/ 'phoneNumber' smart constructor.
data PhoneNumber =
  PhoneNumber'
    { _pnCanonicalForm :: !(Maybe Text)
    , _pnValue :: !(Maybe Text)
    , _pnMetadata :: !(Maybe FieldMetadata)
    , _pnType :: !(Maybe Text)
    , _pnFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhoneNumber' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnCanonicalForm'
--
-- * 'pnValue'
--
-- * 'pnMetadata'
--
-- * 'pnType'
--
-- * 'pnFormattedType'
phoneNumber
    :: PhoneNumber
phoneNumber =
  PhoneNumber'
    { _pnCanonicalForm = Nothing
    , _pnValue = Nothing
    , _pnMetadata = Nothing
    , _pnType = Nothing
    , _pnFormattedType = Nothing
    }


-- | Output only. The canonicalized [ITU-T
-- E.164](https:\/\/law.resource.org\/pub\/us\/cfr\/ibr\/004\/itu-t.E.164.1.2008.pdf)
-- form of the phone number.
pnCanonicalForm :: Lens' PhoneNumber (Maybe Text)
pnCanonicalForm
  = lens _pnCanonicalForm
      (\ s a -> s{_pnCanonicalForm = a})

-- | The phone number.
pnValue :: Lens' PhoneNumber (Maybe Text)
pnValue = lens _pnValue (\ s a -> s{_pnValue = a})

-- | Metadata about the phone number.
pnMetadata :: Lens' PhoneNumber (Maybe FieldMetadata)
pnMetadata
  = lens _pnMetadata (\ s a -> s{_pnMetadata = a})

-- | The type of the phone number. The type can be custom or one of these
-- predefined values: * \`home\` * \`work\` * \`mobile\` * \`homeFax\` *
-- \`workFax\` * \`otherFax\` * \`pager\` * \`workMobile\` * \`workPager\`
-- * \`main\` * \`googleVoice\` * \`other\`
pnType :: Lens' PhoneNumber (Maybe Text)
pnType = lens _pnType (\ s a -> s{_pnType = a})

-- | Output only. The type of the phone number translated and formatted in
-- the viewer\'s account locale or the \`Accept-Language\` HTTP header
-- locale.
pnFormattedType :: Lens' PhoneNumber (Maybe Text)
pnFormattedType
  = lens _pnFormattedType
      (\ s a -> s{_pnFormattedType = a})

instance FromJSON PhoneNumber where
        parseJSON
          = withObject "PhoneNumber"
              (\ o ->
                 PhoneNumber' <$>
                   (o .:? "canonicalForm") <*> (o .:? "value") <*>
                     (o .:? "metadata")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON PhoneNumber where
        toJSON PhoneNumber'{..}
          = object
              (catMaybes
                 [("canonicalForm" .=) <$> _pnCanonicalForm,
                  ("value" .=) <$> _pnValue,
                  ("metadata" .=) <$> _pnMetadata,
                  ("type" .=) <$> _pnType,
                  ("formattedType" .=) <$> _pnFormattedType])

-- | A wrapper that contains the person data to populate a newly created
-- source.
--
-- /See:/ 'contactToCreate' smart constructor.
newtype ContactToCreate =
  ContactToCreate'
    { _ctcContactPerson :: Maybe Person
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactToCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctcContactPerson'
contactToCreate
    :: ContactToCreate
contactToCreate = ContactToCreate' {_ctcContactPerson = Nothing}


-- | Required. The person data to populate a newly created source.
ctcContactPerson :: Lens' ContactToCreate (Maybe Person)
ctcContactPerson
  = lens _ctcContactPerson
      (\ s a -> s{_ctcContactPerson = a})

instance FromJSON ContactToCreate where
        parseJSON
          = withObject "ContactToCreate"
              (\ o -> ContactToCreate' <$> (o .:? "contactPerson"))

instance ToJSON ContactToCreate where
        toJSON ContactToCreate'{..}
          = object
              (catMaybes
                 [("contactPerson" .=) <$> _ctcContactPerson])

-- | A person\'s occupation.
--
-- /See:/ 'occupation' smart constructor.
data Occupation =
  Occupation'
    { _oValue :: !(Maybe Text)
    , _oMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Occupation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oValue'
--
-- * 'oMetadata'
occupation
    :: Occupation
occupation = Occupation' {_oValue = Nothing, _oMetadata = Nothing}


-- | The occupation; for example, \`carpenter\`.
oValue :: Lens' Occupation (Maybe Text)
oValue = lens _oValue (\ s a -> s{_oValue = a})

-- | Metadata about the occupation.
oMetadata :: Lens' Occupation (Maybe FieldMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Occupation where
        parseJSON
          = withObject "Occupation"
              (\ o ->
                 Occupation' <$>
                   (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Occupation where
        toJSON Occupation'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _oValue,
                  ("metadata" .=) <$> _oMetadata])

-- | A person\'s email address.
--
-- /See:/ 'emailAddress' smart constructor.
data EmailAddress =
  EmailAddress'
    { _eaValue :: !(Maybe Text)
    , _eaMetadata :: !(Maybe FieldMetadata)
    , _eaDisplayName :: !(Maybe Text)
    , _eaType :: !(Maybe Text)
    , _eaFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmailAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaValue'
--
-- * 'eaMetadata'
--
-- * 'eaDisplayName'
--
-- * 'eaType'
--
-- * 'eaFormattedType'
emailAddress
    :: EmailAddress
emailAddress =
  EmailAddress'
    { _eaValue = Nothing
    , _eaMetadata = Nothing
    , _eaDisplayName = Nothing
    , _eaType = Nothing
    , _eaFormattedType = Nothing
    }


-- | The email address.
eaValue :: Lens' EmailAddress (Maybe Text)
eaValue = lens _eaValue (\ s a -> s{_eaValue = a})

-- | Metadata about the email address.
eaMetadata :: Lens' EmailAddress (Maybe FieldMetadata)
eaMetadata
  = lens _eaMetadata (\ s a -> s{_eaMetadata = a})

-- | The display name of the email.
eaDisplayName :: Lens' EmailAddress (Maybe Text)
eaDisplayName
  = lens _eaDisplayName
      (\ s a -> s{_eaDisplayName = a})

-- | The type of the email address. The type can be custom or one of these
-- predefined values: * \`home\` * \`work\` * \`other\`
eaType :: Lens' EmailAddress (Maybe Text)
eaType = lens _eaType (\ s a -> s{_eaType = a})

-- | Output only. The type of the email address translated and formatted in
-- the viewer\'s account locale or the \`Accept-Language\` HTTP header
-- locale.
eaFormattedType :: Lens' EmailAddress (Maybe Text)
eaFormattedType
  = lens _eaFormattedType
      (\ s a -> s{_eaFormattedType = a})

instance FromJSON EmailAddress where
        parseJSON
          = withObject "EmailAddress"
              (\ o ->
                 EmailAddress' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON EmailAddress where
        toJSON EmailAddress'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _eaValue,
                  ("metadata" .=) <$> _eaMetadata,
                  ("displayName" .=) <$> _eaDisplayName,
                  ("type" .=) <$> _eaType,
                  ("formattedType" .=) <$> _eaFormattedType])

-- | A request to create a new contact group.
--
-- /See:/ 'createContactGroupRequest' smart constructor.
data CreateContactGroupRequest =
  CreateContactGroupRequest'
    { _ccgrContactGroup :: !(Maybe ContactGroup)
    , _ccgrReadGroupFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateContactGroupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgrContactGroup'
--
-- * 'ccgrReadGroupFields'
createContactGroupRequest
    :: CreateContactGroupRequest
createContactGroupRequest =
  CreateContactGroupRequest'
    {_ccgrContactGroup = Nothing, _ccgrReadGroupFields = Nothing}


-- | Required. The contact group to create.
ccgrContactGroup :: Lens' CreateContactGroupRequest (Maybe ContactGroup)
ccgrContactGroup
  = lens _ccgrContactGroup
      (\ s a -> s{_ccgrContactGroup = a})

-- | Optional. A field mask to restrict which fields on the group are
-- returned. Defaults to \`metadata\`, \`groupType\`, and \`name\` if not
-- set or set to empty. Valid fields are: * clientData * groupType *
-- metadata * name
ccgrReadGroupFields :: Lens' CreateContactGroupRequest (Maybe GFieldMask)
ccgrReadGroupFields
  = lens _ccgrReadGroupFields
      (\ s a -> s{_ccgrReadGroupFields = a})

instance FromJSON CreateContactGroupRequest where
        parseJSON
          = withObject "CreateContactGroupRequest"
              (\ o ->
                 CreateContactGroupRequest' <$>
                   (o .:? "contactGroup") <*> (o .:? "readGroupFields"))

instance ToJSON CreateContactGroupRequest where
        toJSON CreateContactGroupRequest'{..}
          = object
              (catMaybes
                 [("contactGroup" .=) <$> _ccgrContactGroup,
                  ("readGroupFields" .=) <$> _ccgrReadGroupFields])

-- | The metadata about a contact group.
--
-- /See:/ 'contactGroupMetadata' smart constructor.
data ContactGroupMetadata =
  ContactGroupMetadata'
    { _cgmUpdateTime :: !(Maybe DateTime')
    , _cgmDeleted :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactGroupMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgmUpdateTime'
--
-- * 'cgmDeleted'
contactGroupMetadata
    :: ContactGroupMetadata
contactGroupMetadata =
  ContactGroupMetadata' {_cgmUpdateTime = Nothing, _cgmDeleted = Nothing}


-- | Output only. The time the group was last updated.
cgmUpdateTime :: Lens' ContactGroupMetadata (Maybe UTCTime)
cgmUpdateTime
  = lens _cgmUpdateTime
      (\ s a -> s{_cgmUpdateTime = a})
      . mapping _DateTime

-- | Output only. True if the contact group resource has been deleted.
-- Populated only for
-- [\`ListContactGroups\`](\/people\/api\/rest\/v1\/contactgroups\/list)
-- requests that include a sync token.
cgmDeleted :: Lens' ContactGroupMetadata (Maybe Bool)
cgmDeleted
  = lens _cgmDeleted (\ s a -> s{_cgmDeleted = a})

instance FromJSON ContactGroupMetadata where
        parseJSON
          = withObject "ContactGroupMetadata"
              (\ o ->
                 ContactGroupMetadata' <$>
                   (o .:? "updateTime") <*> (o .:? "deleted"))

instance ToJSON ContactGroupMetadata where
        toJSON ContactGroupMetadata'{..}
          = object
              (catMaybes
                 [("updateTime" .=) <$> _cgmUpdateTime,
                  ("deleted" .=) <$> _cgmDeleted])

-- | A request to modify an existing contact group\'s members. Contacts can
-- be removed from any group but they can only be added to a user group or
-- \"myContacts\" or \"starred\" system groups.
--
-- /See:/ 'modifyContactGroupMembersRequest' smart constructor.
data ModifyContactGroupMembersRequest =
  ModifyContactGroupMembersRequest'
    { _mcgmrResourceNamesToAdd :: !(Maybe [Text])
    , _mcgmrResourceNamesToRemove :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyContactGroupMembersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcgmrResourceNamesToAdd'
--
-- * 'mcgmrResourceNamesToRemove'
modifyContactGroupMembersRequest
    :: ModifyContactGroupMembersRequest
modifyContactGroupMembersRequest =
  ModifyContactGroupMembersRequest'
    {_mcgmrResourceNamesToAdd = Nothing, _mcgmrResourceNamesToRemove = Nothing}


-- | Optional. The resource names of the contact people to add in the form of
-- \`people\/{person_id}\`. The total number of resource names in
-- \`resource_names_to_add\` and \`resource_names_to_remove\` must be less
-- than or equal to 1000.
mcgmrResourceNamesToAdd :: Lens' ModifyContactGroupMembersRequest [Text]
mcgmrResourceNamesToAdd
  = lens _mcgmrResourceNamesToAdd
      (\ s a -> s{_mcgmrResourceNamesToAdd = a})
      . _Default
      . _Coerce

-- | Optional. The resource names of the contact people to remove in the form
-- of \`people\/{person_id}\`. The total number of resource names in
-- \`resource_names_to_add\` and \`resource_names_to_remove\` must be less
-- than or equal to 1000.
mcgmrResourceNamesToRemove :: Lens' ModifyContactGroupMembersRequest [Text]
mcgmrResourceNamesToRemove
  = lens _mcgmrResourceNamesToRemove
      (\ s a -> s{_mcgmrResourceNamesToRemove = a})
      . _Default
      . _Coerce

instance FromJSON ModifyContactGroupMembersRequest
         where
        parseJSON
          = withObject "ModifyContactGroupMembersRequest"
              (\ o ->
                 ModifyContactGroupMembersRequest' <$>
                   (o .:? "resourceNamesToAdd" .!= mempty) <*>
                     (o .:? "resourceNamesToRemove" .!= mempty))

instance ToJSON ModifyContactGroupMembersRequest
         where
        toJSON ModifyContactGroupMembersRequest'{..}
          = object
              (catMaybes
                 [("resourceNamesToAdd" .=) <$>
                    _mcgmrResourceNamesToAdd,
                  ("resourceNamesToRemove" .=) <$>
                    _mcgmrResourceNamesToRemove])

-- | A map of resource names to the contacts that were updated, unless the
-- request \`read_mask\` is empty.
--
-- /See:/ 'batchUpdateContactsResponseUpdateResult' smart constructor.
newtype BatchUpdateContactsResponseUpdateResult =
  BatchUpdateContactsResponseUpdateResult'
    { _bucrurAddtional :: HashMap Text PersonResponse
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateContactsResponseUpdateResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bucrurAddtional'
batchUpdateContactsResponseUpdateResult
    :: HashMap Text PersonResponse -- ^ 'bucrurAddtional'
    -> BatchUpdateContactsResponseUpdateResult
batchUpdateContactsResponseUpdateResult pBucrurAddtional_ =
  BatchUpdateContactsResponseUpdateResult'
    {_bucrurAddtional = _Coerce # pBucrurAddtional_}


bucrurAddtional :: Lens' BatchUpdateContactsResponseUpdateResult (HashMap Text PersonResponse)
bucrurAddtional
  = lens _bucrurAddtional
      (\ s a -> s{_bucrurAddtional = a})
      . _Coerce

instance FromJSON
           BatchUpdateContactsResponseUpdateResult
         where
        parseJSON
          = withObject
              "BatchUpdateContactsResponseUpdateResult"
              (\ o ->
                 BatchUpdateContactsResponseUpdateResult' <$>
                   (parseJSONObject o))

instance ToJSON
           BatchUpdateContactsResponseUpdateResult
         where
        toJSON = toJSON . _bucrurAddtional

-- | The source of a field.
--
-- /See:/ 'source' smart constructor.
data Source =
  Source'
    { _sEtag :: !(Maybe Text)
    , _sProFileMetadata :: !(Maybe ProFileMetadata)
    , _sUpdateTime :: !(Maybe DateTime')
    , _sId :: !(Maybe Text)
    , _sType :: !(Maybe SourceType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEtag'
--
-- * 'sProFileMetadata'
--
-- * 'sUpdateTime'
--
-- * 'sId'
--
-- * 'sType'
source
    :: Source
source =
  Source'
    { _sEtag = Nothing
    , _sProFileMetadata = Nothing
    , _sUpdateTime = Nothing
    , _sId = Nothing
    , _sType = Nothing
    }


-- | **Only populated in \`person.metadata.sources\`.** The [HTTP entity
-- tag](https:\/\/en.wikipedia.org\/wiki\/HTTP_ETag) of the source. Used
-- for web cache validation.
sEtag :: Lens' Source (Maybe Text)
sEtag = lens _sEtag (\ s a -> s{_sEtag = a})

-- | Output only. **Only populated in \`person.metadata.sources\`.** Metadata
-- about a source of type PROFILE.
sProFileMetadata :: Lens' Source (Maybe ProFileMetadata)
sProFileMetadata
  = lens _sProFileMetadata
      (\ s a -> s{_sProFileMetadata = a})

-- | Output only. **Only populated in \`person.metadata.sources\`.** Last
-- update timestamp of this source.
sUpdateTime :: Lens' Source (Maybe UTCTime)
sUpdateTime
  = lens _sUpdateTime (\ s a -> s{_sUpdateTime = a}) .
      mapping _DateTime

-- | The unique identifier within the source type generated by the server.
sId :: Lens' Source (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | The source type.
sType :: Lens' Source (Maybe SourceType)
sType = lens _sType (\ s a -> s{_sType = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o ->
                 Source' <$>
                   (o .:? "etag") <*> (o .:? "profileMetadata") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _sEtag,
                  ("profileMetadata" .=) <$> _sProFileMetadata,
                  ("updateTime" .=) <$> _sUpdateTime,
                  ("id" .=) <$> _sId, ("type" .=) <$> _sType])

-- | A person\'s instant messaging client.
--
-- /See:/ 'imClient' smart constructor.
data ImClient =
  ImClient'
    { _icFormattedProtocol :: !(Maybe Text)
    , _icUsername :: !(Maybe Text)
    , _icProtocol :: !(Maybe Text)
    , _icMetadata :: !(Maybe FieldMetadata)
    , _icType :: !(Maybe Text)
    , _icFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icFormattedProtocol'
--
-- * 'icUsername'
--
-- * 'icProtocol'
--
-- * 'icMetadata'
--
-- * 'icType'
--
-- * 'icFormattedType'
imClient
    :: ImClient
imClient =
  ImClient'
    { _icFormattedProtocol = Nothing
    , _icUsername = Nothing
    , _icProtocol = Nothing
    , _icMetadata = Nothing
    , _icType = Nothing
    , _icFormattedType = Nothing
    }


-- | Output only. The protocol of the IM client formatted in the viewer\'s
-- account locale or the \`Accept-Language\` HTTP header locale.
icFormattedProtocol :: Lens' ImClient (Maybe Text)
icFormattedProtocol
  = lens _icFormattedProtocol
      (\ s a -> s{_icFormattedProtocol = a})

-- | The user name used in the IM client.
icUsername :: Lens' ImClient (Maybe Text)
icUsername
  = lens _icUsername (\ s a -> s{_icUsername = a})

-- | The protocol of the IM client. The protocol can be custom or one of
-- these predefined values: * \`aim\` * \`msn\` * \`yahoo\` * \`skype\` *
-- \`qq\` * \`googleTalk\` * \`icq\` * \`jabber\` * \`netMeeting\`
icProtocol :: Lens' ImClient (Maybe Text)
icProtocol
  = lens _icProtocol (\ s a -> s{_icProtocol = a})

-- | Metadata about the IM client.
icMetadata :: Lens' ImClient (Maybe FieldMetadata)
icMetadata
  = lens _icMetadata (\ s a -> s{_icMetadata = a})

-- | The type of the IM client. The type can be custom or one of these
-- predefined values: * \`home\` * \`work\` * \`other\`
icType :: Lens' ImClient (Maybe Text)
icType = lens _icType (\ s a -> s{_icType = a})

-- | Output only. The type of the IM client translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
icFormattedType :: Lens' ImClient (Maybe Text)
icFormattedType
  = lens _icFormattedType
      (\ s a -> s{_icFormattedType = a})

instance FromJSON ImClient where
        parseJSON
          = withObject "ImClient"
              (\ o ->
                 ImClient' <$>
                   (o .:? "formattedProtocol") <*> (o .:? "username")
                     <*> (o .:? "protocol")
                     <*> (o .:? "metadata")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON ImClient where
        toJSON ImClient'{..}
          = object
              (catMaybes
                 [("formattedProtocol" .=) <$> _icFormattedProtocol,
                  ("username" .=) <$> _icUsername,
                  ("protocol" .=) <$> _icProtocol,
                  ("metadata" .=) <$> _icMetadata,
                  ("type" .=) <$> _icType,
                  ("formattedType" .=) <$> _icFormattedType])

-- | The response to a batch get contact groups request.
--
-- /See:/ 'batchGetContactGroupsResponse' smart constructor.
newtype BatchGetContactGroupsResponse =
  BatchGetContactGroupsResponse'
    { _bgcgrResponses :: Maybe [ContactGroupResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchGetContactGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgcgrResponses'
batchGetContactGroupsResponse
    :: BatchGetContactGroupsResponse
batchGetContactGroupsResponse =
  BatchGetContactGroupsResponse' {_bgcgrResponses = Nothing}


-- | The list of responses for each requested contact group resource.
bgcgrResponses :: Lens' BatchGetContactGroupsResponse [ContactGroupResponse]
bgcgrResponses
  = lens _bgcgrResponses
      (\ s a -> s{_bgcgrResponses = a})
      . _Default
      . _Coerce

instance FromJSON BatchGetContactGroupsResponse where
        parseJSON
          = withObject "BatchGetContactGroupsResponse"
              (\ o ->
                 BatchGetContactGroupsResponse' <$>
                   (o .:? "responses" .!= mempty))

instance ToJSON BatchGetContactGroupsResponse where
        toJSON BatchGetContactGroupsResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _bgcgrResponses])

-- | The metadata about a person.
--
-- /See:/ 'personMetadata' smart constructor.
data PersonMetadata =
  PersonMetadata'
    { _pmPreviousResourceNames :: !(Maybe [Text])
    , _pmObjectType :: !(Maybe PersonMetadataObjectType)
    , _pmSources :: !(Maybe [Source])
    , _pmLinkedPeopleResourceNames :: !(Maybe [Text])
    , _pmDeleted :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmPreviousResourceNames'
--
-- * 'pmObjectType'
--
-- * 'pmSources'
--
-- * 'pmLinkedPeopleResourceNames'
--
-- * 'pmDeleted'
personMetadata
    :: PersonMetadata
personMetadata =
  PersonMetadata'
    { _pmPreviousResourceNames = Nothing
    , _pmObjectType = Nothing
    , _pmSources = Nothing
    , _pmLinkedPeopleResourceNames = Nothing
    , _pmDeleted = Nothing
    }


-- | Output only. Any former resource names this person has had. Populated
-- only for \`people.connections.list\` requests that include a sync token.
-- The resource name may change when adding or removing fields that link a
-- contact and profile such as a verified email, verified phone number, or
-- profile URL.
pmPreviousResourceNames :: Lens' PersonMetadata [Text]
pmPreviousResourceNames
  = lens _pmPreviousResourceNames
      (\ s a -> s{_pmPreviousResourceNames = a})
      . _Default
      . _Coerce

-- | Output only. **DEPRECATED** (Please use
-- \`person.metadata.sources.profileMetadata.objectType\` instead) The type
-- of the person object.
pmObjectType :: Lens' PersonMetadata (Maybe PersonMetadataObjectType)
pmObjectType
  = lens _pmObjectType (\ s a -> s{_pmObjectType = a})

-- | The sources of data for the person.
pmSources :: Lens' PersonMetadata [Source]
pmSources
  = lens _pmSources (\ s a -> s{_pmSources = a}) .
      _Default
      . _Coerce

-- | Output only. Resource names of people linked to this resource.
pmLinkedPeopleResourceNames :: Lens' PersonMetadata [Text]
pmLinkedPeopleResourceNames
  = lens _pmLinkedPeopleResourceNames
      (\ s a -> s{_pmLinkedPeopleResourceNames = a})
      . _Default
      . _Coerce

-- | Output only. True if the person resource has been deleted. Populated
-- only for \`people.connections.list\` and \`otherContacts.list\` sync
-- requests.
pmDeleted :: Lens' PersonMetadata (Maybe Bool)
pmDeleted
  = lens _pmDeleted (\ s a -> s{_pmDeleted = a})

instance FromJSON PersonMetadata where
        parseJSON
          = withObject "PersonMetadata"
              (\ o ->
                 PersonMetadata' <$>
                   (o .:? "previousResourceNames" .!= mempty) <*>
                     (o .:? "objectType")
                     <*> (o .:? "sources" .!= mempty)
                     <*> (o .:? "linkedPeopleResourceNames" .!= mempty)
                     <*> (o .:? "deleted"))

instance ToJSON PersonMetadata where
        toJSON PersonMetadata'{..}
          = object
              (catMaybes
                 [("previousResourceNames" .=) <$>
                    _pmPreviousResourceNames,
                  ("objectType" .=) <$> _pmObjectType,
                  ("sources" .=) <$> _pmSources,
                  ("linkedPeopleResourceNames" .=) <$>
                    _pmLinkedPeopleResourceNames,
                  ("deleted" .=) <$> _pmDeleted])

-- | A person\'s nickname.
--
-- /See:/ 'nickname' smart constructor.
data Nickname =
  Nickname'
    { _nicValue :: !(Maybe Text)
    , _nicMetadata :: !(Maybe FieldMetadata)
    , _nicType :: !(Maybe NicknameType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Nickname' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nicValue'
--
-- * 'nicMetadata'
--
-- * 'nicType'
nickname
    :: Nickname
nickname =
  Nickname' {_nicValue = Nothing, _nicMetadata = Nothing, _nicType = Nothing}


-- | The nickname.
nicValue :: Lens' Nickname (Maybe Text)
nicValue = lens _nicValue (\ s a -> s{_nicValue = a})

-- | Metadata about the nickname.
nicMetadata :: Lens' Nickname (Maybe FieldMetadata)
nicMetadata
  = lens _nicMetadata (\ s a -> s{_nicMetadata = a})

-- | The type of the nickname.
nicType :: Lens' Nickname (Maybe NicknameType)
nicType = lens _nicType (\ s a -> s{_nicType = a})

instance FromJSON Nickname where
        parseJSON
          = withObject "Nickname"
              (\ o ->
                 Nickname' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "type"))

instance ToJSON Nickname where
        toJSON Nickname'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _nicValue,
                  ("metadata" .=) <$> _nicMetadata,
                  ("type" .=) <$> _nicType])

-- | An identifier from an external entity related to the person.
--
-- /See:/ 'externalId' smart constructor.
data ExternalId =
  ExternalId'
    { _eiValue :: !(Maybe Text)
    , _eiMetadata :: !(Maybe FieldMetadata)
    , _eiType :: !(Maybe Text)
    , _eiFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiValue'
--
-- * 'eiMetadata'
--
-- * 'eiType'
--
-- * 'eiFormattedType'
externalId
    :: ExternalId
externalId =
  ExternalId'
    { _eiValue = Nothing
    , _eiMetadata = Nothing
    , _eiType = Nothing
    , _eiFormattedType = Nothing
    }


-- | The value of the external ID.
eiValue :: Lens' ExternalId (Maybe Text)
eiValue = lens _eiValue (\ s a -> s{_eiValue = a})

-- | Metadata about the external ID.
eiMetadata :: Lens' ExternalId (Maybe FieldMetadata)
eiMetadata
  = lens _eiMetadata (\ s a -> s{_eiMetadata = a})

-- | The type of the external ID. The type can be custom or one of these
-- predefined values: * \`account\` * \`customer\` * \`loginId\` *
-- \`network\` * \`organization\`
eiType :: Lens' ExternalId (Maybe Text)
eiType = lens _eiType (\ s a -> s{_eiType = a})

-- | Output only. The type of the event translated and formatted in the
-- viewer\'s account locale or the \`Accept-Language\` HTTP header locale.
eiFormattedType :: Lens' ExternalId (Maybe Text)
eiFormattedType
  = lens _eiFormattedType
      (\ s a -> s{_eiFormattedType = a})

instance FromJSON ExternalId where
        parseJSON
          = withObject "ExternalId"
              (\ o ->
                 ExternalId' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON ExternalId where
        toJSON ExternalId'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _eiValue,
                  ("metadata" .=) <$> _eiMetadata,
                  ("type" .=) <$> _eiType,
                  ("formattedType" .=) <$> _eiFormattedType])

-- | The response to a request for the authenticated user\'s domain
-- directory.
--
-- /See:/ 'listDirectoryPeopleResponse' smart constructor.
data ListDirectoryPeopleResponse =
  ListDirectoryPeopleResponse'
    { _ldprNextPageToken :: !(Maybe Text)
    , _ldprPeople :: !(Maybe [Person])
    , _ldprNextSyncToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDirectoryPeopleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldprNextPageToken'
--
-- * 'ldprPeople'
--
-- * 'ldprNextSyncToken'
listDirectoryPeopleResponse
    :: ListDirectoryPeopleResponse
listDirectoryPeopleResponse =
  ListDirectoryPeopleResponse'
    { _ldprNextPageToken = Nothing
    , _ldprPeople = Nothing
    , _ldprNextSyncToken = Nothing
    }


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
ldprNextPageToken :: Lens' ListDirectoryPeopleResponse (Maybe Text)
ldprNextPageToken
  = lens _ldprNextPageToken
      (\ s a -> s{_ldprNextPageToken = a})

-- | The list of people in the domain directory.
ldprPeople :: Lens' ListDirectoryPeopleResponse [Person]
ldprPeople
  = lens _ldprPeople (\ s a -> s{_ldprPeople = a}) .
      _Default
      . _Coerce

-- | A token, which can be sent as \`sync_token\` to retrieve changes since
-- the last request. Request must set \`request_sync_token\` to return the
-- sync token.
ldprNextSyncToken :: Lens' ListDirectoryPeopleResponse (Maybe Text)
ldprNextSyncToken
  = lens _ldprNextSyncToken
      (\ s a -> s{_ldprNextSyncToken = a})

instance FromJSON ListDirectoryPeopleResponse where
        parseJSON
          = withObject "ListDirectoryPeopleResponse"
              (\ o ->
                 ListDirectoryPeopleResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "people" .!= mempty)
                     <*> (o .:? "nextSyncToken"))

instance ToJSON ListDirectoryPeopleResponse where
        toJSON ListDirectoryPeopleResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldprNextPageToken,
                  ("people" .=) <$> _ldprPeople,
                  ("nextSyncToken" .=) <$> _ldprNextSyncToken])

-- | A request to copy an \"Other contact\" to my contacts group.
--
-- /See:/ 'copyOtherContactToMyContactsGroupRequest' smart constructor.
data CopyOtherContactToMyContactsGroupRequest =
  CopyOtherContactToMyContactsGroupRequest'
    { _coctmcgrReadMask :: !(Maybe GFieldMask)
    , _coctmcgrSources :: !(Maybe [CopyOtherContactToMyContactsGroupRequestSourcesItem])
    , _coctmcgrCopyMask :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CopyOtherContactToMyContactsGroupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coctmcgrReadMask'
--
-- * 'coctmcgrSources'
--
-- * 'coctmcgrCopyMask'
copyOtherContactToMyContactsGroupRequest
    :: CopyOtherContactToMyContactsGroupRequest
copyOtherContactToMyContactsGroupRequest =
  CopyOtherContactToMyContactsGroupRequest'
    { _coctmcgrReadMask = Nothing
    , _coctmcgrSources = Nothing
    , _coctmcgrCopyMask = Nothing
    }


-- | Optional. A field mask to restrict which fields on the person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Defaults to the copy mask with metadata and membership fields if
-- not set. Valid values are: * addresses * ageRanges * biographies *
-- birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
-- events * externalIds * genders * imClients * interests * locales *
-- locations * memberships * metadata * miscKeywords * names * nicknames *
-- occupations * organizations * phoneNumbers * photos * relations *
-- sipAddresses * skills * urls * userDefined
coctmcgrReadMask :: Lens' CopyOtherContactToMyContactsGroupRequest (Maybe GFieldMask)
coctmcgrReadMask
  = lens _coctmcgrReadMask
      (\ s a -> s{_coctmcgrReadMask = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
coctmcgrSources :: Lens' CopyOtherContactToMyContactsGroupRequest [CopyOtherContactToMyContactsGroupRequestSourcesItem]
coctmcgrSources
  = lens _coctmcgrSources
      (\ s a -> s{_coctmcgrSources = a})
      . _Default
      . _Coerce

-- | Required. A field mask to restrict which fields are copied into the new
-- contact. Valid values are: * emailAddresses * names * phoneNumbers
coctmcgrCopyMask :: Lens' CopyOtherContactToMyContactsGroupRequest (Maybe GFieldMask)
coctmcgrCopyMask
  = lens _coctmcgrCopyMask
      (\ s a -> s{_coctmcgrCopyMask = a})

instance FromJSON
           CopyOtherContactToMyContactsGroupRequest
         where
        parseJSON
          = withObject
              "CopyOtherContactToMyContactsGroupRequest"
              (\ o ->
                 CopyOtherContactToMyContactsGroupRequest' <$>
                   (o .:? "readMask") <*> (o .:? "sources" .!= mempty)
                     <*> (o .:? "copyMask"))

instance ToJSON
           CopyOtherContactToMyContactsGroupRequest
         where
        toJSON CopyOtherContactToMyContactsGroupRequest'{..}
          = object
              (catMaybes
                 [("readMask" .=) <$> _coctmcgrReadMask,
                  ("sources" .=) <$> _coctmcgrSources,
                  ("copyMask" .=) <$> _coctmcgrCopyMask])

-- | A person\'s past or current organization. Overlapping date ranges are
-- permitted.
--
-- /See:/ 'organization' smart constructor.
data Organization =
  Organization'
    { _orgDePartment :: !(Maybe Text)
    , _orgLocation :: !(Maybe Text)
    , _orgDomain :: !(Maybe Text)
    , _orgEndDate :: !(Maybe Date)
    , _orgSymbol :: !(Maybe Text)
    , _orgJobDescription :: !(Maybe Text)
    , _orgCurrent :: !(Maybe Bool)
    , _orgStartDate :: !(Maybe Date)
    , _orgName :: !(Maybe Text)
    , _orgMetadata :: !(Maybe FieldMetadata)
    , _orgPhoneticName :: !(Maybe Text)
    , _orgTitle :: !(Maybe Text)
    , _orgType :: !(Maybe Text)
    , _orgFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Organization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orgDePartment'
--
-- * 'orgLocation'
--
-- * 'orgDomain'
--
-- * 'orgEndDate'
--
-- * 'orgSymbol'
--
-- * 'orgJobDescription'
--
-- * 'orgCurrent'
--
-- * 'orgStartDate'
--
-- * 'orgName'
--
-- * 'orgMetadata'
--
-- * 'orgPhoneticName'
--
-- * 'orgTitle'
--
-- * 'orgType'
--
-- * 'orgFormattedType'
organization
    :: Organization
organization =
  Organization'
    { _orgDePartment = Nothing
    , _orgLocation = Nothing
    , _orgDomain = Nothing
    , _orgEndDate = Nothing
    , _orgSymbol = Nothing
    , _orgJobDescription = Nothing
    , _orgCurrent = Nothing
    , _orgStartDate = Nothing
    , _orgName = Nothing
    , _orgMetadata = Nothing
    , _orgPhoneticName = Nothing
    , _orgTitle = Nothing
    , _orgType = Nothing
    , _orgFormattedType = Nothing
    }


-- | The person\'s department at the organization.
orgDePartment :: Lens' Organization (Maybe Text)
orgDePartment
  = lens _orgDePartment
      (\ s a -> s{_orgDePartment = a})

-- | The location of the organization office the person works at.
orgLocation :: Lens' Organization (Maybe Text)
orgLocation
  = lens _orgLocation (\ s a -> s{_orgLocation = a})

-- | The domain name associated with the organization; for example,
-- \`google.com\`.
orgDomain :: Lens' Organization (Maybe Text)
orgDomain
  = lens _orgDomain (\ s a -> s{_orgDomain = a})

-- | The end date when the person left the organization.
orgEndDate :: Lens' Organization (Maybe Date)
orgEndDate
  = lens _orgEndDate (\ s a -> s{_orgEndDate = a})

-- | The symbol associated with the organization; for example, a stock ticker
-- symbol, abbreviation, or acronym.
orgSymbol :: Lens' Organization (Maybe Text)
orgSymbol
  = lens _orgSymbol (\ s a -> s{_orgSymbol = a})

-- | The person\'s job description at the organization.
orgJobDescription :: Lens' Organization (Maybe Text)
orgJobDescription
  = lens _orgJobDescription
      (\ s a -> s{_orgJobDescription = a})

-- | True if the organization is the person\'s current organization; false if
-- the organization is a past organization.
orgCurrent :: Lens' Organization (Maybe Bool)
orgCurrent
  = lens _orgCurrent (\ s a -> s{_orgCurrent = a})

-- | The start date when the person joined the organization.
orgStartDate :: Lens' Organization (Maybe Date)
orgStartDate
  = lens _orgStartDate (\ s a -> s{_orgStartDate = a})

-- | The name of the organization.
orgName :: Lens' Organization (Maybe Text)
orgName = lens _orgName (\ s a -> s{_orgName = a})

-- | Metadata about the organization.
orgMetadata :: Lens' Organization (Maybe FieldMetadata)
orgMetadata
  = lens _orgMetadata (\ s a -> s{_orgMetadata = a})

-- | The phonetic name of the organization.
orgPhoneticName :: Lens' Organization (Maybe Text)
orgPhoneticName
  = lens _orgPhoneticName
      (\ s a -> s{_orgPhoneticName = a})

-- | The person\'s job title at the organization.
orgTitle :: Lens' Organization (Maybe Text)
orgTitle = lens _orgTitle (\ s a -> s{_orgTitle = a})

-- | The type of the organization. The type can be custom or one of these
-- predefined values: * \`work\` * \`school\`
orgType :: Lens' Organization (Maybe Text)
orgType = lens _orgType (\ s a -> s{_orgType = a})

-- | Output only. The type of the organization translated and formatted in
-- the viewer\'s account locale or the \`Accept-Language\` HTTP header
-- locale.
orgFormattedType :: Lens' Organization (Maybe Text)
orgFormattedType
  = lens _orgFormattedType
      (\ s a -> s{_orgFormattedType = a})

instance FromJSON Organization where
        parseJSON
          = withObject "Organization"
              (\ o ->
                 Organization' <$>
                   (o .:? "department") <*> (o .:? "location") <*>
                     (o .:? "domain")
                     <*> (o .:? "endDate")
                     <*> (o .:? "symbol")
                     <*> (o .:? "jobDescription")
                     <*> (o .:? "current")
                     <*> (o .:? "startDate")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata")
                     <*> (o .:? "phoneticName")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON Organization where
        toJSON Organization'{..}
          = object
              (catMaybes
                 [("department" .=) <$> _orgDePartment,
                  ("location" .=) <$> _orgLocation,
                  ("domain" .=) <$> _orgDomain,
                  ("endDate" .=) <$> _orgEndDate,
                  ("symbol" .=) <$> _orgSymbol,
                  ("jobDescription" .=) <$> _orgJobDescription,
                  ("current" .=) <$> _orgCurrent,
                  ("startDate" .=) <$> _orgStartDate,
                  ("name" .=) <$> _orgName,
                  ("metadata" .=) <$> _orgMetadata,
                  ("phoneticName" .=) <$> _orgPhoneticName,
                  ("title" .=) <$> _orgTitle, ("type" .=) <$> _orgType,
                  ("formattedType" .=) <$> _orgFormattedType])

-- | One of the person\'s interests.
--
-- /See:/ 'interest' smart constructor.
data Interest =
  Interest'
    { _iValue :: !(Maybe Text)
    , _iMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Interest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iValue'
--
-- * 'iMetadata'
interest
    :: Interest
interest = Interest' {_iValue = Nothing, _iMetadata = Nothing}


-- | The interest; for example, \`stargazing\`.
iValue :: Lens' Interest (Maybe Text)
iValue = lens _iValue (\ s a -> s{_iValue = a})

-- | Metadata about the interest.
iMetadata :: Lens' Interest (Maybe FieldMetadata)
iMetadata
  = lens _iMetadata (\ s a -> s{_iMetadata = a})

instance FromJSON Interest where
        parseJSON
          = withObject "Interest"
              (\ o ->
                 Interest' <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Interest where
        toJSON Interest'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _iValue,
                  ("metadata" .=) <$> _iMetadata])

-- | The response for a single person
--
-- /See:/ 'personResponse' smart constructor.
data PersonResponse =
  PersonResponse'
    { _prStatus :: !(Maybe Status)
    , _prRequestedResourceName :: !(Maybe Text)
    , _prPerson :: !(Maybe Person)
    , _prHTTPStatusCode :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prStatus'
--
-- * 'prRequestedResourceName'
--
-- * 'prPerson'
--
-- * 'prHTTPStatusCode'
personResponse
    :: PersonResponse
personResponse =
  PersonResponse'
    { _prStatus = Nothing
    , _prRequestedResourceName = Nothing
    , _prPerson = Nothing
    , _prHTTPStatusCode = Nothing
    }


-- | The status of the response.
prStatus :: Lens' PersonResponse (Maybe Status)
prStatus = lens _prStatus (\ s a -> s{_prStatus = a})

-- | The original requested resource name. May be different than the resource
-- name on the returned person. The resource name can change when adding or
-- removing fields that link a contact and profile such as a verified
-- email, verified phone number, or a profile URL.
prRequestedResourceName :: Lens' PersonResponse (Maybe Text)
prRequestedResourceName
  = lens _prRequestedResourceName
      (\ s a -> s{_prRequestedResourceName = a})

-- | The person.
prPerson :: Lens' PersonResponse (Maybe Person)
prPerson = lens _prPerson (\ s a -> s{_prPerson = a})

-- | **DEPRECATED** (Please use status instead) [HTTP 1.1 status code]
-- (http:\/\/www.w3.org\/Protocols\/rfc2616\/rfc2616-sec10.html).
prHTTPStatusCode :: Lens' PersonResponse (Maybe Int32)
prHTTPStatusCode
  = lens _prHTTPStatusCode
      (\ s a -> s{_prHTTPStatusCode = a})
      . mapping _Coerce

instance FromJSON PersonResponse where
        parseJSON
          = withObject "PersonResponse"
              (\ o ->
                 PersonResponse' <$>
                   (o .:? "status") <*> (o .:? "requestedResourceName")
                     <*> (o .:? "person")
                     <*> (o .:? "httpStatusCode"))

instance ToJSON PersonResponse where
        toJSON PersonResponse'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _prStatus,
                  ("requestedResourceName" .=) <$>
                    _prRequestedResourceName,
                  ("person" .=) <$> _prPerson,
                  ("httpStatusCode" .=) <$> _prHTTPStatusCode])

-- | A person\'s calendar URL.
--
-- /See:/ 'calendarURL' smart constructor.
data CalendarURL =
  CalendarURL'
    { _cuURL :: !(Maybe Text)
    , _cuMetadata :: !(Maybe FieldMetadata)
    , _cuType :: !(Maybe Text)
    , _cuFormattedType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CalendarURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuURL'
--
-- * 'cuMetadata'
--
-- * 'cuType'
--
-- * 'cuFormattedType'
calendarURL
    :: CalendarURL
calendarURL =
  CalendarURL'
    { _cuURL = Nothing
    , _cuMetadata = Nothing
    , _cuType = Nothing
    , _cuFormattedType = Nothing
    }


-- | The calendar URL.
cuURL :: Lens' CalendarURL (Maybe Text)
cuURL = lens _cuURL (\ s a -> s{_cuURL = a})

-- | Metadata about the calendar URL.
cuMetadata :: Lens' CalendarURL (Maybe FieldMetadata)
cuMetadata
  = lens _cuMetadata (\ s a -> s{_cuMetadata = a})

-- | The type of the calendar URL. The type can be custom or one of these
-- predefined values: * \`home\` * \`freeBusy\` * \`work\`
cuType :: Lens' CalendarURL (Maybe Text)
cuType = lens _cuType (\ s a -> s{_cuType = a})

-- | Output only. The type of the calendar URL translated and formatted in
-- the viewer\'s account locale or the \`Accept-Language\` HTTP header
-- locale.
cuFormattedType :: Lens' CalendarURL (Maybe Text)
cuFormattedType
  = lens _cuFormattedType
      (\ s a -> s{_cuFormattedType = a})

instance FromJSON CalendarURL where
        parseJSON
          = withObject "CalendarURL"
              (\ o ->
                 CalendarURL' <$>
                   (o .:? "url") <*> (o .:? "metadata") <*>
                     (o .:? "type")
                     <*> (o .:? "formattedType"))

instance ToJSON CalendarURL where
        toJSON CalendarURL'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _cuURL,
                  ("metadata" .=) <$> _cuMetadata,
                  ("type" .=) <$> _cuType,
                  ("formattedType" .=) <$> _cuFormattedType])

-- | Arbitrary client data that is populated by clients. Duplicate keys and
-- values are allowed.
--
-- /See:/ 'clientData' smart constructor.
data ClientData =
  ClientData'
    { _cdValue :: !(Maybe Text)
    , _cdKey :: !(Maybe Text)
    , _cdMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClientData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdValue'
--
-- * 'cdKey'
--
-- * 'cdMetadata'
clientData
    :: ClientData
clientData =
  ClientData' {_cdValue = Nothing, _cdKey = Nothing, _cdMetadata = Nothing}


-- | The client specified value of the client data.
cdValue :: Lens' ClientData (Maybe Text)
cdValue = lens _cdValue (\ s a -> s{_cdValue = a})

-- | The client specified key of the client data.
cdKey :: Lens' ClientData (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | Metadata about the client data.
cdMetadata :: Lens' ClientData (Maybe FieldMetadata)
cdMetadata
  = lens _cdMetadata (\ s a -> s{_cdMetadata = a})

instance FromJSON ClientData where
        parseJSON
          = withObject "ClientData"
              (\ o ->
                 ClientData' <$>
                   (o .:? "value") <*> (o .:? "key") <*>
                     (o .:? "metadata"))

instance ToJSON ClientData where
        toJSON ClientData'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _cdValue, ("key" .=) <$> _cdKey,
                  ("metadata" .=) <$> _cdMetadata])

-- | A skill that the person has.
--
-- /See:/ 'skill' smart constructor.
data Skill =
  Skill'
    { _sValue :: !(Maybe Text)
    , _sMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Skill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sValue'
--
-- * 'sMetadata'
skill
    :: Skill
skill = Skill' {_sValue = Nothing, _sMetadata = Nothing}


-- | The skill; for example, \`underwater basket weaving\`.
sValue :: Lens' Skill (Maybe Text)
sValue = lens _sValue (\ s a -> s{_sValue = a})

-- | Metadata about the skill.
sMetadata :: Lens' Skill (Maybe FieldMetadata)
sMetadata
  = lens _sMetadata (\ s a -> s{_sMetadata = a})

instance FromJSON Skill where
        parseJSON
          = withObject "Skill"
              (\ o ->
                 Skill' <$> (o .:? "value") <*> (o .:? "metadata"))

instance ToJSON Skill where
        toJSON Skill'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _sValue,
                  ("metadata" .=) <$> _sMetadata])

-- | A person\'s short biography.
--
-- /See:/ 'biography' smart constructor.
data Biography =
  Biography'
    { _bioValue :: !(Maybe Text)
    , _bioMetadata :: !(Maybe FieldMetadata)
    , _bioContentType :: !(Maybe BiographyContentType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Biography' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bioValue'
--
-- * 'bioMetadata'
--
-- * 'bioContentType'
biography
    :: Biography
biography =
  Biography'
    {_bioValue = Nothing, _bioMetadata = Nothing, _bioContentType = Nothing}


-- | The short biography.
bioValue :: Lens' Biography (Maybe Text)
bioValue = lens _bioValue (\ s a -> s{_bioValue = a})

-- | Metadata about the biography.
bioMetadata :: Lens' Biography (Maybe FieldMetadata)
bioMetadata
  = lens _bioMetadata (\ s a -> s{_bioMetadata = a})

-- | The content type of the biography.
bioContentType :: Lens' Biography (Maybe BiographyContentType)
bioContentType
  = lens _bioContentType
      (\ s a -> s{_bioContentType = a})

instance FromJSON Biography where
        parseJSON
          = withObject "Biography"
              (\ o ->
                 Biography' <$>
                   (o .:? "value") <*> (o .:? "metadata") <*>
                     (o .:? "contentType"))

instance ToJSON Biography where
        toJSON Biography'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _bioValue,
                  ("metadata" .=) <$> _bioMetadata,
                  ("contentType" .=) <$> _bioContentType])

-- | A person\'s cover photo. A large image shown on the person\'s profile
-- page that represents who they are or what they care about.
--
-- /See:/ 'coverPhoto' smart constructor.
data CoverPhoto =
  CoverPhoto'
    { _cpDefault :: !(Maybe Bool)
    , _cpURL :: !(Maybe Text)
    , _cpMetadata :: !(Maybe FieldMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoverPhoto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpDefault'
--
-- * 'cpURL'
--
-- * 'cpMetadata'
coverPhoto
    :: CoverPhoto
coverPhoto =
  CoverPhoto' {_cpDefault = Nothing, _cpURL = Nothing, _cpMetadata = Nothing}


-- | True if the cover photo is the default cover photo; false if the cover
-- photo is a user-provided cover photo.
cpDefault :: Lens' CoverPhoto (Maybe Bool)
cpDefault
  = lens _cpDefault (\ s a -> s{_cpDefault = a})

-- | The URL of the cover photo.
cpURL :: Lens' CoverPhoto (Maybe Text)
cpURL = lens _cpURL (\ s a -> s{_cpURL = a})

-- | Metadata about the cover photo.
cpMetadata :: Lens' CoverPhoto (Maybe FieldMetadata)
cpMetadata
  = lens _cpMetadata (\ s a -> s{_cpMetadata = a})

instance FromJSON CoverPhoto where
        parseJSON
          = withObject "CoverPhoto"
              (\ o ->
                 CoverPhoto' <$>
                   (o .:? "default") <*> (o .:? "url") <*>
                     (o .:? "metadata"))

instance ToJSON CoverPhoto where
        toJSON CoverPhoto'{..}
          = object
              (catMaybes
                 [("default" .=) <$> _cpDefault,
                  ("url" .=) <$> _cpURL,
                  ("metadata" .=) <$> _cpMetadata])
