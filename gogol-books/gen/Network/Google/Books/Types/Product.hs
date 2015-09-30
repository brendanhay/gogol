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
    , _vItems         :: !(Maybe [Maybe Volumeannotation])
    , _vVersion       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
vItems :: Lens' Volumeannotations [Maybe Volumeannotation]
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
    , _aItems         :: !(Maybe [Maybe Annotation])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
aItems :: Lens' Annotations [Maybe Annotation]
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
-- /See:/ 'usersettings' smart constructor.
data Usersettings = Usersettings
    { _uKind        :: !Text
    , _uNotesExport :: !(Maybe UsersettingsNotesExport)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- /See:/ 'annotationsdata' smart constructor.
data Annotationsdata = Annotationsdata
    { _annTotalItems    :: !(Maybe Int32)
    , _annNextPageToken :: !(Maybe Text)
    , _annKind          :: !Text
    , _annItems         :: !(Maybe [Maybe Annotationdata])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
annItems :: Lens' Annotationsdata [Maybe Annotationdata]
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
-- /See:/ 'annotation' smart constructor.
data Annotation = Annotation
    { _aaSelectedText         :: !(Maybe Text)
    , _aaLayerSummary         :: !(Maybe AnnotationLayerSummary)
    , _aaHighlightStyle       :: !(Maybe Text)
    , _aaClientVersionRanges  :: !(Maybe AnnotationClientVersionRanges)
    , _aaPageIds              :: !(Maybe [Text])
    , _aaKind                 :: !Text
    , _aaData                 :: !(Maybe Text)
    , _aaCreated              :: !(Maybe UTCTime)
    , _aaAfterSelectedText    :: !(Maybe Text)
    , _aaSelfLink             :: !(Maybe Text)
    , _aaCurrentVersionRanges :: !(Maybe AnnotationCurrentVersionRanges)
    , _aaVolumeId             :: !(Maybe Text)
    , _aaBeforeSelectedText   :: !(Maybe Text)
    , _aaId                   :: !(Maybe Text)
    , _aaDeleted              :: !(Maybe Bool)
    , _aaUpdated              :: !(Maybe UTCTime)
    , _aaLayerId              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

aaLayerSummary :: Lens' Annotation (Maybe AnnotationLayerSummary)
aaLayerSummary
  = lens _aaLayerSummary
      (\ s a -> s{_aaLayerSummary = a})

-- | The highlight style for this annotation.
aaHighlightStyle :: Lens' Annotation (Maybe Text)
aaHighlightStyle
  = lens _aaHighlightStyle
      (\ s a -> s{_aaHighlightStyle = a})

-- | Selection ranges sent from the client.
aaClientVersionRanges :: Lens' Annotation (Maybe AnnotationClientVersionRanges)
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
  = lens _aaCreated (\ s a -> s{_aaCreated = a})

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
aaCurrentVersionRanges :: Lens' Annotation (Maybe AnnotationCurrentVersionRanges)
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
  = lens _aaUpdated (\ s a -> s{_aaUpdated = a})

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

--
-- /See:/ 'booksCloudloadingResource' smart constructor.
data BooksCloudloadingResource = BooksCloudloadingResource
    { _bcrProcessingState :: !(Maybe Text)
    , _bcrVolumeId        :: !(Maybe Text)
    , _bcrAuthor          :: !(Maybe Text)
    , _bcrTitle           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BooksCloudloadingResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcrProcessingState'
--
-- * 'bcrVolumeId'
--
-- * 'bcrAuthor'
--
-- * 'bcrTitle'
booksCloudloadingResource
    :: BooksCloudloadingResource
booksCloudloadingResource =
    BooksCloudloadingResource
    { _bcrProcessingState = Nothing
    , _bcrVolumeId = Nothing
    , _bcrAuthor = Nothing
    , _bcrTitle = Nothing
    }

bcrProcessingState :: Lens' BooksCloudloadingResource (Maybe Text)
bcrProcessingState
  = lens _bcrProcessingState
      (\ s a -> s{_bcrProcessingState = a})

bcrVolumeId :: Lens' BooksCloudloadingResource (Maybe Text)
bcrVolumeId
  = lens _bcrVolumeId (\ s a -> s{_bcrVolumeId = a})

bcrAuthor :: Lens' BooksCloudloadingResource (Maybe Text)
bcrAuthor
  = lens _bcrAuthor (\ s a -> s{_bcrAuthor = a})

bcrTitle :: Lens' BooksCloudloadingResource (Maybe Text)
bcrTitle = lens _bcrTitle (\ s a -> s{_bcrTitle = a})

instance FromJSON BooksCloudloadingResource where
        parseJSON
          = withObject "BooksCloudloadingResource"
              (\ o ->
                 BooksCloudloadingResource <$>
                   (o .:? "processingState") <*> (o .:? "volumeId") <*>
                     (o .:? "author")
                     <*> (o .:? "title"))

instance ToJSON BooksCloudloadingResource where
        toJSON BooksCloudloadingResource{..}
          = object
              (catMaybes
                 [("processingState" .=) <$> _bcrProcessingState,
                  ("volumeId" .=) <$> _bcrVolumeId,
                  ("author" .=) <$> _bcrAuthor,
                  ("title" .=) <$> _bcrTitle])

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
    , _lUpdated                  :: !(Maybe UTCTime)
    , _lLayerId                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
lUpdated = lens _lUpdated (\ s a -> s{_lUpdated = a})

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

--
-- /See:/ 'annotationdata' smart constructor.
data Annotationdata = Annotationdata
    { _annnEncodedData    :: !(Maybe Word8)
    , _annnKind           :: !Text
    , _annnData           :: !(Maybe JSON)
    , _annnSelfLink       :: !(Maybe Text)
    , _annnAnnotationType :: !(Maybe Text)
    , _annnVolumeId       :: !(Maybe Text)
    , _annnId             :: !(Maybe Text)
    , _annnUpdated        :: !(Maybe UTCTime)
    , _annnLayerId        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

annnData :: Lens' Annotationdata (Maybe JSON)
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
  = lens _annnUpdated (\ s a -> s{_annnUpdated = a})

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
    , _volContentRanges      :: !(Maybe VolumeannotationContentRanges)
    , _volVolumeId           :: !(Maybe Text)
    , _volId                 :: !(Maybe Text)
    , _volDeleted            :: !(Maybe Bool)
    , _volUpdated            :: !(Maybe UTCTime)
    , _volLayerId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
  = lens _volUpdated (\ s a -> s{_volUpdated = a})

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
-- /See:/ 'booksVolumesRecommendedRateResponse' smart constructor.
newtype BooksVolumesRecommendedRateResponse = BooksVolumesRecommendedRateResponse
    { _bvrrrConsistencyToken :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    , _bVolumesLastUpdated :: !(Maybe UTCTime)
    , _bKind               :: !Text
    , _bCreated            :: !(Maybe UTCTime)
    , _bVolumeCount        :: !(Maybe Int32)
    , _bSelfLink           :: !(Maybe Text)
    , _bId                 :: !(Maybe Int32)
    , _bUpdated            :: !(Maybe UTCTime)
    , _bTitle              :: !(Maybe Text)
    , _bDescription        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Resource type for bookshelf metadata.
bKind :: Lens' Bookshelf Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | Created time for this bookshelf (formatted UTC timestamp with
-- millisecond resolution).
bCreated :: Lens' Bookshelf (Maybe UTCTime)
bCreated = lens _bCreated (\ s a -> s{_bCreated = a})

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
bUpdated = lens _bUpdated (\ s a -> s{_bUpdated = a})

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
-- /See:/ 'category' smart constructor.
data Category = Category
    { _cKind  :: !Text
    , _cItems :: !(Maybe [CategoryItemsItem])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- /See:/ 'annotationsSummary' smart constructor.
data AnnotationsSummary = AnnotationsSummary
    { _asKind   :: !Text
    , _asLayers :: !(Maybe [AnnotationsSummaryLayersItem])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- /See:/ 'geolayerdata' smart constructor.
data Geolayerdata = Geolayerdata
    { _gKind   :: !Text
    , _gGeo    :: !(Maybe GeolayerdataGeo)
    , _gCommon :: !(Maybe GeolayerdataCommon)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'dictlayerdata' smart constructor.
data Dictlayerdata = Dictlayerdata
    { _dKind   :: !Text
    , _dDict   :: !(Maybe DictlayerdataDict)
    , _dCommon :: !(Maybe DictlayerdataCommon)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- /See:/ 'review' smart constructor.
data Review = Review
    { _rRating      :: !(Maybe Text)
    , _rKind        :: !Text
    , _rContent     :: !(Maybe Text)
    , _rDate        :: !(Maybe Text)
    , _rVolumeId    :: !(Maybe Text)
    , _rAuthor      :: !(Maybe ReviewAuthor)
    , _rSource      :: !(Maybe ReviewSource)
    , _rFullTextUrl :: !(Maybe Text)
    , _rTitle       :: !(Maybe Text)
    , _rType        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'rFullTextUrl'
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
    , _rFullTextUrl = Nothing
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
rFullTextUrl :: Lens' Review (Maybe Text)
rFullTextUrl
  = lens _rFullTextUrl (\ s a -> s{_rFullTextUrl = a})

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
                  ("fullTextUrl" .=) <$> _rFullTextUrl,
                  ("title" .=) <$> _rTitle, ("type" .=) <$> _rType])

--
-- /See:/ 'volume2' smart constructor.
data Volume2 = Volume2
    { _voloNextPageToken :: !(Maybe Text)
    , _voloKind          :: !Text
    , _voloItems         :: !(Maybe [Maybe Volume])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
voloItems :: Lens' Volume2 [Maybe Volume]
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
-- /See:/ 'requestAccess' smart constructor.
data RequestAccess = RequestAccess
    { _raConcurrentAccess :: !(Maybe (Maybe ConcurrentAccessRestriction))
    , _raKind             :: !Text
    , _raDownloadAccess   :: !(Maybe (Maybe DownloadAccessRestriction))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
raConcurrentAccess :: Lens' RequestAccess (Maybe (Maybe ConcurrentAccessRestriction))
raConcurrentAccess
  = lens _raConcurrentAccess
      (\ s a -> s{_raConcurrentAccess = a})

-- | Resource type.
raKind :: Lens' RequestAccess Text
raKind = lens _raKind (\ s a -> s{_raKind = a})

-- | A download access response.
raDownloadAccess :: Lens' RequestAccess (Maybe (Maybe DownloadAccessRestriction))
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

--
-- /See:/ 'metadata' smart constructor.
data Metadata = Metadata
    { _mKind  :: !Text
    , _mItems :: !(Maybe [MetadataItemsItem])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

--
-- /See:/ 'readingPosition' smart constructor.
data ReadingPosition = ReadingPosition
    { _rpEpubCfiPosition :: !(Maybe Text)
    , _rpKind            :: !Text
    , _rpGbImagePosition :: !(Maybe Text)
    , _rpPdfPosition     :: !(Maybe Text)
    , _rpVolumeId        :: !(Maybe Text)
    , _rpUpdated         :: !(Maybe UTCTime)
    , _rpGbTextPosition  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
  = lens _rpUpdated (\ s a -> s{_rpUpdated = a})

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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    , _v1Items      :: !(Maybe [Maybe Volume])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
v1Items :: Lens' Volumes [Maybe Volume]
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
    , _booItems :: !(Maybe [Maybe Bookshelf])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
booItems :: Lens' Bookshelves [Maybe Bookshelf]
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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- /See:/ 'downloadAccesses' smart constructor.
data DownloadAccesses = DownloadAccesses
    { _daKind               :: !Text
    , _daDownloadAccessList :: !(Maybe [Maybe DownloadAccessRestriction])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
daDownloadAccessList :: Lens' DownloadAccesses [Maybe DownloadAccessRestriction]
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
-- /See:/ 'layersummaries' smart constructor.
data Layersummaries = Layersummaries
    { _layTotalItems :: !(Maybe Int32)
    , _layKind       :: !Text
    , _layItems      :: !(Maybe [Maybe Layersummary])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
layItems :: Lens' Layersummaries [Maybe Layersummary]
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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
