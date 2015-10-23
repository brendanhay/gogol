{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Drive.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Drive.Types.Product where

import           Network.Google.Drive.Types.Sum
import           Network.Google.Prelude

-- | The context of the file which is being commented on.
--
-- /See:/ 'commentContext' smart constructor.
data CommentContext = CommentContext
    { _ccValue :: !(Maybe Text)
    , _ccType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccValue'
--
-- * 'ccType'
commentContext
    :: CommentContext
commentContext =
    CommentContext
    { _ccValue = Nothing
    , _ccType = Nothing
    }

-- | Data representation of the segment of the file being commented on. In
-- the case of a text file for example, this would be the actual text that
-- the comment is about.
ccValue :: Lens' CommentContext (Maybe Text)
ccValue = lens _ccValue (\ s a -> s{_ccValue = a})

-- | The MIME type of the context snippet.
ccType :: Lens' CommentContext (Maybe Text)
ccType = lens _ccType (\ s a -> s{_ccType = a})

instance FromJSON CommentContext where
        parseJSON
          = withObject "CommentContext"
              (\ o ->
                 CommentContext <$>
                   (o .:? "value") <*> (o .:? "type"))

instance ToJSON CommentContext where
        toJSON CommentContext{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ccValue, ("type" .=) <$> _ccType])

--
-- /See:/ 'appIconsItem' smart constructor.
data AppIconsItem = AppIconsItem
    { _aiiSize     :: !(Maybe (JSONText Int32))
    , _aiiCategory :: !(Maybe Text)
    , _aiiIconURL  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppIconsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiSize'
--
-- * 'aiiCategory'
--
-- * 'aiiIconURL'
appIconsItem
    :: AppIconsItem
appIconsItem =
    AppIconsItem
    { _aiiSize = Nothing
    , _aiiCategory = Nothing
    , _aiiIconURL = Nothing
    }

-- | Size of the icon. Represented as the maximum of the width and height.
aiiSize :: Lens' AppIconsItem (Maybe Int32)
aiiSize
  = lens _aiiSize (\ s a -> s{_aiiSize = a}) .
      mapping _Coerce

-- | Category of the icon. Allowed values are: - application - icon for the
-- application - document - icon for a file associated with the app -
-- documentShared - icon for a shared file associated with the app
aiiCategory :: Lens' AppIconsItem (Maybe Text)
aiiCategory
  = lens _aiiCategory (\ s a -> s{_aiiCategory = a})

-- | URL for the icon.
aiiIconURL :: Lens' AppIconsItem (Maybe Text)
aiiIconURL
  = lens _aiiIconURL (\ s a -> s{_aiiIconURL = a})

instance FromJSON AppIconsItem where
        parseJSON
          = withObject "AppIconsItem"
              (\ o ->
                 AppIconsItem <$>
                   (o .:? "size") <*> (o .:? "category") <*>
                     (o .:? "iconUrl"))

instance ToJSON AppIconsItem where
        toJSON AppIconsItem{..}
          = object
              (catMaybes
                 [("size" .=) <$> _aiiSize,
                  ("category" .=) <$> _aiiCategory,
                  ("iconUrl" .=) <$> _aiiIconURL])

-- | A list of files.
--
-- /See:/ 'fileList' smart constructor.
data FileList = FileList
    { _flEtag          :: !(Maybe Text)
    , _flNextPageToken :: !(Maybe Text)
    , _flNextLink      :: !(Maybe Text)
    , _flKind          :: !Text
    , _flItems         :: !(Maybe [File])
    , _flSelfLink      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flEtag'
--
-- * 'flNextPageToken'
--
-- * 'flNextLink'
--
-- * 'flKind'
--
-- * 'flItems'
--
-- * 'flSelfLink'
fileList
    :: FileList
fileList =
    FileList
    { _flEtag = Nothing
    , _flNextPageToken = Nothing
    , _flNextLink = Nothing
    , _flKind = "drive#fileList"
    , _flItems = Nothing
    , _flSelfLink = Nothing
    }

-- | The ETag of the list.
flEtag :: Lens' FileList (Maybe Text)
flEtag = lens _flEtag (\ s a -> s{_flEtag = a})

-- | The page token for the next page of files.
flNextPageToken :: Lens' FileList (Maybe Text)
flNextPageToken
  = lens _flNextPageToken
      (\ s a -> s{_flNextPageToken = a})

-- | A link to the next page of files.
flNextLink :: Lens' FileList (Maybe Text)
flNextLink
  = lens _flNextLink (\ s a -> s{_flNextLink = a})

-- | This is always drive#fileList.
flKind :: Lens' FileList Text
flKind = lens _flKind (\ s a -> s{_flKind = a})

-- | The actual list of files.
flItems :: Lens' FileList [File]
flItems
  = lens _flItems (\ s a -> s{_flItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
flSelfLink :: Lens' FileList (Maybe Text)
flSelfLink
  = lens _flSelfLink (\ s a -> s{_flSelfLink = a})

instance FromJSON FileList where
        parseJSON
          = withObject "FileList"
              (\ o ->
                 FileList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "drive#fileList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON FileList where
        toJSON FileList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _flEtag,
                  ("nextPageToken" .=) <$> _flNextPageToken,
                  ("nextLink" .=) <$> _flNextLink,
                  Just ("kind" .= _flKind), ("items" .=) <$> _flItems,
                  ("selfLink" .=) <$> _flSelfLink])

-- | A reference to a file\'s parent.
--
-- /See:/ 'parentReference' smart constructor.
data ParentReference = ParentReference
    { _prParentLink :: !(Maybe Text)
    , _prIsRoot     :: !(Maybe Bool)
    , _prKind       :: !Text
    , _prSelfLink   :: !(Maybe Text)
    , _prId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prParentLink'
--
-- * 'prIsRoot'
--
-- * 'prKind'
--
-- * 'prSelfLink'
--
-- * 'prId'
parentReference
    :: ParentReference
parentReference =
    ParentReference
    { _prParentLink = Nothing
    , _prIsRoot = Nothing
    , _prKind = "drive#parentReference"
    , _prSelfLink = Nothing
    , _prId = Nothing
    }

-- | A link to the parent.
prParentLink :: Lens' ParentReference (Maybe Text)
prParentLink
  = lens _prParentLink (\ s a -> s{_prParentLink = a})

-- | Whether or not the parent is the root folder.
prIsRoot :: Lens' ParentReference (Maybe Bool)
prIsRoot = lens _prIsRoot (\ s a -> s{_prIsRoot = a})

-- | This is always drive#parentReference.
prKind :: Lens' ParentReference Text
prKind = lens _prKind (\ s a -> s{_prKind = a})

-- | A link back to this reference.
prSelfLink :: Lens' ParentReference (Maybe Text)
prSelfLink
  = lens _prSelfLink (\ s a -> s{_prSelfLink = a})

-- | The ID of the parent.
prId :: Lens' ParentReference (Maybe Text)
prId = lens _prId (\ s a -> s{_prId = a})

instance FromJSON ParentReference where
        parseJSON
          = withObject "ParentReference"
              (\ o ->
                 ParentReference <$>
                   (o .:? "parentLink") <*> (o .:? "isRoot") <*>
                     (o .:? "kind" .!= "drive#parentReference")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ParentReference where
        toJSON ParentReference{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _prParentLink,
                  ("isRoot" .=) <$> _prIsRoot,
                  Just ("kind" .= _prKind),
                  ("selfLink" .=) <$> _prSelfLink,
                  ("id" .=) <$> _prId])

-- | A key-value pair attached to a file that is either public or private to
-- an application. The following limits apply to file properties: - Maximum
-- of 100 properties total per file - Maximum of 30 private properties per
-- app - Maximum of 30 public properties - Maximum of 124 bytes size limit
-- on (key + value) string in UTF-8 encoding for a single property.
--
-- /See:/ 'property' smart constructor.
data Property = Property
    { _pEtag       :: !(Maybe Text)
    , _pKind       :: !Text
    , _pValue      :: !(Maybe Text)
    , _pVisibility :: !(Maybe Text)
    , _pSelfLink   :: !(Maybe Text)
    , _pKey        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Property' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pKind'
--
-- * 'pValue'
--
-- * 'pVisibility'
--
-- * 'pSelfLink'
--
-- * 'pKey'
property
    :: Property
property =
    Property
    { _pEtag = Nothing
    , _pKind = "drive#property"
    , _pValue = Nothing
    , _pVisibility = Nothing
    , _pSelfLink = Nothing
    , _pKey = Nothing
    }

-- | ETag of the property.
pEtag :: Lens' Property (Maybe Text)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | This is always drive#property.
pKind :: Lens' Property Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The value of this property.
pValue :: Lens' Property (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | The visibility of this property.
pVisibility :: Lens' Property (Maybe Text)
pVisibility
  = lens _pVisibility (\ s a -> s{_pVisibility = a})

-- | The link back to this property.
pSelfLink :: Lens' Property (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

-- | The key of this property.
pKey :: Lens' Property (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

instance FromJSON Property where
        parseJSON
          = withObject "Property"
              (\ o ->
                 Property <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "drive#property")
                     <*> (o .:? "value")
                     <*> (o .:? "visibility")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "key"))

instance ToJSON Property where
        toJSON Property{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag, Just ("kind" .= _pKind),
                  ("value" .=) <$> _pValue,
                  ("visibility" .=) <$> _pVisibility,
                  ("selfLink" .=) <$> _pSelfLink,
                  ("key" .=) <$> _pKey])

-- | Thumbnail for the file. Only accepted on upload and for files that are
-- not already thumbnailed by Google.
--
-- /See:/ 'fileThumbnail' smart constructor.
data FileThumbnail = FileThumbnail
    { _ftImage    :: !(Maybe (JSONText Word8))
    , _ftMimeType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileThumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftImage'
--
-- * 'ftMimeType'
fileThumbnail
    :: FileThumbnail
fileThumbnail =
    FileThumbnail
    { _ftImage = Nothing
    , _ftMimeType = Nothing
    }

-- | The URL-safe Base64 encoded bytes of the thumbnail image. It should
-- conform to RFC 4648 section 5.
ftImage :: Lens' FileThumbnail (Maybe Word8)
ftImage
  = lens _ftImage (\ s a -> s{_ftImage = a}) .
      mapping _Coerce

-- | The MIME type of the thumbnail.
ftMimeType :: Lens' FileThumbnail (Maybe Text)
ftMimeType
  = lens _ftMimeType (\ s a -> s{_ftMimeType = a})

instance FromJSON FileThumbnail where
        parseJSON
          = withObject "FileThumbnail"
              (\ o ->
                 FileThumbnail <$>
                   (o .:? "image") <*> (o .:? "mimeType"))

instance ToJSON FileThumbnail where
        toJSON FileThumbnail{..}
          = object
              (catMaybes
                 [("image" .=) <$> _ftImage,
                  ("mimeType" .=) <$> _ftMimeType])

-- | The user\'s profile picture.
--
-- /See:/ 'userPicture' smart constructor.
newtype UserPicture = UserPicture
    { _upURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserPicture' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upURL'
userPicture
    :: UserPicture
userPicture =
    UserPicture
    { _upURL = Nothing
    }

-- | A URL that points to a profile picture of this user.
upURL :: Lens' UserPicture (Maybe Text)
upURL = lens _upURL (\ s a -> s{_upURL = a})

instance FromJSON UserPicture where
        parseJSON
          = withObject "UserPicture"
              (\ o -> UserPicture <$> (o .:? "url"))

instance ToJSON UserPicture where
        toJSON UserPicture{..}
          = object (catMaybes [("url" .=) <$> _upURL])

-- | A collection of properties, key-value pairs that are either public or
-- private to an application.
--
-- /See:/ 'propertyList' smart constructor.
data PropertyList = PropertyList
    { _plEtag     :: !(Maybe Text)
    , _plKind     :: !Text
    , _plItems    :: !(Maybe [Property])
    , _plSelfLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plEtag'
--
-- * 'plKind'
--
-- * 'plItems'
--
-- * 'plSelfLink'
propertyList
    :: PropertyList
propertyList =
    PropertyList
    { _plEtag = Nothing
    , _plKind = "drive#propertyList"
    , _plItems = Nothing
    , _plSelfLink = Nothing
    }

-- | The ETag of the list.
plEtag :: Lens' PropertyList (Maybe Text)
plEtag = lens _plEtag (\ s a -> s{_plEtag = a})

-- | This is always drive#propertyList.
plKind :: Lens' PropertyList Text
plKind = lens _plKind (\ s a -> s{_plKind = a})

-- | The list of properties.
plItems :: Lens' PropertyList [Property]
plItems
  = lens _plItems (\ s a -> s{_plItems = a}) . _Default
      . _Coerce

-- | The link back to this list.
plSelfLink :: Lens' PropertyList (Maybe Text)
plSelfLink
  = lens _plSelfLink (\ s a -> s{_plSelfLink = a})

instance FromJSON PropertyList where
        parseJSON
          = withObject "PropertyList"
              (\ o ->
                 PropertyList <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "drive#propertyList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON PropertyList where
        toJSON PropertyList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _plEtag, Just ("kind" .= _plKind),
                  ("items" .=) <$> _plItems,
                  ("selfLink" .=) <$> _plSelfLink])

-- | A list of children of a file.
--
-- /See:/ 'childList' smart constructor.
data ChildList = ChildList
    { _clEtag          :: !(Maybe Text)
    , _clNextPageToken :: !(Maybe Text)
    , _clNextLink      :: !(Maybe Text)
    , _clKind          :: !Text
    , _clItems         :: !(Maybe [ChildReference])
    , _clSelfLink      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clEtag'
--
-- * 'clNextPageToken'
--
-- * 'clNextLink'
--
-- * 'clKind'
--
-- * 'clItems'
--
-- * 'clSelfLink'
childList
    :: ChildList
childList =
    ChildList
    { _clEtag = Nothing
    , _clNextPageToken = Nothing
    , _clNextLink = Nothing
    , _clKind = "drive#childList"
    , _clItems = Nothing
    , _clSelfLink = Nothing
    }

-- | The ETag of the list.
clEtag :: Lens' ChildList (Maybe Text)
clEtag = lens _clEtag (\ s a -> s{_clEtag = a})

-- | The page token for the next page of children.
clNextPageToken :: Lens' ChildList (Maybe Text)
clNextPageToken
  = lens _clNextPageToken
      (\ s a -> s{_clNextPageToken = a})

-- | A link to the next page of children.
clNextLink :: Lens' ChildList (Maybe Text)
clNextLink
  = lens _clNextLink (\ s a -> s{_clNextLink = a})

-- | This is always drive#childList.
clKind :: Lens' ChildList Text
clKind = lens _clKind (\ s a -> s{_clKind = a})

-- | The actual list of children.
clItems :: Lens' ChildList [ChildReference]
clItems
  = lens _clItems (\ s a -> s{_clItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
clSelfLink :: Lens' ChildList (Maybe Text)
clSelfLink
  = lens _clSelfLink (\ s a -> s{_clSelfLink = a})

instance FromJSON ChildList where
        parseJSON
          = withObject "ChildList"
              (\ o ->
                 ChildList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "drive#childList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON ChildList where
        toJSON ChildList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _clEtag,
                  ("nextPageToken" .=) <$> _clNextPageToken,
                  ("nextLink" .=) <$> _clNextLink,
                  Just ("kind" .= _clKind), ("items" .=) <$> _clItems,
                  ("selfLink" .=) <$> _clSelfLink])

-- | A list of third-party applications which the user has installed or given
-- access to Google Drive.
--
-- /See:/ 'appList' smart constructor.
data AppList = AppList
    { _alDefaultAppIds :: !(Maybe [Text])
    , _alEtag          :: !(Maybe Text)
    , _alKind          :: !Text
    , _alItems         :: !(Maybe [App])
    , _alSelfLink      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alDefaultAppIds'
--
-- * 'alEtag'
--
-- * 'alKind'
--
-- * 'alItems'
--
-- * 'alSelfLink'
appList
    :: AppList
appList =
    AppList
    { _alDefaultAppIds = Nothing
    , _alEtag = Nothing
    , _alKind = "drive#appList"
    , _alItems = Nothing
    , _alSelfLink = Nothing
    }

-- | List of app IDs that the user has specified to use by default. The list
-- is in reverse-priority order (lowest to highest).
alDefaultAppIds :: Lens' AppList [Text]
alDefaultAppIds
  = lens _alDefaultAppIds
      (\ s a -> s{_alDefaultAppIds = a})
      . _Default
      . _Coerce

-- | The ETag of the list.
alEtag :: Lens' AppList (Maybe Text)
alEtag = lens _alEtag (\ s a -> s{_alEtag = a})

-- | This is always drive#appList.
alKind :: Lens' AppList Text
alKind = lens _alKind (\ s a -> s{_alKind = a})

-- | The actual list of apps.
alItems :: Lens' AppList [App]
alItems
  = lens _alItems (\ s a -> s{_alItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
alSelfLink :: Lens' AppList (Maybe Text)
alSelfLink
  = lens _alSelfLink (\ s a -> s{_alSelfLink = a})

instance FromJSON AppList where
        parseJSON
          = withObject "AppList"
              (\ o ->
                 AppList <$>
                   (o .:? "defaultAppIds" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "kind" .!= "drive#appList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON AppList where
        toJSON AppList{..}
          = object
              (catMaybes
                 [("defaultAppIds" .=) <$> _alDefaultAppIds,
                  ("etag" .=) <$> _alEtag, Just ("kind" .= _alKind),
                  ("items" .=) <$> _alItems,
                  ("selfLink" .=) <$> _alSelfLink])

-- | A map of the id of each of the user\'s apps to a link to open this file
-- with that app. Only populated when the drive.apps.readonly scope is
-- used.
--
-- /See:/ 'fileOpenWithLinks' smart constructor.
newtype FileOpenWithLinks = FileOpenWithLinks
    { _fowlAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileOpenWithLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fowlAddtional'
fileOpenWithLinks
    :: HashMap Text Text -- ^ 'fowlAddtional'
    -> FileOpenWithLinks
fileOpenWithLinks pFowlAddtional_ =
    FileOpenWithLinks
    { _fowlAddtional = _Coerce # pFowlAddtional_
    }

fowlAddtional :: Lens' FileOpenWithLinks (HashMap Text Text)
fowlAddtional
  = lens _fowlAddtional
      (\ s a -> s{_fowlAddtional = a})
      . _Coerce

instance FromJSON FileOpenWithLinks where
        parseJSON
          = withObject "FileOpenWithLinks"
              (\ o -> FileOpenWithLinks <$> (parseJSONObject o))

instance ToJSON FileOpenWithLinks where
        toJSON = toJSON . _fowlAddtional

--
-- /See:/ 'aboutAdditionalRoleInfoItemRoleSetsItem' smart constructor.
data AboutAdditionalRoleInfoItemRoleSetsItem = AboutAdditionalRoleInfoItemRoleSetsItem
    { _aariirsiPrimaryRole     :: !(Maybe Text)
    , _aariirsiAdditionalRoles :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutAdditionalRoleInfoItemRoleSetsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aariirsiPrimaryRole'
--
-- * 'aariirsiAdditionalRoles'
aboutAdditionalRoleInfoItemRoleSetsItem
    :: AboutAdditionalRoleInfoItemRoleSetsItem
aboutAdditionalRoleInfoItemRoleSetsItem =
    AboutAdditionalRoleInfoItemRoleSetsItem
    { _aariirsiPrimaryRole = Nothing
    , _aariirsiAdditionalRoles = Nothing
    }

-- | A primary permission role.
aariirsiPrimaryRole :: Lens' AboutAdditionalRoleInfoItemRoleSetsItem (Maybe Text)
aariirsiPrimaryRole
  = lens _aariirsiPrimaryRole
      (\ s a -> s{_aariirsiPrimaryRole = a})

-- | The supported additional roles with the primary role.
aariirsiAdditionalRoles :: Lens' AboutAdditionalRoleInfoItemRoleSetsItem [Text]
aariirsiAdditionalRoles
  = lens _aariirsiAdditionalRoles
      (\ s a -> s{_aariirsiAdditionalRoles = a})
      . _Default
      . _Coerce

instance FromJSON
         AboutAdditionalRoleInfoItemRoleSetsItem where
        parseJSON
          = withObject
              "AboutAdditionalRoleInfoItemRoleSetsItem"
              (\ o ->
                 AboutAdditionalRoleInfoItemRoleSetsItem <$>
                   (o .:? "primaryRole") <*>
                     (o .:? "additionalRoles" .!= mempty))

instance ToJSON
         AboutAdditionalRoleInfoItemRoleSetsItem where
        toJSON AboutAdditionalRoleInfoItemRoleSetsItem{..}
          = object
              (catMaybes
                 [("primaryRole" .=) <$> _aariirsiPrimaryRole,
                  ("additionalRoles" .=) <$> _aariirsiAdditionalRoles])

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cResourceURI :: !(Maybe Text)
    , _cResourceId  :: !(Maybe Text)
    , _cKind        :: !Text
    , _cExpiration  :: !(Maybe (JSONText Int64))
    , _cToken       :: !(Maybe Text)
    , _cAddress     :: !(Maybe Text)
    , _cPayload     :: !(Maybe Bool)
    , _cParams      :: !(Maybe ChannelParams)
    , _cId          :: !(Maybe Text)
    , _cType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceURI'
--
-- * 'cResourceId'
--
-- * 'cKind'
--
-- * 'cExpiration'
--
-- * 'cToken'
--
-- * 'cAddress'
--
-- * 'cPayload'
--
-- * 'cParams'
--
-- * 'cId'
--
-- * 'cType'
channel
    :: Channel
channel =
    Channel
    { _cResourceURI = Nothing
    , _cResourceId = Nothing
    , _cKind = "api#channel"
    , _cExpiration = Nothing
    , _cToken = Nothing
    , _cAddress = Nothing
    , _cPayload = Nothing
    , _cParams = Nothing
    , _cId = Nothing
    , _cType = Nothing
    }

-- | A version-specific identifier for the watched resource.
cResourceURI :: Lens' Channel (Maybe Text)
cResourceURI
  = lens _cResourceURI (\ s a -> s{_cResourceURI = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
cResourceId :: Lens' Channel (Maybe Text)
cResourceId
  = lens _cResourceId (\ s a -> s{_cResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
cKind :: Lens' Channel Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
cExpiration :: Lens' Channel (Maybe Int64)
cExpiration
  = lens _cExpiration (\ s a -> s{_cExpiration = a}) .
      mapping _Coerce

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
cToken :: Lens' Channel (Maybe Text)
cToken = lens _cToken (\ s a -> s{_cToken = a})

-- | The address where notifications are delivered for this channel.
cAddress :: Lens' Channel (Maybe Text)
cAddress = lens _cAddress (\ s a -> s{_cAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
cPayload :: Lens' Channel (Maybe Bool)
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
cParams :: Lens' Channel (Maybe ChannelParams)
cParams = lens _cParams (\ s a -> s{_cParams = a})

-- | A UUID or similar unique string that identifies this channel.
cId :: Lens' Channel (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The type of delivery mechanism used for this channel.
cType :: Lens' Channel (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o ->
                 Channel <$>
                   (o .:? "resourceUri") <*> (o .:? "resourceId") <*>
                     (o .:? "kind" .!= "api#channel")
                     <*> (o .:? "expiration")
                     <*> (o .:? "token")
                     <*> (o .:? "address")
                     <*> (o .:? "payload")
                     <*> (o .:? "params")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Channel where
        toJSON Channel{..}
          = object
              (catMaybes
                 [("resourceUri" .=) <$> _cResourceURI,
                  ("resourceId" .=) <$> _cResourceId,
                  Just ("kind" .= _cKind),
                  ("expiration" .=) <$> _cExpiration,
                  ("token" .=) <$> _cToken,
                  ("address" .=) <$> _cAddress,
                  ("payload" .=) <$> _cPayload,
                  ("params" .=) <$> _cParams, ("id" .=) <$> _cId,
                  ("type" .=) <$> _cType])

-- | A JSON representation of a list of replies to a comment on a file in
-- Google Drive.
--
-- /See:/ 'commentReplyList' smart constructor.
data CommentReplyList = CommentReplyList
    { _crlNextPageToken :: !(Maybe Text)
    , _crlNextLink      :: !(Maybe Text)
    , _crlKind          :: !Text
    , _crlItems         :: !(Maybe [CommentReply])
    , _crlSelfLink      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentReplyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crlNextPageToken'
--
-- * 'crlNextLink'
--
-- * 'crlKind'
--
-- * 'crlItems'
--
-- * 'crlSelfLink'
commentReplyList
    :: CommentReplyList
commentReplyList =
    CommentReplyList
    { _crlNextPageToken = Nothing
    , _crlNextLink = Nothing
    , _crlKind = "drive#commentReplyList"
    , _crlItems = Nothing
    , _crlSelfLink = Nothing
    }

-- | The token to use to request the next page of results.
crlNextPageToken :: Lens' CommentReplyList (Maybe Text)
crlNextPageToken
  = lens _crlNextPageToken
      (\ s a -> s{_crlNextPageToken = a})

-- | A link to the next page of replies.
crlNextLink :: Lens' CommentReplyList (Maybe Text)
crlNextLink
  = lens _crlNextLink (\ s a -> s{_crlNextLink = a})

-- | This is always drive#commentReplyList.
crlKind :: Lens' CommentReplyList Text
crlKind = lens _crlKind (\ s a -> s{_crlKind = a})

-- | List of reply.
crlItems :: Lens' CommentReplyList [CommentReply]
crlItems
  = lens _crlItems (\ s a -> s{_crlItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
crlSelfLink :: Lens' CommentReplyList (Maybe Text)
crlSelfLink
  = lens _crlSelfLink (\ s a -> s{_crlSelfLink = a})

instance FromJSON CommentReplyList where
        parseJSON
          = withObject "CommentReplyList"
              (\ o ->
                 CommentReplyList <$>
                   (o .:? "nextPageToken") <*> (o .:? "nextLink") <*>
                     (o .:? "kind" .!= "drive#commentReplyList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON CommentReplyList where
        toJSON CommentReplyList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _crlNextPageToken,
                  ("nextLink" .=) <$> _crlNextLink,
                  Just ("kind" .= _crlKind),
                  ("items" .=) <$> _crlItems,
                  ("selfLink" .=) <$> _crlSelfLink])

-- | Metadata about video media. This will only be present for video types.
--
-- /See:/ 'fileVideoMediaMetadata' smart constructor.
data FileVideoMediaMetadata = FileVideoMediaMetadata
    { _fvmmHeight         :: !(Maybe (JSONText Int32))
    , _fvmmWidth          :: !(Maybe (JSONText Int32))
    , _fvmmDurationMillis :: !(Maybe (JSONText Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileVideoMediaMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fvmmHeight'
--
-- * 'fvmmWidth'
--
-- * 'fvmmDurationMillis'
fileVideoMediaMetadata
    :: FileVideoMediaMetadata
fileVideoMediaMetadata =
    FileVideoMediaMetadata
    { _fvmmHeight = Nothing
    , _fvmmWidth = Nothing
    , _fvmmDurationMillis = Nothing
    }

-- | The height of the video in pixels.
fvmmHeight :: Lens' FileVideoMediaMetadata (Maybe Int32)
fvmmHeight
  = lens _fvmmHeight (\ s a -> s{_fvmmHeight = a}) .
      mapping _Coerce

-- | The width of the video in pixels.
fvmmWidth :: Lens' FileVideoMediaMetadata (Maybe Int32)
fvmmWidth
  = lens _fvmmWidth (\ s a -> s{_fvmmWidth = a}) .
      mapping _Coerce

-- | The duration of the video in milliseconds.
fvmmDurationMillis :: Lens' FileVideoMediaMetadata (Maybe Int64)
fvmmDurationMillis
  = lens _fvmmDurationMillis
      (\ s a -> s{_fvmmDurationMillis = a})
      . mapping _Coerce

instance FromJSON FileVideoMediaMetadata where
        parseJSON
          = withObject "FileVideoMediaMetadata"
              (\ o ->
                 FileVideoMediaMetadata <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "durationMillis"))

instance ToJSON FileVideoMediaMetadata where
        toJSON FileVideoMediaMetadata{..}
          = object
              (catMaybes
                 [("height" .=) <$> _fvmmHeight,
                  ("width" .=) <$> _fvmmWidth,
                  ("durationMillis" .=) <$> _fvmmDurationMillis])

-- | Representation of a change to a file.
--
-- /See:/ 'change' smart constructor.
data Change = Change
    { _chaKind             :: !Text
    , _chaSelfLink         :: !(Maybe Text)
    , _chaModificationDate :: !(Maybe DateTime')
    , _chaId               :: !(Maybe (JSONText Int64))
    , _chaDeleted          :: !(Maybe Bool)
    , _chaFileId           :: !(Maybe Text)
    , _chaFile             :: !(Maybe File)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Change' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaKind'
--
-- * 'chaSelfLink'
--
-- * 'chaModificationDate'
--
-- * 'chaId'
--
-- * 'chaDeleted'
--
-- * 'chaFileId'
--
-- * 'chaFile'
change
    :: Change
change =
    Change
    { _chaKind = "drive#change"
    , _chaSelfLink = Nothing
    , _chaModificationDate = Nothing
    , _chaId = Nothing
    , _chaDeleted = Nothing
    , _chaFileId = Nothing
    , _chaFile = Nothing
    }

-- | This is always drive#change.
chaKind :: Lens' Change Text
chaKind = lens _chaKind (\ s a -> s{_chaKind = a})

-- | A link back to this change.
chaSelfLink :: Lens' Change (Maybe Text)
chaSelfLink
  = lens _chaSelfLink (\ s a -> s{_chaSelfLink = a})

-- | The time of this modification.
chaModificationDate :: Lens' Change (Maybe UTCTime)
chaModificationDate
  = lens _chaModificationDate
      (\ s a -> s{_chaModificationDate = a})
      . mapping _DateTime

-- | The ID of the change.
chaId :: Lens' Change (Maybe Int64)
chaId
  = lens _chaId (\ s a -> s{_chaId = a}) .
      mapping _Coerce

-- | Whether the file has been deleted.
chaDeleted :: Lens' Change (Maybe Bool)
chaDeleted
  = lens _chaDeleted (\ s a -> s{_chaDeleted = a})

-- | The ID of the file associated with this change.
chaFileId :: Lens' Change (Maybe Text)
chaFileId
  = lens _chaFileId (\ s a -> s{_chaFileId = a})

-- | The updated state of the file. Present if the file has not been deleted.
chaFile :: Lens' Change (Maybe File)
chaFile = lens _chaFile (\ s a -> s{_chaFile = a})

instance FromJSON Change where
        parseJSON
          = withObject "Change"
              (\ o ->
                 Change <$>
                   (o .:? "kind" .!= "drive#change") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "modificationDate")
                     <*> (o .:? "id")
                     <*> (o .:? "deleted")
                     <*> (o .:? "fileId")
                     <*> (o .:? "file"))

instance ToJSON Change where
        toJSON Change{..}
          = object
              (catMaybes
                 [Just ("kind" .= _chaKind),
                  ("selfLink" .=) <$> _chaSelfLink,
                  ("modificationDate" .=) <$> _chaModificationDate,
                  ("id" .=) <$> _chaId, ("deleted" .=) <$> _chaDeleted,
                  ("fileId" .=) <$> _chaFileId,
                  ("file" .=) <$> _chaFile])

-- | The apps resource provides a list of the apps that a user has installed,
-- with information about each app\'s supported MIME types, file
-- extensions, and other details.
--
-- /See:/ 'app' smart constructor.
data App = App
    { _aLongDescription         :: !(Maybe Text)
    , _aOpenURLTemplate         :: !(Maybe Text)
    , _aAuthorized              :: !(Maybe Bool)
    , _aObjectType              :: !(Maybe Text)
    , _aSecondaryMimeTypes      :: !(Maybe [Text])
    , _aCreateInFolderTemplate  :: !(Maybe Text)
    , _aKind                    :: !Text
    , _aIcons                   :: !(Maybe [AppIconsItem])
    , _aProductURL              :: !(Maybe Text)
    , _aUseByDefault            :: !(Maybe Bool)
    , _aShortDescription        :: !(Maybe Text)
    , _aName                    :: !(Maybe Text)
    , _aCreateURL               :: !(Maybe Text)
    , _aId                      :: !(Maybe Text)
    , _aPrimaryFileExtensions   :: !(Maybe [Text])
    , _aInstalled               :: !(Maybe Bool)
    , _aSupportsCreate          :: !(Maybe Bool)
    , _aPrimaryMimeTypes        :: !(Maybe [Text])
    , _aHasDriveWideScope       :: !(Maybe Bool)
    , _aProductId               :: !(Maybe Text)
    , _aSecondaryFileExtensions :: !(Maybe [Text])
    , _aSupportsMultiOpen       :: !(Maybe Bool)
    , _aSupportsImport          :: !(Maybe Bool)
    , _aSupportsOfflineCreate   :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'App' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aLongDescription'
--
-- * 'aOpenURLTemplate'
--
-- * 'aAuthorized'
--
-- * 'aObjectType'
--
-- * 'aSecondaryMimeTypes'
--
-- * 'aCreateInFolderTemplate'
--
-- * 'aKind'
--
-- * 'aIcons'
--
-- * 'aProductURL'
--
-- * 'aUseByDefault'
--
-- * 'aShortDescription'
--
-- * 'aName'
--
-- * 'aCreateURL'
--
-- * 'aId'
--
-- * 'aPrimaryFileExtensions'
--
-- * 'aInstalled'
--
-- * 'aSupportsCreate'
--
-- * 'aPrimaryMimeTypes'
--
-- * 'aHasDriveWideScope'
--
-- * 'aProductId'
--
-- * 'aSecondaryFileExtensions'
--
-- * 'aSupportsMultiOpen'
--
-- * 'aSupportsImport'
--
-- * 'aSupportsOfflineCreate'
app
    :: App
app =
    App
    { _aLongDescription = Nothing
    , _aOpenURLTemplate = Nothing
    , _aAuthorized = Nothing
    , _aObjectType = Nothing
    , _aSecondaryMimeTypes = Nothing
    , _aCreateInFolderTemplate = Nothing
    , _aKind = "drive#app"
    , _aIcons = Nothing
    , _aProductURL = Nothing
    , _aUseByDefault = Nothing
    , _aShortDescription = Nothing
    , _aName = Nothing
    , _aCreateURL = Nothing
    , _aId = Nothing
    , _aPrimaryFileExtensions = Nothing
    , _aInstalled = Nothing
    , _aSupportsCreate = Nothing
    , _aPrimaryMimeTypes = Nothing
    , _aHasDriveWideScope = Nothing
    , _aProductId = Nothing
    , _aSecondaryFileExtensions = Nothing
    , _aSupportsMultiOpen = Nothing
    , _aSupportsImport = Nothing
    , _aSupportsOfflineCreate = Nothing
    }

-- | A long description of the app.
aLongDescription :: Lens' App (Maybe Text)
aLongDescription
  = lens _aLongDescription
      (\ s a -> s{_aLongDescription = a})

-- | The template url for opening files with this app. The template will
-- contain {ids} and\/or {exportIds} to be replaced by the actual file ids.
-- See Open Files for the full documentation.
aOpenURLTemplate :: Lens' App (Maybe Text)
aOpenURLTemplate
  = lens _aOpenURLTemplate
      (\ s a -> s{_aOpenURLTemplate = a})

-- | Whether the app is authorized to access data on the user\'s Drive.
aAuthorized :: Lens' App (Maybe Bool)
aAuthorized
  = lens _aAuthorized (\ s a -> s{_aAuthorized = a})

-- | The type of object this app creates (e.g. Chart). If empty, the app name
-- should be used instead.
aObjectType :: Lens' App (Maybe Text)
aObjectType
  = lens _aObjectType (\ s a -> s{_aObjectType = a})

-- | The list of secondary mime types.
aSecondaryMimeTypes :: Lens' App [Text]
aSecondaryMimeTypes
  = lens _aSecondaryMimeTypes
      (\ s a -> s{_aSecondaryMimeTypes = a})
      . _Default
      . _Coerce

-- | The template url to create a new file with this app in a given folder.
-- The template will contain {folderId} to be replaced by the folder to
-- create the new file in.
aCreateInFolderTemplate :: Lens' App (Maybe Text)
aCreateInFolderTemplate
  = lens _aCreateInFolderTemplate
      (\ s a -> s{_aCreateInFolderTemplate = a})

-- | This is always drive#app.
aKind :: Lens' App Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The various icons for the app.
aIcons :: Lens' App [AppIconsItem]
aIcons
  = lens _aIcons (\ s a -> s{_aIcons = a}) . _Default .
      _Coerce

-- | A link to the product listing for this app.
aProductURL :: Lens' App (Maybe Text)
aProductURL
  = lens _aProductURL (\ s a -> s{_aProductURL = a})

-- | Whether the app is selected as the default handler for the types it
-- supports.
aUseByDefault :: Lens' App (Maybe Bool)
aUseByDefault
  = lens _aUseByDefault
      (\ s a -> s{_aUseByDefault = a})

-- | A short description of the app.
aShortDescription :: Lens' App (Maybe Text)
aShortDescription
  = lens _aShortDescription
      (\ s a -> s{_aShortDescription = a})

-- | The name of the app.
aName :: Lens' App (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The url to create a new file with this app.
aCreateURL :: Lens' App (Maybe Text)
aCreateURL
  = lens _aCreateURL (\ s a -> s{_aCreateURL = a})

-- | The ID of the app.
aId :: Lens' App (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | The list of primary file extensions.
aPrimaryFileExtensions :: Lens' App [Text]
aPrimaryFileExtensions
  = lens _aPrimaryFileExtensions
      (\ s a -> s{_aPrimaryFileExtensions = a})
      . _Default
      . _Coerce

-- | Whether the app is installed.
aInstalled :: Lens' App (Maybe Bool)
aInstalled
  = lens _aInstalled (\ s a -> s{_aInstalled = a})

-- | Whether this app supports creating new objects.
aSupportsCreate :: Lens' App (Maybe Bool)
aSupportsCreate
  = lens _aSupportsCreate
      (\ s a -> s{_aSupportsCreate = a})

-- | The list of primary mime types.
aPrimaryMimeTypes :: Lens' App [Text]
aPrimaryMimeTypes
  = lens _aPrimaryMimeTypes
      (\ s a -> s{_aPrimaryMimeTypes = a})
      . _Default
      . _Coerce

-- | Whether the app has drive-wide scope. An app with drive-wide scope can
-- access all files in the user\'s drive.
aHasDriveWideScope :: Lens' App (Maybe Bool)
aHasDriveWideScope
  = lens _aHasDriveWideScope
      (\ s a -> s{_aHasDriveWideScope = a})

-- | The ID of the product listing for this app.
aProductId :: Lens' App (Maybe Text)
aProductId
  = lens _aProductId (\ s a -> s{_aProductId = a})

-- | The list of secondary file extensions.
aSecondaryFileExtensions :: Lens' App [Text]
aSecondaryFileExtensions
  = lens _aSecondaryFileExtensions
      (\ s a -> s{_aSecondaryFileExtensions = a})
      . _Default
      . _Coerce

-- | Whether this app supports opening more than one file.
aSupportsMultiOpen :: Lens' App (Maybe Bool)
aSupportsMultiOpen
  = lens _aSupportsMultiOpen
      (\ s a -> s{_aSupportsMultiOpen = a})

-- | Whether this app supports importing Google Docs.
aSupportsImport :: Lens' App (Maybe Bool)
aSupportsImport
  = lens _aSupportsImport
      (\ s a -> s{_aSupportsImport = a})

-- | Whether this app supports creating new files when offline.
aSupportsOfflineCreate :: Lens' App (Maybe Bool)
aSupportsOfflineCreate
  = lens _aSupportsOfflineCreate
      (\ s a -> s{_aSupportsOfflineCreate = a})

instance FromJSON App where
        parseJSON
          = withObject "App"
              (\ o ->
                 App <$>
                   (o .:? "longDescription") <*>
                     (o .:? "openUrlTemplate")
                     <*> (o .:? "authorized")
                     <*> (o .:? "objectType")
                     <*> (o .:? "secondaryMimeTypes" .!= mempty)
                     <*> (o .:? "createInFolderTemplate")
                     <*> (o .:? "kind" .!= "drive#app")
                     <*> (o .:? "icons" .!= mempty)
                     <*> (o .:? "productUrl")
                     <*> (o .:? "useByDefault")
                     <*> (o .:? "shortDescription")
                     <*> (o .:? "name")
                     <*> (o .:? "createUrl")
                     <*> (o .:? "id")
                     <*> (o .:? "primaryFileExtensions" .!= mempty)
                     <*> (o .:? "installed")
                     <*> (o .:? "supportsCreate")
                     <*> (o .:? "primaryMimeTypes" .!= mempty)
                     <*> (o .:? "hasDriveWideScope")
                     <*> (o .:? "productId")
                     <*> (o .:? "secondaryFileExtensions" .!= mempty)
                     <*> (o .:? "supportsMultiOpen")
                     <*> (o .:? "supportsImport")
                     <*> (o .:? "supportsOfflineCreate"))

instance ToJSON App where
        toJSON App{..}
          = object
              (catMaybes
                 [("longDescription" .=) <$> _aLongDescription,
                  ("openUrlTemplate" .=) <$> _aOpenURLTemplate,
                  ("authorized" .=) <$> _aAuthorized,
                  ("objectType" .=) <$> _aObjectType,
                  ("secondaryMimeTypes" .=) <$> _aSecondaryMimeTypes,
                  ("createInFolderTemplate" .=) <$>
                    _aCreateInFolderTemplate,
                  Just ("kind" .= _aKind), ("icons" .=) <$> _aIcons,
                  ("productUrl" .=) <$> _aProductURL,
                  ("useByDefault" .=) <$> _aUseByDefault,
                  ("shortDescription" .=) <$> _aShortDescription,
                  ("name" .=) <$> _aName,
                  ("createUrl" .=) <$> _aCreateURL, ("id" .=) <$> _aId,
                  ("primaryFileExtensions" .=) <$>
                    _aPrimaryFileExtensions,
                  ("installed" .=) <$> _aInstalled,
                  ("supportsCreate" .=) <$> _aSupportsCreate,
                  ("primaryMimeTypes" .=) <$> _aPrimaryMimeTypes,
                  ("hasDriveWideScope" .=) <$> _aHasDriveWideScope,
                  ("productId" .=) <$> _aProductId,
                  ("secondaryFileExtensions" .=) <$>
                    _aSecondaryFileExtensions,
                  ("supportsMultiOpen" .=) <$> _aSupportsMultiOpen,
                  ("supportsImport" .=) <$> _aSupportsImport,
                  ("supportsOfflineCreate" .=) <$>
                    _aSupportsOfflineCreate])

-- | A reference to a folder\'s child.
--
-- /See:/ 'childReference' smart constructor.
data ChildReference = ChildReference
    { _crChildLink :: !(Maybe Text)
    , _crKind      :: !Text
    , _crSelfLink  :: !(Maybe Text)
    , _crId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crChildLink'
--
-- * 'crKind'
--
-- * 'crSelfLink'
--
-- * 'crId'
childReference
    :: ChildReference
childReference =
    ChildReference
    { _crChildLink = Nothing
    , _crKind = "drive#childReference"
    , _crSelfLink = Nothing
    , _crId = Nothing
    }

-- | A link to the child.
crChildLink :: Lens' ChildReference (Maybe Text)
crChildLink
  = lens _crChildLink (\ s a -> s{_crChildLink = a})

-- | This is always drive#childReference.
crKind :: Lens' ChildReference Text
crKind = lens _crKind (\ s a -> s{_crKind = a})

-- | A link back to this reference.
crSelfLink :: Lens' ChildReference (Maybe Text)
crSelfLink
  = lens _crSelfLink (\ s a -> s{_crSelfLink = a})

-- | The ID of the child.
crId :: Lens' ChildReference (Maybe Text)
crId = lens _crId (\ s a -> s{_crId = a})

instance FromJSON ChildReference where
        parseJSON
          = withObject "ChildReference"
              (\ o ->
                 ChildReference <$>
                   (o .:? "childLink") <*>
                     (o .:? "kind" .!= "drive#childReference")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id"))

instance ToJSON ChildReference where
        toJSON ChildReference{..}
          = object
              (catMaybes
                 [("childLink" .=) <$> _crChildLink,
                  Just ("kind" .= _crKind),
                  ("selfLink" .=) <$> _crSelfLink,
                  ("id" .=) <$> _crId])

--
-- /See:/ 'aboutMaxUploadSizesItem' smart constructor.
data AboutMaxUploadSizesItem = AboutMaxUploadSizesItem
    { _amusiSize :: !(Maybe (JSONText Int64))
    , _amusiType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutMaxUploadSizesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amusiSize'
--
-- * 'amusiType'
aboutMaxUploadSizesItem
    :: AboutMaxUploadSizesItem
aboutMaxUploadSizesItem =
    AboutMaxUploadSizesItem
    { _amusiSize = Nothing
    , _amusiType = Nothing
    }

-- | The max upload size for this type.
amusiSize :: Lens' AboutMaxUploadSizesItem (Maybe Int64)
amusiSize
  = lens _amusiSize (\ s a -> s{_amusiSize = a}) .
      mapping _Coerce

-- | The file type.
amusiType :: Lens' AboutMaxUploadSizesItem (Maybe Text)
amusiType
  = lens _amusiType (\ s a -> s{_amusiType = a})

instance FromJSON AboutMaxUploadSizesItem where
        parseJSON
          = withObject "AboutMaxUploadSizesItem"
              (\ o ->
                 AboutMaxUploadSizesItem <$>
                   (o .:? "size") <*> (o .:? "type"))

instance ToJSON AboutMaxUploadSizesItem where
        toJSON AboutMaxUploadSizesItem{..}
          = object
              (catMaybes
                 [("size" .=) <$> _amusiSize,
                  ("type" .=) <$> _amusiType])

-- | A JSON representation of a reply to a comment on a file in Google Drive.
--
-- /See:/ 'commentReply' smart constructor.
data CommentReply = CommentReply
    { _comHTMLContent  :: !(Maybe Text)
    , _comKind         :: !Text
    , _comContent      :: !(Maybe Text)
    , _comCreatedDate  :: !(Maybe DateTime')
    , _comReplyId      :: !(Maybe Text)
    , _comAuthor       :: !(Maybe User)
    , _comModifiedDate :: !(Maybe DateTime')
    , _comDeleted      :: !(Maybe Bool)
    , _comVerb         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comHTMLContent'
--
-- * 'comKind'
--
-- * 'comContent'
--
-- * 'comCreatedDate'
--
-- * 'comReplyId'
--
-- * 'comAuthor'
--
-- * 'comModifiedDate'
--
-- * 'comDeleted'
--
-- * 'comVerb'
commentReply
    :: CommentReply
commentReply =
    CommentReply
    { _comHTMLContent = Nothing
    , _comKind = "drive#commentReply"
    , _comContent = Nothing
    , _comCreatedDate = Nothing
    , _comReplyId = Nothing
    , _comAuthor = Nothing
    , _comModifiedDate = Nothing
    , _comDeleted = Nothing
    , _comVerb = Nothing
    }

-- | HTML formatted content for this reply.
comHTMLContent :: Lens' CommentReply (Maybe Text)
comHTMLContent
  = lens _comHTMLContent
      (\ s a -> s{_comHTMLContent = a})

-- | This is always drive#commentReply.
comKind :: Lens' CommentReply Text
comKind = lens _comKind (\ s a -> s{_comKind = a})

-- | The plain text content used to create this reply. This is not HTML safe
-- and should only be used as a starting point to make edits to a reply\'s
-- content. This field is required on inserts if no verb is specified
-- (resolve\/reopen).
comContent :: Lens' CommentReply (Maybe Text)
comContent
  = lens _comContent (\ s a -> s{_comContent = a})

-- | The date when this reply was first created.
comCreatedDate :: Lens' CommentReply (Maybe UTCTime)
comCreatedDate
  = lens _comCreatedDate
      (\ s a -> s{_comCreatedDate = a})
      . mapping _DateTime

-- | The ID of the reply.
comReplyId :: Lens' CommentReply (Maybe Text)
comReplyId
  = lens _comReplyId (\ s a -> s{_comReplyId = a})

-- | The user who wrote this reply.
comAuthor :: Lens' CommentReply (Maybe User)
comAuthor
  = lens _comAuthor (\ s a -> s{_comAuthor = a})

-- | The date when this reply was last modified.
comModifiedDate :: Lens' CommentReply (Maybe UTCTime)
comModifiedDate
  = lens _comModifiedDate
      (\ s a -> s{_comModifiedDate = a})
      . mapping _DateTime

-- | Whether this reply has been deleted. If a reply has been deleted the
-- content will be cleared and this will only represent a reply that once
-- existed.
comDeleted :: Lens' CommentReply (Maybe Bool)
comDeleted
  = lens _comDeleted (\ s a -> s{_comDeleted = a})

-- | The action this reply performed to the parent comment. When creating a
-- new reply this is the action to be perform to the parent comment.
-- Possible values are: - \"resolve\" - To resolve a comment. - \"reopen\"
-- - To reopen (un-resolve) a comment.
comVerb :: Lens' CommentReply (Maybe Text)
comVerb = lens _comVerb (\ s a -> s{_comVerb = a})

instance FromJSON CommentReply where
        parseJSON
          = withObject "CommentReply"
              (\ o ->
                 CommentReply <$>
                   (o .:? "htmlContent") <*>
                     (o .:? "kind" .!= "drive#commentReply")
                     <*> (o .:? "content")
                     <*> (o .:? "createdDate")
                     <*> (o .:? "replyId")
                     <*> (o .:? "author")
                     <*> (o .:? "modifiedDate")
                     <*> (o .:? "deleted")
                     <*> (o .:? "verb"))

instance ToJSON CommentReply where
        toJSON CommentReply{..}
          = object
              (catMaybes
                 [("htmlContent" .=) <$> _comHTMLContent,
                  Just ("kind" .= _comKind),
                  ("content" .=) <$> _comContent,
                  ("createdDate" .=) <$> _comCreatedDate,
                  ("replyId" .=) <$> _comReplyId,
                  ("author" .=) <$> _comAuthor,
                  ("modifiedDate" .=) <$> _comModifiedDate,
                  ("deleted" .=) <$> _comDeleted,
                  ("verb" .=) <$> _comVerb])

--
-- /See:/ 'aboutQuotaBytesByServiceItem' smart constructor.
data AboutQuotaBytesByServiceItem = AboutQuotaBytesByServiceItem
    { _aqbbsiBytesUsed   :: !(Maybe (JSONText Int64))
    , _aqbbsiServiceName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutQuotaBytesByServiceItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aqbbsiBytesUsed'
--
-- * 'aqbbsiServiceName'
aboutQuotaBytesByServiceItem
    :: AboutQuotaBytesByServiceItem
aboutQuotaBytesByServiceItem =
    AboutQuotaBytesByServiceItem
    { _aqbbsiBytesUsed = Nothing
    , _aqbbsiServiceName = Nothing
    }

-- | The storage quota bytes used by the service.
aqbbsiBytesUsed :: Lens' AboutQuotaBytesByServiceItem (Maybe Int64)
aqbbsiBytesUsed
  = lens _aqbbsiBytesUsed
      (\ s a -> s{_aqbbsiBytesUsed = a})
      . mapping _Coerce

-- | The service\'s name, e.g. DRIVE, GMAIL, or PHOTOS.
aqbbsiServiceName :: Lens' AboutQuotaBytesByServiceItem (Maybe Text)
aqbbsiServiceName
  = lens _aqbbsiServiceName
      (\ s a -> s{_aqbbsiServiceName = a})

instance FromJSON AboutQuotaBytesByServiceItem where
        parseJSON
          = withObject "AboutQuotaBytesByServiceItem"
              (\ o ->
                 AboutQuotaBytesByServiceItem <$>
                   (o .:? "bytesUsed") <*> (o .:? "serviceName"))

instance ToJSON AboutQuotaBytesByServiceItem where
        toJSON AboutQuotaBytesByServiceItem{..}
          = object
              (catMaybes
                 [("bytesUsed" .=) <$> _aqbbsiBytesUsed,
                  ("serviceName" .=) <$> _aqbbsiServiceName])

-- | The JSON template for a user.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _uIsAuthenticatedUser :: !(Maybe Bool)
    , _uKind                :: !Text
    , _uPicture             :: !(Maybe UserPicture)
    , _uEmailAddress        :: !(Maybe Text)
    , _uDisplayName         :: !(Maybe Text)
    , _uPermissionId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uIsAuthenticatedUser'
--
-- * 'uKind'
--
-- * 'uPicture'
--
-- * 'uEmailAddress'
--
-- * 'uDisplayName'
--
-- * 'uPermissionId'
user
    :: User
user =
    User
    { _uIsAuthenticatedUser = Nothing
    , _uKind = "drive#user"
    , _uPicture = Nothing
    , _uEmailAddress = Nothing
    , _uDisplayName = Nothing
    , _uPermissionId = Nothing
    }

-- | Whether this user is the same as the authenticated user for whom the
-- request was made.
uIsAuthenticatedUser :: Lens' User (Maybe Bool)
uIsAuthenticatedUser
  = lens _uIsAuthenticatedUser
      (\ s a -> s{_uIsAuthenticatedUser = a})

-- | This is always drive#user.
uKind :: Lens' User Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | The user\'s profile picture.
uPicture :: Lens' User (Maybe UserPicture)
uPicture = lens _uPicture (\ s a -> s{_uPicture = a})

-- | The email address of the user.
uEmailAddress :: Lens' User (Maybe Text)
uEmailAddress
  = lens _uEmailAddress
      (\ s a -> s{_uEmailAddress = a})

-- | A plain text displayable name for this user.
uDisplayName :: Lens' User (Maybe Text)
uDisplayName
  = lens _uDisplayName (\ s a -> s{_uDisplayName = a})

-- | The user\'s ID as visible in the permissions collection.
uPermissionId :: Lens' User (Maybe Text)
uPermissionId
  = lens _uPermissionId
      (\ s a -> s{_uPermissionId = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User <$>
                   (o .:? "isAuthenticatedUser") <*>
                     (o .:? "kind" .!= "drive#user")
                     <*> (o .:? "picture")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "displayName")
                     <*> (o .:? "permissionId"))

instance ToJSON User where
        toJSON User{..}
          = object
              (catMaybes
                 [("isAuthenticatedUser" .=) <$>
                    _uIsAuthenticatedUser,
                  Just ("kind" .= _uKind),
                  ("picture" .=) <$> _uPicture,
                  ("emailAddress" .=) <$> _uEmailAddress,
                  ("displayName" .=) <$> _uDisplayName,
                  ("permissionId" .=) <$> _uPermissionId])

--
-- /See:/ 'aboutExportFormatsItem' smart constructor.
data AboutExportFormatsItem = AboutExportFormatsItem
    { _aefiTargets :: !(Maybe [Text])
    , _aefiSource  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutExportFormatsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aefiTargets'
--
-- * 'aefiSource'
aboutExportFormatsItem
    :: AboutExportFormatsItem
aboutExportFormatsItem =
    AboutExportFormatsItem
    { _aefiTargets = Nothing
    , _aefiSource = Nothing
    }

-- | The possible content types to convert to.
aefiTargets :: Lens' AboutExportFormatsItem [Text]
aefiTargets
  = lens _aefiTargets (\ s a -> s{_aefiTargets = a}) .
      _Default
      . _Coerce

-- | The content type to convert from.
aefiSource :: Lens' AboutExportFormatsItem (Maybe Text)
aefiSource
  = lens _aefiSource (\ s a -> s{_aefiSource = a})

instance FromJSON AboutExportFormatsItem where
        parseJSON
          = withObject "AboutExportFormatsItem"
              (\ o ->
                 AboutExportFormatsItem <$>
                   (o .:? "targets" .!= mempty) <*> (o .:? "source"))

instance ToJSON AboutExportFormatsItem where
        toJSON AboutExportFormatsItem{..}
          = object
              (catMaybes
                 [("targets" .=) <$> _aefiTargets,
                  ("source" .=) <$> _aefiSource])

-- | A list of changes for a user.
--
-- /See:/ 'changeList' smart constructor.
data ChangeList = ChangeList
    { _cllEtag            :: !(Maybe Text)
    , _cllNextPageToken   :: !(Maybe Text)
    , _cllNextLink        :: !(Maybe Text)
    , _cllKind            :: !Text
    , _cllItems           :: !(Maybe [Change])
    , _cllSelfLink        :: !(Maybe Text)
    , _cllLargestChangeId :: !(Maybe (JSONText Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllEtag'
--
-- * 'cllNextPageToken'
--
-- * 'cllNextLink'
--
-- * 'cllKind'
--
-- * 'cllItems'
--
-- * 'cllSelfLink'
--
-- * 'cllLargestChangeId'
changeList
    :: ChangeList
changeList =
    ChangeList
    { _cllEtag = Nothing
    , _cllNextPageToken = Nothing
    , _cllNextLink = Nothing
    , _cllKind = "drive#changeList"
    , _cllItems = Nothing
    , _cllSelfLink = Nothing
    , _cllLargestChangeId = Nothing
    }

-- | The ETag of the list.
cllEtag :: Lens' ChangeList (Maybe Text)
cllEtag = lens _cllEtag (\ s a -> s{_cllEtag = a})

-- | The page token for the next page of changes.
cllNextPageToken :: Lens' ChangeList (Maybe Text)
cllNextPageToken
  = lens _cllNextPageToken
      (\ s a -> s{_cllNextPageToken = a})

-- | A link to the next page of changes.
cllNextLink :: Lens' ChangeList (Maybe Text)
cllNextLink
  = lens _cllNextLink (\ s a -> s{_cllNextLink = a})

-- | This is always drive#changeList.
cllKind :: Lens' ChangeList Text
cllKind = lens _cllKind (\ s a -> s{_cllKind = a})

-- | The actual list of changes.
cllItems :: Lens' ChangeList [Change]
cllItems
  = lens _cllItems (\ s a -> s{_cllItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
cllSelfLink :: Lens' ChangeList (Maybe Text)
cllSelfLink
  = lens _cllSelfLink (\ s a -> s{_cllSelfLink = a})

-- | The current largest change ID.
cllLargestChangeId :: Lens' ChangeList (Maybe Int64)
cllLargestChangeId
  = lens _cllLargestChangeId
      (\ s a -> s{_cllLargestChangeId = a})
      . mapping _Coerce

instance FromJSON ChangeList where
        parseJSON
          = withObject "ChangeList"
              (\ o ->
                 ChangeList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "nextLink")
                     <*> (o .:? "kind" .!= "drive#changeList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "largestChangeId"))

instance ToJSON ChangeList where
        toJSON ChangeList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cllEtag,
                  ("nextPageToken" .=) <$> _cllNextPageToken,
                  ("nextLink" .=) <$> _cllNextLink,
                  Just ("kind" .= _cllKind),
                  ("items" .=) <$> _cllItems,
                  ("selfLink" .=) <$> _cllSelfLink,
                  ("largestChangeId" .=) <$> _cllLargestChangeId])

-- | Links for exporting Google Docs to specific formats.
--
-- /See:/ 'revisionExportLinks' smart constructor.
newtype RevisionExportLinks = RevisionExportLinks
    { _relAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionExportLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'relAddtional'
revisionExportLinks
    :: HashMap Text Text -- ^ 'relAddtional'
    -> RevisionExportLinks
revisionExportLinks pRelAddtional_ =
    RevisionExportLinks
    { _relAddtional = _Coerce # pRelAddtional_
    }

-- | A mapping from export format to URL
relAddtional :: Lens' RevisionExportLinks (HashMap Text Text)
relAddtional
  = lens _relAddtional (\ s a -> s{_relAddtional = a})
      . _Coerce

instance FromJSON RevisionExportLinks where
        parseJSON
          = withObject "RevisionExportLinks"
              (\ o -> RevisionExportLinks <$> (parseJSONObject o))

instance ToJSON RevisionExportLinks where
        toJSON = toJSON . _relAddtional

-- | Indexable text attributes for the file (can only be written)
--
-- /See:/ 'fileIndexableText' smart constructor.
newtype FileIndexableText = FileIndexableText
    { _fitText :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileIndexableText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fitText'
fileIndexableText
    :: FileIndexableText
fileIndexableText =
    FileIndexableText
    { _fitText = Nothing
    }

-- | The text to be indexed for this file.
fitText :: Lens' FileIndexableText (Maybe Text)
fitText = lens _fitText (\ s a -> s{_fitText = a})

instance FromJSON FileIndexableText where
        parseJSON
          = withObject "FileIndexableText"
              (\ o -> FileIndexableText <$> (o .:? "text"))

instance ToJSON FileIndexableText where
        toJSON FileIndexableText{..}
          = object (catMaybes [("text" .=) <$> _fitText])

--
-- /See:/ 'aboutFeaturesItem' smart constructor.
data AboutFeaturesItem = AboutFeaturesItem
    { _afiFeatureRate :: !(Maybe (JSONText Double))
    , _afiFeatureName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutFeaturesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afiFeatureRate'
--
-- * 'afiFeatureName'
aboutFeaturesItem
    :: AboutFeaturesItem
aboutFeaturesItem =
    AboutFeaturesItem
    { _afiFeatureRate = Nothing
    , _afiFeatureName = Nothing
    }

-- | The request limit rate for this feature, in queries per second.
afiFeatureRate :: Lens' AboutFeaturesItem (Maybe Double)
afiFeatureRate
  = lens _afiFeatureRate
      (\ s a -> s{_afiFeatureRate = a})
      . mapping _Coerce

-- | The name of the feature.
afiFeatureName :: Lens' AboutFeaturesItem (Maybe Text)
afiFeatureName
  = lens _afiFeatureName
      (\ s a -> s{_afiFeatureName = a})

instance FromJSON AboutFeaturesItem where
        parseJSON
          = withObject "AboutFeaturesItem"
              (\ o ->
                 AboutFeaturesItem <$>
                   (o .:? "featureRate") <*> (o .:? "featureName"))

instance ToJSON AboutFeaturesItem where
        toJSON AboutFeaturesItem{..}
          = object
              (catMaybes
                 [("featureRate" .=) <$> _afiFeatureRate,
                  ("featureName" .=) <$> _afiFeatureName])

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'channelParams' smart constructor.
newtype ChannelParams = ChannelParams
    { _cpAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpAddtional'
channelParams
    :: HashMap Text Text -- ^ 'cpAddtional'
    -> ChannelParams
channelParams pCpAddtional_ =
    ChannelParams
    { _cpAddtional = _Coerce # pCpAddtional_
    }

-- | Declares a new parameter by name.
cpAddtional :: Lens' ChannelParams (HashMap Text Text)
cpAddtional
  = lens _cpAddtional (\ s a -> s{_cpAddtional = a}) .
      _Coerce

instance FromJSON ChannelParams where
        parseJSON
          = withObject "ChannelParams"
              (\ o -> ChannelParams <$> (parseJSONObject o))

instance ToJSON ChannelParams where
        toJSON = toJSON . _cpAddtional

-- | An item with user information and settings.
--
-- /See:/ 'about' smart constructor.
data About = About
    { _aboExportFormats           :: !(Maybe [AboutExportFormatsItem])
    , _aboRemainingChangeIds      :: !(Maybe (JSONText Int64))
    , _aboLanguageCode            :: !(Maybe Text)
    , _aboEtag                    :: !(Maybe Text)
    , _aboImportFormats           :: !(Maybe [AboutImportFormatsItem])
    , _aboKind                    :: !Text
    , _aboDomainSharingPolicy     :: !(Maybe Text)
    , _aboQuotaBytesUsedInTrash   :: !(Maybe (JSONText Int64))
    , _aboQuotaType               :: !(Maybe Text)
    , _aboMaxUploadSizes          :: !(Maybe [AboutMaxUploadSizesItem])
    , _aboUser                    :: !(Maybe User)
    , _aboSelfLink                :: !(Maybe Text)
    , _aboName                    :: !(Maybe Text)
    , _aboFeatures                :: !(Maybe [AboutFeaturesItem])
    , _aboIsCurrentAppInstalled   :: !(Maybe Bool)
    , _aboQuotaBytesTotal         :: !(Maybe (JSONText Int64))
    , _aboRootFolderId            :: !(Maybe Text)
    , _aboQuotaBytesUsed          :: !(Maybe (JSONText Int64))
    , _aboAdditionalRoleInfo      :: !(Maybe [AboutAdditionalRoleInfoItem])
    , _aboFolderColorPalette      :: !(Maybe [Text])
    , _aboPermissionId            :: !(Maybe Text)
    , _aboQuotaBytesUsedAggregate :: !(Maybe (JSONText Int64))
    , _aboQuotaBytesByService     :: !(Maybe [AboutQuotaBytesByServiceItem])
    , _aboLargestChangeId         :: !(Maybe (JSONText Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'About' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aboExportFormats'
--
-- * 'aboRemainingChangeIds'
--
-- * 'aboLanguageCode'
--
-- * 'aboEtag'
--
-- * 'aboImportFormats'
--
-- * 'aboKind'
--
-- * 'aboDomainSharingPolicy'
--
-- * 'aboQuotaBytesUsedInTrash'
--
-- * 'aboQuotaType'
--
-- * 'aboMaxUploadSizes'
--
-- * 'aboUser'
--
-- * 'aboSelfLink'
--
-- * 'aboName'
--
-- * 'aboFeatures'
--
-- * 'aboIsCurrentAppInstalled'
--
-- * 'aboQuotaBytesTotal'
--
-- * 'aboRootFolderId'
--
-- * 'aboQuotaBytesUsed'
--
-- * 'aboAdditionalRoleInfo'
--
-- * 'aboFolderColorPalette'
--
-- * 'aboPermissionId'
--
-- * 'aboQuotaBytesUsedAggregate'
--
-- * 'aboQuotaBytesByService'
--
-- * 'aboLargestChangeId'
about
    :: About
about =
    About
    { _aboExportFormats = Nothing
    , _aboRemainingChangeIds = Nothing
    , _aboLanguageCode = Nothing
    , _aboEtag = Nothing
    , _aboImportFormats = Nothing
    , _aboKind = "drive#about"
    , _aboDomainSharingPolicy = Nothing
    , _aboQuotaBytesUsedInTrash = Nothing
    , _aboQuotaType = Nothing
    , _aboMaxUploadSizes = Nothing
    , _aboUser = Nothing
    , _aboSelfLink = Nothing
    , _aboName = Nothing
    , _aboFeatures = Nothing
    , _aboIsCurrentAppInstalled = Nothing
    , _aboQuotaBytesTotal = Nothing
    , _aboRootFolderId = Nothing
    , _aboQuotaBytesUsed = Nothing
    , _aboAdditionalRoleInfo = Nothing
    , _aboFolderColorPalette = Nothing
    , _aboPermissionId = Nothing
    , _aboQuotaBytesUsedAggregate = Nothing
    , _aboQuotaBytesByService = Nothing
    , _aboLargestChangeId = Nothing
    }

-- | The allowable export formats.
aboExportFormats :: Lens' About [AboutExportFormatsItem]
aboExportFormats
  = lens _aboExportFormats
      (\ s a -> s{_aboExportFormats = a})
      . _Default
      . _Coerce

-- | The number of remaining change ids.
aboRemainingChangeIds :: Lens' About (Maybe Int64)
aboRemainingChangeIds
  = lens _aboRemainingChangeIds
      (\ s a -> s{_aboRemainingChangeIds = a})
      . mapping _Coerce

-- | The user\'s language or locale code, as defined by BCP 47, with some
-- extensions from Unicode\'s LDML format
-- (http:\/\/www.unicode.org\/reports\/tr35\/).
aboLanguageCode :: Lens' About (Maybe Text)
aboLanguageCode
  = lens _aboLanguageCode
      (\ s a -> s{_aboLanguageCode = a})

-- | The ETag of the item.
aboEtag :: Lens' About (Maybe Text)
aboEtag = lens _aboEtag (\ s a -> s{_aboEtag = a})

-- | The allowable import formats.
aboImportFormats :: Lens' About [AboutImportFormatsItem]
aboImportFormats
  = lens _aboImportFormats
      (\ s a -> s{_aboImportFormats = a})
      . _Default
      . _Coerce

-- | This is always drive#about.
aboKind :: Lens' About Text
aboKind = lens _aboKind (\ s a -> s{_aboKind = a})

-- | The domain sharing policy for the current user. Possible values are: -
-- allowed - allowedWithWarning - incomingOnly - disallowed
aboDomainSharingPolicy :: Lens' About (Maybe Text)
aboDomainSharingPolicy
  = lens _aboDomainSharingPolicy
      (\ s a -> s{_aboDomainSharingPolicy = a})

-- | The number of quota bytes used by trashed items.
aboQuotaBytesUsedInTrash :: Lens' About (Maybe Int64)
aboQuotaBytesUsedInTrash
  = lens _aboQuotaBytesUsedInTrash
      (\ s a -> s{_aboQuotaBytesUsedInTrash = a})
      . mapping _Coerce

-- | The type of the user\'s storage quota. Possible values are: - LIMITED -
-- UNLIMITED
aboQuotaType :: Lens' About (Maybe Text)
aboQuotaType
  = lens _aboQuotaType (\ s a -> s{_aboQuotaType = a})

-- | List of max upload sizes for each file type. The most specific type
-- takes precedence.
aboMaxUploadSizes :: Lens' About [AboutMaxUploadSizesItem]
aboMaxUploadSizes
  = lens _aboMaxUploadSizes
      (\ s a -> s{_aboMaxUploadSizes = a})
      . _Default
      . _Coerce

-- | The authenticated user.
aboUser :: Lens' About (Maybe User)
aboUser = lens _aboUser (\ s a -> s{_aboUser = a})

-- | A link back to this item.
aboSelfLink :: Lens' About (Maybe Text)
aboSelfLink
  = lens _aboSelfLink (\ s a -> s{_aboSelfLink = a})

-- | The name of the current user.
aboName :: Lens' About (Maybe Text)
aboName = lens _aboName (\ s a -> s{_aboName = a})

-- | List of additional features enabled on this account.
aboFeatures :: Lens' About [AboutFeaturesItem]
aboFeatures
  = lens _aboFeatures (\ s a -> s{_aboFeatures = a}) .
      _Default
      . _Coerce

-- | A boolean indicating whether the authenticated app is installed by the
-- authenticated user.
aboIsCurrentAppInstalled :: Lens' About (Maybe Bool)
aboIsCurrentAppInstalled
  = lens _aboIsCurrentAppInstalled
      (\ s a -> s{_aboIsCurrentAppInstalled = a})

-- | The total number of quota bytes.
aboQuotaBytesTotal :: Lens' About (Maybe Int64)
aboQuotaBytesTotal
  = lens _aboQuotaBytesTotal
      (\ s a -> s{_aboQuotaBytesTotal = a})
      . mapping _Coerce

-- | The id of the root folder.
aboRootFolderId :: Lens' About (Maybe Text)
aboRootFolderId
  = lens _aboRootFolderId
      (\ s a -> s{_aboRootFolderId = a})

-- | The number of quota bytes used by Google Drive.
aboQuotaBytesUsed :: Lens' About (Maybe Int64)
aboQuotaBytesUsed
  = lens _aboQuotaBytesUsed
      (\ s a -> s{_aboQuotaBytesUsed = a})
      . mapping _Coerce

-- | Information about supported additional roles per file type. The most
-- specific type takes precedence.
aboAdditionalRoleInfo :: Lens' About [AboutAdditionalRoleInfoItem]
aboAdditionalRoleInfo
  = lens _aboAdditionalRoleInfo
      (\ s a -> s{_aboAdditionalRoleInfo = a})
      . _Default
      . _Coerce

-- | The palette of allowable folder colors as RGB hex strings.
aboFolderColorPalette :: Lens' About [Text]
aboFolderColorPalette
  = lens _aboFolderColorPalette
      (\ s a -> s{_aboFolderColorPalette = a})
      . _Default
      . _Coerce

-- | The current user\'s ID as visible in the permissions collection.
aboPermissionId :: Lens' About (Maybe Text)
aboPermissionId
  = lens _aboPermissionId
      (\ s a -> s{_aboPermissionId = a})

-- | The number of quota bytes used by all Google apps (Drive, Picasa, etc.).
aboQuotaBytesUsedAggregate :: Lens' About (Maybe Int64)
aboQuotaBytesUsedAggregate
  = lens _aboQuotaBytesUsedAggregate
      (\ s a -> s{_aboQuotaBytesUsedAggregate = a})
      . mapping _Coerce

-- | The amount of storage quota used by different Google services.
aboQuotaBytesByService :: Lens' About [AboutQuotaBytesByServiceItem]
aboQuotaBytesByService
  = lens _aboQuotaBytesByService
      (\ s a -> s{_aboQuotaBytesByService = a})
      . _Default
      . _Coerce

-- | The largest change id.
aboLargestChangeId :: Lens' About (Maybe Int64)
aboLargestChangeId
  = lens _aboLargestChangeId
      (\ s a -> s{_aboLargestChangeId = a})
      . mapping _Coerce

instance FromJSON About where
        parseJSON
          = withObject "About"
              (\ o ->
                 About <$>
                   (o .:? "exportFormats" .!= mempty) <*>
                     (o .:? "remainingChangeIds")
                     <*> (o .:? "languageCode")
                     <*> (o .:? "etag")
                     <*> (o .:? "importFormats" .!= mempty)
                     <*> (o .:? "kind" .!= "drive#about")
                     <*> (o .:? "domainSharingPolicy")
                     <*> (o .:? "quotaBytesUsedInTrash")
                     <*> (o .:? "quotaType")
                     <*> (o .:? "maxUploadSizes" .!= mempty)
                     <*> (o .:? "user")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "isCurrentAppInstalled")
                     <*> (o .:? "quotaBytesTotal")
                     <*> (o .:? "rootFolderId")
                     <*> (o .:? "quotaBytesUsed")
                     <*> (o .:? "additionalRoleInfo" .!= mempty)
                     <*> (o .:? "folderColorPalette" .!= mempty)
                     <*> (o .:? "permissionId")
                     <*> (o .:? "quotaBytesUsedAggregate")
                     <*> (o .:? "quotaBytesByService" .!= mempty)
                     <*> (o .:? "largestChangeId"))

instance ToJSON About where
        toJSON About{..}
          = object
              (catMaybes
                 [("exportFormats" .=) <$> _aboExportFormats,
                  ("remainingChangeIds" .=) <$> _aboRemainingChangeIds,
                  ("languageCode" .=) <$> _aboLanguageCode,
                  ("etag" .=) <$> _aboEtag,
                  ("importFormats" .=) <$> _aboImportFormats,
                  Just ("kind" .= _aboKind),
                  ("domainSharingPolicy" .=) <$>
                    _aboDomainSharingPolicy,
                  ("quotaBytesUsedInTrash" .=) <$>
                    _aboQuotaBytesUsedInTrash,
                  ("quotaType" .=) <$> _aboQuotaType,
                  ("maxUploadSizes" .=) <$> _aboMaxUploadSizes,
                  ("user" .=) <$> _aboUser,
                  ("selfLink" .=) <$> _aboSelfLink,
                  ("name" .=) <$> _aboName,
                  ("features" .=) <$> _aboFeatures,
                  ("isCurrentAppInstalled" .=) <$>
                    _aboIsCurrentAppInstalled,
                  ("quotaBytesTotal" .=) <$> _aboQuotaBytesTotal,
                  ("rootFolderId" .=) <$> _aboRootFolderId,
                  ("quotaBytesUsed" .=) <$> _aboQuotaBytesUsed,
                  ("additionalRoleInfo" .=) <$> _aboAdditionalRoleInfo,
                  ("folderColorPalette" .=) <$> _aboFolderColorPalette,
                  ("permissionId" .=) <$> _aboPermissionId,
                  ("quotaBytesUsedAggregate" .=) <$>
                    _aboQuotaBytesUsedAggregate,
                  ("quotaBytesByService" .=) <$>
                    _aboQuotaBytesByService,
                  ("largestChangeId" .=) <$> _aboLargestChangeId])

-- | Geographic location information stored in the image.
--
-- /See:/ 'fileImageMediaMetadataLocation' smart constructor.
data FileImageMediaMetadataLocation = FileImageMediaMetadataLocation
    { _fimmlLatitude  :: !(Maybe (JSONText Double))
    , _fimmlAltitude  :: !(Maybe (JSONText Double))
    , _fimmlLongitude :: !(Maybe (JSONText Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileImageMediaMetadataLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fimmlLatitude'
--
-- * 'fimmlAltitude'
--
-- * 'fimmlLongitude'
fileImageMediaMetadataLocation
    :: FileImageMediaMetadataLocation
fileImageMediaMetadataLocation =
    FileImageMediaMetadataLocation
    { _fimmlLatitude = Nothing
    , _fimmlAltitude = Nothing
    , _fimmlLongitude = Nothing
    }

-- | The latitude stored in the image.
fimmlLatitude :: Lens' FileImageMediaMetadataLocation (Maybe Double)
fimmlLatitude
  = lens _fimmlLatitude
      (\ s a -> s{_fimmlLatitude = a})
      . mapping _Coerce

-- | The altitude stored in the image.
fimmlAltitude :: Lens' FileImageMediaMetadataLocation (Maybe Double)
fimmlAltitude
  = lens _fimmlAltitude
      (\ s a -> s{_fimmlAltitude = a})
      . mapping _Coerce

-- | The longitude stored in the image.
fimmlLongitude :: Lens' FileImageMediaMetadataLocation (Maybe Double)
fimmlLongitude
  = lens _fimmlLongitude
      (\ s a -> s{_fimmlLongitude = a})
      . mapping _Coerce

instance FromJSON FileImageMediaMetadataLocation
         where
        parseJSON
          = withObject "FileImageMediaMetadataLocation"
              (\ o ->
                 FileImageMediaMetadataLocation <$>
                   (o .:? "latitude") <*> (o .:? "altitude") <*>
                     (o .:? "longitude"))

instance ToJSON FileImageMediaMetadataLocation where
        toJSON FileImageMediaMetadataLocation{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _fimmlLatitude,
                  ("altitude" .=) <$> _fimmlAltitude,
                  ("longitude" .=) <$> _fimmlLongitude])

--
-- /See:/ 'aboutImportFormatsItem' smart constructor.
data AboutImportFormatsItem = AboutImportFormatsItem
    { _aifiTargets :: !(Maybe [Text])
    , _aifiSource  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutImportFormatsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aifiTargets'
--
-- * 'aifiSource'
aboutImportFormatsItem
    :: AboutImportFormatsItem
aboutImportFormatsItem =
    AboutImportFormatsItem
    { _aifiTargets = Nothing
    , _aifiSource = Nothing
    }

-- | The possible content types to convert to.
aifiTargets :: Lens' AboutImportFormatsItem [Text]
aifiTargets
  = lens _aifiTargets (\ s a -> s{_aifiTargets = a}) .
      _Default
      . _Coerce

-- | The imported file\'s content type to convert from.
aifiSource :: Lens' AboutImportFormatsItem (Maybe Text)
aifiSource
  = lens _aifiSource (\ s a -> s{_aifiSource = a})

instance FromJSON AboutImportFormatsItem where
        parseJSON
          = withObject "AboutImportFormatsItem"
              (\ o ->
                 AboutImportFormatsItem <$>
                   (o .:? "targets" .!= mempty) <*> (o .:? "source"))

instance ToJSON AboutImportFormatsItem where
        toJSON AboutImportFormatsItem{..}
          = object
              (catMaybes
                 [("targets" .=) <$> _aifiTargets,
                  ("source" .=) <$> _aifiSource])

-- | Metadata about image media. This will only be present for image types,
-- and its contents will depend on what can be parsed from the image
-- content.
--
-- /See:/ 'fileImageMediaMetadata' smart constructor.
data FileImageMediaMetadata = FileImageMediaMetadata
    { _fimmRotation         :: !(Maybe (JSONText Int32))
    , _fimmHeight           :: !(Maybe (JSONText Int32))
    , _fimmSubjectDistance  :: !(Maybe (JSONText Int32))
    , _fimmMaxApertureValue :: !(Maybe (JSONText Float))
    , _fimmIsoSpeed         :: !(Maybe (JSONText Int32))
    , _fimmLocation         :: !(Maybe FileImageMediaMetadataLocation)
    , _fimmAperture         :: !(Maybe (JSONText Float))
    , _fimmFocalLength      :: !(Maybe (JSONText Float))
    , _fimmCameraMake       :: !(Maybe Text)
    , _fimmWidth            :: !(Maybe (JSONText Int32))
    , _fimmExposureTime     :: !(Maybe (JSONText Float))
    , _fimmCameraModel      :: !(Maybe Text)
    , _fimmWhiteBalance     :: !(Maybe Text)
    , _fimmDate             :: !(Maybe Text)
    , _fimmLens             :: !(Maybe Text)
    , _fimmFlashUsed        :: !(Maybe Bool)
    , _fimmExposureBias     :: !(Maybe (JSONText Float))
    , _fimmMeteringMode     :: !(Maybe Text)
    , _fimmExposureMode     :: !(Maybe Text)
    , _fimmSensor           :: !(Maybe Text)
    , _fimmColorSpace       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileImageMediaMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fimmRotation'
--
-- * 'fimmHeight'
--
-- * 'fimmSubjectDistance'
--
-- * 'fimmMaxApertureValue'
--
-- * 'fimmIsoSpeed'
--
-- * 'fimmLocation'
--
-- * 'fimmAperture'
--
-- * 'fimmFocalLength'
--
-- * 'fimmCameraMake'
--
-- * 'fimmWidth'
--
-- * 'fimmExposureTime'
--
-- * 'fimmCameraModel'
--
-- * 'fimmWhiteBalance'
--
-- * 'fimmDate'
--
-- * 'fimmLens'
--
-- * 'fimmFlashUsed'
--
-- * 'fimmExposureBias'
--
-- * 'fimmMeteringMode'
--
-- * 'fimmExposureMode'
--
-- * 'fimmSensor'
--
-- * 'fimmColorSpace'
fileImageMediaMetadata
    :: FileImageMediaMetadata
fileImageMediaMetadata =
    FileImageMediaMetadata
    { _fimmRotation = Nothing
    , _fimmHeight = Nothing
    , _fimmSubjectDistance = Nothing
    , _fimmMaxApertureValue = Nothing
    , _fimmIsoSpeed = Nothing
    , _fimmLocation = Nothing
    , _fimmAperture = Nothing
    , _fimmFocalLength = Nothing
    , _fimmCameraMake = Nothing
    , _fimmWidth = Nothing
    , _fimmExposureTime = Nothing
    , _fimmCameraModel = Nothing
    , _fimmWhiteBalance = Nothing
    , _fimmDate = Nothing
    , _fimmLens = Nothing
    , _fimmFlashUsed = Nothing
    , _fimmExposureBias = Nothing
    , _fimmMeteringMode = Nothing
    , _fimmExposureMode = Nothing
    , _fimmSensor = Nothing
    , _fimmColorSpace = Nothing
    }

-- | The rotation in clockwise degrees from the image\'s original
-- orientation.
fimmRotation :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmRotation
  = lens _fimmRotation (\ s a -> s{_fimmRotation = a})
      . mapping _Coerce

-- | The height of the image in pixels.
fimmHeight :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmHeight
  = lens _fimmHeight (\ s a -> s{_fimmHeight = a}) .
      mapping _Coerce

-- | The distance to the subject of the photo, in meters.
fimmSubjectDistance :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmSubjectDistance
  = lens _fimmSubjectDistance
      (\ s a -> s{_fimmSubjectDistance = a})
      . mapping _Coerce

-- | The smallest f-number of the lens at the focal length used to create the
-- photo (APEX value).
fimmMaxApertureValue :: Lens' FileImageMediaMetadata (Maybe Float)
fimmMaxApertureValue
  = lens _fimmMaxApertureValue
      (\ s a -> s{_fimmMaxApertureValue = a})
      . mapping _Coerce

-- | The ISO speed used to create the photo.
fimmIsoSpeed :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmIsoSpeed
  = lens _fimmIsoSpeed (\ s a -> s{_fimmIsoSpeed = a})
      . mapping _Coerce

-- | Geographic location information stored in the image.
fimmLocation :: Lens' FileImageMediaMetadata (Maybe FileImageMediaMetadataLocation)
fimmLocation
  = lens _fimmLocation (\ s a -> s{_fimmLocation = a})

-- | The aperture used to create the photo (f-number).
fimmAperture :: Lens' FileImageMediaMetadata (Maybe Float)
fimmAperture
  = lens _fimmAperture (\ s a -> s{_fimmAperture = a})
      . mapping _Coerce

-- | The focal length used to create the photo, in millimeters.
fimmFocalLength :: Lens' FileImageMediaMetadata (Maybe Float)
fimmFocalLength
  = lens _fimmFocalLength
      (\ s a -> s{_fimmFocalLength = a})
      . mapping _Coerce

-- | The make of the camera used to create the photo.
fimmCameraMake :: Lens' FileImageMediaMetadata (Maybe Text)
fimmCameraMake
  = lens _fimmCameraMake
      (\ s a -> s{_fimmCameraMake = a})

-- | The width of the image in pixels.
fimmWidth :: Lens' FileImageMediaMetadata (Maybe Int32)
fimmWidth
  = lens _fimmWidth (\ s a -> s{_fimmWidth = a}) .
      mapping _Coerce

-- | The length of the exposure, in seconds.
fimmExposureTime :: Lens' FileImageMediaMetadata (Maybe Float)
fimmExposureTime
  = lens _fimmExposureTime
      (\ s a -> s{_fimmExposureTime = a})
      . mapping _Coerce

-- | The model of the camera used to create the photo.
fimmCameraModel :: Lens' FileImageMediaMetadata (Maybe Text)
fimmCameraModel
  = lens _fimmCameraModel
      (\ s a -> s{_fimmCameraModel = a})

-- | The white balance mode used to create the photo.
fimmWhiteBalance :: Lens' FileImageMediaMetadata (Maybe Text)
fimmWhiteBalance
  = lens _fimmWhiteBalance
      (\ s a -> s{_fimmWhiteBalance = a})

-- | The date and time the photo was taken (EXIF format timestamp).
fimmDate :: Lens' FileImageMediaMetadata (Maybe Text)
fimmDate = lens _fimmDate (\ s a -> s{_fimmDate = a})

-- | The lens used to create the photo.
fimmLens :: Lens' FileImageMediaMetadata (Maybe Text)
fimmLens = lens _fimmLens (\ s a -> s{_fimmLens = a})

-- | Whether a flash was used to create the photo.
fimmFlashUsed :: Lens' FileImageMediaMetadata (Maybe Bool)
fimmFlashUsed
  = lens _fimmFlashUsed
      (\ s a -> s{_fimmFlashUsed = a})

-- | The exposure bias of the photo (APEX value).
fimmExposureBias :: Lens' FileImageMediaMetadata (Maybe Float)
fimmExposureBias
  = lens _fimmExposureBias
      (\ s a -> s{_fimmExposureBias = a})
      . mapping _Coerce

-- | The metering mode used to create the photo.
fimmMeteringMode :: Lens' FileImageMediaMetadata (Maybe Text)
fimmMeteringMode
  = lens _fimmMeteringMode
      (\ s a -> s{_fimmMeteringMode = a})

-- | The exposure mode used to create the photo.
fimmExposureMode :: Lens' FileImageMediaMetadata (Maybe Text)
fimmExposureMode
  = lens _fimmExposureMode
      (\ s a -> s{_fimmExposureMode = a})

-- | The type of sensor used to create the photo.
fimmSensor :: Lens' FileImageMediaMetadata (Maybe Text)
fimmSensor
  = lens _fimmSensor (\ s a -> s{_fimmSensor = a})

-- | The color space of the photo.
fimmColorSpace :: Lens' FileImageMediaMetadata (Maybe Text)
fimmColorSpace
  = lens _fimmColorSpace
      (\ s a -> s{_fimmColorSpace = a})

instance FromJSON FileImageMediaMetadata where
        parseJSON
          = withObject "FileImageMediaMetadata"
              (\ o ->
                 FileImageMediaMetadata <$>
                   (o .:? "rotation") <*> (o .:? "height") <*>
                     (o .:? "subjectDistance")
                     <*> (o .:? "maxApertureValue")
                     <*> (o .:? "isoSpeed")
                     <*> (o .:? "location")
                     <*> (o .:? "aperture")
                     <*> (o .:? "focalLength")
                     <*> (o .:? "cameraMake")
                     <*> (o .:? "width")
                     <*> (o .:? "exposureTime")
                     <*> (o .:? "cameraModel")
                     <*> (o .:? "whiteBalance")
                     <*> (o .:? "date")
                     <*> (o .:? "lens")
                     <*> (o .:? "flashUsed")
                     <*> (o .:? "exposureBias")
                     <*> (o .:? "meteringMode")
                     <*> (o .:? "exposureMode")
                     <*> (o .:? "sensor")
                     <*> (o .:? "colorSpace"))

instance ToJSON FileImageMediaMetadata where
        toJSON FileImageMediaMetadata{..}
          = object
              (catMaybes
                 [("rotation" .=) <$> _fimmRotation,
                  ("height" .=) <$> _fimmHeight,
                  ("subjectDistance" .=) <$> _fimmSubjectDistance,
                  ("maxApertureValue" .=) <$> _fimmMaxApertureValue,
                  ("isoSpeed" .=) <$> _fimmIsoSpeed,
                  ("location" .=) <$> _fimmLocation,
                  ("aperture" .=) <$> _fimmAperture,
                  ("focalLength" .=) <$> _fimmFocalLength,
                  ("cameraMake" .=) <$> _fimmCameraMake,
                  ("width" .=) <$> _fimmWidth,
                  ("exposureTime" .=) <$> _fimmExposureTime,
                  ("cameraModel" .=) <$> _fimmCameraModel,
                  ("whiteBalance" .=) <$> _fimmWhiteBalance,
                  ("date" .=) <$> _fimmDate, ("lens" .=) <$> _fimmLens,
                  ("flashUsed" .=) <$> _fimmFlashUsed,
                  ("exposureBias" .=) <$> _fimmExposureBias,
                  ("meteringMode" .=) <$> _fimmMeteringMode,
                  ("exposureMode" .=) <$> _fimmExposureMode,
                  ("sensor" .=) <$> _fimmSensor,
                  ("colorSpace" .=) <$> _fimmColorSpace])

-- | A group of labels for the file.
--
-- /See:/ 'fileLabels' smart constructor.
data FileLabels = FileLabels
    { _flViewed     :: !(Maybe Bool)
    , _flTrashed    :: !(Maybe Bool)
    , _flStarred    :: !(Maybe Bool)
    , _flHidden     :: !(Maybe Bool)
    , _flRestricted :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flViewed'
--
-- * 'flTrashed'
--
-- * 'flStarred'
--
-- * 'flHidden'
--
-- * 'flRestricted'
fileLabels
    :: FileLabels
fileLabels =
    FileLabels
    { _flViewed = Nothing
    , _flTrashed = Nothing
    , _flStarred = Nothing
    , _flHidden = Nothing
    , _flRestricted = Nothing
    }

-- | Whether this file has been viewed by this user.
flViewed :: Lens' FileLabels (Maybe Bool)
flViewed = lens _flViewed (\ s a -> s{_flViewed = a})

-- | Whether this file has been trashed. This label applies to all users
-- accessing the file; however, only owners are allowed to see and untrash
-- files.
flTrashed :: Lens' FileLabels (Maybe Bool)
flTrashed
  = lens _flTrashed (\ s a -> s{_flTrashed = a})

-- | Whether this file is starred by the user.
flStarred :: Lens' FileLabels (Maybe Bool)
flStarred
  = lens _flStarred (\ s a -> s{_flStarred = a})

-- | Deprecated.
flHidden :: Lens' FileLabels (Maybe Bool)
flHidden = lens _flHidden (\ s a -> s{_flHidden = a})

-- | Whether viewers and commenters are prevented from downloading, printing,
-- and copying this file.
flRestricted :: Lens' FileLabels (Maybe Bool)
flRestricted
  = lens _flRestricted (\ s a -> s{_flRestricted = a})

instance FromJSON FileLabels where
        parseJSON
          = withObject "FileLabels"
              (\ o ->
                 FileLabels <$>
                   (o .:? "viewed") <*> (o .:? "trashed") <*>
                     (o .:? "starred")
                     <*> (o .:? "hidden")
                     <*> (o .:? "restricted"))

instance ToJSON FileLabels where
        toJSON FileLabels{..}
          = object
              (catMaybes
                 [("viewed" .=) <$> _flViewed,
                  ("trashed" .=) <$> _flTrashed,
                  ("starred" .=) <$> _flStarred,
                  ("hidden" .=) <$> _flHidden,
                  ("restricted" .=) <$> _flRestricted])

-- | A JSON representation of a comment on a file in Google Drive.
--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _ccStatus       :: !(Maybe Text)
    , _ccHTMLContent  :: !(Maybe Text)
    , _ccContext      :: !(Maybe CommentContext)
    , _ccKind         :: !Text
    , _ccFileTitle    :: !(Maybe Text)
    , _ccAnchor       :: !(Maybe Text)
    , _ccContent      :: !(Maybe Text)
    , _ccReplies      :: !(Maybe [CommentReply])
    , _ccCreatedDate  :: !(Maybe DateTime')
    , _ccSelfLink     :: !(Maybe Text)
    , _ccAuthor       :: !(Maybe User)
    , _ccModifiedDate :: !(Maybe DateTime')
    , _ccDeleted      :: !(Maybe Bool)
    , _ccFileId       :: !(Maybe Text)
    , _ccCommentId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccStatus'
--
-- * 'ccHTMLContent'
--
-- * 'ccContext'
--
-- * 'ccKind'
--
-- * 'ccFileTitle'
--
-- * 'ccAnchor'
--
-- * 'ccContent'
--
-- * 'ccReplies'
--
-- * 'ccCreatedDate'
--
-- * 'ccSelfLink'
--
-- * 'ccAuthor'
--
-- * 'ccModifiedDate'
--
-- * 'ccDeleted'
--
-- * 'ccFileId'
--
-- * 'ccCommentId'
comment
    :: Comment
comment =
    Comment
    { _ccStatus = Nothing
    , _ccHTMLContent = Nothing
    , _ccContext = Nothing
    , _ccKind = "drive#comment"
    , _ccFileTitle = Nothing
    , _ccAnchor = Nothing
    , _ccContent = Nothing
    , _ccReplies = Nothing
    , _ccCreatedDate = Nothing
    , _ccSelfLink = Nothing
    , _ccAuthor = Nothing
    , _ccModifiedDate = Nothing
    , _ccDeleted = Nothing
    , _ccFileId = Nothing
    , _ccCommentId = Nothing
    }

-- | The status of this comment. Status can be changed by posting a reply to
-- a comment with the desired status. - \"open\" - The comment is still
-- open. - \"resolved\" - The comment has been resolved by one of its
-- replies.
ccStatus :: Lens' Comment (Maybe Text)
ccStatus = lens _ccStatus (\ s a -> s{_ccStatus = a})

-- | HTML formatted content for this comment.
ccHTMLContent :: Lens' Comment (Maybe Text)
ccHTMLContent
  = lens _ccHTMLContent
      (\ s a -> s{_ccHTMLContent = a})

-- | The context of the file which is being commented on.
ccContext :: Lens' Comment (Maybe CommentContext)
ccContext
  = lens _ccContext (\ s a -> s{_ccContext = a})

-- | This is always drive#comment.
ccKind :: Lens' Comment Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | The title of the file which this comment is addressing.
ccFileTitle :: Lens' Comment (Maybe Text)
ccFileTitle
  = lens _ccFileTitle (\ s a -> s{_ccFileTitle = a})

-- | A region of the document represented as a JSON string. See anchor
-- documentation for details on how to define and interpret anchor
-- properties.
ccAnchor :: Lens' Comment (Maybe Text)
ccAnchor = lens _ccAnchor (\ s a -> s{_ccAnchor = a})

-- | The plain text content used to create this comment. This is not HTML
-- safe and should only be used as a starting point to make edits to a
-- comment\'s content.
ccContent :: Lens' Comment (Maybe Text)
ccContent
  = lens _ccContent (\ s a -> s{_ccContent = a})

-- | Replies to this post.
ccReplies :: Lens' Comment [CommentReply]
ccReplies
  = lens _ccReplies (\ s a -> s{_ccReplies = a}) .
      _Default
      . _Coerce

-- | The date when this comment was first created.
ccCreatedDate :: Lens' Comment (Maybe UTCTime)
ccCreatedDate
  = lens _ccCreatedDate
      (\ s a -> s{_ccCreatedDate = a})
      . mapping _DateTime

-- | A link back to this comment.
ccSelfLink :: Lens' Comment (Maybe Text)
ccSelfLink
  = lens _ccSelfLink (\ s a -> s{_ccSelfLink = a})

-- | The user who wrote this comment.
ccAuthor :: Lens' Comment (Maybe User)
ccAuthor = lens _ccAuthor (\ s a -> s{_ccAuthor = a})

-- | The date when this comment or any of its replies were last modified.
ccModifiedDate :: Lens' Comment (Maybe UTCTime)
ccModifiedDate
  = lens _ccModifiedDate
      (\ s a -> s{_ccModifiedDate = a})
      . mapping _DateTime

-- | Whether this comment has been deleted. If a comment has been deleted the
-- content will be cleared and this will only represent a comment that once
-- existed.
ccDeleted :: Lens' Comment (Maybe Bool)
ccDeleted
  = lens _ccDeleted (\ s a -> s{_ccDeleted = a})

-- | The file which this comment is addressing.
ccFileId :: Lens' Comment (Maybe Text)
ccFileId = lens _ccFileId (\ s a -> s{_ccFileId = a})

-- | The ID of the comment.
ccCommentId :: Lens' Comment (Maybe Text)
ccCommentId
  = lens _ccCommentId (\ s a -> s{_ccCommentId = a})

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment <$>
                   (o .:? "status") <*> (o .:? "htmlContent") <*>
                     (o .:? "context")
                     <*> (o .:? "kind" .!= "drive#comment")
                     <*> (o .:? "fileTitle")
                     <*> (o .:? "anchor")
                     <*> (o .:? "content")
                     <*> (o .:? "replies" .!= mempty)
                     <*> (o .:? "createdDate")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "author")
                     <*> (o .:? "modifiedDate")
                     <*> (o .:? "deleted")
                     <*> (o .:? "fileId")
                     <*> (o .:? "commentId"))

instance ToJSON Comment where
        toJSON Comment{..}
          = object
              (catMaybes
                 [("status" .=) <$> _ccStatus,
                  ("htmlContent" .=) <$> _ccHTMLContent,
                  ("context" .=) <$> _ccContext,
                  Just ("kind" .= _ccKind),
                  ("fileTitle" .=) <$> _ccFileTitle,
                  ("anchor" .=) <$> _ccAnchor,
                  ("content" .=) <$> _ccContent,
                  ("replies" .=) <$> _ccReplies,
                  ("createdDate" .=) <$> _ccCreatedDate,
                  ("selfLink" .=) <$> _ccSelfLink,
                  ("author" .=) <$> _ccAuthor,
                  ("modifiedDate" .=) <$> _ccModifiedDate,
                  ("deleted" .=) <$> _ccDeleted,
                  ("fileId" .=) <$> _ccFileId,
                  ("commentId" .=) <$> _ccCommentId])

-- | A revision of a file.
--
-- /See:/ 'revision' smart constructor.
data Revision = Revision
    { _rEtag                   :: !(Maybe Text)
    , _rOriginalFilename       :: !(Maybe Text)
    , _rKind                   :: !Text
    , _rPublishedLink          :: !(Maybe Text)
    , _rPinned                 :: !(Maybe Bool)
    , _rPublished              :: !(Maybe Bool)
    , _rLastModifyingUser      :: !(Maybe User)
    , _rFileSize               :: !(Maybe (JSONText Int64))
    , _rPublishAuto            :: !(Maybe Bool)
    , _rMD5Checksum            :: !(Maybe Text)
    , _rMimeType               :: !(Maybe Text)
    , _rSelfLink               :: !(Maybe Text)
    , _rLastModifyingUserName  :: !(Maybe Text)
    , _rDownloadURL            :: !(Maybe Text)
    , _rExportLinks            :: !(Maybe RevisionExportLinks)
    , _rPublishedOutsideDomain :: !(Maybe Bool)
    , _rId                     :: !(Maybe Text)
    , _rModifiedDate           :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Revision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEtag'
--
-- * 'rOriginalFilename'
--
-- * 'rKind'
--
-- * 'rPublishedLink'
--
-- * 'rPinned'
--
-- * 'rPublished'
--
-- * 'rLastModifyingUser'
--
-- * 'rFileSize'
--
-- * 'rPublishAuto'
--
-- * 'rMD5Checksum'
--
-- * 'rMimeType'
--
-- * 'rSelfLink'
--
-- * 'rLastModifyingUserName'
--
-- * 'rDownloadURL'
--
-- * 'rExportLinks'
--
-- * 'rPublishedOutsideDomain'
--
-- * 'rId'
--
-- * 'rModifiedDate'
revision
    :: Revision
revision =
    Revision
    { _rEtag = Nothing
    , _rOriginalFilename = Nothing
    , _rKind = "drive#revision"
    , _rPublishedLink = Nothing
    , _rPinned = Nothing
    , _rPublished = Nothing
    , _rLastModifyingUser = Nothing
    , _rFileSize = Nothing
    , _rPublishAuto = Nothing
    , _rMD5Checksum = Nothing
    , _rMimeType = Nothing
    , _rSelfLink = Nothing
    , _rLastModifyingUserName = Nothing
    , _rDownloadURL = Nothing
    , _rExportLinks = Nothing
    , _rPublishedOutsideDomain = Nothing
    , _rId = Nothing
    , _rModifiedDate = Nothing
    }

-- | The ETag of the revision.
rEtag :: Lens' Revision (Maybe Text)
rEtag = lens _rEtag (\ s a -> s{_rEtag = a})

-- | The original filename when this revision was created. This will only be
-- populated on files with content stored in Drive.
rOriginalFilename :: Lens' Revision (Maybe Text)
rOriginalFilename
  = lens _rOriginalFilename
      (\ s a -> s{_rOriginalFilename = a})

-- | This is always drive#revision.
rKind :: Lens' Revision Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | A link to the published revision.
rPublishedLink :: Lens' Revision (Maybe Text)
rPublishedLink
  = lens _rPublishedLink
      (\ s a -> s{_rPublishedLink = a})

-- | Whether this revision is pinned to prevent automatic purging. This will
-- only be populated and can only be modified on files with content stored
-- in Drive which are not Google Docs. Revisions can also be pinned when
-- they are created through the drive.files.insert\/update\/copy by using
-- the pinned query parameter.
rPinned :: Lens' Revision (Maybe Bool)
rPinned = lens _rPinned (\ s a -> s{_rPinned = a})

-- | Whether this revision is published. This is only populated and can only
-- be modified for Google Docs.
rPublished :: Lens' Revision (Maybe Bool)
rPublished
  = lens _rPublished (\ s a -> s{_rPublished = a})

-- | The last user to modify this revision.
rLastModifyingUser :: Lens' Revision (Maybe User)
rLastModifyingUser
  = lens _rLastModifyingUser
      (\ s a -> s{_rLastModifyingUser = a})

-- | The size of the revision in bytes. This will only be populated on files
-- with content stored in Drive.
rFileSize :: Lens' Revision (Maybe Int64)
rFileSize
  = lens _rFileSize (\ s a -> s{_rFileSize = a}) .
      mapping _Coerce

-- | Whether subsequent revisions will be automatically republished. This is
-- only populated and can only be modified for Google Docs.
rPublishAuto :: Lens' Revision (Maybe Bool)
rPublishAuto
  = lens _rPublishAuto (\ s a -> s{_rPublishAuto = a})

-- | An MD5 checksum for the content of this revision. This will only be
-- populated on files with content stored in Drive.
rMD5Checksum :: Lens' Revision (Maybe Text)
rMD5Checksum
  = lens _rMD5Checksum (\ s a -> s{_rMD5Checksum = a})

-- | The MIME type of the revision.
rMimeType :: Lens' Revision (Maybe Text)
rMimeType
  = lens _rMimeType (\ s a -> s{_rMimeType = a})

-- | A link back to this revision.
rSelfLink :: Lens' Revision (Maybe Text)
rSelfLink
  = lens _rSelfLink (\ s a -> s{_rSelfLink = a})

-- | Name of the last user to modify this revision.
rLastModifyingUserName :: Lens' Revision (Maybe Text)
rLastModifyingUserName
  = lens _rLastModifyingUserName
      (\ s a -> s{_rLastModifyingUserName = a})

-- | Short term download URL for the file. This will only be populated on
-- files with content stored in Drive.
rDownloadURL :: Lens' Revision (Maybe Text)
rDownloadURL
  = lens _rDownloadURL (\ s a -> s{_rDownloadURL = a})

-- | Links for exporting Google Docs to specific formats.
rExportLinks :: Lens' Revision (Maybe RevisionExportLinks)
rExportLinks
  = lens _rExportLinks (\ s a -> s{_rExportLinks = a})

-- | Whether this revision is published outside the domain. This is only
-- populated and can only be modified for Google Docs.
rPublishedOutsideDomain :: Lens' Revision (Maybe Bool)
rPublishedOutsideDomain
  = lens _rPublishedOutsideDomain
      (\ s a -> s{_rPublishedOutsideDomain = a})

-- | The ID of the revision.
rId :: Lens' Revision (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | Last time this revision was modified (formatted RFC 3339 timestamp).
rModifiedDate :: Lens' Revision (Maybe UTCTime)
rModifiedDate
  = lens _rModifiedDate
      (\ s a -> s{_rModifiedDate = a})
      . mapping _DateTime

instance FromJSON Revision where
        parseJSON
          = withObject "Revision"
              (\ o ->
                 Revision <$>
                   (o .:? "etag") <*> (o .:? "originalFilename") <*>
                     (o .:? "kind" .!= "drive#revision")
                     <*> (o .:? "publishedLink")
                     <*> (o .:? "pinned")
                     <*> (o .:? "published")
                     <*> (o .:? "lastModifyingUser")
                     <*> (o .:? "fileSize")
                     <*> (o .:? "publishAuto")
                     <*> (o .:? "md5Checksum")
                     <*> (o .:? "mimeType")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "lastModifyingUserName")
                     <*> (o .:? "downloadUrl")
                     <*> (o .:? "exportLinks")
                     <*> (o .:? "publishedOutsideDomain")
                     <*> (o .:? "id")
                     <*> (o .:? "modifiedDate"))

instance ToJSON Revision where
        toJSON Revision{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rEtag,
                  ("originalFilename" .=) <$> _rOriginalFilename,
                  Just ("kind" .= _rKind),
                  ("publishedLink" .=) <$> _rPublishedLink,
                  ("pinned" .=) <$> _rPinned,
                  ("published" .=) <$> _rPublished,
                  ("lastModifyingUser" .=) <$> _rLastModifyingUser,
                  ("fileSize" .=) <$> _rFileSize,
                  ("publishAuto" .=) <$> _rPublishAuto,
                  ("md5Checksum" .=) <$> _rMD5Checksum,
                  ("mimeType" .=) <$> _rMimeType,
                  ("selfLink" .=) <$> _rSelfLink,
                  ("lastModifyingUserName" .=) <$>
                    _rLastModifyingUserName,
                  ("downloadUrl" .=) <$> _rDownloadURL,
                  ("exportLinks" .=) <$> _rExportLinks,
                  ("publishedOutsideDomain" .=) <$>
                    _rPublishedOutsideDomain,
                  ("id" .=) <$> _rId,
                  ("modifiedDate" .=) <$> _rModifiedDate])

--
-- /See:/ 'aboutAdditionalRoleInfoItem' smart constructor.
data AboutAdditionalRoleInfoItem = AboutAdditionalRoleInfoItem
    { _aariiRoleSets :: !(Maybe [AboutAdditionalRoleInfoItemRoleSetsItem])
    , _aariiType     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutAdditionalRoleInfoItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aariiRoleSets'
--
-- * 'aariiType'
aboutAdditionalRoleInfoItem
    :: AboutAdditionalRoleInfoItem
aboutAdditionalRoleInfoItem =
    AboutAdditionalRoleInfoItem
    { _aariiRoleSets = Nothing
    , _aariiType = Nothing
    }

-- | The supported additional roles per primary role.
aariiRoleSets :: Lens' AboutAdditionalRoleInfoItem [AboutAdditionalRoleInfoItemRoleSetsItem]
aariiRoleSets
  = lens _aariiRoleSets
      (\ s a -> s{_aariiRoleSets = a})
      . _Default
      . _Coerce

-- | The content type that this additional role info applies to.
aariiType :: Lens' AboutAdditionalRoleInfoItem (Maybe Text)
aariiType
  = lens _aariiType (\ s a -> s{_aariiType = a})

instance FromJSON AboutAdditionalRoleInfoItem where
        parseJSON
          = withObject "AboutAdditionalRoleInfoItem"
              (\ o ->
                 AboutAdditionalRoleInfoItem <$>
                   (o .:? "roleSets" .!= mempty) <*> (o .:? "type"))

instance ToJSON AboutAdditionalRoleInfoItem where
        toJSON AboutAdditionalRoleInfoItem{..}
          = object
              (catMaybes
                 [("roleSets" .=) <$> _aariiRoleSets,
                  ("type" .=) <$> _aariiType])

-- | A permission for a file.
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission
    { _perPhotoLink       :: !(Maybe Text)
    , _perEtag            :: !(Maybe Text)
    , _perWithLink        :: !(Maybe Bool)
    , _perKind            :: !Text
    , _perDomain          :: !(Maybe Text)
    , _perValue           :: !(Maybe Text)
    , _perAdditionalRoles :: !(Maybe [Text])
    , _perRole            :: !(Maybe Text)
    , _perSelfLink        :: !(Maybe Text)
    , _perName            :: !(Maybe Text)
    , _perAuthKey         :: !(Maybe Text)
    , _perEmailAddress    :: !(Maybe Text)
    , _perId              :: !(Maybe Text)
    , _perType            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perPhotoLink'
--
-- * 'perEtag'
--
-- * 'perWithLink'
--
-- * 'perKind'
--
-- * 'perDomain'
--
-- * 'perValue'
--
-- * 'perAdditionalRoles'
--
-- * 'perRole'
--
-- * 'perSelfLink'
--
-- * 'perName'
--
-- * 'perAuthKey'
--
-- * 'perEmailAddress'
--
-- * 'perId'
--
-- * 'perType'
permission
    :: Permission
permission =
    Permission
    { _perPhotoLink = Nothing
    , _perEtag = Nothing
    , _perWithLink = Nothing
    , _perKind = "drive#permission"
    , _perDomain = Nothing
    , _perValue = Nothing
    , _perAdditionalRoles = Nothing
    , _perRole = Nothing
    , _perSelfLink = Nothing
    , _perName = Nothing
    , _perAuthKey = Nothing
    , _perEmailAddress = Nothing
    , _perId = Nothing
    , _perType = Nothing
    }

-- | A link to the profile photo, if available.
perPhotoLink :: Lens' Permission (Maybe Text)
perPhotoLink
  = lens _perPhotoLink (\ s a -> s{_perPhotoLink = a})

-- | The ETag of the permission.
perEtag :: Lens' Permission (Maybe Text)
perEtag = lens _perEtag (\ s a -> s{_perEtag = a})

-- | Whether the link is required for this permission.
perWithLink :: Lens' Permission (Maybe Bool)
perWithLink
  = lens _perWithLink (\ s a -> s{_perWithLink = a})

-- | This is always drive#permission.
perKind :: Lens' Permission Text
perKind = lens _perKind (\ s a -> s{_perKind = a})

-- | The domain name of the entity this permission refers to. This is an
-- output-only field which is present when the permission type is user,
-- group or domain.
perDomain :: Lens' Permission (Maybe Text)
perDomain
  = lens _perDomain (\ s a -> s{_perDomain = a})

-- | The email address or domain name for the entity. This is used during
-- inserts and is not populated in responses. When making a
-- drive.permissions.insert request, exactly one of the id or value fields
-- must be specified.
perValue :: Lens' Permission (Maybe Text)
perValue = lens _perValue (\ s a -> s{_perValue = a})

-- | Additional roles for this user. Only commenter is currently allowed.
perAdditionalRoles :: Lens' Permission [Text]
perAdditionalRoles
  = lens _perAdditionalRoles
      (\ s a -> s{_perAdditionalRoles = a})
      . _Default
      . _Coerce

-- | The primary role for this user. Allowed values are: - owner - reader -
-- writer
perRole :: Lens' Permission (Maybe Text)
perRole = lens _perRole (\ s a -> s{_perRole = a})

-- | A link back to this permission.
perSelfLink :: Lens' Permission (Maybe Text)
perSelfLink
  = lens _perSelfLink (\ s a -> s{_perSelfLink = a})

-- | The name for this permission.
perName :: Lens' Permission (Maybe Text)
perName = lens _perName (\ s a -> s{_perName = a})

-- | The authkey parameter required for this permission.
perAuthKey :: Lens' Permission (Maybe Text)
perAuthKey
  = lens _perAuthKey (\ s a -> s{_perAuthKey = a})

-- | The email address of the user or group this permission refers to. This
-- is an output-only field which is present when the permission type is
-- user or group.
perEmailAddress :: Lens' Permission (Maybe Text)
perEmailAddress
  = lens _perEmailAddress
      (\ s a -> s{_perEmailAddress = a})

-- | The ID of the user this permission refers to, and identical to the
-- permissionId in the About and Files resources. When making a
-- drive.permissions.insert request, exactly one of the id or value fields
-- must be specified.
perId :: Lens' Permission (Maybe Text)
perId = lens _perId (\ s a -> s{_perId = a})

-- | The account type. Allowed values are: - user - group - domain - anyone
perType :: Lens' Permission (Maybe Text)
perType = lens _perType (\ s a -> s{_perType = a})

instance FromJSON Permission where
        parseJSON
          = withObject "Permission"
              (\ o ->
                 Permission <$>
                   (o .:? "photoLink") <*> (o .:? "etag") <*>
                     (o .:? "withLink")
                     <*> (o .:? "kind" .!= "drive#permission")
                     <*> (o .:? "domain")
                     <*> (o .:? "value")
                     <*> (o .:? "additionalRoles" .!= mempty)
                     <*> (o .:? "role")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "authKey")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Permission where
        toJSON Permission{..}
          = object
              (catMaybes
                 [("photoLink" .=) <$> _perPhotoLink,
                  ("etag" .=) <$> _perEtag,
                  ("withLink" .=) <$> _perWithLink,
                  Just ("kind" .= _perKind),
                  ("domain" .=) <$> _perDomain,
                  ("value" .=) <$> _perValue,
                  ("additionalRoles" .=) <$> _perAdditionalRoles,
                  ("role" .=) <$> _perRole,
                  ("selfLink" .=) <$> _perSelfLink,
                  ("name" .=) <$> _perName,
                  ("authKey" .=) <$> _perAuthKey,
                  ("emailAddress" .=) <$> _perEmailAddress,
                  ("id" .=) <$> _perId, ("type" .=) <$> _perType])

-- | The metadata for a file.
--
-- /See:/ 'file' smart constructor.
data File = File
    { _fOwnedByMe             :: !(Maybe Bool)
    , _fThumbnailLink         :: !(Maybe Text)
    , _fFullFileExtension     :: !(Maybe Text)
    , _fThumbnail             :: !(Maybe FileThumbnail)
    , _fMarkedViewedByMeDate  :: !(Maybe DateTime')
    , _fEtag                  :: !(Maybe Text)
    , _fFileExtension         :: !(Maybe Text)
    , _fCanComment            :: !(Maybe Bool)
    , _fOwners                :: !(Maybe [User])
    , _fOwnerNames            :: !(Maybe [Text])
    , _fOpenWithLinks         :: !(Maybe FileOpenWithLinks)
    , _fWebViewLink           :: !(Maybe Text)
    , _fOriginalFilename      :: !(Maybe Text)
    , _fKind                  :: !Text
    , _fLastModifyingUser     :: !(Maybe User)
    , _fIconLink              :: !(Maybe Text)
    , _fEmbedLink             :: !(Maybe Text)
    , _fFileSize              :: !(Maybe (JSONText Int64))
    , _fAppDataContents       :: !(Maybe Bool)
    , _fImageMediaMetadata    :: !(Maybe FileImageMediaMetadata)
    , _fExplicitlyTrashed     :: !(Maybe Bool)
    , _fEditable              :: !(Maybe Bool)
    , _fModifiedByMeDate      :: !(Maybe DateTime')
    , _fLastViewedByMeDate    :: !(Maybe DateTime')
    , _fShared                :: !(Maybe Bool)
    , _fMD5Checksum           :: !(Maybe Text)
    , _fFolderColorRgb        :: !(Maybe Text)
    , _fMimeType              :: !(Maybe Text)
    , _fCreatedDate           :: !(Maybe DateTime')
    , _fSelfLink              :: !(Maybe Text)
    , _fLastModifyingUserName :: !(Maybe Text)
    , _fShareable             :: !(Maybe Bool)
    , _fDownloadURL           :: !(Maybe Text)
    , _fExportLinks           :: !(Maybe FileExportLinks)
    , _fCopyable              :: !(Maybe Bool)
    , _fParents               :: !(Maybe [ParentReference])
    , _fSharedWithMeDate      :: !(Maybe DateTime')
    , _fSpaces                :: !(Maybe [Text])
    , _fVersion               :: !(Maybe (JSONText Int64))
    , _fUserPermission        :: !(Maybe Permission)
    , _fWritersCanShare       :: !(Maybe Bool)
    , _fDefaultOpenWithLink   :: !(Maybe Text)
    , _fId                    :: !(Maybe Text)
    , _fLabels                :: !(Maybe FileLabels)
    , _fModifiedDate          :: !(Maybe DateTime')
    , _fPermissions           :: !(Maybe [Permission])
    , _fQuotaBytesUsed        :: !(Maybe (JSONText Int64))
    , _fTitle                 :: !(Maybe Text)
    , _fAlternateLink         :: !(Maybe Text)
    , _fVideoMediaMetadata    :: !(Maybe FileVideoMediaMetadata)
    , _fHeadRevisionId        :: !(Maybe Text)
    , _fDescription           :: !(Maybe Text)
    , _fSharingUser           :: !(Maybe User)
    , _fWebContentLink        :: !(Maybe Text)
    , _fProperties            :: !(Maybe [Property])
    , _fIndexableText         :: !(Maybe FileIndexableText)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fOwnedByMe'
--
-- * 'fThumbnailLink'
--
-- * 'fFullFileExtension'
--
-- * 'fThumbnail'
--
-- * 'fMarkedViewedByMeDate'
--
-- * 'fEtag'
--
-- * 'fFileExtension'
--
-- * 'fCanComment'
--
-- * 'fOwners'
--
-- * 'fOwnerNames'
--
-- * 'fOpenWithLinks'
--
-- * 'fWebViewLink'
--
-- * 'fOriginalFilename'
--
-- * 'fKind'
--
-- * 'fLastModifyingUser'
--
-- * 'fIconLink'
--
-- * 'fEmbedLink'
--
-- * 'fFileSize'
--
-- * 'fAppDataContents'
--
-- * 'fImageMediaMetadata'
--
-- * 'fExplicitlyTrashed'
--
-- * 'fEditable'
--
-- * 'fModifiedByMeDate'
--
-- * 'fLastViewedByMeDate'
--
-- * 'fShared'
--
-- * 'fMD5Checksum'
--
-- * 'fFolderColorRgb'
--
-- * 'fMimeType'
--
-- * 'fCreatedDate'
--
-- * 'fSelfLink'
--
-- * 'fLastModifyingUserName'
--
-- * 'fShareable'
--
-- * 'fDownloadURL'
--
-- * 'fExportLinks'
--
-- * 'fCopyable'
--
-- * 'fParents'
--
-- * 'fSharedWithMeDate'
--
-- * 'fSpaces'
--
-- * 'fVersion'
--
-- * 'fUserPermission'
--
-- * 'fWritersCanShare'
--
-- * 'fDefaultOpenWithLink'
--
-- * 'fId'
--
-- * 'fLabels'
--
-- * 'fModifiedDate'
--
-- * 'fPermissions'
--
-- * 'fQuotaBytesUsed'
--
-- * 'fTitle'
--
-- * 'fAlternateLink'
--
-- * 'fVideoMediaMetadata'
--
-- * 'fHeadRevisionId'
--
-- * 'fDescription'
--
-- * 'fSharingUser'
--
-- * 'fWebContentLink'
--
-- * 'fProperties'
--
-- * 'fIndexableText'
file
    :: File
file =
    File
    { _fOwnedByMe = Nothing
    , _fThumbnailLink = Nothing
    , _fFullFileExtension = Nothing
    , _fThumbnail = Nothing
    , _fMarkedViewedByMeDate = Nothing
    , _fEtag = Nothing
    , _fFileExtension = Nothing
    , _fCanComment = Nothing
    , _fOwners = Nothing
    , _fOwnerNames = Nothing
    , _fOpenWithLinks = Nothing
    , _fWebViewLink = Nothing
    , _fOriginalFilename = Nothing
    , _fKind = "drive#file"
    , _fLastModifyingUser = Nothing
    , _fIconLink = Nothing
    , _fEmbedLink = Nothing
    , _fFileSize = Nothing
    , _fAppDataContents = Nothing
    , _fImageMediaMetadata = Nothing
    , _fExplicitlyTrashed = Nothing
    , _fEditable = Nothing
    , _fModifiedByMeDate = Nothing
    , _fLastViewedByMeDate = Nothing
    , _fShared = Nothing
    , _fMD5Checksum = Nothing
    , _fFolderColorRgb = Nothing
    , _fMimeType = Nothing
    , _fCreatedDate = Nothing
    , _fSelfLink = Nothing
    , _fLastModifyingUserName = Nothing
    , _fShareable = Nothing
    , _fDownloadURL = Nothing
    , _fExportLinks = Nothing
    , _fCopyable = Nothing
    , _fParents = Nothing
    , _fSharedWithMeDate = Nothing
    , _fSpaces = Nothing
    , _fVersion = Nothing
    , _fUserPermission = Nothing
    , _fWritersCanShare = Nothing
    , _fDefaultOpenWithLink = Nothing
    , _fId = Nothing
    , _fLabels = Nothing
    , _fModifiedDate = Nothing
    , _fPermissions = Nothing
    , _fQuotaBytesUsed = Nothing
    , _fTitle = Nothing
    , _fAlternateLink = Nothing
    , _fVideoMediaMetadata = Nothing
    , _fHeadRevisionId = Nothing
    , _fDescription = Nothing
    , _fSharingUser = Nothing
    , _fWebContentLink = Nothing
    , _fProperties = Nothing
    , _fIndexableText = Nothing
    }

-- | Whether the file is owned by the current user.
fOwnedByMe :: Lens' File (Maybe Bool)
fOwnedByMe
  = lens _fOwnedByMe (\ s a -> s{_fOwnedByMe = a})

-- | A short-lived link to the file\'s thumbnail. Typically lasts on the
-- order of hours.
fThumbnailLink :: Lens' File (Maybe Text)
fThumbnailLink
  = lens _fThumbnailLink
      (\ s a -> s{_fThumbnailLink = a})

-- | The full file extension; extracted from the title. May contain multiple
-- concatenated extensions, such as \"tar.gz\". Removing an extension from
-- the title does not clear this field; however, changing the extension on
-- the title does update this field. This field is only populated for files
-- with content stored in Drive; it is not populated for Google Docs or
-- shortcut files.
fFullFileExtension :: Lens' File (Maybe Text)
fFullFileExtension
  = lens _fFullFileExtension
      (\ s a -> s{_fFullFileExtension = a})

-- | Thumbnail for the file. Only accepted on upload and for files that are
-- not already thumbnailed by Google.
fThumbnail :: Lens' File (Maybe FileThumbnail)
fThumbnail
  = lens _fThumbnail (\ s a -> s{_fThumbnail = a})

-- | Deprecated.
fMarkedViewedByMeDate :: Lens' File (Maybe UTCTime)
fMarkedViewedByMeDate
  = lens _fMarkedViewedByMeDate
      (\ s a -> s{_fMarkedViewedByMeDate = a})
      . mapping _DateTime

-- | ETag of the file.
fEtag :: Lens' File (Maybe Text)
fEtag = lens _fEtag (\ s a -> s{_fEtag = a})

-- | The final component of fullFileExtension with trailing text that does
-- not appear to be part of the extension removed. This field is only
-- populated for files with content stored in Drive; it is not populated
-- for Google Docs or shortcut files.
fFileExtension :: Lens' File (Maybe Text)
fFileExtension
  = lens _fFileExtension
      (\ s a -> s{_fFileExtension = a})

-- | Whether the current user can comment on the file.
fCanComment :: Lens' File (Maybe Bool)
fCanComment
  = lens _fCanComment (\ s a -> s{_fCanComment = a})

-- | The owner(s) of this file.
fOwners :: Lens' File [User]
fOwners
  = lens _fOwners (\ s a -> s{_fOwners = a}) . _Default
      . _Coerce

-- | Name(s) of the owner(s) of this file.
fOwnerNames :: Lens' File [Text]
fOwnerNames
  = lens _fOwnerNames (\ s a -> s{_fOwnerNames = a}) .
      _Default
      . _Coerce

-- | A map of the id of each of the user\'s apps to a link to open this file
-- with that app. Only populated when the drive.apps.readonly scope is
-- used.
fOpenWithLinks :: Lens' File (Maybe FileOpenWithLinks)
fOpenWithLinks
  = lens _fOpenWithLinks
      (\ s a -> s{_fOpenWithLinks = a})

-- | A link only available on public folders for viewing their static web
-- assets (HTML, CSS, JS, etc) via Google Drive\'s Website Hosting.
fWebViewLink :: Lens' File (Maybe Text)
fWebViewLink
  = lens _fWebViewLink (\ s a -> s{_fWebViewLink = a})

-- | The original filename if the file was uploaded manually, or the original
-- title if the file was inserted through the API. Note that renames of the
-- title will not change the original filename. This field is only
-- populated for files with content stored in Drive; it is not populated
-- for Google Docs or shortcut files.
fOriginalFilename :: Lens' File (Maybe Text)
fOriginalFilename
  = lens _fOriginalFilename
      (\ s a -> s{_fOriginalFilename = a})

-- | The type of file. This is always drive#file.
fKind :: Lens' File Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | The last user to modify this file.
fLastModifyingUser :: Lens' File (Maybe User)
fLastModifyingUser
  = lens _fLastModifyingUser
      (\ s a -> s{_fLastModifyingUser = a})

-- | A link to the file\'s icon.
fIconLink :: Lens' File (Maybe Text)
fIconLink
  = lens _fIconLink (\ s a -> s{_fIconLink = a})

-- | A link for embedding the file.
fEmbedLink :: Lens' File (Maybe Text)
fEmbedLink
  = lens _fEmbedLink (\ s a -> s{_fEmbedLink = a})

-- | The size of the file in bytes. This field is only populated for files
-- with content stored in Drive; it is not populated for Google Docs or
-- shortcut files.
fFileSize :: Lens' File (Maybe Int64)
fFileSize
  = lens _fFileSize (\ s a -> s{_fFileSize = a}) .
      mapping _Coerce

-- | Whether this file is in the Application Data folder.
fAppDataContents :: Lens' File (Maybe Bool)
fAppDataContents
  = lens _fAppDataContents
      (\ s a -> s{_fAppDataContents = a})

-- | Metadata about image media. This will only be present for image types,
-- and its contents will depend on what can be parsed from the image
-- content.
fImageMediaMetadata :: Lens' File (Maybe FileImageMediaMetadata)
fImageMediaMetadata
  = lens _fImageMediaMetadata
      (\ s a -> s{_fImageMediaMetadata = a})

-- | Whether this file has been explicitly trashed, as opposed to recursively
-- trashed.
fExplicitlyTrashed :: Lens' File (Maybe Bool)
fExplicitlyTrashed
  = lens _fExplicitlyTrashed
      (\ s a -> s{_fExplicitlyTrashed = a})

-- | Whether the file can be edited by the current user.
fEditable :: Lens' File (Maybe Bool)
fEditable
  = lens _fEditable (\ s a -> s{_fEditable = a})

-- | Last time this file was modified by the user (formatted RFC 3339
-- timestamp). Note that setting modifiedDate will also update the
-- modifiedByMe date for the user which set the date.
fModifiedByMeDate :: Lens' File (Maybe UTCTime)
fModifiedByMeDate
  = lens _fModifiedByMeDate
      (\ s a -> s{_fModifiedByMeDate = a})
      . mapping _DateTime

-- | Last time this file was viewed by the user (formatted RFC 3339
-- timestamp).
fLastViewedByMeDate :: Lens' File (Maybe UTCTime)
fLastViewedByMeDate
  = lens _fLastViewedByMeDate
      (\ s a -> s{_fLastViewedByMeDate = a})
      . mapping _DateTime

-- | Whether the file has been shared.
fShared :: Lens' File (Maybe Bool)
fShared = lens _fShared (\ s a -> s{_fShared = a})

-- | An MD5 checksum for the content of this file. This field is only
-- populated for files with content stored in Drive; it is not populated
-- for Google Docs or shortcut files.
fMD5Checksum :: Lens' File (Maybe Text)
fMD5Checksum
  = lens _fMD5Checksum (\ s a -> s{_fMD5Checksum = a})

-- | Folder color as an RGB hex string if the file is a folder. The list of
-- supported colors is available in the folderColorPalette field of the
-- About resource. If an unsupported color is specified, it will be changed
-- to the closest color in the palette.
fFolderColorRgb :: Lens' File (Maybe Text)
fFolderColorRgb
  = lens _fFolderColorRgb
      (\ s a -> s{_fFolderColorRgb = a})

-- | The MIME type of the file. This is only mutable on update when uploading
-- new content. This field can be left blank, and the mimetype will be
-- determined from the uploaded content\'s MIME type.
fMimeType :: Lens' File (Maybe Text)
fMimeType
  = lens _fMimeType (\ s a -> s{_fMimeType = a})

-- | Create time for this file (formatted RFC 3339 timestamp).
fCreatedDate :: Lens' File (Maybe UTCTime)
fCreatedDate
  = lens _fCreatedDate (\ s a -> s{_fCreatedDate = a})
      . mapping _DateTime

-- | A link back to this file.
fSelfLink :: Lens' File (Maybe Text)
fSelfLink
  = lens _fSelfLink (\ s a -> s{_fSelfLink = a})

-- | Name of the last user to modify this file.
fLastModifyingUserName :: Lens' File (Maybe Text)
fLastModifyingUserName
  = lens _fLastModifyingUserName
      (\ s a -> s{_fLastModifyingUserName = a})

-- | Whether the file\'s sharing settings can be modified by the current
-- user.
fShareable :: Lens' File (Maybe Bool)
fShareable
  = lens _fShareable (\ s a -> s{_fShareable = a})

fDownloadURL :: Lens' File (Maybe Text)
fDownloadURL
  = lens _fDownloadURL (\ s a -> s{_fDownloadURL = a})

-- | Links for exporting Google Docs to specific formats.
fExportLinks :: Lens' File (Maybe FileExportLinks)
fExportLinks
  = lens _fExportLinks (\ s a -> s{_fExportLinks = a})

-- | Whether the file can be copied by the current user.
fCopyable :: Lens' File (Maybe Bool)
fCopyable
  = lens _fCopyable (\ s a -> s{_fCopyable = a})

-- | Collection of parent folders which contain this file. Setting this field
-- will put the file in all of the provided folders. On insert, if no
-- folders are provided, the file will be placed in the default root
-- folder.
fParents :: Lens' File [ParentReference]
fParents
  = lens _fParents (\ s a -> s{_fParents = a}) .
      _Default
      . _Coerce

-- | Time at which this file was shared with the user (formatted RFC 3339
-- timestamp).
fSharedWithMeDate :: Lens' File (Maybe UTCTime)
fSharedWithMeDate
  = lens _fSharedWithMeDate
      (\ s a -> s{_fSharedWithMeDate = a})
      . mapping _DateTime

-- | The list of spaces which contain the file. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
fSpaces :: Lens' File [Text]
fSpaces
  = lens _fSpaces (\ s a -> s{_fSpaces = a}) . _Default
      . _Coerce

-- | A monotonically increasing version number for the file. This reflects
-- every change made to the file on the server, even those not visible to
-- the requesting user.
fVersion :: Lens' File (Maybe Int64)
fVersion
  = lens _fVersion (\ s a -> s{_fVersion = a}) .
      mapping _Coerce

-- | The permissions for the authenticated user on this file.
fUserPermission :: Lens' File (Maybe Permission)
fUserPermission
  = lens _fUserPermission
      (\ s a -> s{_fUserPermission = a})

-- | Whether writers can share the document with other users.
fWritersCanShare :: Lens' File (Maybe Bool)
fWritersCanShare
  = lens _fWritersCanShare
      (\ s a -> s{_fWritersCanShare = a})

-- | A link to open this file with the user\'s default app for this file.
-- Only populated when the drive.apps.readonly scope is used.
fDefaultOpenWithLink :: Lens' File (Maybe Text)
fDefaultOpenWithLink
  = lens _fDefaultOpenWithLink
      (\ s a -> s{_fDefaultOpenWithLink = a})

-- | The ID of the file.
fId :: Lens' File (Maybe Text)
fId = lens _fId (\ s a -> s{_fId = a})

-- | A group of labels for the file.
fLabels :: Lens' File (Maybe FileLabels)
fLabels = lens _fLabels (\ s a -> s{_fLabels = a})

-- | Last time this file was modified by anyone (formatted RFC 3339
-- timestamp). This is only mutable on update when the setModifiedDate
-- parameter is set.
fModifiedDate :: Lens' File (Maybe UTCTime)
fModifiedDate
  = lens _fModifiedDate
      (\ s a -> s{_fModifiedDate = a})
      . mapping _DateTime

-- | The list of permissions for users with access to this file.
fPermissions :: Lens' File [Permission]
fPermissions
  = lens _fPermissions (\ s a -> s{_fPermissions = a})
      . _Default
      . _Coerce

-- | The number of quota bytes used by this file.
fQuotaBytesUsed :: Lens' File (Maybe Int64)
fQuotaBytesUsed
  = lens _fQuotaBytesUsed
      (\ s a -> s{_fQuotaBytesUsed = a})
      . mapping _Coerce

-- | The title of this file.
fTitle :: Lens' File (Maybe Text)
fTitle = lens _fTitle (\ s a -> s{_fTitle = a})

-- | A link for opening the file in a relevant Google editor or viewer.
fAlternateLink :: Lens' File (Maybe Text)
fAlternateLink
  = lens _fAlternateLink
      (\ s a -> s{_fAlternateLink = a})

-- | Metadata about video media. This will only be present for video types.
fVideoMediaMetadata :: Lens' File (Maybe FileVideoMediaMetadata)
fVideoMediaMetadata
  = lens _fVideoMediaMetadata
      (\ s a -> s{_fVideoMediaMetadata = a})

-- | The ID of the file\'s head revision. This field is only populated for
-- files with content stored in Drive; it is not populated for Google Docs
-- or shortcut files.
fHeadRevisionId :: Lens' File (Maybe Text)
fHeadRevisionId
  = lens _fHeadRevisionId
      (\ s a -> s{_fHeadRevisionId = a})

-- | A short description of the file.
fDescription :: Lens' File (Maybe Text)
fDescription
  = lens _fDescription (\ s a -> s{_fDescription = a})

-- | User that shared the item with the current user, if available.
fSharingUser :: Lens' File (Maybe User)
fSharingUser
  = lens _fSharingUser (\ s a -> s{_fSharingUser = a})

-- | A link for downloading the content of the file in a browser using cookie
-- based authentication. In cases where the content is shared publicly, the
-- content can be downloaded without any credentials.
fWebContentLink :: Lens' File (Maybe Text)
fWebContentLink
  = lens _fWebContentLink
      (\ s a -> s{_fWebContentLink = a})

-- | The list of properties.
fProperties :: Lens' File [Property]
fProperties
  = lens _fProperties (\ s a -> s{_fProperties = a}) .
      _Default
      . _Coerce

-- | Indexable text attributes for the file (can only be written)
fIndexableText :: Lens' File (Maybe FileIndexableText)
fIndexableText
  = lens _fIndexableText
      (\ s a -> s{_fIndexableText = a})

instance FromJSON File where
        parseJSON
          = withObject "File"
              (\ o ->
                 File <$>
                   (o .:? "ownedByMe") <*> (o .:? "thumbnailLink") <*>
                     (o .:? "fullFileExtension")
                     <*> (o .:? "thumbnail")
                     <*> (o .:? "markedViewedByMeDate")
                     <*> (o .:? "etag")
                     <*> (o .:? "fileExtension")
                     <*> (o .:? "canComment")
                     <*> (o .:? "owners" .!= mempty)
                     <*> (o .:? "ownerNames" .!= mempty)
                     <*> (o .:? "openWithLinks")
                     <*> (o .:? "webViewLink")
                     <*> (o .:? "originalFilename")
                     <*> (o .:? "kind" .!= "drive#file")
                     <*> (o .:? "lastModifyingUser")
                     <*> (o .:? "iconLink")
                     <*> (o .:? "embedLink")
                     <*> (o .:? "fileSize")
                     <*> (o .:? "appDataContents")
                     <*> (o .:? "imageMediaMetadata")
                     <*> (o .:? "explicitlyTrashed")
                     <*> (o .:? "editable")
                     <*> (o .:? "modifiedByMeDate")
                     <*> (o .:? "lastViewedByMeDate")
                     <*> (o .:? "shared")
                     <*> (o .:? "md5Checksum")
                     <*> (o .:? "folderColorRgb")
                     <*> (o .:? "mimeType")
                     <*> (o .:? "createdDate")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "lastModifyingUserName")
                     <*> (o .:? "shareable")
                     <*> (o .:? "downloadUrl")
                     <*> (o .:? "exportLinks")
                     <*> (o .:? "copyable")
                     <*> (o .:? "parents" .!= mempty)
                     <*> (o .:? "sharedWithMeDate")
                     <*> (o .:? "spaces" .!= mempty)
                     <*> (o .:? "version")
                     <*> (o .:? "userPermission")
                     <*> (o .:? "writersCanShare")
                     <*> (o .:? "defaultOpenWithLink")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "modifiedDate")
                     <*> (o .:? "permissions" .!= mempty)
                     <*> (o .:? "quotaBytesUsed")
                     <*> (o .:? "title")
                     <*> (o .:? "alternateLink")
                     <*> (o .:? "videoMediaMetadata")
                     <*> (o .:? "headRevisionId")
                     <*> (o .:? "description")
                     <*> (o .:? "sharingUser")
                     <*> (o .:? "webContentLink")
                     <*> (o .:? "properties" .!= mempty)
                     <*> (o .:? "indexableText"))

instance ToJSON File where
        toJSON File{..}
          = object
              (catMaybes
                 [("ownedByMe" .=) <$> _fOwnedByMe,
                  ("thumbnailLink" .=) <$> _fThumbnailLink,
                  ("fullFileExtension" .=) <$> _fFullFileExtension,
                  ("thumbnail" .=) <$> _fThumbnail,
                  ("markedViewedByMeDate" .=) <$>
                    _fMarkedViewedByMeDate,
                  ("etag" .=) <$> _fEtag,
                  ("fileExtension" .=) <$> _fFileExtension,
                  ("canComment" .=) <$> _fCanComment,
                  ("owners" .=) <$> _fOwners,
                  ("ownerNames" .=) <$> _fOwnerNames,
                  ("openWithLinks" .=) <$> _fOpenWithLinks,
                  ("webViewLink" .=) <$> _fWebViewLink,
                  ("originalFilename" .=) <$> _fOriginalFilename,
                  Just ("kind" .= _fKind),
                  ("lastModifyingUser" .=) <$> _fLastModifyingUser,
                  ("iconLink" .=) <$> _fIconLink,
                  ("embedLink" .=) <$> _fEmbedLink,
                  ("fileSize" .=) <$> _fFileSize,
                  ("appDataContents" .=) <$> _fAppDataContents,
                  ("imageMediaMetadata" .=) <$> _fImageMediaMetadata,
                  ("explicitlyTrashed" .=) <$> _fExplicitlyTrashed,
                  ("editable" .=) <$> _fEditable,
                  ("modifiedByMeDate" .=) <$> _fModifiedByMeDate,
                  ("lastViewedByMeDate" .=) <$> _fLastViewedByMeDate,
                  ("shared" .=) <$> _fShared,
                  ("md5Checksum" .=) <$> _fMD5Checksum,
                  ("folderColorRgb" .=) <$> _fFolderColorRgb,
                  ("mimeType" .=) <$> _fMimeType,
                  ("createdDate" .=) <$> _fCreatedDate,
                  ("selfLink" .=) <$> _fSelfLink,
                  ("lastModifyingUserName" .=) <$>
                    _fLastModifyingUserName,
                  ("shareable" .=) <$> _fShareable,
                  ("downloadUrl" .=) <$> _fDownloadURL,
                  ("exportLinks" .=) <$> _fExportLinks,
                  ("copyable" .=) <$> _fCopyable,
                  ("parents" .=) <$> _fParents,
                  ("sharedWithMeDate" .=) <$> _fSharedWithMeDate,
                  ("spaces" .=) <$> _fSpaces,
                  ("version" .=) <$> _fVersion,
                  ("userPermission" .=) <$> _fUserPermission,
                  ("writersCanShare" .=) <$> _fWritersCanShare,
                  ("defaultOpenWithLink" .=) <$> _fDefaultOpenWithLink,
                  ("id" .=) <$> _fId, ("labels" .=) <$> _fLabels,
                  ("modifiedDate" .=) <$> _fModifiedDate,
                  ("permissions" .=) <$> _fPermissions,
                  ("quotaBytesUsed" .=) <$> _fQuotaBytesUsed,
                  ("title" .=) <$> _fTitle,
                  ("alternateLink" .=) <$> _fAlternateLink,
                  ("videoMediaMetadata" .=) <$> _fVideoMediaMetadata,
                  ("headRevisionId" .=) <$> _fHeadRevisionId,
                  ("description" .=) <$> _fDescription,
                  ("sharingUser" .=) <$> _fSharingUser,
                  ("webContentLink" .=) <$> _fWebContentLink,
                  ("properties" .=) <$> _fProperties,
                  ("indexableText" .=) <$> _fIndexableText])

-- | An ID for a user or group as seen in Permission items.
--
-- /See:/ 'permissionId' smart constructor.
data PermissionId = PermissionId
    { _piKind :: !Text
    , _piId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piKind'
--
-- * 'piId'
permissionId
    :: PermissionId
permissionId =
    PermissionId
    { _piKind = "drive#permissionId"
    , _piId = Nothing
    }

-- | This is always drive#permissionId.
piKind :: Lens' PermissionId Text
piKind = lens _piKind (\ s a -> s{_piKind = a})

-- | The permission ID.
piId :: Lens' PermissionId (Maybe Text)
piId = lens _piId (\ s a -> s{_piId = a})

instance FromJSON PermissionId where
        parseJSON
          = withObject "PermissionId"
              (\ o ->
                 PermissionId <$>
                   (o .:? "kind" .!= "drive#permissionId") <*>
                     (o .:? "id"))

instance ToJSON PermissionId where
        toJSON PermissionId{..}
          = object
              (catMaybes
                 [Just ("kind" .= _piKind), ("id" .=) <$> _piId])

-- | A list of a file\'s parents.
--
-- /See:/ 'parentList' smart constructor.
data ParentList = ParentList
    { _parEtag     :: !(Maybe Text)
    , _parKind     :: !Text
    , _parItems    :: !(Maybe [ParentReference])
    , _parSelfLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parEtag'
--
-- * 'parKind'
--
-- * 'parItems'
--
-- * 'parSelfLink'
parentList
    :: ParentList
parentList =
    ParentList
    { _parEtag = Nothing
    , _parKind = "drive#parentList"
    , _parItems = Nothing
    , _parSelfLink = Nothing
    }

-- | The ETag of the list.
parEtag :: Lens' ParentList (Maybe Text)
parEtag = lens _parEtag (\ s a -> s{_parEtag = a})

-- | This is always drive#parentList.
parKind :: Lens' ParentList Text
parKind = lens _parKind (\ s a -> s{_parKind = a})

-- | The actual list of parents.
parItems :: Lens' ParentList [ParentReference]
parItems
  = lens _parItems (\ s a -> s{_parItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
parSelfLink :: Lens' ParentList (Maybe Text)
parSelfLink
  = lens _parSelfLink (\ s a -> s{_parSelfLink = a})

instance FromJSON ParentList where
        parseJSON
          = withObject "ParentList"
              (\ o ->
                 ParentList <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "drive#parentList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON ParentList where
        toJSON ParentList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _parEtag, Just ("kind" .= _parKind),
                  ("items" .=) <$> _parItems,
                  ("selfLink" .=) <$> _parSelfLink])

-- | A list of generated IDs which can be provided in insert requests
--
-- /See:/ 'generatedIds' smart constructor.
data GeneratedIds = GeneratedIds
    { _giSpace :: !(Maybe Text)
    , _giKind  :: !Text
    , _giIds   :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeneratedIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giSpace'
--
-- * 'giKind'
--
-- * 'giIds'
generatedIds
    :: GeneratedIds
generatedIds =
    GeneratedIds
    { _giSpace = Nothing
    , _giKind = "drive#generatedIds"
    , _giIds = Nothing
    }

-- | The type of file that can be created with these IDs.
giSpace :: Lens' GeneratedIds (Maybe Text)
giSpace = lens _giSpace (\ s a -> s{_giSpace = a})

-- | This is always drive#generatedIds
giKind :: Lens' GeneratedIds Text
giKind = lens _giKind (\ s a -> s{_giKind = a})

-- | The IDs generated for the requesting user in the specified space.
giIds :: Lens' GeneratedIds [Text]
giIds
  = lens _giIds (\ s a -> s{_giIds = a}) . _Default .
      _Coerce

instance FromJSON GeneratedIds where
        parseJSON
          = withObject "GeneratedIds"
              (\ o ->
                 GeneratedIds <$>
                   (o .:? "space") <*>
                     (o .:? "kind" .!= "drive#generatedIds")
                     <*> (o .:? "ids" .!= mempty))

instance ToJSON GeneratedIds where
        toJSON GeneratedIds{..}
          = object
              (catMaybes
                 [("space" .=) <$> _giSpace, Just ("kind" .= _giKind),
                  ("ids" .=) <$> _giIds])

-- | Links for exporting Google Docs to specific formats.
--
-- /See:/ 'fileExportLinks' smart constructor.
newtype FileExportLinks = FileExportLinks
    { _felAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileExportLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'felAddtional'
fileExportLinks
    :: HashMap Text Text -- ^ 'felAddtional'
    -> FileExportLinks
fileExportLinks pFelAddtional_ =
    FileExportLinks
    { _felAddtional = _Coerce # pFelAddtional_
    }

-- | A mapping from export format to URL
felAddtional :: Lens' FileExportLinks (HashMap Text Text)
felAddtional
  = lens _felAddtional (\ s a -> s{_felAddtional = a})
      . _Coerce

instance FromJSON FileExportLinks where
        parseJSON
          = withObject "FileExportLinks"
              (\ o -> FileExportLinks <$> (parseJSONObject o))

instance ToJSON FileExportLinks where
        toJSON = toJSON . _felAddtional

-- | A JSON representation of a list of comments on a file in Google Drive.
--
-- /See:/ 'commentList' smart constructor.
data CommentList = CommentList
    { _comoNextPageToken :: !(Maybe Text)
    , _comoNextLink      :: !(Maybe Text)
    , _comoKind          :: !Text
    , _comoItems         :: !(Maybe [Comment])
    , _comoSelfLink      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comoNextPageToken'
--
-- * 'comoNextLink'
--
-- * 'comoKind'
--
-- * 'comoItems'
--
-- * 'comoSelfLink'
commentList
    :: CommentList
commentList =
    CommentList
    { _comoNextPageToken = Nothing
    , _comoNextLink = Nothing
    , _comoKind = "drive#commentList"
    , _comoItems = Nothing
    , _comoSelfLink = Nothing
    }

-- | The token to use to request the next page of results.
comoNextPageToken :: Lens' CommentList (Maybe Text)
comoNextPageToken
  = lens _comoNextPageToken
      (\ s a -> s{_comoNextPageToken = a})

-- | A link to the next page of comments.
comoNextLink :: Lens' CommentList (Maybe Text)
comoNextLink
  = lens _comoNextLink (\ s a -> s{_comoNextLink = a})

-- | This is always drive#commentList.
comoKind :: Lens' CommentList Text
comoKind = lens _comoKind (\ s a -> s{_comoKind = a})

-- | List of comments.
comoItems :: Lens' CommentList [Comment]
comoItems
  = lens _comoItems (\ s a -> s{_comoItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
comoSelfLink :: Lens' CommentList (Maybe Text)
comoSelfLink
  = lens _comoSelfLink (\ s a -> s{_comoSelfLink = a})

instance FromJSON CommentList where
        parseJSON
          = withObject "CommentList"
              (\ o ->
                 CommentList <$>
                   (o .:? "nextPageToken") <*> (o .:? "nextLink") <*>
                     (o .:? "kind" .!= "drive#commentList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON CommentList where
        toJSON CommentList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _comoNextPageToken,
                  ("nextLink" .=) <$> _comoNextLink,
                  Just ("kind" .= _comoKind),
                  ("items" .=) <$> _comoItems,
                  ("selfLink" .=) <$> _comoSelfLink])

-- | A list of revisions of a file.
--
-- /See:/ 'revisionList' smart constructor.
data RevisionList = RevisionList
    { _rlEtag     :: !(Maybe Text)
    , _rlKind     :: !Text
    , _rlItems    :: !(Maybe [Revision])
    , _rlSelfLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlEtag'
--
-- * 'rlKind'
--
-- * 'rlItems'
--
-- * 'rlSelfLink'
revisionList
    :: RevisionList
revisionList =
    RevisionList
    { _rlEtag = Nothing
    , _rlKind = "drive#revisionList"
    , _rlItems = Nothing
    , _rlSelfLink = Nothing
    }

-- | The ETag of the list.
rlEtag :: Lens' RevisionList (Maybe Text)
rlEtag = lens _rlEtag (\ s a -> s{_rlEtag = a})

-- | This is always drive#revisionList.
rlKind :: Lens' RevisionList Text
rlKind = lens _rlKind (\ s a -> s{_rlKind = a})

-- | The actual list of revisions.
rlItems :: Lens' RevisionList [Revision]
rlItems
  = lens _rlItems (\ s a -> s{_rlItems = a}) . _Default
      . _Coerce

-- | A link back to this list.
rlSelfLink :: Lens' RevisionList (Maybe Text)
rlSelfLink
  = lens _rlSelfLink (\ s a -> s{_rlSelfLink = a})

instance FromJSON RevisionList where
        parseJSON
          = withObject "RevisionList"
              (\ o ->
                 RevisionList <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "drive#revisionList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON RevisionList where
        toJSON RevisionList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rlEtag, Just ("kind" .= _rlKind),
                  ("items" .=) <$> _rlItems,
                  ("selfLink" .=) <$> _rlSelfLink])

-- | A list of permissions associated with a file.
--
-- /See:/ 'permissionList' smart constructor.
data PermissionList = PermissionList
    { _pllEtag     :: !(Maybe Text)
    , _pllKind     :: !Text
    , _pllItems    :: !(Maybe [Permission])
    , _pllSelfLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllEtag'
--
-- * 'pllKind'
--
-- * 'pllItems'
--
-- * 'pllSelfLink'
permissionList
    :: PermissionList
permissionList =
    PermissionList
    { _pllEtag = Nothing
    , _pllKind = "drive#permissionList"
    , _pllItems = Nothing
    , _pllSelfLink = Nothing
    }

-- | The ETag of the list.
pllEtag :: Lens' PermissionList (Maybe Text)
pllEtag = lens _pllEtag (\ s a -> s{_pllEtag = a})

-- | This is always drive#permissionList.
pllKind :: Lens' PermissionList Text
pllKind = lens _pllKind (\ s a -> s{_pllKind = a})

-- | The actual list of permissions.
pllItems :: Lens' PermissionList [Permission]
pllItems
  = lens _pllItems (\ s a -> s{_pllItems = a}) .
      _Default
      . _Coerce

-- | A link back to this list.
pllSelfLink :: Lens' PermissionList (Maybe Text)
pllSelfLink
  = lens _pllSelfLink (\ s a -> s{_pllSelfLink = a})

instance FromJSON PermissionList where
        parseJSON
          = withObject "PermissionList"
              (\ o ->
                 PermissionList <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "drive#permissionList")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON PermissionList where
        toJSON PermissionList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pllEtag, Just ("kind" .= _pllKind),
                  ("items" .=) <$> _pllItems,
                  ("selfLink" .=) <$> _pllSelfLink])
