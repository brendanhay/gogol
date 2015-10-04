{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Books.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Books.Types.Product where

import           Network.Google.Books.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'volumeannotations' smart constructor.
data Volumeannotations = Volumeannotations
    { _vTotalItems    :: !(Maybe Int32)
    , _vNextPageToken :: !(Maybe Text)
    , _vKind          :: !Text
    , _vItems         :: !(Maybe [Volumeannotation])
    , _vVersion       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volumeannotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vTotalItems'
--
-- * 'vNextPageToken'
--
-- * 'vKind'
--
-- * 'vItems'
--
-- * 'vVersion'
volumeannotations
    :: Volumeannotations
volumeannotations =
    Volumeannotations
    { _vTotalItems = Nothing
    , _vNextPageToken = Nothing
    , _vKind = "books#volumeannotations"
    , _vItems = Nothing
    , _vVersion = Nothing
    }

-- | The total number of volume annotations found.
vTotalItems :: Lens' Volumeannotations (Maybe Int32)
vTotalItems
  = lens _vTotalItems (\ s a -> s{_vTotalItems = a})

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
vNextPageToken :: Lens' Volumeannotations (Maybe Text)
vNextPageToken
  = lens _vNextPageToken
      (\ s a -> s{_vNextPageToken = a})

-- | Resource type
vKind :: Lens' Volumeannotations Text
vKind = lens _vKind (\ s a -> s{_vKind = a})

-- | A list of volume annotations.
vItems :: Lens' Volumeannotations [Volumeannotation]
vItems
  = lens _vItems (\ s a -> s{_vItems = a}) . _Default .
      _Coerce

-- | The version string for all of the volume annotations in this layer (not
-- just the ones in this response). Note: the version string doesn\'t apply
-- to the annotation data, just the information in this response (e.g. the
-- location of annotations in the book).
vVersion :: Lens' Volumeannotations (Maybe Text)
vVersion = lens _vVersion (\ s a -> s{_vVersion = a})

instance FromJSON Volumeannotations where
        parseJSON
          = withObject "Volumeannotations"
              (\ o ->
                 Volumeannotations <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "books#volumeannotations")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "version"))

instance ToJSON Volumeannotations where
        toJSON Volumeannotations{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _vTotalItems,
                  ("nextPageToken" .=) <$> _vNextPageToken,
                  Just ("kind" .= _vKind), ("items" .=) <$> _vItems,
                  ("version" .=) <$> _vVersion])

--
-- /See:/ 'annotations' smart constructor.
data Annotations = Annotations
    { _aTotalItems    :: !(Maybe Int32)
    , _aNextPageToken :: !(Maybe Text)
    , _aKind          :: !Text
    , _aItems         :: !(Maybe [Annotation])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTotalItems'
--
-- * 'aNextPageToken'
--
-- * 'aKind'
--
-- * 'aItems'
annotations
    :: Annotations
annotations =
    Annotations
    { _aTotalItems = Nothing
    , _aNextPageToken = Nothing
    , _aKind = "books#annotations"
    , _aItems = Nothing
    }

-- | Total number of annotations found. This may be greater than the number
-- of notes returned in this response if results have been paginated.
aTotalItems :: Lens' Annotations (Maybe Int32)
aTotalItems
  = lens _aTotalItems (\ s a -> s{_aTotalItems = a})

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
aNextPageToken :: Lens' Annotations (Maybe Text)
aNextPageToken
  = lens _aNextPageToken
      (\ s a -> s{_aNextPageToken = a})

-- | Resource type.
aKind :: Lens' Annotations Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | A list of annotations.
aItems :: Lens' Annotations [Annotation]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

instance FromJSON Annotations where
        parseJSON
          = withObject "Annotations"
              (\ o ->
                 Annotations <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "books#annotations")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Annotations where
        toJSON Annotations{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _aTotalItems,
                  ("nextPageToken" .=) <$> _aNextPageToken,
                  Just ("kind" .= _aKind), ("items" .=) <$> _aItems])

-- | A list of image links for all the sizes that are available. (In LITE
-- projection.)
--
-- /See:/ 'imageLinks' smart constructor.
data ImageLinks = ImageLinks
    { _ilThumbnail      :: !(Maybe Text)
    , _ilSmall          :: !(Maybe Text)
    , _ilExtraLarge     :: !(Maybe Text)
    , _ilLarge          :: !(Maybe Text)
    , _ilMedium         :: !(Maybe Text)
    , _ilSmallThumbnail :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilThumbnail'
--
-- * 'ilSmall'
--
-- * 'ilExtraLarge'
--
-- * 'ilLarge'
--
-- * 'ilMedium'
--
-- * 'ilSmallThumbnail'
imageLinks
    :: ImageLinks
imageLinks =
    ImageLinks
    { _ilThumbnail = Nothing
    , _ilSmall = Nothing
    , _ilExtraLarge = Nothing
    , _ilLarge = Nothing
    , _ilMedium = Nothing
    , _ilSmallThumbnail = Nothing
    }

-- | Image link for thumbnail size (width of ~128 pixels). (In LITE
-- projection)
ilThumbnail :: Lens' ImageLinks (Maybe Text)
ilThumbnail
  = lens _ilThumbnail (\ s a -> s{_ilThumbnail = a})

-- | Image link for small size (width of ~300 pixels). (In LITE projection)
ilSmall :: Lens' ImageLinks (Maybe Text)
ilSmall = lens _ilSmall (\ s a -> s{_ilSmall = a})

-- | Image link for extra large size (width of ~1280 pixels). (In LITE
-- projection)
ilExtraLarge :: Lens' ImageLinks (Maybe Text)
ilExtraLarge
  = lens _ilExtraLarge (\ s a -> s{_ilExtraLarge = a})

-- | Image link for large size (width of ~800 pixels). (In LITE projection)
ilLarge :: Lens' ImageLinks (Maybe Text)
ilLarge = lens _ilLarge (\ s a -> s{_ilLarge = a})

-- | Image link for medium size (width of ~575 pixels). (In LITE projection)
ilMedium :: Lens' ImageLinks (Maybe Text)
ilMedium = lens _ilMedium (\ s a -> s{_ilMedium = a})

-- | Image link for small thumbnail size (width of ~80 pixels). (In LITE
-- projection)
ilSmallThumbnail :: Lens' ImageLinks (Maybe Text)
ilSmallThumbnail
  = lens _ilSmallThumbnail
      (\ s a -> s{_ilSmallThumbnail = a})

instance FromJSON ImageLinks where
        parseJSON
          = withObject "ImageLinks"
              (\ o ->
                 ImageLinks <$>
                   (o .:? "thumbnail") <*> (o .:? "small") <*>
                     (o .:? "extraLarge")
                     <*> (o .:? "large")
                     <*> (o .:? "medium")
                     <*> (o .:? "smallThumbnail"))

instance ToJSON ImageLinks where
        toJSON ImageLinks{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _ilThumbnail,
                  ("small" .=) <$> _ilSmall,
                  ("extraLarge" .=) <$> _ilExtraLarge,
                  ("large" .=) <$> _ilLarge,
                  ("medium" .=) <$> _ilMedium,
                  ("smallThumbnail" .=) <$> _ilSmallThumbnail])

