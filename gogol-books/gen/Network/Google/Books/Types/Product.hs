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
-- /See:/ 'usersettings' smart constructor.
data Usersettings = Usersettings
    { _uKind        :: !Text
    , _uNotesExport :: !(Maybe UsersettingsNotesExport)
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
uNotesExport :: Lens' Usersettings (Maybe UsersettingsNotesExport)
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
-- /See:/ 'annotationdata' smart constructor.
data Annotationdata = Annotationdata
    { _aaEncodedData    :: !(Maybe Word8)
    , _aaKind           :: !Text
    , _aaData           :: !(Maybe JSONValue)
    , _aaSelfLink       :: !(Maybe Text)
    , _aaAnnotationType :: !(Maybe Text)
    , _aaVolumeId       :: !(Maybe Text)
    , _aaId             :: !(Maybe Text)
    , _aaUpdated        :: !(Maybe DateTime')
    , _aaLayerId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotationdata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaEncodedData'
--
-- * 'aaKind'
--
-- * 'aaData'
--
-- * 'aaSelfLink'
--
-- * 'aaAnnotationType'
--
-- * 'aaVolumeId'
--
-- * 'aaId'
--
-- * 'aaUpdated'
--
-- * 'aaLayerId'
annotationdata
    :: Annotationdata
annotationdata =
    Annotationdata
    { _aaEncodedData = Nothing
    , _aaKind = "books#annotationdata"
    , _aaData = Nothing
    , _aaSelfLink = Nothing
    , _aaAnnotationType = Nothing
    , _aaVolumeId = Nothing
    , _aaId = Nothing
    , _aaUpdated = Nothing
    , _aaLayerId = Nothing
    }

-- | Base64 encoded data for this annotation data.
aaEncodedData :: Lens' Annotationdata (Maybe Word8)
aaEncodedData
  = lens _aaEncodedData
      (\ s a -> s{_aaEncodedData = a})

-- | Resource Type
aaKind :: Lens' Annotationdata Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

aaData :: Lens' Annotationdata (Maybe JSONValue)
aaData = lens _aaData (\ s a -> s{_aaData = a})

-- | URL for this resource. *
aaSelfLink :: Lens' Annotationdata (Maybe Text)
aaSelfLink
  = lens _aaSelfLink (\ s a -> s{_aaSelfLink = a})

-- | The type of annotation this data is for.
aaAnnotationType :: Lens' Annotationdata (Maybe Text)
aaAnnotationType
  = lens _aaAnnotationType
      (\ s a -> s{_aaAnnotationType = a})

-- | The volume id for this data. *
aaVolumeId :: Lens' Annotationdata (Maybe Text)
aaVolumeId
  = lens _aaVolumeId (\ s a -> s{_aaVolumeId = a})

-- | Unique id for this annotation data.
aaId :: Lens' Annotationdata (Maybe Text)
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | Timestamp for the last time this data was updated. (RFC 3339 UTC
-- date-time format).
aaUpdated :: Lens' Annotationdata (Maybe UTCTime)
aaUpdated
  = lens _aaUpdated (\ s a -> s{_aaUpdated = a}) .
      mapping _DateTime

-- | The Layer id for this data. *
aaLayerId :: Lens' Annotationdata (Maybe Text)
aaLayerId
  = lens _aaLayerId (\ s a -> s{_aaLayerId = a})

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
                 [("encoded_data" .=) <$> _aaEncodedData,
                  Just ("kind" .= _aaKind), ("data" .=) <$> _aaData,
                  ("selfLink" .=) <$> _aaSelfLink,
                  ("annotationType" .=) <$> _aaAnnotationType,
                  ("volumeId" .=) <$> _aaVolumeId, ("id" .=) <$> _aaId,
                  ("updated" .=) <$> _aaUpdated,
                  ("layerId" .=) <$> _aaLayerId])

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
    , _volContentRanges      :: !(Maybe VolumeannotationContentRanges)
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
volContentRanges :: Lens' Volumeannotation (Maybe VolumeannotationContentRanges)
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
-- /See:/ 'annotation' smart constructor.
data Annotation = Annotation
    { _annnSelectedText         :: !(Maybe Text)
    , _annnLayerSummary         :: !(Maybe AnnotationLayerSummary)
    , _annnHighlightStyle       :: !(Maybe Text)
    , _annnClientVersionRanges  :: !(Maybe AnnotationClientVersionRanges)
    , _annnPageIds              :: !(Maybe [Text])
    , _annnKind                 :: !Text
    , _annnData                 :: !(Maybe Text)
    , _annnCreated              :: !(Maybe DateTime')
    , _annnAfterSelectedText    :: !(Maybe Text)
    , _annnSelfLink             :: !(Maybe Text)
    , _annnCurrentVersionRanges :: !(Maybe AnnotationCurrentVersionRanges)
    , _annnVolumeId             :: !(Maybe Text)
    , _annnBeforeSelectedText   :: !(Maybe Text)
    , _annnId                   :: !(Maybe Text)
    , _annnDeleted              :: !(Maybe Bool)
    , _annnUpdated              :: !(Maybe DateTime')
    , _annnLayerId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'annnSelectedText'
--
-- * 'annnLayerSummary'
--
-- * 'annnHighlightStyle'
--
-- * 'annnClientVersionRanges'
--
-- * 'annnPageIds'
--
-- * 'annnKind'
--
-- * 'annnData'
--
-- * 'annnCreated'
--
-- * 'annnAfterSelectedText'
--
-- * 'annnSelfLink'
--
-- * 'annnCurrentVersionRanges'
--
-- * 'annnVolumeId'
--
-- * 'annnBeforeSelectedText'
--
-- * 'annnId'
--
-- * 'annnDeleted'
--
-- * 'annnUpdated'
--
-- * 'annnLayerId'
annotation
    :: Annotation
annotation =
    Annotation
    { _annnSelectedText = Nothing
    , _annnLayerSummary = Nothing
    , _annnHighlightStyle = Nothing
    , _annnClientVersionRanges = Nothing
    , _annnPageIds = Nothing
    , _annnKind = "books#annotation"
    , _annnData = Nothing
    , _annnCreated = Nothing
    , _annnAfterSelectedText = Nothing
    , _annnSelfLink = Nothing
    , _annnCurrentVersionRanges = Nothing
    , _annnVolumeId = Nothing
    , _annnBeforeSelectedText = Nothing
    , _annnId = Nothing
    , _annnDeleted = Nothing
    , _annnUpdated = Nothing
    , _annnLayerId = Nothing
    }

-- | Excerpt from the volume.
annnSelectedText :: Lens' Annotation (Maybe Text)
annnSelectedText
  = lens _annnSelectedText
      (\ s a -> s{_annnSelectedText = a})

annnLayerSummary :: Lens' Annotation (Maybe AnnotationLayerSummary)
annnLayerSummary
  = lens _annnLayerSummary
      (\ s a -> s{_annnLayerSummary = a})

-- | The highlight style for this annotation.
annnHighlightStyle :: Lens' Annotation (Maybe Text)
annnHighlightStyle
  = lens _annnHighlightStyle
      (\ s a -> s{_annnHighlightStyle = a})

-- | Selection ranges sent from the client.
annnClientVersionRanges :: Lens' Annotation (Maybe AnnotationClientVersionRanges)
annnClientVersionRanges
  = lens _annnClientVersionRanges
      (\ s a -> s{_annnClientVersionRanges = a})

-- | Pages that this annotation spans.
annnPageIds :: Lens' Annotation [Text]
annnPageIds
  = lens _annnPageIds (\ s a -> s{_annnPageIds = a}) .
      _Default
      . _Coerce

-- | Resource type.
annnKind :: Lens' Annotation Text
annnKind = lens _annnKind (\ s a -> s{_annnKind = a})

-- | User-created data for this annotation.
annnData :: Lens' Annotation (Maybe Text)
annnData = lens _annnData (\ s a -> s{_annnData = a})

-- | Timestamp for the created time of this annotation.
annnCreated :: Lens' Annotation (Maybe UTCTime)
annnCreated
  = lens _annnCreated (\ s a -> s{_annnCreated = a}) .
      mapping _DateTime

-- | Anchor text after excerpt. For requests, if the user bookmarked a screen
-- that has no flowing text on it, then this field should be empty.
annnAfterSelectedText :: Lens' Annotation (Maybe Text)
annnAfterSelectedText
  = lens _annnAfterSelectedText
      (\ s a -> s{_annnAfterSelectedText = a})

-- | URL to this resource.
annnSelfLink :: Lens' Annotation (Maybe Text)
annnSelfLink
  = lens _annnSelfLink (\ s a -> s{_annnSelfLink = a})

-- | Selection ranges for the most recent content version.
annnCurrentVersionRanges :: Lens' Annotation (Maybe AnnotationCurrentVersionRanges)
annnCurrentVersionRanges
  = lens _annnCurrentVersionRanges
      (\ s a -> s{_annnCurrentVersionRanges = a})

-- | The volume that this annotation belongs to.
annnVolumeId :: Lens' Annotation (Maybe Text)
annnVolumeId
  = lens _annnVolumeId (\ s a -> s{_annnVolumeId = a})

-- | Anchor text before excerpt. For requests, if the user bookmarked a
-- screen that has no flowing text on it, then this field should be empty.
annnBeforeSelectedText :: Lens' Annotation (Maybe Text)
annnBeforeSelectedText
  = lens _annnBeforeSelectedText
      (\ s a -> s{_annnBeforeSelectedText = a})

-- | Id of this annotation, in the form of a GUID.
annnId :: Lens' Annotation (Maybe Text)
annnId = lens _annnId (\ s a -> s{_annnId = a})

-- | Indicates that this annotation is deleted.
annnDeleted :: Lens' Annotation (Maybe Bool)
annnDeleted
  = lens _annnDeleted (\ s a -> s{_annnDeleted = a})

-- | Timestamp for the last time this annotation was modified.
annnUpdated :: Lens' Annotation (Maybe UTCTime)
annnUpdated
  = lens _annnUpdated (\ s a -> s{_annnUpdated = a}) .
      mapping _DateTime

-- | The layer this annotation is for.
annnLayerId :: Lens' Annotation (Maybe Text)
annnLayerId
  = lens _annnLayerId (\ s a -> s{_annnLayerId = a})

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
                 [("selectedText" .=) <$> _annnSelectedText,
                  ("layerSummary" .=) <$> _annnLayerSummary,
                  ("highlightStyle" .=) <$> _annnHighlightStyle,
                  ("clientVersionRanges" .=) <$>
                    _annnClientVersionRanges,
                  ("pageIds" .=) <$> _annnPageIds,
                  Just ("kind" .= _annnKind),
                  ("data" .=) <$> _annnData,
                  ("created" .=) <$> _annnCreated,
                  ("afterSelectedText" .=) <$> _annnAfterSelectedText,
                  ("selfLink" .=) <$> _annnSelfLink,
                  ("currentVersionRanges" .=) <$>
                    _annnCurrentVersionRanges,
                  ("volumeId" .=) <$> _annnVolumeId,
                  ("beforeSelectedText" .=) <$>
                    _annnBeforeSelectedText,
                  ("id" .=) <$> _annnId,
                  ("deleted" .=) <$> _annnDeleted,
                  ("updated" .=) <$> _annnUpdated,
                  ("layerId" .=) <$> _annnLayerId])

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

-- | The viewport for showing this location. This is a latitude, longitude
-- rectangle.
--
-- /See:/ 'geolayerdataGeoViewport' smart constructor.
data GeolayerdataGeoViewport = GeolayerdataGeoViewport
    { _ggvHi :: !(Maybe GeolayerdataGeoViewportHi)
    , _ggvLo :: !(Maybe GeolayerdataGeoViewportLo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataGeoViewport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggvHi'
--
-- * 'ggvLo'
geolayerdataGeoViewport
    :: GeolayerdataGeoViewport
geolayerdataGeoViewport =
    GeolayerdataGeoViewport
    { _ggvHi = Nothing
    , _ggvLo = Nothing
    }

ggvHi :: Lens' GeolayerdataGeoViewport (Maybe GeolayerdataGeoViewportHi)
ggvHi = lens _ggvHi (\ s a -> s{_ggvHi = a})

ggvLo :: Lens' GeolayerdataGeoViewport (Maybe GeolayerdataGeoViewportLo)
ggvLo = lens _ggvLo (\ s a -> s{_ggvLo = a})

instance FromJSON GeolayerdataGeoViewport where
        parseJSON
          = withObject "GeolayerdataGeoViewport"
              (\ o ->
                 GeolayerdataGeoViewport <$>
                   (o .:? "hi") <*> (o .:? "lo"))

instance ToJSON GeolayerdataGeoViewport where
        toJSON GeolayerdataGeoViewport{..}
          = object
              (catMaybes
                 [("hi" .=) <$> _ggvHi, ("lo" .=) <$> _ggvLo])

-- | User specific information related to this volume. (e.g. page this user
-- last read or whether they purchased this book)
--
-- /See:/ 'volumeUserInfo' smart constructor.
data VolumeUserInfo = VolumeUserInfo
    { _vuiCopy                   :: !(Maybe VolumeUserInfoCopy)
    , _vuiUserUploadedVolumeInfo :: !(Maybe VolumeUserInfoUserUploadedVolumeInfo)
    , _vuiIsPurchased            :: !(Maybe Bool)
    , _vuiRentalState            :: !(Maybe Text)
    , _vuiIsPreOrdered           :: !(Maybe Bool)
    , _vuiReview                 :: !(Maybe Review)
    , _vuiRentalPeriod           :: !(Maybe VolumeUserInfoRentalPeriod)
    , _vuiUpdated                :: !(Maybe DateTime')
    , _vuiIsUploaded             :: !(Maybe Bool)
    , _vuiIsInMyBooks            :: !(Maybe Bool)
    , _vuiReadingPosition        :: !(Maybe ReadingPosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeUserInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuiCopy'
--
-- * 'vuiUserUploadedVolumeInfo'
--
-- * 'vuiIsPurchased'
--
-- * 'vuiRentalState'
--
-- * 'vuiIsPreOrdered'
--
-- * 'vuiReview'
--
-- * 'vuiRentalPeriod'
--
-- * 'vuiUpdated'
--
-- * 'vuiIsUploaded'
--
-- * 'vuiIsInMyBooks'
--
-- * 'vuiReadingPosition'
volumeUserInfo
    :: VolumeUserInfo
volumeUserInfo =
    VolumeUserInfo
    { _vuiCopy = Nothing
    , _vuiUserUploadedVolumeInfo = Nothing
    , _vuiIsPurchased = Nothing
    , _vuiRentalState = Nothing
    , _vuiIsPreOrdered = Nothing
    , _vuiReview = Nothing
    , _vuiRentalPeriod = Nothing
    , _vuiUpdated = Nothing
    , _vuiIsUploaded = Nothing
    , _vuiIsInMyBooks = Nothing
    , _vuiReadingPosition = Nothing
    }

-- | Copy\/Paste accounting information.
vuiCopy :: Lens' VolumeUserInfo (Maybe VolumeUserInfoCopy)
vuiCopy = lens _vuiCopy (\ s a -> s{_vuiCopy = a})

vuiUserUploadedVolumeInfo :: Lens' VolumeUserInfo (Maybe VolumeUserInfoUserUploadedVolumeInfo)
vuiUserUploadedVolumeInfo
  = lens _vuiUserUploadedVolumeInfo
      (\ s a -> s{_vuiUserUploadedVolumeInfo = a})

-- | Whether or not this volume was purchased by the authenticated user
-- making the request. (In LITE projection.)
vuiIsPurchased :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsPurchased
  = lens _vuiIsPurchased
      (\ s a -> s{_vuiIsPurchased = a})

-- | Whether this book is an active or an expired rental.
vuiRentalState :: Lens' VolumeUserInfo (Maybe Text)
vuiRentalState
  = lens _vuiRentalState
      (\ s a -> s{_vuiRentalState = a})

-- | Whether or not this volume was pre-ordered by the authenticated user
-- making the request. (In LITE projection.)
vuiIsPreOrdered :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsPreOrdered
  = lens _vuiIsPreOrdered
      (\ s a -> s{_vuiIsPreOrdered = a})

-- | This user\'s review of this volume, if one exists.
vuiReview :: Lens' VolumeUserInfo (Maybe Review)
vuiReview
  = lens _vuiReview (\ s a -> s{_vuiReview = a})

-- | Period during this book is\/was a valid rental.
vuiRentalPeriod :: Lens' VolumeUserInfo (Maybe VolumeUserInfoRentalPeriod)
vuiRentalPeriod
  = lens _vuiRentalPeriod
      (\ s a -> s{_vuiRentalPeriod = a})

-- | Timestamp when this volume was last modified by a user action, such as a
-- reading position update, volume purchase or writing a review. (RFC 3339
-- UTC date-time format).
vuiUpdated :: Lens' VolumeUserInfo (Maybe UTCTime)
vuiUpdated
  = lens _vuiUpdated (\ s a -> s{_vuiUpdated = a}) .
      mapping _DateTime

-- | Whether or not this volume was user uploaded.
vuiIsUploaded :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsUploaded
  = lens _vuiIsUploaded
      (\ s a -> s{_vuiIsUploaded = a})

-- | Whether or not this volume is currently in \"my books.\"
vuiIsInMyBooks :: Lens' VolumeUserInfo (Maybe Bool)
vuiIsInMyBooks
  = lens _vuiIsInMyBooks
      (\ s a -> s{_vuiIsInMyBooks = a})

-- | The user\'s current reading position in the volume, if one is available.
-- (In LITE projection.)
vuiReadingPosition :: Lens' VolumeUserInfo (Maybe ReadingPosition)
vuiReadingPosition
  = lens _vuiReadingPosition
      (\ s a -> s{_vuiReadingPosition = a})

instance FromJSON VolumeUserInfo where
        parseJSON
          = withObject "VolumeUserInfo"
              (\ o ->
                 VolumeUserInfo <$>
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

instance ToJSON VolumeUserInfo where
        toJSON VolumeUserInfo{..}
          = object
              (catMaybes
                 [("copy" .=) <$> _vuiCopy,
                  ("userUploadedVolumeInfo" .=) <$>
                    _vuiUserUploadedVolumeInfo,
                  ("isPurchased" .=) <$> _vuiIsPurchased,
                  ("rentalState" .=) <$> _vuiRentalState,
                  ("isPreordered" .=) <$> _vuiIsPreOrdered,
                  ("review" .=) <$> _vuiReview,
                  ("rentalPeriod" .=) <$> _vuiRentalPeriod,
                  ("updated" .=) <$> _vuiUpdated,
                  ("isUploaded" .=) <$> _vuiIsUploaded,
                  ("isInMyBooks" .=) <$> _vuiIsInMyBooks,
                  ("readingPosition" .=) <$> _vuiReadingPosition])

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

-- | The content ranges to identify the selected text.
--
-- /See:/ 'volumeannotationContentRanges' smart constructor.
data VolumeannotationContentRanges = VolumeannotationContentRanges
    { _vcrGbImageRange   :: !(Maybe BooksAnnotationsRange)
    , _vcrContentVersion :: !(Maybe Text)
    , _vcrGbTextRange    :: !(Maybe BooksAnnotationsRange)
    , _vcrCfiRange       :: !(Maybe BooksAnnotationsRange)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeannotationContentRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcrGbImageRange'
--
-- * 'vcrContentVersion'
--
-- * 'vcrGbTextRange'
--
-- * 'vcrCfiRange'
volumeannotationContentRanges
    :: VolumeannotationContentRanges
volumeannotationContentRanges =
    VolumeannotationContentRanges
    { _vcrGbImageRange = Nothing
    , _vcrContentVersion = Nothing
    , _vcrGbTextRange = Nothing
    , _vcrCfiRange = Nothing
    }

-- | Range in GB image format for this annotation for version above.
vcrGbImageRange :: Lens' VolumeannotationContentRanges (Maybe BooksAnnotationsRange)
vcrGbImageRange
  = lens _vcrGbImageRange
      (\ s a -> s{_vcrGbImageRange = a})

-- | Content version applicable to ranges below.
vcrContentVersion :: Lens' VolumeannotationContentRanges (Maybe Text)
vcrContentVersion
  = lens _vcrContentVersion
      (\ s a -> s{_vcrContentVersion = a})

-- | Range in GB text format for this annotation for version above.
vcrGbTextRange :: Lens' VolumeannotationContentRanges (Maybe BooksAnnotationsRange)
vcrGbTextRange
  = lens _vcrGbTextRange
      (\ s a -> s{_vcrGbTextRange = a})

-- | Range in CFI format for this annotation for version above.
vcrCfiRange :: Lens' VolumeannotationContentRanges (Maybe BooksAnnotationsRange)
vcrCfiRange
  = lens _vcrCfiRange (\ s a -> s{_vcrCfiRange = a})

instance FromJSON VolumeannotationContentRanges where
        parseJSON
          = withObject "VolumeannotationContentRanges"
              (\ o ->
                 VolumeannotationContentRanges <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON VolumeannotationContentRanges where
        toJSON VolumeannotationContentRanges{..}
          = object
              (catMaybes
                 [("gbImageRange" .=) <$> _vcrGbImageRange,
                  ("contentVersion" .=) <$> _vcrContentVersion,
                  ("gbTextRange" .=) <$> _vcrGbTextRange,
                  ("cfiRange" .=) <$> _vcrCfiRange])

-- | Any information about a volume related to reading or obtaining that
-- volume text. This information can depend on country (books may be public
-- domain in one country but not in another, e.g.).
--
-- /See:/ 'volumeAccessInfo' smart constructor.
data VolumeAccessInfo = VolumeAccessInfo
    { _vaiWebReaderLink                    :: !(Maybe Text)
    , _vaiCountry                          :: !(Maybe Text)
    , _vaiDriveImportedContentLink         :: !(Maybe Text)
    , _vaiExplicitOfflineLicenseManagement :: !(Maybe Bool)
    , _vaiViewability                      :: !(Maybe Text)
    , _vaiQuoteSharingAllowed              :: !(Maybe Bool)
    , _vaiEpub                             :: !(Maybe VolumeAccessInfoEpub)
    , _vaiPdf                              :: !(Maybe VolumeAccessInfoPdf)
    , _vaiTextToSpeechPermission           :: !(Maybe Text)
    , _vaiEmbeddable                       :: !(Maybe Bool)
    , _vaiAccessViewStatus                 :: !(Maybe Text)
    , _vaiDownloadAccess                   :: !(Maybe DownloadAccessRestriction)
    , _vaiViewOrderURL                     :: !(Maybe Text)
    , _vaiPublicDomain                     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeAccessInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vaiWebReaderLink'
--
-- * 'vaiCountry'
--
-- * 'vaiDriveImportedContentLink'
--
-- * 'vaiExplicitOfflineLicenseManagement'
--
-- * 'vaiViewability'
--
-- * 'vaiQuoteSharingAllowed'
--
-- * 'vaiEpub'
--
-- * 'vaiPdf'
--
-- * 'vaiTextToSpeechPermission'
--
-- * 'vaiEmbeddable'
--
-- * 'vaiAccessViewStatus'
--
-- * 'vaiDownloadAccess'
--
-- * 'vaiViewOrderURL'
--
-- * 'vaiPublicDomain'
volumeAccessInfo
    :: VolumeAccessInfo
volumeAccessInfo =
    VolumeAccessInfo
    { _vaiWebReaderLink = Nothing
    , _vaiCountry = Nothing
    , _vaiDriveImportedContentLink = Nothing
    , _vaiExplicitOfflineLicenseManagement = Nothing
    , _vaiViewability = Nothing
    , _vaiQuoteSharingAllowed = Nothing
    , _vaiEpub = Nothing
    , _vaiPdf = Nothing
    , _vaiTextToSpeechPermission = Nothing
    , _vaiEmbeddable = Nothing
    , _vaiAccessViewStatus = Nothing
    , _vaiDownloadAccess = Nothing
    , _vaiViewOrderURL = Nothing
    , _vaiPublicDomain = Nothing
    }

-- | URL to read this volume on the Google Books site. Link will not allow
-- users to read non-viewable volumes.
vaiWebReaderLink :: Lens' VolumeAccessInfo (Maybe Text)
vaiWebReaderLink
  = lens _vaiWebReaderLink
      (\ s a -> s{_vaiWebReaderLink = a})

-- | The two-letter ISO_3166-1 country code for which this access information
-- is valid. (In LITE projection.)
vaiCountry :: Lens' VolumeAccessInfo (Maybe Text)
vaiCountry
  = lens _vaiCountry (\ s a -> s{_vaiCountry = a})

-- | URL to the Google Drive viewer if this volume is uploaded by the user by
-- selecting the file from Google Drive.
vaiDriveImportedContentLink :: Lens' VolumeAccessInfo (Maybe Text)
vaiDriveImportedContentLink
  = lens _vaiDriveImportedContentLink
      (\ s a -> s{_vaiDriveImportedContentLink = a})

-- | Whether this volume requires that the client explicitly request offline
-- download license rather than have it done automatically when loading the
-- content, if the client supports it.
vaiExplicitOfflineLicenseManagement :: Lens' VolumeAccessInfo (Maybe Bool)
vaiExplicitOfflineLicenseManagement
  = lens _vaiExplicitOfflineLicenseManagement
      (\ s a ->
         s{_vaiExplicitOfflineLicenseManagement = a})

-- | The read access of a volume. Possible values are PARTIAL, ALL_PAGES,
-- NO_PAGES or UNKNOWN. This value depends on the country listed above. A
-- value of PARTIAL means that the publisher has allowed some portion of
-- the volume to be viewed publicly, without purchase. This can apply to
-- eBooks as well as non-eBooks. Public domain books will always have a
-- value of ALL_PAGES.
vaiViewability :: Lens' VolumeAccessInfo (Maybe Text)
vaiViewability
  = lens _vaiViewability
      (\ s a -> s{_vaiViewability = a})

-- | Whether quote sharing is allowed for this volume.
vaiQuoteSharingAllowed :: Lens' VolumeAccessInfo (Maybe Bool)
vaiQuoteSharingAllowed
  = lens _vaiQuoteSharingAllowed
      (\ s a -> s{_vaiQuoteSharingAllowed = a})

-- | Information about epub content. (In LITE projection.)
vaiEpub :: Lens' VolumeAccessInfo (Maybe VolumeAccessInfoEpub)
vaiEpub = lens _vaiEpub (\ s a -> s{_vaiEpub = a})

-- | Information about pdf content. (In LITE projection.)
vaiPdf :: Lens' VolumeAccessInfo (Maybe VolumeAccessInfoPdf)
vaiPdf = lens _vaiPdf (\ s a -> s{_vaiPdf = a})

-- | Whether text-to-speech is permitted for this volume. Values can be
-- ALLOWED, ALLOWED_FOR_ACCESSIBILITY, or NOT_ALLOWED.
vaiTextToSpeechPermission :: Lens' VolumeAccessInfo (Maybe Text)
vaiTextToSpeechPermission
  = lens _vaiTextToSpeechPermission
      (\ s a -> s{_vaiTextToSpeechPermission = a})

-- | Whether this volume can be embedded in a viewport using the Embedded
-- Viewer API.
vaiEmbeddable :: Lens' VolumeAccessInfo (Maybe Bool)
vaiEmbeddable
  = lens _vaiEmbeddable
      (\ s a -> s{_vaiEmbeddable = a})

-- | Combines the access and viewability of this volume into a single status
-- field for this user. Values can be FULL_PURCHASED, FULL_PUBLIC_DOMAIN,
-- SAMPLE or NONE. (In LITE projection.)
vaiAccessViewStatus :: Lens' VolumeAccessInfo (Maybe Text)
vaiAccessViewStatus
  = lens _vaiAccessViewStatus
      (\ s a -> s{_vaiAccessViewStatus = a})

-- | Information about a volume\'s download license access restrictions.
vaiDownloadAccess :: Lens' VolumeAccessInfo (Maybe DownloadAccessRestriction)
vaiDownloadAccess
  = lens _vaiDownloadAccess
      (\ s a -> s{_vaiDownloadAccess = a})

-- | For ordered but not yet processed orders, we give a URL that can be used
-- to go to the appropriate Google Wallet page.
vaiViewOrderURL :: Lens' VolumeAccessInfo (Maybe Text)
vaiViewOrderURL
  = lens _vaiViewOrderURL
      (\ s a -> s{_vaiViewOrderURL = a})

-- | Whether or not this book is public domain in the country listed above.
vaiPublicDomain :: Lens' VolumeAccessInfo (Maybe Bool)
vaiPublicDomain
  = lens _vaiPublicDomain
      (\ s a -> s{_vaiPublicDomain = a})

instance FromJSON VolumeAccessInfo where
        parseJSON
          = withObject "VolumeAccessInfo"
              (\ o ->
                 VolumeAccessInfo <$>
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

instance ToJSON VolumeAccessInfo where
        toJSON VolumeAccessInfo{..}
          = object
              (catMaybes
                 [("webReaderLink" .=) <$> _vaiWebReaderLink,
                  ("country" .=) <$> _vaiCountry,
                  ("driveImportedContentLink" .=) <$>
                    _vaiDriveImportedContentLink,
                  ("explicitOfflineLicenseManagement" .=) <$>
                    _vaiExplicitOfflineLicenseManagement,
                  ("viewability" .=) <$> _vaiViewability,
                  ("quoteSharingAllowed" .=) <$>
                    _vaiQuoteSharingAllowed,
                  ("epub" .=) <$> _vaiEpub, ("pdf" .=) <$> _vaiPdf,
                  ("textToSpeechPermission" .=) <$>
                    _vaiTextToSpeechPermission,
                  ("embeddable" .=) <$> _vaiEmbeddable,
                  ("accessViewStatus" .=) <$> _vaiAccessViewStatus,
                  ("downloadAccess" .=) <$> _vaiDownloadAccess,
                  ("viewOrderUrl" .=) <$> _vaiViewOrderURL,
                  ("publicDomain" .=) <$> _vaiPublicDomain])

-- | A list of image links for all the sizes that are available. (In LITE
-- projection.)
--
-- /See:/ 'volumeVolumeInfoImageLinks' smart constructor.
data VolumeVolumeInfoImageLinks = VolumeVolumeInfoImageLinks
    { _vviilThumbnail      :: !(Maybe Text)
    , _vviilSmall          :: !(Maybe Text)
    , _vviilExtraLarge     :: !(Maybe Text)
    , _vviilLarge          :: !(Maybe Text)
    , _vviilMedium         :: !(Maybe Text)
    , _vviilSmallThumbnail :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeVolumeInfoImageLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vviilThumbnail'
--
-- * 'vviilSmall'
--
-- * 'vviilExtraLarge'
--
-- * 'vviilLarge'
--
-- * 'vviilMedium'
--
-- * 'vviilSmallThumbnail'
volumeVolumeInfoImageLinks
    :: VolumeVolumeInfoImageLinks
volumeVolumeInfoImageLinks =
    VolumeVolumeInfoImageLinks
    { _vviilThumbnail = Nothing
    , _vviilSmall = Nothing
    , _vviilExtraLarge = Nothing
    , _vviilLarge = Nothing
    , _vviilMedium = Nothing
    , _vviilSmallThumbnail = Nothing
    }

-- | Image link for thumbnail size (width of ~128 pixels). (In LITE
-- projection)
vviilThumbnail :: Lens' VolumeVolumeInfoImageLinks (Maybe Text)
vviilThumbnail
  = lens _vviilThumbnail
      (\ s a -> s{_vviilThumbnail = a})

-- | Image link for small size (width of ~300 pixels). (In LITE projection)
vviilSmall :: Lens' VolumeVolumeInfoImageLinks (Maybe Text)
vviilSmall
  = lens _vviilSmall (\ s a -> s{_vviilSmall = a})

-- | Image link for extra large size (width of ~1280 pixels). (In LITE
-- projection)
vviilExtraLarge :: Lens' VolumeVolumeInfoImageLinks (Maybe Text)
vviilExtraLarge
  = lens _vviilExtraLarge
      (\ s a -> s{_vviilExtraLarge = a})

-- | Image link for large size (width of ~800 pixels). (In LITE projection)
vviilLarge :: Lens' VolumeVolumeInfoImageLinks (Maybe Text)
vviilLarge
  = lens _vviilLarge (\ s a -> s{_vviilLarge = a})

-- | Image link for medium size (width of ~575 pixels). (In LITE projection)
vviilMedium :: Lens' VolumeVolumeInfoImageLinks (Maybe Text)
vviilMedium
  = lens _vviilMedium (\ s a -> s{_vviilMedium = a})

-- | Image link for small thumbnail size (width of ~80 pixels). (In LITE
-- projection)
vviilSmallThumbnail :: Lens' VolumeVolumeInfoImageLinks (Maybe Text)
vviilSmallThumbnail
  = lens _vviilSmallThumbnail
      (\ s a -> s{_vviilSmallThumbnail = a})

instance FromJSON VolumeVolumeInfoImageLinks where
        parseJSON
          = withObject "VolumeVolumeInfoImageLinks"
              (\ o ->
                 VolumeVolumeInfoImageLinks <$>
                   (o .:? "thumbnail") <*> (o .:? "small") <*>
                     (o .:? "extraLarge")
                     <*> (o .:? "large")
                     <*> (o .:? "medium")
                     <*> (o .:? "smallThumbnail"))

instance ToJSON VolumeVolumeInfoImageLinks where
        toJSON VolumeVolumeInfoImageLinks{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _vviilThumbnail,
                  ("small" .=) <$> _vviilSmall,
                  ("extraLarge" .=) <$> _vviilExtraLarge,
                  ("large" .=) <$> _vviilLarge,
                  ("medium" .=) <$> _vviilMedium,
                  ("smallThumbnail" .=) <$> _vviilSmallThumbnail])

--
-- /See:/ 'volumeUserInfoUserUploadedVolumeInfo' smart constructor.
newtype VolumeUserInfoUserUploadedVolumeInfo = VolumeUserInfoUserUploadedVolumeInfo
    { _vuiuuviProcessingState :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeUserInfoUserUploadedVolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuiuuviProcessingState'
volumeUserInfoUserUploadedVolumeInfo
    :: VolumeUserInfoUserUploadedVolumeInfo
volumeUserInfoUserUploadedVolumeInfo =
    VolumeUserInfoUserUploadedVolumeInfo
    { _vuiuuviProcessingState = Nothing
    }

vuiuuviProcessingState :: Lens' VolumeUserInfoUserUploadedVolumeInfo (Maybe Text)
vuiuuviProcessingState
  = lens _vuiuuviProcessingState
      (\ s a -> s{_vuiuuviProcessingState = a})

instance FromJSON
         VolumeUserInfoUserUploadedVolumeInfo where
        parseJSON
          = withObject "VolumeUserInfoUserUploadedVolumeInfo"
              (\ o ->
                 VolumeUserInfoUserUploadedVolumeInfo <$>
                   (o .:? "processingState"))

instance ToJSON VolumeUserInfoUserUploadedVolumeInfo
         where
        toJSON VolumeUserInfoUserUploadedVolumeInfo{..}
          = object
              (catMaybes
                 [("processingState" .=) <$> _vuiuuviProcessingState])

-- | Copy\/Paste accounting information.
--
-- /See:/ 'volumeUserInfoCopy' smart constructor.
data VolumeUserInfoCopy = VolumeUserInfoCopy
    { _vuicLimitType               :: !(Maybe Text)
    , _vuicAllowedCharacterCount   :: !(Maybe Int32)
    , _vuicUpdated                 :: !(Maybe DateTime')
    , _vuicRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeUserInfoCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuicLimitType'
--
-- * 'vuicAllowedCharacterCount'
--
-- * 'vuicUpdated'
--
-- * 'vuicRemainingCharacterCount'
volumeUserInfoCopy
    :: VolumeUserInfoCopy
volumeUserInfoCopy =
    VolumeUserInfoCopy
    { _vuicLimitType = Nothing
    , _vuicAllowedCharacterCount = Nothing
    , _vuicUpdated = Nothing
    , _vuicRemainingCharacterCount = Nothing
    }

vuicLimitType :: Lens' VolumeUserInfoCopy (Maybe Text)
vuicLimitType
  = lens _vuicLimitType
      (\ s a -> s{_vuicLimitType = a})

vuicAllowedCharacterCount :: Lens' VolumeUserInfoCopy (Maybe Int32)
vuicAllowedCharacterCount
  = lens _vuicAllowedCharacterCount
      (\ s a -> s{_vuicAllowedCharacterCount = a})

vuicUpdated :: Lens' VolumeUserInfoCopy (Maybe UTCTime)
vuicUpdated
  = lens _vuicUpdated (\ s a -> s{_vuicUpdated = a}) .
      mapping _DateTime

vuicRemainingCharacterCount :: Lens' VolumeUserInfoCopy (Maybe Int32)
vuicRemainingCharacterCount
  = lens _vuicRemainingCharacterCount
      (\ s a -> s{_vuicRemainingCharacterCount = a})

instance FromJSON VolumeUserInfoCopy where
        parseJSON
          = withObject "VolumeUserInfoCopy"
              (\ o ->
                 VolumeUserInfoCopy <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "updated")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON VolumeUserInfoCopy where
        toJSON VolumeUserInfoCopy{..}
          = object
              (catMaybes
                 [("limitType" .=) <$> _vuicLimitType,
                  ("allowedCharacterCount" .=) <$>
                    _vuicAllowedCharacterCount,
                  ("updated" .=) <$> _vuicUpdated,
                  ("remainingCharacterCount" .=) <$>
                    _vuicRemainingCharacterCount])

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
-- /See:/ 'annotationsSummaryLayersItem' smart constructor.
data AnnotationsSummaryLayersItem = AnnotationsSummaryLayersItem
    { _asliLimitType               :: !(Maybe Text)
    , _asliAllowedCharacterCount   :: !(Maybe Int32)
    , _asliUpdated                 :: !(Maybe DateTime')
    , _asliLayerId                 :: !(Maybe Text)
    , _asliRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsSummaryLayersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asliLimitType'
--
-- * 'asliAllowedCharacterCount'
--
-- * 'asliUpdated'
--
-- * 'asliLayerId'
--
-- * 'asliRemainingCharacterCount'
annotationsSummaryLayersItem
    :: AnnotationsSummaryLayersItem
annotationsSummaryLayersItem =
    AnnotationsSummaryLayersItem
    { _asliLimitType = Nothing
    , _asliAllowedCharacterCount = Nothing
    , _asliUpdated = Nothing
    , _asliLayerId = Nothing
    , _asliRemainingCharacterCount = Nothing
    }

asliLimitType :: Lens' AnnotationsSummaryLayersItem (Maybe Text)
asliLimitType
  = lens _asliLimitType
      (\ s a -> s{_asliLimitType = a})

asliAllowedCharacterCount :: Lens' AnnotationsSummaryLayersItem (Maybe Int32)
asliAllowedCharacterCount
  = lens _asliAllowedCharacterCount
      (\ s a -> s{_asliAllowedCharacterCount = a})

asliUpdated :: Lens' AnnotationsSummaryLayersItem (Maybe UTCTime)
asliUpdated
  = lens _asliUpdated (\ s a -> s{_asliUpdated = a}) .
      mapping _DateTime

asliLayerId :: Lens' AnnotationsSummaryLayersItem (Maybe Text)
asliLayerId
  = lens _asliLayerId (\ s a -> s{_asliLayerId = a})

asliRemainingCharacterCount :: Lens' AnnotationsSummaryLayersItem (Maybe Int32)
asliRemainingCharacterCount
  = lens _asliRemainingCharacterCount
      (\ s a -> s{_asliRemainingCharacterCount = a})

instance FromJSON AnnotationsSummaryLayersItem where
        parseJSON
          = withObject "AnnotationsSummaryLayersItem"
              (\ o ->
                 AnnotationsSummaryLayersItem <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "updated")
                     <*> (o .:? "layerId")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON AnnotationsSummaryLayersItem where
        toJSON AnnotationsSummaryLayersItem{..}
          = object
              (catMaybes
                 [("limitType" .=) <$> _asliLimitType,
                  ("allowedCharacterCount" .=) <$>
                    _asliAllowedCharacterCount,
                  ("updated" .=) <$> _asliUpdated,
                  ("layerId" .=) <$> _asliLayerId,
                  ("remainingCharacterCount" .=) <$>
                    _asliRemainingCharacterCount])

-- | The rental duration (for rental offers only).
--
-- /See:/ 'volumeSaleInfoOffersItemRentalDuration' smart constructor.
data VolumeSaleInfoOffersItemRentalDuration = VolumeSaleInfoOffersItemRentalDuration
    { _vsioirdCount :: !(Maybe Double)
    , _vsioirdUnit  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeSaleInfoOffersItemRentalDuration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsioirdCount'
--
-- * 'vsioirdUnit'
volumeSaleInfoOffersItemRentalDuration
    :: VolumeSaleInfoOffersItemRentalDuration
volumeSaleInfoOffersItemRentalDuration =
    VolumeSaleInfoOffersItemRentalDuration
    { _vsioirdCount = Nothing
    , _vsioirdUnit = Nothing
    }

vsioirdCount :: Lens' VolumeSaleInfoOffersItemRentalDuration (Maybe Double)
vsioirdCount
  = lens _vsioirdCount (\ s a -> s{_vsioirdCount = a})

vsioirdUnit :: Lens' VolumeSaleInfoOffersItemRentalDuration (Maybe Text)
vsioirdUnit
  = lens _vsioirdUnit (\ s a -> s{_vsioirdUnit = a})

instance FromJSON
         VolumeSaleInfoOffersItemRentalDuration where
        parseJSON
          = withObject "VolumeSaleInfoOffersItemRentalDuration"
              (\ o ->
                 VolumeSaleInfoOffersItemRentalDuration <$>
                   (o .:? "count") <*> (o .:? "unit"))

instance ToJSON
         VolumeSaleInfoOffersItemRentalDuration where
        toJSON VolumeSaleInfoOffersItemRentalDuration{..}
          = object
              (catMaybes
                 [("count" .=) <$> _vsioirdCount,
                  ("unit" .=) <$> _vsioirdUnit])

--
-- /See:/ 'dictlayerdataDictWordsItemExamplesItem' smart constructor.
data DictlayerdataDictWordsItemExamplesItem = DictlayerdataDictWordsItemExamplesItem
    { _ddwieiText   :: !(Maybe Text)
    , _ddwieiSource :: !(Maybe DictlayerdataDictWordsItemExamplesItemSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemExamplesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwieiText'
--
-- * 'ddwieiSource'
dictlayerdataDictWordsItemExamplesItem
    :: DictlayerdataDictWordsItemExamplesItem
dictlayerdataDictWordsItemExamplesItem =
    DictlayerdataDictWordsItemExamplesItem
    { _ddwieiText = Nothing
    , _ddwieiSource = Nothing
    }

ddwieiText :: Lens' DictlayerdataDictWordsItemExamplesItem (Maybe Text)
ddwieiText
  = lens _ddwieiText (\ s a -> s{_ddwieiText = a})

ddwieiSource :: Lens' DictlayerdataDictWordsItemExamplesItem (Maybe DictlayerdataDictWordsItemExamplesItemSource)
ddwieiSource
  = lens _ddwieiSource (\ s a -> s{_ddwieiSource = a})

instance FromJSON
         DictlayerdataDictWordsItemExamplesItem where
        parseJSON
          = withObject "DictlayerdataDictWordsItemExamplesItem"
              (\ o ->
                 DictlayerdataDictWordsItemExamplesItem <$>
                   (o .:? "text") <*> (o .:? "source"))

instance ToJSON
         DictlayerdataDictWordsItemExamplesItem where
        toJSON DictlayerdataDictWordsItemExamplesItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ddwieiText,
                  ("source" .=) <$> _ddwieiSource])

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
-- /See:/ 'annotationLayerSummary' smart constructor.
data AnnotationLayerSummary = AnnotationLayerSummary
    { _alsLimitType               :: !(Maybe Text)
    , _alsAllowedCharacterCount   :: !(Maybe Int32)
    , _alsRemainingCharacterCount :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationLayerSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alsLimitType'
--
-- * 'alsAllowedCharacterCount'
--
-- * 'alsRemainingCharacterCount'
annotationLayerSummary
    :: AnnotationLayerSummary
annotationLayerSummary =
    AnnotationLayerSummary
    { _alsLimitType = Nothing
    , _alsAllowedCharacterCount = Nothing
    , _alsRemainingCharacterCount = Nothing
    }

-- | Type of limitation on this layer. \"limited\" or \"unlimited\" for the
-- \"copy\" layer.
alsLimitType :: Lens' AnnotationLayerSummary (Maybe Text)
alsLimitType
  = lens _alsLimitType (\ s a -> s{_alsLimitType = a})

-- | Maximum allowed characters on this layer, especially for the \"copy\"
-- layer.
alsAllowedCharacterCount :: Lens' AnnotationLayerSummary (Maybe Int32)
alsAllowedCharacterCount
  = lens _alsAllowedCharacterCount
      (\ s a -> s{_alsAllowedCharacterCount = a})

-- | Remaining allowed characters on this layer, especially for the \"copy\"
-- layer.
alsRemainingCharacterCount :: Lens' AnnotationLayerSummary (Maybe Int32)
alsRemainingCharacterCount
  = lens _alsRemainingCharacterCount
      (\ s a -> s{_alsRemainingCharacterCount = a})

instance FromJSON AnnotationLayerSummary where
        parseJSON
          = withObject "AnnotationLayerSummary"
              (\ o ->
                 AnnotationLayerSummary <$>
                   (o .:? "limitType") <*>
                     (o .:? "allowedCharacterCount")
                     <*> (o .:? "remainingCharacterCount"))

instance ToJSON AnnotationLayerSummary where
        toJSON AnnotationLayerSummary{..}
          = object
              (catMaybes
                 [("limitType" .=) <$> _alsLimitType,
                  ("allowedCharacterCount" .=) <$>
                    _alsAllowedCharacterCount,
                  ("remainingCharacterCount" .=) <$>
                    _alsRemainingCharacterCount])

-- | Search result information related to this volume.
--
-- /See:/ 'volumeSearchInfo' smart constructor.
newtype VolumeSearchInfo = VolumeSearchInfo
    { _vsiTextSnippet :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeSearchInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsiTextSnippet'
volumeSearchInfo
    :: VolumeSearchInfo
volumeSearchInfo =
    VolumeSearchInfo
    { _vsiTextSnippet = Nothing
    }

-- | A text snippet containing the search query.
vsiTextSnippet :: Lens' VolumeSearchInfo (Maybe Text)
vsiTextSnippet
  = lens _vsiTextSnippet
      (\ s a -> s{_vsiTextSnippet = a})

instance FromJSON VolumeSearchInfo where
        parseJSON
          = withObject "VolumeSearchInfo"
              (\ o -> VolumeSearchInfo <$> (o .:? "textSnippet"))

instance ToJSON VolumeSearchInfo where
        toJSON VolumeSearchInfo{..}
          = object
              (catMaybes [("textSnippet" .=) <$> _vsiTextSnippet])

--
-- /See:/ 'annotationsSummary' smart constructor.
data AnnotationsSummary = AnnotationsSummary
    { _asKind   :: !Text
    , _asLayers :: !(Maybe [AnnotationsSummaryLayersItem])
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

asLayers :: Lens' AnnotationsSummary [AnnotationsSummaryLayersItem]
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
-- /See:/ 'volume' smart constructor.
data Volume = Volume
    { _vvUserInfo        :: !(Maybe VolumeUserInfo)
    , _vvEtag            :: !(Maybe Text)
    , _vvAccessInfo      :: !(Maybe VolumeAccessInfo)
    , _vvKind            :: !Text
    , _vvSearchInfo      :: !(Maybe VolumeSearchInfo)
    , _vvSelfLink        :: !(Maybe Text)
    , _vvLayerInfo       :: !(Maybe VolumeLayerInfo)
    , _vvSaleInfo        :: !(Maybe VolumeSaleInfo)
    , _vvId              :: !(Maybe Text)
    , _vvRecommendedInfo :: !(Maybe VolumeRecommendedInfo)
    , _vvVolumeInfo      :: !(Maybe VolumeVolumeInfo)
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
vvUserInfo :: Lens' Volume (Maybe VolumeUserInfo)
vvUserInfo
  = lens _vvUserInfo (\ s a -> s{_vvUserInfo = a})

-- | Opaque identifier for a specific version of a volume resource. (In LITE
-- projection)
vvEtag :: Lens' Volume (Maybe Text)
vvEtag = lens _vvEtag (\ s a -> s{_vvEtag = a})

-- | Any information about a volume related to reading or obtaining that
-- volume text. This information can depend on country (books may be public
-- domain in one country but not in another, e.g.).
vvAccessInfo :: Lens' Volume (Maybe VolumeAccessInfo)
vvAccessInfo
  = lens _vvAccessInfo (\ s a -> s{_vvAccessInfo = a})

-- | Resource type for a volume. (In LITE projection.)
vvKind :: Lens' Volume Text
vvKind = lens _vvKind (\ s a -> s{_vvKind = a})

-- | Search result information related to this volume.
vvSearchInfo :: Lens' Volume (Maybe VolumeSearchInfo)
vvSearchInfo
  = lens _vvSearchInfo (\ s a -> s{_vvSearchInfo = a})

-- | URL to this resource. (In LITE projection.)
vvSelfLink :: Lens' Volume (Maybe Text)
vvSelfLink
  = lens _vvSelfLink (\ s a -> s{_vvSelfLink = a})

-- | What layers exist in this volume and high level information about them.
vvLayerInfo :: Lens' Volume (Maybe VolumeLayerInfo)
vvLayerInfo
  = lens _vvLayerInfo (\ s a -> s{_vvLayerInfo = a})

-- | Any information about a volume related to the eBookstore and\/or
-- purchaseability. This information can depend on the country where the
-- request originates from (i.e. books may not be for sale in certain
-- countries).
vvSaleInfo :: Lens' Volume (Maybe VolumeSaleInfo)
vvSaleInfo
  = lens _vvSaleInfo (\ s a -> s{_vvSaleInfo = a})

-- | Unique identifier for a volume. (In LITE projection.)
vvId :: Lens' Volume (Maybe Text)
vvId = lens _vvId (\ s a -> s{_vvId = a})

-- | Recommendation related information for this volume.
vvRecommendedInfo :: Lens' Volume (Maybe VolumeRecommendedInfo)
vvRecommendedInfo
  = lens _vvRecommendedInfo
      (\ s a -> s{_vvRecommendedInfo = a})

-- | General volume information.
vvVolumeInfo :: Lens' Volume (Maybe VolumeVolumeInfo)
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
-- /See:/ 'geolayerdataGeoBoundaryItemItem' smart constructor.
data GeolayerdataGeoBoundaryItemItem = GeolayerdataGeoBoundaryItemItem
    { _ggbiiLatitude  :: !(Maybe Word32)
    , _ggbiiLongitude :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataGeoBoundaryItemItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggbiiLatitude'
--
-- * 'ggbiiLongitude'
geolayerdataGeoBoundaryItemItem
    :: GeolayerdataGeoBoundaryItemItem
geolayerdataGeoBoundaryItemItem =
    GeolayerdataGeoBoundaryItemItem
    { _ggbiiLatitude = Nothing
    , _ggbiiLongitude = Nothing
    }

ggbiiLatitude :: Lens' GeolayerdataGeoBoundaryItemItem (Maybe Word32)
ggbiiLatitude
  = lens _ggbiiLatitude
      (\ s a -> s{_ggbiiLatitude = a})

ggbiiLongitude :: Lens' GeolayerdataGeoBoundaryItemItem (Maybe Word32)
ggbiiLongitude
  = lens _ggbiiLongitude
      (\ s a -> s{_ggbiiLongitude = a})

instance FromJSON GeolayerdataGeoBoundaryItemItem
         where
        parseJSON
          = withObject "GeolayerdataGeoBoundaryItemItem"
              (\ o ->
                 GeolayerdataGeoBoundaryItemItem <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON GeolayerdataGeoBoundaryItemItem where
        toJSON GeolayerdataGeoBoundaryItemItem{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _ggbiiLatitude,
                  ("longitude" .=) <$> _ggbiiLongitude])

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

--
-- /See:/ 'dictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource' smart constructor.
data DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource = DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    { _ddwisidieisURL         :: !(Maybe Text)
    , _ddwisidieisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisidieisURL'
--
-- * 'ddwisidieisAttribution'
dictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    :: DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
dictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource =
    DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    { _ddwisidieisURL = Nothing
    , _ddwisidieisAttribution = Nothing
    }

ddwisidieisURL :: Lens' DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource (Maybe Text)
ddwisidieisURL
  = lens _ddwisidieisURL
      (\ s a -> s{_ddwisidieisURL = a})

ddwisidieisAttribution :: Lens' DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource (Maybe Text)
ddwisidieisAttribution
  = lens _ddwisidieisAttribution
      (\ s a -> s{_ddwisidieisAttribution = a})

instance FromJSON
         DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
         where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource"
              (\ o ->
                 DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
                   <$> (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
         DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
         where
        toJSON
          DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ddwisidieisURL,
                  ("attribution" .=) <$> _ddwisidieisAttribution])

--
-- /See:/ 'geolayerdataCommon' smart constructor.
data GeolayerdataCommon = GeolayerdataCommon
    { _gcSnippet         :: !(Maybe Text)
    , _gcSnippetURL      :: !(Maybe Text)
    , _gcLang            :: !(Maybe Text)
    , _gcTitle           :: !(Maybe Text)
    , _gcPreviewImageURL :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataCommon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcSnippet'
--
-- * 'gcSnippetURL'
--
-- * 'gcLang'
--
-- * 'gcTitle'
--
-- * 'gcPreviewImageURL'
geolayerdataCommon
    :: GeolayerdataCommon
geolayerdataCommon =
    GeolayerdataCommon
    { _gcSnippet = Nothing
    , _gcSnippetURL = Nothing
    , _gcLang = Nothing
    , _gcTitle = Nothing
    , _gcPreviewImageURL = Nothing
    }

-- | The description for this location.
gcSnippet :: Lens' GeolayerdataCommon (Maybe Text)
gcSnippet
  = lens _gcSnippet (\ s a -> s{_gcSnippet = a})

-- | The URL for information for this location. Ex: wikipedia link.
gcSnippetURL :: Lens' GeolayerdataCommon (Maybe Text)
gcSnippetURL
  = lens _gcSnippetURL (\ s a -> s{_gcSnippetURL = a})

-- | The language of the information url and description.
gcLang :: Lens' GeolayerdataCommon (Maybe Text)
gcLang = lens _gcLang (\ s a -> s{_gcLang = a})

-- | The display title and localized canonical name to use when searching for
-- this entity on Google search.
gcTitle :: Lens' GeolayerdataCommon (Maybe Text)
gcTitle = lens _gcTitle (\ s a -> s{_gcTitle = a})

-- | The URL for the preview image information.
gcPreviewImageURL :: Lens' GeolayerdataCommon (Maybe Text)
gcPreviewImageURL
  = lens _gcPreviewImageURL
      (\ s a -> s{_gcPreviewImageURL = a})

instance FromJSON GeolayerdataCommon where
        parseJSON
          = withObject "GeolayerdataCommon"
              (\ o ->
                 GeolayerdataCommon <$>
                   (o .:? "snippet") <*> (o .:? "snippetUrl") <*>
                     (o .:? "lang")
                     <*> (o .:? "title")
                     <*> (o .:? "previewImageUrl"))

instance ToJSON GeolayerdataCommon where
        toJSON GeolayerdataCommon{..}
          = object
              (catMaybes
                 [("snippet" .=) <$> _gcSnippet,
                  ("snippetUrl" .=) <$> _gcSnippetURL,
                  ("lang" .=) <$> _gcLang, ("title" .=) <$> _gcTitle,
                  ("previewImageUrl" .=) <$> _gcPreviewImageURL])

--
-- /See:/ 'geolayerdataGeo' smart constructor.
data GeolayerdataGeo = GeolayerdataGeo
    { _ggMapType     :: !(Maybe Text)
    , _ggCachePolicy :: !(Maybe Text)
    , _ggViewport    :: !(Maybe GeolayerdataGeoViewport)
    , _ggBoundary    :: !(Maybe [[GeolayerdataGeoBoundaryItemItem]])
    , _ggLatitude    :: !(Maybe Double)
    , _ggZoom        :: !(Maybe Int32)
    , _ggCountryCode :: !(Maybe Text)
    , _ggLongitude   :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataGeo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggMapType'
--
-- * 'ggCachePolicy'
--
-- * 'ggViewport'
--
-- * 'ggBoundary'
--
-- * 'ggLatitude'
--
-- * 'ggZoom'
--
-- * 'ggCountryCode'
--
-- * 'ggLongitude'
geolayerdataGeo
    :: GeolayerdataGeo
geolayerdataGeo =
    GeolayerdataGeo
    { _ggMapType = Nothing
    , _ggCachePolicy = Nothing
    , _ggViewport = Nothing
    , _ggBoundary = Nothing
    , _ggLatitude = Nothing
    , _ggZoom = Nothing
    , _ggCountryCode = Nothing
    , _ggLongitude = Nothing
    }

-- | The type of map that should be used for this location. EX: HYBRID,
-- ROADMAP, SATELLITE, TERRAIN
ggMapType :: Lens' GeolayerdataGeo (Maybe Text)
ggMapType
  = lens _ggMapType (\ s a -> s{_ggMapType = a})

-- | The cache policy active for this data. EX: UNRESTRICTED, RESTRICTED,
-- NEVER
ggCachePolicy :: Lens' GeolayerdataGeo (Maybe Text)
ggCachePolicy
  = lens _ggCachePolicy
      (\ s a -> s{_ggCachePolicy = a})

-- | The viewport for showing this location. This is a latitude, longitude
-- rectangle.
ggViewport :: Lens' GeolayerdataGeo (Maybe GeolayerdataGeoViewport)
ggViewport
  = lens _ggViewport (\ s a -> s{_ggViewport = a})

-- | The boundary of the location as a set of loops containing pairs of
-- latitude, longitude coordinates.
ggBoundary :: Lens' GeolayerdataGeo [[GeolayerdataGeoBoundaryItemItem]]
ggBoundary
  = lens _ggBoundary (\ s a -> s{_ggBoundary = a}) .
      _Default
      . _Coerce

-- | The latitude of the location.
ggLatitude :: Lens' GeolayerdataGeo (Maybe Double)
ggLatitude
  = lens _ggLatitude (\ s a -> s{_ggLatitude = a})

-- | The Zoom level to use for the map. Zoom levels between 0 (the lowest
-- zoom level, in which the entire world can be seen on one map) to 21+
-- (down to individual buildings). See:
-- https:\/\/developers.google.com\/maps\/documentation\/staticmaps\/#Zoomlevels
ggZoom :: Lens' GeolayerdataGeo (Maybe Int32)
ggZoom = lens _ggZoom (\ s a -> s{_ggZoom = a})

-- | The country code of the location.
ggCountryCode :: Lens' GeolayerdataGeo (Maybe Text)
ggCountryCode
  = lens _ggCountryCode
      (\ s a -> s{_ggCountryCode = a})

-- | The longitude of the location.
ggLongitude :: Lens' GeolayerdataGeo (Maybe Double)
ggLongitude
  = lens _ggLongitude (\ s a -> s{_ggLongitude = a})

instance FromJSON GeolayerdataGeo where
        parseJSON
          = withObject "GeolayerdataGeo"
              (\ o ->
                 GeolayerdataGeo <$>
                   (o .:? "mapType") <*> (o .:? "cachePolicy") <*>
                     (o .:? "viewport")
                     <*> (o .:? "boundary" .!= mempty)
                     <*> (o .:? "latitude")
                     <*> (o .:? "zoom")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "longitude"))

instance ToJSON GeolayerdataGeo where
        toJSON GeolayerdataGeo{..}
          = object
              (catMaybes
                 [("mapType" .=) <$> _ggMapType,
                  ("cachePolicy" .=) <$> _ggCachePolicy,
                  ("viewport" .=) <$> _ggViewport,
                  ("boundary" .=) <$> _ggBoundary,
                  ("latitude" .=) <$> _ggLatitude,
                  ("zoom" .=) <$> _ggZoom,
                  ("countryCode" .=) <$> _ggCountryCode,
                  ("longitude" .=) <$> _ggLongitude])

--
-- /See:/ 'dictlayerdataDictWordsItem' smart constructor.
data DictlayerdataDictWordsItem = DictlayerdataDictWordsItem
    { _ddwiSenses      :: !(Maybe [DictlayerdataDictWordsItemSensesItem])
    , _ddwiSource      :: !(Maybe DictlayerdataDictWordsItemSource)
    , _ddwiDerivatives :: !(Maybe [DictlayerdataDictWordsItemDerivativesItem])
    , _ddwiExamples    :: !(Maybe [DictlayerdataDictWordsItemExamplesItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwiSenses'
--
-- * 'ddwiSource'
--
-- * 'ddwiDerivatives'
--
-- * 'ddwiExamples'
dictlayerdataDictWordsItem
    :: DictlayerdataDictWordsItem
dictlayerdataDictWordsItem =
    DictlayerdataDictWordsItem
    { _ddwiSenses = Nothing
    , _ddwiSource = Nothing
    , _ddwiDerivatives = Nothing
    , _ddwiExamples = Nothing
    }

ddwiSenses :: Lens' DictlayerdataDictWordsItem [DictlayerdataDictWordsItemSensesItem]
ddwiSenses
  = lens _ddwiSenses (\ s a -> s{_ddwiSenses = a}) .
      _Default
      . _Coerce

-- | The words with different meanings but not related words, e.g. \"go\"
-- (game) and \"go\" (verb).
ddwiSource :: Lens' DictlayerdataDictWordsItem (Maybe DictlayerdataDictWordsItemSource)
ddwiSource
  = lens _ddwiSource (\ s a -> s{_ddwiSource = a})

ddwiDerivatives :: Lens' DictlayerdataDictWordsItem [DictlayerdataDictWordsItemDerivativesItem]
ddwiDerivatives
  = lens _ddwiDerivatives
      (\ s a -> s{_ddwiDerivatives = a})
      . _Default
      . _Coerce

ddwiExamples :: Lens' DictlayerdataDictWordsItem [DictlayerdataDictWordsItemExamplesItem]
ddwiExamples
  = lens _ddwiExamples (\ s a -> s{_ddwiExamples = a})
      . _Default
      . _Coerce

instance FromJSON DictlayerdataDictWordsItem where
        parseJSON
          = withObject "DictlayerdataDictWordsItem"
              (\ o ->
                 DictlayerdataDictWordsItem <$>
                   (o .:? "senses" .!= mempty) <*> (o .:? "source") <*>
                     (o .:? "derivatives" .!= mempty)
                     <*> (o .:? "examples" .!= mempty))

instance ToJSON DictlayerdataDictWordsItem where
        toJSON DictlayerdataDictWordsItem{..}
          = object
              (catMaybes
                 [("senses" .=) <$> _ddwiSenses,
                  ("source" .=) <$> _ddwiSource,
                  ("derivatives" .=) <$> _ddwiDerivatives,
                  ("examples" .=) <$> _ddwiExamples])

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
-- /See:/ 'dictlayerdataDictWordsItemDerivativesItemSource' smart constructor.
data DictlayerdataDictWordsItemDerivativesItemSource = DictlayerdataDictWordsItemDerivativesItemSource
    { _ddwidisURL         :: !(Maybe Text)
    , _ddwidisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemDerivativesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwidisURL'
--
-- * 'ddwidisAttribution'
dictlayerdataDictWordsItemDerivativesItemSource
    :: DictlayerdataDictWordsItemDerivativesItemSource
dictlayerdataDictWordsItemDerivativesItemSource =
    DictlayerdataDictWordsItemDerivativesItemSource
    { _ddwidisURL = Nothing
    , _ddwidisAttribution = Nothing
    }

ddwidisURL :: Lens' DictlayerdataDictWordsItemDerivativesItemSource (Maybe Text)
ddwidisURL
  = lens _ddwidisURL (\ s a -> s{_ddwidisURL = a})

ddwidisAttribution :: Lens' DictlayerdataDictWordsItemDerivativesItemSource (Maybe Text)
ddwidisAttribution
  = lens _ddwidisAttribution
      (\ s a -> s{_ddwidisAttribution = a})

instance FromJSON
         DictlayerdataDictWordsItemDerivativesItemSource where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemDerivativesItemSource"
              (\ o ->
                 DictlayerdataDictWordsItemDerivativesItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
         DictlayerdataDictWordsItemDerivativesItemSource where
        toJSON
          DictlayerdataDictWordsItemDerivativesItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ddwidisURL,
                  ("attribution" .=) <$> _ddwidisAttribution])

--
-- /See:/ 'geolayerdata' smart constructor.
data Geolayerdata = Geolayerdata
    { _gKind   :: !Text
    , _gGeo    :: !(Maybe GeolayerdataGeo)
    , _gCommon :: !(Maybe GeolayerdataCommon)
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

gGeo :: Lens' Geolayerdata (Maybe GeolayerdataGeo)
gGeo = lens _gGeo (\ s a -> s{_gGeo = a})

gCommon :: Lens' Geolayerdata (Maybe GeolayerdataCommon)
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

-- | The words with different meanings but not related words, e.g. \"go\"
-- (game) and \"go\" (verb).
--
-- /See:/ 'dictlayerdataDictWordsItemSource' smart constructor.
data DictlayerdataDictWordsItemSource = DictlayerdataDictWordsItemSource
    { _ddwisURL         :: !(Maybe Text)
    , _ddwisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisURL'
--
-- * 'ddwisAttribution'
dictlayerdataDictWordsItemSource
    :: DictlayerdataDictWordsItemSource
dictlayerdataDictWordsItemSource =
    DictlayerdataDictWordsItemSource
    { _ddwisURL = Nothing
    , _ddwisAttribution = Nothing
    }

ddwisURL :: Lens' DictlayerdataDictWordsItemSource (Maybe Text)
ddwisURL = lens _ddwisURL (\ s a -> s{_ddwisURL = a})

ddwisAttribution :: Lens' DictlayerdataDictWordsItemSource (Maybe Text)
ddwisAttribution
  = lens _ddwisAttribution
      (\ s a -> s{_ddwisAttribution = a})

instance FromJSON DictlayerdataDictWordsItemSource
         where
        parseJSON
          = withObject "DictlayerdataDictWordsItemSource"
              (\ o ->
                 DictlayerdataDictWordsItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON DictlayerdataDictWordsItemSource
         where
        toJSON DictlayerdataDictWordsItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ddwisURL,
                  ("attribution" .=) <$> _ddwisAttribution])

--
-- /See:/ 'dictlayerdataDictWordsItemDerivativesItem' smart constructor.
data DictlayerdataDictWordsItemDerivativesItem = DictlayerdataDictWordsItemDerivativesItem
    { _ddwidiText   :: !(Maybe Text)
    , _ddwidiSource :: !(Maybe DictlayerdataDictWordsItemDerivativesItemSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemDerivativesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwidiText'
--
-- * 'ddwidiSource'
dictlayerdataDictWordsItemDerivativesItem
    :: DictlayerdataDictWordsItemDerivativesItem
dictlayerdataDictWordsItemDerivativesItem =
    DictlayerdataDictWordsItemDerivativesItem
    { _ddwidiText = Nothing
    , _ddwidiSource = Nothing
    }

ddwidiText :: Lens' DictlayerdataDictWordsItemDerivativesItem (Maybe Text)
ddwidiText
  = lens _ddwidiText (\ s a -> s{_ddwidiText = a})

ddwidiSource :: Lens' DictlayerdataDictWordsItemDerivativesItem (Maybe DictlayerdataDictWordsItemDerivativesItemSource)
ddwidiSource
  = lens _ddwidiSource (\ s a -> s{_ddwidiSource = a})

instance FromJSON
         DictlayerdataDictWordsItemDerivativesItem where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemDerivativesItem"
              (\ o ->
                 DictlayerdataDictWordsItemDerivativesItem <$>
                   (o .:? "text") <*> (o .:? "source"))

instance ToJSON
         DictlayerdataDictWordsItemDerivativesItem where
        toJSON DictlayerdataDictWordsItemDerivativesItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ddwidiText,
                  ("source" .=) <$> _ddwidiSource])

--
-- /See:/ 'dictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem' smart constructor.
data DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem = DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
    { _ddwisidieiText   :: !(Maybe Text)
    , _ddwisidieiSource :: !(Maybe DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisidieiText'
--
-- * 'ddwisidieiSource'
dictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
    :: DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
dictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem =
    DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
    { _ddwisidieiText = Nothing
    , _ddwisidieiSource = Nothing
    }

ddwisidieiText :: Lens' DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem (Maybe Text)
ddwisidieiText
  = lens _ddwisidieiText
      (\ s a -> s{_ddwisidieiText = a})

ddwisidieiSource :: Lens' DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem (Maybe DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource)
ddwisidieiSource
  = lens _ddwisidieiSource
      (\ s a -> s{_ddwisidieiSource = a})

instance FromJSON
         DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
         where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem"
              (\ o ->
                 DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
                   <$> (o .:? "text") <*> (o .:? "source"))

instance ToJSON
         DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
         where
        toJSON
          DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ddwisidieiText,
                  ("source" .=) <$> _ddwisidieiSource])

--
-- /See:/ 'dictlayerdata' smart constructor.
data Dictlayerdata = Dictlayerdata
    { _dKind   :: !Text
    , _dDict   :: !(Maybe DictlayerdataDict)
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

dDict :: Lens' Dictlayerdata (Maybe DictlayerdataDict)
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
-- /See:/ 'dictlayerdataDictWordsItemSensesItemSynonymsItemSource' smart constructor.
data DictlayerdataDictWordsItemSensesItemSynonymsItemSource = DictlayerdataDictWordsItemSensesItemSynonymsItemSource
    { _ddwisisisURL         :: !(Maybe Text)
    , _ddwisisisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSensesItemSynonymsItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisisisURL'
--
-- * 'ddwisisisAttribution'
dictlayerdataDictWordsItemSensesItemSynonymsItemSource
    :: DictlayerdataDictWordsItemSensesItemSynonymsItemSource
dictlayerdataDictWordsItemSensesItemSynonymsItemSource =
    DictlayerdataDictWordsItemSensesItemSynonymsItemSource
    { _ddwisisisURL = Nothing
    , _ddwisisisAttribution = Nothing
    }

ddwisisisURL :: Lens' DictlayerdataDictWordsItemSensesItemSynonymsItemSource (Maybe Text)
ddwisisisURL
  = lens _ddwisisisURL (\ s a -> s{_ddwisisisURL = a})

ddwisisisAttribution :: Lens' DictlayerdataDictWordsItemSensesItemSynonymsItemSource (Maybe Text)
ddwisisisAttribution
  = lens _ddwisisisAttribution
      (\ s a -> s{_ddwisisisAttribution = a})

instance FromJSON
         DictlayerdataDictWordsItemSensesItemSynonymsItemSource
         where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemSensesItemSynonymsItemSource"
              (\ o ->
                 DictlayerdataDictWordsItemSensesItemSynonymsItemSource
                   <$> (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
         DictlayerdataDictWordsItemSensesItemSynonymsItemSource
         where
        toJSON
          DictlayerdataDictWordsItemSensesItemSynonymsItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ddwisisisURL,
                  ("attribution" .=) <$> _ddwisisisAttribution])

--
-- /See:/ 'dictlayerdataDictWordsItemSensesItemSynonymsItem' smart constructor.
data DictlayerdataDictWordsItemSensesItemSynonymsItem = DictlayerdataDictWordsItemSensesItemSynonymsItem
    { _ddwisisiText   :: !(Maybe Text)
    , _ddwisisiSource :: !(Maybe DictlayerdataDictWordsItemSensesItemSynonymsItemSource)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSensesItemSynonymsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisisiText'
--
-- * 'ddwisisiSource'
dictlayerdataDictWordsItemSensesItemSynonymsItem
    :: DictlayerdataDictWordsItemSensesItemSynonymsItem
dictlayerdataDictWordsItemSensesItemSynonymsItem =
    DictlayerdataDictWordsItemSensesItemSynonymsItem
    { _ddwisisiText = Nothing
    , _ddwisisiSource = Nothing
    }

ddwisisiText :: Lens' DictlayerdataDictWordsItemSensesItemSynonymsItem (Maybe Text)
ddwisisiText
  = lens _ddwisisiText (\ s a -> s{_ddwisisiText = a})

ddwisisiSource :: Lens' DictlayerdataDictWordsItemSensesItemSynonymsItem (Maybe DictlayerdataDictWordsItemSensesItemSynonymsItemSource)
ddwisisiSource
  = lens _ddwisisiSource
      (\ s a -> s{_ddwisisiSource = a})

instance FromJSON
         DictlayerdataDictWordsItemSensesItemSynonymsItem
         where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemSensesItemSynonymsItem"
              (\ o ->
                 DictlayerdataDictWordsItemSensesItemSynonymsItem <$>
                   (o .:? "text") <*> (o .:? "source"))

instance ToJSON
         DictlayerdataDictWordsItemSensesItemSynonymsItem
         where
        toJSON
          DictlayerdataDictWordsItemSensesItemSynonymsItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ddwisisiText,
                  ("source" .=) <$> _ddwisisiSource])

--
-- /See:/ 'geolayerdataGeoViewportLo' smart constructor.
data GeolayerdataGeoViewportLo = GeolayerdataGeoViewportLo
    { _ggvlLatitude  :: !(Maybe Double)
    , _ggvlLongitude :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataGeoViewportLo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggvlLatitude'
--
-- * 'ggvlLongitude'
geolayerdataGeoViewportLo
    :: GeolayerdataGeoViewportLo
geolayerdataGeoViewportLo =
    GeolayerdataGeoViewportLo
    { _ggvlLatitude = Nothing
    , _ggvlLongitude = Nothing
    }

ggvlLatitude :: Lens' GeolayerdataGeoViewportLo (Maybe Double)
ggvlLatitude
  = lens _ggvlLatitude (\ s a -> s{_ggvlLatitude = a})

ggvlLongitude :: Lens' GeolayerdataGeoViewportLo (Maybe Double)
ggvlLongitude
  = lens _ggvlLongitude
      (\ s a -> s{_ggvlLongitude = a})

instance FromJSON GeolayerdataGeoViewportLo where
        parseJSON
          = withObject "GeolayerdataGeoViewportLo"
              (\ o ->
                 GeolayerdataGeoViewportLo <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON GeolayerdataGeoViewportLo where
        toJSON GeolayerdataGeoViewportLo{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _ggvlLatitude,
                  ("longitude" .=) <$> _ggvlLongitude])

-- | Offer list (=undiscounted) price in Micros.
--
-- /See:/ 'volumeSaleInfoOffersItemListPrice' smart constructor.
data VolumeSaleInfoOffersItemListPrice = VolumeSaleInfoOffersItemListPrice
    { _vsioilpCurrencyCode   :: !(Maybe Text)
    , _vsioilpAmountInMicros :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeSaleInfoOffersItemListPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsioilpCurrencyCode'
--
-- * 'vsioilpAmountInMicros'
volumeSaleInfoOffersItemListPrice
    :: VolumeSaleInfoOffersItemListPrice
volumeSaleInfoOffersItemListPrice =
    VolumeSaleInfoOffersItemListPrice
    { _vsioilpCurrencyCode = Nothing
    , _vsioilpAmountInMicros = Nothing
    }

vsioilpCurrencyCode :: Lens' VolumeSaleInfoOffersItemListPrice (Maybe Text)
vsioilpCurrencyCode
  = lens _vsioilpCurrencyCode
      (\ s a -> s{_vsioilpCurrencyCode = a})

vsioilpAmountInMicros :: Lens' VolumeSaleInfoOffersItemListPrice (Maybe Double)
vsioilpAmountInMicros
  = lens _vsioilpAmountInMicros
      (\ s a -> s{_vsioilpAmountInMicros = a})

instance FromJSON VolumeSaleInfoOffersItemListPrice
         where
        parseJSON
          = withObject "VolumeSaleInfoOffersItemListPrice"
              (\ o ->
                 VolumeSaleInfoOffersItemListPrice <$>
                   (o .:? "currencyCode") <*> (o .:? "amountInMicros"))

instance ToJSON VolumeSaleInfoOffersItemListPrice
         where
        toJSON VolumeSaleInfoOffersItemListPrice{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _vsioilpCurrencyCode,
                  ("amountInMicros" .=) <$> _vsioilpAmountInMicros])

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

-- | The actual selling price of the book. This is the same as the suggested
-- retail or list price unless there are offers or discounts on this
-- volume. (In LITE projection.)
--
-- /See:/ 'volumeSaleInfoRetailPrice' smart constructor.
data VolumeSaleInfoRetailPrice = VolumeSaleInfoRetailPrice
    { _vsirpAmount       :: !(Maybe Double)
    , _vsirpCurrencyCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeSaleInfoRetailPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsirpAmount'
--
-- * 'vsirpCurrencyCode'
volumeSaleInfoRetailPrice
    :: VolumeSaleInfoRetailPrice
volumeSaleInfoRetailPrice =
    VolumeSaleInfoRetailPrice
    { _vsirpAmount = Nothing
    , _vsirpCurrencyCode = Nothing
    }

-- | Amount in the currency listed below. (In LITE projection.)
vsirpAmount :: Lens' VolumeSaleInfoRetailPrice (Maybe Double)
vsirpAmount
  = lens _vsirpAmount (\ s a -> s{_vsirpAmount = a})

-- | An ISO 4217, three-letter currency code. (In LITE projection.)
vsirpCurrencyCode :: Lens' VolumeSaleInfoRetailPrice (Maybe Text)
vsirpCurrencyCode
  = lens _vsirpCurrencyCode
      (\ s a -> s{_vsirpCurrencyCode = a})

instance FromJSON VolumeSaleInfoRetailPrice where
        parseJSON
          = withObject "VolumeSaleInfoRetailPrice"
              (\ o ->
                 VolumeSaleInfoRetailPrice <$>
                   (o .:? "amount") <*> (o .:? "currencyCode"))

instance ToJSON VolumeSaleInfoRetailPrice where
        toJSON VolumeSaleInfoRetailPrice{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _vsirpAmount,
                  ("currencyCode" .=) <$> _vsirpCurrencyCode])

-- | Suggested retail price. (In LITE projection.)
--
-- /See:/ 'volumeSaleInfoListPrice' smart constructor.
data VolumeSaleInfoListPrice = VolumeSaleInfoListPrice
    { _vsilpAmount       :: !(Maybe Double)
    , _vsilpCurrencyCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeSaleInfoListPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsilpAmount'
--
-- * 'vsilpCurrencyCode'
volumeSaleInfoListPrice
    :: VolumeSaleInfoListPrice
volumeSaleInfoListPrice =
    VolumeSaleInfoListPrice
    { _vsilpAmount = Nothing
    , _vsilpCurrencyCode = Nothing
    }

-- | Amount in the currency listed below. (In LITE projection.)
vsilpAmount :: Lens' VolumeSaleInfoListPrice (Maybe Double)
vsilpAmount
  = lens _vsilpAmount (\ s a -> s{_vsilpAmount = a})

-- | An ISO 4217, three-letter currency code. (In LITE projection.)
vsilpCurrencyCode :: Lens' VolumeSaleInfoListPrice (Maybe Text)
vsilpCurrencyCode
  = lens _vsilpCurrencyCode
      (\ s a -> s{_vsilpCurrencyCode = a})

instance FromJSON VolumeSaleInfoListPrice where
        parseJSON
          = withObject "VolumeSaleInfoListPrice"
              (\ o ->
                 VolumeSaleInfoListPrice <$>
                   (o .:? "amount") <*> (o .:? "currencyCode"))

instance ToJSON VolumeSaleInfoListPrice where
        toJSON VolumeSaleInfoListPrice{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _vsilpAmount,
                  ("currencyCode" .=) <$> _vsilpCurrencyCode])

--
-- /See:/ 'dictlayerdataDictWordsItemSensesItemConjugationsItem' smart constructor.
data DictlayerdataDictWordsItemSensesItemConjugationsItem = DictlayerdataDictWordsItemSensesItemConjugationsItem
    { _ddwisiciValue :: !(Maybe Text)
    , _ddwisiciType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSensesItemConjugationsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisiciValue'
--
-- * 'ddwisiciType'
dictlayerdataDictWordsItemSensesItemConjugationsItem
    :: DictlayerdataDictWordsItemSensesItemConjugationsItem
dictlayerdataDictWordsItemSensesItemConjugationsItem =
    DictlayerdataDictWordsItemSensesItemConjugationsItem
    { _ddwisiciValue = Nothing
    , _ddwisiciType = Nothing
    }

ddwisiciValue :: Lens' DictlayerdataDictWordsItemSensesItemConjugationsItem (Maybe Text)
ddwisiciValue
  = lens _ddwisiciValue
      (\ s a -> s{_ddwisiciValue = a})

ddwisiciType :: Lens' DictlayerdataDictWordsItemSensesItemConjugationsItem (Maybe Text)
ddwisiciType
  = lens _ddwisiciType (\ s a -> s{_ddwisiciType = a})

instance FromJSON
         DictlayerdataDictWordsItemSensesItemConjugationsItem
         where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemSensesItemConjugationsItem"
              (\ o ->
                 DictlayerdataDictWordsItemSensesItemConjugationsItem
                   <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON
         DictlayerdataDictWordsItemSensesItemConjugationsItem
         where
        toJSON
          DictlayerdataDictWordsItemSensesItemConjugationsItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ddwisiciValue,
                  ("type" .=) <$> _ddwisiciType])

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

-- | Period during this book is\/was a valid rental.
--
-- /See:/ 'volumeUserInfoRentalPeriod' smart constructor.
data VolumeUserInfoRentalPeriod = VolumeUserInfoRentalPeriod
    { _vuirpEndUtcSec   :: !(Maybe Int64)
    , _vuirpStartUtcSec :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeUserInfoRentalPeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuirpEndUtcSec'
--
-- * 'vuirpStartUtcSec'
volumeUserInfoRentalPeriod
    :: VolumeUserInfoRentalPeriod
volumeUserInfoRentalPeriod =
    VolumeUserInfoRentalPeriod
    { _vuirpEndUtcSec = Nothing
    , _vuirpStartUtcSec = Nothing
    }

vuirpEndUtcSec :: Lens' VolumeUserInfoRentalPeriod (Maybe Int64)
vuirpEndUtcSec
  = lens _vuirpEndUtcSec
      (\ s a -> s{_vuirpEndUtcSec = a})

vuirpStartUtcSec :: Lens' VolumeUserInfoRentalPeriod (Maybe Int64)
vuirpStartUtcSec
  = lens _vuirpStartUtcSec
      (\ s a -> s{_vuirpStartUtcSec = a})

instance FromJSON VolumeUserInfoRentalPeriod where
        parseJSON
          = withObject "VolumeUserInfoRentalPeriod"
              (\ o ->
                 VolumeUserInfoRentalPeriod <$>
                   (o .:? "endUtcSec") <*> (o .:? "startUtcSec"))

instance ToJSON VolumeUserInfoRentalPeriod where
        toJSON VolumeUserInfoRentalPeriod{..}
          = object
              (catMaybes
                 [("endUtcSec" .=) <$> _vuirpEndUtcSec,
                  ("startUtcSec" .=) <$> _vuirpStartUtcSec])

-- | Any information about a volume related to the eBookstore and\/or
-- purchaseability. This information can depend on the country where the
-- request originates from (i.e. books may not be for sale in certain
-- countries).
--
-- /See:/ 'volumeSaleInfo' smart constructor.
data VolumeSaleInfo = VolumeSaleInfo
    { _vsiCountry     :: !(Maybe Text)
    , _vsiOnSaleDate  :: !(Maybe DateTime')
    , _vsiListPrice   :: !(Maybe VolumeSaleInfoListPrice)
    , _vsiRetailPrice :: !(Maybe VolumeSaleInfoRetailPrice)
    , _vsiOffers      :: !(Maybe [VolumeSaleInfoOffersItem])
    , _vsiBuyLink     :: !(Maybe Text)
    , _vsiIsEbook     :: !(Maybe Bool)
    , _vsiSaleability :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeSaleInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsiCountry'
--
-- * 'vsiOnSaleDate'
--
-- * 'vsiListPrice'
--
-- * 'vsiRetailPrice'
--
-- * 'vsiOffers'
--
-- * 'vsiBuyLink'
--
-- * 'vsiIsEbook'
--
-- * 'vsiSaleability'
volumeSaleInfo
    :: VolumeSaleInfo
volumeSaleInfo =
    VolumeSaleInfo
    { _vsiCountry = Nothing
    , _vsiOnSaleDate = Nothing
    , _vsiListPrice = Nothing
    , _vsiRetailPrice = Nothing
    , _vsiOffers = Nothing
    , _vsiBuyLink = Nothing
    , _vsiIsEbook = Nothing
    , _vsiSaleability = Nothing
    }

-- | The two-letter ISO_3166-1 country code for which this sale information
-- is valid. (In LITE projection.)
vsiCountry :: Lens' VolumeSaleInfo (Maybe Text)
vsiCountry
  = lens _vsiCountry (\ s a -> s{_vsiCountry = a})

-- | The date on which this book is available for sale.
vsiOnSaleDate :: Lens' VolumeSaleInfo (Maybe UTCTime)
vsiOnSaleDate
  = lens _vsiOnSaleDate
      (\ s a -> s{_vsiOnSaleDate = a})
      . mapping _DateTime

-- | Suggested retail price. (In LITE projection.)
vsiListPrice :: Lens' VolumeSaleInfo (Maybe VolumeSaleInfoListPrice)
vsiListPrice
  = lens _vsiListPrice (\ s a -> s{_vsiListPrice = a})

-- | The actual selling price of the book. This is the same as the suggested
-- retail or list price unless there are offers or discounts on this
-- volume. (In LITE projection.)
vsiRetailPrice :: Lens' VolumeSaleInfo (Maybe VolumeSaleInfoRetailPrice)
vsiRetailPrice
  = lens _vsiRetailPrice
      (\ s a -> s{_vsiRetailPrice = a})

-- | Offers available for this volume (sales and rentals).
vsiOffers :: Lens' VolumeSaleInfo [VolumeSaleInfoOffersItem]
vsiOffers
  = lens _vsiOffers (\ s a -> s{_vsiOffers = a}) .
      _Default
      . _Coerce

-- | URL to purchase this volume on the Google Books site. (In LITE
-- projection)
vsiBuyLink :: Lens' VolumeSaleInfo (Maybe Text)
vsiBuyLink
  = lens _vsiBuyLink (\ s a -> s{_vsiBuyLink = a})

-- | Whether or not this volume is an eBook (can be added to the My eBooks
-- shelf).
vsiIsEbook :: Lens' VolumeSaleInfo (Maybe Bool)
vsiIsEbook
  = lens _vsiIsEbook (\ s a -> s{_vsiIsEbook = a})

-- | Whether or not this book is available for sale or offered for free in
-- the Google eBookstore for the country listed above. Possible values are
-- FOR_SALE, FOR_RENTAL_ONLY, FOR_SALE_AND_RENTAL, FREE, NOT_FOR_SALE, or
-- FOR_PREORDER.
vsiSaleability :: Lens' VolumeSaleInfo (Maybe Text)
vsiSaleability
  = lens _vsiSaleability
      (\ s a -> s{_vsiSaleability = a})

instance FromJSON VolumeSaleInfo where
        parseJSON
          = withObject "VolumeSaleInfo"
              (\ o ->
                 VolumeSaleInfo <$>
                   (o .:? "country") <*> (o .:? "onSaleDate") <*>
                     (o .:? "listPrice")
                     <*> (o .:? "retailPrice")
                     <*> (o .:? "offers" .!= mempty)
                     <*> (o .:? "buyLink")
                     <*> (o .:? "isEbook")
                     <*> (o .:? "saleability"))

instance ToJSON VolumeSaleInfo where
        toJSON VolumeSaleInfo{..}
          = object
              (catMaybes
                 [("country" .=) <$> _vsiCountry,
                  ("onSaleDate" .=) <$> _vsiOnSaleDate,
                  ("listPrice" .=) <$> _vsiListPrice,
                  ("retailPrice" .=) <$> _vsiRetailPrice,
                  ("offers" .=) <$> _vsiOffers,
                  ("buyLink" .=) <$> _vsiBuyLink,
                  ("isEbook" .=) <$> _vsiIsEbook,
                  ("saleability" .=) <$> _vsiSaleability])

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

-- | What layers exist in this volume and high level information about them.
--
-- /See:/ 'volumeLayerInfo' smart constructor.
newtype VolumeLayerInfo = VolumeLayerInfo
    { _vliLayers :: Maybe [VolumeLayerInfoLayersItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeLayerInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vliLayers'
volumeLayerInfo
    :: VolumeLayerInfo
volumeLayerInfo =
    VolumeLayerInfo
    { _vliLayers = Nothing
    }

-- | A layer should appear here if and only if the layer exists for this
-- book.
vliLayers :: Lens' VolumeLayerInfo [VolumeLayerInfoLayersItem]
vliLayers
  = lens _vliLayers (\ s a -> s{_vliLayers = a}) .
      _Default
      . _Coerce

instance FromJSON VolumeLayerInfo where
        parseJSON
          = withObject "VolumeLayerInfo"
              (\ o ->
                 VolumeLayerInfo <$> (o .:? "layers" .!= mempty))

instance ToJSON VolumeLayerInfo where
        toJSON VolumeLayerInfo{..}
          = object (catMaybes [("layers" .=) <$> _vliLayers])

-- | Physical dimensions of this volume.
--
-- /See:/ 'volumeVolumeInfoDimensions' smart constructor.
data VolumeVolumeInfoDimensions = VolumeVolumeInfoDimensions
    { _vvidHeight    :: !(Maybe Text)
    , _vvidWidth     :: !(Maybe Text)
    , _vvidThickness :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeVolumeInfoDimensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vvidHeight'
--
-- * 'vvidWidth'
--
-- * 'vvidThickness'
volumeVolumeInfoDimensions
    :: VolumeVolumeInfoDimensions
volumeVolumeInfoDimensions =
    VolumeVolumeInfoDimensions
    { _vvidHeight = Nothing
    , _vvidWidth = Nothing
    , _vvidThickness = Nothing
    }

-- | Height or length of this volume (in cm).
vvidHeight :: Lens' VolumeVolumeInfoDimensions (Maybe Text)
vvidHeight
  = lens _vvidHeight (\ s a -> s{_vvidHeight = a})

-- | Width of this volume (in cm).
vvidWidth :: Lens' VolumeVolumeInfoDimensions (Maybe Text)
vvidWidth
  = lens _vvidWidth (\ s a -> s{_vvidWidth = a})

-- | Thickness of this volume (in cm).
vvidThickness :: Lens' VolumeVolumeInfoDimensions (Maybe Text)
vvidThickness
  = lens _vvidThickness
      (\ s a -> s{_vvidThickness = a})

instance FromJSON VolumeVolumeInfoDimensions where
        parseJSON
          = withObject "VolumeVolumeInfoDimensions"
              (\ o ->
                 VolumeVolumeInfoDimensions <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "thickness"))

instance ToJSON VolumeVolumeInfoDimensions where
        toJSON VolumeVolumeInfoDimensions{..}
          = object
              (catMaybes
                 [("height" .=) <$> _vvidHeight,
                  ("width" .=) <$> _vvidWidth,
                  ("thickness" .=) <$> _vvidThickness])

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

-- | Selection ranges sent from the client.
--
-- /See:/ 'annotationClientVersionRanges' smart constructor.
data AnnotationClientVersionRanges = AnnotationClientVersionRanges
    { _acvrGbImageRange   :: !(Maybe BooksAnnotationsRange)
    , _acvrContentVersion :: !(Maybe Text)
    , _acvrImageCfiRange  :: !(Maybe BooksAnnotationsRange)
    , _acvrGbTextRange    :: !(Maybe BooksAnnotationsRange)
    , _acvrCfiRange       :: !(Maybe BooksAnnotationsRange)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationClientVersionRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvrGbImageRange'
--
-- * 'acvrContentVersion'
--
-- * 'acvrImageCfiRange'
--
-- * 'acvrGbTextRange'
--
-- * 'acvrCfiRange'
annotationClientVersionRanges
    :: AnnotationClientVersionRanges
annotationClientVersionRanges =
    AnnotationClientVersionRanges
    { _acvrGbImageRange = Nothing
    , _acvrContentVersion = Nothing
    , _acvrImageCfiRange = Nothing
    , _acvrGbTextRange = Nothing
    , _acvrCfiRange = Nothing
    }

-- | Range in GB image format for this annotation sent by client.
acvrGbImageRange :: Lens' AnnotationClientVersionRanges (Maybe BooksAnnotationsRange)
acvrGbImageRange
  = lens _acvrGbImageRange
      (\ s a -> s{_acvrGbImageRange = a})

-- | Content version the client sent in.
acvrContentVersion :: Lens' AnnotationClientVersionRanges (Maybe Text)
acvrContentVersion
  = lens _acvrContentVersion
      (\ s a -> s{_acvrContentVersion = a})

-- | Range in image CFI format for this annotation sent by client.
acvrImageCfiRange :: Lens' AnnotationClientVersionRanges (Maybe BooksAnnotationsRange)
acvrImageCfiRange
  = lens _acvrImageCfiRange
      (\ s a -> s{_acvrImageCfiRange = a})

-- | Range in GB text format for this annotation sent by client.
acvrGbTextRange :: Lens' AnnotationClientVersionRanges (Maybe BooksAnnotationsRange)
acvrGbTextRange
  = lens _acvrGbTextRange
      (\ s a -> s{_acvrGbTextRange = a})

-- | Range in CFI format for this annotation sent by client.
acvrCfiRange :: Lens' AnnotationClientVersionRanges (Maybe BooksAnnotationsRange)
acvrCfiRange
  = lens _acvrCfiRange (\ s a -> s{_acvrCfiRange = a})

instance FromJSON AnnotationClientVersionRanges where
        parseJSON
          = withObject "AnnotationClientVersionRanges"
              (\ o ->
                 AnnotationClientVersionRanges <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "imageCfiRange")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON AnnotationClientVersionRanges where
        toJSON AnnotationClientVersionRanges{..}
          = object
              (catMaybes
                 [("gbImageRange" .=) <$> _acvrGbImageRange,
                  ("contentVersion" .=) <$> _acvrContentVersion,
                  ("imageCfiRange" .=) <$> _acvrImageCfiRange,
                  ("gbTextRange" .=) <$> _acvrGbTextRange,
                  ("cfiRange" .=) <$> _acvrCfiRange])

--
-- /See:/ 'dictlayerdataDictWordsItemSensesItemDefinitionsItem' smart constructor.
data DictlayerdataDictWordsItemSensesItemDefinitionsItem = DictlayerdataDictWordsItemSensesItemDefinitionsItem
    { _ddwisidiDefinition :: !(Maybe Text)
    , _ddwisidiExamples   :: !(Maybe [DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSensesItemDefinitionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisidiDefinition'
--
-- * 'ddwisidiExamples'
dictlayerdataDictWordsItemSensesItemDefinitionsItem
    :: DictlayerdataDictWordsItemSensesItemDefinitionsItem
dictlayerdataDictWordsItemSensesItemDefinitionsItem =
    DictlayerdataDictWordsItemSensesItemDefinitionsItem
    { _ddwisidiDefinition = Nothing
    , _ddwisidiExamples = Nothing
    }

ddwisidiDefinition :: Lens' DictlayerdataDictWordsItemSensesItemDefinitionsItem (Maybe Text)
ddwisidiDefinition
  = lens _ddwisidiDefinition
      (\ s a -> s{_ddwisidiDefinition = a})

ddwisidiExamples :: Lens' DictlayerdataDictWordsItemSensesItemDefinitionsItem [DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem]
ddwisidiExamples
  = lens _ddwisidiExamples
      (\ s a -> s{_ddwisidiExamples = a})
      . _Default
      . _Coerce

instance FromJSON
         DictlayerdataDictWordsItemSensesItemDefinitionsItem
         where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemSensesItemDefinitionsItem"
              (\ o ->
                 DictlayerdataDictWordsItemSensesItemDefinitionsItem
                   <$>
                   (o .:? "definition") <*>
                     (o .:? "examples" .!= mempty))

instance ToJSON
         DictlayerdataDictWordsItemSensesItemDefinitionsItem
         where
        toJSON
          DictlayerdataDictWordsItemSensesItemDefinitionsItem{..}
          = object
              (catMaybes
                 [("definition" .=) <$> _ddwisidiDefinition,
                  ("examples" .=) <$> _ddwisidiExamples])

--
-- /See:/ 'volumeLayerInfoLayersItem' smart constructor.
data VolumeLayerInfoLayersItem = VolumeLayerInfoLayersItem
    { _vliliVolumeAnnotationsVersion :: !(Maybe Text)
    , _vliliLayerId                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeLayerInfoLayersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vliliVolumeAnnotationsVersion'
--
-- * 'vliliLayerId'
volumeLayerInfoLayersItem
    :: VolumeLayerInfoLayersItem
volumeLayerInfoLayersItem =
    VolumeLayerInfoLayersItem
    { _vliliVolumeAnnotationsVersion = Nothing
    , _vliliLayerId = Nothing
    }

-- | The current version of this layer\'s volume annotations. Note that this
-- version applies only to the data in the books.layers.volumeAnnotations.*
-- responses. The actual annotation data is versioned separately.
vliliVolumeAnnotationsVersion :: Lens' VolumeLayerInfoLayersItem (Maybe Text)
vliliVolumeAnnotationsVersion
  = lens _vliliVolumeAnnotationsVersion
      (\ s a -> s{_vliliVolumeAnnotationsVersion = a})

-- | The layer id of this layer (e.g. \"geo\").
vliliLayerId :: Lens' VolumeLayerInfoLayersItem (Maybe Text)
vliliLayerId
  = lens _vliliLayerId (\ s a -> s{_vliliLayerId = a})

instance FromJSON VolumeLayerInfoLayersItem where
        parseJSON
          = withObject "VolumeLayerInfoLayersItem"
              (\ o ->
                 VolumeLayerInfoLayersItem <$>
                   (o .:? "volumeAnnotationsVersion") <*>
                     (o .:? "layerId"))

instance ToJSON VolumeLayerInfoLayersItem where
        toJSON VolumeLayerInfoLayersItem{..}
          = object
              (catMaybes
                 [("volumeAnnotationsVersion" .=) <$>
                    _vliliVolumeAnnotationsVersion,
                  ("layerId" .=) <$> _vliliLayerId])

-- | Selection ranges for the most recent content version.
--
-- /See:/ 'annotationCurrentVersionRanges' smart constructor.
data AnnotationCurrentVersionRanges = AnnotationCurrentVersionRanges
    { _aGbImageRange   :: !(Maybe BooksAnnotationsRange)
    , _aContentVersion :: !(Maybe Text)
    , _aImageCfiRange  :: !(Maybe BooksAnnotationsRange)
    , _aGbTextRange    :: !(Maybe BooksAnnotationsRange)
    , _aCfiRange       :: !(Maybe BooksAnnotationsRange)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationCurrentVersionRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aGbImageRange'
--
-- * 'aContentVersion'
--
-- * 'aImageCfiRange'
--
-- * 'aGbTextRange'
--
-- * 'aCfiRange'
annotationCurrentVersionRanges
    :: AnnotationCurrentVersionRanges
annotationCurrentVersionRanges =
    AnnotationCurrentVersionRanges
    { _aGbImageRange = Nothing
    , _aContentVersion = Nothing
    , _aImageCfiRange = Nothing
    , _aGbTextRange = Nothing
    , _aCfiRange = Nothing
    }

-- | Range in GB image format for this annotation for version above.
aGbImageRange :: Lens' AnnotationCurrentVersionRanges (Maybe BooksAnnotationsRange)
aGbImageRange
  = lens _aGbImageRange
      (\ s a -> s{_aGbImageRange = a})

-- | Content version applicable to ranges below.
aContentVersion :: Lens' AnnotationCurrentVersionRanges (Maybe Text)
aContentVersion
  = lens _aContentVersion
      (\ s a -> s{_aContentVersion = a})

-- | Range in image CFI format for this annotation for version above.
aImageCfiRange :: Lens' AnnotationCurrentVersionRanges (Maybe BooksAnnotationsRange)
aImageCfiRange
  = lens _aImageCfiRange
      (\ s a -> s{_aImageCfiRange = a})

-- | Range in GB text format for this annotation for version above.
aGbTextRange :: Lens' AnnotationCurrentVersionRanges (Maybe BooksAnnotationsRange)
aGbTextRange
  = lens _aGbTextRange (\ s a -> s{_aGbTextRange = a})

-- | Range in CFI format for this annotation for version above.
aCfiRange :: Lens' AnnotationCurrentVersionRanges (Maybe BooksAnnotationsRange)
aCfiRange
  = lens _aCfiRange (\ s a -> s{_aCfiRange = a})

instance FromJSON AnnotationCurrentVersionRanges
         where
        parseJSON
          = withObject "AnnotationCurrentVersionRanges"
              (\ o ->
                 AnnotationCurrentVersionRanges <$>
                   (o .:? "gbImageRange") <*> (o .:? "contentVersion")
                     <*> (o .:? "imageCfiRange")
                     <*> (o .:? "gbTextRange")
                     <*> (o .:? "cfiRange"))

instance ToJSON AnnotationCurrentVersionRanges where
        toJSON AnnotationCurrentVersionRanges{..}
          = object
              (catMaybes
                 [("gbImageRange" .=) <$> _aGbImageRange,
                  ("contentVersion" .=) <$> _aContentVersion,
                  ("imageCfiRange" .=) <$> _aImageCfiRange,
                  ("gbTextRange" .=) <$> _aGbTextRange,
                  ("cfiRange" .=) <$> _aCfiRange])

-- | Information about pdf content. (In LITE projection.)
--
-- /See:/ 'volumeAccessInfoPdf' smart constructor.
data VolumeAccessInfoPdf = VolumeAccessInfoPdf
    { _vaipAcsTokenLink :: !(Maybe Text)
    , _vaipIsAvailable  :: !(Maybe Bool)
    , _vaipDownloadLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeAccessInfoPdf' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vaipAcsTokenLink'
--
-- * 'vaipIsAvailable'
--
-- * 'vaipDownloadLink'
volumeAccessInfoPdf
    :: VolumeAccessInfoPdf
volumeAccessInfoPdf =
    VolumeAccessInfoPdf
    { _vaipAcsTokenLink = Nothing
    , _vaipIsAvailable = Nothing
    , _vaipDownloadLink = Nothing
    }

-- | URL to retrieve ACS token for pdf download. (In LITE projection.)
vaipAcsTokenLink :: Lens' VolumeAccessInfoPdf (Maybe Text)
vaipAcsTokenLink
  = lens _vaipAcsTokenLink
      (\ s a -> s{_vaipAcsTokenLink = a})

-- | Is a scanned image pdf available either as public domain or for
-- purchase. (In LITE projection.)
vaipIsAvailable :: Lens' VolumeAccessInfoPdf (Maybe Bool)
vaipIsAvailable
  = lens _vaipIsAvailable
      (\ s a -> s{_vaipIsAvailable = a})

-- | URL to download pdf. (In LITE projection.)
vaipDownloadLink :: Lens' VolumeAccessInfoPdf (Maybe Text)
vaipDownloadLink
  = lens _vaipDownloadLink
      (\ s a -> s{_vaipDownloadLink = a})

instance FromJSON VolumeAccessInfoPdf where
        parseJSON
          = withObject "VolumeAccessInfoPdf"
              (\ o ->
                 VolumeAccessInfoPdf <$>
                   (o .:? "acsTokenLink") <*> (o .:? "isAvailable") <*>
                     (o .:? "downloadLink"))

instance ToJSON VolumeAccessInfoPdf where
        toJSON VolumeAccessInfoPdf{..}
          = object
              (catMaybes
                 [("acsTokenLink" .=) <$> _vaipAcsTokenLink,
                  ("isAvailable" .=) <$> _vaipIsAvailable,
                  ("downloadLink" .=) <$> _vaipDownloadLink])

--
-- /See:/ 'dictlayerdataDictWordsItemExamplesItemSource' smart constructor.
data DictlayerdataDictWordsItemExamplesItemSource = DictlayerdataDictWordsItemExamplesItemSource
    { _ddwieisURL         :: !(Maybe Text)
    , _ddwieisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemExamplesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwieisURL'
--
-- * 'ddwieisAttribution'
dictlayerdataDictWordsItemExamplesItemSource
    :: DictlayerdataDictWordsItemExamplesItemSource
dictlayerdataDictWordsItemExamplesItemSource =
    DictlayerdataDictWordsItemExamplesItemSource
    { _ddwieisURL = Nothing
    , _ddwieisAttribution = Nothing
    }

ddwieisURL :: Lens' DictlayerdataDictWordsItemExamplesItemSource (Maybe Text)
ddwieisURL
  = lens _ddwieisURL (\ s a -> s{_ddwieisURL = a})

ddwieisAttribution :: Lens' DictlayerdataDictWordsItemExamplesItemSource (Maybe Text)
ddwieisAttribution
  = lens _ddwieisAttribution
      (\ s a -> s{_ddwieisAttribution = a})

instance FromJSON
         DictlayerdataDictWordsItemExamplesItemSource where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemExamplesItemSource"
              (\ o ->
                 DictlayerdataDictWordsItemExamplesItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
         DictlayerdataDictWordsItemExamplesItemSource where
        toJSON
          DictlayerdataDictWordsItemExamplesItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ddwieisURL,
                  ("attribution" .=) <$> _ddwieisAttribution])

-- | Information about epub content. (In LITE projection.)
--
-- /See:/ 'volumeAccessInfoEpub' smart constructor.
data VolumeAccessInfoEpub = VolumeAccessInfoEpub
    { _vaieAcsTokenLink :: !(Maybe Text)
    , _vaieIsAvailable  :: !(Maybe Bool)
    , _vaieDownloadLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeAccessInfoEpub' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vaieAcsTokenLink'
--
-- * 'vaieIsAvailable'
--
-- * 'vaieDownloadLink'
volumeAccessInfoEpub
    :: VolumeAccessInfoEpub
volumeAccessInfoEpub =
    VolumeAccessInfoEpub
    { _vaieAcsTokenLink = Nothing
    , _vaieIsAvailable = Nothing
    , _vaieDownloadLink = Nothing
    }

-- | URL to retrieve ACS token for epub download. (In LITE projection.)
vaieAcsTokenLink :: Lens' VolumeAccessInfoEpub (Maybe Text)
vaieAcsTokenLink
  = lens _vaieAcsTokenLink
      (\ s a -> s{_vaieAcsTokenLink = a})

-- | Is a flowing text epub available either as public domain or for
-- purchase. (In LITE projection.)
vaieIsAvailable :: Lens' VolumeAccessInfoEpub (Maybe Bool)
vaieIsAvailable
  = lens _vaieIsAvailable
      (\ s a -> s{_vaieIsAvailable = a})

-- | URL to download epub. (In LITE projection.)
vaieDownloadLink :: Lens' VolumeAccessInfoEpub (Maybe Text)
vaieDownloadLink
  = lens _vaieDownloadLink
      (\ s a -> s{_vaieDownloadLink = a})

instance FromJSON VolumeAccessInfoEpub where
        parseJSON
          = withObject "VolumeAccessInfoEpub"
              (\ o ->
                 VolumeAccessInfoEpub <$>
                   (o .:? "acsTokenLink") <*> (o .:? "isAvailable") <*>
                     (o .:? "downloadLink"))

instance ToJSON VolumeAccessInfoEpub where
        toJSON VolumeAccessInfoEpub{..}
          = object
              (catMaybes
                 [("acsTokenLink" .=) <$> _vaieAcsTokenLink,
                  ("isAvailable" .=) <$> _vaieIsAvailable,
                  ("downloadLink" .=) <$> _vaieDownloadLink])

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
-- /See:/ 'volumeSaleInfoOffersItem' smart constructor.
data VolumeSaleInfoOffersItem = VolumeSaleInfoOffersItem
    { _vsioiFinskyOfferType :: !(Maybe Int32)
    , _vsioiRentalDuration  :: !(Maybe VolumeSaleInfoOffersItemRentalDuration)
    , _vsioiListPrice       :: !(Maybe VolumeSaleInfoOffersItemListPrice)
    , _vsioiRetailPrice     :: !(Maybe VolumeSaleInfoOffersItemRetailPrice)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeSaleInfoOffersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsioiFinskyOfferType'
--
-- * 'vsioiRentalDuration'
--
-- * 'vsioiListPrice'
--
-- * 'vsioiRetailPrice'
volumeSaleInfoOffersItem
    :: VolumeSaleInfoOffersItem
volumeSaleInfoOffersItem =
    VolumeSaleInfoOffersItem
    { _vsioiFinskyOfferType = Nothing
    , _vsioiRentalDuration = Nothing
    , _vsioiListPrice = Nothing
    , _vsioiRetailPrice = Nothing
    }

-- | The finsky offer type (e.g., PURCHASE=0 RENTAL=3)
vsioiFinskyOfferType :: Lens' VolumeSaleInfoOffersItem (Maybe Int32)
vsioiFinskyOfferType
  = lens _vsioiFinskyOfferType
      (\ s a -> s{_vsioiFinskyOfferType = a})

-- | The rental duration (for rental offers only).
vsioiRentalDuration :: Lens' VolumeSaleInfoOffersItem (Maybe VolumeSaleInfoOffersItemRentalDuration)
vsioiRentalDuration
  = lens _vsioiRentalDuration
      (\ s a -> s{_vsioiRentalDuration = a})

-- | Offer list (=undiscounted) price in Micros.
vsioiListPrice :: Lens' VolumeSaleInfoOffersItem (Maybe VolumeSaleInfoOffersItemListPrice)
vsioiListPrice
  = lens _vsioiListPrice
      (\ s a -> s{_vsioiListPrice = a})

-- | Offer retail (=discounted) price in Micros
vsioiRetailPrice :: Lens' VolumeSaleInfoOffersItem (Maybe VolumeSaleInfoOffersItemRetailPrice)
vsioiRetailPrice
  = lens _vsioiRetailPrice
      (\ s a -> s{_vsioiRetailPrice = a})

instance FromJSON VolumeSaleInfoOffersItem where
        parseJSON
          = withObject "VolumeSaleInfoOffersItem"
              (\ o ->
                 VolumeSaleInfoOffersItem <$>
                   (o .:? "finskyOfferType") <*>
                     (o .:? "rentalDuration")
                     <*> (o .:? "listPrice")
                     <*> (o .:? "retailPrice"))

instance ToJSON VolumeSaleInfoOffersItem where
        toJSON VolumeSaleInfoOffersItem{..}
          = object
              (catMaybes
                 [("finskyOfferType" .=) <$> _vsioiFinskyOfferType,
                  ("rentalDuration" .=) <$> _vsioiRentalDuration,
                  ("listPrice" .=) <$> _vsioiListPrice,
                  ("retailPrice" .=) <$> _vsioiRetailPrice])

--
-- /See:/ 'dictlayerdataDict' smart constructor.
data DictlayerdataDict = DictlayerdataDict
    { _ddSource :: !(Maybe DictlayerdataDictSource)
    , _ddWords  :: !(Maybe [DictlayerdataDictWordsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddSource'
--
-- * 'ddWords'
dictlayerdataDict
    :: DictlayerdataDict
dictlayerdataDict =
    DictlayerdataDict
    { _ddSource = Nothing
    , _ddWords = Nothing
    }

-- | The source, url and attribution for this dictionary data.
ddSource :: Lens' DictlayerdataDict (Maybe DictlayerdataDictSource)
ddSource = lens _ddSource (\ s a -> s{_ddSource = a})

ddWords :: Lens' DictlayerdataDict [DictlayerdataDictWordsItem]
ddWords
  = lens _ddWords (\ s a -> s{_ddWords = a}) . _Default
      . _Coerce

instance FromJSON DictlayerdataDict where
        parseJSON
          = withObject "DictlayerdataDict"
              (\ o ->
                 DictlayerdataDict <$>
                   (o .:? "source") <*> (o .:? "words" .!= mempty))

instance ToJSON DictlayerdataDict where
        toJSON DictlayerdataDict{..}
          = object
              (catMaybes
                 [("source" .=) <$> _ddSource,
                  ("words" .=) <$> _ddWords])

--
-- /See:/ 'dictlayerdataDictWordsItemSensesItem' smart constructor.
data DictlayerdataDictWordsItemSensesItem = DictlayerdataDictWordsItemSensesItem
    { _ddwisiPronunciationURL :: !(Maybe Text)
    , _ddwisiConjugations     :: !(Maybe [DictlayerdataDictWordsItemSensesItemConjugationsItem])
    , _ddwisiPronunciation    :: !(Maybe Text)
    , _ddwisiSynonyms         :: !(Maybe [DictlayerdataDictWordsItemSensesItemSynonymsItem])
    , _ddwisiSource           :: !(Maybe DictlayerdataDictWordsItemSensesItemSource)
    , _ddwisiPartOfSpeech     :: !(Maybe Text)
    , _ddwisiDefinitions      :: !(Maybe [DictlayerdataDictWordsItemSensesItemDefinitionsItem])
    , _ddwisiSyllabification  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSensesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisiPronunciationURL'
--
-- * 'ddwisiConjugations'
--
-- * 'ddwisiPronunciation'
--
-- * 'ddwisiSynonyms'
--
-- * 'ddwisiSource'
--
-- * 'ddwisiPartOfSpeech'
--
-- * 'ddwisiDefinitions'
--
-- * 'ddwisiSyllabification'
dictlayerdataDictWordsItemSensesItem
    :: DictlayerdataDictWordsItemSensesItem
dictlayerdataDictWordsItemSensesItem =
    DictlayerdataDictWordsItemSensesItem
    { _ddwisiPronunciationURL = Nothing
    , _ddwisiConjugations = Nothing
    , _ddwisiPronunciation = Nothing
    , _ddwisiSynonyms = Nothing
    , _ddwisiSource = Nothing
    , _ddwisiPartOfSpeech = Nothing
    , _ddwisiDefinitions = Nothing
    , _ddwisiSyllabification = Nothing
    }

ddwisiPronunciationURL :: Lens' DictlayerdataDictWordsItemSensesItem (Maybe Text)
ddwisiPronunciationURL
  = lens _ddwisiPronunciationURL
      (\ s a -> s{_ddwisiPronunciationURL = a})

ddwisiConjugations :: Lens' DictlayerdataDictWordsItemSensesItem [DictlayerdataDictWordsItemSensesItemConjugationsItem]
ddwisiConjugations
  = lens _ddwisiConjugations
      (\ s a -> s{_ddwisiConjugations = a})
      . _Default
      . _Coerce

ddwisiPronunciation :: Lens' DictlayerdataDictWordsItemSensesItem (Maybe Text)
ddwisiPronunciation
  = lens _ddwisiPronunciation
      (\ s a -> s{_ddwisiPronunciation = a})

ddwisiSynonyms :: Lens' DictlayerdataDictWordsItemSensesItem [DictlayerdataDictWordsItemSensesItemSynonymsItem]
ddwisiSynonyms
  = lens _ddwisiSynonyms
      (\ s a -> s{_ddwisiSynonyms = a})
      . _Default
      . _Coerce

ddwisiSource :: Lens' DictlayerdataDictWordsItemSensesItem (Maybe DictlayerdataDictWordsItemSensesItemSource)
ddwisiSource
  = lens _ddwisiSource (\ s a -> s{_ddwisiSource = a})

ddwisiPartOfSpeech :: Lens' DictlayerdataDictWordsItemSensesItem (Maybe Text)
ddwisiPartOfSpeech
  = lens _ddwisiPartOfSpeech
      (\ s a -> s{_ddwisiPartOfSpeech = a})

ddwisiDefinitions :: Lens' DictlayerdataDictWordsItemSensesItem [DictlayerdataDictWordsItemSensesItemDefinitionsItem]
ddwisiDefinitions
  = lens _ddwisiDefinitions
      (\ s a -> s{_ddwisiDefinitions = a})
      . _Default
      . _Coerce

ddwisiSyllabification :: Lens' DictlayerdataDictWordsItemSensesItem (Maybe Text)
ddwisiSyllabification
  = lens _ddwisiSyllabification
      (\ s a -> s{_ddwisiSyllabification = a})

instance FromJSON
         DictlayerdataDictWordsItemSensesItem where
        parseJSON
          = withObject "DictlayerdataDictWordsItemSensesItem"
              (\ o ->
                 DictlayerdataDictWordsItemSensesItem <$>
                   (o .:? "pronunciationUrl") <*>
                     (o .:? "conjugations" .!= mempty)
                     <*> (o .:? "pronunciation")
                     <*> (o .:? "synonyms" .!= mempty)
                     <*> (o .:? "source")
                     <*> (o .:? "partOfSpeech")
                     <*> (o .:? "definitions" .!= mempty)
                     <*> (o .:? "syllabification"))

instance ToJSON DictlayerdataDictWordsItemSensesItem
         where
        toJSON DictlayerdataDictWordsItemSensesItem{..}
          = object
              (catMaybes
                 [("pronunciationUrl" .=) <$> _ddwisiPronunciationURL,
                  ("conjugations" .=) <$> _ddwisiConjugations,
                  ("pronunciation" .=) <$> _ddwisiPronunciation,
                  ("synonyms" .=) <$> _ddwisiSynonyms,
                  ("source" .=) <$> _ddwisiSource,
                  ("partOfSpeech" .=) <$> _ddwisiPartOfSpeech,
                  ("definitions" .=) <$> _ddwisiDefinitions,
                  ("syllabification" .=) <$> _ddwisiSyllabification])

-- | Recommendation related information for this volume.
--
-- /See:/ 'volumeRecommendedInfo' smart constructor.
newtype VolumeRecommendedInfo = VolumeRecommendedInfo
    { _vriExplanation :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeRecommendedInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vriExplanation'
volumeRecommendedInfo
    :: VolumeRecommendedInfo
volumeRecommendedInfo =
    VolumeRecommendedInfo
    { _vriExplanation = Nothing
    }

-- | A text explaining why this volume is recommended.
vriExplanation :: Lens' VolumeRecommendedInfo (Maybe Text)
vriExplanation
  = lens _vriExplanation
      (\ s a -> s{_vriExplanation = a})

instance FromJSON VolumeRecommendedInfo where
        parseJSON
          = withObject "VolumeRecommendedInfo"
              (\ o ->
                 VolumeRecommendedInfo <$> (o .:? "explanation"))

instance ToJSON VolumeRecommendedInfo where
        toJSON VolumeRecommendedInfo{..}
          = object
              (catMaybes [("explanation" .=) <$> _vriExplanation])

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

-- | User settings in sub-objects, each for different purposes.
--
-- /See:/ 'usersettingsNotesExport' smart constructor.
data UsersettingsNotesExport = UsersettingsNotesExport
    { _uneFolderName :: !(Maybe Text)
    , _uneIsEnabled  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersettingsNotesExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uneFolderName'
--
-- * 'uneIsEnabled'
usersettingsNotesExport
    :: UsersettingsNotesExport
usersettingsNotesExport =
    UsersettingsNotesExport
    { _uneFolderName = Nothing
    , _uneIsEnabled = Nothing
    }

uneFolderName :: Lens' UsersettingsNotesExport (Maybe Text)
uneFolderName
  = lens _uneFolderName
      (\ s a -> s{_uneFolderName = a})

uneIsEnabled :: Lens' UsersettingsNotesExport (Maybe Bool)
uneIsEnabled
  = lens _uneIsEnabled (\ s a -> s{_uneIsEnabled = a})

instance FromJSON UsersettingsNotesExport where
        parseJSON
          = withObject "UsersettingsNotesExport"
              (\ o ->
                 UsersettingsNotesExport <$>
                   (o .:? "folderName") <*> (o .:? "isEnabled"))

instance ToJSON UsersettingsNotesExport where
        toJSON UsersettingsNotesExport{..}
          = object
              (catMaybes
                 [("folderName" .=) <$> _uneFolderName,
                  ("isEnabled" .=) <$> _uneIsEnabled])

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

-- | The source, url and attribution for this dictionary data.
--
-- /See:/ 'dictlayerdataDictSource' smart constructor.
data DictlayerdataDictSource = DictlayerdataDictSource
    { _ddsURL         :: !(Maybe Text)
    , _ddsAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsURL'
--
-- * 'ddsAttribution'
dictlayerdataDictSource
    :: DictlayerdataDictSource
dictlayerdataDictSource =
    DictlayerdataDictSource
    { _ddsURL = Nothing
    , _ddsAttribution = Nothing
    }

ddsURL :: Lens' DictlayerdataDictSource (Maybe Text)
ddsURL = lens _ddsURL (\ s a -> s{_ddsURL = a})

ddsAttribution :: Lens' DictlayerdataDictSource (Maybe Text)
ddsAttribution
  = lens _ddsAttribution
      (\ s a -> s{_ddsAttribution = a})

instance FromJSON DictlayerdataDictSource where
        parseJSON
          = withObject "DictlayerdataDictSource"
              (\ o ->
                 DictlayerdataDictSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON DictlayerdataDictSource where
        toJSON DictlayerdataDictSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ddsURL,
                  ("attribution" .=) <$> _ddsAttribution])

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
-- /See:/ 'geolayerdataGeoViewportHi' smart constructor.
data GeolayerdataGeoViewportHi = GeolayerdataGeoViewportHi
    { _ggvhLatitude  :: !(Maybe Double)
    , _ggvhLongitude :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeolayerdataGeoViewportHi' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggvhLatitude'
--
-- * 'ggvhLongitude'
geolayerdataGeoViewportHi
    :: GeolayerdataGeoViewportHi
geolayerdataGeoViewportHi =
    GeolayerdataGeoViewportHi
    { _ggvhLatitude = Nothing
    , _ggvhLongitude = Nothing
    }

ggvhLatitude :: Lens' GeolayerdataGeoViewportHi (Maybe Double)
ggvhLatitude
  = lens _ggvhLatitude (\ s a -> s{_ggvhLatitude = a})

ggvhLongitude :: Lens' GeolayerdataGeoViewportHi (Maybe Double)
ggvhLongitude
  = lens _ggvhLongitude
      (\ s a -> s{_ggvhLongitude = a})

instance FromJSON GeolayerdataGeoViewportHi where
        parseJSON
          = withObject "GeolayerdataGeoViewportHi"
              (\ o ->
                 GeolayerdataGeoViewportHi <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON GeolayerdataGeoViewportHi where
        toJSON GeolayerdataGeoViewportHi{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _ggvhLatitude,
                  ("longitude" .=) <$> _ggvhLongitude])

-- | General volume information.
--
-- /See:/ 'volumeVolumeInfo' smart constructor.
data VolumeVolumeInfo = VolumeVolumeInfo
    { _vviImageLinks          :: !(Maybe VolumeVolumeInfoImageLinks)
    , _vviAverageRating       :: !(Maybe Double)
    , _vviRatingsCount        :: !(Maybe Int32)
    , _vviCanonicalVolumeLink :: !(Maybe Text)
    , _vviReadingModes        :: !(Maybe JSONValue)
    , _vviIndustryIdentifiers :: !(Maybe [VolumeVolumeInfoIndustryIdentifiersItem])
    , _vviPrintedPageCount    :: !(Maybe Int32)
    , _vviMainCategory        :: !(Maybe Text)
    , _vviContentVersion      :: !(Maybe Text)
    , _vviSamplePageCount     :: !(Maybe Int32)
    , _vviCategories          :: !(Maybe [Text])
    , _vviAuthors             :: !(Maybe [Text])
    , _vviAllowAnonLogging    :: !(Maybe Bool)
    , _vviSubtitle            :: !(Maybe Text)
    , _vviPublishedDate       :: !(Maybe Text)
    , _vviMaturityRating      :: !(Maybe Text)
    , _vviPreviewLink         :: !(Maybe Text)
    , _vviLanguage            :: !(Maybe Text)
    , _vviTitle               :: !(Maybe Text)
    , _vviPageCount           :: !(Maybe Int32)
    , _vviDimensions          :: !(Maybe VolumeVolumeInfoDimensions)
    , _vviInfoLink            :: !(Maybe Text)
    , _vviPublisher           :: !(Maybe Text)
    , _vviDescription         :: !(Maybe Text)
    , _vviPrintType           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeVolumeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vviImageLinks'
--
-- * 'vviAverageRating'
--
-- * 'vviRatingsCount'
--
-- * 'vviCanonicalVolumeLink'
--
-- * 'vviReadingModes'
--
-- * 'vviIndustryIdentifiers'
--
-- * 'vviPrintedPageCount'
--
-- * 'vviMainCategory'
--
-- * 'vviContentVersion'
--
-- * 'vviSamplePageCount'
--
-- * 'vviCategories'
--
-- * 'vviAuthors'
--
-- * 'vviAllowAnonLogging'
--
-- * 'vviSubtitle'
--
-- * 'vviPublishedDate'
--
-- * 'vviMaturityRating'
--
-- * 'vviPreviewLink'
--
-- * 'vviLanguage'
--
-- * 'vviTitle'
--
-- * 'vviPageCount'
--
-- * 'vviDimensions'
--
-- * 'vviInfoLink'
--
-- * 'vviPublisher'
--
-- * 'vviDescription'
--
-- * 'vviPrintType'
volumeVolumeInfo
    :: VolumeVolumeInfo
volumeVolumeInfo =
    VolumeVolumeInfo
    { _vviImageLinks = Nothing
    , _vviAverageRating = Nothing
    , _vviRatingsCount = Nothing
    , _vviCanonicalVolumeLink = Nothing
    , _vviReadingModes = Nothing
    , _vviIndustryIdentifiers = Nothing
    , _vviPrintedPageCount = Nothing
    , _vviMainCategory = Nothing
    , _vviContentVersion = Nothing
    , _vviSamplePageCount = Nothing
    , _vviCategories = Nothing
    , _vviAuthors = Nothing
    , _vviAllowAnonLogging = Nothing
    , _vviSubtitle = Nothing
    , _vviPublishedDate = Nothing
    , _vviMaturityRating = Nothing
    , _vviPreviewLink = Nothing
    , _vviLanguage = Nothing
    , _vviTitle = Nothing
    , _vviPageCount = Nothing
    , _vviDimensions = Nothing
    , _vviInfoLink = Nothing
    , _vviPublisher = Nothing
    , _vviDescription = Nothing
    , _vviPrintType = Nothing
    }

-- | A list of image links for all the sizes that are available. (In LITE
-- projection.)
vviImageLinks :: Lens' VolumeVolumeInfo (Maybe VolumeVolumeInfoImageLinks)
vviImageLinks
  = lens _vviImageLinks
      (\ s a -> s{_vviImageLinks = a})

-- | The mean review rating for this volume. (min = 1.0, max = 5.0)
vviAverageRating :: Lens' VolumeVolumeInfo (Maybe Double)
vviAverageRating
  = lens _vviAverageRating
      (\ s a -> s{_vviAverageRating = a})

-- | The number of review ratings for this volume.
vviRatingsCount :: Lens' VolumeVolumeInfo (Maybe Int32)
vviRatingsCount
  = lens _vviRatingsCount
      (\ s a -> s{_vviRatingsCount = a})

-- | Canonical URL for a volume. (In LITE projection.)
vviCanonicalVolumeLink :: Lens' VolumeVolumeInfo (Maybe Text)
vviCanonicalVolumeLink
  = lens _vviCanonicalVolumeLink
      (\ s a -> s{_vviCanonicalVolumeLink = a})

-- | The reading modes available for this volume.
vviReadingModes :: Lens' VolumeVolumeInfo (Maybe JSONValue)
vviReadingModes
  = lens _vviReadingModes
      (\ s a -> s{_vviReadingModes = a})

-- | Industry standard identifiers for this volume.
vviIndustryIdentifiers :: Lens' VolumeVolumeInfo [VolumeVolumeInfoIndustryIdentifiersItem]
vviIndustryIdentifiers
  = lens _vviIndustryIdentifiers
      (\ s a -> s{_vviIndustryIdentifiers = a})
      . _Default
      . _Coerce

-- | Total number of printed pages in generated pdf representation.
vviPrintedPageCount :: Lens' VolumeVolumeInfo (Maybe Int32)
vviPrintedPageCount
  = lens _vviPrintedPageCount
      (\ s a -> s{_vviPrintedPageCount = a})

-- | The main category to which this volume belongs. It will be the category
-- from the categories list returned below that has the highest weight.
vviMainCategory :: Lens' VolumeVolumeInfo (Maybe Text)
vviMainCategory
  = lens _vviMainCategory
      (\ s a -> s{_vviMainCategory = a})

-- | An identifier for the version of the volume content (text & images). (In
-- LITE projection)
vviContentVersion :: Lens' VolumeVolumeInfo (Maybe Text)
vviContentVersion
  = lens _vviContentVersion
      (\ s a -> s{_vviContentVersion = a})

-- | Total number of sample pages as per publisher metadata.
vviSamplePageCount :: Lens' VolumeVolumeInfo (Maybe Int32)
vviSamplePageCount
  = lens _vviSamplePageCount
      (\ s a -> s{_vviSamplePageCount = a})

-- | A list of subject categories, such as \"Fiction\", \"Suspense\", etc.
vviCategories :: Lens' VolumeVolumeInfo [Text]
vviCategories
  = lens _vviCategories
      (\ s a -> s{_vviCategories = a})
      . _Default
      . _Coerce

-- | The names of the authors and\/or editors for this volume. (In LITE
-- projection)
vviAuthors :: Lens' VolumeVolumeInfo [Text]
vviAuthors
  = lens _vviAuthors (\ s a -> s{_vviAuthors = a}) .
      _Default
      . _Coerce

-- | Whether anonymous logging should be allowed.
vviAllowAnonLogging :: Lens' VolumeVolumeInfo (Maybe Bool)
vviAllowAnonLogging
  = lens _vviAllowAnonLogging
      (\ s a -> s{_vviAllowAnonLogging = a})

-- | Volume subtitle. (In LITE projection.)
vviSubtitle :: Lens' VolumeVolumeInfo (Maybe Text)
vviSubtitle
  = lens _vviSubtitle (\ s a -> s{_vviSubtitle = a})

-- | Date of publication. (In LITE projection.)
vviPublishedDate :: Lens' VolumeVolumeInfo (Maybe Text)
vviPublishedDate
  = lens _vviPublishedDate
      (\ s a -> s{_vviPublishedDate = a})

vviMaturityRating :: Lens' VolumeVolumeInfo (Maybe Text)
vviMaturityRating
  = lens _vviMaturityRating
      (\ s a -> s{_vviMaturityRating = a})

-- | URL to preview this volume on the Google Books site.
vviPreviewLink :: Lens' VolumeVolumeInfo (Maybe Text)
vviPreviewLink
  = lens _vviPreviewLink
      (\ s a -> s{_vviPreviewLink = a})

-- | Best language for this volume (based on content). It is the two-letter
-- ISO 639-1 code such as \'fr\', \'en\', etc.
vviLanguage :: Lens' VolumeVolumeInfo (Maybe Text)
vviLanguage
  = lens _vviLanguage (\ s a -> s{_vviLanguage = a})

-- | Volume title. (In LITE projection.)
vviTitle :: Lens' VolumeVolumeInfo (Maybe Text)
vviTitle = lens _vviTitle (\ s a -> s{_vviTitle = a})

-- | Total number of pages as per publisher metadata.
vviPageCount :: Lens' VolumeVolumeInfo (Maybe Int32)
vviPageCount
  = lens _vviPageCount (\ s a -> s{_vviPageCount = a})

-- | Physical dimensions of this volume.
vviDimensions :: Lens' VolumeVolumeInfo (Maybe VolumeVolumeInfoDimensions)
vviDimensions
  = lens _vviDimensions
      (\ s a -> s{_vviDimensions = a})

-- | URL to view information about this volume on the Google Books site. (In
-- LITE projection)
vviInfoLink :: Lens' VolumeVolumeInfo (Maybe Text)
vviInfoLink
  = lens _vviInfoLink (\ s a -> s{_vviInfoLink = a})

-- | Publisher of this volume. (In LITE projection.)
vviPublisher :: Lens' VolumeVolumeInfo (Maybe Text)
vviPublisher
  = lens _vviPublisher (\ s a -> s{_vviPublisher = a})

-- | A synopsis of the volume. The text of the description is formatted in
-- HTML and includes simple formatting elements, such as b, i, and br tags.
-- (In LITE projection.)
vviDescription :: Lens' VolumeVolumeInfo (Maybe Text)
vviDescription
  = lens _vviDescription
      (\ s a -> s{_vviDescription = a})

-- | Type of publication of this volume. Possible values are BOOK or
-- MAGAZINE.
vviPrintType :: Lens' VolumeVolumeInfo (Maybe Text)
vviPrintType
  = lens _vviPrintType (\ s a -> s{_vviPrintType = a})

instance FromJSON VolumeVolumeInfo where
        parseJSON
          = withObject "VolumeVolumeInfo"
              (\ o ->
                 VolumeVolumeInfo <$>
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

instance ToJSON VolumeVolumeInfo where
        toJSON VolumeVolumeInfo{..}
          = object
              (catMaybes
                 [("imageLinks" .=) <$> _vviImageLinks,
                  ("averageRating" .=) <$> _vviAverageRating,
                  ("ratingsCount" .=) <$> _vviRatingsCount,
                  ("canonicalVolumeLink" .=) <$>
                    _vviCanonicalVolumeLink,
                  ("readingModes" .=) <$> _vviReadingModes,
                  ("industryIdentifiers" .=) <$>
                    _vviIndustryIdentifiers,
                  ("printedPageCount" .=) <$> _vviPrintedPageCount,
                  ("mainCategory" .=) <$> _vviMainCategory,
                  ("contentVersion" .=) <$> _vviContentVersion,
                  ("samplePageCount" .=) <$> _vviSamplePageCount,
                  ("categories" .=) <$> _vviCategories,
                  ("authors" .=) <$> _vviAuthors,
                  ("allowAnonLogging" .=) <$> _vviAllowAnonLogging,
                  ("subtitle" .=) <$> _vviSubtitle,
                  ("publishedDate" .=) <$> _vviPublishedDate,
                  ("maturityRating" .=) <$> _vviMaturityRating,
                  ("previewLink" .=) <$> _vviPreviewLink,
                  ("language" .=) <$> _vviLanguage,
                  ("title" .=) <$> _vviTitle,
                  ("pageCount" .=) <$> _vviPageCount,
                  ("dimensions" .=) <$> _vviDimensions,
                  ("infoLink" .=) <$> _vviInfoLink,
                  ("publisher" .=) <$> _vviPublisher,
                  ("description" .=) <$> _vviDescription,
                  ("printType" .=) <$> _vviPrintType])

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
-- /See:/ 'dictlayerdataDictWordsItemSensesItemSource' smart constructor.
data DictlayerdataDictWordsItemSensesItemSource = DictlayerdataDictWordsItemSensesItemSource
    { _ddwisisURL         :: !(Maybe Text)
    , _ddwisisAttribution :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictlayerdataDictWordsItemSensesItemSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddwisisURL'
--
-- * 'ddwisisAttribution'
dictlayerdataDictWordsItemSensesItemSource
    :: DictlayerdataDictWordsItemSensesItemSource
dictlayerdataDictWordsItemSensesItemSource =
    DictlayerdataDictWordsItemSensesItemSource
    { _ddwisisURL = Nothing
    , _ddwisisAttribution = Nothing
    }

ddwisisURL :: Lens' DictlayerdataDictWordsItemSensesItemSource (Maybe Text)
ddwisisURL
  = lens _ddwisisURL (\ s a -> s{_ddwisisURL = a})

ddwisisAttribution :: Lens' DictlayerdataDictWordsItemSensesItemSource (Maybe Text)
ddwisisAttribution
  = lens _ddwisisAttribution
      (\ s a -> s{_ddwisisAttribution = a})

instance FromJSON
         DictlayerdataDictWordsItemSensesItemSource where
        parseJSON
          = withObject
              "DictlayerdataDictWordsItemSensesItemSource"
              (\ o ->
                 DictlayerdataDictWordsItemSensesItemSource <$>
                   (o .:? "url") <*> (o .:? "attribution"))

instance ToJSON
         DictlayerdataDictWordsItemSensesItemSource where
        toJSON DictlayerdataDictWordsItemSensesItemSource{..}
          = object
              (catMaybes
                 [("url" .=) <$> _ddwisisURL,
                  ("attribution" .=) <$> _ddwisisAttribution])

-- | Offer retail (=discounted) price in Micros
--
-- /See:/ 'volumeSaleInfoOffersItemRetailPrice' smart constructor.
data VolumeSaleInfoOffersItemRetailPrice = VolumeSaleInfoOffersItemRetailPrice
    { _vsioirpCurrencyCode   :: !(Maybe Text)
    , _vsioirpAmountInMicros :: !(Maybe Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeSaleInfoOffersItemRetailPrice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsioirpCurrencyCode'
--
-- * 'vsioirpAmountInMicros'
volumeSaleInfoOffersItemRetailPrice
    :: VolumeSaleInfoOffersItemRetailPrice
volumeSaleInfoOffersItemRetailPrice =
    VolumeSaleInfoOffersItemRetailPrice
    { _vsioirpCurrencyCode = Nothing
    , _vsioirpAmountInMicros = Nothing
    }

vsioirpCurrencyCode :: Lens' VolumeSaleInfoOffersItemRetailPrice (Maybe Text)
vsioirpCurrencyCode
  = lens _vsioirpCurrencyCode
      (\ s a -> s{_vsioirpCurrencyCode = a})

vsioirpAmountInMicros :: Lens' VolumeSaleInfoOffersItemRetailPrice (Maybe Double)
vsioirpAmountInMicros
  = lens _vsioirpAmountInMicros
      (\ s a -> s{_vsioirpAmountInMicros = a})

instance FromJSON VolumeSaleInfoOffersItemRetailPrice
         where
        parseJSON
          = withObject "VolumeSaleInfoOffersItemRetailPrice"
              (\ o ->
                 VolumeSaleInfoOffersItemRetailPrice <$>
                   (o .:? "currencyCode") <*> (o .:? "amountInMicros"))

instance ToJSON VolumeSaleInfoOffersItemRetailPrice
         where
        toJSON VolumeSaleInfoOffersItemRetailPrice{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _vsioirpCurrencyCode,
                  ("amountInMicros" .=) <$> _vsioirpAmountInMicros])

--
-- /See:/ 'volumeVolumeInfoIndustryIdentifiersItem' smart constructor.
data VolumeVolumeInfoIndustryIdentifiersItem = VolumeVolumeInfoIndustryIdentifiersItem
    { _vviiiiIdentifier :: !(Maybe Text)
    , _vviiiiType       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumeVolumeInfoIndustryIdentifiersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vviiiiIdentifier'
--
-- * 'vviiiiType'
volumeVolumeInfoIndustryIdentifiersItem
    :: VolumeVolumeInfoIndustryIdentifiersItem
volumeVolumeInfoIndustryIdentifiersItem =
    VolumeVolumeInfoIndustryIdentifiersItem
    { _vviiiiIdentifier = Nothing
    , _vviiiiType = Nothing
    }

-- | Industry specific volume identifier.
vviiiiIdentifier :: Lens' VolumeVolumeInfoIndustryIdentifiersItem (Maybe Text)
vviiiiIdentifier
  = lens _vviiiiIdentifier
      (\ s a -> s{_vviiiiIdentifier = a})

-- | Identifier type. Possible values are ISBN_10, ISBN_13, ISSN and OTHER.
vviiiiType :: Lens' VolumeVolumeInfoIndustryIdentifiersItem (Maybe Text)
vviiiiType
  = lens _vviiiiType (\ s a -> s{_vviiiiType = a})

instance FromJSON
         VolumeVolumeInfoIndustryIdentifiersItem where
        parseJSON
          = withObject
              "VolumeVolumeInfoIndustryIdentifiersItem"
              (\ o ->
                 VolumeVolumeInfoIndustryIdentifiersItem <$>
                   (o .:? "identifier") <*> (o .:? "type"))

instance ToJSON
         VolumeVolumeInfoIndustryIdentifiersItem where
        toJSON VolumeVolumeInfoIndustryIdentifiersItem{..}
          = object
              (catMaybes
                 [("identifier" .=) <$> _vviiiiIdentifier,
                  ("type" .=) <$> _vviiiiType])

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
