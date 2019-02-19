{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeAnalytics.Types.Product where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types.Sum

-- | A group\'s content details.
--
-- /See:/ 'groupContentDetails' smart constructor.
data GroupContentDetails =
  GroupContentDetails'
    { _gcdItemType  :: !(Maybe Text)
    , _gcdItemCount :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdItemType'
--
-- * 'gcdItemCount'
groupContentDetails
    :: GroupContentDetails
groupContentDetails =
  GroupContentDetails' {_gcdItemType = Nothing, _gcdItemCount = Nothing}

-- | The type of resources that the group contains. Valid values for this
-- property are: * \`youtube#channel\` * \`youtube#playlist\` *
-- \`youtube#video\` * \`youtubePartner#asset\`
gcdItemType :: Lens' GroupContentDetails (Maybe Text)
gcdItemType
  = lens _gcdItemType (\ s a -> s{_gcdItemType = a})

-- | The number of items in the group.
gcdItemCount :: Lens' GroupContentDetails (Maybe Word64)
gcdItemCount
  = lens _gcdItemCount (\ s a -> s{_gcdItemCount = a})
      . mapping _Coerce

instance FromJSON GroupContentDetails where
        parseJSON
          = withObject "GroupContentDetails"
              (\ o ->
                 GroupContentDetails' <$>
                   (o .:? "itemType") <*> (o .:? "itemCount"))

instance ToJSON GroupContentDetails where
        toJSON GroupContentDetails'{..}
          = object
              (catMaybes
                 [("itemType" .=) <$> _gcdItemType,
                  ("itemCount" .=) <$> _gcdItemCount])

-- | A group.
--
-- /See:/ 'group'' smart constructor.
data Group =
  Group'
    { _gEtag           :: !(Maybe Text)
    , _gSnippet        :: !(Maybe GroupSnippet)
    , _gKind           :: !(Maybe Text)
    , _gContentDetails :: !(Maybe GroupContentDetails)
    , _gId             :: !(Maybe Text)
    , _gErrors         :: !(Maybe Errors)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gEtag'
--
-- * 'gSnippet'
--
-- * 'gKind'
--
-- * 'gContentDetails'
--
-- * 'gId'
--
-- * 'gErrors'
group'
    :: Group
group' =
  Group'
    { _gEtag = Nothing
    , _gSnippet = Nothing
    , _gKind = Nothing
    , _gContentDetails = Nothing
    , _gId = Nothing
    , _gErrors = Nothing
    }

-- | The Etag of this resource.
gEtag :: Lens' Group (Maybe Text)
gEtag = lens _gEtag (\ s a -> s{_gEtag = a})

-- | The \`snippet\` object contains basic information about the group,
-- including its creation date and name.
gSnippet :: Lens' Group (Maybe GroupSnippet)
gSnippet = lens _gSnippet (\ s a -> s{_gSnippet = a})

-- | Identifies the API resource\'s type. The value will be
-- \`youtube#group\`.
gKind :: Lens' Group (Maybe Text)
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | The \`contentDetails\` object contains additional information about the
-- group, such as the number and type of items that it contains.
gContentDetails :: Lens' Group (Maybe GroupContentDetails)
gContentDetails
  = lens _gContentDetails
      (\ s a -> s{_gContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the group.
gId :: Lens' Group (Maybe Text)
gId = lens _gId (\ s a -> s{_gId = a})

-- | Apiary error details
gErrors :: Lens' Group (Maybe Errors)
gErrors = lens _gErrors (\ s a -> s{_gErrors = a})

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id")
                     <*> (o .:? "errors"))

instance ToJSON Group where
        toJSON Group'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gEtag,
                  ("snippet" .=) <$> _gSnippet, ("kind" .=) <$> _gKind,
                  ("contentDetails" .=) <$> _gContentDetails,
                  ("id" .=) <$> _gId, ("errors" .=) <$> _gErrors])

-- | Response message for GroupsService.ListGroups.
--
-- /See:/ 'listGroupsResponse' smart constructor.
data ListGroupsResponse =
  ListGroupsResponse'
    { _lgrEtag          :: !(Maybe Text)
    , _lgrNextPageToken :: !(Maybe Text)
    , _lgrKind          :: !(Maybe Text)
    , _lgrItems         :: !(Maybe [Group])
    , _lgrErrors        :: !(Maybe Errors)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrEtag'
--
-- * 'lgrNextPageToken'
--
-- * 'lgrKind'
--
-- * 'lgrItems'
--
-- * 'lgrErrors'
listGroupsResponse
    :: ListGroupsResponse
listGroupsResponse =
  ListGroupsResponse'
    { _lgrEtag = Nothing
    , _lgrNextPageToken = Nothing
    , _lgrKind = Nothing
    , _lgrItems = Nothing
    , _lgrErrors = Nothing
    }

-- | The Etag of this resource.
lgrEtag :: Lens' ListGroupsResponse (Maybe Text)
lgrEtag = lens _lgrEtag (\ s a -> s{_lgrEtag = a})

-- | The token that can be used as the value of the \`pageToken\` parameter
-- to retrieve the next page in the result set.
lgrNextPageToken :: Lens' ListGroupsResponse (Maybe Text)
lgrNextPageToken
  = lens _lgrNextPageToken
      (\ s a -> s{_lgrNextPageToken = a})

-- | Identifies the API resource\'s type. The value will be
-- \`youtube#groupListResponse\`.
lgrKind :: Lens' ListGroupsResponse (Maybe Text)
lgrKind = lens _lgrKind (\ s a -> s{_lgrKind = a})

-- | A list of groups that match the API request parameters. Each item in the
-- list represents a \`group\` resource.
lgrItems :: Lens' ListGroupsResponse [Group]
lgrItems
  = lens _lgrItems (\ s a -> s{_lgrItems = a}) .
      _Default
      . _Coerce

-- | Apiary error details
lgrErrors :: Lens' ListGroupsResponse (Maybe Errors)
lgrErrors
  = lens _lgrErrors (\ s a -> s{_lgrErrors = a})

instance FromJSON ListGroupsResponse where
        parseJSON
          = withObject "ListGroupsResponse"
              (\ o ->
                 ListGroupsResponse' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "errors"))

instance ToJSON ListGroupsResponse where
        toJSON ListGroupsResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lgrEtag,
                  ("nextPageToken" .=) <$> _lgrNextPageToken,
                  ("kind" .=) <$> _lgrKind, ("items" .=) <$> _lgrItems,
                  ("errors" .=) <$> _lgrErrors])

-- | Response message for GroupsService.ListGroupItems.
--
-- /See:/ 'listGroupItemsResponse' smart constructor.
data ListGroupItemsResponse =
  ListGroupItemsResponse'
    { _lgirEtag   :: !(Maybe Text)
    , _lgirKind   :: !(Maybe Text)
    , _lgirItems  :: !(Maybe [GroupItem])
    , _lgirErrors :: !(Maybe Errors)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgirEtag'
--
-- * 'lgirKind'
--
-- * 'lgirItems'
--
-- * 'lgirErrors'
listGroupItemsResponse
    :: ListGroupItemsResponse
listGroupItemsResponse =
  ListGroupItemsResponse'
    { _lgirEtag = Nothing
    , _lgirKind = Nothing
    , _lgirItems = Nothing
    , _lgirErrors = Nothing
    }

-- | The Etag of this resource.
lgirEtag :: Lens' ListGroupItemsResponse (Maybe Text)
lgirEtag = lens _lgirEtag (\ s a -> s{_lgirEtag = a})

-- | Identifies the API resource\'s type. The value will be
-- \`youtube#groupItemListResponse\`.
lgirKind :: Lens' ListGroupItemsResponse (Maybe Text)
lgirKind = lens _lgirKind (\ s a -> s{_lgirKind = a})

-- | A list of groups that match the API request parameters. Each item in the
-- list represents a \`groupItem\` resource.
lgirItems :: Lens' ListGroupItemsResponse [GroupItem]
lgirItems
  = lens _lgirItems (\ s a -> s{_lgirItems = a}) .
      _Default
      . _Coerce

-- | Apiary error details
lgirErrors :: Lens' ListGroupItemsResponse (Maybe Errors)
lgirErrors
  = lens _lgirErrors (\ s a -> s{_lgirErrors = a})

instance FromJSON ListGroupItemsResponse where
        parseJSON
          = withObject "ListGroupItemsResponse"
              (\ o ->
                 ListGroupItemsResponse' <$>
                   (o .:? "etag") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "errors"))

instance ToJSON ListGroupItemsResponse where
        toJSON ListGroupItemsResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lgirEtag,
                  ("kind" .=) <$> _lgirKind,
                  ("items" .=) <$> _lgirItems,
                  ("errors" .=) <$> _lgirErrors])

--
-- /See:/ 'groupItemResource' smart constructor.
data GroupItemResource =
  GroupItemResource'
    { _girKind :: !(Maybe Text)
    , _girId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupItemResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girKind'
--
-- * 'girId'
groupItemResource
    :: GroupItemResource
groupItemResource = GroupItemResource' {_girKind = Nothing, _girId = Nothing}

-- | Identifies the type of resource being added to the group. Valid values
-- for this property are: * \`youtube#channel\` * \`youtube#playlist\` *
-- \`youtube#video\` * \`youtubePartner#asset\`
girKind :: Lens' GroupItemResource (Maybe Text)
girKind = lens _girKind (\ s a -> s{_girKind = a})

-- | The channel, video, playlist, or asset ID that YouTube uses to uniquely
-- identify the item that is being added to the group.
girId :: Lens' GroupItemResource (Maybe Text)
girId = lens _girId (\ s a -> s{_girId = a})

instance FromJSON GroupItemResource where
        parseJSON
          = withObject "GroupItemResource"
              (\ o ->
                 GroupItemResource' <$>
                   (o .:? "kind") <*> (o .:? "id"))

instance ToJSON GroupItemResource where
        toJSON GroupItemResource'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _girKind, ("id" .=) <$> _girId])

-- | A group snippet.
--
-- /See:/ 'groupSnippet' smart constructor.
data GroupSnippet =
  GroupSnippet'
    { _gsPublishedAt :: !(Maybe DateTime')
    , _gsTitle       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsPublishedAt'
--
-- * 'gsTitle'
groupSnippet
    :: GroupSnippet
groupSnippet = GroupSnippet' {_gsPublishedAt = Nothing, _gsTitle = Nothing}

-- | The date and time that the group was created. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
gsPublishedAt :: Lens' GroupSnippet (Maybe UTCTime)
gsPublishedAt
  = lens _gsPublishedAt
      (\ s a -> s{_gsPublishedAt = a})
      . mapping _DateTime

-- | The group name. The value must be a non-empty string.
gsTitle :: Lens' GroupSnippet (Maybe Text)
gsTitle = lens _gsTitle (\ s a -> s{_gsTitle = a})

instance FromJSON GroupSnippet where
        parseJSON
          = withObject "GroupSnippet"
              (\ o ->
                 GroupSnippet' <$>
                   (o .:? "publishedAt") <*> (o .:? "title"))

instance ToJSON GroupSnippet where
        toJSON GroupSnippet'{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _gsPublishedAt,
                  ("title" .=) <$> _gsTitle])

-- | A group item.
--
-- /See:/ 'groupItem' smart constructor.
data GroupItem =
  GroupItem'
    { _giEtag     :: !(Maybe Text)
    , _giKind     :: !(Maybe Text)
    , _giResource :: !(Maybe GroupItemResource)
    , _giGroupId  :: !(Maybe Text)
    , _giId       :: !(Maybe Text)
    , _giErrors   :: !(Maybe Errors)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giEtag'
--
-- * 'giKind'
--
-- * 'giResource'
--
-- * 'giGroupId'
--
-- * 'giId'
--
-- * 'giErrors'
groupItem
    :: GroupItem
groupItem =
  GroupItem'
    { _giEtag = Nothing
    , _giKind = Nothing
    , _giResource = Nothing
    , _giGroupId = Nothing
    , _giId = Nothing
    , _giErrors = Nothing
    }

-- | The Etag of this resource.
giEtag :: Lens' GroupItem (Maybe Text)
giEtag = lens _giEtag (\ s a -> s{_giEtag = a})

-- | Identifies the API resource\'s type. The value will be
-- \`youtube#groupItem\`.
giKind :: Lens' GroupItem (Maybe Text)
giKind = lens _giKind (\ s a -> s{_giKind = a})

-- | The \`resource\` object contains information that identifies the item
-- being added to the group.
giResource :: Lens' GroupItem (Maybe GroupItemResource)
giResource
  = lens _giResource (\ s a -> s{_giResource = a})

-- | The ID that YouTube uses to uniquely identify the group that contains
-- the item.
giGroupId :: Lens' GroupItem (Maybe Text)
giGroupId
  = lens _giGroupId (\ s a -> s{_giGroupId = a})

-- | The ID that YouTube uses to uniquely identify the \`channel\`,
-- \`video\`, \`playlist\`, or \`asset\` resource that is included in the
-- group. Note that this ID refers specifically to the inclusion of that
-- resource in a particular group and is different than the channel ID,
-- video ID, playlist ID, or asset ID that uniquely identifies the resource
-- itself. The \`resource.id\` property\'s value specifies the unique
-- channel, video, playlist, or asset ID.
giId :: Lens' GroupItem (Maybe Text)
giId = lens _giId (\ s a -> s{_giId = a})

-- | Apiary error details
giErrors :: Lens' GroupItem (Maybe Errors)
giErrors = lens _giErrors (\ s a -> s{_giErrors = a})

instance FromJSON GroupItem where
        parseJSON
          = withObject "GroupItem"
              (\ o ->
                 GroupItem' <$>
                   (o .:? "etag") <*> (o .:? "kind") <*>
                     (o .:? "resource")
                     <*> (o .:? "groupId")
                     <*> (o .:? "id")
                     <*> (o .:? "errors"))

instance ToJSON GroupItem where
        toJSON GroupItem'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _giEtag, ("kind" .=) <$> _giKind,
                  ("resource" .=) <$> _giResource,
                  ("groupId" .=) <$> _giGroupId, ("id" .=) <$> _giId,
                  ("errors" .=) <$> _giErrors])

-- | Request Error information. The presence of an error field signals that
-- the operation has failed.
--
-- /See:/ 'errors' smart constructor.
data Errors =
  Errors'
    { _eRequestId :: !(Maybe Text)
    , _eError     :: !(Maybe [ErrorProto])
    , _eCode      :: !(Maybe ErrorsCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Errors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eRequestId'
--
-- * 'eError'
--
-- * 'eCode'
errors
    :: Errors
errors = Errors' {_eRequestId = Nothing, _eError = Nothing, _eCode = Nothing}

-- | Request identifier generated by the service, which can be used to
-- identify the error in the logs
eRequestId :: Lens' Errors (Maybe Text)
eRequestId
  = lens _eRequestId (\ s a -> s{_eRequestId = a})

-- | Specific error description and codes
eError :: Lens' Errors [ErrorProto]
eError
  = lens _eError (\ s a -> s{_eError = a}) . _Default .
      _Coerce

-- | Global error code. Deprecated and ignored. Set custom error codes in
-- ErrorProto.domain and ErrorProto.code instead.
eCode :: Lens' Errors (Maybe ErrorsCode)
eCode = lens _eCode (\ s a -> s{_eCode = a})

instance FromJSON Errors where
        parseJSON
          = withObject "Errors"
              (\ o ->
                 Errors' <$>
                   (o .:? "requestId") <*> (o .:? "error" .!= mempty)
                     <*> (o .:? "code"))

instance ToJSON Errors where
        toJSON Errors'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _eRequestId,
                  ("error" .=) <$> _eError, ("code" .=) <$> _eCode])

-- | The description of a column of the result table.
--
-- /See:/ 'resultTableColumnHeader' smart constructor.
data ResultTableColumnHeader =
  ResultTableColumnHeader'
    { _rtchColumnType :: !(Maybe Text)
    , _rtchName       :: !(Maybe Text)
    , _rtchDataType   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResultTableColumnHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtchColumnType'
--
-- * 'rtchName'
--
-- * 'rtchDataType'
resultTableColumnHeader
    :: ResultTableColumnHeader
resultTableColumnHeader =
  ResultTableColumnHeader'
    {_rtchColumnType = Nothing, _rtchName = Nothing, _rtchDataType = Nothing}

-- | The type of the column (\`DIMENSION\` or \`METRIC\`).
rtchColumnType :: Lens' ResultTableColumnHeader (Maybe Text)
rtchColumnType
  = lens _rtchColumnType
      (\ s a -> s{_rtchColumnType = a})

-- | The name of the dimension or metric.
rtchName :: Lens' ResultTableColumnHeader (Maybe Text)
rtchName = lens _rtchName (\ s a -> s{_rtchName = a})

-- | The type of the data in the column (\`STRING\`, \`INTEGER\`, \`FLOAT\`,
-- etc.).
rtchDataType :: Lens' ResultTableColumnHeader (Maybe Text)
rtchDataType
  = lens _rtchDataType (\ s a -> s{_rtchDataType = a})

instance FromJSON ResultTableColumnHeader where
        parseJSON
          = withObject "ResultTableColumnHeader"
              (\ o ->
                 ResultTableColumnHeader' <$>
                   (o .:? "columnType") <*> (o .:? "name") <*>
                     (o .:? "dataType"))

instance ToJSON ResultTableColumnHeader where
        toJSON ResultTableColumnHeader'{..}
          = object
              (catMaybes
                 [("columnType" .=) <$> _rtchColumnType,
                  ("name" .=) <$> _rtchName,
                  ("dataType" .=) <$> _rtchDataType])

-- | Describes one specific error.
--
-- /See:/ 'errorProto' smart constructor.
data ErrorProto =
  ErrorProto'
    { _epDebugInfo            :: !(Maybe Text)
    , _epLocation             :: !(Maybe Text)
    , _epDomain               :: !(Maybe Text)
    , _epArgument             :: !(Maybe [Text])
    , _epExternalErrorMessage :: !(Maybe Text)
    , _epCode                 :: !(Maybe Text)
    , _epLocationType         :: !(Maybe ErrorProtoLocationType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorProto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epDebugInfo'
--
-- * 'epLocation'
--
-- * 'epDomain'
--
-- * 'epArgument'
--
-- * 'epExternalErrorMessage'
--
-- * 'epCode'
--
-- * 'epLocationType'
errorProto
    :: ErrorProto
errorProto =
  ErrorProto'
    { _epDebugInfo = Nothing
    , _epLocation = Nothing
    , _epDomain = Nothing
    , _epArgument = Nothing
    , _epExternalErrorMessage = Nothing
    , _epCode = Nothing
    , _epLocationType = Nothing
    }

-- | Debugging information, which should not be shared externally.
epDebugInfo :: Lens' ErrorProto (Maybe Text)
epDebugInfo
  = lens _epDebugInfo (\ s a -> s{_epDebugInfo = a})

-- | Location of the error, as specified by the location type. If
-- location_type is PATH, this should be a path to a field that\'s relative
-- to the request, using FieldPath notation
-- (net\/proto2\/util\/public\/field_path.h). Examples:
-- authenticated_user.gaia_id resource.address[2].country
epLocation :: Lens' ErrorProto (Maybe Text)
epLocation
  = lens _epLocation (\ s a -> s{_epLocation = a})

-- | Error domain. RoSy services can define their own domain and error codes.
-- This should normally be the name of an enum type, such as:
-- gdata.CoreErrorDomain
epDomain :: Lens' ErrorProto (Maybe Text)
epDomain = lens _epDomain (\ s a -> s{_epDomain = a})

-- | Error arguments, to be used when building user-friendly error messages
-- given the error domain and code. Different error codes require different
-- arguments.
epArgument :: Lens' ErrorProto [Text]
epArgument
  = lens _epArgument (\ s a -> s{_epArgument = a}) .
      _Default
      . _Coerce

-- | A short explanation for the error, which can be shared outside Google.
-- Please set domain, code and arguments whenever possible instead of this
-- error message so that external APIs can build safe error messages
-- themselves. External messages built in a RoSy interface will most likely
-- refer to information and concepts that are not available externally and
-- should not be exposed. It is safer if external APIs can understand the
-- errors and decide what the error message should look like.
epExternalErrorMessage :: Lens' ErrorProto (Maybe Text)
epExternalErrorMessage
  = lens _epExternalErrorMessage
      (\ s a -> s{_epExternalErrorMessage = a})

-- | Error code in the error domain. This should correspond to a value of the
-- enum type whose name is in domain. See the core error domain in
-- error_domain.proto.
epCode :: Lens' ErrorProto (Maybe Text)
epCode = lens _epCode (\ s a -> s{_epCode = a})

epLocationType :: Lens' ErrorProto (Maybe ErrorProtoLocationType)
epLocationType
  = lens _epLocationType
      (\ s a -> s{_epLocationType = a})

instance FromJSON ErrorProto where
        parseJSON
          = withObject "ErrorProto"
              (\ o ->
                 ErrorProto' <$>
                   (o .:? "debugInfo") <*> (o .:? "location") <*>
                     (o .:? "domain")
                     <*> (o .:? "argument" .!= mempty)
                     <*> (o .:? "externalErrorMessage")
                     <*> (o .:? "code")
                     <*> (o .:? "locationType"))

instance ToJSON ErrorProto where
        toJSON ErrorProto'{..}
          = object
              (catMaybes
                 [("debugInfo" .=) <$> _epDebugInfo,
                  ("location" .=) <$> _epLocation,
                  ("domain" .=) <$> _epDomain,
                  ("argument" .=) <$> _epArgument,
                  ("externalErrorMessage" .=) <$>
                    _epExternalErrorMessage,
                  ("code" .=) <$> _epCode,
                  ("locationType" .=) <$> _epLocationType])

-- | Empty response.
--
-- /See:/ 'emptyResponse' smart constructor.
newtype EmptyResponse =
  EmptyResponse'
    { _erErrors :: Maybe Errors
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EmptyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erErrors'
emptyResponse
    :: EmptyResponse
emptyResponse = EmptyResponse' {_erErrors = Nothing}

-- | Apiary error details
erErrors :: Lens' EmptyResponse (Maybe Errors)
erErrors = lens _erErrors (\ s a -> s{_erErrors = a})

instance FromJSON EmptyResponse where
        parseJSON
          = withObject "EmptyResponse"
              (\ o -> EmptyResponse' <$> (o .:? "errors"))

instance ToJSON EmptyResponse where
        toJSON EmptyResponse'{..}
          = object (catMaybes [("errors" .=) <$> _erErrors])

-- | Response message for TargetedQueriesService.Query.
--
-- /See:/ 'queryResponse' smart constructor.
data QueryResponse =
  QueryResponse'
    { _qrKind          :: !(Maybe Text)
    , _qrRows          :: !(Maybe [[JSONValue]])
    , _qrColumnHeaders :: !(Maybe [ResultTableColumnHeader])
    , _qrErrors        :: !(Maybe Errors)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrKind'
--
-- * 'qrRows'
--
-- * 'qrColumnHeaders'
--
-- * 'qrErrors'
queryResponse
    :: QueryResponse
queryResponse =
  QueryResponse'
    { _qrKind = Nothing
    , _qrRows = Nothing
    , _qrColumnHeaders = Nothing
    , _qrErrors = Nothing
    }

-- | This value specifies the type of data included in the API response. For
-- the query method, the kind property value will be
-- \`youtubeAnalytics#resultTable\`.
qrKind :: Lens' QueryResponse (Maybe Text)
qrKind = lens _qrKind (\ s a -> s{_qrKind = a})

-- | The list contains all rows of the result table. Each item in the list is
-- an array that contains comma-delimited data corresponding to a single
-- row of data. The order of the comma-delimited data fields will match the
-- order of the columns listed in the \`columnHeaders\` field. If no data
-- is available for the given query, the \`rows\` element will be omitted
-- from the response. The response for a query with the \`day\` dimension
-- will not contain rows for the most recent days.
qrRows :: Lens' QueryResponse [[JSONValue]]
qrRows
  = lens _qrRows (\ s a -> s{_qrRows = a}) . _Default .
      _Coerce

-- | This value specifies information about the data returned in the \`rows\`
-- fields. Each item in the \`columnHeaders\` list identifies a field
-- returned in the \`rows\` value, which contains a list of comma-delimited
-- data. The \`columnHeaders\` list will begin with the dimensions
-- specified in the API request, which will be followed by the metrics
-- specified in the API request. The order of both dimensions and metrics
-- will match the ordering in the API request. For example, if the API
-- request contains the parameters
-- \`dimensions=ageGroup,gender&metrics=viewerPercentage\`, the API
-- response will return columns in this order: \`ageGroup\`, \`gender\`,
-- \`viewerPercentage\`.
qrColumnHeaders :: Lens' QueryResponse [ResultTableColumnHeader]
qrColumnHeaders
  = lens _qrColumnHeaders
      (\ s a -> s{_qrColumnHeaders = a})
      . _Default
      . _Coerce

-- | When set, indicates that the operation failed.
qrErrors :: Lens' QueryResponse (Maybe Errors)
qrErrors = lens _qrErrors (\ s a -> s{_qrErrors = a})

instance FromJSON QueryResponse where
        parseJSON
          = withObject "QueryResponse"
              (\ o ->
                 QueryResponse' <$>
                   (o .:? "kind") <*> (o .:? "rows" .!= mempty) <*>
                     (o .:? "columnHeaders" .!= mempty)
                     <*> (o .:? "errors"))

instance ToJSON QueryResponse where
        toJSON QueryResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _qrKind, ("rows" .=) <$> _qrRows,
                  ("columnHeaders" .=) <$> _qrColumnHeaders,
                  ("errors" .=) <$> _qrErrors])