--
-- /See:/ 'usersettings' smart constructor.
data Usersettings = Usersettings
    { _uKind        :: !Text
    , _uNotesExport :: !(Maybe NotesExport)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Usersettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uKind'
--
-- * 'uNotesExport'
usersettings
    :: Usersettings
usersettings =
    Usersettings
    { _uKind = "books#usersettings"
    , _uNotesExport = Nothing
    }

-- | Resource type.
uKind :: Lens' Usersettings Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | User settings in sub-objects, each for different purposes.
uNotesExport :: Lens' Usersettings (Maybe NotesExport)
uNotesExport
  = lens _uNotesExport (\ s a -> s{_uNotesExport = a})

instance FromJSON Usersettings where
        parseJSON
          = withObject "Usersettings"
              (\ o ->
                 Usersettings <$>
                   (o .:? "kind" .!= "books#usersettings") <*>
                     (o .:? "notesExport"))

instance ToJSON Usersettings where
        toJSON Usersettings{..}
          = object
              (catMaybes
                 [Just ("kind" .= _uKind),
                  ("notesExport" .=) <$> _uNotesExport])

--
-- /See:/ 'annotationsdata' smart constructor.
data Annotationsdata = Annotationsdata
    { _annTotalItems    :: !(Maybe Int32)
    , _annNextPageToken :: !(Maybe Text)
    , _annKind          :: !Text
    , _annItems         :: !(Maybe [Annotationdata])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotationsdata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'annTotalItems'
--
-- * 'annNextPageToken'
--
-- * 'annKind'
--
-- * 'annItems'
annotationsdata
    :: Annotationsdata
annotationsdata =
    Annotationsdata
    { _annTotalItems = Nothing
    , _annNextPageToken = Nothing
    , _annKind = "books#annotationsdata"
    , _annItems = Nothing
    }

-- | The total number of volume annotations found.
annTotalItems :: Lens' Annotationsdata (Maybe Int32)
annTotalItems
  = lens _annTotalItems
      (\ s a -> s{_annTotalItems = a})

-- | Token to pass in for pagination for the next page. This will not be
-- present if this request does not have more results.
annNextPageToken :: Lens' Annotationsdata (Maybe Text)
annNextPageToken
  = lens _annNextPageToken
      (\ s a -> s{_annNextPageToken = a})

-- | Resource type
annKind :: Lens' Annotationsdata Text
annKind = lens _annKind (\ s a -> s{_annKind = a})

-- | A list of Annotation Data.
annItems :: Lens' Annotationsdata [Annotationdata]
annItems
  = lens _annItems (\ s a -> s{_annItems = a}) .
      _Default
      . _Coerce

instance FromJSON Annotationsdata where
        parseJSON
          = withObject "Annotationsdata"
              (\ o ->
                 Annotationsdata <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "books#annotationsdata")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Annotationsdata where
        toJSON Annotationsdata{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _annTotalItems,
                  ("nextPageToken" .=) <$> _annNextPageToken,
                  Just ("kind" .= _annKind),
                  ("items" .=) <$> _annItems])

-- | The viewport for showing this location. This is a latitude, longitude
-- rectangle.
--
-- /See:/ 'viewport' smart constructor.
data Viewport = Viewport
    { _vHi :: !(Maybe Hi)
    , _vLo :: !(Maybe Lo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Viewport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vHi'
--
-- * 'vLo'
viewport
    :: Viewport
viewport =
    Viewport
    { _vHi = Nothing
    , _vLo = Nothing
    }

vHi :: Lens' Viewport (Maybe Hi)
vHi = lens _vHi (\ s a -> s{_vHi = a})

vLo :: Lens' Viewport (Maybe Lo)
vLo = lens _vLo (\ s a -> s{_vLo = a})

instance FromJSON Viewport where
        parseJSON
          = withObject "Viewport"
              (\ o -> Viewport <$> (o .:? "hi") <*> (o .:? "lo"))

instance ToJSON Viewport where
        toJSON Viewport{..}
          = object
              (catMaybes [("hi" .=) <$> _vHi, ("lo" .=) <$> _vLo])

-- | User specific information related to this volume. (e.g. page this user
-- last read or whether they purchased this book)
--
-- /See:/ 'userInfo' smart constructor.
data UserInfo = UserInfo
    { _uiCopy                   :: !(Maybe Copy)
    , _uiUserUploadedVolumeInfo :: !(Maybe UserUploadedVolumeInfo)
    , _uiIsPurchased            :: !(Maybe Bool)
    , _uiRentalState            :: !(Maybe Text)
    , _uiIsPreOrdered           :: !(Maybe Bool)
    , _uiReview                 :: !(Maybe Review)
    , _uiRentalPeriod           :: !(Maybe RentalPeriod)
    , _uiUpdated                :: !(Maybe DateTime')
    , _uiIsUploaded             :: !(Maybe Bool)
    , _uiIsInMyBooks            :: !(Maybe Bool)
    , _uiReadingPosition        :: !(Maybe ReadingPosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiCopy'
--
-- * 'uiUserUploadedVolumeInfo'
--
-- * 'uiIsPurchased'
--
-- * 'uiRentalState'
--
-- * 'uiIsPreOrdered'
--
-- * 'uiReview'
--
-- * 'uiRentalPeriod'
--
-- * 'uiUpdated'
--
-- * 'uiIsUploaded'
--
-- * 'uiIsInMyBooks'
--
-- * 'uiReadingPosition'
userInfo
    :: UserInfo
userInfo =
    UserInfo
    { _uiCopy = Nothing
    , _uiUserUploadedVolumeInfo = Nothing
    , _uiIsPurchased = Nothing
    , _uiRentalState = Nothing
    , _uiIsPreOrdered = Nothing
    , _uiReview = Nothing
    , _uiRentalPeriod = Nothing
    , _uiUpdated = Nothing
    , _uiIsUploaded = Nothing
    , _uiIsInMyBooks = Nothing
    , _uiReadingPosition = Nothing
    }

-- | Copy\/Paste accounting information.
uiCopy :: Lens' UserInfo (Maybe Copy)
uiCopy = lens _uiCopy (\ s a -> s{_uiCopy = a})

uiUserUploadedVolumeInfo :: Lens' UserInfo (Maybe UserUploadedVolumeInfo)
uiUserUploadedVolumeInfo
  = lens _uiUserUploadedVolumeInfo
      (\ s a -> s{_uiUserUploadedVolumeInfo = a})

-- | Whether or not this volume was purchased by the authenticated user
-- making the request. (In LITE projection.)
uiIsPurchased :: Lens' UserInfo (Maybe Bool)
uiIsPurchased
  = lens _uiIsPurchased
      (\ s a -> s{_uiIsPurchased = a})

-- | Whether this book is an active or an expired rental.
uiRentalState :: Lens' UserInfo (Maybe Text)
uiRentalState
  = lens _uiRentalState
      (\ s a -> s{_uiRentalState = a})

-- | Whether or not this volume was pre-ordered by the authenticated user
-- making the request. (In LITE projection.)
uiIsPreOrdered :: Lens' UserInfo (Maybe Bool)
uiIsPreOrdered
  = lens _uiIsPreOrdered
      (\ s a -> s{_uiIsPreOrdered = a})

-- | This user\'s review of this volume, if one exists.
uiReview :: Lens' UserInfo (Maybe Review)
uiReview = lens _uiReview (\ s a -> s{_uiReview = a})

-- | Period during this book is\/was a valid rental.
uiRentalPeriod :: Lens' UserInfo (Maybe RentalPeriod)
uiRentalPeriod
  = lens _uiRentalPeriod
      (\ s a -> s{_uiRentalPeriod = a})

-- | Timestamp when this volume was last modified by a user action, such as a
-- reading position update, volume purchase or writing a review. (RFC 3339
-- UTC date-time format).
uiUpdated :: Lens' UserInfo (Maybe UTCTime)
uiUpdated
  = lens _uiUpdated (\ s a -> s{_uiUpdated = a}) .
      mapping _DateTime

-- | Whether or not this volume was user uploaded.
uiIsUploaded :: Lens' UserInfo (Maybe Bool)
uiIsUploaded
  = lens _uiIsUploaded (\ s a -> s{_uiIsUploaded = a})

-- | Whether or not this volume is currently in \"my books.\"
uiIsInMyBooks :: Lens' UserInfo (Maybe Bool)
uiIsInMyBooks
  = lens _uiIsInMyBooks
      (\ s a -> s{_uiIsInMyBooks = a})

-- | The user\'s current reading position in the volume, if one is available.
-- (In LITE projection.)
uiReadingPosition :: Lens' UserInfo (Maybe ReadingPosition)
uiReadingPosition
  = lens _uiReadingPosition
      (\ s a -> s{_uiReadingPosition = a})

instance FromJSON UserInfo where
        parseJSON
          = withObject "UserInfo"
              (\ o ->
                 UserInfo <$>
                   (o .:? "copy") <*> (o .:? "userUploadedVolumeInfo")
                     <*> (o .:? "isPurchased")
                     <*> (o .:? "rentalState")
                     <*> (o .:? "isPreordered")
                     <*> (o .:? "review")
                     <*> (o .:? "rentalPeriod")
                     <*> (o .:? "updated")
                     <*> (o .:? "isUploaded")
                     <*> (o .:? "isInMyBooks")
                     <*> (o .:? "readingPosition"))

instance ToJSON UserInfo where
        toJSON UserInfo{..}
          = object
              (catMaybes
                 [("copy" .=) <$> _uiCopy,
                  ("userUploadedVolumeInfo" .=) <$>
                    _uiUserUploadedVolumeInfo,
                  ("isPurchased" .=) <$> _uiIsPurchased,
                  ("rentalState" .=) <$> _uiRentalState,
                  ("isPreordered" .=) <$> _uiIsPreOrdered,
                  ("review" .=) <$> _uiReview,
                  ("rentalPeriod" .=) <$> _uiRentalPeriod,
                  ("updated" .=) <$> _uiUpdated,
                  ("isUploaded" .=) <$> _uiIsUploaded,
                  ("isInMyBooks" .=) <$> _uiIsInMyBooks,
                  ("readingPosition" .=) <$> _uiReadingPosition])

--
-- /See:/ 'annotation' smart constructor.
data Annotation = Annotation
    { _aaSelectedText         :: !(Maybe Text)
    , _aaLayerSummary         :: !(Maybe LayerSummary)
    , _aaHighlightStyle       :: !(Maybe Text)
    , _aaClientVersionRanges  :: !(Maybe ClientVersionRanges)
    , _aaPageIds              :: !(Maybe [Text])
    , _aaKind                 :: !Text
    , _aaData                 :: !(Maybe Text)
    , _aaCreated              :: !(Maybe DateTime')
    , _aaAfterSelectedText    :: !(Maybe Text)
    , _aaSelfLink             :: !(Maybe Text)
    , _aaCurrentVersionRanges :: !(Maybe CurrentVersionRanges)
    , _aaVolumeId             :: !(Maybe Text)
    , _aaBeforeSelectedText   :: !(Maybe Text)
    , _aaId                   :: !(Maybe Text)
    , _aaDeleted              :: !(Maybe Bool)
    , _aaUpdated              :: !(Maybe DateTime')
    , _aaLayerId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaSelectedText'
--
-- * 'aaLayerSummary'
--
-- * 'aaHighlightStyle'
--
-- * 'aaClientVersionRanges'
--
-- * 'aaPageIds'
--
-- * 'aaKind'
--
-- * 'aaData'
--
-- * 'aaCreated'
--
-- * 'aaAfterSelectedText'
--
-- * 'aaSelfLink'
--
-- * 'aaCurrentVersionRanges'
--
-- * 'aaVolumeId'
--
-- * 'aaBeforeSelectedText'
--
-- * 'aaId'
--
-- * 'aaDeleted'
--
-- * 'aaUpdated'
--
-- * 'aaLayerId'
annotation
    :: Annotation
annotation =
    Annotation
    { _aaSelectedText = Nothing
    , _aaLayerSummary = Nothing
    , _aaHighlightStyle = Nothing
    , _aaClientVersionRanges = Nothing
    , _aaPageIds = Nothing
    , _aaKind = "books#annotation"
    , _aaData = Nothing
    , _aaCreated = Nothing
    , _aaAfterSelectedText = Nothing
    , _aaSelfLink = Nothing
    , _aaCurrentVersionRanges = Nothing
    , _aaVolumeId = Nothing
    , _aaBeforeSelectedText = Nothing
    , _aaId = Nothing
    , _aaDeleted = Nothing
    , _aaUpdated = Nothing
    , _aaLayerId = Nothing
    }

-- | Excerpt from the volume.
aaSelectedText :: Lens' Annotation (Maybe Text)
aaSelectedText
  = lens _aaSelectedText
      (\ s a -> s{_aaSelectedText = a})

aaLayerSummary :: Lens' Annotation (Maybe LayerSummary)
aaLayerSummary
  = lens _aaLayerSummary
      (\ s a -> s{_aaLayerSummary = a})

-- | The highlight style for this annotation.
aaHighlightStyle :: Lens' Annotation (Maybe Text)
aaHighlightStyle
  = lens _aaHighlightStyle
      (\ s a -> s{_aaHighlightStyle = a})

-- | Selection ranges sent from the client.
aaClientVersionRanges :: Lens' Annotation (Maybe ClientVersionRanges)
aaClientVersionRanges
  = lens _aaClientVersionRanges
      (\ s a -> s{_aaClientVersionRanges = a})

-- | Pages that this annotation spans.
aaPageIds :: Lens' Annotation [Text]
aaPageIds
  = lens _aaPageIds (\ s a -> s{_aaPageIds = a}) .
      _Default
      . _Coerce

-- | Resource type.
aaKind :: Lens' Annotation Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | User-created data for this annotation.
aaData :: Lens' Annotation (Maybe Text)
aaData = lens _aaData (\ s a -> s{_aaData = a})

-- | Timestamp for the created time of this annotation.
aaCreated :: Lens' Annotation (Maybe UTCTime)
aaCreated
  = lens _aaCreated (\ s a -> s{_aaCreated = a}) .
      mapping _DateTime

-- | Anchor text after excerpt. For requests, if the user bookmarked a screen
-- that has no flowing text on it, then this field should be empty.
aaAfterSelectedText :: Lens' Annotation (Maybe Text)
aaAfterSelectedText
  = lens _aaAfterSelectedText
      (\ s a -> s{_aaAfterSelectedText = a})

-- | URL to this resource.
aaSelfLink :: Lens' Annotation (Maybe Text)
aaSelfLink
  = lens _aaSelfLink (\ s a -> s{_aaSelfLink = a})

-- | Selection ranges for the most recent content version.
aaCurrentVersionRanges :: Lens' Annotation (Maybe CurrentVersionRanges)
aaCurrentVersionRanges
  = lens _aaCurrentVersionRanges
      (\ s a -> s{_aaCurrentVersionRanges = a})

-- | The volume that this annotation belongs to.
aaVolumeId :: Lens' Annotation (Maybe Text)
aaVolumeId
  = lens _aaVolumeId (\ s a -> s{_aaVolumeId = a})

-- | Anchor text before excerpt. For requests, if the user bookmarked a
-- screen that has no flowing text on it, then this field should be empty.
aaBeforeSelectedText :: Lens' Annotation (Maybe Text)
aaBeforeSelectedText
  = lens _aaBeforeSelectedText
      (\ s a -> s{_aaBeforeSelectedText = a})

-- | Id of this annotation, in the form of a GUID.
aaId :: Lens' Annotation (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | Indicates that this annotation is deleted.
aaDeleted :: Lens' Annotation (Maybe Bool)
aaDeleted
  = lens _aaDeleted (\ s a -> s{_aaDeleted = a})

-- | Timestamp for the last time this annotation was modified.
aaUpdated :: Lens' Annotation (Maybe UTCTime)
aaUpdated
  = lens _aaUpdated (\ s a -> s{_aaUpdated = a}) .
      mapping _DateTime

-- | The layer this annotation is for.
aaLayerId :: Lens' Annotation (Maybe Text)
aaLayerId
  = lens _aaLayerId (\ s a -> s{_aaLayerId = a})

instance FromJSON Annotation where
        parseJSON
          = withObject "Annotation"
              (\ o ->
                 Annotation <$>
                   (o .:? "selectedText") <*> (o .:? "layerSummary") <*>
                     (o .:? "highlightStyle")
                     <*> (o .:? "clientVersionRanges")
                     <*> (o .:? "pageIds" .!= mempty)
                     <*> (o .:? "kind" .!= "books#annotation")
                     <*> (o .:? "data")
                     <*> (o .:? "created")
                     <*> (o .:? "afterSelectedText")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "currentVersionRanges")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "beforeSelectedText")
                     <*> (o .:? "id")
                     <*> (o .:? "deleted")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId"))

instance ToJSON Annotation where
        toJSON Annotation{..}
          = object
              (catMaybes
                 [("selectedText" .=) <$> _aaSelectedText,
                  ("layerSummary" .=) <$> _aaLayerSummary,
                  ("highlightStyle" .=) <$> _aaHighlightStyle,
                  ("clientVersionRanges" .=) <$>
                    _aaClientVersionRanges,
                  ("pageIds" .=) <$> _aaPageIds,
                  Just ("kind" .= _aaKind), ("data" .=) <$> _aaData,
                  ("created" .=) <$> _aaCreated,
                  ("afterSelectedText" .=) <$> _aaAfterSelectedText,
                  ("selfLink" .=) <$> _aaSelfLink,
                  ("currentVersionRanges" .=) <$>
                    _aaCurrentVersionRanges,
                  ("volumeId" .=) <$> _aaVolumeId,
                  ("beforeSelectedText" .=) <$> _aaBeforeSelectedText,
                  ("id" .=) <$> _aaId, ("deleted" .=) <$> _aaDeleted,
                  ("updated" .=) <$> _aaUpdated,
                  ("layerId" .=) <$> _aaLayerId])

-- | Author of this review.
--
-- /See:/ 'reviewAuthor' smart constructor.
newtype ReviewAuthor = ReviewAuthor
    { _raDisplayName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReviewAuthor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raDisplayName'
reviewAuthor
    :: ReviewAuthor
reviewAuthor =
    ReviewAuthor
    { _raDisplayName = Nothing
    }

-- | Name of this person.
raDisplayName :: Lens' ReviewAuthor (Maybe Text)
raDisplayName
  = lens _raDisplayName
      (\ s a -> s{_raDisplayName = a})

instance FromJSON ReviewAuthor where
        parseJSON
          = withObject "ReviewAuthor"
              (\ o -> ReviewAuthor <$> (o .:? "displayName"))

instance ToJSON ReviewAuthor where
        toJSON ReviewAuthor{..}
          = object
              (catMaybes [("displayName" .=) <$> _raDisplayName])

-- | The source, url and attribution for this dictionary data.
--
-- /See:/ 'dictSource' smart constructor.
data DictSource = DictSource
    { _dsURL         :: !(Maybe Text)
    , _dsAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsURL'
--
-- * 'dsAttribution'
dictSource
    :: DictSource
dictSource =
    DictSource
    { _dsURL = Nothing
    , _dsAttribution = Nothing
    }

dsURL :: Lens' DictSource (Maybe Text)
dsURL = lens _dsURL (\ s a -> s{_dsURL = a})

dsAttribution :: Lens' DictSource (Maybe Text)
dsAttribution
  = lens _dsAttribution
      (\ s a -> s{_dsAttribution = a})

instance FromJSON DictSource where
        parseJSON
          = withObject "DictSource"
              (\ o ->
                 DictSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON DictSource where
        toJSON DictSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _dsURL,
                  ("attribution" .=) <$> _dsAttribution])

--
-- /See:/ 'layerSummary' smart constructor.
data LayerSummary = LayerSummary
    { _lsLimitType               :: !(Maybe Text)
    , _lsAllowedCharacterCount   :: !(Maybe Int32)
    , _lsRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayerSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsLimitType'
--
-- * 'lsAllowedCharacterCount'
--
-- * 'lsRemainingCharacterCount'
layerSummary
    :: LayerSummary
layerSummary =
    LayerSummary
    { _lsLimitType = Nothing
    , _lsAllowedCharacterCount = Nothing
    , _lsRemainingCharacterCount = Nothing
    }

-- | Type of limitation on this layer. \"limited\" or \"unlimited\" for the
-- \"copy\" layer.
lsLimitType :: Lens' LayerSummary (Maybe Text)
lsLimitType
  = lens _lsLimitType (\ s a -> s{_lsLimitType = a})

-- | Maximum allowed characters on this layer, especially for the \"copy\"
-- layer.
lsAllowedCharacterCount :: Lens' LayerSummary (Maybe Int32)
lsAllowedCharacterCount
  = lens _lsAllowedCharacterCount
      (\ s a -> s{_lsAllowedCharacterCount = a})

-- | Remaining allowed characters on this layer, especially for the \"copy\"
-- layer.
lsRemainingCharacterCount :: Lens' LayerSummary (Maybe Int32)
lsRemainingCharacterCount
  = lens _lsRemainingCharacterCount
      (\ s a -> s{_lsRemainingCharacterCount = a})

instance FromJSON LayerSummary where
        parseJSON
          = withObject "LayerSummary"
              (\ o ->
                 LayerSummary <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON LayerSummary where
        toJSON LayerSummary{..}
          = object
              (catMaybes
                 [("limitType" .=) <$> _lsLimitType,
                  ("allowedCharacterCount" .=) <$>
                    _lsAllowedCharacterCount,
                  ("remainingCharacterCount" .=) <$>
                    _lsRemainingCharacterCount])

--
-- /See:/ 'booksCloudLoadingResource' smart constructor.
data BooksCloudLoadingResource = BooksCloudLoadingResource
    { _bclrProcessingState :: !(Maybe Text)
    , _bclrVolumeId        :: !(Maybe Text)
    , _bclrAuthor          :: !(Maybe Text)
    , _bclrTitle           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BooksCloudLoadingResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bclrProcessingState'
--
-- * 'bclrVolumeId'
--
-- * 'bclrAuthor'
--
-- * 'bclrTitle'
booksCloudLoadingResource
    :: BooksCloudLoadingResource
booksCloudLoadingResource =
    BooksCloudLoadingResource
    { _bclrProcessingState = Nothing
    , _bclrVolumeId = Nothing
    , _bclrAuthor = Nothing
    , _bclrTitle = Nothing
    }

bclrProcessingState :: Lens' BooksCloudLoadingResource (Maybe Text)
bclrProcessingState
  = lens _bclrProcessingState
      (\ s a -> s{_bclrProcessingState = a})

bclrVolumeId :: Lens' BooksCloudLoadingResource (Maybe Text)
bclrVolumeId
  = lens _bclrVolumeId (\ s a -> s{_bclrVolumeId = a})

bclrAuthor :: Lens' BooksCloudLoadingResource (Maybe Text)
bclrAuthor
  = lens _bclrAuthor (\ s a -> s{_bclrAuthor = a})

bclrTitle :: Lens' BooksCloudLoadingResource (Maybe Text)
bclrTitle
  = lens _bclrTitle (\ s a -> s{_bclrTitle = a})

instance FromJSON BooksCloudLoadingResource where
        parseJSON
          = withObject "BooksCloudLoadingResource"
              (\ o ->
                 BooksCloudLoadingResource <$>
                   (o .:? "processingState") <*> (o .:? "volumeId") <*>
                     (o .:? "author")
                     <*> (o .:? "title"))

instance ToJSON BooksCloudLoadingResource where
        toJSON BooksCloudLoadingResource{..}
          = object
              (catMaybes
                 [("processingState" .=) <$> _bclrProcessingState,
                  ("volumeId" .=) <$> _bclrVolumeId,
                  ("author" .=) <$> _bclrAuthor,
                  ("title" .=) <$> _bclrTitle])

--
-- /See:/ 'layersummary' smart constructor.
data Layersummary = Layersummary
    { _lAnnotationsDataLink      :: !(Maybe Text)
    , _lAnnotationsLink          :: !(Maybe Text)
    , _lKind                     :: !Text
    , _lDataCount                :: !(Maybe Int32)
    , _lContentVersion           :: !(Maybe Text)
    , _lVolumeAnnotationsVersion :: !(Maybe Text)
    , _lAnnotationCount          :: !(Maybe Int32)
    , _lAnnotationTypes          :: !(Maybe [Text])
    , _lSelfLink                 :: !(Maybe Text)
    , _lVolumeId                 :: !(Maybe Text)
    , _lId                       :: !(Maybe Text)
    , _lUpdated                  :: !(Maybe DateTime')
    , _lLayerId                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Layersummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lAnnotationsDataLink'
--
-- * 'lAnnotationsLink'
--
-- * 'lKind'
--
-- * 'lDataCount'
--
-- * 'lContentVersion'
--
-- * 'lVolumeAnnotationsVersion'
--
-- * 'lAnnotationCount'
--
-- * 'lAnnotationTypes'
--
-- * 'lSelfLink'
--
-- * 'lVolumeId'
--
-- * 'lId'
--
-- * 'lUpdated'
--
-- * 'lLayerId'
layersummary
    :: Layersummary
layersummary =
    Layersummary
    { _lAnnotationsDataLink = Nothing
    , _lAnnotationsLink = Nothing
    , _lKind = "books#layersummary"
    , _lDataCount = Nothing
    , _lContentVersion = Nothing
    , _lVolumeAnnotationsVersion = Nothing
    , _lAnnotationCount = Nothing
    , _lAnnotationTypes = Nothing
    , _lSelfLink = Nothing
    , _lVolumeId = Nothing
    , _lId = Nothing
    , _lUpdated = Nothing
    , _lLayerId = Nothing
    }

-- | Link to get data for this annotation.
lAnnotationsDataLink :: Lens' Layersummary (Maybe Text)
lAnnotationsDataLink
  = lens _lAnnotationsDataLink
      (\ s a -> s{_lAnnotationsDataLink = a})

-- | The link to get the annotations for this layer.
lAnnotationsLink :: Lens' Layersummary (Maybe Text)
lAnnotationsLink
  = lens _lAnnotationsLink
      (\ s a -> s{_lAnnotationsLink = a})

-- | Resource Type
lKind :: Lens' Layersummary Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | The number of data items for this layer.
lDataCount :: Lens' Layersummary (Maybe Int32)
lDataCount
  = lens _lDataCount (\ s a -> s{_lDataCount = a})

-- | The content version this resource is for.
lContentVersion :: Lens' Layersummary (Maybe Text)
lContentVersion
  = lens _lContentVersion
      (\ s a -> s{_lContentVersion = a})

-- | The current version of this layer\'s volume annotations. Note that this
-- version applies only to the data in the books.layers.volumeAnnotations.*
-- responses. The actual annotation data is versioned separately.
lVolumeAnnotationsVersion :: Lens' Layersummary (Maybe Text)
lVolumeAnnotationsVersion
  = lens _lVolumeAnnotationsVersion
      (\ s a -> s{_lVolumeAnnotationsVersion = a})

-- | The number of annotations for this layer.
lAnnotationCount :: Lens' Layersummary (Maybe Int32)
lAnnotationCount
  = lens _lAnnotationCount
      (\ s a -> s{_lAnnotationCount = a})

-- | The list of annotation types contained for this layer.
lAnnotationTypes :: Lens' Layersummary [Text]
lAnnotationTypes
  = lens _lAnnotationTypes
      (\ s a -> s{_lAnnotationTypes = a})
      . _Default
      . _Coerce

-- | URL to this resource.
lSelfLink :: Lens' Layersummary (Maybe Text)
lSelfLink
  = lens _lSelfLink (\ s a -> s{_lSelfLink = a})

-- | The volume id this resource is for.
lVolumeId :: Lens' Layersummary (Maybe Text)
lVolumeId
  = lens _lVolumeId (\ s a -> s{_lVolumeId = a})

-- | Unique id of this layer summary.
lId :: Lens' Layersummary (Maybe Text)
lId = lens _lId (\ s a -> s{_lId = a})

-- | Timestamp for the last time an item in this layer was updated. (RFC 3339
-- UTC date-time format).
lUpdated :: Lens' Layersummary (Maybe UTCTime)
lUpdated
  = lens _lUpdated (\ s a -> s{_lUpdated = a}) .
      mapping _DateTime

-- | The layer id for this summary.
lLayerId :: Lens' Layersummary (Maybe Text)
lLayerId = lens _lLayerId (\ s a -> s{_lLayerId = a})

instance FromJSON Layersummary where
        parseJSON
          = withObject "Layersummary"
              (\ o ->
                 Layersummary <$>
                   (o .:? "annotationsDataLink") <*>
                     (o .:? "annotationsLink")
                     <*> (o .:? "kind" .!= "books#layersummary")
                     <*> (o .:? "dataCount")
                     <*> (o .:? "contentVersion")
                     <*> (o .:? "volumeAnnotationsVersion")
                     <*> (o .:? "annotationCount")
                     <*> (o .:? "annotationTypes" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId"))

instance ToJSON Layersummary where
        toJSON Layersummary{..}
          = object
              (catMaybes
                 [("annotationsDataLink" .=) <$>
                    _lAnnotationsDataLink,
                  ("annotationsLink" .=) <$> _lAnnotationsLink,
                  Just ("kind" .= _lKind),
                  ("dataCount" .=) <$> _lDataCount,
                  ("contentVersion" .=) <$> _lContentVersion,
                  ("volumeAnnotationsVersion" .=) <$>
                    _lVolumeAnnotationsVersion,
                  ("annotationCount" .=) <$> _lAnnotationCount,
                  ("annotationTypes" .=) <$> _lAnnotationTypes,
                  ("selfLink" .=) <$> _lSelfLink,
                  ("volumeId" .=) <$> _lVolumeId, ("id" .=) <$> _lId,
                  ("updated" .=) <$> _lUpdated,
                  ("layerId" .=) <$> _lLayerId])

-- | Information regarding the source of this review, when the review is not
-- from a Google Books user.
--
-- /See:/ 'reviewSource' smart constructor.
data ReviewSource = ReviewSource
    { _rsExtraDescription :: !(Maybe Text)
    , _rsURL              :: !(Maybe Text)
    , _rsDescription      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReviewSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsExtraDescription'
--
-- * 'rsURL'
--
-- * 'rsDescription'
reviewSource
    :: ReviewSource
reviewSource =
    ReviewSource
    { _rsExtraDescription = Nothing
    , _rsURL = Nothing
    , _rsDescription = Nothing
    }

-- | Extra text about the source of the review.
rsExtraDescription :: Lens' ReviewSource (Maybe Text)
rsExtraDescription
  = lens _rsExtraDescription
      (\ s a -> s{_rsExtraDescription = a})

-- | URL of the source of the review.
rsURL :: Lens' ReviewSource (Maybe Text)
rsURL = lens _rsURL (\ s a -> s{_rsURL = a})

-- | Name of the source.
rsDescription :: Lens' ReviewSource (Maybe Text)
rsDescription
  = lens _rsDescription
      (\ s a -> s{_rsDescription = a})

instance FromJSON ReviewSource where
        parseJSON
          = withObject "ReviewSource"
              (\ o ->
                 ReviewSource <$>
                   (o .:? "extraDescription") <*> (o .:? "url") <*>
                     (o .:? "description"))

instance ToJSON ReviewSource where
        toJSON ReviewSource{..}
          = object
              (catMaybes
                 [("extraDescription" .=) <$> _rsExtraDescription,
                  ("url" .=) <$> _rsURL,
                  ("description" .=) <$> _rsDescription])

--
-- /See:/ 'synonymsItem' smart constructor.
data SynonymsItem = SynonymsItem
    { _siText   :: !(Maybe Text)
    , _siSource :: !(Maybe SynonymsItemSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SynonymsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siText'
--
-- * 'siSource'
synonymsItem
    :: SynonymsItem
synonymsItem =
    SynonymsItem
    { _siText = Nothing
    , _siSource = Nothing
    }

siText :: Lens' SynonymsItem (Maybe Text)
siText = lens _siText (\ s a -> s{_siText = a})

siSource :: Lens' SynonymsItem (Maybe SynonymsItemSource)
siSource = lens _siSource (\ s a -> s{_siSource = a})

instance FromJSON SynonymsItem where
        parseJSON
          = withObject "SynonymsItem"
              (\ o ->
                 SynonymsItem <$> (o .:? "text") <*> (o .:? "source"))

instance ToJSON SynonymsItem where
        toJSON SynonymsItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _siText,
                  ("source" .=) <$> _siSource])

-- | Selection ranges sent from the client.
--
-- /See:/ 'clientVersionRanges' smart constructor.
data ClientVersionRanges = ClientVersionRanges
    { _cvrGbImageRange   :: !(Maybe BooksAnnotationsRange)
    , _cvrContentVersion :: !(Maybe Text)
    , _cvrImageCfiRange  :: !(Maybe BooksAnnotationsRange)
    , _cvrGbTextRange    :: !(Maybe BooksAnnotationsRange)
    , _cvrCfiRange       :: !(Maybe BooksAnnotationsRange)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientVersionRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvrGbImageRange'
--
-- * 'cvrContentVersion'
--
-- * 'cvrImageCfiRange'
--
-- * 'cvrGbTextRange'
--
-- * 'cvrCfiRange'
clientVersionRanges
    :: ClientVersionRanges
clientVersionRanges =
    ClientVersionRanges
    { _cvrGbImageRange = Nothing
    , _cvrContentVersion = Nothing
    , _cvrImageCfiRange = Nothing
    , _cvrGbTextRange = Nothing
    , _cvrCfiRange = Nothing
    }

-- | Range in GB image format for this annotation sent by client.
cvrGbImageRange :: Lens' ClientVersionRanges (Maybe BooksAnnotationsRange)
cvrGbImageRange
  = lens _cvrGbImageRange
      (\ s a -> s{_cvrGbImageRange = a})

-- | Content version the client sent in.
cvrContentVersion :: Lens' ClientVersionRanges (Maybe Text)
cvrContentVersion
  = lens _cvrContentVersion
      (\ s a -> s{_cvrContentVersion = a})

-- | Range in image CFI format for this annotation sent by client.
cvrImageCfiRange :: Lens' ClientVersionRanges (Maybe BooksAnnotationsRange)
cvrImageCfiRange
  = lens _cvrImageCfiRange
      (\ s a -> s{_cvrImageCfiRange = a})

-- | Range in GB text format for this annotation sent by client.
cvrGbTextRange :: Lens' ClientVersionRanges (Maybe BooksAnnotationsRange)
cvrGbTextRange
  = lens _cvrGbTextRange
      (\ s a -> s{_cvrGbTextRange = a})

-- | Range in CFI format for this annotation sent by client.
cvrCfiRange :: Lens' ClientVersionRanges (Maybe BooksAnnotationsRange)
cvrCfiRange
  = lens _cvrCfiRange (\ s a -> s{_cvrCfiRange = a})

instance FromJSON ClientVersionRanges where
        parseJSON
          = withObject "ClientVersionRanges"
              (\ o ->
                 ClientVersionRanges <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "imageCfiRange")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON ClientVersionRanges where
        toJSON ClientVersionRanges{..}
          = object
              (catMaybes
                 [("gbImageRange" .=) <$> _cvrGbImageRange,
                  ("contentVersion" .=) <$> _cvrContentVersion,
                  ("imageCfiRange" .=) <$> _cvrImageCfiRange,
                  ("gbTextRange" .=) <$> _cvrGbTextRange,
                  ("cfiRange" .=) <$> _cvrCfiRange])

--
-- /See:/ 'annotationdata' smart constructor.
data Annotationdata = Annotationdata
    { _annnEncodedData    :: !(Maybe Word8)
    , _annnKind           :: !Text
    , _annnData           :: !(Maybe JSONValue)
    , _annnSelfLink       :: !(Maybe Text)
    , _annnAnnotationType :: !(Maybe Text)
    , _annnVolumeId       :: !(Maybe Text)
    , _annnId             :: !(Maybe Text)
    , _annnUpdated        :: !(Maybe DateTime')
    , _annnLayerId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotationdata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'annnEncodedData'
--
-- * 'annnKind'
--
-- * 'annnData'
--
-- * 'annnSelfLink'
--
-- * 'annnAnnotationType'
--
-- * 'annnVolumeId'
--
-- * 'annnId'
--
-- * 'annnUpdated'
--
-- * 'annnLayerId'
annotationdata
    :: Annotationdata
annotationdata =
    Annotationdata
    { _annnEncodedData = Nothing
    , _annnKind = "books#annotationdata"
    , _annnData = Nothing
    , _annnSelfLink = Nothing
    , _annnAnnotationType = Nothing
    , _annnVolumeId = Nothing
    , _annnId = Nothing
    , _annnUpdated = Nothing
    , _annnLayerId = Nothing
    }

-- | Base64 encoded data for this annotation data.
annnEncodedData :: Lens' Annotationdata (Maybe Word8)
annnEncodedData
  = lens _annnEncodedData
      (\ s a -> s{_annnEncodedData = a})

-- | Resource Type
annnKind :: Lens' Annotationdata Text
annnKind = lens _annnKind (\ s a -> s{_annnKind = a})

annnData :: Lens' Annotationdata (Maybe JSONValue)
annnData = lens _annnData (\ s a -> s{_annnData = a})

-- | URL for this resource. *
annnSelfLink :: Lens' Annotationdata (Maybe Text)
annnSelfLink
  = lens _annnSelfLink (\ s a -> s{_annnSelfLink = a})

-- | The type of annotation this data is for.
annnAnnotationType :: Lens' Annotationdata (Maybe Text)
annnAnnotationType
  = lens _annnAnnotationType
      (\ s a -> s{_annnAnnotationType = a})

-- | The volume id for this data. *
annnVolumeId :: Lens' Annotationdata (Maybe Text)
annnVolumeId
  = lens _annnVolumeId (\ s a -> s{_annnVolumeId = a})

-- | Unique id for this annotation data.
annnId :: Lens' Annotationdata (Maybe Text)
annnId = lens _annnId (\ s a -> s{_annnId = a})

-- | Timestamp for the last time this data was updated. (RFC 3339 UTC
-- date-time format).
annnUpdated :: Lens' Annotationdata (Maybe UTCTime)
annnUpdated
  = lens _annnUpdated (\ s a -> s{_annnUpdated = a}) .
      mapping _DateTime

-- | The Layer id for this data. *
annnLayerId :: Lens' Annotationdata (Maybe Text)
annnLayerId
  = lens _annnLayerId (\ s a -> s{_annnLayerId = a})

instance FromJSON Annotationdata where
        parseJSON
          = withObject "Annotationdata"
              (\ o ->
                 Annotationdata <$>
                   (o .:? "encoded_data") <*>
                     (o .:? "kind" .!= "books#annotationdata")
                     <*> (o .:? "data")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "annotationType")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId"))

instance ToJSON Annotationdata where
        toJSON Annotationdata{..}
          = object
              (catMaybes
                 [("encoded_data" .=) <$> _annnEncodedData,
                  Just ("kind" .= _annnKind),
                  ("data" .=) <$> _annnData,
                  ("selfLink" .=) <$> _annnSelfLink,
                  ("annotationType" .=) <$> _annnAnnotationType,
                  ("volumeId" .=) <$> _annnVolumeId,
                  ("id" .=) <$> _annnId,
                  ("updated" .=) <$> _annnUpdated,
                  ("layerId" .=) <$> _annnLayerId])

--
-- /See:/ 'volumeannotation' smart constructor.
data Volumeannotation = Volumeannotation
    { _volSelectedText       :: !(Maybe Text)
    , _volAnnotationDataLink :: !(Maybe Text)
    , _volPageIds            :: !(Maybe [Text])
    , _volKind               :: !Text
    , _volData               :: !(Maybe Text)
    , _volSelfLink           :: !(Maybe Text)
    , _volAnnotationType     :: !(Maybe Text)
    , _volAnnotationDataId   :: !(Maybe Text)
    , _volContentRanges      :: !(Maybe ContentRanges)
    , _volVolumeId           :: !(Maybe Text)
    , _volId                 :: !(Maybe Text)
    , _volDeleted            :: !(Maybe Bool)
    , _volUpdated            :: !(Maybe DateTime')
    , _volLayerId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volumeannotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'volSelectedText'
--
-- * 'volAnnotationDataLink'
--
-- * 'volPageIds'
--
-- * 'volKind'
--
-- * 'volData'
--
-- * 'volSelfLink'
--
-- * 'volAnnotationType'
--
-- * 'volAnnotationDataId'
--
-- * 'volContentRanges'
--
-- * 'volVolumeId'
--
-- * 'volId'
--
-- * 'volDeleted'
--
-- * 'volUpdated'
--
-- * 'volLayerId'
volumeannotation
    :: Volumeannotation
volumeannotation =
    Volumeannotation
    { _volSelectedText = Nothing
    , _volAnnotationDataLink = Nothing
    , _volPageIds = Nothing
    , _volKind = "books#volumeannotation"
    , _volData = Nothing
    , _volSelfLink = Nothing
    , _volAnnotationType = Nothing
    , _volAnnotationDataId = Nothing
    , _volContentRanges = Nothing
    , _volVolumeId = Nothing
    , _volId = Nothing
    , _volDeleted = Nothing
    , _volUpdated = Nothing
    , _volLayerId = Nothing
    }

-- | Excerpt from the volume.
volSelectedText :: Lens' Volumeannotation (Maybe Text)
volSelectedText
  = lens _volSelectedText
      (\ s a -> s{_volSelectedText = a})

-- | Link to get data for this annotation.
volAnnotationDataLink :: Lens' Volumeannotation (Maybe Text)
volAnnotationDataLink
  = lens _volAnnotationDataLink
      (\ s a -> s{_volAnnotationDataLink = a})

-- | Pages the annotation spans.
volPageIds :: Lens' Volumeannotation [Text]
volPageIds
  = lens _volPageIds (\ s a -> s{_volPageIds = a}) .
      _Default
      . _Coerce

-- | Resource Type
volKind :: Lens' Volumeannotation Text
volKind = lens _volKind (\ s a -> s{_volKind = a})

-- | Data for this annotation.
volData :: Lens' Volumeannotation (Maybe Text)
volData = lens _volData (\ s a -> s{_volData = a})

-- | URL to this resource.
volSelfLink :: Lens' Volumeannotation (Maybe Text)
volSelfLink
  = lens _volSelfLink (\ s a -> s{_volSelfLink = a})

-- | The type of annotation this is.
volAnnotationType :: Lens' Volumeannotation (Maybe Text)
volAnnotationType
  = lens _volAnnotationType
      (\ s a -> s{_volAnnotationType = a})

-- | The annotation data id for this volume annotation.
volAnnotationDataId :: Lens' Volumeannotation (Maybe Text)
volAnnotationDataId
  = lens _volAnnotationDataId
      (\ s a -> s{_volAnnotationDataId = a})

-- | The content ranges to identify the selected text.
volContentRanges :: Lens' Volumeannotation (Maybe ContentRanges)
volContentRanges
  = lens _volContentRanges
      (\ s a -> s{_volContentRanges = a})

-- | The Volume this annotation is for.
volVolumeId :: Lens' Volumeannotation (Maybe Text)
volVolumeId
  = lens _volVolumeId (\ s a -> s{_volVolumeId = a})

-- | Unique id of this volume annotation.
volId :: Lens' Volumeannotation (Maybe Text)
volId = lens _volId (\ s a -> s{_volId = a})

-- | Indicates that this annotation is deleted.
volDeleted :: Lens' Volumeannotation (Maybe Bool)
volDeleted
  = lens _volDeleted (\ s a -> s{_volDeleted = a})

-- | Timestamp for the last time this anntoation was updated. (RFC 3339 UTC
-- date-time format).
volUpdated :: Lens' Volumeannotation (Maybe UTCTime)
volUpdated
  = lens _volUpdated (\ s a -> s{_volUpdated = a}) .
      mapping _DateTime

-- | The Layer this annotation is for.
volLayerId :: Lens' Volumeannotation (Maybe Text)
volLayerId
  = lens _volLayerId (\ s a -> s{_volLayerId = a})

instance FromJSON Volumeannotation where
        parseJSON
          = withObject "Volumeannotation"
              (\ o ->
                 Volumeannotation <$>
                   (o .:? "selectedText") <*>
                     (o .:? "annotationDataLink")
                     <*> (o .:? "pageIds" .!= mempty)
                     <*> (o .:? "kind" .!= "books#volumeannotation")
                     <*> (o .:? "data")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "annotationType")
                     <*> (o .:? "annotationDataId")
                     <*> (o .:? "contentRanges")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "id")
                     <*> (o .:? "deleted")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId"))

instance ToJSON Volumeannotation where
        toJSON Volumeannotation{..}
          = object
              (catMaybes
                 [("selectedText" .=) <$> _volSelectedText,
                  ("annotationDataLink" .=) <$> _volAnnotationDataLink,
                  ("pageIds" .=) <$> _volPageIds,
                  Just ("kind" .= _volKind), ("data" .=) <$> _volData,
                  ("selfLink" .=) <$> _volSelfLink,
                  ("annotationType" .=) <$> _volAnnotationType,
                  ("annotationDataId" .=) <$> _volAnnotationDataId,
                  ("contentRanges" .=) <$> _volContentRanges,
                  ("volumeId" .=) <$> _volVolumeId,
                  ("id" .=) <$> _volId, ("deleted" .=) <$> _volDeleted,
                  ("updated" .=) <$> _volUpdated,
                  ("layerId" .=) <$> _volLayerId])

-- | Any information about a volume related to reading or obtaining that
-- volume text. This information can depend on country (books may be public
-- domain in one country but not in another, e.g.).
--
-- /See:/ 'accessInfo' smart constructor.
data AccessInfo = AccessInfo
    { _aiWebReaderLink                    :: !(Maybe Text)
    , _aiCountry                          :: !(Maybe Text)
    , _aiDriveImportedContentLink         :: !(Maybe Text)
    , _aiExplicitOfflineLicenseManagement :: !(Maybe Bool)
    , _aiViewability                      :: !(Maybe Text)
    , _aiQuoteSharingAllowed              :: !(Maybe Bool)
    , _aiEpub                             :: !(Maybe Epub)
    , _aiPdf                              :: !(Maybe Pdf)
    , _aiTextToSpeechPermission           :: !(Maybe Text)
    , _aiEmbeddable                       :: !(Maybe Bool)
    , _aiAccessViewStatus                 :: !(Maybe Text)
    , _aiDownloadAccess                   :: !(Maybe DownloadAccessRestriction)
    , _aiViewOrderURL                     :: !(Maybe Text)
    , _aiPublicDomain                     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiWebReaderLink'
--
-- * 'aiCountry'
--
-- * 'aiDriveImportedContentLink'
--
-- * 'aiExplicitOfflineLicenseManagement'
--
-- * 'aiViewability'
--
-- * 'aiQuoteSharingAllowed'
--
-- * 'aiEpub'
--
-- * 'aiPdf'
--
-- * 'aiTextToSpeechPermission'
--
-- * 'aiEmbeddable'
--
-- * 'aiAccessViewStatus'
--
-- * 'aiDownloadAccess'
--
-- * 'aiViewOrderURL'
--
-- * 'aiPublicDomain'
accessInfo
    :: AccessInfo
accessInfo =
    AccessInfo
    { _aiWebReaderLink = Nothing
    , _aiCountry = Nothing
    , _aiDriveImportedContentLink = Nothing
    , _aiExplicitOfflineLicenseManagement = Nothing
    , _aiViewability = Nothing
    , _aiQuoteSharingAllowed = Nothing
    , _aiEpub = Nothing
    , _aiPdf = Nothing
    , _aiTextToSpeechPermission = Nothing
    , _aiEmbeddable = Nothing
    , _aiAccessViewStatus = Nothing
    , _aiDownloadAccess = Nothing
    , _aiViewOrderURL = Nothing
    , _aiPublicDomain = Nothing
    }

-- | URL to read this volume on the Google Books site. Link will not allow
-- users to read non-viewable volumes.
aiWebReaderLink :: Lens' AccessInfo (Maybe Text)
aiWebReaderLink
  = lens _aiWebReaderLink
      (\ s a -> s{_aiWebReaderLink = a})

-- | The two-letter ISO_3166-1 country code for which this access information
-- is valid. (In LITE projection.)
aiCountry :: Lens' AccessInfo (Maybe Text)
aiCountry
  = lens _aiCountry (\ s a -> s{_aiCountry = a})

-- | URL to the Google Drive viewer if this volume is uploaded by the user by
-- selecting the file from Google Drive.
aiDriveImportedContentLink :: Lens' AccessInfo (Maybe Text)
aiDriveImportedContentLink
  = lens _aiDriveImportedContentLink
      (\ s a -> s{_aiDriveImportedContentLink = a})

-- | Whether this volume requires that the client explicitly request offline
-- download license rather than have it done automatically when loading the
-- content, if the client supports it.
aiExplicitOfflineLicenseManagement :: Lens' AccessInfo (Maybe Bool)
aiExplicitOfflineLicenseManagement
  = lens _aiExplicitOfflineLicenseManagement
      (\ s a -> s{_aiExplicitOfflineLicenseManagement = a})

-- | The read access of a volume. Possible values are PARTIAL, ALL_PAGES,
-- NO_PAGES or UNKNOWN. This value depends on the country listed above. A
-- value of PARTIAL means that the publisher has allowed some portion of
-- the volume to be viewed publicly, without purchase. This can apply to
-- eBooks as well as non-eBooks. Public domain books will always have a
-- value of ALL_PAGES.
aiViewability :: Lens' AccessInfo (Maybe Text)
aiViewability
  = lens _aiViewability
      (\ s a -> s{_aiViewability = a})

-- | Whether quote sharing is allowed for this volume.
aiQuoteSharingAllowed :: Lens' AccessInfo (Maybe Bool)
aiQuoteSharingAllowed
  = lens _aiQuoteSharingAllowed
      (\ s a -> s{_aiQuoteSharingAllowed = a})

-- | Information about epub content. (In LITE projection.)
aiEpub :: Lens' AccessInfo (Maybe Epub)
aiEpub = lens _aiEpub (\ s a -> s{_aiEpub = a})

-- | Information about pdf content. (In LITE projection.)
aiPdf :: Lens' AccessInfo (Maybe Pdf)
aiPdf = lens _aiPdf (\ s a -> s{_aiPdf = a})

-- | Whether text-to-speech is permitted for this volume. Values can be
-- ALLOWED, ALLOWED_FOR_ACCESSIBILITY, or NOT_ALLOWED.
aiTextToSpeechPermission :: Lens' AccessInfo (Maybe Text)
aiTextToSpeechPermission
  = lens _aiTextToSpeechPermission
      (\ s a -> s{_aiTextToSpeechPermission = a})

-- | Whether this volume can be embedded in a viewport using the Embedded
-- Viewer API.
aiEmbeddable :: Lens' AccessInfo (Maybe Bool)
aiEmbeddable
  = lens _aiEmbeddable (\ s a -> s{_aiEmbeddable = a})

-- | Combines the access and viewability of this volume into a single status
-- field for this user. Values can be FULL_PURCHASED, FULL_PUBLIC_DOMAIN,
-- SAMPLE or NONE. (In LITE projection.)
aiAccessViewStatus :: Lens' AccessInfo (Maybe Text)
aiAccessViewStatus
  = lens _aiAccessViewStatus
      (\ s a -> s{_aiAccessViewStatus = a})

-- | Information about a volume\'s download license access restrictions.
aiDownloadAccess :: Lens' AccessInfo (Maybe DownloadAccessRestriction)
aiDownloadAccess
  = lens _aiDownloadAccess
      (\ s a -> s{_aiDownloadAccess = a})

-- | For ordered but not yet processed orders, we give a URL that can be used
-- to go to the appropriate Google Wallet page.
aiViewOrderURL :: Lens' AccessInfo (Maybe Text)
aiViewOrderURL
  = lens _aiViewOrderURL
      (\ s a -> s{_aiViewOrderURL = a})

-- | Whether or not this book is public domain in the country listed above.
aiPublicDomain :: Lens' AccessInfo (Maybe Bool)
aiPublicDomain
  = lens _aiPublicDomain
      (\ s a -> s{_aiPublicDomain = a})

instance FromJSON AccessInfo where
        parseJSON
          = withObject "AccessInfo"
              (\ o ->
                 AccessInfo <$>
                   (o .:? "webReaderLink") <*> (o .:? "country") <*>
                     (o .:? "driveImportedContentLink")
                     <*> (o .:? "explicitOfflineLicenseManagement")
                     <*> (o .:? "viewability")
                     <*> (o .:? "quoteSharingAllowed")
                     <*> (o .:? "epub")
                     <*> (o .:? "pdf")
                     <*> (o .:? "textToSpeechPermission")
                     <*> (o .:? "embeddable")
                     <*> (o .:? "accessViewStatus")
                     <*> (o .:? "downloadAccess")
                     <*> (o .:? "viewOrderUrl")
                     <*> (o .:? "publicDomain"))

instance ToJSON AccessInfo where
        toJSON AccessInfo{..}
          = object
              (catMaybes
                 [("webReaderLink" .=) <$> _aiWebReaderLink,
                  ("country" .=) <$> _aiCountry,
                  ("driveImportedContentLink" .=) <$>
                    _aiDriveImportedContentLink,
                  ("explicitOfflineLicenseManagement" .=) <$>
                    _aiExplicitOfflineLicenseManagement,
                  ("viewability" .=) <$> _aiViewability,
                  ("quoteSharingAllowed" .=) <$>
                    _aiQuoteSharingAllowed,
                  ("epub" .=) <$> _aiEpub, ("pdf" .=) <$> _aiPdf,
                  ("textToSpeechPermission" .=) <$>
                    _aiTextToSpeechPermission,
                  ("embeddable" .=) <$> _aiEmbeddable,
                  ("accessViewStatus" .=) <$> _aiAccessViewStatus,
                  ("downloadAccess" .=) <$> _aiDownloadAccess,
                  ("viewOrderUrl" .=) <$> _aiViewOrderURL,
                  ("publicDomain" .=) <$> _aiPublicDomain])

-- | Copy\/Paste accounting information.
--
-- /See:/ 'copy' smart constructor.
data Copy = Copy
    { _cLimitType               :: !(Maybe Text)
    , _cAllowedCharacterCount   :: !(Maybe Int32)
    , _cUpdated                 :: !(Maybe DateTime')
    , _cRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Copy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cLimitType'
--
-- * 'cAllowedCharacterCount'
--
-- * 'cUpdated'
--
-- * 'cRemainingCharacterCount'
copy
    :: Copy
copy =
    Copy
    { _cLimitType = Nothing
    , _cAllowedCharacterCount = Nothing
    , _cUpdated = Nothing
    , _cRemainingCharacterCount = Nothing
    }

cLimitType :: Lens' Copy (Maybe Text)
cLimitType
  = lens _cLimitType (\ s a -> s{_cLimitType = a})

cAllowedCharacterCount :: Lens' Copy (Maybe Int32)
cAllowedCharacterCount
  = lens _cAllowedCharacterCount
      (\ s a -> s{_cAllowedCharacterCount = a})

cUpdated :: Lens' Copy (Maybe UTCTime)
cUpdated
  = lens _cUpdated (\ s a -> s{_cUpdated = a}) .
      mapping _DateTime

cRemainingCharacterCount :: Lens' Copy (Maybe Int32)
cRemainingCharacterCount
  = lens _cRemainingCharacterCount
      (\ s a -> s{_cRemainingCharacterCount = a})

instance FromJSON Copy where
        parseJSON
          = withObject "Copy"
              (\ o ->
                 Copy <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "updated")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON Copy where
        toJSON Copy{..}
          = object
              (catMaybes
                 [("limitType" .=) <$> _cLimitType,
                  ("allowedCharacterCount" .=) <$>
                    _cAllowedCharacterCount,
                  ("updated" .=) <$> _cUpdated,
                  ("remainingCharacterCount" .=) <$>
                    _cRemainingCharacterCount])

--
-- /See:/ 'layersItem' smart constructor.
data LayersItem = LayersItem
    { _liLimitType               :: !(Maybe Text)
    , _liAllowedCharacterCount   :: !(Maybe Int32)
    , _liUpdated                 :: !(Maybe DateTime')
    , _liLayerId                 :: !(Maybe Text)
    , _liRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liLimitType'
--
-- * 'liAllowedCharacterCount'
--
-- * 'liUpdated'
--
-- * 'liLayerId'
--
-- * 'liRemainingCharacterCount'
layersItem
    :: LayersItem
layersItem =
    LayersItem
    { _liLimitType = Nothing
    , _liAllowedCharacterCount = Nothing
    , _liUpdated = Nothing
    , _liLayerId = Nothing
    , _liRemainingCharacterCount = Nothing
    }

liLimitType :: Lens' LayersItem (Maybe Text)
liLimitType
  = lens _liLimitType (\ s a -> s{_liLimitType = a})

liAllowedCharacterCount :: Lens' LayersItem (Maybe Int32)
liAllowedCharacterCount
  = lens _liAllowedCharacterCount
      (\ s a -> s{_liAllowedCharacterCount = a})

liUpdated :: Lens' LayersItem (Maybe UTCTime)
liUpdated
  = lens _liUpdated (\ s a -> s{_liUpdated = a}) .
      mapping _DateTime

liLayerId :: Lens' LayersItem (Maybe Text)
liLayerId
  = lens _liLayerId (\ s a -> s{_liLayerId = a})

liRemainingCharacterCount :: Lens' LayersItem (Maybe Int32)
liRemainingCharacterCount
  = lens _liRemainingCharacterCount
      (\ s a -> s{_liRemainingCharacterCount = a})

instance FromJSON LayersItem where
        parseJSON
          = withObject "LayersItem"
              (\ o ->
                 LayersItem <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON LayersItem where
        toJSON LayersItem{..}
          = object
              (catMaybes
                 [("limitType" .=) <$> _liLimitType,
                  ("allowedCharacterCount" .=) <$>
                    _liAllowedCharacterCount,
                  ("updated" .=) <$> _liUpdated,
                  ("layerId" .=) <$> _liLayerId,
                  ("remainingCharacterCount" .=) <$>
                    _liRemainingCharacterCount])

--
-- /See:/ 'booksVolumesRecommendedRateResponse' smart constructor.
newtype BooksVolumesRecommendedRateResponse = BooksVolumesRecommendedRateResponse
    { _bvrrrConsistencyToken :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BooksVolumesRecommendedRateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bvrrrConsistencyToken'
booksVolumesRecommendedRateResponse
    :: BooksVolumesRecommendedRateResponse
booksVolumesRecommendedRateResponse =
    BooksVolumesRecommendedRateResponse
    { _bvrrrConsistencyToken = Nothing
    }

bvrrrConsistencyToken :: Lens' BooksVolumesRecommendedRateResponse (Maybe Text)
bvrrrConsistencyToken
  = lens _bvrrrConsistencyToken
      (\ s a -> s{_bvrrrConsistencyToken = a})

instance FromJSON BooksVolumesRecommendedRateResponse
         where
        parseJSON
          = withObject "BooksVolumesRecommendedRateResponse"
              (\ o ->
                 BooksVolumesRecommendedRateResponse <$>
                   (o .:? "consistency_token"))

instance ToJSON BooksVolumesRecommendedRateResponse
         where
        toJSON BooksVolumesRecommendedRateResponse{..}
          = object
              (catMaybes
                 [("consistency_token" .=) <$>
                    _bvrrrConsistencyToken])

--
-- /See:/ 'userUploadedVolumeInfo' smart constructor.
newtype UserUploadedVolumeInfo = UserUploadedVolumeInfo
    { _uuviProcessingState :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserUploadedVolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuviProcessingState'
userUploadedVolumeInfo
    :: UserUploadedVolumeInfo
userUploadedVolumeInfo =
    UserUploadedVolumeInfo
    { _uuviProcessingState = Nothing
    }

uuviProcessingState :: Lens' UserUploadedVolumeInfo (Maybe Text)
uuviProcessingState
  = lens _uuviProcessingState
      (\ s a -> s{_uuviProcessingState = a})

instance FromJSON UserUploadedVolumeInfo where
        parseJSON
          = withObject "UserUploadedVolumeInfo"
              (\ o ->
                 UserUploadedVolumeInfo <$> (o .:? "processingState"))

instance ToJSON UserUploadedVolumeInfo where
        toJSON UserUploadedVolumeInfo{..}
          = object
              (catMaybes
                 [("processingState" .=) <$> _uuviProcessingState])

--
-- /See:/ 'bookshelf' smart constructor.
data Bookshelf = Bookshelf
    { _bAccess             :: !(Maybe Text)
    , _bVolumesLastUpdated :: !(Maybe DateTime')
    , _bKind               :: !Text
    , _bCreated            :: !(Maybe DateTime')
    , _bVolumeCount        :: !(Maybe Int32)
    , _bSelfLink           :: !(Maybe Text)
    , _bId                 :: !(Maybe Int32)
    , _bUpdated            :: !(Maybe DateTime')
    , _bTitle              :: !(Maybe Text)
    , _bDescription        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Bookshelf' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bAccess'
--
-- * 'bVolumesLastUpdated'
--
-- * 'bKind'
--
-- * 'bCreated'
--
-- * 'bVolumeCount'
--
-- * 'bSelfLink'
--
-- * 'bId'
--
-- * 'bUpdated'
--
-- * 'bTitle'
--
-- * 'bDescription'
bookshelf
    :: Bookshelf
bookshelf =
    Bookshelf
    { _bAccess = Nothing
    , _bVolumesLastUpdated = Nothing
    , _bKind = "books#bookshelf"
    , _bCreated = Nothing
    , _bVolumeCount = Nothing
    , _bSelfLink = Nothing
    , _bId = Nothing
    , _bUpdated = Nothing
    , _bTitle = Nothing
    , _bDescription = Nothing
    }

-- | Whether this bookshelf is PUBLIC or PRIVATE.
bAccess :: Lens' Bookshelf (Maybe Text)
bAccess = lens _bAccess (\ s a -> s{_bAccess = a})

-- | Last time a volume was added or removed from this bookshelf (formatted
-- UTC timestamp with millisecond resolution).
bVolumesLastUpdated :: Lens' Bookshelf (Maybe UTCTime)
bVolumesLastUpdated
  = lens _bVolumesLastUpdated
      (\ s a -> s{_bVolumesLastUpdated = a})
      . mapping _DateTime

-- | Resource type for bookshelf metadata.
bKind :: Lens' Bookshelf Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | Created time for this bookshelf (formatted UTC timestamp with
-- millisecond resolution).
bCreated :: Lens' Bookshelf (Maybe UTCTime)
bCreated
  = lens _bCreated (\ s a -> s{_bCreated = a}) .
      mapping _DateTime

-- | Number of volumes in this bookshelf.
bVolumeCount :: Lens' Bookshelf (Maybe Int32)
bVolumeCount
  = lens _bVolumeCount (\ s a -> s{_bVolumeCount = a})

-- | URL to this resource.
bSelfLink :: Lens' Bookshelf (Maybe Text)
bSelfLink
  = lens _bSelfLink (\ s a -> s{_bSelfLink = a})

-- | Id of this bookshelf, only unique by user.
bId :: Lens' Bookshelf (Maybe Int32)
bId = lens _bId (\ s a -> s{_bId = a})

-- | Last modified time of this bookshelf (formatted UTC timestamp with
-- millisecond resolution).
bUpdated :: Lens' Bookshelf (Maybe UTCTime)
bUpdated
  = lens _bUpdated (\ s a -> s{_bUpdated = a}) .
      mapping _DateTime

-- | Title of this bookshelf.
bTitle :: Lens' Bookshelf (Maybe Text)
bTitle = lens _bTitle (\ s a -> s{_bTitle = a})

-- | Description of this bookshelf.
bDescription :: Lens' Bookshelf (Maybe Text)
bDescription
  = lens _bDescription (\ s a -> s{_bDescription = a})

instance FromJSON Bookshelf where
        parseJSON
          = withObject "Bookshelf"
              (\ o ->
                 Bookshelf <$>
                   (o .:? "access") <*> (o .:? "volumesLastUpdated") <*>
                     (o .:? "kind" .!= "books#bookshelf")
                     <*> (o .:? "created")
                     <*> (o .:? "volumeCount")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Bookshelf where
        toJSON Bookshelf{..}
          = object
              (catMaybes
                 [("access" .=) <$> _bAccess,
                  ("volumesLastUpdated" .=) <$> _bVolumesLastUpdated,
                  Just ("kind" .= _bKind),
                  ("created" .=) <$> _bCreated,
                  ("volumeCount" .=) <$> _bVolumeCount,
                  ("selfLink" .=) <$> _bSelfLink, ("id" .=) <$> _bId,
                  ("updated" .=) <$> _bUpdated,
                  ("title" .=) <$> _bTitle,
                  ("description" .=) <$> _bDescription])

--
-- /See:/ 'derivativesItem' smart constructor.
data DerivativesItem = DerivativesItem
    { _diText   :: !(Maybe Text)
    , _diSource :: !(Maybe DerivativesItemSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DerivativesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diText'
--
-- * 'diSource'
derivativesItem
    :: DerivativesItem
derivativesItem =
    DerivativesItem
    { _diText = Nothing
    , _diSource = Nothing
    }

diText :: Lens' DerivativesItem (Maybe Text)
diText = lens _diText (\ s a -> s{_diText = a})

diSource :: Lens' DerivativesItem (Maybe DerivativesItemSource)
diSource = lens _diSource (\ s a -> s{_diSource = a})

instance FromJSON DerivativesItem where
        parseJSON
          = withObject "DerivativesItem"
              (\ o ->
                 DerivativesItem <$>
                   (o .:? "text") <*> (o .:? "source"))

instance ToJSON DerivativesItem where
        toJSON DerivativesItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _diText,
                  ("source" .=) <$> _diSource])

--
-- /See:/ 'sensesItemSource' smart constructor.
data SensesItemSource = SensesItemSource
    { _sisURL         :: !(Maybe Text)
    , _sisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SensesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sisURL'
--
-- * 'sisAttribution'
sensesItemSource
    :: SensesItemSource
sensesItemSource =
    SensesItemSource
    { _sisURL = Nothing
    , _sisAttribution = Nothing
    }

sisURL :: Lens' SensesItemSource (Maybe Text)
sisURL = lens _sisURL (\ s a -> s{_sisURL = a})

sisAttribution :: Lens' SensesItemSource (Maybe Text)
sisAttribution
  = lens _sisAttribution
      (\ s a -> s{_sisAttribution = a})

instance FromJSON SensesItemSource where
        parseJSON
          = withObject "SensesItemSource"
              (\ o ->
                 SensesItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON SensesItemSource where
        toJSON SensesItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _sisURL,
                  ("attribution" .=) <$> _sisAttribution])

--
-- /See:/ 'boundaryItemItem' smart constructor.
data BoundaryItemItem = BoundaryItemItem
    { _biiLatitude  :: !(Maybe Word32)
    , _biiLongitude :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BoundaryItemItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biiLatitude'
--
-- * 'biiLongitude'
boundaryItemItem
    :: BoundaryItemItem
boundaryItemItem =
    BoundaryItemItem
    { _biiLatitude = Nothing
    , _biiLongitude = Nothing
    }

biiLatitude :: Lens' BoundaryItemItem (Maybe Word32)
biiLatitude
  = lens _biiLatitude (\ s a -> s{_biiLatitude = a})

biiLongitude :: Lens' BoundaryItemItem (Maybe Word32)
biiLongitude
  = lens _biiLongitude (\ s a -> s{_biiLongitude = a})

instance FromJSON BoundaryItemItem where
        parseJSON
          = withObject "BoundaryItemItem"
              (\ o ->
                 BoundaryItemItem <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON BoundaryItemItem where
        toJSON BoundaryItemItem{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _biiLatitude,
                  ("longitude" .=) <$> _biiLongitude])

--
-- /See:/ 'category' smart constructor.
data Category = Category
    { _cKind  :: !Text
    , _cItems :: !(Maybe [CategoryItemsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Category' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cKind'
--
-- * 'cItems'
category
    :: Category
category =
    Category
    { _cKind = "onboarding#category"
    , _cItems = Nothing
    }

-- | Resource type.
cKind :: Lens' Category Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | A list of onboarding categories.
cItems :: Lens' Category [CategoryItemsItem]
cItems
  = lens _cItems (\ s a -> s{_cItems = a}) . _Default .
      _Coerce

instance FromJSON Category where
        parseJSON
          = withObject "Category"
              (\ o ->
                 Category <$>
                   (o .:? "kind" .!= "onboarding#category") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Category where
        toJSON Category{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cKind), ("items" .=) <$> _cItems])

--
-- /See:/ 'offersItemsItem' smart constructor.
data OffersItemsItem = OffersItemsItem
    { _oiiItems        :: !(Maybe [OffersItemsItemItemsItem])
    , _oiiArtURL       :: !(Maybe Text)
    , _oiiId           :: !(Maybe Text)
    , _oiiGServicesKey :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersItemsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiiItems'
--
-- * 'oiiArtURL'
--
-- * 'oiiId'
--
-- * 'oiiGServicesKey'
offersItemsItem
    :: OffersItemsItem
offersItemsItem =
    OffersItemsItem
    { _oiiItems = Nothing
    , _oiiArtURL = Nothing
    , _oiiId = Nothing
    , _oiiGServicesKey = Nothing
    }

oiiItems :: Lens' OffersItemsItem [OffersItemsItemItemsItem]
oiiItems
  = lens _oiiItems (\ s a -> s{_oiiItems = a}) .
      _Default
      . _Coerce

oiiArtURL :: Lens' OffersItemsItem (Maybe Text)
oiiArtURL
  = lens _oiiArtURL (\ s a -> s{_oiiArtURL = a})

oiiId :: Lens' OffersItemsItem (Maybe Text)
oiiId = lens _oiiId (\ s a -> s{_oiiId = a})

oiiGServicesKey :: Lens' OffersItemsItem (Maybe Text)
oiiGServicesKey
  = lens _oiiGServicesKey
      (\ s a -> s{_oiiGServicesKey = a})

instance FromJSON OffersItemsItem where
        parseJSON
          = withObject "OffersItemsItem"
              (\ o ->
                 OffersItemsItem <$>
                   (o .:? "items" .!= mempty) <*> (o .:? "artUrl") <*>
                     (o .:? "id")
                     <*> (o .:? "gservicesKey"))

instance ToJSON OffersItemsItem where
        toJSON OffersItemsItem{..}
          = object
              (catMaybes
                 [("items" .=) <$> _oiiItems,
                  ("artUrl" .=) <$> _oiiArtURL, ("id" .=) <$> _oiiId,
                  ("gservicesKey" .=) <$> _oiiGServicesKey])

--
-- /See:/ 'annotationsSummary' smart constructor.
data AnnotationsSummary = AnnotationsSummary
    { _asKind   :: !Text
    , _asLayers :: !(Maybe [LayersItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asKind'
--
-- * 'asLayers'
annotationsSummary
    :: AnnotationsSummary
annotationsSummary =
    AnnotationsSummary
    { _asKind = "books#annotationsSummary"
    , _asLayers = Nothing
    }

asKind :: Lens' AnnotationsSummary Text
asKind = lens _asKind (\ s a -> s{_asKind = a})

asLayers :: Lens' AnnotationsSummary [LayersItem]
asLayers
  = lens _asLayers (\ s a -> s{_asLayers = a}) .
      _Default
      . _Coerce

instance FromJSON AnnotationsSummary where
        parseJSON
          = withObject "AnnotationsSummary"
              (\ o ->
                 AnnotationsSummary <$>
                   (o .:? "kind" .!= "books#annotationsSummary") <*>
                     (o .:? "layers" .!= mempty))

instance ToJSON AnnotationsSummary where
        toJSON AnnotationsSummary{..}
          = object
              (catMaybes
                 [Just ("kind" .= _asKind),
                  ("layers" .=) <$> _asLayers])

-- | Search result information related to this volume.
--
-- /See:/ 'searchInfo' smart constructor.
newtype SearchInfo = SearchInfo
    { _siTextSnippet :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siTextSnippet'
searchInfo
    :: SearchInfo
searchInfo =
    SearchInfo
    { _siTextSnippet = Nothing
    }

-- | A text snippet containing the search query.
siTextSnippet :: Lens' SearchInfo (Maybe Text)
siTextSnippet
  = lens _siTextSnippet
      (\ s a -> s{_siTextSnippet = a})

instance FromJSON SearchInfo where
        parseJSON
          = withObject "SearchInfo"
              (\ o -> SearchInfo <$> (o .:? "textSnippet"))

instance ToJSON SearchInfo where
        toJSON SearchInfo{..}
          = object
              (catMaybes [("textSnippet" .=) <$> _siTextSnippet])

--
-- /See:/ 'volume' smart constructor.
data Volume = Volume
    { _vvUserInfo        :: !(Maybe UserInfo)
    , _vvEtag            :: !(Maybe Text)
    , _vvAccessInfo      :: !(Maybe AccessInfo)
    , _vvKind            :: !Text
    , _vvSearchInfo      :: !(Maybe SearchInfo)
    , _vvSelfLink        :: !(Maybe Text)
    , _vvLayerInfo       :: !(Maybe LayerInfo)
    , _vvSaleInfo        :: !(Maybe SaleInfo)
    , _vvId              :: !(Maybe Text)
    , _vvRecommendedInfo :: !(Maybe RecommendedInfo)
    , _vvVolumeInfo      :: !(Maybe VolumeInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vvUserInfo'
--
-- * 'vvEtag'
--
-- * 'vvAccessInfo'
--
-- * 'vvKind'
--
-- * 'vvSearchInfo'
--
-- * 'vvSelfLink'
--
-- * 'vvLayerInfo'
--
-- * 'vvSaleInfo'
--
-- * 'vvId'
--
-- * 'vvRecommendedInfo'
--
-- * 'vvVolumeInfo'
volume
    :: Volume
volume =
    Volume
    { _vvUserInfo = Nothing
    , _vvEtag = Nothing
    , _vvAccessInfo = Nothing
    , _vvKind = "books#volume"
    , _vvSearchInfo = Nothing
    , _vvSelfLink = Nothing
    , _vvLayerInfo = Nothing
    , _vvSaleInfo = Nothing
    , _vvId = Nothing
    , _vvRecommendedInfo = Nothing
    , _vvVolumeInfo = Nothing
    }

-- | User specific information related to this volume. (e.g. page this user
-- last read or whether they purchased this book)
vvUserInfo :: Lens' Volume (Maybe UserInfo)
vvUserInfo
  = lens _vvUserInfo (\ s a -> s{_vvUserInfo = a})

-- | Opaque identifier for a specific version of a volume resource. (In LITE
-- projection)
vvEtag :: Lens' Volume (Maybe Text)
vvEtag = lens _vvEtag (\ s a -> s{_vvEtag = a})

-- | Any information about a volume related to reading or obtaining that
-- volume text. This information can depend on country (books may be public
-- domain in one country but not in another, e.g.).
vvAccessInfo :: Lens' Volume (Maybe AccessInfo)
vvAccessInfo
  = lens _vvAccessInfo (\ s a -> s{_vvAccessInfo = a})

-- | Resource type for a volume. (In LITE projection.)
vvKind :: Lens' Volume Text
vvKind = lens _vvKind (\ s a -> s{_vvKind = a})

-- | Search result information related to this volume.
vvSearchInfo :: Lens' Volume (Maybe SearchInfo)
vvSearchInfo
  = lens _vvSearchInfo (\ s a -> s{_vvSearchInfo = a})

-- | URL to this resource. (In LITE projection.)
vvSelfLink :: Lens' Volume (Maybe Text)
vvSelfLink
  = lens _vvSelfLink (\ s a -> s{_vvSelfLink = a})

-- | What layers exist in this volume and high level information about them.
vvLayerInfo :: Lens' Volume (Maybe LayerInfo)
vvLayerInfo
  = lens _vvLayerInfo (\ s a -> s{_vvLayerInfo = a})

-- | Any information about a volume related to the eBookstore and\/or
-- purchaseability. This information can depend on the country where the
-- request originates from (i.e. books may not be for sale in certain
-- countries).
vvSaleInfo :: Lens' Volume (Maybe SaleInfo)
vvSaleInfo
  = lens _vvSaleInfo (\ s a -> s{_vvSaleInfo = a})

-- | Unique identifier for a volume. (In LITE projection.)
vvId :: Lens' Volume (Maybe Text)
vvId = lens _vvId (\ s a -> s{_vvId = a})

-- | Recommendation related information for this volume.
vvRecommendedInfo :: Lens' Volume (Maybe RecommendedInfo)
vvRecommendedInfo
  = lens _vvRecommendedInfo
      (\ s a -> s{_vvRecommendedInfo = a})

-- | General volume information.
vvVolumeInfo :: Lens' Volume (Maybe VolumeInfo)
vvVolumeInfo
  = lens _vvVolumeInfo (\ s a -> s{_vvVolumeInfo = a})

instance FromJSON Volume where
        parseJSON
          = withObject "Volume"
              (\ o ->
                 Volume <$>
                   (o .:? "userInfo") <*> (o .:? "etag") <*>
                     (o .:? "accessInfo")
                     <*> (o .:? "kind" .!= "books#volume")
                     <*> (o .:? "searchInfo")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "layerInfo")
                     <*> (o .:? "saleInfo")
                     <*> (o .:? "id")
                     <*> (o .:? "recommendedInfo")
                     <*> (o .:? "volumeInfo"))

instance ToJSON Volume where
        toJSON Volume{..}
          = object
              (catMaybes
                 [("userInfo" .=) <$> _vvUserInfo,
                  ("etag" .=) <$> _vvEtag,
                  ("accessInfo" .=) <$> _vvAccessInfo,
                  Just ("kind" .= _vvKind),
                  ("searchInfo" .=) <$> _vvSearchInfo,
                  ("selfLink" .=) <$> _vvSelfLink,
                  ("layerInfo" .=) <$> _vvLayerInfo,
                  ("saleInfo" .=) <$> _vvSaleInfo, ("id" .=) <$> _vvId,
                  ("recommendedInfo" .=) <$> _vvRecommendedInfo,
                  ("volumeInfo" .=) <$> _vvVolumeInfo])

--
-- /See:/ 'wordsItem' smart constructor.
data WordsItem = WordsItem
    { _wiSenses      :: !(Maybe [SensesItem])
    , _wiSource      :: !(Maybe WordsItemSource)
    , _wiDerivatives :: !(Maybe [DerivativesItem])
    , _wiExamples    :: !(Maybe [WordsItemExamplesItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WordsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiSenses'
--
-- * 'wiSource'
--
-- * 'wiDerivatives'
--
-- * 'wiExamples'
wordsItem
    :: WordsItem
wordsItem =
    WordsItem
    { _wiSenses = Nothing
    , _wiSource = Nothing
    , _wiDerivatives = Nothing
    , _wiExamples = Nothing
    }

wiSenses :: Lens' WordsItem [SensesItem]
wiSenses
  = lens _wiSenses (\ s a -> s{_wiSenses = a}) .
      _Default
      . _Coerce

-- | The words with different meanings but not related words, e.g. \"go\"
-- (game) and \"go\" (verb).
wiSource :: Lens' WordsItem (Maybe WordsItemSource)
wiSource = lens _wiSource (\ s a -> s{_wiSource = a})

wiDerivatives :: Lens' WordsItem [DerivativesItem]
wiDerivatives
  = lens _wiDerivatives
      (\ s a -> s{_wiDerivatives = a})
      . _Default
      . _Coerce

wiExamples :: Lens' WordsItem [WordsItemExamplesItem]
wiExamples
  = lens _wiExamples (\ s a -> s{_wiExamples = a}) .
      _Default
      . _Coerce

instance FromJSON WordsItem where
        parseJSON
          = withObject "WordsItem"
              (\ o ->
                 WordsItem <$>
                   (o .:? "senses" .!= mempty) <*> (o .:? "source") <*>
                     (o .:? "derivatives" .!= mempty)
                     <*> (o .:? "examples" .!= mempty))

instance ToJSON WordsItem where
        toJSON WordsItem{..}
          = object
              (catMaybes
                 [("senses" .=) <$> _wiSenses,
                  ("source" .=) <$> _wiSource,
                  ("derivatives" .=) <$> _wiDerivatives,
                  ("examples" .=) <$> _wiExamples])

--
-- /See:/ 'categoryItemsItem' smart constructor.
data CategoryItemsItem = CategoryItemsItem
    { _ciiName       :: !(Maybe Text)
    , _ciiCategoryId :: !(Maybe Text)
    , _ciiBadgeURL   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CategoryItemsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciiName'
--
-- * 'ciiCategoryId'
--
-- * 'ciiBadgeURL'
categoryItemsItem
    :: CategoryItemsItem
categoryItemsItem =
    CategoryItemsItem
    { _ciiName = Nothing
    , _ciiCategoryId = Nothing
    , _ciiBadgeURL = Nothing
    }

ciiName :: Lens' CategoryItemsItem (Maybe Text)
ciiName = lens _ciiName (\ s a -> s{_ciiName = a})

ciiCategoryId :: Lens' CategoryItemsItem (Maybe Text)
ciiCategoryId
  = lens _ciiCategoryId
      (\ s a -> s{_ciiCategoryId = a})

ciiBadgeURL :: Lens' CategoryItemsItem (Maybe Text)
ciiBadgeURL
  = lens _ciiBadgeURL (\ s a -> s{_ciiBadgeURL = a})

instance FromJSON CategoryItemsItem where
        parseJSON
          = withObject "CategoryItemsItem"
              (\ o ->
                 CategoryItemsItem <$>
                   (o .:? "name") <*> (o .:? "categoryId") <*>
                     (o .:? "badgeUrl"))

instance ToJSON CategoryItemsItem where
        toJSON CategoryItemsItem{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ciiName,
                  ("categoryId" .=) <$> _ciiCategoryId,
                  ("badgeUrl" .=) <$> _ciiBadgeURL])

--
-- /See:/ 'offersItemsItemItemsItem' smart constructor.
data OffersItemsItemItemsItem = OffersItemsItemItemsItem
    { _oiiiiCanonicalVolumeLink :: !(Maybe Text)
    , _oiiiiCoverURL            :: !(Maybe Text)
    , _oiiiiVolumeId            :: !(Maybe Text)
    , _oiiiiAuthor              :: !(Maybe Text)
    , _oiiiiTitle               :: !(Maybe Text)
    , _oiiiiDescription         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersItemsItemItemsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiiiiCanonicalVolumeLink'
--
-- * 'oiiiiCoverURL'
--
-- * 'oiiiiVolumeId'
--
-- * 'oiiiiAuthor'
--
-- * 'oiiiiTitle'
--
-- * 'oiiiiDescription'
offersItemsItemItemsItem
    :: OffersItemsItemItemsItem
offersItemsItemItemsItem =
    OffersItemsItemItemsItem
    { _oiiiiCanonicalVolumeLink = Nothing
    , _oiiiiCoverURL = Nothing
    , _oiiiiVolumeId = Nothing
    , _oiiiiAuthor = Nothing
    , _oiiiiTitle = Nothing
    , _oiiiiDescription = Nothing
    }

oiiiiCanonicalVolumeLink :: Lens' OffersItemsItemItemsItem (Maybe Text)
oiiiiCanonicalVolumeLink
  = lens _oiiiiCanonicalVolumeLink
      (\ s a -> s{_oiiiiCanonicalVolumeLink = a})

oiiiiCoverURL :: Lens' OffersItemsItemItemsItem (Maybe Text)
oiiiiCoverURL
  = lens _oiiiiCoverURL
      (\ s a -> s{_oiiiiCoverURL = a})

oiiiiVolumeId :: Lens' OffersItemsItemItemsItem (Maybe Text)
oiiiiVolumeId
  = lens _oiiiiVolumeId
      (\ s a -> s{_oiiiiVolumeId = a})

oiiiiAuthor :: Lens' OffersItemsItemItemsItem (Maybe Text)
oiiiiAuthor
  = lens _oiiiiAuthor (\ s a -> s{_oiiiiAuthor = a})

oiiiiTitle :: Lens' OffersItemsItemItemsItem (Maybe Text)
oiiiiTitle
  = lens _oiiiiTitle (\ s a -> s{_oiiiiTitle = a})

oiiiiDescription :: Lens' OffersItemsItemItemsItem (Maybe Text)
oiiiiDescription
  = lens _oiiiiDescription
      (\ s a -> s{_oiiiiDescription = a})

instance FromJSON OffersItemsItemItemsItem where
        parseJSON
          = withObject "OffersItemsItemItemsItem"
              (\ o ->
                 OffersItemsItemItemsItem <$>
                   (o .:? "canonicalVolumeLink") <*> (o .:? "coverUrl")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "author")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON OffersItemsItemItemsItem where
        toJSON OffersItemsItemItemsItem{..}
          = object
              (catMaybes
                 [("canonicalVolumeLink" .=) <$>
                    _oiiiiCanonicalVolumeLink,
                  ("coverUrl" .=) <$> _oiiiiCoverURL,
                  ("volumeId" .=) <$> _oiiiiVolumeId,
                  ("author" .=) <$> _oiiiiAuthor,
                  ("title" .=) <$> _oiiiiTitle,
                  ("description" .=) <$> _oiiiiDescription])

-- | The rental duration (for rental offers only).
--
-- /See:/ 'rentalDuration' smart constructor.
data RentalDuration = RentalDuration
    { _rdCount :: !(Maybe Double)
    , _rdUnit  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RentalDuration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdCount'
--
-- * 'rdUnit'
rentalDuration
    :: RentalDuration
rentalDuration =
    RentalDuration
    { _rdCount = Nothing
    , _rdUnit = Nothing
    }

rdCount :: Lens' RentalDuration (Maybe Double)
rdCount = lens _rdCount (\ s a -> s{_rdCount = a})

rdUnit :: Lens' RentalDuration (Maybe Text)
rdUnit = lens _rdUnit (\ s a -> s{_rdUnit = a})

instance FromJSON RentalDuration where
        parseJSON
          = withObject "RentalDuration"
              (\ o ->
                 RentalDuration <$>
                   (o .:? "count") <*> (o .:? "unit"))

instance ToJSON RentalDuration where
        toJSON RentalDuration{..}
          = object
              (catMaybes
                 [("count" .=) <$> _rdCount, ("unit" .=) <$> _rdUnit])

--
-- /See:/ 'geolayerdata' smart constructor.
data Geolayerdata = Geolayerdata
    { _gKind   :: !Text
    , _gGeo    :: !(Maybe Geo)
    , _gCommon :: !(Maybe Common)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Geolayerdata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gKind'
--
-- * 'gGeo'
--
-- * 'gCommon'
geolayerdata
    :: Geolayerdata
geolayerdata =
    Geolayerdata
    { _gKind = "books#geolayerdata"
    , _gGeo = Nothing
    , _gCommon = Nothing
    }

gKind :: Lens' Geolayerdata Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

gGeo :: Lens' Geolayerdata (Maybe Geo)
gGeo = lens _gGeo (\ s a -> s{_gGeo = a})

gCommon :: Lens' Geolayerdata (Maybe Common)
gCommon = lens _gCommon (\ s a -> s{_gCommon = a})

instance FromJSON Geolayerdata where
        parseJSON
          = withObject "Geolayerdata"
              (\ o ->
                 Geolayerdata <$>
                   (o .:? "kind" .!= "books#geolayerdata") <*>
                     (o .:? "geo")
                     <*> (o .:? "common"))

instance ToJSON Geolayerdata where
        toJSON Geolayerdata{..}
          = object
              (catMaybes
                 [Just ("kind" .= _gKind), ("geo" .=) <$> _gGeo,
                  ("common" .=) <$> _gCommon])

--
-- /See:/ 'dictlayerdata' smart constructor.
data Dictlayerdata = Dictlayerdata
    { _dKind   :: !Text
    , _dDict   :: !(Maybe Dict)
    , _dCommon :: !(Maybe DictlayerdataCommon)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Dictlayerdata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKind'
--
-- * 'dDict'
--
-- * 'dCommon'
dictlayerdata
    :: Dictlayerdata
dictlayerdata =
    Dictlayerdata
    { _dKind = "books#dictlayerdata"
    , _dDict = Nothing
    , _dCommon = Nothing
    }

dKind :: Lens' Dictlayerdata Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

dDict :: Lens' Dictlayerdata (Maybe Dict)
dDict = lens _dDict (\ s a -> s{_dDict = a})

dCommon :: Lens' Dictlayerdata (Maybe DictlayerdataCommon)
dCommon = lens _dCommon (\ s a -> s{_dCommon = a})

instance FromJSON Dictlayerdata where
        parseJSON
          = withObject "Dictlayerdata"
              (\ o ->
                 Dictlayerdata <$>
                   (o .:? "kind" .!= "books#dictlayerdata") <*>
                     (o .:? "dict")
                     <*> (o .:? "common"))

instance ToJSON Dictlayerdata where
        toJSON Dictlayerdata{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dKind), ("dict" .=) <$> _dDict,
                  ("common" .=) <$> _dCommon])

--
-- /See:/ 'conjugationsItem' smart constructor.
data ConjugationsItem = ConjugationsItem
    { _ciValue :: !(Maybe Text)
    , _ciType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConjugationsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciValue'
--
-- * 'ciType'
conjugationsItem
    :: ConjugationsItem
conjugationsItem =
    ConjugationsItem
    { _ciValue = Nothing
    , _ciType = Nothing
    }

ciValue :: Lens' ConjugationsItem (Maybe Text)
ciValue = lens _ciValue (\ s a -> s{_ciValue = a})

ciType :: Lens' ConjugationsItem (Maybe Text)
ciType = lens _ciType (\ s a -> s{_ciType = a})

instance FromJSON ConjugationsItem where
        parseJSON
          = withObject "ConjugationsItem"
              (\ o ->
                 ConjugationsItem <$>
                   (o .:? "value") <*> (o .:? "type"))

instance ToJSON ConjugationsItem where
        toJSON ConjugationsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ciValue, ("type" .=) <$> _ciType])

--
-- /See:/ 'hi' smart constructor.
data Hi = Hi
    { _hLatitude  :: !(Maybe Double)
    , _hLongitude :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Hi' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hLatitude'
--
-- * 'hLongitude'
hi
    :: Hi
hi =
    Hi
    { _hLatitude = Nothing
    , _hLongitude = Nothing
    }

hLatitude :: Lens' Hi (Maybe Double)
hLatitude
  = lens _hLatitude (\ s a -> s{_hLatitude = a})

hLongitude :: Lens' Hi (Maybe Double)
hLongitude
  = lens _hLongitude (\ s a -> s{_hLongitude = a})

instance FromJSON Hi where
        parseJSON
          = withObject "Hi"
              (\ o ->
                 Hi <$> (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON Hi where
        toJSON Hi{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _hLatitude,
                  ("longitude" .=) <$> _hLongitude])

--
-- /See:/ 'dictlayerdataCommon' smart constructor.
newtype DictlayerdataCommon = DictlayerdataCommon
    { _dcTitle :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataCommon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcTitle'
dictlayerdataCommon
    :: DictlayerdataCommon
dictlayerdataCommon =
    DictlayerdataCommon
    { _dcTitle = Nothing
    }

-- | The display title and localized canonical name to use when searching for
-- this entity on Google search.
dcTitle :: Lens' DictlayerdataCommon (Maybe Text)
dcTitle = lens _dcTitle (\ s a -> s{_dcTitle = a})

instance FromJSON DictlayerdataCommon where
        parseJSON
          = withObject "DictlayerdataCommon"
              (\ o -> DictlayerdataCommon <$> (o .:? "title"))

instance ToJSON DictlayerdataCommon where
        toJSON DictlayerdataCommon{..}
          = object (catMaybes [("title" .=) <$> _dcTitle])

-- | Offer retail (=discounted) price in Micros
--
-- /See:/ 'offersItemRetailPrice' smart constructor.
data OffersItemRetailPrice = OffersItemRetailPrice
    { _oirpCurrencyCode   :: !(Maybe Text)
    , _oirpAmountInMicros :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersItemRetailPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oirpCurrencyCode'
--
-- * 'oirpAmountInMicros'
offersItemRetailPrice
    :: OffersItemRetailPrice
offersItemRetailPrice =
    OffersItemRetailPrice
    { _oirpCurrencyCode = Nothing
    , _oirpAmountInMicros = Nothing
    }

oirpCurrencyCode :: Lens' OffersItemRetailPrice (Maybe Text)
oirpCurrencyCode
  = lens _oirpCurrencyCode
      (\ s a -> s{_oirpCurrencyCode = a})

oirpAmountInMicros :: Lens' OffersItemRetailPrice (Maybe Double)
oirpAmountInMicros
  = lens _oirpAmountInMicros
      (\ s a -> s{_oirpAmountInMicros = a})

instance FromJSON OffersItemRetailPrice where
        parseJSON
          = withObject "OffersItemRetailPrice"
              (\ o ->
                 OffersItemRetailPrice <$>
                   (o .:? "currencyCode") <*> (o .:? "amountInMicros"))

instance ToJSON OffersItemRetailPrice where
        toJSON OffersItemRetailPrice{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _oirpCurrencyCode,
                  ("amountInMicros" .=) <$> _oirpAmountInMicros])

--
-- /See:/ 'downloadAccessRestriction' smart constructor.
data DownloadAccessRestriction = DownloadAccessRestriction
    { _darJustAcquired       :: !(Maybe Bool)
    , _darSignature          :: !(Maybe Text)
    , _darKind               :: !Text
    , _darMaxDownloadDevices :: !(Maybe Int32)
    , _darDownloadsAcquired  :: !(Maybe Int32)
    , _darReasonCode         :: !(Maybe Text)
    , _darVolumeId           :: !(Maybe Text)
    , _darRestricted         :: !(Maybe Bool)
    , _darSource             :: !(Maybe Text)
    , _darDeviceAllowed      :: !(Maybe Bool)
    , _darMessage            :: !(Maybe Text)
    , _darNonce              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DownloadAccessRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darJustAcquired'
--
-- * 'darSignature'
--
-- * 'darKind'
--
-- * 'darMaxDownloadDevices'
--
-- * 'darDownloadsAcquired'
--
-- * 'darReasonCode'
--
-- * 'darVolumeId'
--
-- * 'darRestricted'
--
-- * 'darSource'
--
-- * 'darDeviceAllowed'
--
-- * 'darMessage'
--
-- * 'darNonce'
downloadAccessRestriction
    :: DownloadAccessRestriction
downloadAccessRestriction =
    DownloadAccessRestriction
    { _darJustAcquired = Nothing
    , _darSignature = Nothing
    , _darKind = "books#downloadAccessRestriction"
    , _darMaxDownloadDevices = Nothing
    , _darDownloadsAcquired = Nothing
    , _darReasonCode = Nothing
    , _darVolumeId = Nothing
    , _darRestricted = Nothing
    , _darSource = Nothing
    , _darDeviceAllowed = Nothing
    , _darMessage = Nothing
    , _darNonce = Nothing
    }

-- | If deviceAllowed, whether access was just acquired with this request.
darJustAcquired :: Lens' DownloadAccessRestriction (Maybe Bool)
darJustAcquired
  = lens _darJustAcquired
      (\ s a -> s{_darJustAcquired = a})

-- | Response signature.
darSignature :: Lens' DownloadAccessRestriction (Maybe Text)
darSignature
  = lens _darSignature (\ s a -> s{_darSignature = a})

-- | Resource type.
darKind :: Lens' DownloadAccessRestriction Text
darKind = lens _darKind (\ s a -> s{_darKind = a})

-- | If restricted, the maximum number of content download licenses for this
-- volume.
darMaxDownloadDevices :: Lens' DownloadAccessRestriction (Maybe Int32)
darMaxDownloadDevices
  = lens _darMaxDownloadDevices
      (\ s a -> s{_darMaxDownloadDevices = a})

-- | If restricted, the number of content download licenses already acquired
-- (including the requesting client, if licensed).
darDownloadsAcquired :: Lens' DownloadAccessRestriction (Maybe Int32)
darDownloadsAcquired
  = lens _darDownloadsAcquired
      (\ s a -> s{_darDownloadsAcquired = a})

-- | Error\/warning reason code. Additional codes may be added in the future.
-- 0 OK 100 ACCESS_DENIED_PUBLISHER_LIMIT 101 ACCESS_DENIED_LIMIT 200
-- WARNING_USED_LAST_ACCESS
darReasonCode :: Lens' DownloadAccessRestriction (Maybe Text)
darReasonCode
  = lens _darReasonCode
      (\ s a -> s{_darReasonCode = a})

-- | Identifies the volume for which this entry applies.
darVolumeId :: Lens' DownloadAccessRestriction (Maybe Text)
darVolumeId
  = lens _darVolumeId (\ s a -> s{_darVolumeId = a})

-- | Whether this volume has any download access restrictions.
darRestricted :: Lens' DownloadAccessRestriction (Maybe Bool)
darRestricted
  = lens _darRestricted
      (\ s a -> s{_darRestricted = a})

-- | Client app identifier for verification. Download access and
-- client-validation only.
darSource :: Lens' DownloadAccessRestriction (Maybe Text)
darSource
  = lens _darSource (\ s a -> s{_darSource = a})

-- | If restricted, whether access is granted for this (user, device,
-- volume).
darDeviceAllowed :: Lens' DownloadAccessRestriction (Maybe Bool)
darDeviceAllowed
  = lens _darDeviceAllowed
      (\ s a -> s{_darDeviceAllowed = a})

-- | Error\/warning message.
darMessage :: Lens' DownloadAccessRestriction (Maybe Text)
darMessage
  = lens _darMessage (\ s a -> s{_darMessage = a})

-- | Client nonce for verification. Download access and client-validation
-- only.
darNonce :: Lens' DownloadAccessRestriction (Maybe Text)
darNonce = lens _darNonce (\ s a -> s{_darNonce = a})

instance FromJSON DownloadAccessRestriction where
        parseJSON
          = withObject "DownloadAccessRestriction"
              (\ o ->
                 DownloadAccessRestriction <$>
                   (o .:? "justAcquired") <*> (o .:? "signature") <*>
                     (o .:? "kind" .!= "books#downloadAccessRestriction")
                     <*> (o .:? "maxDownloadDevices")
                     <*> (o .:? "downloadsAcquired")
                     <*> (o .:? "reasonCode")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "restricted")
                     <*> (o .:? "source")
                     <*> (o .:? "deviceAllowed")
                     <*> (o .:? "message")
                     <*> (o .:? "nonce"))

instance ToJSON DownloadAccessRestriction where
        toJSON DownloadAccessRestriction{..}
          = object
              (catMaybes
                 [("justAcquired" .=) <$> _darJustAcquired,
                  ("signature" .=) <$> _darSignature,
                  Just ("kind" .= _darKind),
                  ("maxDownloadDevices" .=) <$> _darMaxDownloadDevices,
                  ("downloadsAcquired" .=) <$> _darDownloadsAcquired,
                  ("reasonCode" .=) <$> _darReasonCode,
                  ("volumeId" .=) <$> _darVolumeId,
                  ("restricted" .=) <$> _darRestricted,
                  ("source" .=) <$> _darSource,
                  ("deviceAllowed" .=) <$> _darDeviceAllowed,
                  ("message" .=) <$> _darMessage,
                  ("nonce" .=) <$> _darNonce])

-- | Suggested retail price. (In LITE projection.)
--
-- /See:/ 'listPrice' smart constructor.
data ListPrice = ListPrice
    { _lpAmount       :: !(Maybe Double)
    , _lpCurrencyCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpAmount'
--
-- * 'lpCurrencyCode'
listPrice
    :: ListPrice
listPrice =
    ListPrice
    { _lpAmount = Nothing
    , _lpCurrencyCode = Nothing
    }

-- | Amount in the currency listed below. (In LITE projection.)
lpAmount :: Lens' ListPrice (Maybe Double)
lpAmount = lens _lpAmount (\ s a -> s{_lpAmount = a})

-- | An ISO 4217, three-letter currency code. (In LITE projection.)
lpCurrencyCode :: Lens' ListPrice (Maybe Text)
lpCurrencyCode
  = lens _lpCurrencyCode
      (\ s a -> s{_lpCurrencyCode = a})

instance FromJSON ListPrice where
        parseJSON
          = withObject "ListPrice"
              (\ o ->
                 ListPrice <$>
                   (o .:? "amount") <*> (o .:? "currencyCode"))

instance ToJSON ListPrice where
        toJSON ListPrice{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _lpAmount,
                  ("currencyCode" .=) <$> _lpCurrencyCode])

--
-- /See:/ 'industryIdentifiersItem' smart constructor.
data IndustryIdentifiersItem = IndustryIdentifiersItem
    { _iiiIdentifier :: !(Maybe Text)
    , _iiiType       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IndustryIdentifiersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiiIdentifier'
--
-- * 'iiiType'
industryIdentifiersItem
    :: IndustryIdentifiersItem
industryIdentifiersItem =
    IndustryIdentifiersItem
    { _iiiIdentifier = Nothing
    , _iiiType = Nothing
    }

-- | Industry specific volume identifier.
iiiIdentifier :: Lens' IndustryIdentifiersItem (Maybe Text)
iiiIdentifier
  = lens _iiiIdentifier
      (\ s a -> s{_iiiIdentifier = a})

-- | Identifier type. Possible values are ISBN_10, ISBN_13, ISSN and OTHER.
iiiType :: Lens' IndustryIdentifiersItem (Maybe Text)
iiiType = lens _iiiType (\ s a -> s{_iiiType = a})

instance FromJSON IndustryIdentifiersItem where
        parseJSON
          = withObject "IndustryIdentifiersItem"
              (\ o ->
                 IndustryIdentifiersItem <$>
                   (o .:? "identifier") <*> (o .:? "type"))

instance ToJSON IndustryIdentifiersItem where
        toJSON IndustryIdentifiersItem{..}
          = object
              (catMaybes
                 [("identifier" .=) <$> _iiiIdentifier,
                  ("type" .=) <$> _iiiType])

-- | User settings in sub-objects, each for different purposes.
--
-- /See:/ 'notesExport' smart constructor.
data NotesExport = NotesExport
    { _neFolderName :: !(Maybe Text)
    , _neIsEnabled  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NotesExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neFolderName'
--
-- * 'neIsEnabled'
notesExport
    :: NotesExport
notesExport =
    NotesExport
    { _neFolderName = Nothing
    , _neIsEnabled = Nothing
    }

neFolderName :: Lens' NotesExport (Maybe Text)
neFolderName
  = lens _neFolderName (\ s a -> s{_neFolderName = a})

neIsEnabled :: Lens' NotesExport (Maybe Bool)
neIsEnabled
  = lens _neIsEnabled (\ s a -> s{_neIsEnabled = a})

instance FromJSON NotesExport where
        parseJSON
          = withObject "NotesExport"
              (\ o ->
                 NotesExport <$>
                   (o .:? "folderName") <*> (o .:? "isEnabled"))

instance ToJSON NotesExport where
        toJSON NotesExport{..}
          = object
              (catMaybes
                 [("folderName" .=) <$> _neFolderName,
                  ("isEnabled" .=) <$> _neIsEnabled])

-- | Selection ranges for the most recent content version.
--
-- /See:/ 'currentVersionRanges' smart constructor.
data CurrentVersionRanges = CurrentVersionRanges
    { _cGbImageRange   :: !(Maybe BooksAnnotationsRange)
    , _cContentVersion :: !(Maybe Text)
    , _cImageCfiRange  :: !(Maybe BooksAnnotationsRange)
    , _cGbTextRange    :: !(Maybe BooksAnnotationsRange)
    , _cCfiRange       :: !(Maybe BooksAnnotationsRange)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CurrentVersionRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cGbImageRange'
--
-- * 'cContentVersion'
--
-- * 'cImageCfiRange'
--
-- * 'cGbTextRange'
--
-- * 'cCfiRange'
currentVersionRanges
    :: CurrentVersionRanges
currentVersionRanges =
    CurrentVersionRanges
    { _cGbImageRange = Nothing
    , _cContentVersion = Nothing
    , _cImageCfiRange = Nothing
    , _cGbTextRange = Nothing
    , _cCfiRange = Nothing
    }

-- | Range in GB image format for this annotation for version above.
cGbImageRange :: Lens' CurrentVersionRanges (Maybe BooksAnnotationsRange)
cGbImageRange
  = lens _cGbImageRange
      (\ s a -> s{_cGbImageRange = a})

-- | Content version applicable to ranges below.
cContentVersion :: Lens' CurrentVersionRanges (Maybe Text)
cContentVersion
  = lens _cContentVersion
      (\ s a -> s{_cContentVersion = a})

-- | Range in image CFI format for this annotation for version above.
cImageCfiRange :: Lens' CurrentVersionRanges (Maybe BooksAnnotationsRange)
cImageCfiRange
  = lens _cImageCfiRange
      (\ s a -> s{_cImageCfiRange = a})

-- | Range in GB text format for this annotation for version above.
cGbTextRange :: Lens' CurrentVersionRanges (Maybe BooksAnnotationsRange)
cGbTextRange
  = lens _cGbTextRange (\ s a -> s{_cGbTextRange = a})

-- | Range in CFI format for this annotation for version above.
cCfiRange :: Lens' CurrentVersionRanges (Maybe BooksAnnotationsRange)
cCfiRange
  = lens _cCfiRange (\ s a -> s{_cCfiRange = a})

instance FromJSON CurrentVersionRanges where
        parseJSON
          = withObject "CurrentVersionRanges"
              (\ o ->
                 CurrentVersionRanges <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "imageCfiRange")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON CurrentVersionRanges where
        toJSON CurrentVersionRanges{..}
          = object
              (catMaybes
                 [("gbImageRange" .=) <$> _cGbImageRange,
                  ("contentVersion" .=) <$> _cContentVersion,
                  ("imageCfiRange" .=) <$> _cImageCfiRange,
                  ("gbTextRange" .=) <$> _cGbTextRange,
                  ("cfiRange" .=) <$> _cCfiRange])

--
-- /See:/ 'review' smart constructor.
data Review = Review
    { _rRating      :: !(Maybe Text)
    , _rKind        :: !Text
    , _rContent     :: !(Maybe Text)
    , _rDate        :: !(Maybe Text)
    , _rVolumeId    :: !(Maybe Text)
    , _rAuthor      :: !(Maybe ReviewAuthor)
    , _rSource      :: !(Maybe ReviewSource)
    , _rFullTextURL :: !(Maybe Text)
    , _rTitle       :: !(Maybe Text)
    , _rType        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Review' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRating'
--
-- * 'rKind'
--
-- * 'rContent'
--
-- * 'rDate'
--
-- * 'rVolumeId'
--
-- * 'rAuthor'
--
-- * 'rSource'
--
-- * 'rFullTextURL'
--
-- * 'rTitle'
--
-- * 'rType'
review
    :: Review
review =
    Review
    { _rRating = Nothing
    , _rKind = "books#review"
    , _rContent = Nothing
    , _rDate = Nothing
    , _rVolumeId = Nothing
    , _rAuthor = Nothing
    , _rSource = Nothing
    , _rFullTextURL = Nothing
    , _rTitle = Nothing
    , _rType = Nothing
    }

-- | Star rating for this review. Possible values are ONE, TWO, THREE, FOUR,
-- FIVE or NOT_RATED.
rRating :: Lens' Review (Maybe Text)
rRating = lens _rRating (\ s a -> s{_rRating = a})

-- | Resource type for a review.
rKind :: Lens' Review Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | Review text.
rContent :: Lens' Review (Maybe Text)
rContent = lens _rContent (\ s a -> s{_rContent = a})

-- | Date of this review.
rDate :: Lens' Review (Maybe Text)
rDate = lens _rDate (\ s a -> s{_rDate = a})

-- | Volume that this review is for.
rVolumeId :: Lens' Review (Maybe Text)
rVolumeId
  = lens _rVolumeId (\ s a -> s{_rVolumeId = a})

-- | Author of this review.
rAuthor :: Lens' Review (Maybe ReviewAuthor)
rAuthor = lens _rAuthor (\ s a -> s{_rAuthor = a})

-- | Information regarding the source of this review, when the review is not
-- from a Google Books user.
rSource :: Lens' Review (Maybe ReviewSource)
rSource = lens _rSource (\ s a -> s{_rSource = a})

-- | URL for the full review text, for reviews gathered from the web.
rFullTextURL :: Lens' Review (Maybe Text)
rFullTextURL
  = lens _rFullTextURL (\ s a -> s{_rFullTextURL = a})

-- | Title for this review.
rTitle :: Lens' Review (Maybe Text)
rTitle = lens _rTitle (\ s a -> s{_rTitle = a})

-- | Source type for this review. Possible values are EDITORIAL, WEB_USER or
-- GOOGLE_USER.
rType :: Lens' Review (Maybe Text)
rType = lens _rType (\ s a -> s{_rType = a})

instance FromJSON Review where
        parseJSON
          = withObject "Review"
              (\ o ->
                 Review <$>
                   (o .:? "rating") <*>
                     (o .:? "kind" .!= "books#review")
                     <*> (o .:? "content")
                     <*> (o .:? "date")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "author")
                     <*> (o .:? "source")
                     <*> (o .:? "fullTextUrl")
                     <*> (o .:? "title")
                     <*> (o .:? "type"))

instance ToJSON Review where
        toJSON Review{..}
          = object
              (catMaybes
                 [("rating" .=) <$> _rRating, Just ("kind" .= _rKind),
                  ("content" .=) <$> _rContent, ("date" .=) <$> _rDate,
                  ("volumeId" .=) <$> _rVolumeId,
                  ("author" .=) <$> _rAuthor,
                  ("source" .=) <$> _rSource,
                  ("fullTextUrl" .=) <$> _rFullTextURL,
                  ("title" .=) <$> _rTitle, ("type" .=) <$> _rType])

--
-- /See:/ 'volume2' smart constructor.
data Volume2 = Volume2
    { _voloNextPageToken :: !(Maybe Text)
    , _voloKind          :: !Text
    , _voloItems         :: !(Maybe [Volume])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volume2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'voloNextPageToken'
--
-- * 'voloKind'
--
-- * 'voloItems'
volume2
    :: Volume2
volume2 =
    Volume2
    { _voloNextPageToken = Nothing
    , _voloKind = "onboarding#volume"
    , _voloItems = Nothing
    }

voloNextPageToken :: Lens' Volume2 (Maybe Text)
voloNextPageToken
  = lens _voloNextPageToken
      (\ s a -> s{_voloNextPageToken = a})

-- | Resource type.
voloKind :: Lens' Volume2 Text
voloKind = lens _voloKind (\ s a -> s{_voloKind = a})

-- | A list of volumes.
voloItems :: Lens' Volume2 [Volume]
voloItems
  = lens _voloItems (\ s a -> s{_voloItems = a}) .
      _Default
      . _Coerce

instance FromJSON Volume2 where
        parseJSON
          = withObject "Volume2"
              (\ o ->
                 Volume2 <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "onboarding#volume")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Volume2 where
        toJSON Volume2{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _voloNextPageToken,
                  Just ("kind" .= _voloKind),
                  ("items" .=) <$> _voloItems])

-- | The actual selling price of the book. This is the same as the suggested
-- retail or list price unless there are offers or discounts on this
-- volume. (In LITE projection.)
--
-- /See:/ 'retailPrice' smart constructor.
data RetailPrice = RetailPrice
    { _rpAmount       :: !(Maybe Double)
    , _rpCurrencyCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RetailPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpAmount'
--
-- * 'rpCurrencyCode'
retailPrice
    :: RetailPrice
retailPrice =
    RetailPrice
    { _rpAmount = Nothing
    , _rpCurrencyCode = Nothing
    }

-- | Amount in the currency listed below. (In LITE projection.)
rpAmount :: Lens' RetailPrice (Maybe Double)
rpAmount = lens _rpAmount (\ s a -> s{_rpAmount = a})

-- | An ISO 4217, three-letter currency code. (In LITE projection.)
rpCurrencyCode :: Lens' RetailPrice (Maybe Text)
rpCurrencyCode
  = lens _rpCurrencyCode
      (\ s a -> s{_rpCurrencyCode = a})

instance FromJSON RetailPrice where
        parseJSON
          = withObject "RetailPrice"
              (\ o ->
                 RetailPrice <$>
                   (o .:? "amount") <*> (o .:? "currencyCode"))

instance ToJSON RetailPrice where
        toJSON RetailPrice{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _rpAmount,
                  ("currencyCode" .=) <$> _rpCurrencyCode])

-- | Information about epub content. (In LITE projection.)
--
-- /See:/ 'epub' smart constructor.
data Epub = Epub
    { _eAcsTokenLink :: !(Maybe Text)
    , _eIsAvailable  :: !(Maybe Bool)
    , _eDownloadLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Epub' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAcsTokenLink'
--
-- * 'eIsAvailable'
--
-- * 'eDownloadLink'
epub
    :: Epub
epub =
    Epub
    { _eAcsTokenLink = Nothing
    , _eIsAvailable = Nothing
    , _eDownloadLink = Nothing
    }

-- | URL to retrieve ACS token for epub download. (In LITE projection.)
eAcsTokenLink :: Lens' Epub (Maybe Text)
eAcsTokenLink
  = lens _eAcsTokenLink
      (\ s a -> s{_eAcsTokenLink = a})

-- | Is a flowing text epub available either as public domain or for
-- purchase. (In LITE projection.)
eIsAvailable :: Lens' Epub (Maybe Bool)
eIsAvailable
  = lens _eIsAvailable (\ s a -> s{_eIsAvailable = a})

-- | URL to download epub. (In LITE projection.)
eDownloadLink :: Lens' Epub (Maybe Text)
eDownloadLink
  = lens _eDownloadLink
      (\ s a -> s{_eDownloadLink = a})

instance FromJSON Epub where
        parseJSON
          = withObject "Epub"
              (\ o ->
                 Epub <$>
                   (o .:? "acsTokenLink") <*> (o .:? "isAvailable") <*>
                     (o .:? "downloadLink"))

instance ToJSON Epub where
        toJSON Epub{..}
          = object
              (catMaybes
                 [("acsTokenLink" .=) <$> _eAcsTokenLink,
                  ("isAvailable" .=) <$> _eIsAvailable,
                  ("downloadLink" .=) <$> _eDownloadLink])

--
-- /See:/ 'dict' smart constructor.
data Dict = Dict
    { _dSource :: !(Maybe DictSource)
    , _dWords  :: !(Maybe [WordsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Dict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSource'
--
-- * 'dWords'
dict
    :: Dict
dict =
    Dict
    { _dSource = Nothing
    , _dWords = Nothing
    }

-- | The source, url and attribution for this dictionary data.
dSource :: Lens' Dict (Maybe DictSource)
dSource = lens _dSource (\ s a -> s{_dSource = a})

dWords :: Lens' Dict [WordsItem]
dWords
  = lens _dWords (\ s a -> s{_dWords = a}) . _Default .
      _Coerce

instance FromJSON Dict where
        parseJSON
          = withObject "Dict"
              (\ o ->
                 Dict <$>
                   (o .:? "source") <*> (o .:? "words" .!= mempty))

instance ToJSON Dict where
        toJSON Dict{..}
          = object
              (catMaybes
                 [("source" .=) <$> _dSource,
                  ("words" .=) <$> _dWords])

-- | Information about pdf content. (In LITE projection.)
--
-- /See:/ 'pdf' smart constructor.
data Pdf = Pdf
    { _pAcsTokenLink :: !(Maybe Text)
    , _pIsAvailable  :: !(Maybe Bool)
    , _pDownloadLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Pdf' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAcsTokenLink'
--
-- * 'pIsAvailable'
--
-- * 'pDownloadLink'
pdf
    :: Pdf
pdf =
    Pdf
    { _pAcsTokenLink = Nothing
    , _pIsAvailable = Nothing
    , _pDownloadLink = Nothing
    }

-- | URL to retrieve ACS token for pdf download. (In LITE projection.)
pAcsTokenLink :: Lens' Pdf (Maybe Text)
pAcsTokenLink
  = lens _pAcsTokenLink
      (\ s a -> s{_pAcsTokenLink = a})

-- | Is a scanned image pdf available either as public domain or for
-- purchase. (In LITE projection.)
pIsAvailable :: Lens' Pdf (Maybe Bool)
pIsAvailable
  = lens _pIsAvailable (\ s a -> s{_pIsAvailable = a})

-- | URL to download pdf. (In LITE projection.)
pDownloadLink :: Lens' Pdf (Maybe Text)
pDownloadLink
  = lens _pDownloadLink
      (\ s a -> s{_pDownloadLink = a})

instance FromJSON Pdf where
        parseJSON
          = withObject "Pdf"
              (\ o ->
                 Pdf <$>
                   (o .:? "acsTokenLink") <*> (o .:? "isAvailable") <*>
                     (o .:? "downloadLink"))

instance ToJSON Pdf where
        toJSON Pdf{..}
          = object
              (catMaybes
                 [("acsTokenLink" .=) <$> _pAcsTokenLink,
                  ("isAvailable" .=) <$> _pIsAvailable,
                  ("downloadLink" .=) <$> _pDownloadLink])

--
-- /See:/ 'synonymsItemSource' smart constructor.
data SynonymsItemSource = SynonymsItemSource
    { _sURL         :: !(Maybe Text)
    , _sAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SynonymsItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sURL'
--
-- * 'sAttribution'
synonymsItemSource
    :: SynonymsItemSource
synonymsItemSource =
    SynonymsItemSource
    { _sURL = Nothing
    , _sAttribution = Nothing
    }

sURL :: Lens' SynonymsItemSource (Maybe Text)
sURL = lens _sURL (\ s a -> s{_sURL = a})

sAttribution :: Lens' SynonymsItemSource (Maybe Text)
sAttribution
  = lens _sAttribution (\ s a -> s{_sAttribution = a})

instance FromJSON SynonymsItemSource where
        parseJSON
          = withObject "SynonymsItemSource"
              (\ o ->
                 SynonymsItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON SynonymsItemSource where
        toJSON SynonymsItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _sURL,
                  ("attribution" .=) <$> _sAttribution])

-- | The content ranges to identify the selected text.
--
-- /See:/ 'contentRanges' smart constructor.
data ContentRanges = ContentRanges
    { _crGbImageRange   :: !(Maybe BooksAnnotationsRange)
    , _crContentVersion :: !(Maybe Text)
    , _crGbTextRange    :: !(Maybe BooksAnnotationsRange)
    , _crCfiRange       :: !(Maybe BooksAnnotationsRange)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crGbImageRange'
--
-- * 'crContentVersion'
--
-- * 'crGbTextRange'
--
-- * 'crCfiRange'
contentRanges
    :: ContentRanges
contentRanges =
    ContentRanges
    { _crGbImageRange = Nothing
    , _crContentVersion = Nothing
    , _crGbTextRange = Nothing
    , _crCfiRange = Nothing
    }

-- | Range in GB image format for this annotation for version above.
crGbImageRange :: Lens' ContentRanges (Maybe BooksAnnotationsRange)
crGbImageRange
  = lens _crGbImageRange
      (\ s a -> s{_crGbImageRange = a})

-- | Content version applicable to ranges below.
crContentVersion :: Lens' ContentRanges (Maybe Text)
crContentVersion
  = lens _crContentVersion
      (\ s a -> s{_crContentVersion = a})

-- | Range in GB text format for this annotation for version above.
crGbTextRange :: Lens' ContentRanges (Maybe BooksAnnotationsRange)
crGbTextRange
  = lens _crGbTextRange
      (\ s a -> s{_crGbTextRange = a})

-- | Range in CFI format for this annotation for version above.
crCfiRange :: Lens' ContentRanges (Maybe BooksAnnotationsRange)
crCfiRange
  = lens _crCfiRange (\ s a -> s{_crCfiRange = a})

instance FromJSON ContentRanges where
        parseJSON
          = withObject "ContentRanges"
              (\ o ->
                 ContentRanges <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON ContentRanges where
        toJSON ContentRanges{..}
          = object
              (catMaybes
                 [("gbImageRange" .=) <$> _crGbImageRange,
                  ("contentVersion" .=) <$> _crContentVersion,
                  ("gbTextRange" .=) <$> _crGbTextRange,
                  ("cfiRange" .=) <$> _crCfiRange])

-- | What layers exist in this volume and high level information about them.
--
-- /See:/ 'layerInfo' smart constructor.
newtype LayerInfo = LayerInfo
    { _liLayers :: Maybe [LayerInfoLayersItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayerInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liLayers'
layerInfo
    :: LayerInfo
layerInfo =
    LayerInfo
    { _liLayers = Nothing
    }

-- | A layer should appear here if and only if the layer exists for this
-- book.
liLayers :: Lens' LayerInfo [LayerInfoLayersItem]
liLayers
  = lens _liLayers (\ s a -> s{_liLayers = a}) .
      _Default
      . _Coerce

instance FromJSON LayerInfo where
        parseJSON
          = withObject "LayerInfo"
              (\ o -> LayerInfo <$> (o .:? "layers" .!= mempty))

instance ToJSON LayerInfo where
        toJSON LayerInfo{..}
          = object (catMaybes [("layers" .=) <$> _liLayers])

--
-- /See:/ 'requestAccess' smart constructor.
data RequestAccess = RequestAccess
    { _raConcurrentAccess :: !(Maybe ConcurrentAccessRestriction)
    , _raKind             :: !Text
    , _raDownloadAccess   :: !(Maybe DownloadAccessRestriction)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raConcurrentAccess'
--
-- * 'raKind'
--
-- * 'raDownloadAccess'
requestAccess
    :: RequestAccess
requestAccess =
    RequestAccess
    { _raConcurrentAccess = Nothing
    , _raKind = "books#requestAccess"
    , _raDownloadAccess = Nothing
    }

-- | A concurrent access response.
raConcurrentAccess :: Lens' RequestAccess (Maybe ConcurrentAccessRestriction)
raConcurrentAccess
  = lens _raConcurrentAccess
      (\ s a -> s{_raConcurrentAccess = a})

-- | Resource type.
raKind :: Lens' RequestAccess Text
raKind = lens _raKind (\ s a -> s{_raKind = a})

-- | A download access response.
raDownloadAccess :: Lens' RequestAccess (Maybe DownloadAccessRestriction)
raDownloadAccess
  = lens _raDownloadAccess
      (\ s a -> s{_raDownloadAccess = a})

instance FromJSON RequestAccess where
        parseJSON
          = withObject "RequestAccess"
              (\ o ->
                 RequestAccess <$>
                   (o .:? "concurrentAccess") <*>
                     (o .:? "kind" .!= "books#requestAccess")
                     <*> (o .:? "downloadAccess"))

instance ToJSON RequestAccess where
        toJSON RequestAccess{..}
          = object
              (catMaybes
                 [("concurrentAccess" .=) <$> _raConcurrentAccess,
                  Just ("kind" .= _raKind),
                  ("downloadAccess" .=) <$> _raDownloadAccess])

-- | Any information about a volume related to the eBookstore and\/or
-- purchaseability. This information can depend on the country where the
-- request originates from (i.e. books may not be for sale in certain
-- countries).
--
-- /See:/ 'saleInfo' smart constructor.
data SaleInfo = SaleInfo
    { _siCountry     :: !(Maybe Text)
    , _siOnSaleDate  :: !(Maybe DateTime')
    , _siListPrice   :: !(Maybe ListPrice)
    , _siRetailPrice :: !(Maybe RetailPrice)
    , _siOffers      :: !(Maybe [OffersItem])
    , _siBuyLink     :: !(Maybe Text)
    , _siIsEbook     :: !(Maybe Bool)
    , _siSaleability :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SaleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siCountry'
--
-- * 'siOnSaleDate'
--
-- * 'siListPrice'
--
-- * 'siRetailPrice'
--
-- * 'siOffers'
--
-- * 'siBuyLink'
--
-- * 'siIsEbook'
--
-- * 'siSaleability'
saleInfo
    :: SaleInfo
saleInfo =
    SaleInfo
    { _siCountry = Nothing
    , _siOnSaleDate = Nothing
    , _siListPrice = Nothing
    , _siRetailPrice = Nothing
    , _siOffers = Nothing
    , _siBuyLink = Nothing
    , _siIsEbook = Nothing
    , _siSaleability = Nothing
    }

-- | The two-letter ISO_3166-1 country code for which this sale information
-- is valid. (In LITE projection.)
siCountry :: Lens' SaleInfo (Maybe Text)
siCountry
  = lens _siCountry (\ s a -> s{_siCountry = a})

-- | The date on which this book is available for sale.
siOnSaleDate :: Lens' SaleInfo (Maybe UTCTime)
siOnSaleDate
  = lens _siOnSaleDate (\ s a -> s{_siOnSaleDate = a})
      . mapping _DateTime

-- | Suggested retail price. (In LITE projection.)
siListPrice :: Lens' SaleInfo (Maybe ListPrice)
siListPrice
  = lens _siListPrice (\ s a -> s{_siListPrice = a})

-- | The actual selling price of the book. This is the same as the suggested
-- retail or list price unless there are offers or discounts on this
-- volume. (In LITE projection.)
siRetailPrice :: Lens' SaleInfo (Maybe RetailPrice)
siRetailPrice
  = lens _siRetailPrice
      (\ s a -> s{_siRetailPrice = a})

-- | Offers available for this volume (sales and rentals).
siOffers :: Lens' SaleInfo [OffersItem]
siOffers
  = lens _siOffers (\ s a -> s{_siOffers = a}) .
      _Default
      . _Coerce

-- | URL to purchase this volume on the Google Books site. (In LITE
-- projection)
siBuyLink :: Lens' SaleInfo (Maybe Text)
siBuyLink
  = lens _siBuyLink (\ s a -> s{_siBuyLink = a})

-- | Whether or not this volume is an eBook (can be added to the My eBooks
-- shelf).
siIsEbook :: Lens' SaleInfo (Maybe Bool)
siIsEbook
  = lens _siIsEbook (\ s a -> s{_siIsEbook = a})

-- | Whether or not this book is available for sale or offered for free in
-- the Google eBookstore for the country listed above. Possible values are
-- FOR_SALE, FOR_RENTAL_ONLY, FOR_SALE_AND_RENTAL, FREE, NOT_FOR_SALE, or
-- FOR_PREORDER.
siSaleability :: Lens' SaleInfo (Maybe Text)
siSaleability
  = lens _siSaleability
      (\ s a -> s{_siSaleability = a})

instance FromJSON SaleInfo where
        parseJSON
          = withObject "SaleInfo"
              (\ o ->
                 SaleInfo <$>
                   (o .:? "country") <*> (o .:? "onSaleDate") <*>
                     (o .:? "listPrice")
                     <*> (o .:? "retailPrice")
                     <*> (o .:? "offers" .!= mempty)
                     <*> (o .:? "buyLink")
                     <*> (o .:? "isEbook")
                     <*> (o .:? "saleability"))

instance ToJSON SaleInfo where
        toJSON SaleInfo{..}
          = object
              (catMaybes
                 [("country" .=) <$> _siCountry,
                  ("onSaleDate" .=) <$> _siOnSaleDate,
                  ("listPrice" .=) <$> _siListPrice,
                  ("retailPrice" .=) <$> _siRetailPrice,
                  ("offers" .=) <$> _siOffers,
                  ("buyLink" .=) <$> _siBuyLink,
                  ("isEbook" .=) <$> _siIsEbook,
                  ("saleability" .=) <$> _siSaleability])

--
-- /See:/ 'geo' smart constructor.
data Geo = Geo
    { _gMapType     :: !(Maybe Text)
    , _gCachePolicy :: !(Maybe Text)
    , _gViewport    :: !(Maybe Viewport)
    , _gBoundary    :: !(Maybe [[BoundaryItemItem]])
    , _gLatitude    :: !(Maybe Double)
    , _gZoom        :: !(Maybe Int32)
    , _gCountryCode :: !(Maybe Text)
    , _gLongitude   :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Geo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gMapType'
--
-- * 'gCachePolicy'
--
-- * 'gViewport'
--
-- * 'gBoundary'
--
-- * 'gLatitude'
--
-- * 'gZoom'
--
-- * 'gCountryCode'
--
-- * 'gLongitude'
geo
    :: Geo
geo =
    Geo
    { _gMapType = Nothing
    , _gCachePolicy = Nothing
    , _gViewport = Nothing
    , _gBoundary = Nothing
    , _gLatitude = Nothing
    , _gZoom = Nothing
    , _gCountryCode = Nothing
    , _gLongitude = Nothing
    }

-- | The type of map that should be used for this location. EX: HYBRID,
-- ROADMAP, SATELLITE, TERRAIN
gMapType :: Lens' Geo (Maybe Text)
gMapType = lens _gMapType (\ s a -> s{_gMapType = a})

-- | The cache policy active for this data. EX: UNRESTRICTED, RESTRICTED,
-- NEVER
gCachePolicy :: Lens' Geo (Maybe Text)
gCachePolicy
  = lens _gCachePolicy (\ s a -> s{_gCachePolicy = a})

-- | The viewport for showing this location. This is a latitude, longitude
-- rectangle.
gViewport :: Lens' Geo (Maybe Viewport)
gViewport
  = lens _gViewport (\ s a -> s{_gViewport = a})

-- | The boundary of the location as a set of loops containing pairs of
-- latitude, longitude coordinates.
gBoundary :: Lens' Geo [[BoundaryItemItem]]
gBoundary
  = lens _gBoundary (\ s a -> s{_gBoundary = a}) .
      _Default
      . _Coerce

-- | The latitude of the location.
gLatitude :: Lens' Geo (Maybe Double)
gLatitude
  = lens _gLatitude (\ s a -> s{_gLatitude = a})

-- | The Zoom level to use for the map. Zoom levels between 0 (the lowest
-- zoom level, in which the entire world can be seen on one map) to 21+
-- (down to individual buildings). See:
-- https:\/\/developers.google.com\/maps\/documentation\/staticmaps\/#Zoomlevels
gZoom :: Lens' Geo (Maybe Int32)
gZoom = lens _gZoom (\ s a -> s{_gZoom = a})

-- | The country code of the location.
gCountryCode :: Lens' Geo (Maybe Text)
gCountryCode
  = lens _gCountryCode (\ s a -> s{_gCountryCode = a})

-- | The longitude of the location.
gLongitude :: Lens' Geo (Maybe Double)
gLongitude
  = lens _gLongitude (\ s a -> s{_gLongitude = a})

instance FromJSON Geo where
        parseJSON
          = withObject "Geo"
              (\ o ->
                 Geo <$>
                   (o .:? "mapType") <*> (o .:? "cachePolicy") <*>
                     (o .:? "viewport")
                     <*> (o .:? "boundary" .!= mempty)
                     <*> (o .:? "latitude")
                     <*> (o .:? "zoom")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "longitude"))

instance ToJSON Geo where
        toJSON Geo{..}
          = object
              (catMaybes
                 [("mapType" .=) <$> _gMapType,
                  ("cachePolicy" .=) <$> _gCachePolicy,
                  ("viewport" .=) <$> _gViewport,
                  ("boundary" .=) <$> _gBoundary,
                  ("latitude" .=) <$> _gLatitude,
                  ("zoom" .=) <$> _gZoom,
                  ("countryCode" .=) <$> _gCountryCode,
                  ("longitude" .=) <$> _gLongitude])

--
-- /See:/ 'common' smart constructor.
data Common = Common
    { _cSnippet         :: !(Maybe Text)
    , _cSnippetURL      :: !(Maybe Text)
    , _cLang            :: !(Maybe Text)
    , _cTitle           :: !(Maybe Text)
    , _cPreviewImageURL :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Common' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cSnippet'
--
-- * 'cSnippetURL'
--
-- * 'cLang'
--
-- * 'cTitle'
--
-- * 'cPreviewImageURL'
common
    :: Common
common =
    Common
    { _cSnippet = Nothing
    , _cSnippetURL = Nothing
    , _cLang = Nothing
    , _cTitle = Nothing
    , _cPreviewImageURL = Nothing
    }

-- | The description for this location.
cSnippet :: Lens' Common (Maybe Text)
cSnippet = lens _cSnippet (\ s a -> s{_cSnippet = a})

-- | The URL for information for this location. Ex: wikipedia link.
cSnippetURL :: Lens' Common (Maybe Text)
cSnippetURL
  = lens _cSnippetURL (\ s a -> s{_cSnippetURL = a})

-- | The language of the information url and description.
cLang :: Lens' Common (Maybe Text)
cLang = lens _cLang (\ s a -> s{_cLang = a})

-- | The display title and localized canonical name to use when searching for
-- this entity on Google search.
cTitle :: Lens' Common (Maybe Text)
cTitle = lens _cTitle (\ s a -> s{_cTitle = a})

-- | The URL for the preview image information.
cPreviewImageURL :: Lens' Common (Maybe Text)
cPreviewImageURL
  = lens _cPreviewImageURL
      (\ s a -> s{_cPreviewImageURL = a})

instance FromJSON Common where
        parseJSON
          = withObject "Common"
              (\ o ->
                 Common <$>
                   (o .:? "snippet") <*> (o .:? "snippetUrl") <*>
                     (o .:? "lang")
                     <*> (o .:? "title")
                     <*> (o .:? "previewImageUrl"))

instance ToJSON Common where
        toJSON Common{..}
          = object
              (catMaybes
                 [("snippet" .=) <$> _cSnippet,
                  ("snippetUrl" .=) <$> _cSnippetURL,
                  ("lang" .=) <$> _cLang, ("title" .=) <$> _cTitle,
                  ("previewImageUrl" .=) <$> _cPreviewImageURL])

-- | The words with different meanings but not related words, e.g. \"go\"
-- (game) and \"go\" (verb).
--
-- /See:/ 'wordsItemSource' smart constructor.
data WordsItemSource = WordsItemSource
    { _wisURL         :: !(Maybe Text)
    , _wisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WordsItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wisURL'
--
-- * 'wisAttribution'
wordsItemSource
    :: WordsItemSource
wordsItemSource =
    WordsItemSource
    { _wisURL = Nothing
    , _wisAttribution = Nothing
    }

wisURL :: Lens' WordsItemSource (Maybe Text)
wisURL = lens _wisURL (\ s a -> s{_wisURL = a})

wisAttribution :: Lens' WordsItemSource (Maybe Text)
wisAttribution
  = lens _wisAttribution
      (\ s a -> s{_wisAttribution = a})

instance FromJSON WordsItemSource where
        parseJSON
          = withObject "WordsItemSource"
              (\ o ->
                 WordsItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON WordsItemSource where
        toJSON WordsItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _wisURL,
                  ("attribution" .=) <$> _wisAttribution])

--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata
    { _mKind  :: !Text
    , _mItems :: !(Maybe [MetadataItemsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mKind'
--
-- * 'mItems'
metadata
    :: Metadata
metadata =
    Metadata
    { _mKind = "dictionary#metadata"
    , _mItems = Nothing
    }

-- | Resource type.
mKind :: Lens' Metadata Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | A list of offline dictionary metadata.
mItems :: Lens' Metadata [MetadataItemsItem]
mItems
  = lens _mItems (\ s a -> s{_mItems = a}) . _Default .
      _Coerce

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata"
              (\ o ->
                 Metadata <$>
                   (o .:? "kind" .!= "dictionary#metadata") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Metadata where
        toJSON Metadata{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mKind), ("items" .=) <$> _mItems])

-- | Period during this book is\/was a valid rental.
--
-- /See:/ 'rentalPeriod' smart constructor.
data RentalPeriod = RentalPeriod
    { _rpEndUtcSec   :: !(Maybe Int64)
    , _rpStartUtcSec :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RentalPeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpEndUtcSec'
--
-- * 'rpStartUtcSec'
rentalPeriod
    :: RentalPeriod
rentalPeriod =
    RentalPeriod
    { _rpEndUtcSec = Nothing
    , _rpStartUtcSec = Nothing
    }

rpEndUtcSec :: Lens' RentalPeriod (Maybe Int64)
rpEndUtcSec
  = lens _rpEndUtcSec (\ s a -> s{_rpEndUtcSec = a})

rpStartUtcSec :: Lens' RentalPeriod (Maybe Int64)
rpStartUtcSec
  = lens _rpStartUtcSec
      (\ s a -> s{_rpStartUtcSec = a})

instance FromJSON RentalPeriod where
        parseJSON
          = withObject "RentalPeriod"
              (\ o ->
                 RentalPeriod <$>
                   (o .:? "endUtcSec") <*> (o .:? "startUtcSec"))

instance ToJSON RentalPeriod where
        toJSON RentalPeriod{..}
          = object
              (catMaybes
                 [("endUtcSec" .=) <$> _rpEndUtcSec,
                  ("startUtcSec" .=) <$> _rpStartUtcSec])

--
-- /See:/ 'layerInfoLayersItem' smart constructor.
data LayerInfoLayersItem = LayerInfoLayersItem
    { _liliVolumeAnnotationsVersion :: !(Maybe Text)
    , _liliLayerId                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayerInfoLayersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liliVolumeAnnotationsVersion'
--
-- * 'liliLayerId'
layerInfoLayersItem
    :: LayerInfoLayersItem
layerInfoLayersItem =
    LayerInfoLayersItem
    { _liliVolumeAnnotationsVersion = Nothing
    , _liliLayerId = Nothing
    }

-- | The current version of this layer\'s volume annotations. Note that this
-- version applies only to the data in the books.layers.volumeAnnotations.*
-- responses. The actual annotation data is versioned separately.
liliVolumeAnnotationsVersion :: Lens' LayerInfoLayersItem (Maybe Text)
liliVolumeAnnotationsVersion
  = lens _liliVolumeAnnotationsVersion
      (\ s a -> s{_liliVolumeAnnotationsVersion = a})

-- | The layer id of this layer (e.g. \"geo\").
liliLayerId :: Lens' LayerInfoLayersItem (Maybe Text)
liliLayerId
  = lens _liliLayerId (\ s a -> s{_liliLayerId = a})

instance FromJSON LayerInfoLayersItem where
        parseJSON
          = withObject "LayerInfoLayersItem"
              (\ o ->
                 LayerInfoLayersItem <$>
                   (o .:? "volumeAnnotationsVersion") <*>
                     (o .:? "layerId"))

instance ToJSON LayerInfoLayersItem where
        toJSON LayerInfoLayersItem{..}
          = object
              (catMaybes
                 [("volumeAnnotationsVersion" .=) <$>
                    _liliVolumeAnnotationsVersion,
                  ("layerId" .=) <$> _liliLayerId])

--
-- /See:/ 'derivativesItemSource' smart constructor.
data DerivativesItemSource = DerivativesItemSource
    { _disURL         :: !(Maybe Text)
    , _disAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DerivativesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disURL'
--
-- * 'disAttribution'
derivativesItemSource
    :: DerivativesItemSource
derivativesItemSource =
    DerivativesItemSource
    { _disURL = Nothing
    , _disAttribution = Nothing
    }

disURL :: Lens' DerivativesItemSource (Maybe Text)
disURL = lens _disURL (\ s a -> s{_disURL = a})

disAttribution :: Lens' DerivativesItemSource (Maybe Text)
disAttribution
  = lens _disAttribution
      (\ s a -> s{_disAttribution = a})

instance FromJSON DerivativesItemSource where
        parseJSON
          = withObject "DerivativesItemSource"
              (\ o ->
                 DerivativesItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON DerivativesItemSource where
        toJSON DerivativesItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _disURL,
                  ("attribution" .=) <$> _disAttribution])

--
-- /See:/ 'sensesItem' smart constructor.
data SensesItem = SensesItem
    { _sPronunciationURL :: !(Maybe Text)
    , _sConjugations     :: !(Maybe [ConjugationsItem])
    , _sPronunciation    :: !(Maybe Text)
    , _sSynonyms         :: !(Maybe [SynonymsItem])
    , _sSource           :: !(Maybe SensesItemSource)
    , _sPartOfSpeech     :: !(Maybe Text)
    , _sDefinitions      :: !(Maybe [DefinitionsItem])
    , _sSyllabification  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SensesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPronunciationURL'
--
-- * 'sConjugations'
--
-- * 'sPronunciation'
--
-- * 'sSynonyms'
--
-- * 'sSource'
--
-- * 'sPartOfSpeech'
--
-- * 'sDefinitions'
--
-- * 'sSyllabification'
sensesItem
    :: SensesItem
sensesItem =
    SensesItem
    { _sPronunciationURL = Nothing
    , _sConjugations = Nothing
    , _sPronunciation = Nothing
    , _sSynonyms = Nothing
    , _sSource = Nothing
    , _sPartOfSpeech = Nothing
    , _sDefinitions = Nothing
    , _sSyllabification = Nothing
    }

sPronunciationURL :: Lens' SensesItem (Maybe Text)
sPronunciationURL
  = lens _sPronunciationURL
      (\ s a -> s{_sPronunciationURL = a})

sConjugations :: Lens' SensesItem [ConjugationsItem]
sConjugations
  = lens _sConjugations
      (\ s a -> s{_sConjugations = a})
      . _Default
      . _Coerce

sPronunciation :: Lens' SensesItem (Maybe Text)
sPronunciation
  = lens _sPronunciation
      (\ s a -> s{_sPronunciation = a})

sSynonyms :: Lens' SensesItem [SynonymsItem]
sSynonyms
  = lens _sSynonyms (\ s a -> s{_sSynonyms = a}) .
      _Default
      . _Coerce

sSource :: Lens' SensesItem (Maybe SensesItemSource)
sSource = lens _sSource (\ s a -> s{_sSource = a})

sPartOfSpeech :: Lens' SensesItem (Maybe Text)
sPartOfSpeech
  = lens _sPartOfSpeech
      (\ s a -> s{_sPartOfSpeech = a})

sDefinitions :: Lens' SensesItem [DefinitionsItem]
sDefinitions
  = lens _sDefinitions (\ s a -> s{_sDefinitions = a})
      . _Default
      . _Coerce

sSyllabification :: Lens' SensesItem (Maybe Text)
sSyllabification
  = lens _sSyllabification
      (\ s a -> s{_sSyllabification = a})

instance FromJSON SensesItem where
        parseJSON
          = withObject "SensesItem"
              (\ o ->
                 SensesItem <$>
                   (o .:? "pronunciationUrl") <*>
                     (o .:? "conjugations" .!= mempty)
                     <*> (o .:? "pronunciation")
                     <*> (o .:? "synonyms" .!= mempty)
                     <*> (o .:? "source")
                     <*> (o .:? "partOfSpeech")
                     <*> (o .:? "definitions" .!= mempty)
                     <*> (o .:? "syllabification"))

instance ToJSON SensesItem where
        toJSON SensesItem{..}
          = object
              (catMaybes
                 [("pronunciationUrl" .=) <$> _sPronunciationURL,
                  ("conjugations" .=) <$> _sConjugations,
                  ("pronunciation" .=) <$> _sPronunciation,
                  ("synonyms" .=) <$> _sSynonyms,
                  ("source" .=) <$> _sSource,
                  ("partOfSpeech" .=) <$> _sPartOfSpeech,
                  ("definitions" .=) <$> _sDefinitions,
                  ("syllabification" .=) <$> _sSyllabification])

--
-- /See:/ 'readingPosition' smart constructor.
data ReadingPosition = ReadingPosition
    { _rpEpubCfiPosition :: !(Maybe Text)
    , _rpKind            :: !Text
    , _rpGbImagePosition :: !(Maybe Text)
    , _rpPdfPosition     :: !(Maybe Text)
    , _rpVolumeId        :: !(Maybe Text)
    , _rpUpdated         :: !(Maybe DateTime')
    , _rpGbTextPosition  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadingPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpEpubCfiPosition'
--
-- * 'rpKind'
--
-- * 'rpGbImagePosition'
--
-- * 'rpPdfPosition'
--
-- * 'rpVolumeId'
--
-- * 'rpUpdated'
--
-- * 'rpGbTextPosition'
readingPosition
    :: ReadingPosition
readingPosition =
    ReadingPosition
    { _rpEpubCfiPosition = Nothing
    , _rpKind = "books#readingPosition"
    , _rpGbImagePosition = Nothing
    , _rpPdfPosition = Nothing
    , _rpVolumeId = Nothing
    , _rpUpdated = Nothing
    , _rpGbTextPosition = Nothing
    }

-- | Position in an EPUB as a CFI.
rpEpubCfiPosition :: Lens' ReadingPosition (Maybe Text)
rpEpubCfiPosition
  = lens _rpEpubCfiPosition
      (\ s a -> s{_rpEpubCfiPosition = a})

-- | Resource type for a reading position.
rpKind :: Lens' ReadingPosition Text
rpKind = lens _rpKind (\ s a -> s{_rpKind = a})

-- | Position in a volume for image-based content.
rpGbImagePosition :: Lens' ReadingPosition (Maybe Text)
rpGbImagePosition
  = lens _rpGbImagePosition
      (\ s a -> s{_rpGbImagePosition = a})

-- | Position in a PDF file.
rpPdfPosition :: Lens' ReadingPosition (Maybe Text)
rpPdfPosition
  = lens _rpPdfPosition
      (\ s a -> s{_rpPdfPosition = a})

-- | Volume id associated with this reading position.
rpVolumeId :: Lens' ReadingPosition (Maybe Text)
rpVolumeId
  = lens _rpVolumeId (\ s a -> s{_rpVolumeId = a})

-- | Timestamp when this reading position was last updated (formatted UTC
-- timestamp with millisecond resolution).
rpUpdated :: Lens' ReadingPosition (Maybe UTCTime)
rpUpdated
  = lens _rpUpdated (\ s a -> s{_rpUpdated = a}) .
      mapping _DateTime

-- | Position in a volume for text-based content.
rpGbTextPosition :: Lens' ReadingPosition (Maybe Text)
rpGbTextPosition
  = lens _rpGbTextPosition
      (\ s a -> s{_rpGbTextPosition = a})

instance FromJSON ReadingPosition where
        parseJSON
          = withObject "ReadingPosition"
              (\ o ->
                 ReadingPosition <$>
                   (o .:? "epubCfiPosition") <*>
                     (o .:? "kind" .!= "books#readingPosition")
                     <*> (o .:? "gbImagePosition")
                     <*> (o .:? "pdfPosition")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "updated")
                     <*> (o .:? "gbTextPosition"))

instance ToJSON ReadingPosition where
        toJSON ReadingPosition{..}
          = object
              (catMaybes
                 [("epubCfiPosition" .=) <$> _rpEpubCfiPosition,
                  Just ("kind" .= _rpKind),
                  ("gbImagePosition" .=) <$> _rpGbImagePosition,
                  ("pdfPosition" .=) <$> _rpPdfPosition,
                  ("volumeId" .=) <$> _rpVolumeId,
                  ("updated" .=) <$> _rpUpdated,
                  ("gbTextPosition" .=) <$> _rpGbTextPosition])

--
-- /See:/ 'offers' smart constructor.
data Offers = Offers
    { _oKind  :: !Text
    , _oItems :: !(Maybe [OffersItemsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Offers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oKind'
--
-- * 'oItems'
offers
    :: Offers
offers =
    Offers
    { _oKind = "promooffer#offers"
    , _oItems = Nothing
    }

-- | Resource type.
oKind :: Lens' Offers Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | A list of offers.
oItems :: Lens' Offers [OffersItemsItem]
oItems
  = lens _oItems (\ s a -> s{_oItems = a}) . _Default .
      _Coerce

instance FromJSON Offers where
        parseJSON
          = withObject "Offers"
              (\ o ->
                 Offers <$>
                   (o .:? "kind" .!= "promooffer#offers") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Offers where
        toJSON Offers{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oKind), ("items" .=) <$> _oItems])

--
-- /See:/ 'volumes' smart constructor.
data Volumes = Volumes
    { _v1TotalItems :: !(Maybe Int32)
    , _v1Kind       :: !Text
    , _v1Items      :: !(Maybe [Volume])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volumes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'v1TotalItems'
--
-- * 'v1Kind'
--
-- * 'v1Items'
volumes
    :: Volumes
volumes =
    Volumes
    { _v1TotalItems = Nothing
    , _v1Kind = "books#volumes"
    , _v1Items = Nothing
    }

-- | Total number of volumes found. This might be greater than the number of
-- volumes returned in this response if results have been paginated.
v1TotalItems :: Lens' Volumes (Maybe Int32)
v1TotalItems
  = lens _v1TotalItems (\ s a -> s{_v1TotalItems = a})

-- | Resource type.
v1Kind :: Lens' Volumes Text
v1Kind = lens _v1Kind (\ s a -> s{_v1Kind = a})

-- | A list of volumes.
v1Items :: Lens' Volumes [Volume]
v1Items
  = lens _v1Items (\ s a -> s{_v1Items = a}) . _Default
      . _Coerce

instance FromJSON Volumes where
        parseJSON
          = withObject "Volumes"
              (\ o ->
                 Volumes <$>
                   (o .:? "totalItems") <*>
                     (o .:? "kind" .!= "books#volumes")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Volumes where
        toJSON Volumes{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _v1TotalItems,
                  Just ("kind" .= _v1Kind), ("items" .=) <$> _v1Items])

-- | Physical dimensions of this volume.
--
-- /See:/ 'dimensions' smart constructor.
data Dimensions = Dimensions
    { _dHeight    :: !(Maybe Text)
    , _dWidth     :: !(Maybe Text)
    , _dThickness :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Dimensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dHeight'
--
-- * 'dWidth'
--
-- * 'dThickness'
dimensions
    :: Dimensions
dimensions =
    Dimensions
    { _dHeight = Nothing
    , _dWidth = Nothing
    , _dThickness = Nothing
    }

-- | Height or length of this volume (in cm).
dHeight :: Lens' Dimensions (Maybe Text)
dHeight = lens _dHeight (\ s a -> s{_dHeight = a})

-- | Width of this volume (in cm).
dWidth :: Lens' Dimensions (Maybe Text)
dWidth = lens _dWidth (\ s a -> s{_dWidth = a})

-- | Thickness of this volume (in cm).
dThickness :: Lens' Dimensions (Maybe Text)
dThickness
  = lens _dThickness (\ s a -> s{_dThickness = a})

instance FromJSON Dimensions where
        parseJSON
          = withObject "Dimensions"
              (\ o ->
                 Dimensions <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "thickness"))

instance ToJSON Dimensions where
        toJSON Dimensions{..}
          = object
              (catMaybes
                 [("height" .=) <$> _dHeight,
                  ("width" .=) <$> _dWidth,
                  ("thickness" .=) <$> _dThickness])

-- | Recommendation related information for this volume.
--
-- /See:/ 'recommendedInfo' smart constructor.
newtype RecommendedInfo = RecommendedInfo
    { _riExplanation :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RecommendedInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riExplanation'
recommendedInfo
    :: RecommendedInfo
recommendedInfo =
    RecommendedInfo
    { _riExplanation = Nothing
    }

-- | A text explaining why this volume is recommended.
riExplanation :: Lens' RecommendedInfo (Maybe Text)
riExplanation
  = lens _riExplanation
      (\ s a -> s{_riExplanation = a})

instance FromJSON RecommendedInfo where
        parseJSON
          = withObject "RecommendedInfo"
              (\ o -> RecommendedInfo <$> (o .:? "explanation"))

instance ToJSON RecommendedInfo where
        toJSON RecommendedInfo{..}
          = object
              (catMaybes [("explanation" .=) <$> _riExplanation])

--
-- /See:/ 'bookshelves' smart constructor.
data Bookshelves = Bookshelves
    { _booKind  :: !Text
    , _booItems :: !(Maybe [Bookshelf])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Bookshelves' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'booKind'
--
-- * 'booItems'
bookshelves
    :: Bookshelves
bookshelves =
    Bookshelves
    { _booKind = "books#bookshelves"
    , _booItems = Nothing
    }

-- | Resource type.
booKind :: Lens' Bookshelves Text
booKind = lens _booKind (\ s a -> s{_booKind = a})

-- | A list of bookshelves.
booItems :: Lens' Bookshelves [Bookshelf]
booItems
  = lens _booItems (\ s a -> s{_booItems = a}) .
      _Default
      . _Coerce

instance FromJSON Bookshelves where
        parseJSON
          = withObject "Bookshelves"
              (\ o ->
                 Bookshelves <$>
                   (o .:? "kind" .!= "books#bookshelves") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Bookshelves where
        toJSON Bookshelves{..}
          = object
              (catMaybes
                 [Just ("kind" .= _booKind),
                  ("items" .=) <$> _booItems])

--
-- /See:/ 'wordsItemExamplesItemSource' smart constructor.
data WordsItemExamplesItemSource = WordsItemExamplesItemSource
    { _wieisURL         :: !(Maybe Text)
    , _wieisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WordsItemExamplesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wieisURL'
--
-- * 'wieisAttribution'
wordsItemExamplesItemSource
    :: WordsItemExamplesItemSource
wordsItemExamplesItemSource =
    WordsItemExamplesItemSource
    { _wieisURL = Nothing
    , _wieisAttribution = Nothing
    }

wieisURL :: Lens' WordsItemExamplesItemSource (Maybe Text)
wieisURL = lens _wieisURL (\ s a -> s{_wieisURL = a})

wieisAttribution :: Lens' WordsItemExamplesItemSource (Maybe Text)
wieisAttribution
  = lens _wieisAttribution
      (\ s a -> s{_wieisAttribution = a})

instance FromJSON WordsItemExamplesItemSource where
        parseJSON
          = withObject "WordsItemExamplesItemSource"
              (\ o ->
                 WordsItemExamplesItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON WordsItemExamplesItemSource where
        toJSON WordsItemExamplesItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _wieisURL,
                  ("attribution" .=) <$> _wieisAttribution])

--
-- /See:/ 'definitionsItem' smart constructor.
data DefinitionsItem = DefinitionsItem
    { _diDefinition :: !(Maybe Text)
    , _diExamples   :: !(Maybe [ExamplesItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefinitionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diDefinition'
--
-- * 'diExamples'
definitionsItem
    :: DefinitionsItem
definitionsItem =
    DefinitionsItem
    { _diDefinition = Nothing
    , _diExamples = Nothing
    }

diDefinition :: Lens' DefinitionsItem (Maybe Text)
diDefinition
  = lens _diDefinition (\ s a -> s{_diDefinition = a})

diExamples :: Lens' DefinitionsItem [ExamplesItem]
diExamples
  = lens _diExamples (\ s a -> s{_diExamples = a}) .
      _Default
      . _Coerce

instance FromJSON DefinitionsItem where
        parseJSON
          = withObject "DefinitionsItem"
              (\ o ->
                 DefinitionsItem <$>
                   (o .:? "definition") <*>
                     (o .:? "examples" .!= mempty))

instance ToJSON DefinitionsItem where
        toJSON DefinitionsItem{..}
          = object
              (catMaybes
                 [("definition" .=) <$> _diDefinition,
                  ("examples" .=) <$> _diExamples])

--
-- /See:/ 'concurrentAccessRestriction' smart constructor.
data ConcurrentAccessRestriction = ConcurrentAccessRestriction
    { _carMaxConcurrentDevices :: !(Maybe Int32)
    , _carSignature            :: !(Maybe Text)
    , _carTimeWindowSeconds    :: !(Maybe Int32)
    , _carKind                 :: !Text
    , _carReasonCode           :: !(Maybe Text)
    , _carVolumeId             :: !(Maybe Text)
    , _carRestricted           :: !(Maybe Bool)
    , _carSource               :: !(Maybe Text)
    , _carDeviceAllowed        :: !(Maybe Bool)
    , _carMessage              :: !(Maybe Text)
    , _carNonce                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConcurrentAccessRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carMaxConcurrentDevices'
--
-- * 'carSignature'
--
-- * 'carTimeWindowSeconds'
--
-- * 'carKind'
--
-- * 'carReasonCode'
--
-- * 'carVolumeId'
--
-- * 'carRestricted'
--
-- * 'carSource'
--
-- * 'carDeviceAllowed'
--
-- * 'carMessage'
--
-- * 'carNonce'
concurrentAccessRestriction
    :: ConcurrentAccessRestriction
concurrentAccessRestriction =
    ConcurrentAccessRestriction
    { _carMaxConcurrentDevices = Nothing
    , _carSignature = Nothing
    , _carTimeWindowSeconds = Nothing
    , _carKind = "books#concurrentAccessRestriction"
    , _carReasonCode = Nothing
    , _carVolumeId = Nothing
    , _carRestricted = Nothing
    , _carSource = Nothing
    , _carDeviceAllowed = Nothing
    , _carMessage = Nothing
    , _carNonce = Nothing
    }

-- | The maximum number of concurrent access licenses for this volume.
carMaxConcurrentDevices :: Lens' ConcurrentAccessRestriction (Maybe Int32)
carMaxConcurrentDevices
  = lens _carMaxConcurrentDevices
      (\ s a -> s{_carMaxConcurrentDevices = a})

-- | Response signature.
carSignature :: Lens' ConcurrentAccessRestriction (Maybe Text)
carSignature
  = lens _carSignature (\ s a -> s{_carSignature = a})

-- | Time in seconds for license auto-expiration.
carTimeWindowSeconds :: Lens' ConcurrentAccessRestriction (Maybe Int32)
carTimeWindowSeconds
  = lens _carTimeWindowSeconds
      (\ s a -> s{_carTimeWindowSeconds = a})

-- | Resource type.
carKind :: Lens' ConcurrentAccessRestriction Text
carKind = lens _carKind (\ s a -> s{_carKind = a})

-- | Error\/warning reason code.
carReasonCode :: Lens' ConcurrentAccessRestriction (Maybe Text)
carReasonCode
  = lens _carReasonCode
      (\ s a -> s{_carReasonCode = a})

-- | Identifies the volume for which this entry applies.
carVolumeId :: Lens' ConcurrentAccessRestriction (Maybe Text)
carVolumeId
  = lens _carVolumeId (\ s a -> s{_carVolumeId = a})

-- | Whether this volume has any concurrent access restrictions.
carRestricted :: Lens' ConcurrentAccessRestriction (Maybe Bool)
carRestricted
  = lens _carRestricted
      (\ s a -> s{_carRestricted = a})

-- | Client app identifier for verification. Download access and
-- client-validation only.
carSource :: Lens' ConcurrentAccessRestriction (Maybe Text)
carSource
  = lens _carSource (\ s a -> s{_carSource = a})

-- | Whether access is granted for this (user, device, volume).
carDeviceAllowed :: Lens' ConcurrentAccessRestriction (Maybe Bool)
carDeviceAllowed
  = lens _carDeviceAllowed
      (\ s a -> s{_carDeviceAllowed = a})

-- | Error\/warning message.
carMessage :: Lens' ConcurrentAccessRestriction (Maybe Text)
carMessage
  = lens _carMessage (\ s a -> s{_carMessage = a})

-- | Client nonce for verification. Download access and client-validation
-- only.
carNonce :: Lens' ConcurrentAccessRestriction (Maybe Text)
carNonce = lens _carNonce (\ s a -> s{_carNonce = a})

instance FromJSON ConcurrentAccessRestriction where
        parseJSON
          = withObject "ConcurrentAccessRestriction"
              (\ o ->
                 ConcurrentAccessRestriction <$>
                   (o .:? "maxConcurrentDevices") <*>
                     (o .:? "signature")
                     <*> (o .:? "timeWindowSeconds")
                     <*>
                     (o .:? "kind" .!=
                        "books#concurrentAccessRestriction")
                     <*> (o .:? "reasonCode")
                     <*> (o .:? "volumeId")
                     <*> (o .:? "restricted")
                     <*> (o .:? "source")
                     <*> (o .:? "deviceAllowed")
                     <*> (o .:? "message")
                     <*> (o .:? "nonce"))

instance ToJSON ConcurrentAccessRestriction where
        toJSON ConcurrentAccessRestriction{..}
          = object
              (catMaybes
                 [("maxConcurrentDevices" .=) <$>
                    _carMaxConcurrentDevices,
                  ("signature" .=) <$> _carSignature,
                  ("timeWindowSeconds" .=) <$> _carTimeWindowSeconds,
                  Just ("kind" .= _carKind),
                  ("reasonCode" .=) <$> _carReasonCode,
                  ("volumeId" .=) <$> _carVolumeId,
                  ("restricted" .=) <$> _carRestricted,
                  ("source" .=) <$> _carSource,
                  ("deviceAllowed" .=) <$> _carDeviceAllowed,
                  ("message" .=) <$> _carMessage,
                  ("nonce" .=) <$> _carNonce])

--
-- /See:/ 'examplesItemSource' smart constructor.
data ExamplesItemSource = ExamplesItemSource
    { _eisURL         :: !(Maybe Text)
    , _eisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExamplesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eisURL'
--
-- * 'eisAttribution'
examplesItemSource
    :: ExamplesItemSource
examplesItemSource =
    ExamplesItemSource
    { _eisURL = Nothing
    , _eisAttribution = Nothing
    }

eisURL :: Lens' ExamplesItemSource (Maybe Text)
eisURL = lens _eisURL (\ s a -> s{_eisURL = a})

eisAttribution :: Lens' ExamplesItemSource (Maybe Text)
eisAttribution
  = lens _eisAttribution
      (\ s a -> s{_eisAttribution = a})

instance FromJSON ExamplesItemSource where
        parseJSON
          = withObject "ExamplesItemSource"
              (\ o ->
                 ExamplesItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON ExamplesItemSource where
        toJSON ExamplesItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _eisURL,
                  ("attribution" .=) <$> _eisAttribution])

--
-- /See:/ 'lo' smart constructor.
data Lo = Lo
    { _lLatitude  :: !(Maybe Double)
    , _lLongitude :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Lo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLatitude'
--
-- * 'lLongitude'
lo
    :: Lo
lo =
    Lo
    { _lLatitude = Nothing
    , _lLongitude = Nothing
    }

lLatitude :: Lens' Lo (Maybe Double)
lLatitude
  = lens _lLatitude (\ s a -> s{_lLatitude = a})

lLongitude :: Lens' Lo (Maybe Double)
lLongitude
  = lens _lLongitude (\ s a -> s{_lLongitude = a})

instance FromJSON Lo where
        parseJSON
          = withObject "Lo"
              (\ o ->
                 Lo <$> (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON Lo where
        toJSON Lo{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _lLatitude,
                  ("longitude" .=) <$> _lLongitude])

--
-- /See:/ 'examplesItem' smart constructor.
data ExamplesItem = ExamplesItem
    { _eiText   :: !(Maybe Text)
    , _eiSource :: !(Maybe ExamplesItemSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExamplesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiText'
--
-- * 'eiSource'
examplesItem
    :: ExamplesItem
examplesItem =
    ExamplesItem
    { _eiText = Nothing
    , _eiSource = Nothing
    }

eiText :: Lens' ExamplesItem (Maybe Text)
eiText = lens _eiText (\ s a -> s{_eiText = a})

eiSource :: Lens' ExamplesItem (Maybe ExamplesItemSource)
eiSource = lens _eiSource (\ s a -> s{_eiSource = a})

instance FromJSON ExamplesItem where
        parseJSON
          = withObject "ExamplesItem"
              (\ o ->
                 ExamplesItem <$> (o .:? "text") <*> (o .:? "source"))

instance ToJSON ExamplesItem where
        toJSON ExamplesItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _eiText,
                  ("source" .=) <$> _eiSource])

--
-- /See:/ 'metadataItemsItem' smart constructor.
data MetadataItemsItem = MetadataItemsItem
    { _miiSize         :: !(Maybe Int64)
    , _miiVersion      :: !(Maybe Int64)
    , _miiLanguage     :: !(Maybe Text)
    , _miiDownloadURL  :: !(Maybe Text)
    , _miiEncryptedKey :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataItemsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miiSize'
--
-- * 'miiVersion'
--
-- * 'miiLanguage'
--
-- * 'miiDownloadURL'
--
-- * 'miiEncryptedKey'
metadataItemsItem
    :: MetadataItemsItem
metadataItemsItem =
    MetadataItemsItem
    { _miiSize = Nothing
    , _miiVersion = Nothing
    , _miiLanguage = Nothing
    , _miiDownloadURL = Nothing
    , _miiEncryptedKey = Nothing
    }

miiSize :: Lens' MetadataItemsItem (Maybe Int64)
miiSize = lens _miiSize (\ s a -> s{_miiSize = a})

miiVersion :: Lens' MetadataItemsItem (Maybe Int64)
miiVersion
  = lens _miiVersion (\ s a -> s{_miiVersion = a})

miiLanguage :: Lens' MetadataItemsItem (Maybe Text)
miiLanguage
  = lens _miiLanguage (\ s a -> s{_miiLanguage = a})

miiDownloadURL :: Lens' MetadataItemsItem (Maybe Text)
miiDownloadURL
  = lens _miiDownloadURL
      (\ s a -> s{_miiDownloadURL = a})

miiEncryptedKey :: Lens' MetadataItemsItem (Maybe Text)
miiEncryptedKey
  = lens _miiEncryptedKey
      (\ s a -> s{_miiEncryptedKey = a})

instance FromJSON MetadataItemsItem where
        parseJSON
          = withObject "MetadataItemsItem"
              (\ o ->
                 MetadataItemsItem <$>
                   (o .:? "size") <*> (o .:? "version") <*>
                     (o .:? "language")
                     <*> (o .:? "download_url")
                     <*> (o .:? "encrypted_key"))

instance ToJSON MetadataItemsItem where
        toJSON MetadataItemsItem{..}
          = object
              (catMaybes
                 [("size" .=) <$> _miiSize,
                  ("version" .=) <$> _miiVersion,
                  ("language" .=) <$> _miiLanguage,
                  ("download_url" .=) <$> _miiDownloadURL,
                  ("encrypted_key" .=) <$> _miiEncryptedKey])

--
-- /See:/ 'wordsItemExamplesItem' smart constructor.
data WordsItemExamplesItem = WordsItemExamplesItem
    { _wieiText   :: !(Maybe Text)
    , _wieiSource :: !(Maybe WordsItemExamplesItemSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WordsItemExamplesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wieiText'
--
-- * 'wieiSource'
wordsItemExamplesItem
    :: WordsItemExamplesItem
wordsItemExamplesItem =
    WordsItemExamplesItem
    { _wieiText = Nothing
    , _wieiSource = Nothing
    }

wieiText :: Lens' WordsItemExamplesItem (Maybe Text)
wieiText = lens _wieiText (\ s a -> s{_wieiText = a})

wieiSource :: Lens' WordsItemExamplesItem (Maybe WordsItemExamplesItemSource)
wieiSource
  = lens _wieiSource (\ s a -> s{_wieiSource = a})

instance FromJSON WordsItemExamplesItem where
        parseJSON
          = withObject "WordsItemExamplesItem"
              (\ o ->
                 WordsItemExamplesItem <$>
                   (o .:? "text") <*> (o .:? "source"))

instance ToJSON WordsItemExamplesItem where
        toJSON WordsItemExamplesItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _wieiText,
                  ("source" .=) <$> _wieiSource])

-- | General volume information.
--
-- /See:/ 'volumeInfo' smart constructor.
data VolumeInfo = VolumeInfo
    { _viImageLinks          :: !(Maybe ImageLinks)
    , _viAverageRating       :: !(Maybe Double)
    , _viRatingsCount        :: !(Maybe Int32)
    , _viCanonicalVolumeLink :: !(Maybe Text)
    , _viReadingModes        :: !(Maybe JSONValue)
    , _viIndustryIdentifiers :: !(Maybe [IndustryIdentifiersItem])
    , _viPrintedPageCount    :: !(Maybe Int32)
    , _viMainCategory        :: !(Maybe Text)
    , _viContentVersion      :: !(Maybe Text)
    , _viSamplePageCount     :: !(Maybe Int32)
    , _viCategories          :: !(Maybe [Text])
    , _viAuthors             :: !(Maybe [Text])
    , _viAllowAnonLogging    :: !(Maybe Bool)
    , _viSubtitle            :: !(Maybe Text)
    , _viPublishedDate       :: !(Maybe Text)
    , _viMaturityRating      :: !(Maybe Text)
    , _viPreviewLink         :: !(Maybe Text)
    , _viLanguage            :: !(Maybe Text)
    , _viTitle               :: !(Maybe Text)
    , _viPageCount           :: !(Maybe Int32)
    , _viDimensions          :: !(Maybe Dimensions)
    , _viInfoLink            :: !(Maybe Text)
    , _viPublisher           :: !(Maybe Text)
    , _viDescription         :: !(Maybe Text)
    , _viPrintType           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viImageLinks'
--
-- * 'viAverageRating'
--
-- * 'viRatingsCount'
--
-- * 'viCanonicalVolumeLink'
--
-- * 'viReadingModes'
--
-- * 'viIndustryIdentifiers'
--
-- * 'viPrintedPageCount'
--
-- * 'viMainCategory'
--
-- * 'viContentVersion'
--
-- * 'viSamplePageCount'
--
-- * 'viCategories'
--
-- * 'viAuthors'
--
-- * 'viAllowAnonLogging'
--
-- * 'viSubtitle'
--
-- * 'viPublishedDate'
--
-- * 'viMaturityRating'
--
-- * 'viPreviewLink'
--
-- * 'viLanguage'
--
-- * 'viTitle'
--
-- * 'viPageCount'
--
-- * 'viDimensions'
--
-- * 'viInfoLink'
--
-- * 'viPublisher'
--
-- * 'viDescription'
--
-- * 'viPrintType'
volumeInfo
    :: VolumeInfo
volumeInfo =
    VolumeInfo
    { _viImageLinks = Nothing
    , _viAverageRating = Nothing
    , _viRatingsCount = Nothing
    , _viCanonicalVolumeLink = Nothing
    , _viReadingModes = Nothing
    , _viIndustryIdentifiers = Nothing
    , _viPrintedPageCount = Nothing
    , _viMainCategory = Nothing
    , _viContentVersion = Nothing
    , _viSamplePageCount = Nothing
    , _viCategories = Nothing
    , _viAuthors = Nothing
    , _viAllowAnonLogging = Nothing
    , _viSubtitle = Nothing
    , _viPublishedDate = Nothing
    , _viMaturityRating = Nothing
    , _viPreviewLink = Nothing
    , _viLanguage = Nothing
    , _viTitle = Nothing
    , _viPageCount = Nothing
    , _viDimensions = Nothing
    , _viInfoLink = Nothing
    , _viPublisher = Nothing
    , _viDescription = Nothing
    , _viPrintType = Nothing
    }

-- | A list of image links for all the sizes that are available. (In LITE
-- projection.)
viImageLinks :: Lens' VolumeInfo (Maybe ImageLinks)
viImageLinks
  = lens _viImageLinks (\ s a -> s{_viImageLinks = a})

-- | The mean review rating for this volume. (min = 1.0, max = 5.0)
viAverageRating :: Lens' VolumeInfo (Maybe Double)
viAverageRating
  = lens _viAverageRating
      (\ s a -> s{_viAverageRating = a})

-- | The number of review ratings for this volume.
viRatingsCount :: Lens' VolumeInfo (Maybe Int32)
viRatingsCount
  = lens _viRatingsCount
      (\ s a -> s{_viRatingsCount = a})

-- | Canonical URL for a volume. (In LITE projection.)
viCanonicalVolumeLink :: Lens' VolumeInfo (Maybe Text)
viCanonicalVolumeLink
  = lens _viCanonicalVolumeLink
      (\ s a -> s{_viCanonicalVolumeLink = a})

-- | The reading modes available for this volume.
viReadingModes :: Lens' VolumeInfo (Maybe JSONValue)
viReadingModes
  = lens _viReadingModes
      (\ s a -> s{_viReadingModes = a})

-- | Industry standard identifiers for this volume.
viIndustryIdentifiers :: Lens' VolumeInfo [IndustryIdentifiersItem]
viIndustryIdentifiers
  = lens _viIndustryIdentifiers
      (\ s a -> s{_viIndustryIdentifiers = a})
      . _Default
      . _Coerce

-- | Total number of printed pages in generated pdf representation.
viPrintedPageCount :: Lens' VolumeInfo (Maybe Int32)
viPrintedPageCount
  = lens _viPrintedPageCount
      (\ s a -> s{_viPrintedPageCount = a})

-- | The main category to which this volume belongs. It will be the category
-- from the categories list returned below that has the highest weight.
viMainCategory :: Lens' VolumeInfo (Maybe Text)
viMainCategory
  = lens _viMainCategory
      (\ s a -> s{_viMainCategory = a})

-- | An identifier for the version of the volume content (text & images). (In
-- LITE projection)
viContentVersion :: Lens' VolumeInfo (Maybe Text)
viContentVersion
  = lens _viContentVersion
      (\ s a -> s{_viContentVersion = a})

-- | Total number of sample pages as per publisher metadata.
viSamplePageCount :: Lens' VolumeInfo (Maybe Int32)
viSamplePageCount
  = lens _viSamplePageCount
      (\ s a -> s{_viSamplePageCount = a})

-- | A list of subject categories, such as \"Fiction\", \"Suspense\", etc.
viCategories :: Lens' VolumeInfo [Text]
viCategories
  = lens _viCategories (\ s a -> s{_viCategories = a})
      . _Default
      . _Coerce

-- | The names of the authors and\/or editors for this volume. (In LITE
-- projection)
viAuthors :: Lens' VolumeInfo [Text]
viAuthors
  = lens _viAuthors (\ s a -> s{_viAuthors = a}) .
      _Default
      . _Coerce

-- | Whether anonymous logging should be allowed.
viAllowAnonLogging :: Lens' VolumeInfo (Maybe Bool)
viAllowAnonLogging
  = lens _viAllowAnonLogging
      (\ s a -> s{_viAllowAnonLogging = a})

-- | Volume subtitle. (In LITE projection.)
viSubtitle :: Lens' VolumeInfo (Maybe Text)
viSubtitle
  = lens _viSubtitle (\ s a -> s{_viSubtitle = a})

-- | Date of publication. (In LITE projection.)
viPublishedDate :: Lens' VolumeInfo (Maybe Text)
viPublishedDate
  = lens _viPublishedDate
      (\ s a -> s{_viPublishedDate = a})

viMaturityRating :: Lens' VolumeInfo (Maybe Text)
viMaturityRating
  = lens _viMaturityRating
      (\ s a -> s{_viMaturityRating = a})

-- | URL to preview this volume on the Google Books site.
viPreviewLink :: Lens' VolumeInfo (Maybe Text)
viPreviewLink
  = lens _viPreviewLink
      (\ s a -> s{_viPreviewLink = a})

-- | Best language for this volume (based on content). It is the two-letter
-- ISO 639-1 code such as \'fr\', \'en\', etc.
viLanguage :: Lens' VolumeInfo (Maybe Text)
viLanguage
  = lens _viLanguage (\ s a -> s{_viLanguage = a})

-- | Volume title. (In LITE projection.)
viTitle :: Lens' VolumeInfo (Maybe Text)
viTitle = lens _viTitle (\ s a -> s{_viTitle = a})

-- | Total number of pages as per publisher metadata.
viPageCount :: Lens' VolumeInfo (Maybe Int32)
viPageCount
  = lens _viPageCount (\ s a -> s{_viPageCount = a})

-- | Physical dimensions of this volume.
viDimensions :: Lens' VolumeInfo (Maybe Dimensions)
viDimensions
  = lens _viDimensions (\ s a -> s{_viDimensions = a})

-- | URL to view information about this volume on the Google Books site. (In
-- LITE projection)
viInfoLink :: Lens' VolumeInfo (Maybe Text)
viInfoLink
  = lens _viInfoLink (\ s a -> s{_viInfoLink = a})

-- | Publisher of this volume. (In LITE projection.)
viPublisher :: Lens' VolumeInfo (Maybe Text)
viPublisher
  = lens _viPublisher (\ s a -> s{_viPublisher = a})

-- | A synopsis of the volume. The text of the description is formatted in
-- HTML and includes simple formatting elements, such as b, i, and br tags.
-- (In LITE projection.)
viDescription :: Lens' VolumeInfo (Maybe Text)
viDescription
  = lens _viDescription
      (\ s a -> s{_viDescription = a})

-- | Type of publication of this volume. Possible values are BOOK or
-- MAGAZINE.
viPrintType :: Lens' VolumeInfo (Maybe Text)
viPrintType
  = lens _viPrintType (\ s a -> s{_viPrintType = a})

instance FromJSON VolumeInfo where
        parseJSON
          = withObject "VolumeInfo"
              (\ o ->
                 VolumeInfo <$>
                   (o .:? "imageLinks") <*> (o .:? "averageRating") <*>
                     (o .:? "ratingsCount")
                     <*> (o .:? "canonicalVolumeLink")
                     <*> (o .:? "readingModes")
                     <*> (o .:? "industryIdentifiers" .!= mempty)
                     <*> (o .:? "printedPageCount")
                     <*> (o .:? "mainCategory")
                     <*> (o .:? "contentVersion")
                     <*> (o .:? "samplePageCount")
                     <*> (o .:? "categories" .!= mempty)
                     <*> (o .:? "authors" .!= mempty)
                     <*> (o .:? "allowAnonLogging")
                     <*> (o .:? "subtitle")
                     <*> (o .:? "publishedDate")
                     <*> (o .:? "maturityRating")
                     <*> (o .:? "previewLink")
                     <*> (o .:? "language")
                     <*> (o .:? "title")
                     <*> (o .:? "pageCount")
                     <*> (o .:? "dimensions")
                     <*> (o .:? "infoLink")
                     <*> (o .:? "publisher")
                     <*> (o .:? "description")
                     <*> (o .:? "printType"))

instance ToJSON VolumeInfo where
        toJSON VolumeInfo{..}
          = object
              (catMaybes
                 [("imageLinks" .=) <$> _viImageLinks,
                  ("averageRating" .=) <$> _viAverageRating,
                  ("ratingsCount" .=) <$> _viRatingsCount,
                  ("canonicalVolumeLink" .=) <$>
                    _viCanonicalVolumeLink,
                  ("readingModes" .=) <$> _viReadingModes,
                  ("industryIdentifiers" .=) <$>
                    _viIndustryIdentifiers,
                  ("printedPageCount" .=) <$> _viPrintedPageCount,
                  ("mainCategory" .=) <$> _viMainCategory,
                  ("contentVersion" .=) <$> _viContentVersion,
                  ("samplePageCount" .=) <$> _viSamplePageCount,
                  ("categories" .=) <$> _viCategories,
                  ("authors" .=) <$> _viAuthors,
                  ("allowAnonLogging" .=) <$> _viAllowAnonLogging,
                  ("subtitle" .=) <$> _viSubtitle,
                  ("publishedDate" .=) <$> _viPublishedDate,
                  ("maturityRating" .=) <$> _viMaturityRating,
                  ("previewLink" .=) <$> _viPreviewLink,
                  ("language" .=) <$> _viLanguage,
                  ("title" .=) <$> _viTitle,
                  ("pageCount" .=) <$> _viPageCount,
                  ("dimensions" .=) <$> _viDimensions,
                  ("infoLink" .=) <$> _viInfoLink,
                  ("publisher" .=) <$> _viPublisher,
                  ("description" .=) <$> _viDescription,
                  ("printType" .=) <$> _viPrintType])

--
-- /See:/ 'downloadAccesses' smart constructor.
data DownloadAccesses = DownloadAccesses
    { _daKind               :: !Text
    , _daDownloadAccessList :: !(Maybe [DownloadAccessRestriction])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DownloadAccesses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daKind'
--
-- * 'daDownloadAccessList'
downloadAccesses
    :: DownloadAccesses
downloadAccesses =
    DownloadAccesses
    { _daKind = "books#downloadAccesses"
    , _daDownloadAccessList = Nothing
    }

-- | Resource type.
daKind :: Lens' DownloadAccesses Text
daKind = lens _daKind (\ s a -> s{_daKind = a})

-- | A list of download access responses.
daDownloadAccessList :: Lens' DownloadAccesses [DownloadAccessRestriction]
daDownloadAccessList
  = lens _daDownloadAccessList
      (\ s a -> s{_daDownloadAccessList = a})
      . _Default
      . _Coerce

instance FromJSON DownloadAccesses where
        parseJSON
          = withObject "DownloadAccesses"
              (\ o ->
                 DownloadAccesses <$>
                   (o .:? "kind" .!= "books#downloadAccesses") <*>
                     (o .:? "downloadAccessList" .!= mempty))

instance ToJSON DownloadAccesses where
        toJSON DownloadAccesses{..}
          = object
              (catMaybes
                 [Just ("kind" .= _daKind),
                  ("downloadAccessList" .=) <$> _daDownloadAccessList])

--
-- /See:/ 'offersItem' smart constructor.
data OffersItem = OffersItem
    { _oiFinskyOfferType :: !(Maybe Int32)
    , _oiRentalDuration  :: !(Maybe RentalDuration)
    , _oiListPrice       :: !(Maybe OffersItemListPrice)
    , _oiRetailPrice     :: !(Maybe OffersItemRetailPrice)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiFinskyOfferType'
--
-- * 'oiRentalDuration'
--
-- * 'oiListPrice'
--
-- * 'oiRetailPrice'
offersItem
    :: OffersItem
offersItem =
    OffersItem
    { _oiFinskyOfferType = Nothing
    , _oiRentalDuration = Nothing
    , _oiListPrice = Nothing
    , _oiRetailPrice = Nothing
    }

-- | The finsky offer type (e.g., PURCHASE=0 RENTAL=3)
oiFinskyOfferType :: Lens' OffersItem (Maybe Int32)
oiFinskyOfferType
  = lens _oiFinskyOfferType
      (\ s a -> s{_oiFinskyOfferType = a})

-- | The rental duration (for rental offers only).
oiRentalDuration :: Lens' OffersItem (Maybe RentalDuration)
oiRentalDuration
  = lens _oiRentalDuration
      (\ s a -> s{_oiRentalDuration = a})

-- | Offer list (=undiscounted) price in Micros.
oiListPrice :: Lens' OffersItem (Maybe OffersItemListPrice)
oiListPrice
  = lens _oiListPrice (\ s a -> s{_oiListPrice = a})

-- | Offer retail (=discounted) price in Micros
oiRetailPrice :: Lens' OffersItem (Maybe OffersItemRetailPrice)
oiRetailPrice
  = lens _oiRetailPrice
      (\ s a -> s{_oiRetailPrice = a})

instance FromJSON OffersItem where
        parseJSON
          = withObject "OffersItem"
              (\ o ->
                 OffersItem <$>
                   (o .:? "finskyOfferType") <*>
                     (o .:? "rentalDuration")
                     <*> (o .:? "listPrice")
                     <*> (o .:? "retailPrice"))

instance ToJSON OffersItem where
        toJSON OffersItem{..}
          = object
              (catMaybes
                 [("finskyOfferType" .=) <$> _oiFinskyOfferType,
                  ("rentalDuration" .=) <$> _oiRentalDuration,
                  ("listPrice" .=) <$> _oiListPrice,
                  ("retailPrice" .=) <$> _oiRetailPrice])

-- | Offer list (=undiscounted) price in Micros.
--
-- /See:/ 'offersItemListPrice' smart constructor.
data OffersItemListPrice = OffersItemListPrice
    { _oilpCurrencyCode   :: !(Maybe Text)
    , _oilpAmountInMicros :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersItemListPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oilpCurrencyCode'
--
-- * 'oilpAmountInMicros'
offersItemListPrice
    :: OffersItemListPrice
offersItemListPrice =
    OffersItemListPrice
    { _oilpCurrencyCode = Nothing
    , _oilpAmountInMicros = Nothing
    }

oilpCurrencyCode :: Lens' OffersItemListPrice (Maybe Text)
oilpCurrencyCode
  = lens _oilpCurrencyCode
      (\ s a -> s{_oilpCurrencyCode = a})

oilpAmountInMicros :: Lens' OffersItemListPrice (Maybe Double)
oilpAmountInMicros
  = lens _oilpAmountInMicros
      (\ s a -> s{_oilpAmountInMicros = a})

instance FromJSON OffersItemListPrice where
        parseJSON
          = withObject "OffersItemListPrice"
              (\ o ->
                 OffersItemListPrice <$>
                   (o .:? "currencyCode") <*> (o .:? "amountInMicros"))

instance ToJSON OffersItemListPrice where
        toJSON OffersItemListPrice{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _oilpCurrencyCode,
                  ("amountInMicros" .=) <$> _oilpAmountInMicros])

--
-- /See:/ 'layersummaries' smart constructor.
data Layersummaries = Layersummaries
    { _layTotalItems :: !(Maybe Int32)
    , _layKind       :: !Text
    , _layItems      :: !(Maybe [Layersummary])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Layersummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'layTotalItems'
--
-- * 'layKind'
--
-- * 'layItems'
layersummaries
    :: Layersummaries
layersummaries =
    Layersummaries
    { _layTotalItems = Nothing
    , _layKind = "books#layersummaries"
    , _layItems = Nothing
    }

-- | The total number of layer summaries found.
layTotalItems :: Lens' Layersummaries (Maybe Int32)
layTotalItems
  = lens _layTotalItems
      (\ s a -> s{_layTotalItems = a})

-- | Resource type.
layKind :: Lens' Layersummaries Text
layKind = lens _layKind (\ s a -> s{_layKind = a})

-- | A list of layer summary items.
layItems :: Lens' Layersummaries [Layersummary]
layItems
  = lens _layItems (\ s a -> s{_layItems = a}) .
      _Default
      . _Coerce

instance FromJSON Layersummaries where
        parseJSON
          = withObject "Layersummaries"
              (\ o ->
                 Layersummaries <$>
                   (o .:? "totalItems") <*>
                     (o .:? "kind" .!= "books#layersummaries")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Layersummaries where
        toJSON Layersummaries{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _layTotalItems,
                  Just ("kind" .= _layKind),
                  ("items" .=) <$> _layItems])

--
-- /See:/ 'booksAnnotationsRange' smart constructor.
data BooksAnnotationsRange = BooksAnnotationsRange
    { _barStartOffset   :: !(Maybe Text)
    , _barEndOffset     :: !(Maybe Text)
    , _barEndPosition   :: !(Maybe Text)
    , _barStartPosition :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BooksAnnotationsRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'barStartOffset'
--
-- * 'barEndOffset'
--
-- * 'barEndPosition'
--
-- * 'barStartPosition'
booksAnnotationsRange
    :: BooksAnnotationsRange
booksAnnotationsRange =
    BooksAnnotationsRange
    { _barStartOffset = Nothing
    , _barEndOffset = Nothing
    , _barEndPosition = Nothing
    , _barStartPosition = Nothing
    }

-- | The offset from the starting position.
barStartOffset :: Lens' BooksAnnotationsRange (Maybe Text)
barStartOffset
  = lens _barStartOffset
      (\ s a -> s{_barStartOffset = a})

-- | The offset from the ending position.
barEndOffset :: Lens' BooksAnnotationsRange (Maybe Text)
barEndOffset
  = lens _barEndOffset (\ s a -> s{_barEndOffset = a})

-- | The ending position for the range.
barEndPosition :: Lens' BooksAnnotationsRange (Maybe Text)
barEndPosition
  = lens _barEndPosition
      (\ s a -> s{_barEndPosition = a})

-- | The starting position for the range.
barStartPosition :: Lens' BooksAnnotationsRange (Maybe Text)
barStartPosition
  = lens _barStartPosition
      (\ s a -> s{_barStartPosition = a})

instance FromJSON BooksAnnotationsRange where
        parseJSON
          = withObject "BooksAnnotationsRange"
              (\ o ->
                 BooksAnnotationsRange <$>
                   (o .:? "startOffset") <*> (o .:? "endOffset") <*>
                     (o .:? "endPosition")
                     <*> (o .:? "startPosition"))

instance ToJSON BooksAnnotationsRange where
        toJSON BooksAnnotationsRange{..}
          = object
              (catMaybes
                 [("startOffset" .=) <$> _barStartOffset,
                  ("endOffset" .=) <$> _barEndOffset,
                  ("endPosition" .=) <$> _barEndPosition,
                  ("startPosition" .=) <$> _barStartPosition])
