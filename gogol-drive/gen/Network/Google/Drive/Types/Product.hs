{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

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

--
-- /See:/ 'quotaBytesByServiceItem' smart constructor.
data QuotaBytesByServiceItem = QuotaBytesByServiceItem
    { _qbbsiBytesUsed   :: !(Maybe Int64)
    , _qbbsiServiceName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuotaBytesByServiceItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qbbsiBytesUsed'
--
-- * 'qbbsiServiceName'
quotaBytesByServiceItem
    :: QuotaBytesByServiceItem
quotaBytesByServiceItem =
    QuotaBytesByServiceItem
    { _qbbsiBytesUsed = Nothing
    , _qbbsiServiceName = Nothing
    }

-- | The storage quota bytes used by the service.
qbbsiBytesUsed :: Lens' QuotaBytesByServiceItem (Maybe Int64)
qbbsiBytesUsed
  = lens _qbbsiBytesUsed
      (\ s a -> s{_qbbsiBytesUsed = a})

-- | The service\'s name, e.g. DRIVE, GMAIL, or PHOTOS.
qbbsiServiceName :: Lens' QuotaBytesByServiceItem (Maybe Text)
qbbsiServiceName
  = lens _qbbsiServiceName
      (\ s a -> s{_qbbsiServiceName = a})

instance FromJSON QuotaBytesByServiceItem where
        parseJSON
          = withObject "QuotaBytesByServiceItem"
              (\ o ->
                 QuotaBytesByServiceItem <$>
                   (o .:? "bytesUsed") <*> (o .:? "serviceName"))

instance ToJSON QuotaBytesByServiceItem where
        toJSON QuotaBytesByServiceItem{..}
          = object
              (catMaybes
                 [("bytesUsed" .=) <$> _qbbsiBytesUsed,
                  ("serviceName" .=) <$> _qbbsiServiceName])

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

-- | Thumbnail for the file. Only accepted on upload and for files that are
-- not already thumbnailed by Google.
--
-- /See:/ 'thumbnail' smart constructor.
data Thumbnail = Thumbnail
    { _tImage    :: !(Maybe Word8)
    , _tMimeType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Thumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tImage'
--
-- * 'tMimeType'
thumbnail
    :: Thumbnail
thumbnail =
    Thumbnail
    { _tImage = Nothing
    , _tMimeType = Nothing
    }

-- | The URL-safe Base64 encoded bytes of the thumbnail image. It should
-- conform to RFC 4648 section 5.
tImage :: Lens' Thumbnail (Maybe Word8)
tImage = lens _tImage (\ s a -> s{_tImage = a})

-- | The MIME type of the thumbnail.
tMimeType :: Lens' Thumbnail (Maybe Text)
tMimeType
  = lens _tMimeType (\ s a -> s{_tMimeType = a})

instance FromJSON Thumbnail where
        parseJSON
          = withObject "Thumbnail"
              (\ o ->
                 Thumbnail <$> (o .:? "image") <*> (o .:? "mimeType"))

instance ToJSON Thumbnail where
        toJSON Thumbnail{..}
          = object
              (catMaybes
                 [("image" .=) <$> _tImage,
                  ("mimeType" .=) <$> _tMimeType])

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

-- | The context of the file which is being commented on.
--
-- /See:/ 'context' smart constructor.
data Context = Context
    { _cValue :: !(Maybe Text)
    , _cType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cValue'
--
-- * 'cType'
context
    :: Context
context =
    Context
    { _cValue = Nothing
    , _cType = Nothing
    }

-- | Data representation of the segment of the file being commented on. In
-- the case of a text file for example, this would be the actual text that
-- the comment is about.
cValue :: Lens' Context (Maybe Text)
cValue = lens _cValue (\ s a -> s{_cValue = a})

-- | The MIME type of the context snippet.
cType :: Lens' Context (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Context where
        parseJSON
          = withObject "Context"
              (\ o ->
                 Context <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON Context where
        toJSON Context{..}
          = object
              (catMaybes
                 [("value" .=) <$> _cValue, ("type" .=) <$> _cType])

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

--
-- /See:/ 'featuresItem' smart constructor.
data FeaturesItem = FeaturesItem
    { _fiFeatureRate :: !(Maybe Double)
    , _fiFeatureName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeaturesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiFeatureRate'
--
-- * 'fiFeatureName'
featuresItem
    :: FeaturesItem
featuresItem =
    FeaturesItem
    { _fiFeatureRate = Nothing
    , _fiFeatureName = Nothing
    }

-- | The request limit rate for this feature, in queries per second.
fiFeatureRate :: Lens' FeaturesItem (Maybe Double)
fiFeatureRate
  = lens _fiFeatureRate
      (\ s a -> s{_fiFeatureRate = a})

-- | The name of the feature.
fiFeatureName :: Lens' FeaturesItem (Maybe Text)
fiFeatureName
  = lens _fiFeatureName
      (\ s a -> s{_fiFeatureName = a})

instance FromJSON FeaturesItem where
        parseJSON
          = withObject "FeaturesItem"
              (\ o ->
                 FeaturesItem <$>
                   (o .:? "featureRate") <*> (o .:? "featureName"))

instance ToJSON FeaturesItem where
        toJSON FeaturesItem{..}
          = object
              (catMaybes
                 [("featureRate" .=) <$> _fiFeatureRate,
                  ("featureName" .=) <$> _fiFeatureName])

-- | Geographic location information stored in the image.
--
-- /See:/ 'location' smart constructor.
data Location = Location
    { _lLatitude  :: !(Maybe Double)
    , _lAltitude  :: !(Maybe Double)
    , _lLongitude :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLatitude'
--
-- * 'lAltitude'
--
-- * 'lLongitude'
location
    :: Location
location =
    Location
    { _lLatitude = Nothing
    , _lAltitude = Nothing
    , _lLongitude = Nothing
    }

-- | The latitude stored in the image.
lLatitude :: Lens' Location (Maybe Double)
lLatitude
  = lens _lLatitude (\ s a -> s{_lLatitude = a})

-- | The altitude stored in the image.
lAltitude :: Lens' Location (Maybe Double)
lAltitude
  = lens _lAltitude (\ s a -> s{_lAltitude = a})

-- | The longitude stored in the image.
lLongitude :: Lens' Location (Maybe Double)
lLongitude
  = lens _lLongitude (\ s a -> s{_lLongitude = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location <$>
                   (o .:? "latitude") <*> (o .:? "altitude") <*>
                     (o .:? "longitude"))

instance ToJSON Location where
        toJSON Location{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _lLatitude,
                  ("altitude" .=) <$> _lAltitude,
                  ("longitude" .=) <$> _lLongitude])

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

-- | A map of the id of each of the user\'s apps to a link to open this file
-- with that app. Only populated when the drive.apps.readonly scope is
-- used.
--
-- /See:/ 'openWithLinks' smart constructor.
data OpenWithLinks =
    OpenWithLinks
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OpenWithLinks' with the minimum fields required to make a request.
--
openWithLinks
    :: OpenWithLinks
openWithLinks = OpenWithLinks

instance FromJSON OpenWithLinks where
        parseJSON
          = withObject "OpenWithLinks"
              (\ o -> pure OpenWithLinks)

instance ToJSON OpenWithLinks where
        toJSON = const (Object mempty)

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

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _chaResourceURI :: !(Maybe Text)
    , _chaResourceId  :: !(Maybe Text)
    , _chaKind        :: !Text
    , _chaExpiration  :: !(Maybe Int64)
    , _chaToken       :: !(Maybe Text)
    , _chaAddress     :: !(Maybe Text)
    , _chaPayload     :: !(Maybe Bool)
    , _chaParams      :: !(Maybe Params)
    , _chaId          :: !(Maybe Text)
    , _chaType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaResourceURI'
--
-- * 'chaResourceId'
--
-- * 'chaKind'
--
-- * 'chaExpiration'
--
-- * 'chaToken'
--
-- * 'chaAddress'
--
-- * 'chaPayload'
--
-- * 'chaParams'
--
-- * 'chaId'
--
-- * 'chaType'
channel
    :: Channel
channel =
    Channel
    { _chaResourceURI = Nothing
    , _chaResourceId = Nothing
    , _chaKind = "api#channel"
    , _chaExpiration = Nothing
    , _chaToken = Nothing
    , _chaAddress = Nothing
    , _chaPayload = Nothing
    , _chaParams = Nothing
    , _chaId = Nothing
    , _chaType = Nothing
    }

-- | A version-specific identifier for the watched resource.
chaResourceURI :: Lens' Channel (Maybe Text)
chaResourceURI
  = lens _chaResourceURI
      (\ s a -> s{_chaResourceURI = a})

-- | An opaque ID that identifies the resource being watched on this channel.
-- Stable across different API versions.
chaResourceId :: Lens' Channel (Maybe Text)
chaResourceId
  = lens _chaResourceId
      (\ s a -> s{_chaResourceId = a})

-- | Identifies this as a notification channel used to watch for changes to a
-- resource. Value: the fixed string \"api#channel\".
chaKind :: Lens' Channel Text
chaKind = lens _chaKind (\ s a -> s{_chaKind = a})

-- | Date and time of notification channel expiration, expressed as a Unix
-- timestamp, in milliseconds. Optional.
chaExpiration :: Lens' Channel (Maybe Int64)
chaExpiration
  = lens _chaExpiration
      (\ s a -> s{_chaExpiration = a})

-- | An arbitrary string delivered to the target address with each
-- notification delivered over this channel. Optional.
chaToken :: Lens' Channel (Maybe Text)
chaToken = lens _chaToken (\ s a -> s{_chaToken = a})

-- | The address where notifications are delivered for this channel.
chaAddress :: Lens' Channel (Maybe Text)
chaAddress
  = lens _chaAddress (\ s a -> s{_chaAddress = a})

-- | A Boolean value to indicate whether payload is wanted. Optional.
chaPayload :: Lens' Channel (Maybe Bool)
chaPayload
  = lens _chaPayload (\ s a -> s{_chaPayload = a})

-- | Additional parameters controlling delivery channel behavior. Optional.
chaParams :: Lens' Channel (Maybe Params)
chaParams
  = lens _chaParams (\ s a -> s{_chaParams = a})

-- | A UUID or similar unique string that identifies this channel.
chaId :: Lens' Channel (Maybe Text)
chaId = lens _chaId (\ s a -> s{_chaId = a})

-- | The type of delivery mechanism used for this channel.
chaType :: Lens' Channel (Maybe Text)
chaType = lens _chaType (\ s a -> s{_chaType = a})

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
                 [("resourceUri" .=) <$> _chaResourceURI,
                  ("resourceId" .=) <$> _chaResourceId,
                  Just ("kind" .= _chaKind),
                  ("expiration" .=) <$> _chaExpiration,
                  ("token" .=) <$> _chaToken,
                  ("address" .=) <$> _chaAddress,
                  ("payload" .=) <$> _chaPayload,
                  ("params" .=) <$> _chaParams, ("id" .=) <$> _chaId,
                  ("type" .=) <$> _chaType])

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

-- | Representation of a change to a file.
--
-- /See:/ 'change' smart constructor.
data Change = Change
    { _cKind             :: !Text
    , _cSelfLink         :: !(Maybe Text)
    , _cModificationDate :: !(Maybe DateTime')
    , _cId               :: !(Maybe Int64)
    , _cDeleted          :: !(Maybe Bool)
    , _cFileId           :: !(Maybe Text)
    , _cFile             :: !(Maybe File)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Change' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cKind'
--
-- * 'cSelfLink'
--
-- * 'cModificationDate'
--
-- * 'cId'
--
-- * 'cDeleted'
--
-- * 'cFileId'
--
-- * 'cFile'
change
    :: Change
change =
    Change
    { _cKind = "drive#change"
    , _cSelfLink = Nothing
    , _cModificationDate = Nothing
    , _cId = Nothing
    , _cDeleted = Nothing
    , _cFileId = Nothing
    , _cFile = Nothing
    }

-- | This is always drive#change.
cKind :: Lens' Change Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | A link back to this change.
cSelfLink :: Lens' Change (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The time of this modification.
cModificationDate :: Lens' Change (Maybe UTCTime)
cModificationDate
  = lens _cModificationDate
      (\ s a -> s{_cModificationDate = a})
      . mapping _DateTime

-- | The ID of the change.
cId :: Lens' Change (Maybe Int64)
cId = lens _cId (\ s a -> s{_cId = a})

-- | Whether the file has been deleted.
cDeleted :: Lens' Change (Maybe Bool)
cDeleted = lens _cDeleted (\ s a -> s{_cDeleted = a})

-- | The ID of the file associated with this change.
cFileId :: Lens' Change (Maybe Text)
cFileId = lens _cFileId (\ s a -> s{_cFileId = a})

-- | The updated state of the file. Present if the file has not been deleted.
cFile :: Lens' Change (Maybe File)
cFile = lens _cFile (\ s a -> s{_cFile = a})

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
                 [Just ("kind" .= _cKind),
                  ("selfLink" .=) <$> _cSelfLink,
                  ("modificationDate" .=) <$> _cModificationDate,
                  ("id" .=) <$> _cId, ("deleted" .=) <$> _cDeleted,
                  ("fileId" .=) <$> _cFileId, ("file" .=) <$> _cFile])

-- | Metadata about image media. This will only be present for image types,
-- and its contents will depend on what can be parsed from the image
-- content.
--
-- /See:/ 'imageMediaMetadata' smart constructor.
data ImageMediaMetadata = ImageMediaMetadata
    { _immRotation         :: !(Maybe Int32)
    , _immHeight           :: !(Maybe Int32)
    , _immSubjectDistance  :: !(Maybe Int32)
    , _immMaxApertureValue :: !(Maybe Float)
    , _immIsoSpeed         :: !(Maybe Int32)
    , _immLocation         :: !(Maybe Location)
    , _immAperture         :: !(Maybe Float)
    , _immFocalLength      :: !(Maybe Float)
    , _immCameraMake       :: !(Maybe Text)
    , _immWidth            :: !(Maybe Int32)
    , _immExposureTime     :: !(Maybe Float)
    , _immCameraModel      :: !(Maybe Text)
    , _immWhiteBalance     :: !(Maybe Text)
    , _immDate             :: !(Maybe Text)
    , _immLens             :: !(Maybe Text)
    , _immFlashUsed        :: !(Maybe Bool)
    , _immExposureBias     :: !(Maybe Float)
    , _immMeteringMode     :: !(Maybe Text)
    , _immExposureMode     :: !(Maybe Text)
    , _immSensor           :: !(Maybe Text)
    , _immColorSpace       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageMediaMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'immRotation'
--
-- * 'immHeight'
--
-- * 'immSubjectDistance'
--
-- * 'immMaxApertureValue'
--
-- * 'immIsoSpeed'
--
-- * 'immLocation'
--
-- * 'immAperture'
--
-- * 'immFocalLength'
--
-- * 'immCameraMake'
--
-- * 'immWidth'
--
-- * 'immExposureTime'
--
-- * 'immCameraModel'
--
-- * 'immWhiteBalance'
--
-- * 'immDate'
--
-- * 'immLens'
--
-- * 'immFlashUsed'
--
-- * 'immExposureBias'
--
-- * 'immMeteringMode'
--
-- * 'immExposureMode'
--
-- * 'immSensor'
--
-- * 'immColorSpace'
imageMediaMetadata
    :: ImageMediaMetadata
imageMediaMetadata =
    ImageMediaMetadata
    { _immRotation = Nothing
    , _immHeight = Nothing
    , _immSubjectDistance = Nothing
    , _immMaxApertureValue = Nothing
    , _immIsoSpeed = Nothing
    , _immLocation = Nothing
    , _immAperture = Nothing
    , _immFocalLength = Nothing
    , _immCameraMake = Nothing
    , _immWidth = Nothing
    , _immExposureTime = Nothing
    , _immCameraModel = Nothing
    , _immWhiteBalance = Nothing
    , _immDate = Nothing
    , _immLens = Nothing
    , _immFlashUsed = Nothing
    , _immExposureBias = Nothing
    , _immMeteringMode = Nothing
    , _immExposureMode = Nothing
    , _immSensor = Nothing
    , _immColorSpace = Nothing
    }

-- | The rotation in clockwise degrees from the image\'s original
-- orientation.
immRotation :: Lens' ImageMediaMetadata (Maybe Int32)
immRotation
  = lens _immRotation (\ s a -> s{_immRotation = a})

-- | The height of the image in pixels.
immHeight :: Lens' ImageMediaMetadata (Maybe Int32)
immHeight
  = lens _immHeight (\ s a -> s{_immHeight = a})

-- | The distance to the subject of the photo, in meters.
immSubjectDistance :: Lens' ImageMediaMetadata (Maybe Int32)
immSubjectDistance
  = lens _immSubjectDistance
      (\ s a -> s{_immSubjectDistance = a})

-- | The smallest f-number of the lens at the focal length used to create the
-- photo (APEX value).
immMaxApertureValue :: Lens' ImageMediaMetadata (Maybe Float)
immMaxApertureValue
  = lens _immMaxApertureValue
      (\ s a -> s{_immMaxApertureValue = a})

-- | The ISO speed used to create the photo.
immIsoSpeed :: Lens' ImageMediaMetadata (Maybe Int32)
immIsoSpeed
  = lens _immIsoSpeed (\ s a -> s{_immIsoSpeed = a})

-- | Geographic location information stored in the image.
immLocation :: Lens' ImageMediaMetadata (Maybe Location)
immLocation
  = lens _immLocation (\ s a -> s{_immLocation = a})

-- | The aperture used to create the photo (f-number).
immAperture :: Lens' ImageMediaMetadata (Maybe Float)
immAperture
  = lens _immAperture (\ s a -> s{_immAperture = a})

-- | The focal length used to create the photo, in millimeters.
immFocalLength :: Lens' ImageMediaMetadata (Maybe Float)
immFocalLength
  = lens _immFocalLength
      (\ s a -> s{_immFocalLength = a})

-- | The make of the camera used to create the photo.
immCameraMake :: Lens' ImageMediaMetadata (Maybe Text)
immCameraMake
  = lens _immCameraMake
      (\ s a -> s{_immCameraMake = a})

-- | The width of the image in pixels.
immWidth :: Lens' ImageMediaMetadata (Maybe Int32)
immWidth = lens _immWidth (\ s a -> s{_immWidth = a})

-- | The length of the exposure, in seconds.
immExposureTime :: Lens' ImageMediaMetadata (Maybe Float)
immExposureTime
  = lens _immExposureTime
      (\ s a -> s{_immExposureTime = a})

-- | The model of the camera used to create the photo.
immCameraModel :: Lens' ImageMediaMetadata (Maybe Text)
immCameraModel
  = lens _immCameraModel
      (\ s a -> s{_immCameraModel = a})

-- | The white balance mode used to create the photo.
immWhiteBalance :: Lens' ImageMediaMetadata (Maybe Text)
immWhiteBalance
  = lens _immWhiteBalance
      (\ s a -> s{_immWhiteBalance = a})

-- | The date and time the photo was taken (EXIF format timestamp).
immDate :: Lens' ImageMediaMetadata (Maybe Text)
immDate = lens _immDate (\ s a -> s{_immDate = a})

-- | The lens used to create the photo.
immLens :: Lens' ImageMediaMetadata (Maybe Text)
immLens = lens _immLens (\ s a -> s{_immLens = a})

-- | Whether a flash was used to create the photo.
immFlashUsed :: Lens' ImageMediaMetadata (Maybe Bool)
immFlashUsed
  = lens _immFlashUsed (\ s a -> s{_immFlashUsed = a})

-- | The exposure bias of the photo (APEX value).
immExposureBias :: Lens' ImageMediaMetadata (Maybe Float)
immExposureBias
  = lens _immExposureBias
      (\ s a -> s{_immExposureBias = a})

-- | The metering mode used to create the photo.
immMeteringMode :: Lens' ImageMediaMetadata (Maybe Text)
immMeteringMode
  = lens _immMeteringMode
      (\ s a -> s{_immMeteringMode = a})

-- | The exposure mode used to create the photo.
immExposureMode :: Lens' ImageMediaMetadata (Maybe Text)
immExposureMode
  = lens _immExposureMode
      (\ s a -> s{_immExposureMode = a})

-- | The type of sensor used to create the photo.
immSensor :: Lens' ImageMediaMetadata (Maybe Text)
immSensor
  = lens _immSensor (\ s a -> s{_immSensor = a})

-- | The color space of the photo.
immColorSpace :: Lens' ImageMediaMetadata (Maybe Text)
immColorSpace
  = lens _immColorSpace
      (\ s a -> s{_immColorSpace = a})

instance FromJSON ImageMediaMetadata where
        parseJSON
          = withObject "ImageMediaMetadata"
              (\ o ->
                 ImageMediaMetadata <$>
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

instance ToJSON ImageMediaMetadata where
        toJSON ImageMediaMetadata{..}
          = object
              (catMaybes
                 [("rotation" .=) <$> _immRotation,
                  ("height" .=) <$> _immHeight,
                  ("subjectDistance" .=) <$> _immSubjectDistance,
                  ("maxApertureValue" .=) <$> _immMaxApertureValue,
                  ("isoSpeed" .=) <$> _immIsoSpeed,
                  ("location" .=) <$> _immLocation,
                  ("aperture" .=) <$> _immAperture,
                  ("focalLength" .=) <$> _immFocalLength,
                  ("cameraMake" .=) <$> _immCameraMake,
                  ("width" .=) <$> _immWidth,
                  ("exposureTime" .=) <$> _immExposureTime,
                  ("cameraModel" .=) <$> _immCameraModel,
                  ("whiteBalance" .=) <$> _immWhiteBalance,
                  ("date" .=) <$> _immDate, ("lens" .=) <$> _immLens,
                  ("flashUsed" .=) <$> _immFlashUsed,
                  ("exposureBias" .=) <$> _immExposureBias,
                  ("meteringMode" .=) <$> _immMeteringMode,
                  ("exposureMode" .=) <$> _immExposureMode,
                  ("sensor" .=) <$> _immSensor,
                  ("colorSpace" .=) <$> _immColorSpace])

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
    , _aIcons                   :: !(Maybe [IconsItem])
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
aIcons :: Lens' App [IconsItem]
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

-- | The JSON template for a user.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _uIsAuthenticatedUser :: !(Maybe Bool)
    , _uKind                :: !Text
    , _uPicture             :: !(Maybe Picture)
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
uPicture :: Lens' User (Maybe Picture)
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

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'params' smart constructor.
data Params =
    Params
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Params' with the minimum fields required to make a request.
--
params
    :: Params
params = Params

instance FromJSON Params where
        parseJSON = withObject "Params" (\ o -> pure Params)

instance ToJSON Params where
        toJSON = const (Object mempty)

--
-- /See:/ 'maxUploadSizesItem' smart constructor.
data MaxUploadSizesItem = MaxUploadSizesItem
    { _musiSize :: !(Maybe Int64)
    , _musiType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MaxUploadSizesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musiSize'
--
-- * 'musiType'
maxUploadSizesItem
    :: MaxUploadSizesItem
maxUploadSizesItem =
    MaxUploadSizesItem
    { _musiSize = Nothing
    , _musiType = Nothing
    }

-- | The max upload size for this type.
musiSize :: Lens' MaxUploadSizesItem (Maybe Int64)
musiSize = lens _musiSize (\ s a -> s{_musiSize = a})

-- | The file type.
musiType :: Lens' MaxUploadSizesItem (Maybe Text)
musiType = lens _musiType (\ s a -> s{_musiType = a})

instance FromJSON MaxUploadSizesItem where
        parseJSON
          = withObject "MaxUploadSizesItem"
              (\ o ->
                 MaxUploadSizesItem <$>
                   (o .:? "size") <*> (o .:? "type"))

instance ToJSON MaxUploadSizesItem where
        toJSON MaxUploadSizesItem{..}
          = object
              (catMaybes
                 [("size" .=) <$> _musiSize,
                  ("type" .=) <$> _musiType])

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
    , _cllLargestChangeId :: !(Maybe Int64)
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

-- | The user\'s profile picture.
--
-- /See:/ 'picture' smart constructor.
newtype Picture = Picture
    { _pURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Picture' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pURL'
picture
    :: Picture
picture =
    Picture
    { _pURL = Nothing
    }

-- | A URL that points to a profile picture of this user.
pURL :: Lens' Picture (Maybe Text)
pURL = lens _pURL (\ s a -> s{_pURL = a})

instance FromJSON Picture where
        parseJSON
          = withObject "Picture"
              (\ o -> Picture <$> (o .:? "url"))

instance ToJSON Picture where
        toJSON Picture{..}
          = object (catMaybes [("url" .=) <$> _pURL])

-- | Links for exporting Google Docs to specific formats.
--
-- /See:/ 'exportLinks' smart constructor.
data ExportLinks =
    ExportLinks
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportLinks' with the minimum fields required to make a request.
--
exportLinks
    :: ExportLinks
exportLinks = ExportLinks

instance FromJSON ExportLinks where
        parseJSON
          = withObject "ExportLinks" (\ o -> pure ExportLinks)

instance ToJSON ExportLinks where
        toJSON = const (Object mempty)

-- | An item with user information and settings.
--
-- /See:/ 'about' smart constructor.
data About = About
    { _aboExportFormats           :: !(Maybe [ExportFormatsItem])
    , _aboRemainingChangeIds      :: !(Maybe Int64)
    , _aboLanguageCode            :: !(Maybe Text)
    , _aboEtag                    :: !(Maybe Text)
    , _aboImportFormats           :: !(Maybe [ImportFormatsItem])
    , _aboKind                    :: !Text
    , _aboDomainSharingPolicy     :: !(Maybe Text)
    , _aboQuotaBytesUsedInTrash   :: !(Maybe Int64)
    , _aboQuotaType               :: !(Maybe Text)
    , _aboMaxUploadSizes          :: !(Maybe [MaxUploadSizesItem])
    , _aboUser                    :: !(Maybe User)
    , _aboSelfLink                :: !(Maybe Text)
    , _aboName                    :: !(Maybe Text)
    , _aboFeatures                :: !(Maybe [FeaturesItem])
    , _aboIsCurrentAppInstalled   :: !(Maybe Bool)
    , _aboQuotaBytesTotal         :: !(Maybe Int64)
    , _aboRootFolderId            :: !(Maybe Text)
    , _aboQuotaBytesUsed          :: !(Maybe Int64)
    , _aboAdditionalRoleInfo      :: !(Maybe [AdditionalRoleInfoItem])
    , _aboFolderColorPalette      :: !(Maybe [Text])
    , _aboPermissionId            :: !(Maybe Text)
    , _aboQuotaBytesUsedAggregate :: !(Maybe Int64)
    , _aboQuotaBytesByService     :: !(Maybe [QuotaBytesByServiceItem])
    , _aboLargestChangeId         :: !(Maybe Int64)
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
aboExportFormats :: Lens' About [ExportFormatsItem]
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
aboImportFormats :: Lens' About [ImportFormatsItem]
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

-- | The type of the user\'s storage quota. Possible values are: - LIMITED -
-- UNLIMITED
aboQuotaType :: Lens' About (Maybe Text)
aboQuotaType
  = lens _aboQuotaType (\ s a -> s{_aboQuotaType = a})

-- | List of max upload sizes for each file type. The most specific type
-- takes precedence.
aboMaxUploadSizes :: Lens' About [MaxUploadSizesItem]
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
aboFeatures :: Lens' About [FeaturesItem]
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

-- | Information about supported additional roles per file type. The most
-- specific type takes precedence.
aboAdditionalRoleInfo :: Lens' About [AdditionalRoleInfoItem]
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

-- | The amount of storage quota used by different Google services.
aboQuotaBytesByService :: Lens' About [QuotaBytesByServiceItem]
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

-- | A group of labels for the file.
--
-- /See:/ 'labels' smart constructor.
data Labels = Labels
    { _lViewed     :: !(Maybe Bool)
    , _lTrashed    :: !(Maybe Bool)
    , _lStarred    :: !(Maybe Bool)
    , _lHidden     :: !(Maybe Bool)
    , _lRestricted :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Labels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lViewed'
--
-- * 'lTrashed'
--
-- * 'lStarred'
--
-- * 'lHidden'
--
-- * 'lRestricted'
labels
    :: Labels
labels =
    Labels
    { _lViewed = Nothing
    , _lTrashed = Nothing
    , _lStarred = Nothing
    , _lHidden = Nothing
    , _lRestricted = Nothing
    }

-- | Whether this file has been viewed by this user.
lViewed :: Lens' Labels (Maybe Bool)
lViewed = lens _lViewed (\ s a -> s{_lViewed = a})

-- | Whether this file has been trashed. This label applies to all users
-- accessing the file; however, only owners are allowed to see and untrash
-- files.
lTrashed :: Lens' Labels (Maybe Bool)
lTrashed = lens _lTrashed (\ s a -> s{_lTrashed = a})

-- | Whether this file is starred by the user.
lStarred :: Lens' Labels (Maybe Bool)
lStarred = lens _lStarred (\ s a -> s{_lStarred = a})

-- | Deprecated.
lHidden :: Lens' Labels (Maybe Bool)
lHidden = lens _lHidden (\ s a -> s{_lHidden = a})

-- | Whether viewers and commenters are prevented from downloading, printing,
-- and copying this file.
lRestricted :: Lens' Labels (Maybe Bool)
lRestricted
  = lens _lRestricted (\ s a -> s{_lRestricted = a})

instance FromJSON Labels where
        parseJSON
          = withObject "Labels"
              (\ o ->
                 Labels <$>
                   (o .:? "viewed") <*> (o .:? "trashed") <*>
                     (o .:? "starred")
                     <*> (o .:? "hidden")
                     <*> (o .:? "restricted"))

instance ToJSON Labels where
        toJSON Labels{..}
          = object
              (catMaybes
                 [("viewed" .=) <$> _lViewed,
                  ("trashed" .=) <$> _lTrashed,
                  ("starred" .=) <$> _lStarred,
                  ("hidden" .=) <$> _lHidden,
                  ("restricted" .=) <$> _lRestricted])

--
-- /See:/ 'iconsItem' smart constructor.
data IconsItem = IconsItem
    { _iiSize     :: !(Maybe Int32)
    , _iiCategory :: !(Maybe Text)
    , _iiIconURL  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IconsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiSize'
--
-- * 'iiCategory'
--
-- * 'iiIconURL'
iconsItem
    :: IconsItem
iconsItem =
    IconsItem
    { _iiSize = Nothing
    , _iiCategory = Nothing
    , _iiIconURL = Nothing
    }

-- | Size of the icon. Represented as the maximum of the width and height.
iiSize :: Lens' IconsItem (Maybe Int32)
iiSize = lens _iiSize (\ s a -> s{_iiSize = a})

-- | Category of the icon. Allowed values are: - application - icon for the
-- application - document - icon for a file associated with the app -
-- documentShared - icon for a shared file associated with the app
iiCategory :: Lens' IconsItem (Maybe Text)
iiCategory
  = lens _iiCategory (\ s a -> s{_iiCategory = a})

-- | URL for the icon.
iiIconURL :: Lens' IconsItem (Maybe Text)
iiIconURL
  = lens _iiIconURL (\ s a -> s{_iiIconURL = a})

instance FromJSON IconsItem where
        parseJSON
          = withObject "IconsItem"
              (\ o ->
                 IconsItem <$>
                   (o .:? "size") <*> (o .:? "category") <*>
                     (o .:? "iconUrl"))

instance ToJSON IconsItem where
        toJSON IconsItem{..}
          = object
              (catMaybes
                 [("size" .=) <$> _iiSize,
                  ("category" .=) <$> _iiCategory,
                  ("iconUrl" .=) <$> _iiIconURL])

--
-- /See:/ 'importFormatsItem' smart constructor.
data ImportFormatsItem = ImportFormatsItem
    { _ifiTargets :: !(Maybe [Text])
    , _ifiSource  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportFormatsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifiTargets'
--
-- * 'ifiSource'
importFormatsItem
    :: ImportFormatsItem
importFormatsItem =
    ImportFormatsItem
    { _ifiTargets = Nothing
    , _ifiSource = Nothing
    }

-- | The possible content types to convert to.
ifiTargets :: Lens' ImportFormatsItem [Text]
ifiTargets
  = lens _ifiTargets (\ s a -> s{_ifiTargets = a}) .
      _Default
      . _Coerce

-- | The imported file\'s content type to convert from.
ifiSource :: Lens' ImportFormatsItem (Maybe Text)
ifiSource
  = lens _ifiSource (\ s a -> s{_ifiSource = a})

instance FromJSON ImportFormatsItem where
        parseJSON
          = withObject "ImportFormatsItem"
              (\ o ->
                 ImportFormatsItem <$>
                   (o .:? "targets" .!= mempty) <*> (o .:? "source"))

instance ToJSON ImportFormatsItem where
        toJSON ImportFormatsItem{..}
          = object
              (catMaybes
                 [("targets" .=) <$> _ifiTargets,
                  ("source" .=) <$> _ifiSource])

-- | Metadata about video media. This will only be present for video types.
--
-- /See:/ 'videoMediaMetadata' smart constructor.
data VideoMediaMetadata = VideoMediaMetadata
    { _vmmHeight         :: !(Maybe Int32)
    , _vmmWidth          :: !(Maybe Int32)
    , _vmmDurationMillis :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoMediaMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmmHeight'
--
-- * 'vmmWidth'
--
-- * 'vmmDurationMillis'
videoMediaMetadata
    :: VideoMediaMetadata
videoMediaMetadata =
    VideoMediaMetadata
    { _vmmHeight = Nothing
    , _vmmWidth = Nothing
    , _vmmDurationMillis = Nothing
    }

-- | The height of the video in pixels.
vmmHeight :: Lens' VideoMediaMetadata (Maybe Int32)
vmmHeight
  = lens _vmmHeight (\ s a -> s{_vmmHeight = a})

-- | The width of the video in pixels.
vmmWidth :: Lens' VideoMediaMetadata (Maybe Int32)
vmmWidth = lens _vmmWidth (\ s a -> s{_vmmWidth = a})

-- | The duration of the video in milliseconds.
vmmDurationMillis :: Lens' VideoMediaMetadata (Maybe Int64)
vmmDurationMillis
  = lens _vmmDurationMillis
      (\ s a -> s{_vmmDurationMillis = a})

instance FromJSON VideoMediaMetadata where
        parseJSON
          = withObject "VideoMediaMetadata"
              (\ o ->
                 VideoMediaMetadata <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "durationMillis"))

instance ToJSON VideoMediaMetadata where
        toJSON VideoMediaMetadata{..}
          = object
              (catMaybes
                 [("height" .=) <$> _vmmHeight,
                  ("width" .=) <$> _vmmWidth,
                  ("durationMillis" .=) <$> _vmmDurationMillis])

--
-- /See:/ 'roleSetsItem' smart constructor.
data RoleSetsItem = RoleSetsItem
    { _rsiPrimaryRole     :: !(Maybe Text)
    , _rsiAdditionalRoles :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoleSetsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsiPrimaryRole'
--
-- * 'rsiAdditionalRoles'
roleSetsItem
    :: RoleSetsItem
roleSetsItem =
    RoleSetsItem
    { _rsiPrimaryRole = Nothing
    , _rsiAdditionalRoles = Nothing
    }

-- | A primary permission role.
rsiPrimaryRole :: Lens' RoleSetsItem (Maybe Text)
rsiPrimaryRole
  = lens _rsiPrimaryRole
      (\ s a -> s{_rsiPrimaryRole = a})

-- | The supported additional roles with the primary role.
rsiAdditionalRoles :: Lens' RoleSetsItem [Text]
rsiAdditionalRoles
  = lens _rsiAdditionalRoles
      (\ s a -> s{_rsiAdditionalRoles = a})
      . _Default
      . _Coerce

instance FromJSON RoleSetsItem where
        parseJSON
          = withObject "RoleSetsItem"
              (\ o ->
                 RoleSetsItem <$>
                   (o .:? "primaryRole") <*>
                     (o .:? "additionalRoles" .!= mempty))

instance ToJSON RoleSetsItem where
        toJSON RoleSetsItem{..}
          = object
              (catMaybes
                 [("primaryRole" .=) <$> _rsiPrimaryRole,
                  ("additionalRoles" .=) <$> _rsiAdditionalRoles])

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
    , _rFileSize               :: !(Maybe Int64)
    , _rPublishAuto            :: !(Maybe Bool)
    , _rMD5Checksum            :: !(Maybe Text)
    , _rMimeType               :: !(Maybe Text)
    , _rSelfLink               :: !(Maybe Text)
    , _rLastModifyingUserName  :: !(Maybe Text)
    , _rDownloadURL            :: !(Maybe Text)
    , _rExportLinks            :: !(Maybe ExportLinks)
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
  = lens _rFileSize (\ s a -> s{_rFileSize = a})

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
rExportLinks :: Lens' Revision (Maybe ExportLinks)
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

-- | A JSON representation of a comment on a file in Google Drive.
--
-- /See:/ 'comment' smart constructor.
data Comment = Comment
    { _ccStatus       :: !(Maybe Text)
    , _ccHTMLContent  :: !(Maybe Text)
    , _ccContext      :: !(Maybe Context)
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
ccContext :: Lens' Comment (Maybe Context)
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

--
-- /See:/ 'additionalRoleInfoItem' smart constructor.
data AdditionalRoleInfoItem = AdditionalRoleInfoItem
    { _ariiRoleSets :: !(Maybe [RoleSetsItem])
    , _ariiType     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdditionalRoleInfoItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ariiRoleSets'
--
-- * 'ariiType'
additionalRoleInfoItem
    :: AdditionalRoleInfoItem
additionalRoleInfoItem =
    AdditionalRoleInfoItem
    { _ariiRoleSets = Nothing
    , _ariiType = Nothing
    }

-- | The supported additional roles per primary role.
ariiRoleSets :: Lens' AdditionalRoleInfoItem [RoleSetsItem]
ariiRoleSets
  = lens _ariiRoleSets (\ s a -> s{_ariiRoleSets = a})
      . _Default
      . _Coerce

-- | The content type that this additional role info applies to.
ariiType :: Lens' AdditionalRoleInfoItem (Maybe Text)
ariiType = lens _ariiType (\ s a -> s{_ariiType = a})

instance FromJSON AdditionalRoleInfoItem where
        parseJSON
          = withObject "AdditionalRoleInfoItem"
              (\ o ->
                 AdditionalRoleInfoItem <$>
                   (o .:? "roleSets" .!= mempty) <*> (o .:? "type"))

instance ToJSON AdditionalRoleInfoItem where
        toJSON AdditionalRoleInfoItem{..}
          = object
              (catMaybes
                 [("roleSets" .=) <$> _ariiRoleSets,
                  ("type" .=) <$> _ariiType])

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

-- | The metadata for a file.
--
-- /See:/ 'file' smart constructor.
data File = File
    { _fOwnedByMe             :: !(Maybe Bool)
    , _fThumbnailLink         :: !(Maybe Text)
    , _fFullFileExtension     :: !(Maybe Text)
    , _fThumbnail             :: !(Maybe Thumbnail)
    , _fMarkedViewedByMeDate  :: !(Maybe DateTime')
    , _fEtag                  :: !(Maybe Text)
    , _fFileExtension         :: !(Maybe Text)
    , _fCanComment            :: !(Maybe Bool)
    , _fOwners                :: !(Maybe [User])
    , _fOwnerNames            :: !(Maybe [Text])
    , _fOpenWithLinks         :: !(Maybe OpenWithLinks)
    , _fWebViewLink           :: !(Maybe Text)
    , _fOriginalFilename      :: !(Maybe Text)
    , _fKind                  :: !Text
    , _fLastModifyingUser     :: !(Maybe User)
    , _fIconLink              :: !(Maybe Text)
    , _fEmbedLink             :: !(Maybe Text)
    , _fFileSize              :: !(Maybe Int64)
    , _fAppDataContents       :: !(Maybe Bool)
    , _fImageMediaMetadata    :: !(Maybe ImageMediaMetadata)
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
    , _fVersion               :: !(Maybe Int64)
    , _fUserPermission        :: !(Maybe Permission)
    , _fWritersCanShare       :: !(Maybe Bool)
    , _fDefaultOpenWithLink   :: !(Maybe Text)
    , _fId                    :: !(Maybe Text)
    , _fLabels                :: !(Maybe Labels)
    , _fModifiedDate          :: !(Maybe DateTime')
    , _fPermissions           :: !(Maybe [Permission])
    , _fQuotaBytesUsed        :: !(Maybe Int64)
    , _fTitle                 :: !(Maybe Text)
    , _fAlternateLink         :: !(Maybe Text)
    , _fVideoMediaMetadata    :: !(Maybe VideoMediaMetadata)
    , _fHeadRevisionId        :: !(Maybe Text)
    , _fDescription           :: !(Maybe Text)
    , _fSharingUser           :: !(Maybe User)
    , _fWebContentLink        :: !(Maybe Text)
    , _fProperties            :: !(Maybe [Property])
    , _fIndexableText         :: !(Maybe IndexableText)
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
fThumbnail :: Lens' File (Maybe Thumbnail)
fThumbnail
  = lens _fThumbnail (\ s a -> s{_fThumbnail = a})

-- | Time this file was explicitly marked viewed by the user (formatted RFC
-- 3339 timestamp).
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
fOpenWithLinks :: Lens' File (Maybe OpenWithLinks)
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
  = lens _fFileSize (\ s a -> s{_fFileSize = a})

-- | Whether this file is in the Application Data folder.
fAppDataContents :: Lens' File (Maybe Bool)
fAppDataContents
  = lens _fAppDataContents
      (\ s a -> s{_fAppDataContents = a})

-- | Metadata about image media. This will only be present for image types,
-- and its contents will depend on what can be parsed from the image
-- content.
fImageMediaMetadata :: Lens' File (Maybe ImageMediaMetadata)
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
fVersion = lens _fVersion (\ s a -> s{_fVersion = a})

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
fLabels :: Lens' File (Maybe Labels)
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

-- | The title of this file.
fTitle :: Lens' File (Maybe Text)
fTitle = lens _fTitle (\ s a -> s{_fTitle = a})

-- | A link for opening the file in a relevant Google editor or viewer.
fAlternateLink :: Lens' File (Maybe Text)
fAlternateLink
  = lens _fAlternateLink
      (\ s a -> s{_fAlternateLink = a})

-- | Metadata about video media. This will only be present for video types.
fVideoMediaMetadata :: Lens' File (Maybe VideoMediaMetadata)
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
fIndexableText :: Lens' File (Maybe IndexableText)
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

--
-- /See:/ 'exportFormatsItem' smart constructor.
data ExportFormatsItem = ExportFormatsItem
    { _efiTargets :: !(Maybe [Text])
    , _efiSource  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportFormatsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efiTargets'
--
-- * 'efiSource'
exportFormatsItem
    :: ExportFormatsItem
exportFormatsItem =
    ExportFormatsItem
    { _efiTargets = Nothing
    , _efiSource = Nothing
    }

-- | The possible content types to convert to.
efiTargets :: Lens' ExportFormatsItem [Text]
efiTargets
  = lens _efiTargets (\ s a -> s{_efiTargets = a}) .
      _Default
      . _Coerce

-- | The content type to convert from.
efiSource :: Lens' ExportFormatsItem (Maybe Text)
efiSource
  = lens _efiSource (\ s a -> s{_efiSource = a})

instance FromJSON ExportFormatsItem where
        parseJSON
          = withObject "ExportFormatsItem"
              (\ o ->
                 ExportFormatsItem <$>
                   (o .:? "targets" .!= mempty) <*> (o .:? "source"))

instance ToJSON ExportFormatsItem where
        toJSON ExportFormatsItem{..}
          = object
              (catMaybes
                 [("targets" .=) <$> _efiTargets,
                  ("source" .=) <$> _efiSource])

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

-- | Links for exporting Google Docs to specific formats.
--
-- /See:/ 'fileExportLinks' smart constructor.
data FileExportLinks =
    FileExportLinks
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileExportLinks' with the minimum fields required to make a request.
--
fileExportLinks
    :: FileExportLinks
fileExportLinks = FileExportLinks

instance FromJSON FileExportLinks where
        parseJSON
          = withObject "FileExportLinks"
              (\ o -> pure FileExportLinks)

instance ToJSON FileExportLinks where
        toJSON = const (Object mempty)

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

-- | Indexable text attributes for the file (can only be written)
--
-- /See:/ 'indexableText' smart constructor.
newtype IndexableText = IndexableText
    { _itText :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IndexableText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itText'
indexableText
    :: IndexableText
indexableText =
    IndexableText
    { _itText = Nothing
    }

-- | The text to be indexed for this file.
itText :: Lens' IndexableText (Maybe Text)
itText = lens _itText (\ s a -> s{_itText = a})

instance FromJSON IndexableText where
        parseJSON
          = withObject "IndexableText"
              (\ o -> IndexableText <$> (o .:? "text"))

instance ToJSON IndexableText where
        toJSON IndexableText{..}
          = object (catMaybes [("text" .=) <$> _itText])
